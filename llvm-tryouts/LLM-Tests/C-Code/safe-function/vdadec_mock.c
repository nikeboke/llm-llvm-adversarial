#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// === Fake macOS constants ===
typedef int OSStatus;
#define kVDADecoderNoErr 0
double kCFCoreFoundationVersionNumber = 1000.0;
double kCFCoreFoundationVersionNumber10_7 = 800.0;

// === Pixel formats ===
#define AV_PIX_FMT_UYVY422 0
#define AV_PIX_FMT_YUYV422 1
#define AV_PIX_FMT_NV12    2
#define AV_PIX_FMT_YUV420P 3
#define AV_PIX_FMT_UNKNOWN -1

// === Logging levels ===
#define AV_LOG_ERROR 0

void av_log(void *avctx, int level, const char *fmt, ...) {
    va_list args;
    va_start(args, fmt);
    printf("[LOG] ");
    vprintf(fmt, args);
    va_end(args);
}

// === VDA Context ===
struct vda_context {
    int width;
    int height;
    int format;
    int use_sync_decoding;
    int use_ref_buffer;
    int cv_pix_fmt_type;
};

// === VDADecoderContext ===
typedef struct VDADecoderContext {
    struct vda_context vda_ctx;
    int h264_initialized;
    int pix_fmt;
} VDADecoderContext;

// === Codec ===
typedef struct AVCodec {
    const int *pix_fmts;
} AVCodec;

// === CodecContext ===
typedef struct AVCodecContext {
    int width;
    int height;
    void *extradata;
    int extradata_size;
    struct vda_context *hwaccel_context;

    int (*get_format)(struct AVCodecContext *, const int *);
    void *get_buffer2;
    void *get_buffer;

    int pix_fmt;

    AVCodec *codec;
    void *priv_data;
} AVCodecContext;

// === Dummy function pointers ===
int dummy_get_format(AVCodecContext *ctx, const int *fmts) {
    return AV_PIX_FMT_NV12;
}

void *dummy_get_buffer2 = NULL;

// === External Decoder Setup ===
int ff_vda_create_decoder(struct vda_context *ctx, void *extradata, int extradata_size) {
    return kVDADecoderNoErr;
}

int ff_h264_decoder_init(AVCodecContext *ctx) {
    return 0;
}

void vdadec_close(AVCodecContext *ctx) {
    printf("[vdadec_close] Cleanup called.\n");
}

// === Dummy format arrays ===
const int vda_pixfmts_prior_10_7[] = { AV_PIX_FMT_YUYV422, -1 };
const int vda_pixfmts[] = { AV_PIX_FMT_NV12, -1 };

// === FFmpeg Globals ===
struct {
    const int *pix_fmts;
} ff_h264_vda_decoder = { NULL };

struct {
    int (*init)(AVCodecContext *);
} ff_h264_decoder = {
    .init = ff_h264_decoder_init
};

// === Global override functions ===
int get_format(AVCodecContext *ctx, const int *pix_fmts) {
    return dummy_get_format(ctx, pix_fmts);
}

void *get_buffer2 = NULL;

// === Actual Function ===
static int vdadec_init(AVCodecContext *avctx)
{
    VDADecoderContext *ctx = avctx->priv_data;
    struct vda_context *vda_ctx = &ctx->vda_ctx;
    OSStatus status;
    int ret;

    ctx->h264_initialized = 0;

    if (!ff_h264_vda_decoder.pix_fmts) {
        if (kCFCoreFoundationVersionNumber < kCFCoreFoundationVersionNumber10_7)
            ff_h264_vda_decoder.pix_fmts = vda_pixfmts_prior_10_7;
        else
            ff_h264_vda_decoder.pix_fmts = vda_pixfmts;
    }

    memset(vda_ctx, 0, sizeof(struct vda_context));
    vda_ctx->width = avctx->width;
    vda_ctx->height = avctx->height;
    vda_ctx->format = 'avc1';
    vda_ctx->use_sync_decoding = 1;
    vda_ctx->use_ref_buffer = 1;

    ctx->pix_fmt = avctx->get_format(avctx, avctx->codec->pix_fmts);
    switch (ctx->pix_fmt) {
    case AV_PIX_FMT_UYVY422:
        vda_ctx->cv_pix_fmt_type = '2vuy';
        break;
    case AV_PIX_FMT_YUYV422:
        vda_ctx->cv_pix_fmt_type = 'yuvs';
        break;
    case AV_PIX_FMT_NV12:
        vda_ctx->cv_pix_fmt_type = '420v';
        break;
    case AV_PIX_FMT_YUV420P:
        vda_ctx->cv_pix_fmt_type = 'y420';
        break;
    default:
        av_log(avctx, AV_LOG_ERROR, "Unsupported pixel format: %d\n", avctx->pix_fmt);
        goto failed;
    }

    status = ff_vda_create_decoder(vda_ctx, avctx->extradata, avctx->extradata_size);
    if (status != kVDADecoderNoErr) {
        av_log(avctx, AV_LOG_ERROR, "Failed to init VDA decoder: %d.\n", status);
        goto failed;
    }

    avctx->hwaccel_context = vda_ctx;

    avctx->get_format = get_format;
    avctx->get_buffer2 = get_buffer2;
#if 1
    avctx->get_buffer = NULL;
#endif

    ret = ff_h264_decoder.init(avctx);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Failed to open H.264 decoder.\n");
        goto failed;
    }

    ctx->h264_initialized = 1;
    return 0;

failed:
    vdadec_close(avctx);
    return -1;
}

// === Main for Testing ===
int main() {
    VDADecoderContext priv_data = {0};
    AVCodec codec = { .pix_fmts = vda_pixfmts };
    AVCodecContext avctx = {
        .width = 1280,
        .height = 720,
        .extradata = NULL,
        .extradata_size = 0,
        .codec = &codec,
        .priv_data = &priv_data,
        .get_format = dummy_get_format
    };

    int ret = vdadec_init(&avctx);
    printf("vdadec_init returned: %d\n", ret);
    return 0;
}
