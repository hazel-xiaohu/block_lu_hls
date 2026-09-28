#include "large_sparse_lu.h"
#include <algorithm>
#include <cmath>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <stdexcept>
#include <string>
#include <vector>

extern "C" void large_getrf_v2(
    const lslu_id_t*, const lslu_id_t*, const lslu_val_t*,
    const lslu_id_t*, const lslu_id_t*, lslu_val_t*,
    const lslu_id_t*, const lslu_id_t*, lslu_val_t*,
    const lslu_id_t*, lslu_id_t, lslu_val_t, lslu_id_t*,
    uint64_t*, uint64_t*);

template<class T> std::vector<T> load(const std::string& p) {
    std::ifstream f(p, std::ios::binary | std::ios::ate);
    if (!f) throw std::runtime_error(p);
    auto n = f.tellg(); f.seekg(0);
    std::vector<T> v(static_cast<size_t>(n) / sizeof(T));
    f.read(reinterpret_cast<char*>(v.data()), n); return v;
}
struct S { std::vector<lslu_id_t> p, i; std::vector<lslu_val_t> v; };
S sp(const std::string& r, const std::string& n) {
    return {load<lslu_id_t>(r+n+"_ptr.bin"), load<lslu_id_t>(r+n+"_idx.bin"), load<lslu_val_t>(r+n+"_val.bin")};
}
std::vector<lslu_id_t> diag(const S& s) {
    std::vector<lslu_id_t> d(s.p.size()-1);
    for (lslu_id_t r=0; r<d.size(); ++r) {
        d[r] = UINT32_MAX;
        for (lslu_id_t p=s.p[r]; p<s.p[r+1]; ++p) if (s.i[p]==r) d[r]=p;
        if (d[r]==UINT32_MAX) throw std::runtime_error("missing diagonal");
    }
    return d;
}
double max_abs_diff(const std::vector<lslu_val_t>& a, const std::vector<lslu_val_t>& b) {
    double m=0; for (size_t i=0; i<a.size(); ++i) m=std::max(m, std::abs(double(a[i])-double(b[i]))); return m;
}
int main(int ac, char** av) {
    const std::string r = ac>1 ? av[1] : "prepared/";
    auto A=sp(r,"whole_A"), L=sp(r,"whole_L"), U=sp(r,"whole_U");
    auto d=diag(U); const lslu_id_t n=static_cast<lslu_id_t>(A.p.size()-1);
    std::vector<lslu_val_t> lv(L.v.size()), uv(U.v.size());
    lslu_id_t st=0; uint64_t ma=0, dv=0;
    large_getrf_v2(A.p.data(),A.i.data(),A.v.data(),L.p.data(),L.i.data(),lv.data(),
                   U.p.data(),U.i.data(),uv.data(),d.data(),n,1e-30f,&st,&ma,&dv);
    const double el=max_abs_diff(lv,L.v), eu=max_abs_diff(uv,U.v);
    std::cout << "getrf_v2 status=" << st << " n=" << n
              << " max_abs_L=" << el << " max_abs_U=" << eu
              << " muladds=" << ma << " divs=" << dv << "\n";
    if (st!=LSLU_OK || el>2e-4 || eu>2e-4) return 2;
    std::cout << "GETRF_V2_PASS\n";
    return 0;
}
