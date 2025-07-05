#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>

#define AVIO_FLAG_READ  1
#define AVIO_FLAG_WRITE 2
#define FFMIN(a,b) ((a) < (b) ? (a) : (b))
#define AVERROR(e) (-(e))

typedef struct AVIOContext {
    FILE *fp;
} AVIOContext;

typedef struct AVIOInterruptCB {
    void *callback;  // dummy
} AVIOInterruptCB;

typedef struct AVFormatContext {
    AVIOInterruptCB interrupt_callback;
} AVFormatContext;

// Dummy wrappers simulating avio functions
int avio_open2(AVIOContext **ctx, const char *filename, int flags,
               AVIOInterruptCB *cb, void *options) {
    FILE *f = fopen(filename, (flags == AVIO_FLAG_READ) ? "rb" : "wb");
    if (!f)
        return AVERROR(errno);

    *ctx = (AVIOContext *)malloc(sizeof(AVIOContext));
    (*ctx)->fp = f;
    return 0;
}

int avio_read(AVIOContext *ctx, uint8_t *buf, int size) {
    return fread(buf, 1, size, ctx->fp);
}

void avio_write(AVIOContext *ctx, const uint8_t *buf, int size) {
    fwrite(buf, 1, size, ctx->fp);
}

void avio_flush(AVIOContext *ctx) {
    fflush(ctx->fp);
}

void avio_close(AVIOContext *ctx) {
    if (ctx) {
        fclose(ctx->fp);
        free(ctx);
    }
}

// === Your function ===
static int copy_moof(AVFormatContext *s, const char* infile, const char *outfile, int64_t size) {
    AVIOContext *in, *out;
    int ret = 0;

    if ((ret = avio_open2(&in, infile, AVIO_FLAG_READ, &s->interrupt_callback, NULL)) < 0)
        return ret;

    if ((ret = avio_open2(&out, outfile, AVIO_FLAG_WRITE, &s->interrupt_callback, NULL)) < 0) {
        avio_close(in);
        return ret;
    }

    while (size > 0) {
        uint8_t buf[8192];
        int n = FFMIN(size, (int)sizeof(buf));
        n = avio_read(in, buf, n);
        if (n <= 0) {
            ret = AVERROR(EIO);
            break;
        }
        avio_write(out, buf, n);
        size -= n;
    }

    avio_flush(out);
    avio_close(out);
    avio_close(in);
    return ret;
}

// Dummy main to allow compilation
int main() {
    AVFormatContext fmt = {0};
    copy_moof(&fmt, "input.bin", "output.bin", 16384);
    return 0;
}
