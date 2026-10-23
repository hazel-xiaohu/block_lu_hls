set script_dir [file normalize [file dirname [info script]]]
set root [file normalize "$script_dir/../.."]
set hls [file normalize "$script_dir/.."]
set src "$hls/src"
set tb "$hls/tb"
set cpu "$root/host_adapter/pangulu_cpu"
set build [expr {[info exists ::env(PB_ROLL_CSIM_BUILD)] ?
                 [file normalize $::env(PB_ROLL_CSIM_BUILD)] :
                 "$hls/build/parallel4x4_rolling_csim"}]
set flat [expr {[info exists ::env(PB_ROLL_FLAT)] ?
                [file normalize $::env(PB_ROLL_FLAT)] :
                "$root/artifacts/rolling_top1024_nb256.flat.bin"}]
set max_tasks [expr {[info exists ::env(PB_ROLL_MAX_TASKS)] ? $::env(PB_ROLL_MAX_TASKS) : 64}]
set max_edges [expr {[info exists ::env(PB_ROLL_MAX_EDGES)] ? $::env(PB_ROLL_MAX_EDGES) : 256}]
set max_matrices [expr {[info exists ::env(PB_ROLL_MAX_MATRICES)] ? $::env(PB_ROLL_MAX_MATRICES) : 64}]
set ptr_cap [expr {[info exists ::env(PB_ROLL_PTR_POOL_CAP)] ? $::env(PB_ROLL_PTR_POOL_CAP) : 8192}]
set lane_cap [expr {[info exists ::env(PB_ROLL_LANE_POOL_CAP)] ? $::env(PB_ROLL_LANE_POOL_CAP) : 8192}]
set staged_ptr [expr {[info exists ::env(PB_STAGED_PTR_CAP)] ? $::env(PB_STAGED_PTR_CAP) : 257}]
set staged_lane [expr {[info exists ::env(PB_STAGED_LANE_CAP)] ? $::env(PB_STAGED_LANE_CAP) : 2048}]
file mkdir [file dirname $build]
cd [file dirname $build]
open_project -reset [file tail $build]
set flags "-I$src -DPB_GLOBAL_MAX_MATRICES=$max_matrices -DPB_ROLL_MAX_TASKS=$max_tasks -DPB_ROLL_MAX_EDGES=$max_edges -DPB_ROLL_MAX_MATRICES=$max_matrices -DPB_ROLL_PTR_POOL_CAP=$ptr_cap -DPB_ROLL_PACK_POOL_CAP=$ptr_cap -DPB_ROLL_LANE_POOL_CAP=$lane_cap -DPB_STAGED_PTR_CAP=$staged_ptr -DPB_STAGED_LANE_CAP=$staged_lane"
add_files "$src/pb_csc_kernels.cpp" -cflags $flags
add_files "$src/hybrid_worker_pool.cpp" -cflags $flags
add_files "$src/hybrid_coherent_staged_bridge.cpp" -cflags $flags
add_files "$src/hybrid_parallel4x4_rolling.cpp" -cflags $flags
set tbflags "$flags -I$cpu/include -I$root/host_adapter/include"
add_files -tb "$tb/tb_hybrid_parallel4x4_rolling_mtx.cpp" -cflags $tbflags
add_files -tb "$root/host_adapter/src/pb_mtx_flat_reader.cpp" -cflags $tbflags
set_top pb_hybrid_parallel4x4_rolling
open_solution -reset solution1 -flow_target vivado
set_part xczu15eg-ffvb1156-2-i
create_clock -period 10.0 -name default
csim_design -clean -argv "$flat"
close_project
puts "PB_PARALLEL4X4_ROLLING_CSIM_TCL_PASS"
exit
