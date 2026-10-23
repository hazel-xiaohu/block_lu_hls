#ifndef PB_REORDER_H
#define PB_REORDER_H

#include "pb_matrix.h"

/* old_to_new[old_index] gives the reordered index. */
typedef struct {
    pb_u32 n;
    pb_u32 *old_to_new;
    pb_u32 *new_to_old;
    int is_identity;
} pb_reorder_t;

int pb_reorder_identity(pb_arena_t *arena, pb_u32 n, pb_reorder_t *order);
#ifndef PB_NO_STDIO
int pb_reorder_read_text(pb_arena_t *arena, const char *path,
                         pb_u32 n, pb_reorder_t *order);
#endif

int pb_reorder_from_old_to_new(pb_arena_t *arena, pb_u32 n,
                               const pb_u32 *old_to_new,
                               pb_reorder_t *order);
int pb_matrix_symmetric_permute_csc(pb_arena_t *arena,
                                    const pb_matrix_t *source,
                                    const pb_reorder_t *order,
                                    pb_matrix_t *reordered);

#endif
