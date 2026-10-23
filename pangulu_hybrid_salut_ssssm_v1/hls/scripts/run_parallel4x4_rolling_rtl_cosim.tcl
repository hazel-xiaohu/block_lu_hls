set script_dir [file normalize [file dirname [info script]]]
set root [file normalize "$script_dir/../.."]
set hls [file normalize "$script_dir/.."]
set src "$hls/src"
set tb "$hls/tb"
set host "$root/host_adapter"
set cpu "/output/block_lu_hls/pangulu_dual_schedule_fpga_v1/03_vitis/pangulu_cpu"
set build [expr {[info exists ::env(PB_ROLL_RTL_BUILD)] ?
                 [file normalize $::env(PB_ROLL_RTL_BUILD)] :
                 "$hls/build/parallel4x4_rolling_wide512_rtl_cosim"}]
set flat [expr {[info exists ::env(PB_ROLL_FLAT)] ?
                [file normalize $::env(PB_ROLL_FLAT)] :
                "$root/artifacts/rolling_top1024_nb16.flat.bin"}]
set max_tasks [expr {[info exists ::env(PB_ROLL_MAX_TASKS)] ? $::env(PB_ROLL_MAX_TASKS) : 512}]
set max_edges [expr {[info exists ::env(PB_ROLL_MAX_EDGES)] ? $::env(PB_ROLL_MAX_EDGES) : 1024}]
set max_matrices [expr {[info exists ::env(PB_ROLL_MAX_MATRICES)] ? $::env(PB_ROLL_MAX_MATRICES) : 512}]
set ptr_cap [expr {[info exists ::env(PB_ROLL_PTR_POOL_CAP)] ? $::env(PB_ROLL_PTR_POOL_CAP) : 8192}]
set lane_cap [expr {[info exists ::env(PB_ROLL_LANE_POOL_CAP)] ? $::env(PB_ROLL_LANE_POOL_CAP) : 8192}]
set staged_ptr [expr {[info exists ::env(PB_STAGED_PTR_CAP)] ? $::env(PB_STAGED_PTR_CAP) : 257}]
set staged_lane [expr {[info exists ::env(PB_STAGED_LANE_CAP)] ? $::env(PB_STAGED_LANE_CAP) : 512}]
file mkdir [file dirname $build]
cd [file dirname $build]
open_project -reset [file tail $build]
set extra_defs [expr {[info exists ::env(PB_ROLL_EXTRA_DEFS)] ? $::env(PB_ROLL_EXTRA_DEFS) : ""}]
set defs "-I$src -I$host/include -I$cpu/include -DPB_GLOBAL_MAX_MATRICES=$max_matrices -DPB_ROLL_MAX_TASKS=$max_tasks -DPB_ROLL_MAX_EDGES=$max_edges -DPB_ROLL_MAX_MATRICES=$max_matrices -DPB_ROLL_PTR_POOL_CAP=$ptr_cap -DPB_ROLL_PACK_POOL_CAP=$ptr_cap -DPB_ROLL_LANE_POOL_CAP=$lane_cap -DPB_STAGED_PTR_CAP=$staged_ptr -DPB_STAGED_LANE_CAP=$staged_lane $extra_defs"
add_files "$src/pb_csc_kernels.cpp" -cflags $defs
add_files "$src/hybrid_worker_pool.cpp" -cflags $defs
add_files "$src/hybrid_coherent_staged_bridge.cpp" -cflags $defs
add_files "$src/hybrid_parallel4x4_rolling.cpp" -cflags $defs
add_files -tb "$tb/tb_hybrid_parallel4x4_rolling_mtx.cpp" -cflags $defs
add_files -tb "$host/src/pb_mtx_flat_reader.cpp" -cflags $defs
set_top pb_hybrid_parallel4x4_rolling
open_solution -reset solution1 -flow_target vivado
set_part xczu15eg-ffvb1156-2-i
create_clock -period 10.0 -name default
config_compile -pipeline_loops 0
if {[info exists ::env(PB_ROLL_DATAFLOW_STRICT_OFF)] && $::env(PB_ROLL_DATAFLOW_STRICT_OFF) eq "1"} {
    # Diagnostic/concurrency experiment only.  The real multi-worker design
    # must eventually give each worker a distinct AXI master/bank; disabling
    # this check lets us inspect the DATAFLOW handshake before that ABI split.
    config_dataflow -strict_mode off
}
csim_design -clean -argv "$flat"
csynth_design
set args [list -rtl verilog -tool xsim -trace_level none -disable_dependency_check -argv $flat]
if {[info exists ::env(PB_ROLL_RTL_SETUP_ONLY)] && $::env(PB_ROLL_RTL_SETUP_ONLY) eq "1"} {
    lappend args -setup
}
eval cosim_design $args
close_project
puts "PB_PARALLEL4X4_ROLLING_RTL_COSIM_TCL_PASS"
exit
