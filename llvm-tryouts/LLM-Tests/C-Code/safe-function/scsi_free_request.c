#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

// Dummy AIO control block
struct qemu_paiocb {
    int status;  // Simulate result: <0 = error, >=0 = success
};

// Dummy function simulating paio return
ssize_t qemu_paio_return(struct qemu_paiocb *aiocb) {
    return aiocb->status;
}

// Function under test
int qemu_paio_error(struct qemu_paiocb *aiocb)
{
    ssize_t ret = qemu_paio_return(aiocb);

    if (ret < 0)
        ret = -ret;
    else
        ret = 0;

    return ret;
}

// Test main
int main(void)
{
    struct qemu_paiocb a1 = { .status = -5 };
    struct qemu_paiocb a2 = { .status = 42 };

    printf("Error (a1): %d\n", qemu_paio_error(&a1));  // Expected: 5
    printf("Error (a2): %d\n", qemu_paio_error(&a2));  // Expected: 0

    return 0;
}
