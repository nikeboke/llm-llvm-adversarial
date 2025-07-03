#include <stdint.h>
#include <stdio.h>

// === Basic Types ===
typedef uint64_t target_ulong;

typedef struct CPUPPCState {
    int dummy;
} CPUPPCState;

typedef struct PowerPCCPU {
    CPUPPCState env;
} PowerPCCPU;

typedef struct sPAPRMachineState {
    int dummy;
} sPAPRMachineState;

// === Return Codes ===
#define H_SUCCESS     0
#define H_PARAMETER   1
#define H_NOT_FOUND   2

// === Flags ===
#define H_AVPN             (1ULL << 0)
#define HPTE64_V_VALID     (1ULL << 0)
#define HPTE64_V_HPTE_DIRTY (1ULL << 1)
#define HPTE64_R_PP0       (1ULL << 55)
#define HPTE64_R_KEY_HI    (0xFULL << 48)
#define HPTE64_R_PP        (3ULL << 62)
#define HPTE64_R_N         (1ULL << 60)
#define HPTE64_R_KEY_LO    (0xFULL << 56)

// === Stubbed Helper Functions ===
int valid_pte_index(CPUPPCState *env, target_ulong index) {
    return index < 16;  // Dummy validity check
}

uint64_t ppc_hash64_start_access(PowerPCCPU *cpu, target_ulong pte_index) {
    return pte_index;  // Use index as token
}

uint64_t ppc_hash64_load_hpte0(PowerPCCPU *cpu, uint64_t token, int unused) {
    return HPTE64_V_VALID | (token << 7);  // Valid + dummy AVPN
}

uint64_t ppc_hash64_load_hpte1(PowerPCCPU *cpu, uint64_t token, int unused) {
    return 0x0F0F0F0F0F0F0F0F;  // Dummy r value
}

void ppc_hash64_stop_access(uint64_t token) {
    // no-op
}

target_ulong compute_tlbie_rb(target_ulong v, target_ulong r, target_ulong index) {
    return v ^ r ^ index;  // Dummy computation
}

void ppc_hash64_store_hpte(PowerPCCPU *cpu, target_ulong index,
                           uint64_t v, uint64_t r) {
    printf("[store_hpte] index=%lu v=0x%lx r=0x%lx\n", index, v, r);
}

void ppc_tlb_invalidate_one(CPUPPCState *env, target_ulong rb) {
    printf("[tlb_invalidate] rb=0x%lx\n", rb);
}

// === Function ===
static target_ulong h_protect(PowerPCCPU *cpu, sPAPRMachineState *spapr,
                              target_ulong opcode, target_ulong *args)
{
    CPUPPCState *env = &cpu->env;
    target_ulong flags = args[0];
    target_ulong pte_index = args[1];
    target_ulong avpn = args[2];
    uint64_t token;
    target_ulong v, r, rb;

    if (!valid_pte_index(env, pte_index)) {
        return H_PARAMETER;
    }

    token = ppc_hash64_start_access(cpu, pte_index);
    v = ppc_hash64_load_hpte0(cpu, token, 0);
    r = ppc_hash64_load_hpte1(cpu, token, 0);
    ppc_hash64_stop_access(token);

    if ((v & HPTE64_V_VALID) == 0 ||
        ((flags & H_AVPN) && (v & ~0x7fULL) != avpn)) {
        return H_NOT_FOUND;
    }

    r &= ~(HPTE64_R_PP0 | HPTE64_R_PP | HPTE64_R_N |
           HPTE64_R_KEY_HI | HPTE64_R_KEY_LO);
    r |= (flags << 55) & HPTE64_R_PP0;
    r |= (flags << 48) & HPTE64_R_KEY_HI;
    r |= flags & (HPTE64_R_PP | HPTE64_R_N | HPTE64_R_KEY_LO);

    rb = compute_tlbie_rb(v, r, pte_index);

    ppc_hash64_store_hpte(cpu, pte_index,
                          (v & ~HPTE64_V_VALID) | HPTE64_V_HPTE_DIRTY, 0);
    ppc_tlb_invalidate_one(env, rb);
    ppc_hash64_store_hpte(cpu, pte_index, v | HPTE64_V_HPTE_DIRTY, r);

    return H_SUCCESS;
}

// === Main for Testing ===
int main() {
    PowerPCCPU cpu = {0};
    sPAPRMachineState spapr = {0};
    target_ulong args[3] = {
        0xFFFFULL,   // flags
        1,           // pte_index
        0x800ULL     // avpn
    };

    target_ulong ret = h_protect(&cpu, &spapr, 0, args);
    printf("h_protect returned: %lu\n", ret);
    return 0;
}
