#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

typedef uint64_t hwaddr;
typedef void (*qemu_irq)(void *);

// === Fully defined MemoryRegion ===
typedef struct MemoryRegion {
    const char *name;
    hwaddr size;
    void *opaque;
} MemoryRegion;

// === Struct with no forward refs ===
typedef struct PXA2xxI2SState {
    qemu_irq irq;
    qemu_irq rx_dma;
    qemu_irq tx_dma;
    void (*data_req)(struct PXA2xxI2SState *);
    MemoryRegion iomem;
} PXA2xxI2SState;

// === Dummy helpers ===

void dummy_irq(void *opaque) {}

void pxa2xx_i2s_data_req(PXA2xxI2SState *s) {}

void pxa2xx_i2s_reset(PXA2xxI2SState *s) {
    printf("Resetting I2S\n");
}

void memory_region_init_io(MemoryRegion *mr, void *ops,
                           void *memops, void *opaque,
                           const char *name, hwaddr size) {
    mr->name = name;
    mr->size = size;
    mr->opaque = opaque;
}

void memory_region_add_subregion(MemoryRegion *parent, hwaddr base,
                                 MemoryRegion *sub) {
    printf("Mapped '%s' at base 0x%lx (size 0x%lx)\n",
           sub->name, base, sub->size);
}

void vmstate_register(void *opaque, hwaddr base,
                      void *vmstate, void *s) {
    printf("Registered VM state at base 0x%lx\n", base);
}

// === Replacement for g_malloc0 ===
void *g_malloc0(size_t size) {
    void *ptr = calloc(1, size);
    if (!ptr) {
        fprintf(stderr, "g_malloc0: allocation failed\n");
        exit(EXIT_FAILURE);
    }
    return ptr;
}

// === Target function ===

static PXA2xxI2SState *pxa2xx_i2s_init(MemoryRegion *sysmem,
                                       hwaddr base,
                                       qemu_irq irq,
                                       qemu_irq rx_dma,
                                       qemu_irq tx_dma)
{
    PXA2xxI2SState *s = (PXA2xxI2SState *) g_malloc0(sizeof(PXA2xxI2SState));

    s->irq = irq;
    s->rx_dma = rx_dma;
    s->tx_dma = tx_dma;
    s->data_req = pxa2xx_i2s_data_req;

    pxa2xx_i2s_reset(s);

    memory_region_init_io(&s->iomem, NULL, NULL, s, "pxa2xx-i2s", 0x100000);
    memory_region_add_subregion(sysmem, base, &s->iomem);
    vmstate_register(NULL, base, NULL, s);

    return s;
}

// === Main ===

int main(void)
{
    MemoryRegion sysmem = { .name = "sysmem", .size = 0x1000000 };
    hwaddr base = 0x1000;

    PXA2xxI2SState *i2s = pxa2xx_i2s_init(&sysmem, base,
                                          dummy_irq, dummy_irq, dummy_irq);

    printf("I2S device initialized at %p\n", (void *)i2s);
    free(i2s);
    return 0;
}
