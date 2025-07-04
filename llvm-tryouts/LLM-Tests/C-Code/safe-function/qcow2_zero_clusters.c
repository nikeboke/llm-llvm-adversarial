#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include <errno.h>

// Dummy defines and types for compilation
#define BDRV_SECTOR_BITS 9  // example: 512 bytes per sector = 2^9
typedef struct BlockDriverState {
    void *opaque;
} BlockDriverState;

typedef struct BDRVQcow2State {
    int qcow_version;
    bool cache_discards;
    uint64_t cluster_size;
} BDRVQcow2State;

// Stub helpers with dummy implementations
unsigned int size_to_clusters(BDRVQcow2State *s, int size_in_bytes) {
    // Assume cluster_size divides size_in_bytes exactly for dummy
    return (unsigned int)(size_in_bytes / s->cluster_size);
}

int zero_single_l2(BlockDriverState *bs, uint64_t offset, unsigned int nb_clusters) {
    // Dummy: pretend it zeroed all clusters at once
    return nb_clusters;
}

void qcow2_process_discards(BlockDriverState *bs, int ret) {
    // Dummy: do nothing
}

int qcow2_zero_clusters(BlockDriverState *bs, uint64_t offset, int nb_sectors)
{
    BDRVQcow2State *s = (BDRVQcow2State *)bs->opaque;
    unsigned int nb_clusters;
    int ret;

    if (s->qcow_version < 3) {
        return -ENOTSUP;
    }

    nb_clusters = size_to_clusters(s, nb_sectors << BDRV_SECTOR_BITS);

    s->cache_discards = true;

    while (nb_clusters > 0) {
        ret = zero_single_l2(bs, offset, nb_clusters);
        if (ret < 0) {
            goto fail;
        }

        nb_clusters -= ret;
        offset += (ret * s->cluster_size);
    }

    ret = 0;
fail:
    s->cache_discards = false;
    qcow2_process_discards(bs, ret);

    return ret;
}

// Optional main for quick compilation test
int main() {
    BDRVQcow2State state = {3, false, 4096};  // cluster_size=4KB
    BlockDriverState bs = {&state};

    int ret = qcow2_zero_clusters(&bs, 0, 8);
    printf("Result: %d\n", ret);

    return 0;
}
