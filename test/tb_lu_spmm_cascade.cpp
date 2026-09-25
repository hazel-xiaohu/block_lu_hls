#include "sparse_lu_shared.h"
#ifndef CASCADE_LU_ONLY
#include "core.h"
#endif

#include <algorithm>
#include <cmath>
#include <cstring>
#include <fstream>
#include <iostream>
#include <limits>
#include <stdexcept>
#include <string>
#include <vector>

struct CascadeCsr {
	std::vector<getrf_id_t> row;
	std::vector<getrf_id_t> col;
	std::vector<float> val;
};

template <typename T>
static std::vector<T> read_words(const std::string& path, bool allow_tail = false) {
	std::ifstream file(path.c_str(), std::ios::binary | std::ios::ate);
	if (!file) throw std::runtime_error("cannot open " + path);
	const std::streamoff bytes = file.tellg();
	if (bytes < 0 || (!allow_tail && size_t(bytes) % sizeof(T)))
		throw std::runtime_error("invalid binary length: " + path);
	std::vector<T> data(size_t(bytes) / sizeof(T));
	file.seekg(0);
	if (!data.empty() && !file.read(reinterpret_cast<char*>(data.data()),
			std::streamsize(data.size() * sizeof(T))))
		throw std::runtime_error("cannot read " + path);
	return data;
}

template <typename T>
static void pad(std::vector<T>& data, size_t depth, T fill = T()) {
	if (data.size() > depth) throw std::runtime_error("interface depth too small");
	data.resize(depth, fill);
}

#ifndef CASCADE_LU_ONLY
static std::vector<ap_uint<128> > pack_u32(
		const std::vector<getrf_id_t>& data, size_t depth) {
	if ((data.size() + 3) / 4 > depth)
		throw std::runtime_error("packed interface depth too small");
	std::vector<ap_uint<128> > packed(depth, 0);
	for (size_t i = 0; i < data.size(); ++i)
		packed[i / 4](unsigned(i % 4) * 32 + 31, unsigned(i % 4) * 32) = data[i];
	return packed;
}

static std::vector<ap_uint<128> > pack_float(
		const std::vector<float>& data, size_t depth) {
	std::vector<getrf_id_t> bits;
	bits.reserve(data.size());
	for (size_t i = 0; i < data.size(); ++i) {
		getrf_id_t word;
		std::memcpy(&word, &data[i], sizeof(word));
		bits.push_back(word);
	}
	return pack_u32(bits, depth);
}
#endif

static CascadeCsr dense_to_csr(const std::vector<std::vector<float> >& dense,
		bool keep_zeros) {
	CascadeCsr result;
	result.row.push_back(0);
	for (size_t row = 0; row < dense.size(); ++row) {
		for (size_t col = 0; col < dense[row].size(); ++col) {
			if (keep_zeros || dense[row][col] != 0.0f) {
				result.col.push_back(getrf_id_t(col));
				result.val.push_back(dense[row][col]);
			}
		}
		result.row.push_back(getrf_id_t(result.col.size()));
	}
	return result;
}

typedef std::vector<std::vector<bool> > BoolMatrix;

static BoolMatrix csc_window_pattern(
		const std::vector<uint64_t>& colptr,
		const std::vector<uint32_t>& rowidx,
		getrf_id_t global_begin, getrf_id_t size) {
	BoolMatrix pattern(size, std::vector<bool>(size, false));
	if (global_begin + size >= colptr.size() ||
			colptr[global_begin + size] > rowidx.size())
		throw std::runtime_error("selected symbolic-matrix prefix is incomplete");
	for (getrf_id_t col = 0; col < size; ++col)
		for (uint64_t pos = colptr[global_begin + col];
				pos < colptr[global_begin + col + 1]; ++pos) {
			const uint32_t row = rowidx[pos];
			if (row >= global_begin && row < global_begin + size)
				pattern[row - global_begin][col] = true;
		}
	return pattern;
}

static BoolMatrix pattern_block(const BoolMatrix& source,
		getrf_id_t row_begin, getrf_id_t rows,
		getrf_id_t col_begin, getrf_id_t cols) {
	BoolMatrix result(rows, std::vector<bool>(cols, false));
	for (getrf_id_t row = 0; row < rows; ++row)
		for (getrf_id_t col = 0; col < cols; ++col)
			result[row][col] = source[row_begin + row][col_begin + col];
	return result;
}

static CascadeCsr patterned_csr(const std::vector<std::vector<float> >& dense,
		const BoolMatrix& pattern) {
	CascadeCsr result;
	result.row.push_back(0);
	for (getrf_id_t row = 0; row < dense.size(); ++row) {
		for (getrf_id_t col = 0; col < dense[row].size(); ++col) {
			if (pattern[row][col]) {
				result.col.push_back(col);
				result.val.push_back(dense[row][col]);
			}
		}
		result.row.push_back(getrf_id_t(result.col.size()));
	}
	return result;
}

static void symbolic_lu(const std::vector<std::vector<float> >& dense,
		CascadeCsr& lower, CascadeCsr& upper, BoolMatrix& pattern) {
	const getrf_id_t n = getrf_id_t(dense.size());
	pattern.assign(n, std::vector<bool>(n, false));
	for (getrf_id_t row = 0; row < n; ++row)
		for (getrf_id_t col = 0; col < n; ++col)
			pattern[row][col] = dense[row][col] != 0.0f;
	for (getrf_id_t row = 0; row < n; ++row) {
		pattern[row][row] = true;
		for (getrf_id_t pivot = 0; pivot < row; ++pivot) {
			if (!pattern[row][pivot]) continue;
			for (getrf_id_t col = pivot + 1; col < n; ++col)
				if (pattern[pivot][col]) pattern[row][col] = true;
		}
	}
	lower.row.push_back(0);
	upper.row.push_back(0);
	for (getrf_id_t row = 0; row < n; ++row) {
		for (getrf_id_t col = 0; col <= row; ++col)
			if (pattern[row][col]) {
				lower.col.push_back(col);
				lower.val.push_back(0.0f);
			}
		for (getrf_id_t col = row; col < n; ++col)
			if (pattern[row][col]) {
				upper.col.push_back(col);
				upper.val.push_back(0.0f);
			}
		lower.row.push_back(getrf_id_t(lower.col.size()));
		upper.row.push_back(getrf_id_t(upper.col.size()));
	}
}

static BoolMatrix gessm_pattern(const std::vector<std::vector<float> >& input,
		const BoolMatrix& lu_pattern) {
	const getrf_id_t rows = getrf_id_t(input.size());
	const getrf_id_t cols = getrf_id_t(input[0].size());
	BoolMatrix pattern(rows, std::vector<bool>(cols, false));
	for (getrf_id_t row = 0; row < rows; ++row) {
		for (getrf_id_t col = 0; col < cols; ++col)
			pattern[row][col] = input[row][col] != 0.0f;
		for (getrf_id_t source = 0; source < row; ++source)
			if (lu_pattern[row][source])
				for (getrf_id_t col = 0; col < cols; ++col)
					if (pattern[source][col]) pattern[row][col] = true;
	}
	return pattern;
}

static BoolMatrix tstrf_pattern(const std::vector<std::vector<float> >& input,
		const BoolMatrix& lu_pattern) {
	const getrf_id_t rows = getrf_id_t(input.size());
	const getrf_id_t cols = getrf_id_t(input[0].size());
	BoolMatrix pattern(rows, std::vector<bool>(cols, false));
	for (getrf_id_t row = 0; row < rows; ++row) {
		for (getrf_id_t col = 0; col < cols; ++col)
			pattern[row][col] = input[row][col] != 0.0f;
		for (getrf_id_t pivot = 0; pivot < cols; ++pivot)
			if (pattern[row][pivot])
				for (getrf_id_t col = pivot + 1; col < cols; ++col)
					if (lu_pattern[pivot][col]) pattern[row][col] = true;
	}
	return pattern;
}

static BoolMatrix schur_pattern(const std::vector<std::vector<float> >& initial,
		const BoolMatrix& left, const BoolMatrix& right) {
	const getrf_id_t rows = getrf_id_t(left.size());
	const getrf_id_t inner = getrf_id_t(right.size());
	const getrf_id_t cols = getrf_id_t(right[0].size());
	BoolMatrix pattern(rows, std::vector<bool>(cols, false));
	for (getrf_id_t row = 0; row < rows; ++row)
		for (getrf_id_t col = 0; col < cols; ++col) {
			pattern[row][col] = initial[row][col] != 0.0f;
			for (getrf_id_t k = 0; k < inner && !pattern[row][col]; ++k)
				pattern[row][col] = left[row][k] && right[k][col];
		}
	return pattern;
}

static std::vector<std::vector<float> > csr_to_dense(
		const CascadeCsr& csr, getrf_id_t rows, getrf_id_t cols) {
	std::vector<std::vector<float> > dense(rows, std::vector<float>(cols, 0.0f));
	for (getrf_id_t row = 0; row < rows; ++row)
		for (getrf_id_t pos = csr.row[row]; pos < csr.row[row + 1]; ++pos)
			dense[row][csr.col[pos]] = csr.val[pos];
	return dense;
}

static void pad_factor(CascadeCsr& csr, getrf_id_t logical_nnz, size_t depth) {
	csr.row.resize(GETRF_MAX_N + 1, logical_nnz);
	csr.col.resize(depth, 0);
	csr.val.resize(depth, 0.0f);
}

static void pad_block(CascadeCsr& csr, getrf_id_t logical_nnz) {
	csr.row.resize(GETRF_MAX_BLOCK_ROWS + 1, logical_nnz);
	csr.col.resize(GETRF_MAX_BLOCK_NNZ, 0);
	csr.val.resize(GETRF_MAX_BLOCK_NNZ, 0.0f);
}

#ifndef CASCADE_LU_ONLY
static void call_spmm_schur(const CascadeCsr& left_logical,
		const CascadeCsr& right_logical, const CascadeCsr& initial_logical,
		std::vector<float>& output, getrf_id_t* output_nnz) {
	CascadeCsr left = left_logical;
	pad(left.row, SPMM_ROW_DEPTH, getrf_id_t(0));
	pad(left.col, SPMM_INPUT_DEPTH, getrf_id_t(0));
	pad(left.val, SPMM_INPUT_DEPTH, 0.0f);
	auto right_row = pack_u32(right_logical.row, SPMM_PACKED_ROW_DEPTH);
	auto right_col = pack_u32(right_logical.col, SPMM_PACKED_INPUT_DEPTH);
	auto right_val = pack_float(right_logical.val, SPMM_PACKED_INPUT_DEPTH);

	std::vector<getrf_id_t> c_row = initial_logical.row;
	std::vector<getrf_id_t> c_col = initial_logical.col;
	output = initial_logical.val;
	pad(c_row, SPMM_ROW_DEPTH, getrf_id_t(TERMINATE));
	pad(c_col, SPMM_OUTPUT_DEPTH, getrf_id_t(TERMINATE));
	pad(output, SPMM_OUTPUT_DEPTH, -999.0f);
	getrf_id_t stats[36] = {};
	*output_nnz = GETRF_INVALID_ID;
	spmm(left.row.data(), left.col.data(), left.val.data(),
			getrf_id_t(left_logical.row.size() - 1),
			getrf_id_t(left_logical.col.size()),
			right_row.data(), right_row.data(), right_row.data(), right_row.data(),
			right_val.data(), right_col.data(), right_val.data(), right_col.data(),
			right_val.data(), right_col.data(), right_val.data(), right_col.data(),
			getrf_id_t(right_logical.row.size() - 1),
			getrf_id_t(right_logical.col.size()),
			right_val.data(), right_col.data(), right_val.data(), right_col.data(),
			right_val.data(), right_col.data(), right_val.data(), right_col.data(),
			c_row.data(), c_col.data(), output.data(),
			0x100000, 0x200000, 0x300000,
			&stats[0], &stats[1], &stats[2], &stats[3],
			&stats[4], &stats[5], &stats[6], &stats[7],
			&stats[8], &stats[9], &stats[10], &stats[11],
			&stats[12], &stats[13], &stats[14], &stats[15],
			&stats[16], &stats[17], &stats[18], &stats[19],
			&stats[20], &stats[21], &stats[22], &stats[23],
			&stats[24], &stats[25], &stats[26], &stats[27],
			&stats[28], &stats[29], &stats[30], &stats[31],
			output_nnz, &stats[32], &stats[33], &stats[34], &stats[35]);
	if (!std::equal(initial_logical.row.begin(), initial_logical.row.end(), c_row.begin()) ||
			!std::equal(initial_logical.col.begin(), initial_logical.col.end(), c_col.begin()))
		throw std::runtime_error("SSSSM changed the fixed C structure");
}
#endif

int main() {
	try {
		const std::string dir =
				"/home/huz/project/SpMM_DATE/Preprocessing/bin/circuit_3_12127";
		const std::vector<uint64_t> colptr =
				read_words<uint64_t>(dir + "/0_getrf_A_colptr.BIN");
		const std::vector<uint32_t> rowidx =
				read_words<uint32_t>(dir + "/0_getrf_A_rowidx.BIN");
		const std::vector<double> values =
				read_words<double>(dir + "/0_getrf_A_cscval.BIN", true);
		const std::vector<uint64_t> l_colptr =
				read_words<uint64_t>(dir + "/0_getrf_L_colptr.BIN");
		const std::vector<uint32_t> l_rowidx =
				read_words<uint32_t>(dir + "/0_getrf_L_rowidx.BIN");
		const std::vector<uint64_t> u_colptr =
				read_words<uint64_t>(dir + "/0_getrf_U_colptr.BIN");
		const std::vector<uint32_t> u_rowidx =
				read_words<uint32_t>(dir + "/0_getrf_U_rowidx.BIN");
		const getrf_id_t global_begin = 4608;
		const getrf_id_t panel = 32;
		const getrf_id_t trailing = 32;
		const getrf_id_t local_n = panel + trailing;
		if (global_begin + local_n >= colptr.size() ||
				colptr[global_begin + local_n] > rowidx.size() ||
				colptr[global_begin + local_n] > values.size())
			throw std::runtime_error("selected real-matrix prefix is incomplete");

		std::vector<std::vector<float> > local(local_n,
				std::vector<float>(local_n, 0.0f));
		for (getrf_id_t col = 0; col < local_n; ++col) {
			const getrf_id_t global_col = global_begin + col;
			for (uint64_t pos = colptr[global_col]; pos < colptr[global_col + 1]; ++pos) {
				const uint32_t global_row = rowidx[pos];
				if (global_row >= global_begin && global_row < global_begin + local_n)
					local[global_row - global_begin][col] += float(values[pos]);
			}
		}

		std::vector<std::vector<float> > a11(panel, std::vector<float>(panel));
		std::vector<std::vector<float> > a12(panel, std::vector<float>(trailing));
		std::vector<std::vector<float> > a21(trailing, std::vector<float>(panel));
		std::vector<std::vector<float> > a22(trailing, std::vector<float>(trailing));
		for (getrf_id_t i = 0; i < panel; ++i)
			for (getrf_id_t j = 0; j < panel; ++j) a11[i][j] = local[i][j];
		for (getrf_id_t i = 0; i < panel; ++i)
			for (getrf_id_t j = 0; j < trailing; ++j) a12[i][j] = local[i][panel + j];
		for (getrf_id_t i = 0; i < trailing; ++i)
			for (getrf_id_t j = 0; j < panel; ++j) a21[i][j] = local[panel + i][j];
		for (getrf_id_t i = 0; i < trailing; ++i)
			for (getrf_id_t j = 0; j < trailing; ++j) a22[i][j] = local[panel + i][panel + j];

		const BoolMatrix l_fixed = csc_window_pattern(
				l_colptr, l_rowidx, global_begin, local_n);
		const BoolMatrix u_fixed = csc_window_pattern(
				u_colptr, u_rowidx, global_begin, local_n);
		const BoolMatrix l11_pattern = pattern_block(l_fixed, 0, panel, 0, panel);
		const BoolMatrix u11_pattern = pattern_block(u_fixed, 0, panel, 0, panel);
		const BoolMatrix l21_pattern = pattern_block(l_fixed, panel, trailing, 0, panel);
		const BoolMatrix u12_pattern = pattern_block(u_fixed, 0, panel, panel, trailing);
		CascadeCsr input = dense_to_csr(a11, false);
		CascadeCsr lower = patterned_csr(a11, l11_pattern);
		CascadeCsr upper = patterned_csr(a11, u11_pattern);
		std::fill(lower.val.begin(), lower.val.end(), 0.0f);
		std::fill(upper.val.begin(), upper.val.end(), 0.0f);
		const getrf_id_t a_nnz = getrf_id_t(input.col.size());
		const getrf_id_t l_nnz = getrf_id_t(lower.col.size());
		const getrf_id_t u_nnz = getrf_id_t(upper.col.size());
		pad_factor(input, a_nnz, GETRF_MAX_A_NNZ);
		pad_factor(lower, l_nnz, GETRF_MAX_L_NNZ);
		pad_factor(upper, u_nnz, GETRF_MAX_U_NNZ);
		CascadeCsr dummy;
		dummy.row.push_back(0);
		pad_block(dummy, 0);
		getrf_id_t status = GETRF_INVALID_ID, failed_row = GETRF_INVALID_ID;
		sparse_lu_shared(SPARSE_LU_GETRF,
				input.row.data(), input.col.data(), input.val.data(),
				lower.row.data(), lower.col.data(), lower.val.data(),
				upper.row.data(), upper.col.data(), upper.val.data(),
				dummy.row.data(), dummy.col.data(), dummy.val.data(),
				panel, a_nnz, l_nnz, u_nnz, 0, 0, 0, 1e-8f,
				&status, &failed_row);
		if (status != GETRF_SUCCESS)
			throw std::runtime_error("GETRF failed at row " + std::to_string(failed_row));

		CascadeCsr u12 = patterned_csr(a12, u12_pattern);
		const getrf_id_t u12_nnz = getrf_id_t(u12.col.size());
		pad_block(u12, u12_nnz);
		sparse_lu_shared(SPARSE_LU_GESSM,
				input.row.data(), input.col.data(), input.val.data(),
				lower.row.data(), lower.col.data(), lower.val.data(),
				upper.row.data(), upper.col.data(), upper.val.data(),
				u12.row.data(), u12.col.data(), u12.val.data(),
				panel, a_nnz, l_nnz, u_nnz, panel, trailing, u12_nnz, 1e-8f,
				&status, &failed_row);
		if (status != GETRF_SUCCESS)
			throw std::runtime_error("GESSM failed at row " + std::to_string(failed_row));

		CascadeCsr l21 = patterned_csr(a21, l21_pattern);
		const getrf_id_t l21_nnz = getrf_id_t(l21.col.size());
		pad_block(l21, l21_nnz);
		sparse_lu_shared(SPARSE_LU_TSTRF,
				input.row.data(), input.col.data(), input.val.data(),
				lower.row.data(), lower.col.data(), lower.val.data(),
				upper.row.data(), upper.col.data(), upper.val.data(),
				l21.row.data(), l21.col.data(), l21.val.data(),
				panel, a_nnz, l_nnz, u_nnz, trailing, panel, l21_nnz, 1e-8f,
				&status, &failed_row);
		if (status != GETRF_SUCCESS)
			throw std::runtime_error("TSTRF failed at row " + std::to_string(failed_row));

		CascadeCsr l21_logical = l21;
		l21_logical.row.resize(trailing + 1);
		l21_logical.col.resize(l21_nnz);
		l21_logical.val.resize(l21_nnz);
		CascadeCsr u12_logical = u12;
		u12_logical.row.resize(panel + 1);
		u12_logical.col.resize(u12_nnz);
		u12_logical.val.resize(u12_nnz);

		const std::vector<std::vector<float> > ld =
				csr_to_dense(lower, panel, panel);
		const std::vector<std::vector<float> > ud =
				csr_to_dense(upper, panel, panel);
		const std::vector<std::vector<float> > l21d =
				csr_to_dense(l21_logical, trailing, panel);
		const std::vector<std::vector<float> > u12d =
				csr_to_dense(u12_logical, panel, trailing);
		double lu_error = 0.0, gessm_error = 0.0, tstrf_error = 0.0;
		for (getrf_id_t i = 0; i < panel; ++i)
			for (getrf_id_t j = 0; j < panel; ++j) {
				double sum = 0.0;
				for (getrf_id_t k = 0; k < panel; ++k)
					sum += double(ld[i][k]) * double(ud[k][j]);
					lu_error = std::max(lu_error, std::abs(sum - double(a11[i][j])));
			}
		for (getrf_id_t i = 0; i < panel; ++i)
			for (getrf_id_t j = 0; j < trailing; ++j) {
				double sum = 0.0;
				for (getrf_id_t k = 0; k < panel; ++k)
					sum += double(ld[i][k]) * double(u12d[k][j]);
				gessm_error = std::max(gessm_error,
						std::abs(sum - double(a12[i][j])));
			}
		for (getrf_id_t i = 0; i < trailing; ++i)
			for (getrf_id_t j = 0; j < panel; ++j) {
				double sum = 0.0;
				for (getrf_id_t k = 0; k < panel; ++k)
					sum += double(l21d[i][k]) * double(ud[k][j]);
				tstrf_error = std::max(tstrf_error,
						std::abs(sum - double(a21[i][j])));
			}

#ifndef CASCADE_LU_ONLY
		const BoolMatrix c22_pattern = schur_pattern(
				a22, l21_pattern, u12_pattern);
		CascadeCsr c22 = patterned_csr(a22, c22_pattern);
		std::vector<float> output;
		getrf_id_t output_nnz;
		call_spmm_schur(l21_logical, u12_logical, c22, output, &output_nnz);
		double schur_error = 0.0;
		for (getrf_id_t i = 0; i < trailing; ++i)
			for (getrf_id_t pos = c22.row[i]; pos < c22.row[i + 1]; ++pos) {
				const getrf_id_t j = c22.col[pos];
				double expected = a22[i][j];
				for (getrf_id_t k = 0; k < panel; ++k)
					expected -= double(l21d[i][k]) * double(u12d[k][j]);
				schur_error = std::max(schur_error,
						std::abs(double(output[pos]) - expected));
			}
		std::cout << "real circuit_3_12127 block: global rows/cols "
				<< global_begin << ':' << global_begin + local_n
				<< " A11_nnz=" << a_nnz << " L11_nnz=" << l_nnz
				<< " U11_nnz=" << u_nnz << " L21_nnz=" << l21_nnz
				<< " U12_nnz=" << u12_nnz << " C_nnz=" << output_nnz << '\n';
		std::cout << "GETRF residual=" << lu_error
				<< " GESSM residual=" << gessm_error
				<< " TSTRF residual=" << tstrf_error
				<< " cascade Schur error=" << schur_error << '\n';
		if (output_nnz != c22.col.size() || lu_error > 2e-4 ||
				gessm_error > 2e-4 || tstrf_error > 2e-4 ||
				schur_error > 2e-3)
			throw std::runtime_error("real-matrix cascade tolerance exceeded");
		std::cout << "PASS real GETRF->GESSM/TSTRF->SSSSM cascade" << std::endl;
#else
		std::cout << "real circuit_3_12127 LU block: global rows/cols "
				<< global_begin << ':' << global_begin + local_n
				<< " A11_nnz=" << a_nnz << " L11_nnz=" << l_nnz
				<< " U11_nnz=" << u_nnz << " L21_nnz=" << l21_nnz
				<< " U12_nnz=" << u12_nnz << '\n';
		std::cout << "GETRF residual=" << lu_error
				<< " GESSM residual=" << gessm_error
				<< " TSTRF residual=" << tstrf_error << '\n';
		if (lu_error > 2e-4 || gessm_error > 2e-4 || tstrf_error > 2e-4)
			throw std::runtime_error("real-matrix LU tolerance exceeded");
		std::cout << "PASS real GETRF/GESSM/TSTRF" << std::endl;
#endif
	} catch (const std::exception& error) {
		std::cerr << error.what() << std::endl;
		return 1;
	}
	return 0;
}
