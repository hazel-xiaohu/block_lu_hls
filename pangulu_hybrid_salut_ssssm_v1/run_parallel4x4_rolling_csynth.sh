#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")" && pwd)"
if [[ -f /output/xilinx_compat/xilinx_compat.sh ]]; then
  source /output/xilinx_compat/xilinx_compat.sh
fi
export LANG=C LC_ALL=C
if ! command -v vitis_hls >/dev/null 2>&1; then
  echo "ERROR: vitis_hls is not in PATH; source the Xilinx/Vitis 2022.2 settings64.sh first." >&2
  exit 127
fi
mkdir -p "$root/artifacts"
cd "$root"
vitis_hls -f hls/scripts/run_parallel4x4_rolling_csynth.tcl 2>&1 | tee artifacts/parallel4x4_rolling_csynth.log
