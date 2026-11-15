#!/usr/bin/env bash
set -euo pipefail

trace_root=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
matrix=${1:-"$trace_root/input/Zd_Jac3_db_after_symbolic.mtx"}
output_root=${2:-"$trace_root/outputs/capacity_grain_scan"}
capacities=${CACHE_CAPACITIES:-"1M,4M,8M,16M,32M"}
grains=${GRAIN_SIZES:-"256 512 1024"}

bash "$trace_root/build_lru_simulator.sh"
mkdir -p "$output_root"

for grain in $grains; do
  output="$output_root/block_b${grain}"
  mkdir -p "$output"
  "$trace_root/bin/granularity_lru" \
    "$matrix" "$grain" "$grain" "$capacities" "$output" \
    2>&1 | tee "$output/run.log"
done

python3 "$trace_root/summarize_capacity_grain_scan.py" "$output_root"
echo "PB_CAPACITY_GRAIN_SCAN_PASS output=$output_root"
