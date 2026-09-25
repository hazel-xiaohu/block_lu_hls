#include "sparse_getrf.h"

static getrf_val_t getrf_abs(getrf_val_t value) {
#pragma HLS INLINE
	return value < 0.0f ? -value : value;
}

static getrf_id_t find_in_row(const getrf_id_t* row_ptr,
		const getrf_id_t* col_idx, getrf_id_t row, getrf_id_t target) {
#pragma HLS INLINE
	const getrf_id_t begin = row_ptr[row];
	const getrf_id_t end = row_ptr[row + 1];
	for (getrf_id_t pos = begin; pos < end; ++pos) {
#pragma HLS PIPELINE II=1
		const getrf_id_t col = col_idx[pos];
		if (col == target)
			return pos;
		if (col > target)
			break;
	}
	return GETRF_INVALID_ID;
}

static void set_failure(getrf_id_t code, getrf_id_t row,
		getrf_id_t* status, getrf_id_t* failed_row) {
#pragma HLS INLINE
	*status = code;
	*failed_row = row;
}

extern "C" void sparse_getrf(
		const getrf_id_t* A_rcsr,
		const getrf_id_t* A_cid,
		const getrf_val_t* A_val,
		const getrf_id_t* L_rcsr,
		const getrf_id_t* L_cid,
		getrf_val_t* L_val,
		const getrf_id_t* U_rcsr,
		const getrf_id_t* U_cid,
		getrf_val_t* U_val,
		getrf_id_t n,
		getrf_id_t a_nnz,
		getrf_id_t l_nnz,
		getrf_id_t u_nnz,
		getrf_val_t pivot_eps,
		getrf_id_t* status,
		getrf_id_t* failed_row) {

#pragma HLS INTERFACE m_axi depth=GETRF_MAX_N+1 port=A_rcsr offset=slave bundle=a_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_A_NNZ port=A_cid offset=slave bundle=a_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_A_NNZ port=A_val offset=slave bundle=a_val
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_N+1 port=L_rcsr offset=slave bundle=l_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_L_NNZ port=L_cid offset=slave bundle=l_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_L_NNZ port=L_val offset=slave bundle=l_val
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_N+1 port=U_rcsr offset=slave bundle=u_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_U_NNZ port=U_cid offset=slave bundle=u_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_U_NNZ port=U_val offset=slave bundle=u_val

#pragma HLS INTERFACE s_axilite port=n bundle=control
#pragma HLS INTERFACE s_axilite port=a_nnz bundle=control
#pragma HLS INTERFACE s_axilite port=l_nnz bundle=control
#pragma HLS INTERFACE s_axilite port=u_nnz bundle=control
#pragma HLS INTERFACE s_axilite port=pivot_eps bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=failed_row bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

	*status = GETRF_SUCCESS;
	*failed_row = GETRF_INVALID_ID;

	if (n == 0 || n > GETRF_MAX_N || a_nnz > GETRF_MAX_A_NNZ ||
			l_nnz > GETRF_MAX_L_NNZ || u_nnz > GETRF_MAX_U_NNZ) {
		set_failure(GETRF_INVALID_SIZE, 0, status, failed_row);
		return;
	}
	if (A_rcsr[0] != 0 || L_rcsr[0] != 0 || U_rcsr[0] != 0 ||
			A_rcsr[n] != a_nnz || L_rcsr[n] != l_nnz || U_rcsr[n] != u_nnz) {
		set_failure(GETRF_INVALID_CSR, 0, status, failed_row);
		return;
	}

	// L/U values are the numeric workspace. Symbolic fill positions begin at
	// zero and A values are scattered into fixed lower/upper destinations.
	for (getrf_id_t pos = 0; pos < l_nnz; ++pos) {
#pragma HLS PIPELINE II=1
		L_val[pos] = 0.0f;
	}
	for (getrf_id_t pos = 0; pos < u_nnz; ++pos) {
#pragma HLS PIPELINE II=1
		U_val[pos] = 0.0f;
	}

	for (getrf_id_t row = 0; row < n; ++row) {
		if (A_rcsr[row] > A_rcsr[row + 1] ||
				L_rcsr[row] > L_rcsr[row + 1] ||
				U_rcsr[row] > U_rcsr[row + 1]) {
			set_failure(GETRF_INVALID_CSR, row, status, failed_row);
			return;
		}

		bool has_l_diag = false;
		getrf_id_t previous = GETRF_INVALID_ID;
		for (getrf_id_t pos = L_rcsr[row]; pos < L_rcsr[row + 1]; ++pos) {
#pragma HLS PIPELINE II=1
			const getrf_id_t col = L_cid[pos];
			if (col >= n || col > row ||
					(previous != GETRF_INVALID_ID && col <= previous)) {
				set_failure(GETRF_INVALID_CSR, row, status, failed_row);
				return;
			}
			if (col == row) {
				has_l_diag = true;
				L_val[pos] = 1.0f;
			}
			previous = col;
		}

		bool has_u_diag = false;
		previous = GETRF_INVALID_ID;
		for (getrf_id_t pos = U_rcsr[row]; pos < U_rcsr[row + 1]; ++pos) {
#pragma HLS PIPELINE II=1
			const getrf_id_t col = U_cid[pos];
			if (col >= n || col < row ||
					(previous != GETRF_INVALID_ID && col <= previous)) {
				set_failure(GETRF_INVALID_CSR, row, status, failed_row);
				return;
			}
			if (col == row)
				has_u_diag = true;
			previous = col;
		}
		if (!has_l_diag || !has_u_diag) {
			set_failure(GETRF_PATTERN_MISMATCH, row, status, failed_row);
			return;
		}

		previous = GETRF_INVALID_ID;
		for (getrf_id_t pos = A_rcsr[row]; pos < A_rcsr[row + 1]; ++pos) {
#pragma HLS PIPELINE II=1
			const getrf_id_t col = A_cid[pos];
			if (col >= n || (previous != GETRF_INVALID_ID && col <= previous)) {
				set_failure(GETRF_INVALID_CSR, row, status, failed_row);
				return;
			}
			const getrf_id_t target = col < row
					? find_in_row(L_rcsr, L_cid, row, col)
					: find_in_row(U_rcsr, U_cid, row, col);
			if (target == GETRF_INVALID_ID) {
				set_failure(GETRF_PATTERN_MISMATCH, row, status, failed_row);
				return;
			}
			if (col < row)
				L_val[target] = A_val[pos];
			else
				U_val[target] = A_val[pos];
			previous = col;
		}
	}

	// Rows inside each fixed-width panel remain sequential because row i
	// consumes finalized U rows 0..i-1. This sparse row update is the first
	// correctness baseline; its update loop can later share the SpMM PE/cache.
	for (getrf_id_t panel_begin = 0; panel_begin < n;
			panel_begin += GETRF_PANEL_WIDTH) {
		const getrf_id_t panel_end = panel_begin + GETRF_PANEL_WIDTH < n
				? panel_begin + GETRF_PANEL_WIDTH : n;
		for (getrf_id_t row = panel_begin; row < panel_end; ++row) {
			const getrf_id_t l_begin = L_rcsr[row];
			const getrf_id_t l_end = L_rcsr[row + 1];
			const getrf_id_t u_begin = U_rcsr[row];
			const getrf_id_t u_end = U_rcsr[row + 1];

			for (getrf_id_t l_pos = l_begin; l_pos < l_end; ++l_pos) {
				const getrf_id_t pivot_row = L_cid[l_pos];
				if (pivot_row >= row)
					break;

				const getrf_id_t pivot_pos = find_in_row(
						U_rcsr, U_cid, pivot_row, pivot_row);
				if (pivot_pos == GETRF_INVALID_ID ||
						getrf_abs(U_val[pivot_pos]) <= pivot_eps) {
					set_failure(GETRF_ZERO_PIVOT, pivot_row, status, failed_row);
					return;
				}

				const getrf_val_t multiplier = L_val[l_pos] / U_val[pivot_pos];
				L_val[l_pos] = multiplier;

				getrf_id_t l_target = l_begin;
				getrf_id_t u_target = u_begin;
				for (getrf_id_t u_pos = U_rcsr[pivot_row];
						u_pos < U_rcsr[pivot_row + 1]; ++u_pos) {
					const getrf_id_t col = U_cid[u_pos];
					if (col <= pivot_row)
						continue;

					if (col < row) {
						while (l_target < l_end && L_cid[l_target] < col)
							++l_target;
						if (l_target == l_end || L_cid[l_target] != col) {
							set_failure(GETRF_PATTERN_MISMATCH, row, status, failed_row);
							return;
						}
						L_val[l_target] -= multiplier * U_val[u_pos];
					} else {
						while (u_target < u_end && U_cid[u_target] < col)
							++u_target;
						if (u_target == u_end || U_cid[u_target] != col) {
							set_failure(GETRF_PATTERN_MISMATCH, row, status, failed_row);
							return;
						}
						U_val[u_target] -= multiplier * U_val[u_pos];
					}
				}
			}

			const getrf_id_t diagonal = find_in_row(U_rcsr, U_cid, row, row);
			if (diagonal == GETRF_INVALID_ID ||
					getrf_abs(U_val[diagonal]) <= pivot_eps) {
				set_failure(GETRF_ZERO_PIVOT, row, status, failed_row);
				return;
			}
		}
	}
}
