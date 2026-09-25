#include "sparse_lu_shared.h"

#include <algorithm>
#include <cmath>
#include <iostream>
#include <vector>

using Dense = std::vector<std::vector<float> >;

struct Csr {
	std::vector<getrf_id_t> row{0};
	std::vector<getrf_id_t> col;
	std::vector<float> val;
};

static Csr dense_input_csr(const Dense& matrix) {
	Csr csr;
	for (getrf_id_t i = 0; i < matrix.size(); ++i) {
		for (getrf_id_t j = 0; j < matrix[i].size(); ++j) {
			if (matrix[i][j] != 0.0f) {
				csr.col.push_back(j);
				csr.val.push_back(matrix[i][j]);
			}
		}
		csr.row.push_back(csr.col.size());
	}
	return csr;
}

static Csr full_triangular_pattern(getrf_id_t n, bool lower) {
	Csr csr;
	for (getrf_id_t i = 0; i < n; ++i) {
		const getrf_id_t begin = lower ? 0 : i;
		const getrf_id_t end = lower ? i + 1 : n;
		for (getrf_id_t j = begin; j < end; ++j) {
			csr.col.push_back(j);
			csr.val.push_back(-999.0f);
		}
		csr.row.push_back(csr.col.size());
	}
	return csr;
}

static Csr full_block(const Dense& matrix) {
	Csr csr;
	for (getrf_id_t i = 0; i < matrix.size(); ++i) {
		for (getrf_id_t j = 0; j < matrix[i].size(); ++j) {
			csr.col.push_back(j);
			csr.val.push_back(matrix[i][j]);
		}
		csr.row.push_back(csr.col.size());
	}
	return csr;
}

static void pad_factor(Csr& csr, getrf_id_t logical_nnz, getrf_id_t value_depth) {
	csr.row.resize(GETRF_MAX_N + 1, logical_nnz);
	csr.col.resize(value_depth, 0);
	csr.val.resize(value_depth, 0.0f);
}

static void pad_block(Csr& csr, getrf_id_t logical_nnz) {
	csr.row.resize(GETRF_MAX_BLOCK_ROWS + 1, logical_nnz);
	csr.col.resize(GETRF_MAX_BLOCK_NNZ, 0);
	csr.val.resize(GETRF_MAX_BLOCK_NNZ, 0.0f);
}

int main() {
	const getrf_id_t n = 6;
	Dense a(n, std::vector<float>(n, 0.0f));
	for (getrf_id_t i = 0; i + 1 < n; ++i) {
		a[i][i + 1] = 0.20f + 0.03f * i;
		a[i + 1][i] = -0.35f + 0.02f * i;
	}
	a[0][3] = 0.17f;
	a[4][1] = -0.11f;
	for (getrf_id_t i = 0; i < n; ++i) {
		float sum = 0.0f;
		for (getrf_id_t j = 0; j < n; ++j)
			if (i != j) sum += std::abs(a[i][j]);
		a[i][i] = 2.5f + sum;
	}

	Csr input = dense_input_csr(a);
	Csr l = full_triangular_pattern(n, true);
	Csr u = full_triangular_pattern(n, false);
	const getrf_id_t a_nnz = input.col.size();
	const getrf_id_t l_nnz = l.col.size();
	const getrf_id_t u_nnz = u.col.size();
	pad_factor(input, a_nnz, GETRF_MAX_A_NNZ);
	pad_factor(l, l_nnz, GETRF_MAX_L_NNZ);
	pad_factor(u, u_nnz, GETRF_MAX_U_NNZ);

	Csr x_dummy;
	pad_block(x_dummy, 0);
	getrf_id_t status = GETRF_INVALID_ID;
	getrf_id_t failed_row = GETRF_INVALID_ID;
	sparse_lu_shared(SPARSE_LU_GETRF,
			input.row.data(), input.col.data(), input.val.data(),
			l.row.data(), l.col.data(), l.val.data(),
			u.row.data(), u.col.data(), u.val.data(),
			x_dummy.row.data(), x_dummy.col.data(), x_dummy.val.data(),
			n, a_nnz, l_nnz, u_nnz, 0, 0, 0, 1e-6f,
			&status, &failed_row);
	if (status != GETRF_SUCCESS) {
		std::cerr << "GETRF failed: status=" << status
				<< " row=" << failed_row << std::endl;
		return 1;
	}

	Dense ld(n, std::vector<float>(n, 0.0f));
	Dense ud(n, std::vector<float>(n, 0.0f));
	for (getrf_id_t i = 0; i < n; ++i) {
		for (getrf_id_t p = l.row[i]; p < l.row[i + 1]; ++p)
			ld[i][l.col[p]] = l.val[p];
		for (getrf_id_t p = u.row[i]; p < u.row[i + 1]; ++p)
			ud[i][u.col[p]] = u.val[p];
	}
	float getrf_residual = 0.0f;
	for (getrf_id_t i = 0; i < n; ++i) {
		for (getrf_id_t j = 0; j < n; ++j) {
			double value = 0.0;
			for (getrf_id_t k = 0; k < n; ++k)
				value += double(ld[i][k]) * double(ud[k][j]);
			getrf_residual = std::max(getrf_residual,
					float(std::abs(value - double(a[i][j]))));
		}
	}

	const getrf_id_t rhs_cols = 5;
	Dense b(n, std::vector<float>(rhs_cols, 0.0f));
	for (getrf_id_t i = 0; i < n; ++i)
		for (getrf_id_t j = 0; j < rhs_cols; ++j)
			b[i][j] = ((i + 2 * j) % 3 == 0) ? 0.0f : 0.1f * (1 + i + j);
	Dense expected_g = b;
	for (getrf_id_t i = 0; i < n; ++i)
		for (getrf_id_t k = 0; k < i; ++k)
			for (getrf_id_t j = 0; j < rhs_cols; ++j)
				expected_g[i][j] -= ld[i][k] * expected_g[k][j];
	Csr xg = full_block(b);
	const getrf_id_t xg_nnz = xg.col.size();
	pad_block(xg, xg_nnz);
	sparse_lu_shared(SPARSE_LU_GESSM,
			input.row.data(), input.col.data(), input.val.data(),
			l.row.data(), l.col.data(), l.val.data(),
			u.row.data(), u.col.data(), u.val.data(),
			xg.row.data(), xg.col.data(), xg.val.data(),
			n, a_nnz, l_nnz, u_nnz, n, rhs_cols, xg_nnz, 1e-6f,
			&status, &failed_row);
	if (status != GETRF_SUCCESS) {
		std::cerr << "GESSM failed: status=" << status
				<< " row=" << failed_row << std::endl;
		return 1;
	}
	float gessm_error = 0.0f;
	for (getrf_id_t i = 0; i < n; ++i)
		for (getrf_id_t j = 0; j < rhs_cols; ++j)
			gessm_error = std::max(gessm_error,
					std::abs(xg.val[xg.row[i] + j] - expected_g[i][j]));

	const getrf_id_t block_rows = 4;
	Dense c(block_rows, std::vector<float>(n, 0.0f));
	for (getrf_id_t i = 0; i < block_rows; ++i)
		for (getrf_id_t j = 0; j < n; ++j)
			c[i][j] = ((2 * i + j) % 4 == 0) ? 0.0f : -0.07f * (1 + i + j);
	Dense expected_t = c;
	for (getrf_id_t i = 0; i < block_rows; ++i) {
		for (getrf_id_t k = 0; k < n; ++k) {
			for (getrf_id_t p = 0; p < k; ++p)
				expected_t[i][k] -= expected_t[i][p] * ud[p][k];
			expected_t[i][k] /= ud[k][k];
		}
	}
	Csr xt = full_block(c);
	const getrf_id_t xt_nnz = xt.col.size();
	pad_block(xt, xt_nnz);
	sparse_lu_shared(SPARSE_LU_TSTRF,
			input.row.data(), input.col.data(), input.val.data(),
			l.row.data(), l.col.data(), l.val.data(),
			u.row.data(), u.col.data(), u.val.data(),
			xt.row.data(), xt.col.data(), xt.val.data(),
			n, a_nnz, l_nnz, u_nnz, block_rows, n, xt_nnz, 1e-6f,
			&status, &failed_row);
	if (status != GETRF_SUCCESS) {
		std::cerr << "TSTRF failed: status=" << status
				<< " row=" << failed_row << std::endl;
		return 1;
	}
	float tstrf_error = 0.0f;
	for (getrf_id_t i = 0; i < block_rows; ++i)
		for (getrf_id_t j = 0; j < n; ++j)
			tstrf_error = std::max(tstrf_error,
					std::abs(xt.val[xt.row[i] + j] - expected_t[i][j]));

	std::cout << "shared sparse LU kernel: GETRF/GESSM/TSTRF" << std::endl;
	std::cout << "GETRF residual=" << getrf_residual
			<< " GESSM error=" << gessm_error
			<< " TSTRF error=" << tstrf_error << std::endl;
	if (getrf_residual > 2e-5f || gessm_error > 2e-5f || tstrf_error > 2e-5f)
		return 1;
	std::cout << "PASS shared GETRF/GESSM/TSTRF; SSSSM remains separate" << std::endl;
	return 0;
}
