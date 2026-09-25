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
    id 1065 \
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
    id 1066 \
    name bv3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bv3 \
    op interface \
    ports { m_axi_bv3_AWVALID { O 1 bit } m_axi_bv3_AWREADY { I 1 bit } m_axi_bv3_AWADDR { O 64 vector } m_axi_bv3_AWID { O 1 vector } m_axi_bv3_AWLEN { O 32 vector } m_axi_bv3_AWSIZE { O 3 vector } m_axi_bv3_AWBURST { O 2 vector } m_axi_bv3_AWLOCK { O 2 vector } m_axi_bv3_AWCACHE { O 4 vector } m_axi_bv3_AWPROT { O 3 vector } m_axi_bv3_AWQOS { O 4 vector } m_axi_bv3_AWREGION { O 4 vector } m_axi_bv3_AWUSER { O 1 vector } m_axi_bv3_WVALID { O 1 bit } m_axi_bv3_WREADY { I 1 bit } m_axi_bv3_WDATA { O 128 vector } m_axi_bv3_WSTRB { O 16 vector } m_axi_bv3_WLAST { O 1 bit } m_axi_bv3_WID { O 1 vector } m_axi_bv3_WUSER { O 1 vector } m_axi_bv3_ARVALID { O 1 bit } m_axi_bv3_ARREADY { I 1 bit } m_axi_bv3_ARADDR { O 64 vector } m_axi_bv3_ARID { O 1 vector } m_axi_bv3_ARLEN { O 32 vector } m_axi_bv3_ARSIZE { O 3 vector } m_axi_bv3_ARBURST { O 2 vector } m_axi_bv3_ARLOCK { O 2 vector } m_axi_bv3_ARCACHE { O 4 vector } m_axi_bv3_ARPROT { O 3 vector } m_axi_bv3_ARQOS { O 4 vector } m_axi_bv3_ARREGION { O 4 vector } m_axi_bv3_ARUSER { O 1 vector } m_axi_bv3_RVALID { I 1 bit } m_axi_bv3_RREADY { O 1 bit } m_axi_bv3_RDATA { I 128 vector } m_axi_bv3_RLAST { I 1 bit } m_axi_bv3_RID { I 1 vector } m_axi_bv3_RFIFONUM { I 9 vector } m_axi_bv3_RUSER { I 1 vector } m_axi_bv3_RRESP { I 2 vector } m_axi_bv3_BVALID { I 1 bit } m_axi_bv3_BREADY { O 1 bit } m_axi_bv3_BRESP { I 2 vector } m_axi_bv3_BID { I 1 vector } m_axi_bv3_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1067 \
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
    id 1068 \
    name zext_ln92_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln92_18 \
    op interface \
    ports { zext_ln92_18 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1069 \
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
    id 1070 \
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
    id 1071 \
    name curr_request_brlen_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_brlen_13 \
    op interface \
    ports { curr_request_brlen_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1072 \
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
    id 1073 \
    name zext_ln92_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln92_7 \
    op interface \
    ports { zext_ln92_7 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1074 \
    name trunc_ln26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln26 \
    op interface \
    ports { trunc_ln26 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1075 \
    name begin_block_idx_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_begin_block_idx_8 \
    op interface \
    ports { begin_block_idx_8 { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1076 \
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
    id 1077 \
    name curr_request_data_V_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_data_V_21_out \
    op interface \
    ports { curr_request_data_V_21_out { O 128 vector } curr_request_data_V_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1078 \
    name curr_request_brlen_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_brlen_12_out \
    op interface \
    ports { curr_request_brlen_12_out { O 32 vector } curr_request_brlen_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1079 \
    name curr_request_brid_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_brid_12_out \
    op interface \
    ports { curr_request_brid_12_out { O 32 vector } curr_request_brid_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1080 \
    name curr_request_target_V_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_target_V_18_out \
    op interface \
    ports { curr_request_target_V_18_out { O 2 vector } curr_request_target_V_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1081 \
    name curr_request_write_idx_V_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_write_idx_V_21_out \
    op interface \
    ports { curr_request_write_idx_V_21_out { O 3 vector } curr_request_write_idx_V_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1082 \
    name curr_request_peID_V_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_peID_V_21_out \
    op interface \
    ports { curr_request_peID_V_21_out { O 3 vector } curr_request_peID_V_21_out_ap_vld { O 1 bit } } \
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


