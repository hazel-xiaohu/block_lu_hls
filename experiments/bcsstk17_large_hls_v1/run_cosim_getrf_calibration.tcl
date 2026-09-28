set d [file dirname [file normalize [info script]]]
cd $d
set ::env(LSLU_CAL_N) 8
open_project proj_large_getrf
add_files -tb tb_getrf_cosim_calibration.cpp
open_solution solution1
csim_design
cosim_design -setup -trace_level none
set sim_script "proj_large_getrf/solution1/sim/verilog/run_xsim.sh"
set fp [open $sim_script r]
set content [read $fp]
close $fp
set lines [split $content "\n"]
set out {}
foreach line $lines {
  if {[string match "*xelab*" $line] && ![string match "* -cc gcc*" $line]} {
    append line " --mt 2 -cc gcc"
  }
  lappend out $line
}
set fp [open $sim_script w]
puts $fp [join $out "\n"]
close $fp
file attributes $sim_script -permissions 0755
set sim_dir [file dirname $sim_script]
cd $sim_dir
exec ./[file tail $sim_script] > run_xsim_calibration.stdout 2>@1
exit
