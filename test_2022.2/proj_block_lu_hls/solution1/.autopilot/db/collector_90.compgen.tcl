# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1175 \
    name ccollector \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ccollector \
    op interface \
    ports { ccollector_dout { I 68 vector } ccollector_num_data_valid { I 7 vector } ccollector_fifo_cap { I 7 vector } ccollector_empty_n { I 1 bit } ccollector_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1176 \
    name cresult320 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresult320 \
    op interface \
    ports { cresult320_dout { I 1024 vector } cresult320_num_data_valid { I 6 vector } cresult320_fifo_cap { I 6 vector } cresult320_empty_n { I 1 bit } cresult320_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1177 \
    name coff4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_coff4 \
    op interface \
    ports { coff4_dout { I 128 vector } coff4_num_data_valid { I 7 vector } coff4_fifo_cap { I 7 vector } coff4_empty_n { I 1 bit } coff4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1178 \
    name cblock3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock3 \
    op interface \
    ports { cblock3_din { O 134 vector } cblock3_num_data_valid { I 8 vector } cblock3_fifo_cap { I 8 vector } cblock3_full_n { I 1 bit } cblock3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1179 \
    name c_hit2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_hit2 \
    op interface \
    ports { c_hit2_dout { I 1 vector } c_hit2_num_data_valid { I 5 vector } c_hit2_fifo_cap { I 5 vector } c_hit2_empty_n { I 1 bit } c_hit2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


