#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/openbayes/home/tools/Xilinx/Vitis/2022.2/bin:/openbayes/home/tools/Xilinx/Vivado/2022.2/bin
else
  PATH=/openbayes/home/tools/Xilinx/Vitis/2022.2/bin:/openbayes/home/tools/Xilinx/Vivado/2022.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/output/block_lu_hls/zu15eg_vivado_v1/vivado_project/block_lu_zu15eg.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log block_lu_bd_wrapper.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source block_lu_bd_wrapper.tcl
