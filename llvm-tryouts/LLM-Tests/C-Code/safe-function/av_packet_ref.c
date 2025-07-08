#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Uncomment this if your compiler supports it
// #include <stdint.h>
typedef unsigned char uint8_t;


// Minimal buffer struct
typedef struct AVBufferRef {
    uint8_t *data;
    int size;
} AVBufferRef;

// AVPacket struct
typedef struct AVPacket {
    AVBufferRef *buf;
    int size;
    uint8_t *data;
    // Add more fields as needed
} AVPacket;

// Simulate copying packet properties
int av_packet_copy_props(AVPacket *dst, AVPacket *src) {
    // No real properties in this mock version
    return 0;
}

// Simulate freeing side data
void av_packet_free_side_data(AVPacket *pkt) {
    // No-op for mock
}

// Simulate buffer reference (increase ref count in real FFmpeg)
AVBufferRef* av_buffer_ref(AVBufferRef *src) {
    if (!src) return NULL;
    AVBufferRef *ref = malloc(sizeof(AVBufferRef));
    if (!ref) return NULL;
    ref->size = src->size;
    ref->data = malloc(ref->size);
    if (!ref->data) {
        free(ref);
        return NULL;
    }
    memcpy(ref->data, src->data, ref->size);
    return ref;
}

// Simulate buffer allocation
int packet_alloc(AVBufferRef **buf, int size) {
    *buf = malloc(sizeof(AVBufferRef));
    if (!*buf) return -1;
    (*buf)->data = malloc(size);
    if (!(*buf)->data) {
        free(*buf);
        return -1;
    }
    (*buf)->size = size;
    return 0;
}

// The function under test
int av_packet_ref(AVPacket *dst, AVPacket *src) {
    int ret;

    ret = av_packet_copy_props(dst, src);
    if (ret < 0)
        return ret;

    if (!src->buf) {
        ret = packet_alloc(&dst->buf, src->size);
        if (ret < 0)
            goto fail;
        memcpy(dst->buf->data, src->data, src->size);
    } else {
        dst->buf = av_buffer_ref(src->buf);
        if (!dst->buf)
            goto fail;
    }

    dst->size = src->size;
    dst->data = dst->buf->data;
    return 0;

fail:
    av_packet_free_side_data(dst);
    return ret;
}

// Test driver
int main() {
    AVPacket src = {0}, dst = {0};

    src.size = 16;
    src.data = malloc(src.size);
    if (!src.data) return 1;
    memcpy(src.data, "hello_ffmpeg_test", src.size);

    printf("Calling av_packet_ref...\n");
    if (av_packet_ref(&dst, &src) == 0) {
        printf("Success! Copied %d bytes: %.*s\n", dst.size, dst.size, dst.data);
    } else {
        printf("Failed to reference packet.\n");
    }

    // Cleanup
    free(src.data);
    if (dst.buf) {
        free(dst.buf->data);
        free(dst.buf);
    }

    return 0;
}
