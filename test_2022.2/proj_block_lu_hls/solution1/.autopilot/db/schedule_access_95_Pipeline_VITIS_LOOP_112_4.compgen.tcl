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
    id 1267 \
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
    id 1268 \
    name bc4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bc4 \
    op interface \
    ports { m_axi_bc4_AWVALID { O 1 bit } m_axi_bc4_AWREADY { I 1 bit } m_axi_bc4_AWADDR { O 64 vector } m_axi_bc4_AWID { O 1 vector } m_axi_bc4_AWLEN { O 32 vector } m_axi_bc4_AWSIZE { O 3 vector } m_axi_bc4_AWBURST { O 2 vector } m_axi_bc4_AWLOCK { O 2 vector } m_axi_bc4_AWCACHE { O 4 vector } m_axi_bc4_AWPROT { O 3 vector } m_axi_bc4_AWQOS { O 4 vector } m_axi_bc4_AWREGION { O 4 vector } m_axi_bc4_AWUSER { O 1 vector } m_axi_bc4_WVALID { O 1 bit } m_axi_bc4_WREADY { I 1 bit } m_axi_bc4_WDATA { O 128 vector } m_axi_bc4_WSTRB { O 16 vector } m_axi_bc4_WLAST { O 1 bit } m_axi_bc4_WID { O 1 vector } m_axi_bc4_WUSER { O 1 vector } m_axi_bc4_ARVALID { O 1 bit } m_axi_bc4_ARREADY { I 1 bit } m_axi_bc4_ARADDR { O 64 vector } m_axi_bc4_ARID { O 1 vector } m_axi_bc4_ARLEN { O 32 vector } m_axi_bc4_ARSIZE { O 3 vector } m_axi_bc4_ARBURST { O 2 vector } m_axi_bc4_ARLOCK { O 2 vector } m_axi_bc4_ARCACHE { O 4 vector } m_axi_bc4_ARPROT { O 3 vector } m_axi_bc4_ARQOS { O 4 vector } m_axi_bc4_ARREGION { O 4 vector } m_axi_bc4_ARUSER { O 1 vector } m_axi_bc4_RVALID { I 1 bit } m_axi_bc4_RREADY { O 1 bit } m_axi_bc4_RDATA { I 128 vector } m_axi_bc4_RLAST { I 1 bit } m_axi_bc4_RID { I 1 vector } m_axi_bc4_RFIFONUM { I 9 vector } m_axi_bc4_RUSER { I 1 vector } m_axi_bc4_RRESP { I 2 vector } m_axi_bc4_BVALID { I 1 bit } m_axi_bc4_BREADY { O 1 bit } m_axi_bc4_BRESP { I 2 vector } m_axi_bc4_BID { I 1 vector } m_axi_bc4_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1269 \
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
    id 1270 \
    name zext_ln92_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln92_2 \
    op interface \
    ports { zext_ln92_2 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1271 \
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
    id 1272 \
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
    id 1273 \
    name curr_request_brlen_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_brlen_6 \
    op interface \
    ports { curr_request_brlen_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1274 \
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
    id 1275 \
    name zext_ln92_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln92_1 \
    op interface \
    ports { zext_ln92_1 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1276 \
    name trunc_ln20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln20 \
    op interface \
    ports { trunc_ln20 { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1277 \
    name begin_block_idx_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_begin_block_idx_2 \
    op interface \
    ports { begin_block_idx_2 { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1278 \
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
    id 1279 \
    name curr_request_data_V_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_data_V_3_out \
    op interface \
    ports { curr_request_data_V_3_out { O 128 vector } curr_request_data_V_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1280 \
    name curr_request_brlen_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_brlen_4_out \
    op interface \
    ports { curr_request_brlen_4_out { O 32 vector } curr_request_brlen_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1281 \
    name curr_request_brid_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_brid_4_out \
    op interface \
    ports { curr_request_brid_4_out { O 32 vector } curr_request_brid_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1282 \
    name curr_request_target_V_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_target_V_3_out \
    op interface \
    ports { curr_request_target_V_3_out { O 2 vector } curr_request_target_V_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1283 \
    name curr_request_write_idx_V_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_write_idx_V_3_out \
    op interface \
    ports { curr_request_write_idx_V_3_out { O 3 vector } curr_request_write_idx_V_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1284 \
    name curr_request_peID_V_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_curr_request_peID_V_3_out \
    op interface \
    ports { curr_request_peID_V_3_out { O 3 vector } curr_request_peID_V_3_out_ap_vld { O 1 bit } } \
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


