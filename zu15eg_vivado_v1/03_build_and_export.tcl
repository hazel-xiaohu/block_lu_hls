# Synthesize, implement, generate bitstream, and export XSA.
# Run after 02_create_bd.tcl:
#   vivado -mode batch -source 03_build_and_export.tcl

set root [file normalize [file dirname [info script]]]
set project_dir "$root/vivado_project"
set project_name "block_lu_zu15eg"
open_project "$project_dir/$project_name.xpr"
file mkdir "$root/output"

set_property strategy Flow_PerfOptimized_high [get_runs synth_1]
launch_runs synth_1 -jobs 8
wait_on_run synth_1
if {[get_property PROGRESS [get_runs synth_1]] ne "100%"} { error "synth_1 failed" }

set_property strategy Performance_ExplorePostRoutePhysOpt [get_runs impl_1]
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] ne "100%"} { error "impl_1 failed" }

open_run impl_1
report_timing_summary -delay_type min_max -max_paths 20 -file "$root/output/timing_summary.rpt"
report_utilization -file "$root/output/utilization.rpt"
write_hw_platform -fixed -force -include_bit -file "$root/output/block_lu_zu15eg_fixed.xsa"
puts "Exported $root/output/block_lu_zu15eg_fixed.xsa"
close_project
exit
