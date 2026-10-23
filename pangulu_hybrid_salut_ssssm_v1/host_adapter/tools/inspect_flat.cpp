#include "pb_mtx_flat_adapter.hpp"
#include <algorithm>
#include <cstdio>
#include <string>

int main(int argc, char **argv) {
    if (argc != 2) return 2;
    pb_mtx_flat_image x;
    std::string e;
    int rc = pb_mtx_flat_read_binary(argv[1], x, e);
    if (rc) { std::fprintf(stderr, "rc=%d error=%s\n", rc, e.c_str()); return 1; }
    pb_hls_u32 max_ptr=0,max_pack=0,max_lane=0;
    pb_hls_u64 sum_ptr=0,sum_pack=0,sum_lane=0;
    for (const auto &m : x.matrices) {
        max_ptr=std::max(max_ptr,m.ptr_length); max_pack=std::max(max_pack,m.pack_ptr_length);
        max_lane=std::max(max_lane,m.lane_length);
        sum_ptr += m.ptr_length; sum_pack += m.pack_ptr_length; sum_lane += m.lane_length;
    }
    std::printf("n=%u nb=%u blocks=%u active=%u matrices=%u tasks=%u edges=%u\n",
                x.n,x.nb,x.block_count,x.active_block_count,x.matrix_count,x.task_count,x.edge_count);
    std::printf("pools ptr=%zu pack=%zu lane=%zu max_ptr=%u max_pack=%u max_lane=%u sum_ptr=%llu sum_pack=%llu sum_lane=%llu\n",
                x.ptr_pool.size(),x.pack_ptr_pool.size(),x.lane0_pool.size(),max_ptr,max_pack,max_lane,
                (unsigned long long)sum_ptr,(unsigned long long)sum_pack,(unsigned long long)sum_lane);
    std::printf("successor_ptr_last=%u\n", x.successor_ptr.empty()?0:x.successor_ptr.back());
    return 0;
}
