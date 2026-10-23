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

# Vitis HLS 2022.2 may select its private binutils/ld for the generated
# csim link.  Keep the Xilinx compiler front-end, but explicitly expose the
# host GCC startup objects and system libraries (crt1.o, crti.o, libm,
# libpthread) through GCC's LIBRARY_PATH.  This is harmless for hosts where
# HLS already discovers the paths and fixes Ubuntu installations where the
# private ld otherwise reports them as missing.
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
