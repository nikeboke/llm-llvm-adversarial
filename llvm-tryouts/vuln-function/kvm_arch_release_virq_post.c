#include <stdio.h>
#include <stdlib.h>

// === BSD-style QLIST support ===
#define QLIST_HEAD(name, type)                          \
    struct name { struct type *lh_first; }

#define QLIST_ENTRY(type)                               \
    struct { struct type *le_next; struct type **le_prev; }

#define QLIST_FOREACH_SAFE(var, head, field, tvar)                      \
    for ((var) = ((head)->lh_first);                                    \
         (var) && ((tvar) = (var)->field.le_next, 1);                   \
         (var) = (tvar))

#define QLIST_REMOVE(elm, field) do {                                   \
    if ((elm)->field.le_next != NULL)                                   \
        (elm)->field.le_next->field.le_prev = (elm)->field.le_prev;     \
    *(elm)->field.le_prev = (elm)->field.le_next;                       \
} while (0)

// === Data structures ===
typedef struct MSIRouteEntry {
    int virq;
    QLIST_ENTRY(MSIRouteEntry) list;
} MSIRouteEntry;

// List head
QLIST_HEAD(msi_route_head, MSIRouteEntry);
struct msi_route_head msi_route_list = { NULL };

// Stub trace function
void trace_kvm_x86_remove_msi_route(int virq) {
    printf("Removed VIRQ %d\n", virq);
}

// The function to compile
int kvm_arch_release_virq_post(int virq) {
    MSIRouteEntry *entry, *next;
    QLIST_FOREACH_SAFE(entry, &msi_route_list, list, next) {
        if (entry->virq == virq) {
            trace_kvm_x86_remove_msi_route(virq);
            QLIST_REMOVE(entry, list);
            break;
        }
    }
    return 0;
}

// Dummy test
int main() {
    // Add one test entry
    MSIRouteEntry *e = malloc(sizeof(MSIRouteEntry));
    e->virq = 5;
    e->list.le_next = NULL;
    e->list.le_prev = &msi_route_list.lh_first;
    msi_route_list.lh_first = e;

    kvm_arch_release_virq_post(5);  // Should remove it
    return 0;
}

