#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

// === Constants ===
#define USB_RET_STALL -1
#define RNDIS_SET_CMPLT 0x80000005
#define RNDIS_STATUS_SUCCESS 0x00000000
#define RNDIS_STATUS_NOT_SUPPORTED 0xC00000BB

// === Byte order helpers (for x86 assume little endian) ===
#define le32_to_cpu(x) (x)
#define cpu_to_le32(x) (x)

// === Mock Types ===
typedef struct {
    // Dummy struct; fill as needed
    int dummy;
} USBNetState;

typedef struct {
    uint32_t MessageType;
    uint32_t MessageLength;
    uint32_t RequestID;
    uint32_t OID;
    uint32_t InformationBufferLength;
    uint32_t InformationBufferOffset;
} rndis_set_msg_type;

typedef struct {
    uint32_t MessageType;
    uint32_t MessageLength;
    uint32_t RequestID;
    uint32_t Status;
} rndis_set_cmplt_type;

// === Dummy implementation of queueing response ===
void *rndis_queue_response(USBNetState *s, size_t size) {
    return calloc(1, size); // mock response buffer
}

// === Dummy ndis_set implementation ===
int ndis_set(USBNetState *s, uint32_t oid, void *data, uint32_t len) {
    printf("Set OID: 0x%x with length %u\n", oid, len);
    return 0; // simulate success
}

// === The Function ===
static int rndis_set_response(USBNetState *s,
                              rndis_set_msg_type *buf, unsigned int length)
{
    rndis_set_cmplt_type *resp =
        rndis_queue_response(s, sizeof(rndis_set_cmplt_type));
    uint32_t bufoffs, buflen;
    int ret;

    if (!resp)
        return USB_RET_STALL;

    bufoffs = le32_to_cpu(buf->InformationBufferOffset) + 8;
    buflen = le32_to_cpu(buf->InformationBufferLength);
    if (bufoffs + buflen > length)
        return USB_RET_STALL;

    ret = ndis_set(s, le32_to_cpu(buf->OID),
                   (uint8_t *)buf + bufoffs, buflen);

    resp->MessageType = cpu_to_le32(RNDIS_SET_CMPLT);
    resp->RequestID = buf->RequestID;
    resp->MessageLength = cpu_to_le32(sizeof(rndis_set_cmplt_type));

    if (ret < 0) {
        resp->Status = cpu_to_le32(RNDIS_STATUS_NOT_SUPPORTED);
        return 0;
    }

    resp->Status = cpu_to_le32(RNDIS_STATUS_SUCCESS);
    return 0;
}

int main() {
    USBNetState s;
    rndis_set_msg_type msg = {0};
    rndis_set_response(&s, &msg, sizeof(msg));
    return 0;
}

