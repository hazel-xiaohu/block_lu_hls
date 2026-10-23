#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")" && pwd)"
build="${PB_ROLL_RTL_BUILD:-$root/hls/build/parallel4x4_rolling_wide512_rtl_cosim}"
flat="${PB_ROLL_FLAT:-$root/artifacts/rolling_top1024_nb16.flat.bin}"
log="${PB_ROLL_RTL_LOG:-$build/rolling_rtl_cosim.log}"
timeout_sec="${RTL_TIMEOUT_SEC:-14400}"
mkdir -p "$build"
source /output/xilinx_compat/xilinx_compat.sh
export LANG=C LC_ALL=C LOCPATH=/output/xilinx_compat/locale
export PB_ROLL_RTL_BUILD="$build"
export PB_ROLL_FLAT="$flat"
export PB_ROLL_MAX_TASKS="${PB_ROLL_MAX_TASKS:-512}"
export PB_ROLL_MAX_EDGES="${PB_ROLL_MAX_EDGES:-1024}"
export PB_ROLL_MAX_MATRICES="${PB_ROLL_MAX_MATRICES:-512}"
export PB_ROLL_PTR_POOL_CAP="${PB_ROLL_PTR_POOL_CAP:-8192}"
export PB_ROLL_LANE_POOL_CAP="${PB_ROLL_LANE_POOL_CAP:-8192}"
export PB_STAGED_PTR_CAP="${PB_STAGED_PTR_CAP:-257}"
export PB_STAGED_LANE_CAP="${PB_STAGED_LANE_CAP:-512}"
export PB_ROLL_RTL_SETUP_ONLY=1
cd "$root"
timeout "${timeout_sec}s" vitis_hls -f hls/scripts/run_parallel4x4_rolling_rtl_cosim.tcl > "$build/hls_rtl_setup.log" 2>&1
unset PB_ROLL_RTL_SETUP_ONLY
timeout "${timeout_sec}s" bash tools/run_quiet_xsim.sh "$build" "$log"
echo "PB_PARALLEL4X4_ROLLING_RTL_DONE log=$log"
