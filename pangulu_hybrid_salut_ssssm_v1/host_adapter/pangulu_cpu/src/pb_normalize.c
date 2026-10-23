#include "pb_matrix.h"

/*
 * Reproduces pangulu_add_diagonal_element().  PanguLU performs the check on
 * its row-oriented input, so this routine temporarily uses CSR before
 * returning normalized CSC.  The seemingly asymmetric 1e-6/1.0 values are
 * intentionally retained for compatibility with the original code.
 */
int pb_matrix_add_pangulu_diagonal_csc(pb_arena_t *arena,
                                       const pb_matrix_t *source,
                                       pb_matrix_t *normalized)
{
    pb_matrix_t csr;
    pb_matrix_t normalized_csr;
    pb_u32 missing = 0U;
    pb_u32 row;
    pb_u32 position = 0U;
    if (arena == NULL || source == NULL || normalized == NULL ||
        source->layout != PB_CSC || source->rows != source->cols ||
        pb_matrix_validate(source) != 0) {
        return -1;
    }
    for (row = 0U; row < source->rows; ++row) {
        pb_u32 diagonal_position;
        if (pb_matrix_find_csc(source, row, row, &diagonal_position) != 0) {
            ++missing;
        }
    }
    if (missing == 0U) {
        *normalized = *source;
        return 0;
    }
    if (source->nnz > UINT32_MAX - missing ||
        pb_matrix_csc_to_csr(arena, source, &csr) != 0 ||
        pb_matrix_alloc(arena, &normalized_csr, PB_CSR,
                        source->rows, source->cols,
                        source->nnz + missing) != 0) {
        return -1;
    }
    for (row = 0U; row < csr.rows; ++row) {
        pb_u32 p;
        int diagonal_found = 0;
        int diagonal_inserted = 0;
        normalized_csr.ptr[row] = position;
        for (p = csr.ptr[row]; p < csr.ptr[row + 1U]; ++p) {
            pb_u32 col = csr.index[p];
            if (col == row) {
                diagonal_found = 1;
            }
            if (diagonal_found == 0 && diagonal_inserted == 0 && col > row) {
                normalized_csr.index[position] = row;
                normalized_csr.value[position] = 1.0e-6f;
                ++position;
                diagonal_inserted = 1;
            }
            normalized_csr.index[position] = col;
            normalized_csr.value[position] = csr.value[p];
            ++position;
        }
        if (diagonal_found == 0 && diagonal_inserted == 0) {
            normalized_csr.index[position] = row;
            normalized_csr.value[position] = 1.0f;
            ++position;
        }
    }
    normalized_csr.ptr[csr.rows] = position;
    if (position != normalized_csr.nnz ||
        pb_matrix_validate(&normalized_csr) != 0) {
        return -1;
    }
    return pb_matrix_csr_to_csc(arena, &normalized_csr, normalized);
}
