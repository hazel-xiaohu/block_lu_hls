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
    id 729 \
    name zext_ln92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln92 \
    op interface \
    ports { zext_ln92 { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 730 \
    name bv1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bv1 \
    op interface \
    ports { m_axi_bv1_AWVALID { O 1 bit } m_axi_bv1_AWREADY { I 1 bit } m_axi_bv1_AWADDR { O 64 vector } m_axi_bv1_AWID { O 1 vector } m_axi_bv1_AWLEN { O 32 vector } m_axi_bv1_AWSIZE { O 3 vector } m_axi_bv1_AWBURST { O 2 vector } m_axi_bv1_AWLOCK { O 2 vector } m_axi_bv1_AWCACHE { O 4 vector } m_axi_bv1_AWPROT { O 3 vector } m_axi_bv1_AWQOS { O 4 vector } m_axi_bv1_AWREGION { O 4 vector } m_axi_bv1_AWUSER { O 1 vector } m_axi_bv1_WVALID { O 1 bit } m_axi_bv1_WREADY { I 1 bit } m_axi_bv1_WDATA { O 128 vector } m_axi_bv1_WSTRB { O 16 vector } m_axi_bv1_WLAST { O 1 bit } m_axi_bv1_WID { O 1 vector } m_axi_bv1_WUSER { O 1 vector } m_axi_bv1_ARVALID { O 1 bit } m_axi_bv1_ARREADY { I 1 bit } m_axi_bv1_ARADDR { O 64 vector } m_axi_bv1_ARID { O 1 vector } m_axi_bv1_ARLEN { O 32 vector } m_axi_bv1_ARSIZE { O 3 vector } m_axi_bv1_ARBURST { O 2 vector } m_axi_bv1_ARLOCK { O 2 vector } m_axi_bv1_ARCACHE { O 4 vector } m_axi_bv1_ARPROT { O 3 vector } m_axi_bv1_ARQOS { O 4 vector } m_axi_bv1_ARREGION { O 4 vector } m_axi_bv1_ARUSER { O 1 vector } m_axi_bv1_RVALID { I 1 bit } m_axi_bv1_RREADY { O 1 bit } m_axi_bv1_RDATA { I 128 vector } m_axi_bv1_RLAST { I 1 bit } m_axi_bv1_RID { I 1 vector } m_axi_bv1_RFIFONUM { I 9 vector } m_axi_bv1_RUSER { I 1 vector } m_axi_bv1_RRESP { I 2 vector } m_axi_bv1_BVALID { I 1 bit } m_axi_bv1_BREADY { O 1 bit } m_axi_bv1_BRESP { I 2 vector } m_axi_bv1_BID { I 1 vector } m_axi_bv1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 731 \
    name sext_ln112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln112 \
    op interface \
    ports { sext_ln112 { I 60 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 732 \
    name zext_ln92_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln92_38 \
    op interface \
    ports { zext_ln92_38 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 733 \
    name ori_request_peID_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ori_request_peID_V \
    op interface \
    ports { ori_request_peID_V { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 734 \
    name begin_block_idx \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_begin_block_idx \
    op interface \
    ports { begin_block_idx { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 735 \
    name curr_request_brlen_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_brlen_21 \
    op interface \
    ports { curr_request_brlen_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 736 \
    name voff3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_voff3 \
    op interface \
    ports { voff3_din { O 128 vector } voff3_num_data_valid { I 7 vector } voff3_fifo_cap { I 7 vector } voff3_full_n { I 1 bit } voff3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 737 \
    name zext_ln92_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln92_15 \
    op interface \
    ports { zext_ln92_15 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 738 \
    name trunc_ln34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln34 \
    op interface \
    ports { trunc_ln34 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 739 \
    name begin_block_idx_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_begin_block_idx_16 \
    op interface \
    ports { begin_block_idx_16 { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 740 \
    name v_req \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_req \
    op interface \
    ports { v_req_din { O 209 vector } v_req_num_data_valid { I 7 vector } v_req_fifo_cap { I 7 vector } v_req_full_n { I 1 bit } v_req_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 741 \
    name curr_request_data_V_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_data_V_45_out \
    op interface \
    ports { curr_request_data_V_45_out { O 128 vector } curr_request_data_V_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 742 \
    name curr_request_brlen_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_brlen_20_out \
    op interface \
    ports { curr_request_brlen_20_out { O 32 vector } curr_request_brlen_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 743 \
    name curr_request_brid_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_brid_20_out \
    op interface \
    ports { curr_request_brid_20_out { O 32 vector } curr_request_brid_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 744 \
    name curr_request_target_V_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_target_V_38_out \
    op interface \
    ports { curr_request_target_V_38_out { O 2 vector } curr_request_target_V_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 745 \
    name curr_request_write_idx_V_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_write_idx_V_45_out \
    op interface \
    ports { curr_request_write_idx_V_45_out { O 3 vector } curr_request_write_idx_V_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 746 \
    name curr_request_peID_V_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_peID_V_45_out \
    op interface \
    ports { curr_request_peID_V_45_out { O 3 vector } curr_request_peID_V_45_out_ap_vld { O 1 bit } } \
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


