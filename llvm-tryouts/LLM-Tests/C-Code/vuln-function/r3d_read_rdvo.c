#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <inttypes.h>

// Dummy definitions to make the function compilable
typedef struct {
    int num;
    int den;
} AVRational;

typedef struct {
    int64_t duration;
    AVRational r_frame_rate;
    AVRational time_base;
} AVStream;

typedef struct {
    uint8_t *buffer;
    int pos;
} AVIOContext;

uint32_t avio_rb32(AVIOContext *pb) {
    // Dummy implementation
    return (pb->buffer[pb->pos++] << 24) |
           (pb->buffer[pb->pos++] << 16) |
           (pb->buffer[pb->pos++] << 8) |
           (pb->buffer[pb->pos++]);
}

int64_t av_rescale_q(int64_t a, AVRational bq, AVRational cq) {
    return a * (int64_t)cq.den * bq.num / (bq.den * (int64_t)cq.num);
}

void av_dlog(void *ctx, const char *fmt, ...) {
    va_list args;
    va_start(args, fmt);
    vprintf(fmt, args);
    va_end(args);
}

void *av_malloc(size_t size) {
    return malloc(size);
}

#define AVERROR(x) (-x)
#define ENOMEM 12

typedef struct {
    uint32_t *video_offsets;
    int video_offsets_count;
} R3DContext;

typedef struct {
    AVIOContext *pb;
    AVStream *streams[1];
    R3DContext *priv_data;
} AVFormatContext;

typedef struct {
    int size;
} Atom;

// The function to compile
static int r3d_read_rdvo(AVFormatContext *s, Atom *atom) {
    R3DContext *r3d = s->priv_data;
    AVStream *st = s->streams[0];
    int i;

    r3d->video_offsets_count = (atom->size - 8) / 4;
    r3d->video_offsets = av_malloc(atom->size);
    if (!r3d->video_offsets)
        return AVERROR(ENOMEM);

    for (i = 0; i < r3d->video_offsets_count; i++) {
        r3d->video_offsets[i] = avio_rb32(s->pb);
        if (!r3d->video_offsets[i]) {
            r3d->video_offsets_count = i;
            break;
        }
        av_dlog(s, "video offset %d: %#x\n", i, r3d->video_offsets[i]);
    }

    if (st->r_frame_rate.num)
        st->duration = av_rescale_q(r3d->video_offsets_count,
                                    (AVRational){st->r_frame_rate.den,
                                                 st->r_frame_rate.num},
                                    st->time_base);
    av_dlog(s, "duration %" PRId64 "\n", st->duration);

    return 0;
}

// Entry point for testing
int main() {
    printf("Compiled successfully.\n");
    return 0;
}
