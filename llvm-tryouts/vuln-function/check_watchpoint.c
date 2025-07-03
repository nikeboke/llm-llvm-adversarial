#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define TARGET_PAGE_MASK 0xFFFFF000
#define BP_MEM_READ 0x1
#define BP_WATCHPOINT_HIT_READ 0x10
#define BP_WATCHPOINT_HIT_WRITE 0x20
#define BP_CPU 0x40
#define BP_STOP_BEFORE_ACCESS 0x80
#define BP_WATCHPOINT_HIT 0x100
#define EXCP_DEBUG 123

// === Dummy MemTxAttrs ===
typedef struct {
    int dummy;
} MemTxAttrs;

// === Dummy Watchpoint Struct ===
typedef struct CPUWatchpoint {
    uint64_t hitaddr;
    MemTxAttrs hitattrs;
    int flags;
    struct CPUWatchpoint *next;
} CPUWatchpoint;

// === Simplified QTAILQ Macros ===
#define QTAILQ_FOREACH(var, head, field) \
    for ((var) = *(head); (var) != NULL; (var) = (var)->field)

#define entry next  // For simplicity in this mock

// === Dummy CPU Class ===
typedef struct CPUClass {
    uint64_t (*adjust_watchpoint_address)(void *cpu, uint64_t addr, int len);
    int (*debug_check_watchpoint)(void *cpu, CPUWatchpoint *wp);
} CPUClass;

// === Dummy CPUArchState ===
typedef struct {
    int dummy;
} CPUArchState;

// === Dummy CPUState ===
typedef struct CPUState {
    CPUWatchpoint *watchpoints;
    CPUWatchpoint *watchpoint_hit;
    uint64_t mem_io_vaddr;
    int exception_index;
    CPUArchState *env_ptr;
} CPUState;

// === Dummy Global CPU Pointer ===
CPUState global_cpu;
CPUState *current_cpu = &global_cpu;

// === Mock QEMU Helper Functions ===

int cpu_watchpoint_address_matches(CPUWatchpoint *wp, uint64_t addr, int len) {
    // In real QEMU this does address-range comparison
    return 1;  // Always match for mock
}

void cpu_interrupt(CPUState *cpu, int reason) {
    printf("[cpu_interrupt] Raised interrupt %d\n", reason);
}

void tb_lock() {
    printf("[tb_lock] Translation block lock acquired\n");
}

void tb_check_watchpoint(CPUState *cpu) {
    printf("[tb_check_watchpoint] Checking watchpoint\n");
}

void cpu_loop_exit(CPUState *cpu) {
    printf("[cpu_loop_exit] Exiting CPU loop with exception %d\n", cpu->exception_index);
    exit(0);
}

void cpu_loop_exit_noexc(CPUState *cpu) {
    printf("[cpu_loop_exit_noexc] Exiting CPU loop without exception\n");
    exit(0);
}

void cpu_get_tb_cpu_state(CPUArchState *env, uint64_t *pc, uint64_t *cs_base, uint32_t *flags) {
    *pc = 0x1000;
    *cs_base = 0x0;
    *flags = 0;
    printf("[cpu_get_tb_cpu_state] Returning dummy PC\n");
}

void tb_gen_code(CPUState *cpu, uint64_t pc, uint64_t cs_base, uint32_t flags, int one) {
    printf("[tb_gen_code] Generating code at PC=0x%lx\n", pc);
}

// === Dummy Adjust and Debug Check ===
uint64_t dummy_adjust_watchpoint_address(void *cpu, uint64_t addr, int len) {
    return addr;  // No-op
}

int dummy_debug_check_watchpoint(void *cpu, CPUWatchpoint *wp) {
    return 1;  // Assume always valid
}

// === Function Under Test ===

static void check_watchpoint(int offset, int len, MemTxAttrs attrs, int flags)
{
    CPUState *cpu = current_cpu;
    static CPUClass cc = {
        .adjust_watchpoint_address = dummy_adjust_watchpoint_address,
        .debug_check_watchpoint = dummy_debug_check_watchpoint
    };
    CPUClass *cc_ptr = &cc;

    CPUArchState *env = cpu->env_ptr;
    uint64_t pc, cs_base;
    uint64_t vaddr;
    CPUWatchpoint *wp;
    uint32_t cpu_flags;

    if (cpu->watchpoint_hit) {
        cpu_interrupt(cpu, 1);
        return;
    }

    vaddr = (cpu->mem_io_vaddr & TARGET_PAGE_MASK) + offset;
    vaddr = cc_ptr->adjust_watchpoint_address(cpu, vaddr, len);

    QTAILQ_FOREACH(wp, &cpu->watchpoints, entry) {
        if (cpu_watchpoint_address_matches(wp, vaddr, len) && (wp->flags & flags)) {
            if (flags == BP_MEM_READ) {
                wp->flags |= BP_WATCHPOINT_HIT_READ;
            } else {
                wp->flags |= BP_WATCHPOINT_HIT_WRITE;
            }
            wp->hitaddr = vaddr;
            wp->hitattrs = attrs;

            if (!cpu->watchpoint_hit) {
                if (wp->flags & BP_CPU && !cc_ptr->debug_check_watchpoint(cpu, wp)) {
                    wp->flags &= ~BP_WATCHPOINT_HIT;
                    continue;
                }

                cpu->watchpoint_hit = wp;

                tb_lock();
                tb_check_watchpoint(cpu);

                if (wp->flags & BP_STOP_BEFORE_ACCESS) {
                    cpu->exception_index = EXCP_DEBUG;
                    cpu_loop_exit(cpu);
                } else {
                    cpu_get_tb_cpu_state(env, &pc, &cs_base, &cpu_flags);
                    tb_gen_code(cpu, pc, cs_base, cpu_flags, 1);
                    cpu_loop_exit_noexc(cpu);
                }
            }
        } else {
            wp->flags &= ~BP_WATCHPOINT_HIT;
        }
    }
}

// === Main to test ===

int main() {
    static CPUArchState env;
    static CPUWatchpoint wp1 = { .flags = BP_MEM_READ | BP_CPU };
    global_cpu.env_ptr = &env;
    global_cpu.watchpoints = &wp1;
    global_cpu.mem_io_vaddr = 0x12345000;

    MemTxAttrs dummy_attrs = {0};

    check_watchpoint(0x10, 4, dummy_attrs, BP_MEM_READ);
    return 0;
}
