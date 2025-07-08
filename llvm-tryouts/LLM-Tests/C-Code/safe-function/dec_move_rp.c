#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdbool.h>

// Remove problematic macro
// #define TCG_TYPE_TL int  <-- removed

#define PR_CCS 0
#define U_FLAG 0x01
#define CC_OP_FLAGS 4

// Dummy type for temp variables
typedef int TCGv;

// Mock temp register manager
TCGv tcg_temp_new(void) {
    static int temp_id = 0;
    return temp_id++;
}

void tcg_temp_free(TCGv t) {
    // No-op
}

void tcg_gen_andi_tl(TCGv dst, TCGv src, int imm) {
    printf("ANDI: t%d = t%d & 0x%X\n", dst, src, imm);
}

void tcg_gen_or_tl(TCGv dst, TCGv a, TCGv b) {
    printf("OR: t%d = t%d | t%d\n", dst, a, b);
}

// Dummy PR register
int cpu_PR[16];

// Disassembler context
typedef struct {
    unsigned int op1;
    unsigned int op2;
    unsigned int tb_flags;
    int flags_uptodate;
} DisasContext;

// Dummy helpers
void cris_cc_mask(DisasContext *dc, int val) {
    // No-op
}

void cris_evaluate_flags(DisasContext *dc) {
    printf("Evaluating flags...\n");
}

void t_gen_mov_TN_reg(TCGv t, int reg) {
    printf("Move reg %d into t%d\n", reg, t);
}

void t_gen_mov_preg_TN(DisasContext *dc, int preg, TCGv t) {
    printf("Move t%d into preg %d\n", t, preg);
}

void cris_update_cc_op(DisasContext *dc, int op, int size) {
    printf("Update CC op: %d (size=%d)\n", op, size);
}

// Function under test
static unsigned int dec_move_rp(DisasContext *dc)
{
    TCGv t[2];
    printf("move $r%u, $p%u\n", dc->op1, dc->op2);
    cris_cc_mask(dc, 0);

    t[0] = tcg_temp_new();

    if (dc->op2 == PR_CCS) {
        cris_evaluate_flags(dc);
        t_gen_mov_TN_reg(t[0], dc->op1);

        if (dc->tb_flags & U_FLAG) {
            t[1] = tcg_temp_new();

            tcg_gen_andi_tl(t[0], t[0], 0x39f);
            tcg_gen_andi_tl(t[1], cpu_PR[PR_CCS], ~0x39f);
            tcg_gen_or_tl(t[0], t[1], t[0]);
            tcg_temp_free(t[1]);
        }
    } else {
        t_gen_mov_TN_reg(t[0], dc->op1);
    }

    t_gen_mov_preg_TN(dc, dc->op2, t[0]);

    if (dc->op2 == PR_CCS) {
        cris_update_cc_op(dc, CC_OP_FLAGS, 4);
        dc->flags_uptodate = 1;
    }

    tcg_temp_free(t[0]);

    return 2;
}

// Test main
int main(void) {
    DisasContext dc = {
        .op1 = 3,
        .op2 = PR_CCS,
        .tb_flags = U_FLAG,
        .flags_uptodate = 0
    };

    cpu_PR[PR_CCS] = 0xFFFF;

    unsigned int ret = dec_move_rp(&dc);
    printf("Return: %u\n", ret);

    return 0;
}
