#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>

// Dummy byte-order macros
#define be16_to_cpu(x) ((uint16_t)(x))
#define be32_to_cpu(x) ((uint32_t)(x))
#define cpu_to_be16(x) ((uint16_t)(x))

// Response codes
#define SCLP_RC_INSUFFICIENT_SCCB_LENGTH     0x0010
#define SCLP_RC_NO_ACTION_REQUIRED           0x0020
#define SCLP_RC_NORMAL_COMPLETION            0x0024
#define SCLP_RC_ADAPTER_ID_NOT_RECOGNIZED    0x0030

// Logging macro
#define DPRINTF(fmt, ...) printf(fmt, ##__VA_ARGS__)

// SCCB header
typedef struct {
    uint16_t length;
} SCCBHeader;

// Base SCCB struct
typedef struct {
    SCCBHeader h;
} SCCB;

// PCI Configuration SCCB (extends SCCB)
typedef struct {
    SCCBHeader h;
    uint32_t aid;  // Adapter ID
    struct {
        uint16_t response_code;
    } header;
} PciCfgSccb;

// Dummy PCI device representation
typedef struct {
    bool configured;
    uint32_t aid;
} S390PCIBusDevice;

// Dummy global PCI device
S390PCIBusDevice global_dev = {
    .configured = false,
    .aid = 0xDEADBEEF
};

// Dummy device lookup function
S390PCIBusDevice* s390_pci_find_dev_by_fid(uint32_t fid)
{
    if (fid == global_dev.aid) {
        return &global_dev;
    }
    return NULL;
}

// The function under test
void s390_pci_sclp_configure(SCCB *sccb)
{
    PciCfgSccb *psccb = (PciCfgSccb *)sccb;
    S390PCIBusDevice *pbdev = s390_pci_find_dev_by_fid(be32_to_cpu(psccb->aid));
    uint16_t rc;

    if (be16_to_cpu(sccb->h.length) < 16) {
        rc = SCLP_RC_INSUFFICIENT_SCCB_LENGTH;
        goto out;
    }

    if (pbdev) {
        if (pbdev->configured) {
            rc = SCLP_RC_NO_ACTION_REQUIRED;
        } else {
            pbdev->configured = true;
            rc = SCLP_RC_NORMAL_COMPLETION;
        }
    } else {
        DPRINTF("sclp config no dev found\n");
        rc = SCLP_RC_ADAPTER_ID_NOT_RECOGNIZED;
    }

out:
    psccb->header.response_code = cpu_to_be16(rc);
}

// Example usage
int main(void)
{
    PciCfgSccb sccb;
    memset(&sccb, 0, sizeof(sccb));
    sccb.h.length = 20;
    sccb.aid = 0xDEADBEEF;

    s390_pci_sclp_configure((SCCB *)&sccb);

    printf("Response code: 0x%04X\n", be16_to_cpu(sccb.header.response_code));
    return 0;
}
