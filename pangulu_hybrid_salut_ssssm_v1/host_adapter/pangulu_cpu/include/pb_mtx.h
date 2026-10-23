#ifndef PB_MTX_H
#define PB_MTX_H

#include "pb_matrix.h"

int pb_matrix_from_coo_csc(pb_arena_t *arena, pb_matrix_t *m,
                           pb_u32 rows, pb_u32 cols, pb_u32 nnz,
                           const pb_u32 *coo_row, const pb_u32 *coo_col,
                           const pb_f32 *coo_value);

#ifndef PB_NO_STDIO
int pb_matrix_read_matrix_market(pb_arena_t *arena, const char *path,
                                 pb_matrix_t *m);
#endif

#endif
