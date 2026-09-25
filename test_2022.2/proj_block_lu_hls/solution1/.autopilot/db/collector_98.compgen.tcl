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
    id 1329 \
    name vcollector \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vcollector \
    op interface \
    ports { vcollector_dout { I 68 vector } vcollector_num_data_valid { I 7 vector } vcollector_fifo_cap { I 7 vector } vcollector_empty_n { I 1 bit } vcollector_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1330 \
    name vresult417 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vresult417 \
    op interface \
    ports { vresult417_dout { I 1024 vector } vresult417_num_data_valid { I 6 vector } vresult417_fifo_cap { I 6 vector } vresult417_empty_n { I 1 bit } vresult417_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1331 \
    name voff3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_voff3 \
    op interface \
    ports { voff3_dout { I 128 vector } voff3_num_data_valid { I 7 vector } voff3_fifo_cap { I 7 vector } voff3_empty_n { I 1 bit } voff3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1332 \
    name vblock4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock4 \
    op interface \
    ports { vblock4_din { O 134 vector } vblock4_num_data_valid { I 8 vector } vblock4_fifo_cap { I 8 vector } vblock4_full_n { I 1 bit } vblock4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1333 \
    name v_hit1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_hit1 \
    op interface \
    ports { v_hit1_dout { I 1 vector } v_hit1_num_data_valid { I 5 vector } v_hit1_fifo_cap { I 5 vector } v_hit1_empty_n { I 1 bit } v_hit1_read { O 1 bit } } \
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


