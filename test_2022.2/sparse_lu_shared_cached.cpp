#include "sparse_lu_shared.h"

#include <stdint.h>

typedef uint16_t local_pos_t;
static const local_pos_t LOCAL_INVALID_POS = 0xffffu;

static getrf_val_t cached_abs(getrf_val_t value) {
#pragma HLS INLINE
	return value < 0.0f ? -value : value;
}

static void cached_fail(getrf_id_t code, getrf_id_t row,
		getrf_id_t* status, getrf_id_t* failed_row) {
#pragma HLS INLINE
	*status = code;
	*failed_row = row;
}

static void clear_factor_cache(local_pos_t lower_pos[GETRF_MAX_N][GETRF_MAX_N],
		local_pos_t upper_pos[GETRF_MAX_N][GETRF_MAX_N],
		getrf_val_t factor_val[GETRF_MAX_N][GETRF_MAX_N], getrf_id_t n) {
	for (getrf_id_t row = 0; row < n; ++row) {
		for (getrf_id_t base = 0; base < n;
				base += GETRF_COMPUTE_UNITS) {
#pragma HLS PIPELINE II=1
			for (getrf_id_t lane = 0; lane < GETRF_COMPUTE_UNITS; ++lane) {
#pragma HLS UNROLL
				const getrf_id_t col = base + lane;
				if (col < n) {
					lower_pos[row][col] = LOCAL_INVALID_POS;
					upper_pos[row][col] = LOCAL_INVALID_POS;
					factor_val[row][col] = 0.0f;
				}
			}
		}
	}
}

static void clear_block_cache(
		local_pos_t block_pos[GETRF_MAX_BLOCK_ROWS][GETRF_MAX_N],
		getrf_val_t block_val[GETRF_MAX_BLOCK_ROWS][GETRF_MAX_N],
		getrf_id_t rows, getrf_id_t cols) {
	for (getrf_id_t row = 0; row < rows; ++row) {
		for (getrf_id_t base = 0; base < cols;
				base += GETRF_COMPUTE_UNITS) {
#pragma HLS PIPELINE II=1
			for (getrf_id_t lane = 0; lane < GETRF_COMPUTE_UNITS; ++lane) {
#pragma HLS UNROLL
				const getrf_id_t col = base + lane;
				if (col < cols) {
					block_pos[row][col] = LOCAL_INVALID_POS;
					block_val[row][col] = 0.0f;
				}
			}
		}
	}
}

static getrf_id_t cache_triangular_pattern(
		const getrf_id_t* row_ptr, const getrf_id_t* col_idx,
		const getrf_val_t* values, getrf_id_t n, getrf_id_t nnz,
		bool lower, bool load_values,
		local_pos_t position[GETRF_MAX_N][GETRF_MAX_N],
		getrf_val_t factor_val[GETRF_MAX_N][GETRF_MAX_N],
		getrf_id_t* failed_row) {
	if (row_ptr[0] != 0 || row_ptr[n] != nnz) return GETRF_INVALID_CSR;
	for (getrf_id_t row = 0; row < n; ++row) {
		const getrf_id_t begin = row_ptr[row];
		const getrf_id_t end = row_ptr[row + 1];
		if (begin > end || end > nnz) {
			*failed_row = row;
			return GETRF_INVALID_CSR;
		}
		getrf_id_t previous = GETRF_INVALID_ID;
		for (getrf_id_t pos = begin; pos < end; ++pos) {
			const getrf_id_t col = col_idx[pos];
			if (col >= n || (previous != GETRF_INVALID_ID && col <= previous) ||
					(lower ? col > row : col < row)) {
				*failed_row = row;
				return GETRF_INVALID_CSR;
			}
			position[row][col] = (local_pos_t)pos;
			if (load_values) factor_val[row][col] = values[pos];
			previous = col;
		}
		if (position[row][row] == LOCAL_INVALID_POS) {
			*failed_row = row;
			return GETRF_PATTERN_MISMATCH;
		}
	}
	return GETRF_SUCCESS;
}

static getrf_id_t cache_block(const getrf_id_t* row_ptr,
		const getrf_id_t* col_idx, const getrf_val_t* values,
		getrf_id_t rows, getrf_id_t cols, getrf_id_t nnz,
		local_pos_t position[GETRF_MAX_BLOCK_ROWS][GETRF_MAX_N],
		getrf_val_t block_val[GETRF_MAX_BLOCK_ROWS][GETRF_MAX_N],
		getrf_id_t* failed_row) {
	if (row_ptr[0] != 0 || row_ptr[rows] != nnz) return GETRF_INVALID_CSR;
	for (getrf_id_t row = 0; row < rows; ++row) {
		const getrf_id_t begin = row_ptr[row];
		const getrf_id_t end = row_ptr[row + 1];
		if (begin > end || end > nnz) {
			*failed_row = row;
			return GETRF_INVALID_CSR;
		}
		getrf_id_t previous = GETRF_INVALID_ID;
		for (getrf_id_t pos = begin; pos < end; ++pos) {
			const getrf_id_t col = col_idx[pos];
			if (col >= cols || (previous != GETRF_INVALID_ID && col <= previous)) {
				*failed_row = row;
				return GETRF_INVALID_CSR;
			}
			position[row][col] = (local_pos_t)pos;
			block_val[row][col] = values[pos];
			previous = col;
		}
	}
	return GETRF_SUCCESS;
}

static getrf_id_t validate_getrf_closure(getrf_id_t n,
		local_pos_t lower_pos[GETRF_MAX_N][GETRF_MAX_N],
		local_pos_t upper_pos[GETRF_MAX_N][GETRF_MAX_N],
		getrf_id_t* failed_row) {
	for (getrf_id_t row = 0; row < n; ++row) {
		for (getrf_id_t pivot = 0; pivot < row; ++pivot) {
			if (lower_pos[row][pivot] == LOCAL_INVALID_POS) continue;
			for (getrf_id_t col = pivot + 1; col < n; ++col) {
				if (upper_pos[pivot][col] == LOCAL_INVALID_POS) continue;
				const local_pos_t target = col < row
						? lower_pos[row][col] : upper_pos[row][col];
				if (target == LOCAL_INVALID_POS) {
					*failed_row = row;
					return GETRF_PATTERN_MISMATCH;
				}
			}
		}
	}
	return GETRF_SUCCESS;
}

static getrf_id_t validate_gessm_closure(getrf_id_t n, getrf_id_t x_cols,
		local_pos_t lower_pos[GETRF_MAX_N][GETRF_MAX_N],
		local_pos_t block_pos[GETRF_MAX_BLOCK_ROWS][GETRF_MAX_N],
		getrf_id_t* failed_row) {
	for (getrf_id_t row = 0; row < n; ++row) {
		for (getrf_id_t source = 0; source < row; ++source) {
			if (lower_pos[row][source] == LOCAL_INVALID_POS) continue;
			for (getrf_id_t col = 0; col < x_cols; ++col) {
				if (block_pos[source][col] != LOCAL_INVALID_POS &&
						block_pos[row][col] == LOCAL_INVALID_POS) {
					*failed_row = row;
					return GETRF_PATTERN_MISMATCH;
				}
			}
		}
	}
	return GETRF_SUCCESS;
}

static getrf_id_t validate_tstrf_closure(getrf_id_t n, getrf_id_t x_rows,
		local_pos_t upper_pos[GETRF_MAX_N][GETRF_MAX_N],
		local_pos_t block_pos[GETRF_MAX_BLOCK_ROWS][GETRF_MAX_N],
		getrf_id_t* failed_row) {
	for (getrf_id_t row = 0; row < x_rows; ++row) {
		for (getrf_id_t pivot = 0; pivot < n; ++pivot) {
			if (block_pos[row][pivot] == LOCAL_INVALID_POS) continue;
			for (getrf_id_t col = pivot + 1; col < n; ++col) {
				if (upper_pos[pivot][col] != LOCAL_INVALID_POS &&
						block_pos[row][col] == LOCAL_INVALID_POS) {
					*failed_row = row;
					return GETRF_PATTERN_MISMATCH;
				}
			}
		}
	}
	return GETRF_SUCCESS;
}

static getrf_id_t run_cached_getrf(
		const getrf_id_t* A_rcsr, const getrf_id_t* A_cid,
		const getrf_val_t* A_val, const getrf_id_t* L_rcsr,
		const getrf_id_t* L_cid, getrf_val_t* L_val,
		const getrf_id_t* U_rcsr, const getrf_id_t* U_cid,
		getrf_val_t* U_val, getrf_id_t n, getrf_id_t a_nnz,
		getrf_id_t l_nnz, getrf_id_t u_nnz, getrf_val_t pivot_eps,
		local_pos_t lower_pos[GETRF_MAX_N][GETRF_MAX_N],
		local_pos_t upper_pos[GETRF_MAX_N][GETRF_MAX_N],
		getrf_val_t work[GETRF_MAX_N][GETRF_MAX_N],
		getrf_id_t* failed_row) {
	getrf_id_t result = cache_triangular_pattern(L_rcsr, L_cid, L_val,
			n, l_nnz, true, false, lower_pos, work, failed_row);
	if (result != GETRF_SUCCESS) return result;
	result = cache_triangular_pattern(U_rcsr, U_cid, U_val,
			n, u_nnz, false, false, upper_pos, work, failed_row);
	if (result != GETRF_SUCCESS) return result;
	if (A_rcsr[0] != 0 || A_rcsr[n] != a_nnz) return GETRF_INVALID_CSR;

	for (getrf_id_t row = 0; row < n; ++row) {
		const getrf_id_t begin = A_rcsr[row];
		const getrf_id_t end = A_rcsr[row + 1];
		if (begin > end || end > a_nnz) {
			*failed_row = row;
			return GETRF_INVALID_CSR;
		}
		getrf_id_t previous = GETRF_INVALID_ID;
		for (getrf_id_t pos = begin; pos < end; ++pos) {
			const getrf_id_t col = A_cid[pos];
			if (col >= n || (previous != GETRF_INVALID_ID && col <= previous)) {
				*failed_row = row;
				return GETRF_INVALID_CSR;
			}
			const local_pos_t target = col < row
					? lower_pos[row][col] : upper_pos[row][col];
			if (target == LOCAL_INVALID_POS) {
				*failed_row = row;
				return GETRF_PATTERN_MISMATCH;
			}
			work[row][col] = A_val[pos];
			previous = col;
		}
	}
	result = validate_getrf_closure(n, lower_pos, upper_pos, failed_row);
	if (result != GETRF_SUCCESS) return result;

	for (getrf_id_t row = 0; row < n; ++row) {
		for (getrf_id_t pivot = 0; pivot < row; ++pivot) {
			if (lower_pos[row][pivot] == LOCAL_INVALID_POS) continue;
			if (cached_abs(work[pivot][pivot]) <= pivot_eps) {
				*failed_row = pivot;
				return GETRF_ZERO_PIVOT;
			}
			const getrf_val_t multiplier = work[row][pivot] / work[pivot][pivot];
			work[row][pivot] = multiplier;
			for (getrf_id_t base = pivot + 1; base < n;
					base += GETRF_COMPUTE_UNITS) {
#pragma HLS DEPENDENCE variable=work inter false
#pragma HLS PIPELINE II=1
				for (getrf_id_t lane = 0; lane < GETRF_COMPUTE_UNITS; ++lane) {
#pragma HLS UNROLL
					const getrf_id_t col = base + lane;
					if (col < n && upper_pos[pivot][col] != LOCAL_INVALID_POS)
						work[row][col] -= multiplier * work[pivot][col];
				}
			}
		}
		if (cached_abs(work[row][row]) <= pivot_eps) {
			*failed_row = row;
			return GETRF_ZERO_PIVOT;
		}
	}

	for (getrf_id_t row = 0; row < n; ++row) {
		for (getrf_id_t pos = L_rcsr[row]; pos < L_rcsr[row + 1]; ++pos) {
#pragma HLS PIPELINE II=1
			const getrf_id_t col = L_cid[pos];
			L_val[pos] = col == row ? 1.0f : work[row][col];
		}
		for (getrf_id_t pos = U_rcsr[row]; pos < U_rcsr[row + 1]; ++pos) {
#pragma HLS PIPELINE II=1
			U_val[pos] = work[row][U_cid[pos]];
		}
	}
	return GETRF_SUCCESS;
}

static getrf_id_t run_cached_gessm(getrf_id_t n, getrf_id_t x_cols,
		local_pos_t lower_pos[GETRF_MAX_N][GETRF_MAX_N],
		getrf_val_t factor[GETRF_MAX_N][GETRF_MAX_N],
		local_pos_t block_pos[GETRF_MAX_BLOCK_ROWS][GETRF_MAX_N],
		getrf_val_t block[GETRF_MAX_BLOCK_ROWS][GETRF_MAX_N],
		getrf_id_t* failed_row) {
	getrf_id_t result = validate_gessm_closure(
			n, x_cols, lower_pos, block_pos, failed_row);
	if (result != GETRF_SUCCESS) return result;
	for (getrf_id_t row = 0; row < n; ++row) {
		for (getrf_id_t source = 0; source < row; ++source) {
			if (lower_pos[row][source] == LOCAL_INVALID_POS) continue;
			const getrf_val_t multiplier = factor[row][source];
			for (getrf_id_t base = 0; base < x_cols;
					base += GETRF_COMPUTE_UNITS) {
#pragma HLS DEPENDENCE variable=block inter false
#pragma HLS PIPELINE II=1
				for (getrf_id_t lane = 0; lane < GETRF_COMPUTE_UNITS; ++lane) {
#pragma HLS UNROLL
					const getrf_id_t col = base + lane;
					if (col < x_cols && block_pos[source][col] != LOCAL_INVALID_POS)
						block[row][col] -= multiplier * block[source][col];
				}
			}
		}
	}
	return GETRF_SUCCESS;
}

static getrf_id_t run_cached_tstrf(getrf_id_t n, getrf_id_t x_rows,
		getrf_val_t pivot_eps,
		local_pos_t upper_pos[GETRF_MAX_N][GETRF_MAX_N],
		getrf_val_t factor[GETRF_MAX_N][GETRF_MAX_N],
		local_pos_t block_pos[GETRF_MAX_BLOCK_ROWS][GETRF_MAX_N],
		getrf_val_t block[GETRF_MAX_BLOCK_ROWS][GETRF_MAX_N],
		getrf_id_t* failed_row) {
	getrf_id_t result = validate_tstrf_closure(
			n, x_rows, upper_pos, block_pos, failed_row);
	if (result != GETRF_SUCCESS) return result;
	for (getrf_id_t pivot = 0; pivot < n; ++pivot) {
		if (cached_abs(factor[pivot][pivot]) <= pivot_eps) {
			*failed_row = pivot;
			return GETRF_ZERO_PIVOT;
		}
		for (getrf_id_t row_base = 0; row_base < x_rows;
				row_base += GETRF_COMPUTE_UNITS) {
			getrf_val_t multiplier[GETRF_COMPUTE_UNITS];
			bool active[GETRF_COMPUTE_UNITS];
#pragma HLS ARRAY_PARTITION variable=multiplier complete
#pragma HLS ARRAY_PARTITION variable=active complete
			for (getrf_id_t lane = 0; lane < GETRF_COMPUTE_UNITS; ++lane) {
#pragma HLS UNROLL
				const getrf_id_t row = row_base + lane;
				active[lane] = row < x_rows &&
						block_pos[row][pivot] != LOCAL_INVALID_POS;
				multiplier[lane] = active[lane]
						? block[row][pivot] / factor[pivot][pivot] : 0.0f;
				if (active[lane]) block[row][pivot] = multiplier[lane];
			}
			for (getrf_id_t col = pivot + 1; col < n; ++col) {
#pragma HLS DEPENDENCE variable=block inter false
#pragma HLS PIPELINE II=1
				if (upper_pos[pivot][col] == LOCAL_INVALID_POS) continue;
				for (getrf_id_t lane = 0; lane < GETRF_COMPUTE_UNITS; ++lane) {
#pragma HLS UNROLL
					const getrf_id_t row = row_base + lane;
					if (active[lane])
						block[row][col] -= multiplier[lane] * factor[pivot][col];
				}
			}
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

	local_pos_t lower_pos[GETRF_MAX_N][GETRF_MAX_N];
	local_pos_t upper_pos[GETRF_MAX_N][GETRF_MAX_N];
	getrf_val_t factor[GETRF_MAX_N][GETRF_MAX_N];
	local_pos_t block_pos[GETRF_MAX_BLOCK_ROWS][GETRF_MAX_N];
	getrf_val_t block[GETRF_MAX_BLOCK_ROWS][GETRF_MAX_N];
#pragma HLS ARRAY_PARTITION variable=lower_pos cyclic factor=GETRF_COMPUTE_UNITS dim=2
#pragma HLS ARRAY_PARTITION variable=upper_pos cyclic factor=GETRF_COMPUTE_UNITS dim=2
#pragma HLS ARRAY_PARTITION variable=factor cyclic factor=GETRF_COMPUTE_UNITS dim=2
#pragma HLS ARRAY_PARTITION variable=block_pos cyclic factor=GETRF_COMPUTE_UNITS dim=2
#pragma HLS ARRAY_PARTITION variable=block_pos cyclic factor=GETRF_COMPUTE_UNITS dim=1
#pragma HLS ARRAY_PARTITION variable=block cyclic factor=GETRF_COMPUTE_UNITS dim=2
#pragma HLS ARRAY_PARTITION variable=block cyclic factor=GETRF_COMPUTE_UNITS dim=1

	*status = GETRF_SUCCESS;
	*failed_row = GETRF_INVALID_ID;
	if (GETRF_COMPUTE_UNITS == 0 || n == 0 || n > GETRF_MAX_N ||
			a_nnz > GETRF_MAX_A_NNZ || l_nnz > GETRF_MAX_L_NNZ ||
			u_nnz > GETRF_MAX_U_NNZ || x_rows > GETRF_MAX_BLOCK_ROWS ||
			x_cols > GETRF_MAX_N || x_nnz > GETRF_MAX_BLOCK_NNZ) {
		cached_fail(GETRF_INVALID_SIZE, 0, status, failed_row);
		return;
	}

	clear_factor_cache(lower_pos, upper_pos, factor, n);
	if (operation == SPARSE_LU_GETRF) {
		*status = run_cached_getrf(A_rcsr, A_cid, A_val, L_rcsr, L_cid,
				L_val, U_rcsr, U_cid, U_val, n, a_nnz, l_nnz, u_nnz,
				pivot_eps, lower_pos, upper_pos, factor, failed_row);
		return;
	}
	if (operation != SPARSE_LU_GESSM && operation != SPARSE_LU_TSTRF) {
		cached_fail(GETRF_INVALID_OPERATION, 0, status, failed_row);
		return;
	}
	if (x_rows == 0 || x_cols == 0) {
		cached_fail(GETRF_INVALID_SIZE, 0, status, failed_row);
		return;
	}

	clear_block_cache(block_pos, block, x_rows, x_cols);
	*status = cache_block(X_rcsr, X_cid, X_val, x_rows, x_cols, x_nnz,
			block_pos, block, failed_row);
	if (*status != GETRF_SUCCESS) return;
	if (operation == SPARSE_LU_GESSM) {
		if (x_rows != n) {
			cached_fail(GETRF_INVALID_SIZE, 0, status, failed_row);
			return;
		}
		*status = cache_triangular_pattern(L_rcsr, L_cid, L_val,
				n, l_nnz, true, true, lower_pos, factor, failed_row);
		if (*status == GETRF_SUCCESS)
			*status = run_cached_gessm(n, x_cols, lower_pos, factor,
					block_pos, block, failed_row);
	} else {
		if (x_cols != n) {
			cached_fail(GETRF_INVALID_SIZE, 0, status, failed_row);
			return;
		}
		*status = cache_triangular_pattern(U_rcsr, U_cid, U_val,
				n, u_nnz, false, true, upper_pos, factor, failed_row);
		if (*status == GETRF_SUCCESS)
			*status = run_cached_tstrf(n, x_rows, pivot_eps, upper_pos,
					factor, block_pos, block, failed_row);
	}
	if (*status != GETRF_SUCCESS) return;
	for (getrf_id_t row = 0; row < x_rows; ++row) {
		for (getrf_id_t pos = X_rcsr[row]; pos < X_rcsr[row + 1]; ++pos) {
#pragma HLS PIPELINE II=1
			X_val[pos] = block[row][X_cid[pos]];
		}
	}
}
