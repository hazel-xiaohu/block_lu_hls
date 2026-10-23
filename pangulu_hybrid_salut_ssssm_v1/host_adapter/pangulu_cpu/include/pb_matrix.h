#ifndef PB_MATRIX_H
#define PB_MATRIX_H

#include "pb_types.h"

int pb_matrix_validate(const pb_matrix_t *m);
int pb_matrix_alloc(pb_arena_t *arena, pb_matrix_t *m,
                    pb_layout_t layout, pb_u32 rows, pb_u32 cols,
                    pb_u32 nnz);
int pb_matrix_zero_values(pb_matrix_t *m);
int pb_matrix_add_pangulu_diagonal_csc(pb_arena_t *arena,
                                       const pb_matrix_t *source,
                                       pb_matrix_t *normalized);
int pb_matrix_csc_to_csr(pb_arena_t *arena, const pb_matrix_t *csc,
                         pb_matrix_t *csr);
int pb_matrix_csr_to_csc(pb_arena_t *arena, const pb_matrix_t *csr,
                         pb_matrix_t *csc);
/* Structural A + A^T union used by PanguLU's symmetric symbolic branch. */
int pb_matrix_structural_symmetrize_csc(pb_arena_t *arena,
                                        const pb_matrix_t *source,
                                        pb_matrix_t *symmetric);
int pb_matrix_find_csc(const pb_matrix_t *m, pb_u32 row, pb_u32 col,
                       pb_u32 *position);
int pb_matrix_find_csr(const pb_matrix_t *m, pb_u32 row, pb_u32 col,
                       pb_u32 *position);

#endif
