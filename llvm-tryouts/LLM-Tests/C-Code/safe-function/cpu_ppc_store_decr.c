#include <stdio.h>
#include <stdint.h>

// Dummy type to represent the decrementer exception handler
typedef void (*decr_excp_handler_t)(void);

// Dummy decrementer timer environment
typedef struct {
    uint32_t decr_timer;
    uint32_t decr_next;
} ppc_tb_t;

// CPU environment containing the timer environment
typedef struct {
    ppc_tb_t *tb_env;
} CPUEnv;

// Main PowerPC CPU struct
typedef struct {
    CPUEnv env;
} PowerPCCPU;

// Global dummy handler
void cpu_ppc_decr_excp(void) {
    printf("Decrementer exception triggered.\n");
}

// Dummy implementation of the underlying function
void __cpu_ppc_store_decr(PowerPCCPU *cpu, uint32_t *decr_next,
                          uint32_t decr_timer, decr_excp_handler_t *handler,
                          uint32_t decr, uint32_t value, int is_excp)
{
    *decr_next = value;
    printf("Storing DECR: decr=%u, value=%u, is_excp=%d\n",
           decr, value, is_excp);

    if (is_excp && handler) {
        (*handler)();
    }
}

// Inline wrapper function
static inline void _cpu_ppc_store_decr(PowerPCCPU *cpu, uint32_t decr,
                                       uint32_t value, int is_excp)
{
    ppc_tb_t *tb_env = cpu->env.tb_env;

    __cpu_ppc_store_decr(cpu, &tb_env->decr_next, tb_env->decr_timer,
                         &cpu_ppc_decr_excp, decr, value, is_excp);
}

// Main test driver
int main() {
    ppc_tb_t tb = { .decr_timer = 123, .decr_next = 0 };
    PowerPCCPU cpu = { .env = { .tb_env = &tb } };

    _cpu_ppc_store_decr(&cpu, 1, 456, 1);  // Trigger with exception
    _cpu_ppc_store_decr(&cpu, 2, 789, 0);  // Trigger without exception

    printf("Final decr_next: %u\n", tb.decr_next);
    return 0;
}
