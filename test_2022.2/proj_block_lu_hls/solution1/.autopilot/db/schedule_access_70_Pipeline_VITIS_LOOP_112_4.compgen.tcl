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
    id 763 \
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
    id 764 \
    name bc1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bc1 \
    op interface \
    ports { m_axi_bc1_AWVALID { O 1 bit } m_axi_bc1_AWREADY { I 1 bit } m_axi_bc1_AWADDR { O 64 vector } m_axi_bc1_AWID { O 1 vector } m_axi_bc1_AWLEN { O 32 vector } m_axi_bc1_AWSIZE { O 3 vector } m_axi_bc1_AWBURST { O 2 vector } m_axi_bc1_AWLOCK { O 2 vector } m_axi_bc1_AWCACHE { O 4 vector } m_axi_bc1_AWPROT { O 3 vector } m_axi_bc1_AWQOS { O 4 vector } m_axi_bc1_AWREGION { O 4 vector } m_axi_bc1_AWUSER { O 1 vector } m_axi_bc1_WVALID { O 1 bit } m_axi_bc1_WREADY { I 1 bit } m_axi_bc1_WDATA { O 128 vector } m_axi_bc1_WSTRB { O 16 vector } m_axi_bc1_WLAST { O 1 bit } m_axi_bc1_WID { O 1 vector } m_axi_bc1_WUSER { O 1 vector } m_axi_bc1_ARVALID { O 1 bit } m_axi_bc1_ARREADY { I 1 bit } m_axi_bc1_ARADDR { O 64 vector } m_axi_bc1_ARID { O 1 vector } m_axi_bc1_ARLEN { O 32 vector } m_axi_bc1_ARSIZE { O 3 vector } m_axi_bc1_ARBURST { O 2 vector } m_axi_bc1_ARLOCK { O 2 vector } m_axi_bc1_ARCACHE { O 4 vector } m_axi_bc1_ARPROT { O 3 vector } m_axi_bc1_ARQOS { O 4 vector } m_axi_bc1_ARREGION { O 4 vector } m_axi_bc1_ARUSER { O 1 vector } m_axi_bc1_RVALID { I 1 bit } m_axi_bc1_RREADY { O 1 bit } m_axi_bc1_RDATA { I 128 vector } m_axi_bc1_RLAST { I 1 bit } m_axi_bc1_RID { I 1 vector } m_axi_bc1_RFIFONUM { I 9 vector } m_axi_bc1_RUSER { I 1 vector } m_axi_bc1_RRESP { I 2 vector } m_axi_bc1_BVALID { I 1 bit } m_axi_bc1_BREADY { O 1 bit } m_axi_bc1_BRESP { I 2 vector } m_axi_bc1_BID { I 1 vector } m_axi_bc1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 765 \
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
    id 766 \
    name zext_ln92_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln92_33 \
    op interface \
    ports { zext_ln92_33 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 767 \
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
    id 768 \
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
    id 769 \
    name curr_request_brlen_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_brlen_19 \
    op interface \
    ports { curr_request_brlen_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 770 \
    name coff4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coff4 \
    op interface \
    ports { coff4_din { O 128 vector } coff4_num_data_valid { I 7 vector } coff4_fifo_cap { I 7 vector } coff4_full_n { I 1 bit } coff4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 771 \
    name zext_ln92_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln92_13 \
    op interface \
    ports { zext_ln92_13 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 772 \
    name trunc_ln32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln32 \
    op interface \
    ports { trunc_ln32 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 773 \
    name begin_block_idx_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_begin_block_idx_14 \
    op interface \
    ports { begin_block_idx_14 { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 774 \
    name c_req \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_req \
    op interface \
    ports { c_req_din { O 209 vector } c_req_num_data_valid { I 7 vector } c_req_fifo_cap { I 7 vector } c_req_full_n { I 1 bit } c_req_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 775 \
    name curr_request_data_V_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_data_V_39_out \
    op interface \
    ports { curr_request_data_V_39_out { O 128 vector } curr_request_data_V_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 776 \
    name curr_request_brlen_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_brlen_18_out \
    op interface \
    ports { curr_request_brlen_18_out { O 32 vector } curr_request_brlen_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 777 \
    name curr_request_brid_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_brid_18_out \
    op interface \
    ports { curr_request_brid_18_out { O 32 vector } curr_request_brid_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 778 \
    name curr_request_target_V_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_target_V_33_out \
    op interface \
    ports { curr_request_target_V_33_out { O 2 vector } curr_request_target_V_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 779 \
    name curr_request_write_idx_V_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_write_idx_V_39_out \
    op interface \
    ports { curr_request_write_idx_V_39_out { O 3 vector } curr_request_write_idx_V_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 780 \
    name curr_request_peID_V_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_peID_V_39_out \
    op interface \
    ports { curr_request_peID_V_39_out { O 3 vector } curr_request_peID_V_39_out_ap_vld { O 1 bit } } \
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


