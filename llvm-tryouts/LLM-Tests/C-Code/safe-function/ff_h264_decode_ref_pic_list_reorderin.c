#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <limits.h>
#include <assert.h>

#define AV_LOG_ERROR 0
#define AVERROR_INVALIDDATA -1
#define FF_ARRAY_ELEMS(a) (sizeof(a) / sizeof((a)[0]))

typedef struct AVBufferRef {
    int dummy;
} AVBufferRef;

typedef struct AVFrame {
    AVBufferRef *buf[8];
} AVFrame;

typedef struct H264Picture {
    int reference;
    int long_ref;
    int frame_num;
    int pic_id;
    AVFrame *f;
} H264Picture;

typedef struct H264Ref {
    H264Picture *parent;
    int pic_id;
    int reference;
} H264Ref;

typedef struct GetBitContext {
    int dummy;
} GetBitContext;

typedef struct AVCodecContext {
    int dummy;
} AVCodecContext;

typedef struct H264Context {
    int curr_pic_num;
    int max_pic_num;
    int short_ref_count;
    int list_count;
    AVCodecContext *avctx;
    H264Picture *short_ref[16];
    H264Picture *long_ref[32];
    int last_pocs[16];
    H264Ref default_ref_list[2][16];
} H264Context;

typedef struct H264SliceContext {
    int list_count;
    int ref_count[2];
    GetBitContext gb;
    H264Ref ref_list[2][16];
} H264SliceContext;

void print_short_term(H264Context *h) {}
void print_long_term(H264Context *h) {}

int get_bits1(GetBitContext *gb) { return 0; }
unsigned int get_ue_golomb(GetBitContext *gb) { return 0; }
unsigned int get_ue_golomb_31(GetBitContext *gb) { return 3; }

int pic_num_extract(H264Context *h, int num, int *pic_structure) {
    *pic_structure = 3;
    return num;
}

void ref_from_h264pic(H264Ref *ref, H264Picture *pic) {
    ref->parent = pic;
    ref->reference = pic->reference;
    ref->pic_id = pic->pic_id;
}

void pic_as_field(H264Ref *ref, int pic_structure) {}

void av_log(void *ctx, int level, const char *fmt, ...) {
    va_list args;
    va_start(args, fmt);
    vfprintf(stderr, fmt, args);
    va_end(args);
}

int av_buffer_get_ref_count(AVBufferRef *buf) {
    return 1;
}

int ff_h264_decode_ref_pic_list_reordering(H264Context *h, H264SliceContext *sl) {
    int list, index, pic_structure;

    print_short_term(h);
    print_long_term(h);

    for (list = 0; list < sl->list_count; list++) {
        memcpy(sl->ref_list[list], h->default_ref_list[list], sl->ref_count[list] * sizeof(sl->ref_list[0][0]));

        if (get_bits1(&sl->gb)) {
            int pred = h->curr_pic_num;

            for (index = 0;; index++) {
                unsigned int modification_of_pic_nums_idc = get_ue_golomb_31(&sl->gb);
                unsigned int pic_id;
                int i;
                H264Picture *ref = NULL;

                if (modification_of_pic_nums_idc == 3)
                    break;

                if (index >= sl->ref_count[list]) {
                    av_log(h->avctx, AV_LOG_ERROR, "reference count overflow\n");
                    return -1;
                }

                switch (modification_of_pic_nums_idc) {
                    case 0:
                    case 1: {
                        const unsigned int abs_diff_pic_num = get_ue_golomb(&sl->gb) + 1;
                        int frame_num;

                        if (abs_diff_pic_num > h->max_pic_num) {
                            av_log(h->avctx, AV_LOG_ERROR, "abs_diff_pic_num overflow\n");
                            return AVERROR_INVALIDDATA;
                        }

                        if (modification_of_pic_nums_idc == 0)
                            pred -= abs_diff_pic_num;
                        else
                            pred += abs_diff_pic_num;
                        pred &= h->max_pic_num - 1;

                        frame_num = pic_num_extract(h, pred, &pic_structure);

                        for (i = h->short_ref_count - 1; i >= 0; i--) {
                            ref = h->short_ref[i];
                            assert(ref && ref->reference);
                            assert(!ref->long_ref);
                            if (ref->frame_num == frame_num && (ref->reference & pic_structure))
                                break;
                        }
                        if (i >= 0)
                            ref->pic_id = pred;
                        break;
                    }
                    case 2: {
                        int long_idx;
                        pic_id = get_ue_golomb(&sl->gb);
                        long_idx = pic_num_extract(h, pic_id, &pic_structure);

                        if (long_idx > 31) {
                            av_log(h->avctx, AV_LOG_ERROR, "long_term_pic_idx overflow\n");
                            return AVERROR_INVALIDDATA;
                        }

                        ref = h->long_ref[long_idx];
                        assert(!(ref && !ref->reference));
                        if (ref && (ref->reference & pic_structure)) {
                            ref->pic_id = pic_id;
                            assert(ref->long_ref);
                            i = 0;
                        } else {
                            i = -1;
                        }
                        break;
                    }
                    default:
                        av_log(h->avctx, AV_LOG_ERROR,
                               "illegal modification_of_pic_nums_idc %u\n",
                               modification_of_pic_nums_idc);
                        return AVERROR_INVALIDDATA;
                }

                if (i < 0) {
                    av_log(h->avctx, AV_LOG_ERROR,
                           "reference picture missing during reorder\n");
                    memset(&sl->ref_list[list][index], 0, sizeof(sl->ref_list[0][0]));
                } else {
                    for (i = index; i + 1 < sl->ref_count[list]; i++) {
                        if (sl->ref_list[list][i].parent &&
                            ref->long_ref == sl->ref_list[list][i].parent->long_ref &&
                            ref->pic_id == sl->ref_list[list][i].pic_id)
                            break;
                    }
                    for (; i > index; i--) {
                        sl->ref_list[list][i] = sl->ref_list[list][i - 1];
                    }
                    ref_from_h264pic(&sl->ref_list[list][index], ref);
                    if (1) { // FIELD_PICTURE(h)
                        pic_as_field(&sl->ref_list[list][index], pic_structure);
                    }
                }
            }
        }
    }

    for (list = 0; list < sl->list_count; list++) {
        for (index = 0; index < sl->ref_count[list]; index++) {
            if (!sl->ref_list[list][index].parent ||
                (0 && (sl->ref_list[list][index].reference & 3) != 3)) {
                int i;
                av_log(h->avctx, AV_LOG_ERROR, "Missing reference picture, default\n");
                for (i = 0; i < FF_ARRAY_ELEMS(h->last_pocs); i++)
                    h->last_pocs[i] = INT_MIN;
                if (h->default_ref_list[list][0].parent &&
                    !(0 && (h->default_ref_list[list][0].reference & 3) != 3))
                    sl->ref_list[list][index] = h->default_ref_list[list][0];
                else
                    return -1;
            }
            assert(av_buffer_get_ref_count(sl->ref_list[list][index].parent->f->buf[0]) > 0);
        }
    }

    return 0;
}

int main() {
    printf("Compiled.\n");
    return 0;
}
