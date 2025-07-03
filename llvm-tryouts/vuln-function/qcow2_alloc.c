#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

#define QCOW_OFLAG_COPIED       (1ULL << 63)
#define QCOW_OFLAG_COMPRESSED   (1ULL << 62)
#define MIN(a,b) ((a)<(b)?(a):(b))

typedef struct BlockDriverState {
    void *opaque;
} BlockDriverState;

typedef struct QCowL2Meta {
    uint64_t offset;
    int n_start;
    int nb_clusters;
    int nb_available;
    struct QCowL2Meta *depends_on;
    struct QCowL2Meta *next_in_flight;
} QCowL2Meta;

typedef struct BDRVQcowState {
    int cluster_size;
    int cluster_bits;
    int l2_size;
    QCowL2Meta *cluster_allocs;
} BDRVQcowState;

// Dummy implementations
int get_cluster_table(BlockDriverState *bs, uint64_t offset,
                      uint64_t **l2_table, uint64_t *l2_offset, int *l2_index)
{
    static uint64_t dummy_table[1024] = {0};
    *l2_table = dummy_table;
    *l2_offset = 0;
    *l2_index = 0;
    return 1; // simulate success
}

int size_to_clusters(BDRVQcowState *s, int size) {
    return size / s->cluster_size;
}

uint64_t be64_to_cpu(uint64_t val) {
    return val; // assume little endian for simplicity
}

int count_contiguous_clusters(int nb_clusters, int cluster_size,
                              uint64_t *table, int start, int flags)
{
    return nb_clusters; // assume all are contiguous
}

int count_contiguous_free_clusters(int nb_clusters, uint64_t *table)
{
    return nb_clusters; // assume all are free
}

uint64_t qcow2_alloc_clusters(BlockDriverState *bs, int size) {
    static uint64_t dummy_offset = 0x100000;
    return dummy_offset;
}

void QLIST_INSERT_HEAD(QCowL2Meta **head, QCowL2Meta *elem, int field_unused) {
    elem->next_in_flight = *head;
    *head = elem;
}

QCowL2Meta *QLIST_FOREACH(QCowL2Meta *head, void *unused1, void *unused2) {
    return head; // Simplified
}

// Now the actual function
uint64_t qcow2_alloc_cluster_offset(BlockDriverState *bs,
                                    uint64_t offset,
                                    int n_start, int n_end,
                                    int *num, QCowL2Meta *m)
{
    BDRVQcowState *s = bs->opaque;
    int l2_index, ret;
    uint64_t l2_offset, *l2_table, cluster_offset;
    int nb_clusters, i = 0;
    QCowL2Meta *old_alloc;

    ret = get_cluster_table(bs, offset, &l2_table, &l2_offset, &l2_index);
    if (ret == 0)
        return 0;

    nb_clusters = size_to_clusters(s, n_end << 9);
    nb_clusters = MIN(nb_clusters, s->l2_size - l2_index);

    cluster_offset = be64_to_cpu(l2_table[l2_index]);

    if (cluster_offset & QCOW_OFLAG_COPIED) {
        nb_clusters = count_contiguous_clusters(nb_clusters, s->cluster_size,
                &l2_table[l2_index], 0, 0);
        cluster_offset &= ~QCOW_OFLAG_COPIED;
        m->nb_clusters = 0;
        goto out;
    }

    if (cluster_offset & QCOW_OFLAG_COMPRESSED)
        nb_clusters = 1;

    while (i < nb_clusters) {
        i += count_contiguous_clusters(nb_clusters - i, s->cluster_size,
                &l2_table[l2_index], i, 0);

        if(be64_to_cpu(l2_table[l2_index + i]))
            break;

        i += count_contiguous_free_clusters(nb_clusters - i,
                &l2_table[l2_index + i]);

        cluster_offset = be64_to_cpu(l2_table[l2_index + i]);

        if ((cluster_offset & QCOW_OFLAG_COPIED) ||
            (cluster_offset & QCOW_OFLAG_COMPRESSED))
            break;
    }

    nb_clusters = i;

    for (old_alloc = s->cluster_allocs; old_alloc; old_alloc = old_alloc->next_in_flight) {
        uint64_t end_offset = offset + nb_clusters * s->cluster_size;
        uint64_t old_offset = old_alloc->offset;
        uint64_t old_end_offset = old_alloc->offset +
            old_alloc->nb_clusters * s->cluster_size;

        if (end_offset < old_offset || offset > old_end_offset) {
            continue;
        } else {
            if (offset < old_offset) {
                nb_clusters = (old_offset - offset) >> s->cluster_bits;
            } else {
                nb_clusters = 0;
            }

            if (nb_clusters == 0) {
                m->depends_on = old_alloc;
                m->nb_clusters = 0;
                *num = 0;
                return 0;
            }
        }
    }

    if (!nb_clusters) {
        abort();
    }

    QLIST_INSERT_HEAD(&s->cluster_allocs, m, 0);

    cluster_offset = qcow2_alloc_clusters(bs, nb_clusters * s->cluster_size);

    m->offset = offset;
    m->n_start = n_start;
    m->nb_clusters = nb_clusters;

out:
    m->nb_available = MIN(nb_clusters << (s->cluster_bits - 9), n_end);
    *num = m->nb_available - n_start;

    return cluster_offset;
}

// Dummy test
int main() {
    BDRVQcowState state = {.cluster_size = 512, .cluster_bits = 9, .l2_size = 1024, .cluster_allocs = NULL};
    BlockDriverState bs = {.opaque = &state};
    QCowL2Meta meta = {0};
    int num;

    uint64_t result = qcow2_alloc_cluster_offset(&bs, 0x1000, 0, 16, &num, &meta);

    printf("Cluster offset: 0x%lx, num: %d\n", result, num);
    return 0;
}

