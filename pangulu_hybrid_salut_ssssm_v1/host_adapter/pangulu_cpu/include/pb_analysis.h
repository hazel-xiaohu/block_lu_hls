#ifndef PB_ANALYSIS_H
#define PB_ANALYSIS_H

#include "pb_reorder.h"
#include "pb_symbolic.h"

typedef struct {
    pb_reorder_t order;
    pb_matrix_t normalized_a;
    pb_matrix_t reordered_a;
    pb_symbolic_t symbolic;
} pb_analysis_t;

/*
 * Enforces the PanguLU front-end order:
 * input CSC -> PanguLU diagonal normalization -> symmetric reorder -> exact prune symbolic LU.
 * Blocking must consume pb_analysis_t rather than the raw input matrix.
 */
int pb_analysis_run(pb_arena_t *arena, const pb_matrix_t *input_a,
                    const pb_reorder_t *order,
                    pb_u32 max_lower_nnz, pb_u32 max_upper_nnz,
                    pb_analysis_t *analysis);

int pb_analysis_run_identity(pb_arena_t *arena, const pb_matrix_t *input_a,
                             pb_u32 max_lower_nnz, pb_u32 max_upper_nnz,
                             pb_analysis_t *analysis);

/* SALUT-compatible logical operation count.  The symbolic pattern is used
 * before blocking: every multiply/subtract pair counts as two FLOPs and each
 * lower-factor division counts as one FLOP. */
pb_u64 pb_analysis_salut_logical_flops(pb_arena_t *arena,
                                       const pb_analysis_t *analysis);

#endif
