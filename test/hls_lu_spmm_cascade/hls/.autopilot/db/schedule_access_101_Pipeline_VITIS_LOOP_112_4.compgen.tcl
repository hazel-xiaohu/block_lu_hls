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
    id 1125 \
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
    id 1126 \
    name min_idx \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_min_idx \
    op interface \
    ports { min_idx { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1127 \
    name add_ln92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln92 \
    op interface \
    ports { add_ln92 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1128 \
    name ori_request_peID \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ori_request_peID \
    op interface \
    ports { ori_request_peID { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1129 \
    name zext_ln100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln100 \
    op interface \
    ports { zext_ln100 { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1130 \
    name add_ln125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln125 \
    op interface \
    ports { add_ln125 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1131 \
    name coff \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coff \
    op interface \
    ports { coff_din { O 128 vector } coff_full_n { I 1 bit } coff_write { O 1 bit } coff_num_data_valid { I 4 vector } coff_fifo_cap { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1132 \
    name bc2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bc2 \
    op interface \
    ports { m_axi_bc2_0_AWVALID { O 1 bit } m_axi_bc2_0_AWREADY { I 1 bit } m_axi_bc2_0_AWADDR { O 64 vector } m_axi_bc2_0_AWID { O 1 vector } m_axi_bc2_0_AWLEN { O 32 vector } m_axi_bc2_0_AWSIZE { O 3 vector } m_axi_bc2_0_AWBURST { O 2 vector } m_axi_bc2_0_AWLOCK { O 2 vector } m_axi_bc2_0_AWCACHE { O 4 vector } m_axi_bc2_0_AWPROT { O 3 vector } m_axi_bc2_0_AWQOS { O 4 vector } m_axi_bc2_0_AWREGION { O 4 vector } m_axi_bc2_0_AWUSER { O 1 vector } m_axi_bc2_0_WVALID { O 1 bit } m_axi_bc2_0_WREADY { I 1 bit } m_axi_bc2_0_WDATA { O 128 vector } m_axi_bc2_0_WSTRB { O 16 vector } m_axi_bc2_0_WLAST { O 1 bit } m_axi_bc2_0_WID { O 1 vector } m_axi_bc2_0_WUSER { O 1 vector } m_axi_bc2_0_ARVALID { O 1 bit } m_axi_bc2_0_ARREADY { I 1 bit } m_axi_bc2_0_ARADDR { O 64 vector } m_axi_bc2_0_ARID { O 1 vector } m_axi_bc2_0_ARLEN { O 32 vector } m_axi_bc2_0_ARSIZE { O 3 vector } m_axi_bc2_0_ARBURST { O 2 vector } m_axi_bc2_0_ARLOCK { O 2 vector } m_axi_bc2_0_ARCACHE { O 4 vector } m_axi_bc2_0_ARPROT { O 3 vector } m_axi_bc2_0_ARQOS { O 4 vector } m_axi_bc2_0_ARREGION { O 4 vector } m_axi_bc2_0_ARUSER { O 1 vector } m_axi_bc2_0_RVALID { I 1 bit } m_axi_bc2_0_RREADY { O 1 bit } m_axi_bc2_0_RDATA { I 128 vector } m_axi_bc2_0_RLAST { I 1 bit } m_axi_bc2_0_RID { I 1 vector } m_axi_bc2_0_RFIFONUM { I 9 vector } m_axi_bc2_0_RUSER { I 1 vector } m_axi_bc2_0_RRESP { I 2 vector } m_axi_bc2_0_BVALID { I 1 bit } m_axi_bc2_0_BREADY { O 1 bit } m_axi_bc2_0_BRESP { I 2 vector } m_axi_bc2_0_BID { I 1 vector } m_axi_bc2_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1133 \
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
    id 1134 \
    name trunc_ln37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln37 \
    op interface \
    ports { trunc_ln37 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1135 \
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
    id 1136 \
    name c_req \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_req \
    op interface \
    ports { c_req_din { O 225 vector } c_req_full_n { I 1 bit } c_req_write { O 1 bit } c_req_num_data_valid { I 3 vector } c_req_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1137 \
    name curr_request_9_211_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_9_211_out \
    op interface \
    ports { curr_request_9_211_out { O 128 vector } curr_request_9_211_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1138 \
    name curr_request_7_210_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_7_210_out \
    op interface \
    ports { curr_request_7_210_out { O 32 vector } curr_request_7_210_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1139 \
    name curr_request_6_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_6_29_out \
    op interface \
    ports { curr_request_6_29_out { O 32 vector } curr_request_6_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1140 \
    name curr_request_5_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_5_27_out \
    op interface \
    ports { curr_request_5_27_out { O 3 vector } curr_request_5_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1141 \
    name curr_request_3_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_3_26_out \
    op interface \
    ports { curr_request_3_26_out { O 3 vector } curr_request_3_26_out_ap_vld { O 1 bit } } \
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


