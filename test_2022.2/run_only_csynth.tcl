set script_dir [file dirname [file normalize [info script]]]
cd $script_dir

set ::env(SPMM_DATA_DIR)   [file join $script_dir random_filter_empty B]
set ::env(SPMM_A_DATA_DIR) [file join $script_dir random_filter_empty A]
set ::env(SPMM_C_DATA_DIR) [file join $script_dir random_filter_empty C]
set ::env(SPMM_TEST_ROWS) 978

open_project proj_block_lu_hls
open_solution solution1
csim_design
csynth_design
exit
