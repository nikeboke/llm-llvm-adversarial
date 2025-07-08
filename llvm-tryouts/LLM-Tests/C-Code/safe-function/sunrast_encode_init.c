#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

// Fake FFmpeg constants and types
#define FF_CODER_TYPE_RLE 1
#define FF_CODER_TYPE_RAW 2
#define AV_PIX_FMT_MONOWHITE 0
#define AV_PIX_FMT_PAL8     1
#define AV_PIX_FMT_GRAY8    2
#define AV_PIX_FMT_BGR24    3
#define AV_PICTURE_TYPE_I   1
#define AV_LOG_ERROR        0
#define AVERROR(x)          (-x)
#define ENOMEM              12
#define EINVAL              22
#define AVERROR_BUG         (-1)
#define FFALIGN(x, a)       ((((x) + (a) - 1) / (a)) * (a))

#define RT_BYTE_ENCODED     1
#define RT_STANDARD         2
#define RMT_NONE            0
#define RMT_EQUAL_RGB       1

#define av_cold             // No-op

typedef struct AVFrame {
    int key_frame;
    int pict_type;
} AVFrame;

typedef struct AVCodecContext {
    int coder_type;
    int pix_fmt;
    int width;
    int height;
    AVFrame *coded_frame;
    void *priv_data;
} AVCodecContext;

typedef struct SUNRASTContext {
    int type;
    int maptype;
    int maplength;
    int depth;
    int length;
    int size;
} SUNRASTContext;

AVFrame* av_frame_alloc(void) {
    AVFrame *frame = (AVFrame *)malloc(sizeof(AVFrame));
    if (frame) memset(frame, 0, sizeof(AVFrame));
    return frame;
}

void av_log(AVCodecContext *ctx, int level, const char *msg) {
    fprintf(stderr, "LOG[%d]: %s", level, msg);
}

// The function from your code
static av_cold int sunrast_encode_init(AVCodecContext *avctx) {
    SUNRASTContext *s = avctx->priv_data;

    switch (avctx->coder_type) {
    case FF_CODER_TYPE_RLE:
        s->type = RT_BYTE_ENCODED;
        break;
    case FF_CODER_TYPE_RAW:
        s->type = RT_STANDARD;
        break;
    default:
        av_log(avctx, AV_LOG_ERROR, "invalid coder_type\n");
        return AVERROR(EINVAL);
    }

    avctx->coded_frame = av_frame_alloc();
    if (!avctx->coded_frame)
        return AVERROR(ENOMEM);

    avctx->coded_frame->key_frame = 1;
    avctx->coded_frame->pict_type = AV_PICTURE_TYPE_I;
    s->maptype   = RMT_NONE;
    s->maplength = 0;

    switch (avctx->pix_fmt) {
    case AV_PIX_FMT_MONOWHITE:
        s->depth = 1;
        break;
    case AV_PIX_FMT_PAL8:
        s->maptype = RMT_EQUAL_RGB;
        s->maplength = 3 * 256;
        // fall through
    case AV_PIX_FMT_GRAY8:
        s->depth = 8;
        break;
    case AV_PIX_FMT_BGR24:
        s->depth = 24;
        break;
    default:
        return AVERROR_BUG;
    }

    s->length = avctx->height * (FFALIGN(avctx->width * s->depth, 16) >> 3);
    s->size = 32 + s->maplength +
              s->length * (s->type == RT_BYTE_ENCODED ? 2 : 1);

    return 0;
}

// Minimal test main
int main() {
    SUNRASTContext s = {0};
    AVCodecContext ctx = {
        .coder_type = FF_CODER_TYPE_RAW,
        .pix_fmt = AV_PIX_FMT_GRAY8,
        .width = 640,
        .height = 480,
        .priv_data = &s
    };

    int ret = sunrast_encode_init(&ctx);
    if (ret == 0) {
        printf("Init successful. Encoded size = %d bytes\n", s.size);
    } else {
        printf("Init failed with error code %d\n", ret);
    }

    free(ctx.coded_frame);
    return 0;
}
