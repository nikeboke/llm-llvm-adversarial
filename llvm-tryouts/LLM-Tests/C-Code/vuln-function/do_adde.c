#include <stdint.h>
#include <stdio.h>

// === Global or File-Scoped Variables ===

uint32_t T0 = 0;
uint32_t T1 = 0;
uint32_t T2 = 0;
uint32_t xer_ca = 0;

// === Likely/Unlikely Branch Prediction Macros (Optional Optimization) ===
#define likely(x)   __builtin_expect(!!(x), 1)
#define unlikely(x) __builtin_expect(!!(x), 0)

// === Function ===

void do_adde(void)
{
    T2 = T0;
    T0 += T1 + xer_ca;

    if (likely(!(T0 < T2 || (xer_ca == 1 && T0 == T2)))) {
        xer_ca = 0;
    } else {
        xer_ca = 1;
    }
}

// === Example Main ===

int main() {
    T0 = 10;
    T1 = 20;
    xer_ca = 1;

    do_adde();

    printf("T0 = %u\n", T0);
    printf("xer_ca = %u\n", xer_ca);
    return 0;
}
