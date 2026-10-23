#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "$0")" && pwd)"
input_mtx="${PB_ROLL_INPUT_MTX:-$root/hls/tb/data/processed_circuit_1_top1024.mtx}"
artifact_dir="${PB_ROLL_ARTIFACT_DIR:-$root/artifacts}"
flat="$artifact_dir/rolling_top1024_nb16.flat.bin"
csim_build="${PB_ROLL_CSIM_BUILD:-$root/hls/build/parallel4x4_rolling_nb16_wide512_csim}"
mkdir -p "$artifact_dir"

if [[ -f /output/xilinx_compat/xilinx_compat.sh ]]; then
  source /output/xilinx_compat/xilinx_compat.sh
fi
export LANG=C LC_ALL=C

if [[ ! -x "$root/host_adapter/build/mtx_to_flat_abi" ]]; then
  echo "[setup] building host-side Matrix Market adapter"
  "$root/host_adapter/build_mtx_to_flat_abi.sh"
fi
if [[ ! -x "$root/host_adapter/build/model_rolling_dag_cycles" ]]; then
  echo "[setup] building DAG cycle model"
  "$root/host_adapter/build_dag_cycle_model.sh"
fi
if ! command -v vitis_hls >/dev/null 2>&1; then
  echo "ERROR: vitis_hls is not in PATH; source the Xilinx/Vitis 2022.2 settings64.sh first." >&2
  exit 127
fi

"$root/host_adapter/build/mtx_to_flat_abi" "$input_mtx" "$flat" 16 identity

PB_ROLL_CSIM_BUILD="$csim_build" \
PB_ROLL_FLAT="$flat" \
PB_ROLL_MAX_TASKS=512 PB_ROLL_MAX_EDGES=1024 PB_ROLL_MAX_MATRICES=512 \
PB_ROLL_PTR_POOL_CAP=8192 PB_ROLL_PACK_POOL_CAP=8192 PB_ROLL_LANE_POOL_CAP=8192 \
PB_STAGED_PTR_CAP=257 PB_STAGED_LANE_CAP=512 \
vitis_hls -f "$root/hls/scripts/run_parallel4x4_rolling_csim.tcl" \
  2>&1 | tee "$artifact_dir/rolling_top1024_nb16_wide512_csim.log"

"$root/host_adapter/build/model_rolling_dag_cycles" "$flat" \
  22814 27650 9701 10073 | tee "$artifact_dir/rolling_top1024_nb16_dag_cycles.log"
