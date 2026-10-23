#ifndef PB_RESIDUAL_H
#define PB_RESIDUAL_H

#include "pb_block_lu.h"

typedef struct {
    double relative_frobenius;
    double residual_frobenius;
    double input_frobenius;
    double max_abs_residual;
    pb_u32 max_row;
    pb_u32 max_col;
    pb_u32 touched_entries;
} pb_residual_report_t;

/* Scratch upper bound for pb_block_lu_check_residual(). */
size_t pb_block_lu_residual_workspace_bytes(pb_u32 n);

/*
 * Computes ||A-LU||_F / ||A||_F from the sparse block factors.
 *
 * The product is accumulated one column at a time using a sparse accumulator;
 * it does not form a dense N-by-N matrix. Temporary storage is taken from the
 * caller arena and its used pointer is restored before return.
 */
int pb_block_lu_check_residual(const pb_block_lu_t *lu,
                               const pb_matrix_t *reordered_a,
                               pb_arena_t *workspace,
                               pb_residual_report_t *report);

#endif
