create_project -in_memory -part xczu15eg-ffvb1156-2-i
create_bd_design q
set v [lindex [get_ipdefs *zynq_ultra_ps_e*] end]
create_bd_cell -type ip -vlnv $v ps
report_property -all [get_bd_cells ps] > query_sd_meta.txt
exit
