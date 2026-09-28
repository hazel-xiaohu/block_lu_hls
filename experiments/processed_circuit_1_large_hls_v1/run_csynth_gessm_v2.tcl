set d [file dirname [file normalize [info script]]]
cd $d
open_project -reset proj_large_gessm_v2
add_files large_sparse_lu.cpp
set_top large_gessm_v2
open_solution -reset solution1 -flow_target vivado
set_part {xczu15eg-ffvb1156-2-i}
create_clock -period 5.0 -name default
csynth_design
exit
