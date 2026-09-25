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
    id 1738 \
    name crequest4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_crequest4 \
    op interface \
    ports { crequest4_dout { I 225 vector } crequest4_empty_n { I 1 bit } crequest4_read { O 1 bit } crequest4_num_data_valid { I 3 vector } crequest4_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1739 \
    name vccache_re_bank1_pe8 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank1_pe8 \
    op interface \
    ports { vccache_re_bank1_pe8_din { O 225 vector } vccache_re_bank1_pe8_full_n { I 1 bit } vccache_re_bank1_pe8_write { O 1 bit } vccache_re_bank1_pe8_num_data_valid { I 4 vector } vccache_re_bank1_pe8_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1740 \
    name base_addr_val_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_base_addr_val_10 \
    op interface \
    ports { base_addr_val_10 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1741 \
    name base_addr_cid_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_base_addr_cid_8 \
    op interface \
    ports { base_addr_cid_8 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1742 \
    name vccache_re_bank2_pe8 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vccache_re_bank2_pe8 \
    op interface \
    ports { vccache_re_bank2_pe8_din { O 225 vector } vccache_re_bank2_pe8_full_n { I 1 bit } vccache_re_bank2_pe8_write { O 1 bit } vccache_re_bank2_pe8_num_data_valid { I 4 vector } vccache_re_bank2_pe8_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1743 \
    name temp_vcreq_8_sroa_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_vcreq_8_sroa_5_0_out \
    op interface \
    ports { temp_vcreq_8_sroa_5_0_out { O 8 vector } temp_vcreq_8_sroa_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1744 \
    name temp_vcreq_8_sroa_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_vcreq_8_sroa_0_0_out \
    op interface \
    ports { temp_vcreq_8_sroa_0_0_out { O 8 vector } temp_vcreq_8_sroa_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1745 \
    name temp_vcreq_9_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_vcreq_9_0_out \
    op interface \
    ports { temp_vcreq_9_0_out { O 128 vector } temp_vcreq_9_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1746 \
    name temp_vcreq_7107_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_vcreq_7107_0_out \
    op interface \
    ports { temp_vcreq_7107_0_out { O 32 vector } temp_vcreq_7107_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1747 \
    name temp_vcreq_6106_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_vcreq_6106_0_out \
    op interface \
    ports { temp_vcreq_6106_0_out { O 32 vector } temp_vcreq_6106_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1748 \
    name temp_vcreq_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_vcreq_5_0_out \
    op interface \
    ports { temp_vcreq_5_0_out { O 3 vector } temp_vcreq_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1749 \
    name temp_vcreq_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_vcreq_4_0_out \
    op interface \
    ports { temp_vcreq_4_0_out { O 5 vector } temp_vcreq_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1750 \
    name temp_vcreq_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_vcreq_3_0_out \
    op interface \
    ports { temp_vcreq_3_0_out { O 3 vector } temp_vcreq_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1751 \
    name temp_vcreq_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_vcreq_2_0_out \
    op interface \
    ports { temp_vcreq_2_0_out { O 3 vector } temp_vcreq_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1752 \
    name temp_vcreq_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_vcreq_1_0_out \
    op interface \
    ports { temp_vcreq_1_0_out { O 2 vector } temp_vcreq_1_0_out_ap_vld { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


# flow_control definition:
set InstName spmm_flow_control_loop_pipe_sequential_init_U
set CompName spmm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix spmm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


