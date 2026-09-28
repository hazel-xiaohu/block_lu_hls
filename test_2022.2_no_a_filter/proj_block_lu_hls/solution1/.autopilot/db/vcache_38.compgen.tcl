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
    id 1678 \
    name vccache_re_bank2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank2 \
    op interface \
    ports { vccache_re_bank2_dout { I 209 vector } vccache_re_bank2_num_data_valid { I 7 vector } vccache_re_bank2_fifo_cap { I 7 vector } vccache_re_bank2_empty_n { I 1 bit } vccache_re_bank2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1679 \
    name base_addr_val \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_base_addr_val \
    op interface \
    ports { base_addr_val_dout { I 32 vector } base_addr_val_num_data_valid { I 3 vector } base_addr_val_fifo_cap { I 3 vector } base_addr_val_empty_n { I 1 bit } base_addr_val_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1680 \
    name vcache_bank2_vres \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vcache_bank2_vres \
    op interface \
    ports { vcache_bank2_vres_din { O 6 vector } vcache_bank2_vres_num_data_valid { I 5 vector } vcache_bank2_vres_fifo_cap { I 5 vector } vcache_bank2_vres_full_n { I 1 bit } vcache_bank2_vres_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1681 \
    name vcache_bank2_result \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vcache_bank2_result \
    op interface \
    ports { vcache_bank2_result_din { O 1031 vector } vcache_bank2_result_num_data_valid { I 4 vector } vcache_bank2_result_fifo_cap { I 4 vector } vcache_bank2_result_full_n { I 1 bit } vcache_bank2_result_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1682 \
    name vc2acc \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vc2acc \
    op interface \
    ports { vc2acc { O 32 vector } vc2acc_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1683 \
    name vc2hit \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vc2hit \
    op interface \
    ports { vc2hit { O 32 vector } vc2hit_ap_vld { O 1 bit } } \
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


