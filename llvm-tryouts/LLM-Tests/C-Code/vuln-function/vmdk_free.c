#include <stdio.h>
#include <stdlib.h>

// Placeholder for g_free (typically GLib)
#define g_free(x) free(x)

// Dummy structures
typedef struct {
    void *l1_table;
    void *l2_cache;
    void *l1_backup_table;
} VmdkExtent;

typedef struct {
    VmdkExtent *extents;
    int num_extents;
} BDRVVmdkState;

typedef struct {
    BDRVVmdkState *opaque;
} BlockDriverState;

// Function to be compiled
static void vmdk_free_extents(BlockDriverState *bs) {
    int i;
    BDRVVmdkState *s = bs->opaque;

    for (i = 0; i < s->num_extents; i++) {
        g_free(s->extents[i].l1_table);
        g_free(s->extents[i].l2_cache);
        g_free(s->extents[i].l1_backup_table);
    }
    g_free(s->extents);
}

// Dummy main for testing
int main() {
    // Allocate and initialize dummy data
    BlockDriverState bs;
    BDRVVmdkState state;
    VmdkExtent *exts = calloc(2, sizeof(VmdkExtent));

    for (int i = 0; i < 2; ++i) {
        exts[i].l1_table = malloc(16);
        exts[i].l2_cache = malloc(16);
        exts[i].l1_backup_table = malloc(16);
    }

    state.extents = exts;
    state.num_extents = 2;
    bs.opaque = &state;

    // Call the cleanup function
    vmdk_free_extents(&bs);
    return 0;
}
