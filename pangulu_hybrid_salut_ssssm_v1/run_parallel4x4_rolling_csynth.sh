#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")" && pwd)"
source /output/xilinx_compat/xilinx_compat.sh
export LANG=C LC_ALL=C LOCPATH=/output/xilinx_compat/locale
cd "$root"
vitis_hls -f hls/scripts/run_parallel4x4_rolling_csynth.tcl 2>&1 | tee artifacts/parallel4x4_rolling_csynth.log
