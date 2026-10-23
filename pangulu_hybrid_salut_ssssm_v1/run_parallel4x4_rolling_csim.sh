#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")" && pwd)"
input_mtx="${PB_ROLL_INPUT_MTX:-$root/hls/tb/data/processed_circuit_1_top1024.mtx}"
nb="${PB_ROLL_NB:-256}"
flat_out="${PB_ROLL_FLAT_OUT:-$root/artifacts/rolling_top1024_nb${nb}.flat.bin}"
mkdir -p "$root/artifacts"
source /output/xilinx_compat/xilinx_compat.sh
export LANG=C LC_ALL=C LOCPATH=/output/xilinx_compat/locale
"$root/host_adapter/build/mtx_to_flat_abi" \
  "$input_mtx" "$flat_out" "$nb" identity
cd "$root"
vitis_hls -f hls/scripts/run_parallel4x4_rolling_csim.tcl
