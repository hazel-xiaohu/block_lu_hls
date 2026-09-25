#include "sparse_lu_ops.h"

static getrf_val_t lu_abs(getrf_val_t value) {
#pragma HLS INLINE
	return value < 0.0f ? -value : value;
}

getrf_id_t getrf_find_in_row(const getrf_id_t* row_ptr,
		const getrf_id_t* col_idx, getrf_id_t row, getrf_id_t target) {
#pragma HLS INLINE
	for (getrf_id_t pos = row_ptr[row]; pos < row_ptr[row + 1]; ++pos) {
		const getrf_id_t col = col_idx[pos];
		if (col == target) return pos;
		if (col > target) break;
	}
	return GETRF_INVALID_ID;
}

getrf_id_t gessm_fixed_csr(const getrf_id_t* L_rcsr,
		const getrf_id_t* L_cid, const getrf_val_t* L_val,
		const getrf_id_t* B_rcsr, const getrf_id_t* B_cid,
		getrf_val_t* B_val, getrf_id_t panel_begin,
		getrf_id_t panel_end, getrf_id_t min_b_col,
		getrf_id_t* failed_row) {
#pragma HLS INLINE
	for (getrf_id_t row = panel_begin; row < panel_end; ++row) {
		for (getrf_id_t lp = L_rcsr[row]; lp < L_rcsr[row + 1]; ++lp) {
			const getrf_id_t source_row = L_cid[lp];
			if (source_row < panel_begin) continue;
			if (source_row >= row) break;
			const getrf_val_t multiplier = L_val[lp];
			for (getrf_id_t bp = B_rcsr[source_row];
					bp < B_rcsr[source_row + 1]; ++bp) {
				const getrf_id_t col = B_cid[bp];
				if (col < min_b_col) continue;
				const getrf_id_t target = getrf_find_in_row(
						B_rcsr, B_cid, row, col);
				if (target == GETRF_INVALID_ID) {
					*failed_row = row;
					return GETRF_PATTERN_MISMATCH;
				}
				B_val[target] -= multiplier * B_val[bp];
			}
		}
	}
	return GETRF_SUCCESS;
}

getrf_id_t tstrf_fixed_csr(const getrf_id_t* U_rcsr,
		const getrf_id_t* U_cid, const getrf_val_t* U_val,
		const getrf_id_t* B_rcsr, const getrf_id_t* B_cid,
		getrf_val_t* B_val, getrf_id_t panel_begin,
		getrf_id_t panel_end, getrf_id_t first_b_row,
		getrf_id_t last_b_row, getrf_val_t pivot_eps,
		getrf_id_t* failed_row) {
#pragma HLS INLINE
	for (getrf_id_t row = first_b_row; row < last_b_row; ++row) {
		for (getrf_id_t bp = B_rcsr[row]; bp < B_rcsr[row + 1]; ++bp) {
			const getrf_id_t pivot = B_cid[bp];
			if (pivot < panel_begin) continue;
			if (pivot >= panel_end) break;
			const getrf_id_t diagonal = getrf_find_in_row(
					U_rcsr, U_cid, pivot, pivot);
			if (diagonal == GETRF_INVALID_ID ||
					lu_abs(U_val[diagonal]) <= pivot_eps) {
				*failed_row = pivot;
				return GETRF_ZERO_PIVOT;
			}
			const getrf_val_t multiplier = B_val[bp] / U_val[diagonal];
			B_val[bp] = multiplier;
			for (getrf_id_t up = diagonal + 1; up < U_rcsr[pivot + 1]; ++up) {
				const getrf_id_t col = U_cid[up];
				if (col >= panel_end) break;
				const getrf_id_t target = getrf_find_in_row(
						B_rcsr, B_cid, row, col);
				if (target == GETRF_INVALID_ID) {
					*failed_row = row;
					return GETRF_PATTERN_MISMATCH;
				}
				B_val[target] -= multiplier * U_val[up];
			}
		}
	}
	return GETRF_SUCCESS;
}

extern "C" void sparse_gessm(
		const getrf_id_t* L_rcsr, const getrf_id_t* L_cid,
		const getrf_val_t* L_val, const getrf_id_t* B_rcsr,
		const getrf_id_t* B_cid, getrf_val_t* B_val,
		getrf_id_t n, getrf_id_t nrhs, getrf_id_t l_nnz,
		getrf_id_t b_nnz, getrf_id_t* status, getrf_id_t* failed_row) {
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_N+1 port=L_rcsr offset=slave bundle=l_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_L_NNZ port=L_cid offset=slave bundle=l_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_L_NNZ port=L_val offset=slave bundle=l_val
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_N+1 port=B_rcsr offset=slave bundle=b_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_BLOCK_NNZ port=B_cid offset=slave bundle=b_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_BLOCK_NNZ port=B_val offset=slave bundle=b_val
#pragma HLS INTERFACE s_axilite port=return bundle=control
	*status = GETRF_SUCCESS;
	*failed_row = GETRF_INVALID_ID;
	if (n == 0 || n > GETRF_MAX_N || nrhs == 0 ||
			l_nnz > GETRF_MAX_L_NNZ || b_nnz > GETRF_MAX_BLOCK_NNZ) {
		*status = GETRF_INVALID_SIZE;
		*failed_row = 0;
		return;
	}
	if (L_rcsr[0] != 0 || B_rcsr[0] != 0 ||
			L_rcsr[n] != l_nnz || B_rcsr[n] != b_nnz) {
		*status = GETRF_INVALID_CSR;
		*failed_row = 0;
		return;
	}
	for (getrf_id_t row = 0; row < n; ++row) {
		if (L_rcsr[row] > L_rcsr[row + 1] || B_rcsr[row] > B_rcsr[row + 1] ||
				getrf_find_in_row(L_rcsr, L_cid, row, row) == GETRF_INVALID_ID) {
			*status = GETRF_INVALID_CSR;
			*failed_row = row;
			return;
		}
		for (getrf_id_t bp = B_rcsr[row]; bp < B_rcsr[row + 1]; ++bp) {
			if (B_cid[bp] >= nrhs) {
				*status = GETRF_INVALID_CSR;
				*failed_row = row;
				return;
			}
		}
	}
	*status = gessm_fixed_csr(L_rcsr, L_cid, L_val, B_rcsr, B_cid,
			B_val, 0, n, 0, failed_row);
}

extern "C" void sparse_tstrf(
		const getrf_id_t* U_rcsr, const getrf_id_t* U_cid,
		const getrf_val_t* U_val, const getrf_id_t* B_rcsr,
		const getrf_id_t* B_cid, getrf_val_t* B_val,
		getrf_id_t n, getrf_id_t block_rows, getrf_id_t u_nnz,
		getrf_id_t b_nnz, getrf_val_t pivot_eps,
		getrf_id_t* status, getrf_id_t* failed_row) {
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_N+1 port=U_rcsr offset=slave bundle=u_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_U_NNZ port=U_cid offset=slave bundle=u_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_U_NNZ port=U_val offset=slave bundle=u_val
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_BLOCK_ROWS+1 port=B_rcsr offset=slave bundle=b_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_BLOCK_NNZ port=B_cid offset=slave bundle=b_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_BLOCK_NNZ port=B_val offset=slave bundle=b_val
#pragma HLS INTERFACE s_axilite port=return bundle=control
	*status = GETRF_SUCCESS;
	*failed_row = GETRF_INVALID_ID;
	if (n == 0 || n > GETRF_MAX_N || block_rows > GETRF_MAX_BLOCK_ROWS ||
			u_nnz > GETRF_MAX_U_NNZ || b_nnz > GETRF_MAX_BLOCK_NNZ) {
		*status = GETRF_INVALID_SIZE;
		*failed_row = 0;
		return;
	}
	if (U_rcsr[0] != 0 || B_rcsr[0] != 0 ||
			U_rcsr[n] != u_nnz || B_rcsr[block_rows] != b_nnz) {
		*status = GETRF_INVALID_CSR;
		*failed_row = 0;
		return;
	}
	for (getrf_id_t row = 0; row < n; ++row) {
		if (U_rcsr[row] > U_rcsr[row + 1] ||
				getrf_find_in_row(U_rcsr, U_cid, row, row) == GETRF_INVALID_ID) {
			*status = GETRF_INVALID_CSR;
			*failed_row = row;
			return;
		}
	}
	for (getrf_id_t row = 0; row < block_rows; ++row) {
		if (B_rcsr[row] > B_rcsr[row + 1]) {
			*status = GETRF_INVALID_CSR;
			*failed_row = row;
			return;
		}
	}
	*status = tstrf_fixed_csr(U_rcsr, U_cid, U_val, B_rcsr, B_cid,
			B_val, 0, n, 0, block_rows, pivot_eps, failed_row);
}
