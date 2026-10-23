#include "pb_analysis.h"

#include <stddef.h>

pb_u64 pb_analysis_salut_logical_flops(pb_arena_t *arena,
                                       const pb_analysis_t *analysis)
{
    const pb_matrix_t *lower;
    const pb_matrix_t *upper;
    pb_u32 n;
    pb_u32 col;
    pb_u32 *strict_lower_len;
    pb_u64 total = 0ULL;

    if (arena == NULL || analysis == NULL) return 0ULL;
    lower = &analysis->symbolic.lower;
    upper = &analysis->symbolic.upper;
    if (lower->layout != PB_CSC || upper->layout != PB_CSC ||
        lower->rows != lower->cols || upper->rows != upper->cols ||
        lower->rows != upper->rows || lower->ptr == NULL ||
        lower->index == NULL || upper->ptr == NULL ||
        upper->index == NULL) return 0ULL;

    n = lower->cols;
    strict_lower_len = (pb_u32 *)pb_arena_alloc(
        arena, (size_t)n * sizeof(pb_u32), 64U);
    if (strict_lower_len == NULL) return 0ULL;
    for (col = 0U; col < n; ++col) {
        pb_u32 p;
        pb_u32 length = 0U;
        for (p = lower->ptr[col]; p < lower->ptr[col + 1U]; ++p) {
            if (lower->index[p] > col) ++length;
        }
        strict_lower_len[col] = length;
    }
    for (col = 0U; col < n; ++col) {
        pb_u32 p;
        pb_u64 l_len = strict_lower_len[col];
        /* SALUT's one-division-per-strict-L entry term. */
        total += l_len;
        /* Every off-diagonal U(k,col) contributes one multiply and one
         * subtraction for every strict-lower entry in L(:,k). */
        for (p = upper->ptr[col]; p < upper->ptr[col + 1U]; ++p) {
            pb_u32 k = upper->index[p];
            if (k >= col) continue;
            total += 2ULL * (pb_u64)strict_lower_len[k];
        }
    }
    return total;
}

#include <string.h>

int pb_analysis_run(pb_arena_t *arena, const pb_matrix_t *input_a,
                    const pb_reorder_t *order,
                    pb_u32 max_lower_nnz, pb_u32 max_upper_nnz,
                    pb_analysis_t *analysis)
{
    int rc;
    pb_matrix_t symbolic_input;
    if (arena == NULL || input_a == NULL || order == NULL || analysis == NULL ||
        input_a->layout != PB_CSC || input_a->rows != input_a->cols ||
        input_a->rows != order->n) {
        return -1;
    }
    memset(analysis, 0, sizeof(*analysis));
    analysis->order = *order;

    /* Matches pangulu_get_graph_struct(): add every missing diagonal first. */
    rc = pb_matrix_add_pangulu_diagonal_csc(arena, input_a,
                                             &analysis->normalized_a);
    if (rc != 0) {
        return rc;
    }
    rc = pb_matrix_symmetric_permute_csc(arena, &analysis->normalized_a,
                                         order, &analysis->reordered_a);
    if (rc != 0) {
        return rc;
    }
    /* The configured PanguLU build defines `symmetric`: symbolic analysis
     * runs on the structural union A + A^T, while numerical kernels keep
     * using the reordered numerical A above. */
    rc = pb_matrix_structural_symmetrize_csc(arena, &analysis->reordered_a,
                                             &symbolic_input);
    if (rc != 0) {
        return rc;
    }
    return pb_symbolic_lu_symmetric(arena, &symbolic_input,
                                    max_lower_nnz, max_upper_nnz,
                                    &analysis->symbolic);
}

int pb_analysis_run_identity(pb_arena_t *arena, const pb_matrix_t *input_a,
                             pb_u32 max_lower_nnz, pb_u32 max_upper_nnz,
                             pb_analysis_t *analysis)
{
    pb_reorder_t order;
    int rc;
    if (arena == NULL || input_a == NULL || analysis == NULL) {
        return -1;
    }
    rc = pb_reorder_identity(arena, input_a->rows, &order);
    if (rc != 0) {
        return rc;
    }
    return pb_analysis_run(arena, input_a, &order,
                           max_lower_nnz, max_upper_nnz, analysis);
}
