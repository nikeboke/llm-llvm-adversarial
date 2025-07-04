#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <stdint.h>

// === Properly named struct ===
typedef struct V9fsState {
    int dummy;  // Placeholder for real state
} V9fsState;

typedef struct {
    V9fsState *s;
} V9fsPDU;

typedef struct {
    char *data;
} V9fsString;

// === Dummy helpers ===

void v9fs_string_init(V9fsString *str) {
    str->data = (char *)malloc(32);
    strcpy(str->data, "dummy");
}

void v9fs_string_free(V9fsString *str) {
    free(str->data);
}

int name_is_illegal(const char *name) {
    return (strchr(name, '/') != NULL);  // '/' is considered illegal
}

void v9fs_path_write_lock(V9fsState *s) {
    (void)s; // no-op
}

void v9fs_path_unlock(V9fsState *s) {
    (void)s; // no-op
}

ssize_t pdu_unmarshal(V9fsPDU *pdu, size_t offset, const char *fmt,
                      int32_t *olddirfid, V9fsString *old_name,
                      int32_t *newdirfid, V9fsString *new_name) {
    // Dummy parser
    *olddirfid = 1;
    *newdirfid = 2;
    strcpy(old_name->data, "file1");
    strcpy(new_name->data, "file2");
    return 0;
}

int v9fs_complete_renameat(V9fsPDU *pdu, int32_t olddirfid,
                           V9fsString *old_name, int32_t newdirfid,
                           V9fsString *new_name) {
    printf("Renaming '%s' (fid %d) to '%s' (fid %d)\n",
           old_name->data, olddirfid,
           new_name->data, newdirfid);
    return 0;
}

void pdu_complete(V9fsPDU *pdu, ssize_t err) {
    if (err < 0)
        printf("Error: %zd\n", err);
    else
        printf("Rename successful, offset: %zd\n", err);
}

// === Target function ===

static void v9fs_renameat(void *opaque)
{
    ssize_t err = 0;
    size_t offset = 7;
    V9fsPDU *pdu = opaque;
    V9fsState *s = pdu->s;
    int32_t olddirfid, newdirfid;
    V9fsString old_name, new_name;

    v9fs_string_init(&old_name);
    v9fs_string_init(&new_name);

    err = pdu_unmarshal(pdu, offset, "dsds", &olddirfid,
                        &old_name, &newdirfid, &new_name);
    if (err < 0) {
        goto out_err;
    }

    if (name_is_illegal(old_name.data) || name_is_illegal(new_name.data)) {
        err = -ENOENT;
        goto out_err;
    }

    v9fs_path_write_lock(s);
    err = v9fs_complete_renameat(pdu, olddirfid,
                                 &old_name, newdirfid, &new_name);
    v9fs_path_unlock(s);

    if (!err) {
        err = offset;
    }

out_err:
    pdu_complete(pdu, err);
    v9fs_string_free(&old_name);
    v9fs_string_free(&new_name);
}

// === Main ===

int main(void)
{
    V9fsState state;
    V9fsPDU pdu;
    pdu.s = &state;

    v9fs_renameat(&pdu);

    return 0;
}

