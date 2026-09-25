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
    id 1019 \
    name vcollector \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vcollector \
    op interface \
    ports { vcollector_dout { I 68 vector } vcollector_empty_n { I 1 bit } vcollector_read { O 1 bit } vcollector_num_data_valid { I 3 vector } vcollector_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1020 \
    name vresult1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vresult1 \
    op interface \
    ports { vresult1_dout { I 1024 vector } vresult1_empty_n { I 1 bit } vresult1_read { O 1 bit } vresult1_num_data_valid { I 3 vector } vresult1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1021 \
    name voff \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_voff \
    op interface \
    ports { voff_dout { I 128 vector } voff_empty_n { I 1 bit } voff_read { O 1 bit } voff_num_data_valid { I 4 vector } voff_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1022 \
    name vblock1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock1 \
    op interface \
    ports { vblock1_din { O 134 vector } vblock1_full_n { I 1 bit } vblock1_write { O 1 bit } vblock1_num_data_valid { I 32 vector } vblock1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1023 \
    name v_hit \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v_hit \
    op interface \
    ports { v_hit_dout { I 1 vector } v_hit_empty_n { I 1 bit } v_hit_read { O 1 bit } v_hit_num_data_valid { I 5 vector } v_hit_fifo_cap { I 5 vector } } \
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


