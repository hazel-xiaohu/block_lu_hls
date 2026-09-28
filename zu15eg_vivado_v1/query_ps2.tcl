create_project -in_memory -part xczu15eg-ffvb1156-2-i
create_bd_design q
set v [lindex [get_ipdefs *zynq_ultra_ps_e*] end]
create_bd_cell -type ip -vlnv $v ps
puts "VLNV=[get_property VLNV [get_bd_cells ps]]"
puts "INTF=[get_bd_intf_pins ps/*]"
puts "PINS=[get_bd_pins ps/*]"
exit
