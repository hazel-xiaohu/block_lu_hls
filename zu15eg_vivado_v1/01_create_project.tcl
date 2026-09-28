# Create the Vivado project for xczu15eg-ffvb1156-2-i.
# Run with:
#   source /output/xilinx_compat/xilinx_compat.sh
#   vivado -mode batch -source 01_create_project.tcl

set root [file normalize [file dirname [info script]]]
set project_dir "$root/vivado_project"
set project_name "block_lu_zu15eg"
set part_number "xczu15eg-ffvb1156-2-i"
set ip_repo "$root/ip_repo"

create_project $project_name $project_dir -part $part_number -force
set_property simulator_language Mixed [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths [list $ip_repo] [current_project]
update_ip_catalog -rebuild
puts "Project created: $project_dir/$project_name.xpr"
puts "Available custom IP definitions:"
foreach ip [get_ipdefs -filter {VLNV =~ *large_*}] { puts "  $ip" }
close_project
exit
