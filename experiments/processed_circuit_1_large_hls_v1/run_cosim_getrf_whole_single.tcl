set d [file dirname [file normalize [info script]]]
cd $d
open_project -reset proj_large_getrf_whole_single
add_files large_sparse_lu.cpp
add_files -tb tb_large_sparse_lu_whole.cpp
set_top large_getrf
open_solution -reset solution1 -flow_target vivado
set_part {xczu15eg-ffvb1156-2-i}
create_clock -period 5.0 -name default
csynth_design
cosim_design -setup -trace_level none -argv "$d/prepared/"
set sim_script "proj_large_getrf_whole_single/solution1/sim/verilog/run_xsim.sh"
set fp [open $sim_script r]
set content [read $fp]
close $fp
set lines [split $content "\n"]
set out {}
foreach line $lines {
  if {[string match "*xelab*" $line] && ![string match "* -cc gcc*" $line]} { append line " --mt 2 -cc gcc" }
  lappend out $line
}
set fp [open $sim_script w]
puts $fp [join $out "\n"]
close $fp
file attributes $sim_script -permissions 0755
set sim_dir [file dirname $sim_script]
cd $sim_dir
exec ./[file tail $sim_script] > run_xsim_full.stdout 2>@1
exit
