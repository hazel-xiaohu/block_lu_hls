#include "pb_kernels.h"

#include <math.h>
#include <string.h>

#ifdef PB_TRACK_MISSES
#include <stdint.h>
uint64_t pb_kernel_missing_updates[3];
uint64_t pb_kernel_pivot_clamps;
#endif

static int pb_value_pos(const pb_matrix_t *m, pb_u32 row, pb_u32 col,
                        pb_u32 *pos)
{
    return pb_matrix_find_csc(m, row, col, pos);
}

static int pb_value_get(const pb_matrix_t *m, pb_u32 row, pb_u32 col,
                        pb_f32 *value)
{
    pb_u32 p;
    if (pb_value_pos(m, row, col, &p) != 0) {
        return -1;
    }
    *value = m->value[p];
    return 0;
}

static int pb_value_set(pb_matrix_t *m, pb_u32 row, pb_u32 col,
                        pb_f32 value)
{
    pb_u32 p;
    if (pb_value_pos(m, row, col, &p) != 0) {
        return -1;
    }
    m->value[p] = value;
    return 0;
}

static int pb_value_add(pb_matrix_t *m, pb_u32 row, pb_u32 col,
                        pb_f32 delta)
{
    pb_u32 p;
    if (pb_value_pos(m, row, col, &p) != 0) {
        return -1;
    }
    m->value[p] += delta;
    return 0;
}

/* PanguLU's sparse CPU GETRF path, rewritten for FP32/u32 and caller storage. */
int pb_getrf(const pb_matrix_t *a_csc, pb_matrix_t *l_csc,
             pb_matrix_t *u_csc, pb_arena_t *workspace)
{
    pb_u32 n;
    pb_u32 col;
    pb_f32 *work;
    if (a_csc == NULL || l_csc == NULL || u_csc == NULL || workspace == NULL ||
        a_csc->layout != PB_CSC || l_csc->layout != PB_CSC ||
        u_csc->layout != PB_CSC || a_csc->rows != a_csc->cols ||
        pb_matrix_validate(a_csc) != 0 || pb_matrix_validate(l_csc) != 0 ||
        pb_matrix_validate(u_csc) != 0 || l_csc->rows != a_csc->rows ||
        u_csc->rows != a_csc->rows) {
        return -1;
    }
    n = a_csc->rows;
    work = (pb_f32 *)pb_arena_alloc(workspace, (size_t)n * sizeof(pb_f32), 64U);
    if (work == NULL) {
        return -1;
    }
    memset(l_csc->value, 0, (size_t)l_csc->nnz * sizeof(pb_f32));
    memset(u_csc->value, 0, (size_t)u_csc->nnz * sizeof(pb_f32));

    for (col = 0U; col < n; ++col) {
        pb_u32 row;
        pb_f32 pivot;
        if (a_csc->ptr[col] == a_csc->ptr[col + 1U]) {
            /* PanguLU stores every tail block as NB by NB and skips the
             * structurally empty padded columns beyond the true matrix N. */
            continue;
        }
        memset(work, 0, (size_t)n * sizeof(pb_f32));
        for (row = a_csc->ptr[col]; row < a_csc->ptr[col + 1U]; ++row) {
            work[a_csc->index[row]] = a_csc->value[row];
        }

        for (row = 0U; row < col; ++row) {
            pb_f32 ukj = work[row];
            pb_u32 p;
            if (fabsf(ukj) < 1.0e-30f) {
                continue;
            }
            if (pb_value_set(u_csc, row, col, ukj) != 0) {
                return -3;
            }
            for (p = l_csc->ptr[row]; p < l_csc->ptr[row + 1U]; ++p) {
                pb_u32 target = l_csc->index[p];
                if (target > row) {
                    work[target] -= l_csc->value[p] * ukj;
                }
            }
        }

        pivot = work[col];
        if (pivot <= PB_PIVOT_EPSILON && pivot >= -PB_PIVOT_EPSILON) {
            /* PanguLU continues without pivoting by replacing a small
             * diagonal with the positive ERROR value. */
            pivot = PB_PIVOT_EPSILON;
#ifdef PB_TRACK_MISSES
            ++pb_kernel_pivot_clamps;
#endif
        }
        if (pb_value_set(l_csc, col, col, 1.0f) != 0 ||
            pb_value_set(u_csc, col, col, pivot) != 0) {
            return -3;
        }
        for (row = col + 1U; row < n; ++row) {
            pb_f32 value = work[row] / pivot;
            if (fabsf(value) < 1.0e-30f) {
                continue;
            }
            if (pb_value_set(l_csc, row, col, value) != 0) {
                return -3;
            }
        }
    }
    return 0;
}

/* Forward substitution A <- L^{-1} A, matching PanguLU GESSM CPU semantics. */
int pb_gessm(pb_matrix_t *a_csc, const pb_matrix_t *l_csc)
{
    pb_u32 col;
    pb_u32 k;
    if (a_csc == NULL || l_csc == NULL || a_csc->layout != PB_CSC ||
        l_csc->layout != PB_CSC || a_csc->rows != l_csc->rows ||
        pb_matrix_validate(a_csc) != 0 || pb_matrix_validate(l_csc) != 0) {
        return -1;
    }
    for (col = 0U; col < a_csc->cols; ++col) {
        for (k = 0U; k < l_csc->rows; ++k) {
            pb_f32 x;
            pb_f32 diag;
            pb_u32 q;
            if (pb_value_get(a_csc, k, col, &x) != 0 || fabsf(x) < 1.0e-30f) {
                continue;
            }
            if (pb_value_get(l_csc, k, k, &diag) != 0 || fabsf(diag) < 1.0e-30f) {
                return -2;
            }
            x /= diag;
            if (pb_value_set(a_csc, k, col, x) != 0) {
                return -3;
            }
            for (q = l_csc->ptr[k] + 1U; q < l_csc->ptr[k + 1U]; ++q) {
                pb_u32 row = l_csc->index[q];
                if (pb_value_add(a_csc, row, col, -l_csc->value[q] * x) != 0) {
#ifdef PB_TRACK_MISSES
                    ++pb_kernel_missing_updates[0];
#endif
                }
            }
        }
    }
    return 0;
}

/* Right-looking triangular solve A <- A U^{-1}, matching TSTRF's CPU path. */
int pb_tstrf(pb_matrix_t *a_csc, const pb_matrix_t *u_csc,
             pb_arena_t *workspace)
{
    pb_u32 row;
    pb_u32 k;
    (void)workspace;
    if (a_csc == NULL || u_csc == NULL || a_csc->layout != PB_CSC ||
        u_csc->layout != PB_CSC || a_csc->cols != u_csc->cols ||
        pb_matrix_validate(a_csc) != 0 || pb_matrix_validate(u_csc) != 0) {
        return -1;
    }
    for (row = 0U; row < a_csc->rows; ++row) {
        for (k = 0U; k < u_csc->cols; ++k) {
            pb_f32 x;
            pb_f32 diag;
            pb_u32 c;
            if (pb_value_get(a_csc, row, k, &x) != 0 || fabsf(x) < 1.0e-30f) {
                continue;
            }
            if (pb_value_get(u_csc, k, k, &diag) != 0) {
                return -2;
            }
            if (diag <= PB_PIVOT_EPSILON && diag >= -PB_PIVOT_EPSILON) {
                diag = PB_PIVOT_EPSILON;
#ifdef PB_TRACK_MISSES
                ++pb_kernel_pivot_clamps;
#endif
            }
            x /= diag;
            if (pb_value_set(a_csc, row, k, x) != 0) {
                return -3;
            }
            for (c = k + 1U; c < u_csc->cols; ++c) {
                pb_f32 ukc;
                if (pb_value_get(u_csc, k, c, &ukc) == 0) {
                    if (pb_value_add(a_csc, row, c, -x * ukc) != 0) {
#ifdef PB_TRACK_MISSES
                        ++pb_kernel_missing_updates[1];
#endif
                    }
                }
            }
        }
    }
    return 0;
}

/* Sparse CSC*CSC update used by PanguLU's CPU SSSSM implementation. */
int pb_ssssm(pb_matrix_t *a_csc, const pb_matrix_t *l_csc,
             const pb_matrix_t *u_csc)
{
    pb_u32 col;
    if (a_csc == NULL || l_csc == NULL || u_csc == NULL ||
        a_csc->layout != PB_CSC || l_csc->layout != PB_CSC ||
        u_csc->layout != PB_CSC || l_csc->cols != u_csc->rows ||
        a_csc->rows != l_csc->rows || a_csc->cols != u_csc->cols ||
        pb_matrix_validate(a_csc) != 0 || pb_matrix_validate(l_csc) != 0 ||
        pb_matrix_validate(u_csc) != 0) {
        return -1;
    }
    for (col = 0U; col < u_csc->cols; ++col) {
        pb_u32 up;
        for (up = u_csc->ptr[col]; up < u_csc->ptr[col + 1U]; ++up) {
            pb_u32 pivot_row = u_csc->index[up];
            pb_f32 u_value = u_csc->value[up];
            pb_u32 lp;
            if (pivot_row >= l_csc->cols) {
                return -2;
            }
            for (lp = l_csc->ptr[pivot_row]; lp < l_csc->ptr[pivot_row + 1U]; ++lp) {
                pb_u32 row = l_csc->index[lp];
                if (pb_value_add(a_csc, row, col,
                                 -l_csc->value[lp] * u_value) != 0) {
#ifdef PB_TRACK_MISSES
                    ++pb_kernel_missing_updates[2];
#endif
                }
            }
        }
    }
    return 0;
}
