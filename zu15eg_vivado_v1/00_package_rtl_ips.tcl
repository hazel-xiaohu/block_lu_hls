# Package the already synthesized HLS RTL directly with Vivado IP Packager.
# This is a fallback for Vivado 2022.2 HLS export crashes on the mounted FS.
set root [file normalize [file dirname [info script]]]
set hls_root [file normalize "$root/../experiments/processed_circuit_1_large_hls_v1"]
set repo [file normalize "$root/ip_repo"]
file mkdir $repo
create_project -in_memory -part xczu15eg-ffvb1156-2-i

proc package_one {hls_root project top name repo} {
    set src [file normalize "$hls_root/$project/solution1/impl/verilog"]
    set out [file normalize "$repo/$name"]
    if {![file isdirectory $src]} { error "RTL directory does not exist: $src" }
    file delete -force $out
    file mkdir $out
    foreach f [glob -nocomplain -directory $src *.v *.vhd *.xdc] {
        file copy -force $f $out
    }
    # ipx::package_project packages files in the active Vivado project.
    set rtl_files [glob -nocomplain -directory $out *.v *.vhd]
    if {[llength $rtl_files] == 0} { error "No RTL files copied to $out" }
    add_files -norecurse $rtl_files
    update_compile_order -fileset sources_1
    set_property top $top [current_fileset]
    puts "=== Packaging $name ($top) ==="
    ipx::package_project -root_dir $out -vendor xilinx.com -library hls -taxonomy /HLS -force
    set core [ipx::current_core]
    set_property name $name $core
    set_property display_name "$name Block-LU kernel" $core
    set_property description "$name generated HLS RTL kernel" $core
    set_property version 1.0 $core
    set_property core_revision 1 $core
    ipx::save_core $core
    ipx::unload_core $core
}

package_one $hls_root proj_large_getrf_v4 large_getrf_v4 large_getrf_v4 $repo
package_one $hls_root proj_large_gessm_v2 large_gessm_v2 large_gessm_v2 $repo
package_one $hls_root proj_large_tstrf_v2_recip large_tstrf_v2 large_tstrf_v2 $repo
package_one $hls_root proj_large_ssssm large_ssssm large_ssssm $repo
puts "RTL IP packaging complete: $repo"
exit
