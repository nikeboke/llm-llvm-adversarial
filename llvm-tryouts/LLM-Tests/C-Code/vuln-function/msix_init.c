// msix_example.c

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

// === Mocked PCI Constants ===
#define PCI_MSIX_ENTRY_SIZE 16
#define PCI_BASE_ADDRESS_SPACE_MEMORY 0

// === Mocked qemu helpers ===
int qemu_fls(uint32_t x) {
    int r = 0;
    while (x >>= 1) r++;
    return r + 1;
}

// === Mocked memory region ===
typedef struct MemoryRegion {
    size_t size;
    const char* name;
} MemoryRegion;

void memory_region_init(MemoryRegion *mr, void *obj, const char *name, size_t size) {
    mr->size = size;
    mr->name = strdup(name);
}

// === Mocked PCI Device ===
typedef struct PCIDevice {
    const char *name;
    MemoryRegion msix_exclusive_bar;
} PCIDevice;

// === Mocked glib helpers ===
char *g_strdup_printf(const char *fmt, const char *arg) {
    size_t size = snprintf(NULL, 0, fmt, arg) + 1;
    char *str = malloc(size);
    snprintf(str, size, fmt, arg);
    return str;
}
void g_free(void *ptr) {
    free(ptr);
}

// === Mocked msix/pci helpers ===
int msix_init(PCIDevice *dev, unsigned short nentries,
              MemoryRegion *table_bar, uint8_t table_bar_nr,
              uint32_t table_offset, MemoryRegion *pba_bar,
              uint8_t pba_bar_nr, uint32_t pba_offset,
              uint32_t flags)
{
    // Fake success
    return 0;
}

void pci_register_bar(PCIDevice *dev, uint8_t bar_nr, int type, MemoryRegion *bar) {
    printf("Registered BAR %d of size %zu for device %s\n", bar_nr, bar->size, dev->name);
}

// === The function you provided ===
int msix_init_exclusive_bar(PCIDevice *dev, unsigned short nentries, uint8_t bar_nr) {
    int ret;
    char *name;
    uint32_t bar_size = 4096;
    uint32_t bar_pba_offset = bar_size / 2;
    uint32_t bar_pba_size = (nentries / 8 + 1) * 8;

    if (nentries * PCI_MSIX_ENTRY_SIZE > bar_pba_offset) {
        bar_pba_offset = nentries * PCI_MSIX_ENTRY_SIZE;
    }

    if (bar_pba_offset + bar_pba_size > 4096) {
        bar_size = bar_pba_offset + bar_pba_size;
    }

    if (bar_size & (bar_size - 1)) {
        bar_size = 1 << qemu_fls(bar_size);
    }

    name = g_strdup_printf("%s-msix", dev->name);
    memory_region_init(&dev->msix_exclusive_bar, dev, name, bar_size);
    g_free(name);

    ret = msix_init(dev, nentries, &dev->msix_exclusive_bar, bar_nr,
                    0, &dev->msix_exclusive_bar,
                    bar_nr, bar_pba_offset,
                    0);
    if (ret) {
        return ret;
    }

    pci_register_bar(dev, bar_nr, PCI_BASE_ADDRESS_SPACE_MEMORY,
                     &dev->msix_exclusive_bar);

    return 0;
}

// === Main to test ===
int main() {
    PCIDevice dev = { .name = "virt-pci-dev" };
    int result = msix_init_exclusive_bar(&dev, 32, 2);
    printf("Init result: %d\n", result);
    return 0;
}
