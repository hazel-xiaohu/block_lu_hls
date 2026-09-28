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
# 1. 先生成仿真脚本，但不运行
cosim_design -setup -trace_level none

# 2. 自动修改生成的 run_xsim.sh
set sim_script "proj_block_lu_hls/solution1/sim/verilog/run_xsim.sh"
if {[file exists $sim_script]} {
    set fp [open $sim_script r]
    set content [read $fp]
    close $fp

    # 按行处理，只给包含 xelab 的那一行追加 -cc gcc
    set lines [split $content "\n"]
    set new_lines {}
    foreach line $lines {
        if {[string match "*xelab*" $line]} {
            append line " --mt 40 -cc gcc"
        }
        lappend new_lines $line
    }
    set new_content [join $new_lines "\n"]

    set fp [open $sim_script w]
    puts $fp $new_content
    close $fp

    file attributes $sim_script -permissions 0755
    puts "已自动为 run_xsim.sh 添加 -cc gcc 选项并设置执行权限"
} else {
    puts "警告：未找到 $sim_script"
}

if {[file exists $sim_script]} {
    # 切换到脚本所在目录，确保相对路径正确
    set sim_dir [file dirname $sim_script]
    cd $sim_dir
    # 用当前目录下的脚本名执行，避免路径问题
    exec ./[file tail $sim_script]
}
}

exit
