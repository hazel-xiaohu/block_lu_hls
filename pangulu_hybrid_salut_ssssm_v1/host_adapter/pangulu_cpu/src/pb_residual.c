#include "pb_residual.h"

#include <math.h>
#include <string.h>

static const pb_matrix_t *pb_factor_block(const pb_block_lu_t *lu,
                                           int lower,
                                           pb_u32 block_row,
                                           pb_u32 block_col)
{
    pb_u32 id;
    if (lower != 0) {
        if (block_row < block_col) {
            return NULL;
        }
        if (block_row == block_col) {
            return &lu->diag_l[block_row];
        }
    } else {
        if (block_row > block_col) {
            return NULL;
        }
        if (block_row == block_col) {
            return &lu->diag_u[block_row];
        }
    }
    id = lu->block_mapper[block_row * lu->block_count + block_col];
    return id == PB_INVALID_U32 ? NULL : &lu->blocks[id];
}

static void pb_sparse_accumulate(double *accumulator, pb_u32 *mark,
                                 pb_u32 *touched, pb_u32 *touched_count,
                                 pb_u32 token, pb_u32 row, double value)
{
    if (mark[row] != token) {
        mark[row] = token;
        accumulator[row] = value;
        touched[*touched_count] = row;
        ++(*touched_count);
    } else {
        accumulator[row] += value;
    }
}

static int pb_accumulate_l_column(const pb_block_lu_t *lu, pb_u32 k,
                                  double u_value, double *accumulator,
                                  pb_u32 *mark, pb_u32 *touched,
                                  pb_u32 *touched_count, pb_u32 token)
{
    pb_u32 block_col = k / lu->nb;
    pb_u32 local_col = k - block_col * lu->nb;
    pb_u32 block_row;
    for (block_row = block_col; block_row < lu->block_count; ++block_row) {
        const pb_matrix_t *lower = pb_factor_block(lu, 1, block_row,
                                                   block_col);
        pb_u32 p;
        if (lower == NULL || local_col >= lower->cols) {
            continue;
        }
        for (p = lower->ptr[local_col]; p < lower->ptr[local_col + 1U]; ++p) {
            pb_u32 row = block_row * lu->nb + lower->index[p];
            double product;
            if (row >= lu->n) {
                continue;
            }
            product = (double)lower->value[p] * u_value;
            pb_sparse_accumulate(accumulator, mark, touched, touched_count,
                                 token, row, product);
        }
    }
    return 0;
}

size_t pb_block_lu_residual_workspace_bytes(pb_u32 n)
{
    size_t per_entry = sizeof(double) + 2U * sizeof(pb_u32);
    if ((size_t)n > (SIZE_MAX - 192U) / per_entry) {
        return SIZE_MAX;
    }
    return (size_t)n * per_entry + 192U;
}

int pb_block_lu_check_residual(const pb_block_lu_t *lu,
                               const pb_matrix_t *reordered_a,
                               pb_arena_t *workspace,
                               pb_residual_report_t *report)
{
    size_t saved_used;
    double *accumulator;
    pb_u32 *mark;
    pb_u32 *touched;
    double residual_sq = 0.0;
    double input_sq = 0.0;
    pb_u32 total_touched = 0U;
    pb_u32 col;
    pb_u32 p;

    if (lu == NULL || reordered_a == NULL || workspace == NULL ||
        report == NULL || lu->n == 0U || lu->nb == 0U ||
        lu->block_mapper == NULL || lu->blocks == NULL ||
        lu->diag_l == NULL || lu->diag_u == NULL ||
        reordered_a->layout != PB_CSC ||
        reordered_a->rows != lu->n || reordered_a->cols != lu->n ||
        pb_matrix_validate(reordered_a) != 0) {
        return -1;
    }
    saved_used = workspace->used;
    accumulator = (double *)pb_arena_alloc(
        workspace, (size_t)lu->n * sizeof(double), 64U);
    mark = (pb_u32 *)pb_arena_alloc(
        workspace, (size_t)lu->n * sizeof(pb_u32), 64U);
    touched = (pb_u32 *)pb_arena_alloc(
        workspace, (size_t)lu->n * sizeof(pb_u32), 64U);
    if (accumulator == NULL || mark == NULL || touched == NULL) {
        workspace->used = saved_used;
        return -2;
    }
    memset(mark, 0, (size_t)lu->n * sizeof(pb_u32));
    memset(report, 0, sizeof(*report));
    report->max_row = PB_INVALID_U32;
    report->max_col = PB_INVALID_U32;

    for (p = 0U; p < reordered_a->nnz; ++p) {
        double value = (double)reordered_a->value[p];
        input_sq += value * value;
    }

    for (col = 0U; col < lu->n; ++col) {
        pb_u32 token = col + 1U;
        pb_u32 touched_count = 0U;
        pb_u32 block_col = col / lu->nb;
        pb_u32 local_col = col - block_col * lu->nb;
        pb_u32 block_row;

        for (block_row = 0U; block_row <= block_col; ++block_row) {
            const pb_matrix_t *upper = pb_factor_block(lu, 0, block_row,
                                                       block_col);
            if (upper != NULL && local_col < upper->cols) {
                for (p = upper->ptr[local_col];
                     p < upper->ptr[local_col + 1U]; ++p) {
                    pb_u32 k = block_row * lu->nb + upper->index[p];
                    if (k < lu->n &&
                        pb_accumulate_l_column(lu, k,
                                               (double)upper->value[p],
                                               accumulator, mark, touched,
                                               &touched_count, token) != 0) {
                        workspace->used = saved_used;
                        return -3;
                    }
                }
            }
        }

        for (p = reordered_a->ptr[col]; p < reordered_a->ptr[col + 1U]; ++p) {
            pb_u32 row = reordered_a->index[p];
            pb_sparse_accumulate(accumulator, mark, touched, &touched_count,
                                 token, row,
                                 -(double)reordered_a->value[p]);
        }
        for (p = 0U; p < touched_count; ++p) {
            pb_u32 row = touched[p];
            double residual = accumulator[row];
            double absolute = fabs(residual);
            residual_sq += residual * residual;
            if (absolute > report->max_abs_residual) {
                report->max_abs_residual = absolute;
                report->max_row = row;
                report->max_col = col;
            }
        }
        if (UINT32_MAX - total_touched < touched_count) {
            total_touched = UINT32_MAX;
        } else {
            total_touched += touched_count;
        }
    }

    report->residual_frobenius = sqrt(residual_sq);
    report->input_frobenius = sqrt(input_sq);
    if (report->input_frobenius == 0.0) {
        report->relative_frobenius =
            report->residual_frobenius == 0.0 ? 0.0 : INFINITY;
    } else {
        report->relative_frobenius =
            report->residual_frobenius / report->input_frobenius;
    }
    report->touched_entries = total_touched;
    workspace->used = saved_used;
    return 0;
}
