set d [file dirname [file normalize [info script]]]
cd $d
open_project -reset proj_large_getrf_v2
add_files large_sparse_lu.cpp
add_files getrf_v2.cpp
add_files -tb tb_getrf_v2.cpp
set_top large_getrf_v2
open_solution -reset solution1 -flow_target vivado
set_part {xczu15eg-ffvb1156-2-i}
create_clock -period 5.0 -name default
csynth_design
cosim_design -setup -trace_level none -argv "$d/prepared/"
set sim_script "proj_large_getrf_v2/solution1/sim/verilog/run_xsim.sh"
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
exec ./[file tail $sim_script] > run_xsim_v2.stdout 2>@1
exit
