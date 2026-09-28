set script_dir [file dirname [file normalize [info script]]]
cd $script_dir

set ::env(SPMM_DATA_DIR) \
    [file join $script_dir random_filter_empty B]
set ::env(SPMM_A_DATA_DIR) \
    [file join $script_dir random_filter_empty A]
set ::env(SPMM_C_DATA_DIR) \
    [file join $script_dir random_filter_empty C]
set ::env(SPMM_TEST_ROWS) 2048

open_project proj_block_lu_hls
open_solution solution1

#cosim_design -O -trace_level none
#cosim_design -setup
#
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

exit
