#!/usr/bin/env bash
set -euo pipefail

# Full shared-pool/dependency protocol gate for the 510-task NB=16 DAG.
# PB_ROLL_DIAG_STUB_KERNEL intentionally keeps this gate focused on pool
# ownership, staging, commit/ack, and successor release.  CSim still executes
# the real arithmetic path; remove the macro only for the separate arithmetic
# RTL gate.
root="$(cd "$(dirname "$0")" && pwd)"
build="${PB_ROLL_RTL_BUILD:-$root/hls/build/rolling510_externalcache_ready64}"
flat="${PB_ROLL_FLAT:-$root/artifacts/rolling_top1024_nb16.flat.bin}"
timeout_sec="${RTL_TIMEOUT_SEC:-14400}"

if [[ -f /output/xilinx_compat/xilinx_compat.sh ]]; then
  source /output/xilinx_compat/xilinx_compat.sh
fi
export LANG=C LC_ALL=C
if ! command -v vitis_hls >/dev/null 2>&1; then
  echo "ERROR: vitis_hls is not in PATH; source the Xilinx/Vitis 2022.2 settings64.sh first." >&2
  exit 127
fi
if [[ ! -x "$root/host_adapter/build/mtx_to_flat_abi" ]]; then
  "$root/host_adapter/build_mtx_to_flat_abi.sh"
fi
if [[ ! -f "$flat" ]]; then
  "$root/host_adapter/build/mtx_to_flat_abi" \
    "$root/hls/tb/data/processed_circuit_1_top1024.mtx" "$flat" 16 identity
fi
export PB_ROLL_RTL_BUILD="$build"
export PB_ROLL_FLAT="$flat"
export PB_ROLL_MAX_TASKS=512
export PB_ROLL_MAX_EDGES=1024
export PB_ROLL_MAX_MATRICES=400
export PB_ROLL_PTR_POOL_CAP=6800
export PB_ROLL_PACK_POOL_CAP=6800
export PB_ROLL_LANE_POOL_CAP=4530
export PB_STAGED_PTR_CAP=33
export PB_STAGED_LANE_CAP=64
export PB_ROLL_EXTRA_DEFS="-DPB_ROLL_EXTERNAL_POOL_CACHE -DPB_ROLL_DIAG_STUB_KERNEL"

mkdir -p "$build"
cd "$root"
PB_ROLL_RTL_SETUP_ONLY=1 timeout "${timeout_sec}s" \
  vitis_hls -f hls/scripts/run_parallel4x4_rolling_rtl_cosim.tcl \
  2>&1 | tee "$build/hls_rtl_setup.log"

unset PB_ROLL_RTL_SETUP_ONLY
sim_dir="$build/solution1/sim/verilog"
mkdir -p "$sim_dir"
cd "$sim_dir"
source /output/xilinx_compat/xilinx_compat.sh
export LANG=C LC_ALL=C LOCPATH=/output/xilinx_compat/locale
timeout "${timeout_sec}s" bash ./run_xsim.sh \
  2>&1 | tee "$build/rolling510_xsim.log"

grep -q 'PB_ROLLING_MTX_PASS.*tasks=510.*completed=510.*status=0' \
  "$build/hls_rtl_setup.log"
grep -q '\$finish called' "$build/rolling510_xsim.log"
echo "PB_ROLLING_POOL_510_PASS build=$build"
