#ifndef SPARSE_LU_OPS_H
#define SPARSE_LU_OPS_H

#include "sparse_getrf.h"

getrf_id_t getrf_find_in_row(const getrf_id_t* row_ptr,
		const getrf_id_t* col_idx, getrf_id_t row, getrf_id_t target);

// Operate on rows [panel_begin,panel_end) of L and B. Only B columns at or
// above min_b_col participate, allowing the same primitive to update U12.
getrf_id_t gessm_fixed_csr(const getrf_id_t* L_rcsr,
		const getrf_id_t* L_cid, const getrf_val_t* L_val,
		const getrf_id_t* B_rcsr, const getrf_id_t* B_cid,
		getrf_val_t* B_val, getrf_id_t panel_begin,
		getrf_id_t panel_end, getrf_id_t min_b_col,
		getrf_id_t* failed_row);

// Solve selected rows of B against U(panel,panel) on the right. B column
// indices use the same global numbering as U.
getrf_id_t tstrf_fixed_csr(const getrf_id_t* U_rcsr,
		const getrf_id_t* U_cid, const getrf_val_t* U_val,
		const getrf_id_t* B_rcsr, const getrf_id_t* B_cid,
		getrf_val_t* B_val, getrf_id_t panel_begin,
		getrf_id_t panel_end, getrf_id_t first_b_row,
		getrf_id_t last_b_row, getrf_val_t pivot_eps,
		getrf_id_t* failed_row);

#endif
