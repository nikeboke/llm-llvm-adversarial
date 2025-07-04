#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <pthread.h>
#include <string.h>
#include <unistd.h>

// === Type Definitions ===
typedef struct Error {
    char *msg;
} Error;

typedef struct UserCreatable {
    // base type; empty in this mock
    int dummy;
} UserCreatable;

typedef struct AioContext {
    int dummy;
} AioContext;

typedef struct IOThread {
    bool stopping;
    AioContext *ctx;
    int thread_id;

    pthread_t thread;
    pthread_mutex_t init_done_lock;
    pthread_cond_t init_done_cond;
} IOThread;

// === Macro ===
#define IOTHREAD(obj) ((IOThread *)(obj))

// === Stubs ===
AioContext* aio_context_new(void) {
    AioContext *ctx = malloc(sizeof(AioContext));
    ctx->dummy = 1;
    return ctx;
}

void qemu_mutex_init(pthread_mutex_t *mutex) {
    pthread_mutex_init(mutex, NULL);
}

void qemu_cond_init(pthread_cond_t *cond) {
    pthread_cond_init(cond, NULL);
}

void qemu_mutex_lock(pthread_mutex_t *mutex) {
    pthread_mutex_lock(mutex);
}

void qemu_mutex_unlock(pthread_mutex_t *mutex) {
    pthread_mutex_unlock(mutex);
}

void qemu_cond_wait(pthread_cond_t *cond, pthread_mutex_t *mutex) {
    pthread_cond_wait(cond, mutex);
}

// === Thread Target ===
void *iothread_run(void *arg) {
    IOThread *iothread = (IOThread *)arg;

    // Simulate init
    sleep(1);  // simulate delay

    qemu_mutex_lock(&iothread->init_done_lock);
    iothread->thread_id = 42;  // simulate setting thread id
    pthread_cond_signal(&iothread->init_done_cond);
    qemu_mutex_unlock(&iothread->init_done_lock);

    // Thread loop
    while (!iothread->stopping) {
        sleep(1);  // simulate work
    }
    return NULL;
}

void qemu_thread_create(pthread_t *thread, const char *name,
                        void *(*start_routine)(void *),
                        void *arg, int joinable) {
    pthread_create(thread, NULL, start_routine, arg);
}

// === Function Under Test ===
static void iothread_complete(UserCreatable *obj, Error **errp)
{
    IOThread *iothread = IOTHREAD(obj);

    iothread->stopping = false;
    iothread->ctx = aio_context_new();
    iothread->thread_id = -1;

    qemu_mutex_init(&iothread->init_done_lock);
    qemu_cond_init(&iothread->init_done_cond);

    qemu_thread_create(&iothread->thread, "iothread", iothread_run,
                       iothread, 1);  // 1 = QEMU_THREAD_JOINABLE

    qemu_mutex_lock(&iothread->init_done_lock);
    while (iothread->thread_id == -1) {
        qemu_cond_wait(&iothread->init_done_cond,
                       &iothread->init_done_lock);
    }
    qemu_mutex_unlock(&iothread->init_done_lock);
}

// === Main for Testing ===
int main() {
    IOThread my_iothread = {0};
    UserCreatable *u = (UserCreatable *)&my_iothread;
    Error *err = NULL;

    iothread_complete(u, &err);

    printf("Thread initialized with ID: %d\n", my_iothread.thread_id);

    my_iothread.stopping = true;
    pthread_join(my_iothread.thread, NULL);

    free(my_iothread.ctx);
    return 0;
}
