#include "core.h"
#include "vccache.h"
#include "row_wise.h"
#include <vector>
#include <thread>
#include <chrono>
#include <map>
#include <random>
#include <cmath>
#include <cassert>
#include <iostream>
#include <string>
#include <utility>
using Row = std::vector<std::pair<id_t,float>>;
using Matrix = std::vector<Row>;
struct CSR {
    std::vector<id_t> rp{0}, ci;
    std::vector<float> va;
    CSR(const Matrix& m) {
        for (const auto& row:m) {
            for (auto e:row) { ci.push_back(e.first); va.push_back(e.second); }
            rp.push_back(ci.size());
        }
    }
};
std::vector<ap_uint<128>> pack_ids(const std::vector<id_t>& v) {
    std::vector<ap_uint<128>> out((v.size()+3)/4+8,0);
    for (size_t i=0;i<v.size();++i) out[i/4](i%4*32+31,i%4*32)=v[i];
    return out;
}
void check(const std::string& label,const Matrix& a,const Matrix& b) {
    CSR A(a), B(b);
    Matrix expected(a.size());
    for (size_t i=0;i<a.size();++i) {
        std::map<id_t,float> accum;
        for (auto av:a[i]) for (auto bv:b[av.first]) accum[bv.first]+=av.second*bv.second;
        for (auto e:accum) expected[i].push_back(e);
    }
    CSR ref(expected);
    auto br=pack_ids(B.rp), bc=pack_ids(B.ci);
    std::vector<id_t> bits;
    for (float v:B.va) { id_t word; memcpy(&word,&v,4); bits.push_back(word); }
    auto bv=pack_ids(bits);
    // Nonzero tags, as on the target DDR mapping; the existing cache uses tag 0 as invalid.
    id_t rb=0x100000, vb=0x200000, cb=0x300000;
    for (int variant=0;variant<2;++variant) {
        std::vector<id_t> cr(a.size()+1,TERMINATE), cc(ref.ci.size()+4,TERMINATE);
        std::vector<float> cv(ref.va.size()+4,-999);
        id_t stats[64]={}, count=TERMINATE;
        if (variant==0) {
            spmm(
                A.rp.data(), A.ci.data(), A.va.data(), id_t(a.size()),
                id_t(A.ci.size()), br.data(), br.data(), br.data(),
                br.data(), bv.data(), bc.data(), bv.data(),
                bc.data(), bv.data(), bc.data(), bv.data(),
                bc.data(), id_t(b.size()), id_t(B.ci.size()), bv.data(),
                bc.data(), bv.data(), bc.data(), bv.data(),
                bc.data(), bv.data(), bc.data(), cr.data(),
                cc.data(), cv.data(), rb, vb,
                cb, &stats[0], &stats[1], &stats[2],
                &stats[3], &stats[4], &stats[5], &stats[6],
                &stats[7], &stats[8], &stats[9], &stats[10],
                &stats[11], &stats[12], &stats[13], &stats[14],
                &stats[15], &stats[16], &stats[17], &stats[18],
                &stats[19], &stats[20], &stats[21], &stats[22],
                &stats[23], &stats[24], &stats[25], &stats[26],
                &stats[27], &stats[28], &stats[29], &stats[30],
                &stats[31], &count, &stats[32], &stats[33],
                &stats[34], &stats[35]);
        } else {
            spmm_row_wise(
                A.rp.data(), A.ci.data(), A.va.data(), id_t(a.size()),
                id_t(A.ci.size()), B.rp.data(), B.rp.data(), B.rp.data(),
                B.rp.data(), br.data(), br.data(), br.data(),
                br.data(), A.va.data(), A.ci.data(), A.va.data(),
                A.ci.data(), A.va.data(), A.ci.data(), A.va.data(),
                A.ci.data(), bv.data(), bc.data(), bv.data(),
                bc.data(), bv.data(), bc.data(), bv.data(),
                bc.data(), id_t(b.size()), id_t(B.ci.size()), bv.data(),
                bc.data(), bv.data(), bc.data(), bv.data(),
                bc.data(), bv.data(), bc.data(), cr.data(),
                cc.data(), cv.data(), rb, vb,
                cb, &stats[0], &stats[1], &stats[2],
                &stats[3], &stats[4], &stats[5], &stats[6],
                &stats[7], &stats[8], &stats[9], &stats[10],
                &stats[11], &stats[12], &stats[13], &stats[14],
                &stats[15], &stats[16], &stats[17], &stats[18],
                &stats[19], &stats[20], &stats[21], &stats[22],
                &stats[23], &stats[24], &stats[25], &stats[26],
                &stats[27], &stats[28], &stats[29], &stats[30],
                &stats[31], &count);
        }
        if (cr != ref.rp || count != ref.va.size()) {
            std::cerr<<label<<" variant "<<variant<<" row pointers/count mismatch\n";
            for(auto v:cr) std::cerr<<v<<","; std::cerr<<" expected ";
            for(auto v:ref.rp) std::cerr<<v<<","; std::cerr<<" count="<<count<<std::endl;
            abort();
        }
        for (size_t i=0;i<ref.va.size();++i) {
            if (cc[i]!=ref.ci[i] || std::abs(cv[i]-ref.va[i])>1e-5) {
                std::cerr<<label<<" variant "<<variant<<" data mismatch at "<<i<<": "<<cc[i]<<","<<cv[i]<<" expected "<<ref.ci[i]<<","<<ref.va[i]<<std::endl;
                abort();
            }
        }
        assert(cc[ref.va.size()]==TERMINATE && cv[ref.va.size()]==-999);
    }
    std::cout<<"PASS "<<label<<std::endl;
}
void generate_data(B_request_stream*, ap_uint<128>*, ap_uint<128>*, block_stream*, block_stream*);
void collector(internal_control_stream*, cacheline_stream*, B_data_stream*, block_stream*, bool_stream*);
void check_cache_hit_tail_order() {
    internal_control_stream control;
    cacheline_stream prefix;
    B_data_stream tail;
    block_stream result;
    bool_stream hit;
    internal_control row = {};
    row.brlen = 36;
    control.write(row);
    row.end = true;
    control.write(row);
    hit.write(true);
    ap_uint<128> last = 0;
    for (unsigned j=0; j<4; ++j) last(j*32+31,j*32)=33+j;
    tail.write(last); // Intentionally deliver the off-chip tail first.
    std::thread worker([&] { collector(&control,&prefix,&tail,&result,&hit); });
    std::this_thread::sleep_for(std::chrono::milliseconds(30));
    assert(result.empty()); // The cached prefix is still missing.
    ap_uint<1024> first = 0;
    for (unsigned j=0; j<32; ++j) first(j*32+31,j*32)=j+1;
    prefix.write(first);
    for (unsigned i=0; i<9; ++i) {
        block item = result.read();
        assert(item.begin==0 && item.end==3);
        for (unsigned j=0; j<4; ++j) assert(item.data(j*32+31,j*32)==i*4+j+1);
    }
    worker.join();
    assert(control.empty() && prefix.empty() && tail.empty() && hit.empty() && result.empty());
    std::cout << "PASS cache hit tail arrives before prefix" << std::endl;
}

void check_cache_fill_validity() {
    for (unsigned target=0; target<2; ++target) {
        vcrequest_stream requests;
        vcresponse_stream responses;
        vcresult_stream results;
        id_t accesses=0, hits=0;
        std::thread worker([&] {
            if (target==B_VAL) vcache(&requests,0x200000,&responses,&results,&accesses,&hits);
            else ccache(&requests,0x300000,&responses,&results,&accesses,&hits);
        });
        vccache_request request = {};
        request.peID=1; request.target=target; request.brlen=8;
        request.type=CACHE_WRITE;
        for (unsigned j=0;j<4;++j) request.data(j*32+31,j*32)=j+1;
        requests.write(request);
        request.type=CACHE_FIRST_READ;
        requests.write(request);
        assert(responses.read().result==CACHE_FIRST_MISS);
        request.type=CACHE_WRITE;
        for (unsigned i=1;i<8;++i) {
            request.write_idx=i;
            for (unsigned j=0;j<4;++j) request.data(j*32+31,j*32)=i*4+j+1;
            requests.write(request);
        }
        request.type=CACHE_FIRST_READ;
        requests.write(request);
        assert(responses.read().result==CACHE_FIRST_HIT);
        vccache_result result=results.read();
        for (unsigned j=0;j<32;++j) assert(result.data(j*32+31,j*32)==j+1);
        request.end=true;
        requests.write(request);
        assert(results.read().end && responses.read().end);
        worker.join();
        assert(accesses==2 && hits==1 && requests.empty() && responses.empty() && results.empty());
    }
    std::cout << "PASS partial cache fills are misses (value and column caches)" << std::endl;
}

int main() {
    check_cache_fill_validity();
    check_cache_hit_tail_order();
    // Direct-access guard: an empty B row must not dereference either pointer,
    // regardless of whether the CSR offset lies on a packed-word boundary.
    for (id_t offset : {0u, 1u, 3u, 4u, 7u}) {
        B_request_stream requests;
        block_stream values, columns;
        B_row_request request = {};
        request.bridx = offset;
        requests.write(request);
        request.end = true;
        requests.write(request);
        generate_data(&requests, nullptr, nullptr, &values, &columns);
        assert(values.empty() && columns.empty() && requests.empty());
    }
    std::cout<<"PASS empty B direct-access guards"<<std::endl;
    Row cached_long_row;
    for (id_t j=0; j<40; ++j) cached_long_row.push_back({j,float(j%5+1)});
    check("cached long row with off-chip tail", {{{1,1}},{{1,2}}, {},{{1,3}},{{1,4}}},
          {{{0,1},{1,2},{2,3}},cached_long_row});
    check("zero rows",{},{});
    check("zero inner dimension",Matrix(9),{});
    check("all A empty",Matrix(9),{{{0,2}}, {}, {{1,3}}});
    check("all B empty",{{{0,2}}, {}, {{1,3},{2,4}}, {}},Matrix(3));
    check("leading middle consecutive trailing",{{},{{1,2}}, {},{},{{0,3},{2,4}},{}},{{{0,2},{2,3}}, {}, {{1,5}}});
    check("signed fractional values",{{},{{0,0.5f},{1,-2.0f}},{}},{{{1,-3.0f},{2,1.25f}},{{1,-0.75f},{3,2.0f}}});
    check("one multiply idle PEs",{{{0,2}}},{{{2,3}}});
    check("first/last B row empty",{{{0,1},{1,2},{2,3}},{{0,4}},{{2,5}}},{{},{{0,6}}, {}});
    check("empty after unaligned B row",{{{0,2},{1,3},{2,4},{3,5}}},{{{0,1}}, {},{{2,2},{3,3}}, {}});
    Matrix many(2050); many[1025]={{0,2}};
    check("2049 empty A rows",many,{{{1,3}}});
    Row longrow; for(id_t j=0;j<23;++j)longrow.push_back({j,float(j%5+1)});
    check("cached rows mixed with empties",{{{0,1},{1,2},{2,3}}, {},{{1,4}},{{0,2},{2,3}}},{{},longrow,{{3,2},{25,3}}});
    Row many_tasks; for(id_t k=0;k<40;++k) many_tasks.push_back({k,float(k%3+1)});
    Matrix b40(40); for(id_t k=0;k<40;++k) if(k%3) b40[k]={{0,2},{id_t(k%7+1),3},{9,4}};
    check("many partials and empty tasks",{many_tasks,{},many_tasks},b40);
    std::mt19937 gen(42);
    for(int t=0;t<20;++t) {
        Matrix a(1+gen()%12), b(1+gen()%12);
        for(auto& row:a) for(id_t k=0;k<b.size();++k) if(gen()%4==0) row.push_back({k,float(1+gen()%4)});
        for(auto& row:b) for(id_t j=0;j<9;++j) if(gen()%4==0) row.push_back({j,float(1+gen()%4)});
        check("random "+std::to_string(t),a,b);
    }
}
