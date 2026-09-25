#include "sparse_getrf.h"

#include <algorithm>
#include <cmath>
#include <iostream>
#include <stdexcept>
#include <vector>

using Dense = std::vector<std::vector<float> >;

struct Csr {
	std::vector<getrf_id_t> row{0};
	std::vector<getrf_id_t> col;
	std::vector<float> val;
};

static Csr dense_to_csr(const Dense& matrix) {
	Csr result;
	for (getrf_id_t i = 0; i < matrix.size(); ++i) {
		for (getrf_id_t j = 0; j < matrix.size(); ++j) {
			if (matrix[i][j] != 0.0f) {
				result.col.push_back(j);
				result.val.push_back(matrix[i][j]);
			}
		}
		result.row.push_back(result.col.size());
	}
	return result;
}

static void reference_lu(const Dense& a, Dense& l, Dense& u) {
	const getrf_id_t n = a.size();
	l.assign(n, std::vector<float>(n, 0.0f));
	u.assign(n, std::vector<float>(n, 0.0f));
	for (getrf_id_t i = 0; i < n; ++i) {
		l[i][i] = 1.0f;
		for (getrf_id_t k = 0; k < i; ++k) {
			double value = a[i][k];
			for (getrf_id_t p = 0; p < k; ++p)
				value -= double(l[i][p]) * double(u[p][k]);
			l[i][k] = float(value / u[k][k]);
		}
		for (getrf_id_t j = i; j < n; ++j) {
			double value = a[i][j];
			for (getrf_id_t p = 0; p < i; ++p)
				value -= double(l[i][p]) * double(u[p][j]);
			u[i][j] = float(value);
		}
		if (std::abs(u[i][i]) < 1e-5f)
			throw std::runtime_error("reference matrix has a zero pivot");
	}
}

static void symbolic_lu(const Dense& a, std::vector<std::vector<bool> >& pattern) {
	const getrf_id_t n = a.size();
	pattern.assign(n, std::vector<bool>(n, false));
	for (getrf_id_t i = 0; i < n; ++i)
		for (getrf_id_t j = 0; j < n; ++j)
			pattern[i][j] = a[i][j] != 0.0f;
	for (getrf_id_t i = 0; i < n; ++i) {
		pattern[i][i] = true;
		for (getrf_id_t k = 0; k < i; ++k) {
			if (!pattern[i][k])
				continue;
			for (getrf_id_t j = k + 1; j < n; ++j)
				if (pattern[k][j])
					pattern[i][j] = true;
		}
	}
}

static void build_factor_patterns(const std::vector<std::vector<bool> >& pattern,
		Csr& l, Csr& u) {
	const getrf_id_t n = pattern.size();
	for (getrf_id_t i = 0; i < n; ++i) {
		for (getrf_id_t j = 0; j <= i; ++j)
			if (pattern[i][j]) l.col.push_back(j);
		for (getrf_id_t j = i; j < n; ++j)
			if (pattern[i][j]) u.col.push_back(j);
		l.row.push_back(l.col.size());
		u.row.push_back(u.col.size());
	}
	l.val.assign(l.col.size(), -999.0f);
	u.val.assign(u.col.size(), -999.0f);
}

int main() {
	const getrf_id_t n = 12;
	Dense a(n, std::vector<float>(n, 0.0f));
	for (getrf_id_t i = 0; i + 1 < n; ++i) {
		a[i][i + 1] = 0.35f + 0.01f * i;
		a[i + 1][i] = -0.45f + 0.01f * i;
	}
	a[0][4] = 0.30f;
	a[3][8] = -0.25f;
	a[5][1] = 0.20f;
	a[7][2] = -0.15f;
	a[8][11] = 0.18f;
	a[10][5] = 0.22f;
	for (getrf_id_t i = 0; i < n; ++i) {
		float off_diagonal = 0.0f;
		for (getrf_id_t j = 0; j < n; ++j)
			if (j != i) off_diagonal += std::abs(a[i][j]);
		a[i][i] = 3.0f + off_diagonal;
	}

	Dense expected_l, expected_u;
	reference_lu(a, expected_l, expected_u);
	std::vector<std::vector<bool> > pattern;
	symbolic_lu(a, pattern);

	Csr input = dense_to_csr(a), l, u;
	build_factor_patterns(pattern, l, u);
	const getrf_id_t a_nnz = input.col.size();
	const getrf_id_t l_nnz = l.col.size();
	const getrf_id_t u_nnz = u.col.size();
	const getrf_id_t factor_union_nnz = l_nnz + u_nnz - n;

	// RTL cosim transfers the full compile-time m_axi depth. Pad host-side
	// storage to those depths while keeping the logical nnz counts unchanged.
	input.row.resize(GETRF_MAX_N + 1, a_nnz);
	input.col.resize(GETRF_MAX_A_NNZ, 0);
	input.val.resize(GETRF_MAX_A_NNZ, 0.0f);
	l.row.resize(GETRF_MAX_N + 1, l_nnz);
	l.col.resize(GETRF_MAX_L_NNZ, 0);
	l.val.resize(GETRF_MAX_L_NNZ, 0.0f);
	u.row.resize(GETRF_MAX_N + 1, u_nnz);
	u.col.resize(GETRF_MAX_U_NNZ, 0);
	u.val.resize(GETRF_MAX_U_NNZ, 0.0f);

	getrf_id_t status = GETRF_INVALID_ID;
	getrf_id_t failed_row = GETRF_INVALID_ID;
	sparse_getrf(input.row.data(), input.col.data(), input.val.data(),
			l.row.data(), l.col.data(), l.val.data(),
			u.row.data(), u.col.data(), u.val.data(),
			n, a_nnz, l_nnz, u_nnz, 1e-6f,
			&status, &failed_row);
	if (status != GETRF_SUCCESS) {
		std::cerr << "sparse_getrf failed: status=" << status
				<< " row=" << failed_row << std::endl;
		return 1;
	}

	Dense actual_l(n, std::vector<float>(n, 0.0f));
	Dense actual_u(n, std::vector<float>(n, 0.0f));
	float max_factor_error = 0.0f;
	for (getrf_id_t i = 0; i < n; ++i) {
		for (getrf_id_t pos = l.row[i]; pos < l.row[i + 1]; ++pos) {
			const getrf_id_t j = l.col[pos];
			actual_l[i][j] = l.val[pos];
			max_factor_error = std::max(max_factor_error,
					std::abs(l.val[pos] - expected_l[i][j]));
		}
		for (getrf_id_t pos = u.row[i]; pos < u.row[i + 1]; ++pos) {
			const getrf_id_t j = u.col[pos];
			actual_u[i][j] = u.val[pos];
			max_factor_error = std::max(max_factor_error,
					std::abs(u.val[pos] - expected_u[i][j]));
		}
	}

	float max_residual = 0.0f;
	for (getrf_id_t i = 0; i < n; ++i) {
		for (getrf_id_t j = 0; j < n; ++j) {
			double value = 0.0;
			for (getrf_id_t k = 0; k < n; ++k)
				value += double(actual_l[i][k]) * double(actual_u[k][j]);
			max_residual = std::max(max_residual,
					float(std::abs(value - double(a[i][j]))));
		}
	}

	std::cout << "fixed-panel sparse GETRF: n=" << n
			<< " panel_width=" << GETRF_PANEL_WIDTH
			<< " A_nnz=" << a_nnz
			<< " factor_pattern_nnz=" << factor_union_nnz
			<< " symbolic_fill=" << factor_union_nnz - a_nnz
			<< std::endl;
	std::cout << "max factor error=" << max_factor_error
			<< " max residual=" << max_residual << std::endl;
	if (max_factor_error > 2e-5f || max_residual > 2e-5f) {
		std::cerr << "sparse_getrf numerical validation failed" << std::endl;
		return 1;
	}
	std::cout << "PASS sparse_getrf fixed CSR pattern" << std::endl;
	return 0;
}
