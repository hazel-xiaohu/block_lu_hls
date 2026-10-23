#ifndef PB_SYMBOLIC_H
#define PB_SYMBOLIC_H

#include "pb_matrix.h"

/*
 * Builds a conservative sparse LU pattern from a sorted CSC input.
 * The caller supplies the maximum factor NNZ for each factor.  No dynamic
 * allocation is performed; all arrays are carved from the supplied arena.
 */
int pb_symbolic_lu(pb_arena_t *arena, const pb_matrix_t *a_csc,
                   pb_u32 max_lower_nnz, pb_u32 max_upper_nnz,
                   pb_symbolic_t *symbolic);

/* Static-arena translation of PanguLU's `symmetric` branch: the input is
 * already the structural A+A^T union, and the lower pattern is built by
 * fill_in_sym_prune(); U is then formed as its strict transpose plus the
 * diagonal. */
int pb_symbolic_lu_symmetric(pb_arena_t *arena, const pb_matrix_t *a_csc,
                             pb_u32 max_lower_nnz, pb_u32 max_upper_nnz,
                             pb_symbolic_t *symbolic);

#endif
