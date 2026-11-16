#!/usr/bin/env bash
set -euo pipefail

trace_root=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
hybrid_root=${PB_HYBRID_ROOT:-/output/pangulu_hybrid_salut_ssssm_v1}
matrix=${1:-"$trace_root/input/Zd_Jac3_db_after_symbolic.mtx"}
output=${2:-"$trace_root/outputs/board_capacity"}

utilization_report=${PB_UTILIZATION_REPORT:-"$hybrid_root/vivado_parallel4x4_v1/project/pangulu_parallel4x4_zu15eg.runs/impl_1/pangulu_parallel4x4_bd_wrapper_utilization_placed.rpt"}
hierarchical_report=${PB_HIERARCHICAL_REPORT:-"$hybrid_root/vivado_parallel4x4_v1/output/utilization_hier.rpt"}
timing_report=${PB_TIMING_REPORT:-"$hybrid_root/vivado_parallel4x4_v1/output/timing_summary.rpt"}

mkdir -p "$output/resource" "$output/replay_b512"
python3 "$trace_root/derive_board_capacity.py" \
  --utilization-report "$utilization_report" \
  --hierarchical-report "$hierarchical_report" \
  --timing-report "$timing_report" \
  --output "$output/resource"

capacity=$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["lua_net_capacity"]["cache_line_aligned_bytes"])' "$output/resource/board_capacity_budget.json")

bash "$trace_root/build_lru_simulator.sh"
"$trace_root/bin/granularity_lru" \
  "$matrix" 512 512 "$capacity" "$output/replay_b512" \
  2>&1 | tee "$output/replay_b512/run.log"

python3 "$trace_root/summarize_board_capacity.py" \
  --budget "$output/resource/board_capacity_budget.json" \
  --traffic "$output/replay_b512/cache_traffic.csv" \
  --output "$output"

echo "PB_BOARD_CAPACITY_EXPERIMENT_PASS cache_bytes=$capacity output=$output"
