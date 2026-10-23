#!/usr/bin/env bash
set -euo pipefail
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD_DIR="$(readlink -f "${1:?usage: run_quiet_xsim.sh <hls-build-dir> <log-file>}")"
LOG_FILE="$(readlink -m "${2:?usage: run_quiet_xsim.sh <hls-build-dir> <log-file>}")"
SIM_VERILOG="${BUILD_DIR}/solution1/sim/verilog"
RUN_LOCAL="${SIM_VERILOG}/run_xsim_quiet_local.sh"

"${PROJECT_ROOT}/tools/prepare_quiet_xsim_unisims.sh" "${BUILD_DIR}"

sed 's#-L unisims_ver #-L unisim=./xsim.dir/unisim -L unisims_ver #' \
  "${SIM_VERILOG}/run_xsim.sh" > "${RUN_LOCAL}"
chmod +x "${RUN_LOCAL}"
cd "$SIM_VERILOG"
source /output/xilinx_compat/xilinx_compat.sh
export LANG=C LC_ALL=C
bash "./$(basename "$RUN_LOCAL")" > "$LOG_FILE" 2>&1

if grep -q 'OPMODE Input Warning' "$LOG_FILE"; then
  echo "quiet_xsim: DSP48E1 OPMODE warning suppression failed" >&2
  exit 3
fi

# Reproduce the final C post-check normally launched by Vitis HLS after XSIM.
POSTCHECK="${BUILD_DIR}/solution1/sim/wrapc_pc/cosim.pc.exe"
if [[ ! -x "$POSTCHECK" ]]; then
  echo "quiet_xsim: missing C post-check executable: ${POSTCHECK}" >&2
  exit 4
fi
(
  cd "$(dirname "$POSTCHECK")"
  ./cosim.pc.exe
) >> "$LOG_FILE" 2>&1

echo "quiet_xsim: PASS, log=${LOG_FILE}"
