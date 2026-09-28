#ifndef LARGE_SPARSE_LU_H
#define LARGE_SPARSE_LU_H

#include <stdint.h>

typedef uint32_t lslu_id_t;
typedef float lslu_val_t;

enum lslu_status { LSLU_OK=0, LSLU_BAD_SIZE=1, LSLU_ZERO_PIVOT=2,
                   LSLU_PATTERN_MISS=3 };

extern "C" void large_getrf(
    const lslu_id_t *a_ptr, const lslu_id_t *a_idx, const lslu_val_t *a_val,
    const lslu_id_t *l_ptr, const lslu_id_t *l_idx, lslu_val_t *l_val,
    const lslu_id_t *u_ptr, const lslu_id_t *u_idx, lslu_val_t *u_val,
    const lslu_id_t *u_diag_pos, lslu_val_t *work, lslu_id_t *mark,
    lslu_id_t n, lslu_val_t pivot_eps, lslu_id_t *status,
    uint64_t *muladds, uint64_t *divisions);

extern "C" void large_gessm(
    const lslu_id_t *l_ptr, const lslu_id_t *l_idx, const lslu_val_t *l_val,
    const lslu_id_t *b_ptr, const lslu_id_t *b_idx, const lslu_val_t *b_val,
    const lslu_id_t *x_ptr, const lslu_id_t *x_idx, lslu_val_t *x_val_csc,
    const lslu_id_t *x_csc_to_csr, lslu_val_t *x_val_csr,
    const lslu_id_t *active_cols, lslu_id_t active_count,
    lslu_val_t *work, lslu_id_t n, lslu_id_t *status, uint64_t *muladds);

extern "C" void large_tstrf(
    const lslu_id_t *u_col_ptr, const lslu_id_t *u_row_idx,
    const lslu_val_t *u_csr_val, const lslu_id_t *u_csc_to_csr,
    const lslu_id_t *u_diag_pos,
    const lslu_id_t *b_ptr, const lslu_id_t *b_idx, const lslu_val_t *b_val,
    const lslu_id_t *x_ptr, const lslu_id_t *x_idx, lslu_val_t *x_val,
    const lslu_id_t *active_rows, lslu_id_t active_count,
    lslu_val_t *work, lslu_id_t n, lslu_val_t pivot_eps,
    lslu_id_t *status, uint64_t *muladds, uint64_t *divisions);

extern "C" void large_ssssm(
    const lslu_id_t *a_ptr, const lslu_id_t *a_idx, const lslu_val_t *a_val,
    const lslu_id_t *l_ptr, const lslu_id_t *l_idx, const lslu_val_t *l_val,
    const lslu_id_t *u_ptr, const lslu_id_t *u_idx, const lslu_val_t *u_val,
    const lslu_id_t *s_ptr, const lslu_id_t *s_idx, lslu_val_t *s_val,
    lslu_val_t *work, lslu_id_t *mark, lslu_id_t rows,
    lslu_id_t *status, uint64_t *muladds);

#endif
