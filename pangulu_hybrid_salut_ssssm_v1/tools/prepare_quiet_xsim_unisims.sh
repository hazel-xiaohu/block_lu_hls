#!/usr/bin/env bash
set -euo pipefail

# Build a private copy of the Vivado DSP48E1 simulation model.  This does not
# modify the Vivado installation or its shared precompiled libraries.
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD_DIR="${1:?usage: prepare_quiet_xsim_unisims.sh <hls-build-dir>}"
SIM_VERILOG="${BUILD_DIR}/solution1/sim/verilog"
VIVADO_ROOT="/openbayes/home/tools/Xilinx/Vivado/2022.2"
SRC="${VIVADO_ROOT}/data/vhdl/src/unisims/primitive/DSP48E1.vhd"
VPKG="${VIVADO_ROOT}/data/vhdl/src/unisims/unisim_VPKG.vhd"
VCOMP="${VIVADO_ROOT}/data/vhdl/src/unisims/unisim_VCOMP.vhd"
QUIET_DIR="${PROJECT_ROOT}/tools/quiet_xsim_unisims"

if [[ ! -r "$SRC" || ! -d "$SIM_VERILOG" ]]; then
  echo "quiet_xsim: missing source or generated simulation directory" >&2
  exit 2
fi

mkdir -p "$QUIET_DIR" "${SIM_VERILOG}/xsim.dir/unisim"
cp "$SRC" "$QUIET_DIR/DSP48E1.vhd"
# Keep the DRC state machine, X propagation, and arithmetic semantics intact,
# but silence the DSP48E1 OPMODE report statements.  The model still marks an
# invalid mode and propagates X exactly as the vendor model does; only the
# repeated VHDL warning text is removed.
sed -i "s/assert false report Message.all severity Warning;/null;/g" "$QUIET_DIR/DSP48E1.vhd"

pushd "$SIM_VERILOG" >/dev/null
source /output/xilinx_compat/xilinx_compat.sh
export LANG=C LC_ALL=C
# Start from the vendor's precompiled unisim database so dependent floating
# point IP libraries retain the exact vcomponents package identity.  Compile
# only the patched DSP48E1 entity into this private copy.
for f in ./xsim.dir/unisim/*.vdb ./xsim.dir/unisim/*.rlx; do
  [[ -e "$f" ]] && unlink "$f"
done
cp "$VIVADO_ROOT/data/xsim/vhdl/unisim/unisim.vdb"* ./xsim.dir/unisim/
/openbayes/home/tools/Xilinx/Vivado/2022.2/bin/xvhdl --nolog --work "unisim=./xsim.dir/unisim" "$QUIET_DIR/DSP48E1.vhd"
cp xsim.ini xsim.ini.before_quiet 2>/dev/null || true
sed -i "s#^unisim=.*#unisim=./xsim.dir/unisim#" xsim.ini
popd >/dev/null
echo "quiet_xsim: local unisim DSP48E1 prepared under ${SIM_VERILOG}/xsim.dir/unisim"
