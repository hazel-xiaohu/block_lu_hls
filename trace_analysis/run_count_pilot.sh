#!/usr/bin/env bash
set -euo pipefail

trace_root=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
matrix=${1:-"$trace_root/input/Zd_Jac3_db_after_symbolic.mtx"}
output_root=${2:-"$trace_root/outputs/granularity_pilot"}

for grain in 256 512 1024; do
  python3 "$trace_root/analyze_reuse.py" symbolic \
    --matrix "$matrix" \
    --block-size "$grain" \
    --segment-height "$grain" \
    --scope block-trailing \
    --output "$output_root/block_b${grain}"
done

echo "PB_GRANULARITY_PILOT_PASS output=$output_root"
