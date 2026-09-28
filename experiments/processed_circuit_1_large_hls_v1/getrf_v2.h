#ifndef GETRF_V2_H
#define GETRF_V2_H

#include "large_sparse_lu.h"

// v2 keeps the sparse CSR/CSC data interface but moves the per-row workspace
// on chip.  work/mark are deliberately not external arguments: they are not
// part of the numerical result and were the source of the II=18 AXI hazard.
extern "C" void large_getrf_v2(
    const lslu_id_t *a_ptr, const lslu_id_t *a_idx, const lslu_val_t *a_val,
    const lslu_id_t *l_ptr, const lslu_id_t *l_idx, lslu_val_t *l_val,
    const lslu_id_t *u_ptr, const lslu_id_t *u_idx, lslu_val_t *u_val,
    const lslu_id_t *u_diag_pos,
    lslu_id_t n, lslu_val_t pivot_eps, lslu_id_t *status,
    uint64_t *muladds, uint64_t *divisions);

#endif
