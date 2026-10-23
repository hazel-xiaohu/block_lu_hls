#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cpu_root="/output/block_lu_hls/pangulu_dual_schedule_fpga_v1/03_vitis/pangulu_cpu"
inc="$cpu_root/include"
out="$root/host_adapter/build"
mkdir -p "$out"

cc=${CC:-gcc}
cxx=${CXX:-g++}
cflags=(-O2 -std=c11 -I"$inc" -DPB_VALUE_TYPE=float)
sources=(
  pb_arena.c pb_matrix.c pb_mtx.c pb_normalize.c pb_reorder.c pb_reorder_io.c
  pb_symbolic.c pb_analysis.c pb_block_sparse.c pb_block_lu.c pb_leftlooking.c
  pb_runtime.c pb_kernels.c
)

for src in "${sources[@]}"; do
  "$cc" "${cflags[@]}" -c "$cpu_root/src/$src" -o "$out/${src%.c}.o"
done

"$cxx" -O2 -std=c++17 -I"$inc" -I"$root/hls/src" \
  -I"$root/host_adapter/include" \
  "$root/host_adapter/src/pb_mtx_flat_adapter.cpp" \
  "$root/host_adapter/tools/mtx_to_flat_abi.cpp" \
  "$out"/*.o -lm -o "$out/mtx_to_flat_abi"

"$cxx" -O2 -std=c++17 -I"$inc" -I"$root/hls/src" \
  -I"$root/host_adapter/include" \
  "$root/host_adapter/src/pb_mtx_flat_adapter.cpp" \
  "$root/host_adapter/src/pb_ddr_runtime_pool.cpp" \
  "$root/host_adapter/tools/runtime_pool_smoke.cpp" \
  "$out"/*.o -lm -o "$out/runtime_pool_smoke"
echo "built $out/mtx_to_flat_abi"
echo "built $out/runtime_pool_smoke"
