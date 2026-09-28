set d [file dirname [file normalize [info script]]]
cd $d
open_project proj_large_tstrf_v2
add_files -tb tb_large_sparse_lu_v2.cpp
set_top large_tstrf_v2
open_solution solution1
cosim_design -setup -trace_level none -argv "$d/prepared/"
set sim_script "proj_large_tstrf_v2/solution1/sim/verilog/run_xsim.sh"
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
exec ./[file tail $sim_script] > run_xsim_full.stdout 2>@1
exit
