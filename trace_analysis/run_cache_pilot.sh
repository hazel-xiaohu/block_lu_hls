#!/usr/bin/env bash
set -euo pipefail

trace_root=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
matrix=${1:-"$trace_root/input/Zd_Jac3_db_after_symbolic.mtx"}
output=${2:-"$trace_root/outputs/granularity_pilot/block_b512_cache"}
capacities=${3:-"4M,16M"}

mkdir -p "$output"
bash "$trace_root/build_lru_simulator.sh"

"$trace_root/bin/granularity_lru" \
  "$matrix" 512 512 "$capacities" "$output" \
  2>&1 | tee "$output/run.log"

echo "PB_CACHE_PILOT_PASS output=$output"
