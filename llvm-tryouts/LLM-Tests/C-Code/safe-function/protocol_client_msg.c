#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct VncState {
    // Dummy struct for compiling
    int dummy;
} VncState;

// === Helper function stubs ===
uint8_t read_u8(char *data, int offset) {
    return (uint8_t)data[offset];
}

uint16_t read_u16(char *data, int offset) {
    return (uint16_t)((data[offset] << 8) | (uint8_t)data[offset + 1]);
}

uint32_t read_u32(char *data, int offset) {
    return ((uint32_t)(uint8_t)data[offset] << 24) |
           ((uint32_t)(uint8_t)data[offset + 1] << 16) |
           ((uint32_t)(uint8_t)data[offset + 2] << 8) |
           ((uint32_t)(uint8_t)data[offset + 3]);
}

int32_t read_s32(char *data, int offset) {
    int32_t val;
    memcpy(&val, data + offset, sizeof(val));
    return val;
}

// === Dummy function definitions ===
void set_pixel_format(VncState *vs, uint8_t a, uint8_t b, uint8_t c, uint8_t d,
                      uint16_t e, uint16_t f, uint16_t g, uint8_t h,
                      uint8_t i, uint8_t j) {
    (void)vs; (void)a; (void)b; (void)c; (void)d;
    (void)e; (void)f; (void)g; (void)h; (void)i; (void)j;
}

void set_encodings(VncState *vs, int32_t *encodings, uint16_t count) {
    (void)vs; (void)encodings; (void)count;
}

void framebuffer_update_request(VncState *vs, uint8_t incremental,
                                uint16_t x, uint16_t y, uint16_t w, uint16_t h) {
    (void)vs; (void)incremental; (void)x; (void)y; (void)w; (void)h;
}

void key_event(VncState *vs, uint8_t down_flag, uint32_t key) {
    (void)vs; (void)down_flag; (void)key;
}

void pointer_event(VncState *vs, uint8_t button_mask, uint16_t x, uint16_t y) {
    (void)vs; (void)button_mask; (void)x; (void)y;
}

void client_cut_text(VncState *vs, uint32_t length, char *text) {
    (void)vs; (void)length; (void)text;
}

void vnc_client_error(VncState *vs) {
    (void)vs;
    fprintf(stderr, "Client error occurred\n");
}

void vnc_read_when(VncState *vs, int (*cb)(VncState *, char *, size_t), int len) {
    (void)vs; (void)cb; (void)len;
}

// === Target function ===
int protocol_client_msg(VncState *vs, char *data, size_t len) {
    int i;
    uint16_t limit;

    switch (data[0]) {
    case 0:
        if (len == 1)
            return 20;
        set_pixel_format(vs, read_u8(data, 4), read_u8(data, 5),
                         read_u8(data, 6), read_u8(data, 7),
                         read_u16(data, 8), read_u16(data, 10),
                         read_u16(data, 12), read_u8(data, 14),
                         read_u8(data, 15), read_u8(data, 16));
        break;

    case 2:
        if (len == 1)
            return 4;

        if (len == 4)
            return 4 + (read_u16(data, 2) * 4);

        limit = read_u16(data, 2);
        for (i = 0; i < limit; i++) {
            int32_t val = read_s32(data, 4 + (i * 4));
            memcpy(data + 4 + (i * 4), &val, sizeof(val));
        }

        set_encodings(vs, (int32_t *)(data + 4), limit);
        break;

    case 3:
        if (len == 1)
            return 10;

        framebuffer_update_request(vs,
                                   read_u8(data, 1), read_u16(data, 2), read_u16(data, 4),
                                   read_u16(data, 6), read_u16(data, 8));
        break;

    case 4:
        if (len == 1)
            return 8;

        key_event(vs, read_u8(data, 1), read_u32(data, 4));
        break;

    case 5:
        if (len == 1)
            return 6;

        pointer_event(vs, read_u8(data, 1), read_u16(data, 2), read_u16(data, 4));
        break;

    case 6:
        if (len == 1)
            return 8;

        if (len == 8)
            return 8 + read_u32(data, 4);

        client_cut_text(vs, read_u32(data, 4), data + 8);
        break;

    default:
        printf("Msg: %d\n", data[0]);
        vnc_client_error(vs);
        break;
    }

    vnc_read_when(vs, protocol_client_msg, 1);
    return 0;
}

int main() {
    VncState vs;
    char dummy_data[32] = {0};
    protocol_client_msg(&vs, dummy_data, sizeof(dummy_data));
    return 0;
}

