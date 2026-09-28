# Synthesize, implement, generate bitstream, and export XSA.
# Run after 02_create_bd.tcl:
#   vivado -mode batch -source 03_build_and_export.tcl

set root [file normalize [file dirname [info script]]]
set project_dir "$root/vivado_project"
set project_name "block_lu_zu15eg"

# Vivado 2022.2 on the current Ubuntu host can abort in the native
# libudev/license/WebTalk host-info path with "realloc(): invalid pointer"
# before synthesis starts. Disable user WebTalk before opening the project;
# this is a host-side workaround and does not change the generated hardware.
catch {config_webtalk -user off}
catch {set_param project.enableWebtalk false}
# Force the host libudev implementation.  Without this preload, the
# Vivado 2022.2 FlexLM/WebTalk host-id query may abort on Ubuntu 22.04
# containers with "realloc(): invalid pointer".
set host_libudev "/usr/lib/x86_64-linux-gnu/libudev.so.1"
if {[file exists $host_libudev]} {
  set ::env(LD_PRELOAD) $host_libudev
}

open_project "$project_dir/$project_name.xpr"
file mkdir "$root/output"

set_property strategy Flow_PerfOptimized_high [get_runs synth_1]
# Keep the first recovery run serial. Once the project is stable, -jobs 8
# can be restored for normal throughput.
launch_runs synth_1 -jobs 1
wait_on_run synth_1
if {[get_property PROGRESS [get_runs synth_1]] ne "100%"} { error "synth_1 failed" }

set_property strategy Performance_ExplorePostRoutePhysOpt [get_runs impl_1]
launch_runs impl_1 -to_step write_bitstream -jobs 1
wait_on_run impl_1
if {[get_property PROGRESS [get_runs impl_1]] ne "100%"} { error "impl_1 failed" }

open_run impl_1
report_timing_summary -delay_type min_max -max_paths 20 -file "$root/output/timing_summary.rpt"
report_utilization -file "$root/output/utilization.rpt"
write_hw_platform -fixed -force -include_bit -file "$root/output/block_lu_zu15eg_fixed.xsa"
puts "Exported $root/output/block_lu_zu15eg_fixed.xsa"
close_project
exit
