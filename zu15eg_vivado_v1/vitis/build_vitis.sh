#!/usr/bin/env bash
set -euo pipefail
ROOT=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
if [[ -f /output/xilinx_compat/xilinx_compat.sh ]]; then
  # shellcheck disable=SC1091
  source /output/xilinx_compat/xilinx_compat.sh
fi
command -v xsct >/dev/null 2>&1 || { echo "xsct not found; source the Vivado/Vitis 2022.2 environment" >&2; exit 2; }
xsct "$ROOT/vitis/create_vitis_workspace.tcl"
