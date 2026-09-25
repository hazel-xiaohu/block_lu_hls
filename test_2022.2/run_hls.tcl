# Vitis HLS 2022.2 entry point for the SSSSM/SpMM kernel.
# Run with:
#   vitis_hls -f run_hls.tcl
# from this directory, or pass the absolute path to this file.

set script_dir [file dirname [file normalize [info script]]]
cd $script_dir

# Keep the test data independent of the caller's working directory.  These
# values are inherited by the generated CSim/cosim executables.
set ::env(SPMM_DATA_DIR)   [file join $script_dir random_filter_empty B]
set ::env(SPMM_A_DATA_DIR) [file join $script_dir random_filter_empty A]
set ::env(SPMM_C_DATA_DIR) [file join $script_dir random_filter_empty C]
if {![info exists ::env(SPMM_TEST_ROWS)]} {
    set ::env(SPMM_TEST_ROWS) 2048
}

open_project -reset proj_block_lu_hls

# Use one Tcl list for the design sources and add the testbench exactly once.
add_files [list core.cpp pe.cpp rcache.cpp util.cpp vccache.cpp] \
    -cflags {-DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB}
add_files -tb tb.cpp \
    -cflags {-DSPMM_COSIM_RANDOM_EMPTY -DSPMM_C_SUB_AB}

set_top spmm
open_solution -reset solution1 -flow_target vivado
set_part {xczu15eg-ffvb1156-2-i}
create_clock -period 5.0 -name default

# hls_exec: 0=CSim only, 1=CSim+CSynth, 2=CSim+CSynth+Cosim.
if {[info exists ::env(SPMM_HLS_EXEC)]} {
    set hls_exec $::env(SPMM_HLS_EXEC)
} elseif {![info exists hls_exec]} {
    set hls_exec 2
}

csim_design

if {$hls_exec >= 1} {
    csynth_design
}
if {$hls_exec >= 2} {
#    cosim_design -trace_level none 
#    cosim_design -setup
# 1. 先生成仿真脚本，但不运行
cosim_design -setup -trace_level none
set sim_script "proj_block_lu_hls/solution1/sim/verilog/run_xsim.sh"
if {[file exists $sim_script]} {
    set fp [open $sim_script r]
    set content [read $fp]
    close $fp

    # 在 xelab 所在行末尾加上 -cc gcc（假设 xelab 命令独占一行）
    regsub -all {(xelab .*)} $content "\\1 -cc gcc" new_content

    set fp [open $sim_script w]
    puts $fp $new_content
    close $fp
    puts "已自动为 run_xsim.sh 添加 -cc gcc 选项"
}

# 3. 手动执行修改后的脚本，完成仿真
exec ./$sim_script
}

exit
