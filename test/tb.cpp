#include "core.h"
#include <algorithm>
#include <cmath>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <limits>
#include <map>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

using Row = std::vector<std::pair<id_t, float>>;
using Matrix = std::vector<Row>;
struct CSR {
    std::vector<id_t> rp{0}, ci;
    std::vector<float> va;
    explicit CSR(const Matrix& rows) {
        for (const auto& row : rows) {
            for (auto item : row) { ci.push_back(item.first); va.push_back(item.second); }
            rp.push_back(ci.size());
        }
    }
};

template<class T> void pad(std::vector<T>& data, size_t depth, T fill = T()) {
    if (data.size() > depth) throw std::runtime_error("Matrix exceeds interface_depths.h; increase the shared depth and resynthesize");
    data.resize(depth, fill);
}
std::vector<ap_uint<128>> pack(const std::vector<id_t>& data, size_t depth) {
    if ((data.size()+3)/4 > depth) throw std::runtime_error("Packed input exceeds interface depth");
    // ap_uint host objects are not a raw 16-byte memory view. Construct each word.
    std::vector<ap_uint<128>> packed(depth, 0);
    for (size_t i=0; i<data.size(); ++i)
        packed[i/4](i%4*32+31, i%4*32) = data[i];
    return packed;
}
void check(const std::string& label, const Matrix& a, const Matrix& b, const Matrix* initial = nullptr) {
    CSR A(a), B(b);
    std::vector<id_t> expected_rp{0}, expected_ci;
    std::vector<double> expected_val, tolerance;
    for (const auto& row : a) {
        std::map<id_t, double> sums, magnitudes;
        std::map<id_t, unsigned> terms;
        const size_t row_id = expected_rp.size() - 1;
        if (initial) {
            for (auto cv : (*initial)[row_id]) {
                sums[cv.first] += cv.second;
                magnitudes[cv.first] += std::abs(double(cv.second));
                ++terms[cv.first];
            }
        }
        for (auto av : row) {
            if (av.first >= b.size()) throw std::runtime_error("A column outside B dimensions");
            for (auto bv : b[av.first]) {
                const double product = double(av.second)*double(bv.second);
                sums[bv.first] += initial ? -product : product;
                magnitudes[bv.first] += std::abs(product);
                ++terms[bv.first];
            }
        }
        for (auto entry : sums) {
            expected_ci.push_back(entry.first);
            expected_val.push_back(entry.second);
            const double neps = (terms[entry.first]+1)*std::numeric_limits<float>::epsilon();
            tolerance.push_back(1e-6 + neps/(1-neps)*magnitudes[entry.first]);
        }
        expected_rp.push_back(expected_ci.size());
    }
    const id_t annz=A.ci.size(), bnnz=B.ci.size();
    // Every buffer must cover the *declared* depth, including zero-row/zero-nnz
    // cases: the RTL cosim wrapper copies that extent before calling the DUT.
    pad(A.rp, SPMM_ROW_DEPTH);
    pad(A.ci, SPMM_INPUT_DEPTH);
    pad(A.va, SPMM_INPUT_DEPTH);
    auto br=pack(B.rp, SPMM_PACKED_ROW_DEPTH);
    auto bc=pack(B.ci, SPMM_PACKED_INPUT_DEPTH);
    std::vector<id_t> bits;
    for (float value : B.va) { id_t word; memcpy(&word, &value, sizeof word); bits.push_back(word); }
    auto bv=pack(bits, SPMM_PACKED_INPUT_DEPTH);
    if (a.size()+1 >= SPMM_ROW_DEPTH || expected_ci.size() >= SPMM_OUTPUT_DEPTH)
        throw std::runtime_error("Output and guard exceed interface depth");
    std::vector<id_t> cr(SPMM_ROW_DEPTH, TERMINATE), cc(SPMM_OUTPUT_DEPTH, TERMINATE);
    std::vector<float> cv(SPMM_OUTPUT_DEPTH, -999);
#ifdef SPMM_C_SUB_AB
    if (!initial || initial->size() != a.size()) throw std::runtime_error("C_SUB_AB requires an initial C matrix");
    CSR C0(*initial);
    if (C0.rp != expected_rp || C0.ci != expected_ci)
        throw std::runtime_error("C_SUB_AB requires C to contain the A*B sparsity pattern");
    pad(C0.rp, SPMM_ROW_DEPTH, TERMINATE);
    pad(C0.ci, SPMM_OUTPUT_DEPTH, TERMINATE);
    pad(C0.va, SPMM_OUTPUT_DEPTH, -999.0f);
    // C_SUB uses the original C ports as read/write buffers.  Seed them with
    // the old matrix; the DUT reads these entries and writes the result back.
    cr.swap(C0.rp);
    cc.swap(C0.ci);
    cv.swap(C0.va);
#endif
    id_t stats[36]={}, count=TERMINATE;
    std::cout << "RUN " << label << std::endl;
    spmm(A.rp.data(), A.ci.data(), A.va.data(), a.size(), annz,
         br.data(), br.data(), br.data(), br.data(),
         bv.data(), bc.data(), bv.data(), bc.data(), bv.data(), bc.data(), bv.data(), bc.data(),
         b.size(), bnnz,
         bv.data(), bc.data(), bv.data(), bc.data(), bv.data(), bc.data(), bv.data(), bc.data(),
         cr.data(), cc.data(), cv.data(),
         0x100000, 0x200000, 0x300000,
         &stats[0], &stats[1], &stats[2], &stats[3], &stats[4], &stats[5], &stats[6], &stats[7],
         &stats[8], &stats[9], &stats[10], &stats[11], &stats[12], &stats[13], &stats[14], &stats[15],
         &stats[16], &stats[17], &stats[18], &stats[19], &stats[20], &stats[21], &stats[22], &stats[23],
         &stats[24], &stats[25], &stats[26], &stats[27], &stats[28], &stats[29], &stats[30], &stats[31],
         &count, &stats[32], &stats[33], &stats[34], &stats[35]);
    if (count != expected_ci.size() || !std::equal(expected_rp.begin(), expected_rp.end(), cr.begin()))
        throw std::runtime_error(label + ": CSR row pointers/nonzero count mismatch");
    for (size_t i=0; i<expected_ci.size(); ++i) {
        if (cc[i]!=expected_ci[i] || !std::isfinite(cv[i]) || std::abs(double(cv[i])-expected_val[i])>tolerance[i]) {
            std::cerr << "at " << i << ": " << cc[i] << ',' << cv[i] << " expected " << expected_ci[i] << ',' << expected_val[i] << std::endl;
            throw std::runtime_error(label + ": output mismatch");
        }
    }
    if (cr[a.size()+1]!=TERMINATE || cc[expected_ci.size()]!=TERMINATE || cv[expected_ci.size()]!=-999) {
        std::cerr << "guards: rp=" << cr[a.size()+1]
                  << " cid=" << cc[expected_ci.size()]
                  << " val=" << cv[expected_ci.size()] << std::endl;
        throw std::runtime_error(label + ": output guard overwritten");
    }
    std::cout << "PASS " << label << " (nnz=" << count << ")" << std::endl;
}

template<class T> std::vector<T> read_binary(const std::string& path) {
    std::ifstream file(path, std::ios::binary | std::ios::ate);
    if (!file) throw std::runtime_error("Cannot open " + path);
    const auto bytes=file.tellg();
    if (bytes<0 || size_t(bytes)%sizeof(T)) throw std::runtime_error("Invalid file size: " + path);
    std::vector<T> data(size_t(bytes)/sizeof(T));
    file.seekg(0);
    if (bytes && !file.read(reinterpret_cast<char*>(data.data()), bytes)) throw std::runtime_error("Cannot read " + path);
    return data;
}

Matrix read_matrix(const std::string& dir, char matrix_name) {
    std::ifstream csr_probe(dir + "/csr.BIN", std::ios::binary);
    if (csr_probe.good()) {
        auto rp=read_binary<id_t>(dir+"/csr.BIN");
        auto ci=read_binary<id_t>(dir+"/cid.BIN");
        auto va=read_binary<float>(dir+"/val.BIN");
        if (rp.empty() || rp.front()!=0 || rp.back()!=ci.size() || ci.size()!=va.size())
            throw std::runtime_error("Invalid CSR matrix in " + dir);
        Matrix matrix(rp.size()-1);
        for (size_t i=0; i<matrix.size(); ++i) {
            if (rp[i]>rp[i+1] || rp[i+1]>ci.size()) throw std::runtime_error("Invalid CSR row offsets in " + dir);
            for (id_t j=rp[i]; j<rp[i+1]; ++j) matrix[i].push_back({ci[j],va[j]});
        }
        return matrix;
    }

    const std::string prefix=dir+"/1_ssssm_"+std::string(1, matrix_name);
    auto colptr=read_binary<id_t>(prefix+"_colptr.BIN");
    auto rowidx=read_binary<id_t>(prefix+"_rowidx.BIN");
    auto values=read_binary<float>(prefix+"_cscval.BIN");
    if (colptr.empty() || colptr.front()!=0 || colptr.back()!=rowidx.size() || rowidx.size()!=values.size())
        throw std::runtime_error("Invalid CSC matrix in " + dir);
    Matrix matrix(colptr.size()-1);
    for (size_t col=0; col+1<colptr.size(); ++col) {
        if (colptr[col]>colptr[col+1] || colptr[col+1]>rowidx.size())
            throw std::runtime_error("Invalid CSC column offsets in " + dir);
        for (id_t j=colptr[col]; j<colptr[col+1]; ++j)
            if (rowidx[j]>=matrix.size()) throw std::runtime_error("Invalid CSC row index in " + dir);
            else matrix[rowidx[j]].push_back({id_t(col),values[j]});
    }
    for (auto& row : matrix) std::sort(row.begin(), row.end());
    return matrix;
}

int main() {
    try {
        //check("zero output rows", {}, {});
        //check("all A rows empty", Matrix(9), {{{0,2}}, {}, {{1,3}}});
        //check("all B rows empty", {{{0,2}}, {}, {{1,3},{2,4}}, {}}, Matrix(3));
        //check("leading/internal/trailing empty rows", {{},{{1,2}},{},{},{{0,3},{2,4}},{}}, {{{0,2},{2,3}},{},{{1,5}}});
        //check("single task and idle PEs", {{{0,2}}}, {{{2,3}}});
        //Row long_row;
        //for (id_t j=0; j<40; ++j) long_row.push_back({j,float(j%5+1)});
        //check("cached long row with off-chip tail", {{{1,1}},{{1,2}},{},{{1,3}},{{1,4}}}, {{{0,1},{1,2},{2,3}},long_row});
	
        const char* env_dir=std::getenv("SPMM_DATA_DIR");
        const std::string dir=env_dir ? env_dir : "/home/huz/project/SpMM_TCAD/test/random_filter_empty/B";
        const char* env_a_dir=std::getenv("SPMM_A_DATA_DIR");
        const std::string a_dir=env_a_dir ? env_a_dir : "/home/huz/project/SpMM_TCAD/test/random_filter_empty/A";
        const char* env_c_dir=std::getenv("SPMM_C_DATA_DIR");
        const std::string c_dir=env_c_dir ? env_c_dir : "/home/huz/project/SpMM_TCAD/test/random_filter_empty/C";
        const char* env_rows=std::getenv("SPMM_TEST_ROWS");
        const size_t rows=env_rows ? std::stoul(env_rows) : 2048;
        Matrix b=read_matrix(dir, 'B');
        Matrix a=read_matrix(a_dir, 'A');
        Matrix c=read_matrix(c_dir, 'C');
        if (rows>a.size()) throw std::runtime_error("Invalid benchmark row count");
#ifdef SPMM_C_SUB_AB
        if (c.size() != a.size()) throw std::runtime_error("A and C row counts differ");
        Matrix c_prefix(c.begin(), c.begin()+rows);
        check("benchmark first " + std::to_string(rows) + " rows", Matrix(a.begin(),a.begin()+rows), b,
              &c_prefix);
#else
        check("benchmark first " + std::to_string(rows) + " rows", Matrix(a.begin(),a.begin()+rows), b);
#endif
        std::cout << "All SpMM checks passed." << std::endl;
	
    } catch (const std::exception& error) {
        std::cerr << error.what() << std::endl;
        return 1;
    }
    return 0;
}
