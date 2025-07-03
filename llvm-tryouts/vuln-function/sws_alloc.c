// sws_alloc_context_unsafe.c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// === Minimal mocks ===

typedef struct AVClass {
    const char *class_name;
} AVClass;

typedef struct SwsContext {
    AVClass *av_class;
    // More fields would be here in real code
} SwsContext;

AVClass sws_context_class = {
    .class_name = "SwsContext"
};

void *av_mallocz(size_t size) {
    return calloc(1, size); // Zero-initialized malloc
}

void av_opt_set_defaults(void *obj) {
    // Stub: do nothing
}

// === Your original function ===

SwsContext *sws_alloc_context(void)
{
    SwsContext *c = av_mallocz(sizeof(SwsContext));  // no null check
    c->av_class = &sws_context_class;
    av_opt_set_defaults(c);
    return c;
}

// === Test ===

int main() {
    SwsContext *ctx = sws_alloc_context();
    if (!ctx) {
        printf("Allocation failed\n");
        return 1;
    }
    printf("Context allocated with class: %s\n", ctx->av_class->class_name);
    free(ctx);
    return 0;
}
