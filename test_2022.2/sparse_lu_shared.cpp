#include "sparse_lu_shared.h"
#include "sparse_lu_ops.h"

static getrf_val_t shared_abs(getrf_val_t value) {
#pragma HLS INLINE
	return value < 0.0f ? -value : value;
}

static void shared_fail(getrf_id_t code, getrf_id_t row,
		getrf_id_t* status, getrf_id_t* failed_row) {
#pragma HLS INLINE
	*status = code;
	*failed_row = row;
}

static bool valid_sorted_row(const getrf_id_t* row_ptr,
		const getrf_id_t* col_idx, getrf_id_t row, getrf_id_t col_limit) {
#pragma HLS INLINE
	getrf_id_t previous = GETRF_INVALID_ID;
	for (getrf_id_t pos = row_ptr[row]; pos < row_ptr[row + 1]; ++pos) {
		const getrf_id_t col = col_idx[pos];
		if (col >= col_limit ||
				(previous != GETRF_INVALID_ID && col <= previous)) return false;
		previous = col;
	}
	return true;
}

static getrf_id_t shared_getrf(
		const getrf_id_t* A_rcsr, const getrf_id_t* A_cid,
		const getrf_val_t* A_val, const getrf_id_t* L_rcsr,
		const getrf_id_t* L_cid, getrf_val_t* L_val,
		const getrf_id_t* U_rcsr, const getrf_id_t* U_cid,
		getrf_val_t* U_val, getrf_id_t n, getrf_id_t a_nnz,
		getrf_id_t l_nnz, getrf_id_t u_nnz, getrf_val_t pivot_eps,
		getrf_id_t* failed_row) {
#pragma HLS INLINE
	if (A_rcsr[0] != 0 || L_rcsr[0] != 0 || U_rcsr[0] != 0 ||
			A_rcsr[n] != a_nnz || L_rcsr[n] != l_nnz || U_rcsr[n] != u_nnz)
		return GETRF_INVALID_CSR;
	for (getrf_id_t pos = 0; pos < l_nnz; ++pos) L_val[pos] = 0.0f;
	for (getrf_id_t pos = 0; pos < u_nnz; ++pos) U_val[pos] = 0.0f;

	for (getrf_id_t row = 0; row < n; ++row) {
		if (A_rcsr[row] > A_rcsr[row + 1] || L_rcsr[row] > L_rcsr[row + 1] ||
				U_rcsr[row] > U_rcsr[row + 1] ||
				!valid_sorted_row(A_rcsr, A_cid, row, n) ||
				!valid_sorted_row(L_rcsr, L_cid, row, n) ||
				!valid_sorted_row(U_rcsr, U_cid, row, n)) {
			*failed_row = row;
			return GETRF_INVALID_CSR;
		}
		const getrf_id_t ldiag = getrf_find_in_row(L_rcsr, L_cid, row, row);
		const getrf_id_t udiag = getrf_find_in_row(U_rcsr, U_cid, row, row);
		if (ldiag == GETRF_INVALID_ID || udiag == GETRF_INVALID_ID ||
				L_cid[L_rcsr[row + 1] - 1] != row || U_cid[U_rcsr[row]] != row) {
			*failed_row = row;
			return GETRF_PATTERN_MISMATCH;
		}
		L_val[ldiag] = 1.0f;
		for (getrf_id_t ap = A_rcsr[row]; ap < A_rcsr[row + 1]; ++ap) {
			const getrf_id_t col = A_cid[ap];
			const getrf_id_t target = col < row
					? getrf_find_in_row(L_rcsr, L_cid, row, col)
					: getrf_find_in_row(U_rcsr, U_cid, row, col);
			if (target == GETRF_INVALID_ID) {
				*failed_row = row;
				return GETRF_PATTERN_MISMATCH;
			}
			if (col < row) L_val[target] = A_val[ap];
			else U_val[target] = A_val[ap];
		}
	}

	for (getrf_id_t row = 0; row < n; ++row) {
		for (getrf_id_t lp = L_rcsr[row]; lp < L_rcsr[row + 1]; ++lp) {
			const getrf_id_t pivot = L_cid[lp];
			if (pivot >= row) break;
			const getrf_id_t diagonal = getrf_find_in_row(U_rcsr, U_cid, pivot, pivot);
			if (diagonal == GETRF_INVALID_ID ||
					shared_abs(U_val[diagonal]) <= pivot_eps) {
				*failed_row = pivot;
				return GETRF_ZERO_PIVOT;
			}
			const getrf_val_t multiplier = L_val[lp] / U_val[diagonal];
			L_val[lp] = multiplier;
			for (getrf_id_t up = diagonal + 1; up < U_rcsr[pivot + 1]; ++up) {
				const getrf_id_t col = U_cid[up];
				const getrf_id_t target = col < row
						? getrf_find_in_row(L_rcsr, L_cid, row, col)
						: getrf_find_in_row(U_rcsr, U_cid, row, col);
				if (target == GETRF_INVALID_ID) {
					*failed_row = row;
					return GETRF_PATTERN_MISMATCH;
				}
				if (col < row) L_val[target] -= multiplier * U_val[up];
				else U_val[target] -= multiplier * U_val[up];
			}
		}
		const getrf_id_t diagonal = getrf_find_in_row(U_rcsr, U_cid, row, row);
		if (diagonal == GETRF_INVALID_ID ||
				shared_abs(U_val[diagonal]) <= pivot_eps) {
			*failed_row = row;
			return GETRF_ZERO_PIVOT;
		}
	}
	return GETRF_SUCCESS;
}

extern "C" void sparse_lu_shared(
		getrf_id_t operation,
		const getrf_id_t* A_rcsr, const getrf_id_t* A_cid,
		const getrf_val_t* A_val, const getrf_id_t* L_rcsr,
		const getrf_id_t* L_cid, getrf_val_t* L_val,
		const getrf_id_t* U_rcsr, const getrf_id_t* U_cid,
		getrf_val_t* U_val, const getrf_id_t* X_rcsr,
		const getrf_id_t* X_cid, getrf_val_t* X_val,
		getrf_id_t n, getrf_id_t a_nnz, getrf_id_t l_nnz,
		getrf_id_t u_nnz, getrf_id_t x_rows, getrf_id_t x_cols,
		getrf_id_t x_nnz, getrf_val_t pivot_eps,
		getrf_id_t* status, getrf_id_t* failed_row) {

#pragma HLS INTERFACE m_axi depth=GETRF_MAX_N+1 port=A_rcsr offset=slave bundle=a_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_A_NNZ port=A_cid offset=slave bundle=a_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_A_NNZ port=A_val offset=slave bundle=a_val
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_N+1 port=L_rcsr offset=slave bundle=l_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_L_NNZ port=L_cid offset=slave bundle=l_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_L_NNZ port=L_val offset=slave bundle=l_val
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_N+1 port=U_rcsr offset=slave bundle=u_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_U_NNZ port=U_cid offset=slave bundle=u_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_U_NNZ port=U_val offset=slave bundle=u_val
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_BLOCK_ROWS+1 port=X_rcsr offset=slave bundle=x_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_BLOCK_NNZ port=X_cid offset=slave bundle=x_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_BLOCK_NNZ port=X_val offset=slave bundle=x_val
#pragma HLS INTERFACE s_axilite port=operation bundle=control
#pragma HLS INTERFACE s_axilite port=n bundle=control
#pragma HLS INTERFACE s_axilite port=a_nnz bundle=control
#pragma HLS INTERFACE s_axilite port=l_nnz bundle=control
#pragma HLS INTERFACE s_axilite port=u_nnz bundle=control
#pragma HLS INTERFACE s_axilite port=x_rows bundle=control
#pragma HLS INTERFACE s_axilite port=x_cols bundle=control
#pragma HLS INTERFACE s_axilite port=x_nnz bundle=control
#pragma HLS INTERFACE s_axilite port=pivot_eps bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=failed_row bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

	*status = GETRF_SUCCESS;
	*failed_row = GETRF_INVALID_ID;
	if (n == 0 || n > GETRF_MAX_N || a_nnz > GETRF_MAX_A_NNZ ||
			l_nnz > GETRF_MAX_L_NNZ || u_nnz > GETRF_MAX_U_NNZ ||
			x_rows > GETRF_MAX_BLOCK_ROWS || x_nnz > GETRF_MAX_BLOCK_NNZ) {
		shared_fail(GETRF_INVALID_SIZE, 0, status, failed_row);
		return;
	}

	if (operation == SPARSE_LU_GETRF) {
		*status = shared_getrf(A_rcsr, A_cid, A_val, L_rcsr, L_cid,
				L_val, U_rcsr, U_cid, U_val, n, a_nnz, l_nnz, u_nnz,
				pivot_eps, failed_row);
		return;
	}

	if (X_rcsr[0] != 0 || X_rcsr[x_rows] != x_nnz) {
		shared_fail(GETRF_INVALID_CSR, 0, status, failed_row);
		return;
	}
	for (getrf_id_t row = 0; row < x_rows; ++row) {
		if (X_rcsr[row] > X_rcsr[row + 1] ||
				!valid_sorted_row(X_rcsr, X_cid, row, x_cols)) {
			shared_fail(GETRF_INVALID_CSR, row, status, failed_row);
			return;
		}
	}

	if (operation == SPARSE_LU_GESSM) {
		if (x_rows != n || L_rcsr[0] != 0 || L_rcsr[n] != l_nnz) {
			shared_fail(GETRF_INVALID_CSR, 0, status, failed_row);
			return;
		}
		for (getrf_id_t row = 0; row < n; ++row) {
			if (L_rcsr[row] >= L_rcsr[row + 1] ||
					!valid_sorted_row(L_rcsr, L_cid, row, n) ||
					L_cid[L_rcsr[row + 1] - 1] != row) {
				shared_fail(GETRF_INVALID_CSR, row, status, failed_row);
				return;
			}
		}
		*status = gessm_fixed_csr(L_rcsr, L_cid, L_val,
				X_rcsr, X_cid, X_val, 0, n, 0, failed_row);
		return;
	}

	if (operation == SPARSE_LU_TSTRF) {
		if (x_cols != n || U_rcsr[0] != 0 || U_rcsr[n] != u_nnz) {
			shared_fail(GETRF_INVALID_CSR, 0, status, failed_row);
			return;
		}
		for (getrf_id_t row = 0; row < n; ++row) {
			if (U_rcsr[row] >= U_rcsr[row + 1] ||
					!valid_sorted_row(U_rcsr, U_cid, row, n) ||
					U_cid[U_rcsr[row]] != row) {
				shared_fail(GETRF_INVALID_CSR, row, status, failed_row);
				return;
			}
		}
		*status = tstrf_fixed_csr(U_rcsr, U_cid, U_val,
				X_rcsr, X_cid, X_val, 0, n, 0, x_rows,
				pivot_eps, failed_row);
		return;
	}

	shared_fail(GETRF_INVALID_OPERATION, 0, status, failed_row);
}
