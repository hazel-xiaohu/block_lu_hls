#!/usr/bin/env bash
set -euo pipefail
BUILD_DIR="${1:?usage: run_xsim_filtered.sh <hls-build-dir> <filtered-log>}"
LOG_FILE="${2:?usage: run_xsim_filtered.sh <hls-build-dir> <filtered-log>}"
SIM_VERILOG="${BUILD_DIR}/solution1/sim/verilog"
cd "$SIM_VERILOG"
source /output/xilinx_compat/xilinx_compat.sh
export LANG=C LC_ALL=C
set +e
bash ./run_xsim.sh 2>&1 | grep -v -E 'OPMODE Input Warning|Time: .*DSP48E1|File: .*/DSP48E1\.vhd' > "$LOG_FILE"
rc=${PIPESTATUS[0]}
set -e
exit "$rc"
