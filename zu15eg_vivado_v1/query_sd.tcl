create_project -in_memory -part xczu15eg-ffvb1156-2-i
create_bd_design q
set v [lindex [get_ipdefs *zynq_ultra_ps_e*] end]
create_bd_cell -type ip -vlnv $v ps
foreach p [list_property [get_bd_cells ps]] { if {[string match *CONFIG* $p] && ([string match *SD* $p] || [string match *CD* $p])} { puts "$p=[get_property $p [get_bd_cells ps]]" } }
exit
