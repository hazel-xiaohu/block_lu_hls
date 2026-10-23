#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")" && pwd)"
input_mtx="${PB_ROLL_INPUT_MTX:-$root/hls/tb/data/processed_circuit_1_top1024.mtx}"
nb="${PB_ROLL_NB:-256}"
flat_out="${PB_ROLL_FLAT_OUT:-$root/artifacts/rolling_top1024_nb${nb}.flat.bin}"
mkdir -p "$root/artifacts"
if [[ -f /output/xilinx_compat/xilinx_compat.sh ]]; then
  # Optional compatibility environment used by the original Ubuntu 22.04 host.
  source /output/xilinx_compat/xilinx_compat.sh
fi
export LANG=C LC_ALL=C

if [[ ! -x "$root/host_adapter/build/mtx_to_flat_abi" ]]; then
  echo "[setup] building host-side Matrix Market adapter"
  "$root/host_adapter/build_mtx_to_flat_abi.sh"
fi

if ! command -v vitis_hls >/dev/null 2>&1; then
  echo "ERROR: vitis_hls is not in PATH; source the Xilinx/Vitis 2022.2 settings64.sh first." >&2
  exit 127
fi
"$root/host_adapter/build/mtx_to_flat_abi" \
  "$input_mtx" "$flat_out" "$nb" identity
cd "$root"
vitis_hls -f hls/scripts/run_parallel4x4_rolling_csim.tcl
