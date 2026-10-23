#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "$0")" && pwd)"
build="${PB_ROLL_RTL_BUILD:-$root/hls/build/parallel4x4_rolling_wide512_rtl_cosim}"
flat="${PB_ROLL_FLAT:-$root/artifacts/rolling_top1024_nb16.flat.bin}"
log="${PB_ROLL_RTL_LOG:-$build/rolling_rtl_cosim.log}"
timeout_sec="${RTL_TIMEOUT_SEC:-14400}"
mkdir -p "$build"
if [[ -f /output/xilinx_compat/xilinx_compat.sh ]]; then
  source /output/xilinx_compat/xilinx_compat.sh
fi
export LANG=C LC_ALL=C

# The RTL script invokes Vitis HLS directly (rather than through the CSim
# wrapper), so establish the same host-link environment here.  Vivado's
# private binutils linker otherwise cannot see the system startup objects and
# libraries on Ubuntu 22.04.
host_cc="${PB_HOST_CC:-/usr/bin/gcc}"
host_cxx="${PB_HOST_CXX:-/usr/bin/g++}"
if [[ -x "$host_cc" && -x "$host_cxx" ]]; then
  export CC="$host_cc"
  export CXX="$host_cxx"
  unset GCC_EXEC_PREFIX COMPILER_PATH
  crt1="$($host_cc -print-file-name=crt1.o 2>/dev/null || true)"
  crti="$($host_cc -print-file-name=crti.o 2>/dev/null || true)"
  libgcc="$($host_cc -print-file-name=libgcc.a 2>/dev/null || true)"
  lib_dirs=()
  [[ -f "$crt1" ]] && lib_dirs+=("$(dirname "$crt1")")
  [[ -f "$crti" ]] && lib_dirs+=("$(dirname "$crti")")
  [[ -f "$libgcc" ]] && lib_dirs+=("$(dirname "$libgcc")")
  lib_dirs+=(/usr/lib/x86_64-linux-gnu /lib/x86_64-linux-gnu)
  joined=""
  for d in "${lib_dirs[@]}"; do
    [[ -d "$d" ]] || continue
    [[ -n "$joined" ]] && joined+=:
    joined+="$d"
  done
  [[ -n "${LIBRARY_PATH:-}" ]] && joined+="${joined:+:}$LIBRARY_PATH"
  export LIBRARY_PATH="$joined"
  echo "[setup] host linker paths: $LIBRARY_PATH"
fi

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
sim_script="$build/solution1/sim/verilog/run_xsim.sh"
if [[ ! -x "$sim_script" ]]; then
  echo "ERROR: cosim setup did not generate XSIM launcher: $sim_script" >&2
  tail -40 "$build/hls_rtl_setup.log" >&2 || true
  exit 4
fi
echo "PB_RTL_SETUP_DONE sim_script=$sim_script"
echo "PB_RTL_XSIM_START log=$log timeout_sec=$timeout_sec"
timeout "${timeout_sec}s" bash tools/run_quiet_xsim.sh "$build" "$log"
echo "PB_RTL_XSIM_DONE log=$log"
echo "PB_PARALLEL4X4_ROLLING_RTL_DONE log=$log"
