#!/usr/bin/env bash
set -euo pipefail

trace_root=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
input_root="$trace_root/input/multi_symbolic"
output_root=${1:-"$trace_root/outputs/multi_matrix_validation_b512"}

bash "$trace_root/build_lru_simulator.sh"
mkdir -p "$output_root"
for matrix in "$input_root"/*_after_symbolic.mtx; do
  name=$(basename "$matrix" _after_symbolic.mtx)
  output="$output_root/$name"
  mkdir -p "$output"
  "$trace_root/bin/granularity_lru" "$matrix" 512 512 4M,16M "$output" \
    2>&1 | tee "$output/run.log"
done

python3 "$trace_root/summarize_multi_matrix_validation.py" "$output_root"
echo "PB_MULTI_MATRIX_VALIDATION_PASS output=$output_root"
