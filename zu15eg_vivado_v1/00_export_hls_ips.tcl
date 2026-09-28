# Export the four already-synthesized HLS solutions as Vivado IP repositories.
# Run with:
#   source /output/xilinx_compat/xilinx_compat.sh
#   vitis_hls -f 00_export_hls_ips.tcl

set root [file normalize [file dirname [info script]]]
set hls_root [file normalize "$root/../experiments/processed_circuit_1_large_hls_v1"]
set repo "$root/ip_repo"
file mkdir $repo

proc export_one {hls_root project solution top out_dir} {
    set p [file normalize "$hls_root/$project"]
    if {![file isdirectory $p]} {
        error "HLS project does not exist: $p"
    }
    file mkdir $out_dir
    puts "=== Exporting $top from $p/$solution to $out_dir ==="
    # Vitis HLS 2022.2 rejects an absolute path as the project name; change
    # directory to its parent and open the project by basename.
    cd [file dirname $p]
    open_project [file tail $p]
    open_solution $solution
    export_design -flow impl -format ip_catalog \
        -output [file normalize $out_dir] \
        -description "$top independent Block-LU kernel" \
        -vendor xilinx.com -version 1.0
    close_project
}

export_one $hls_root proj_large_getrf_v4 solution1 large_getrf_v4 "$repo/large_getrf_v4"
export_one $hls_root proj_large_gessm_v2 solution1 large_gessm_v2 "$repo/large_gessm_v2"
export_one $hls_root proj_large_tstrf_v2_recip solution1 large_tstrf_v2 "$repo/large_tstrf_v2"
export_one $hls_root proj_large_ssssm solution1 large_ssssm "$repo/large_ssssm"

puts "HLS IP export complete: $repo"
exit
