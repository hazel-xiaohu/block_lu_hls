# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 106 \
    name w_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename w_2 \
    op interface \
    ports { w_2_address0 { O 12 vector } w_2_ce0 { O 1 bit } w_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'w_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name zext_ln273_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln273_4 \
    op interface \
    ports { zext_ln273_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name v2gx4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v2gx4 \
    op interface \
    ports { m_axi_v2gx4_AWVALID { O 1 bit } m_axi_v2gx4_AWREADY { I 1 bit } m_axi_v2gx4_AWADDR { O 64 vector } m_axi_v2gx4_AWID { O 1 vector } m_axi_v2gx4_AWLEN { O 32 vector } m_axi_v2gx4_AWSIZE { O 3 vector } m_axi_v2gx4_AWBURST { O 2 vector } m_axi_v2gx4_AWLOCK { O 2 vector } m_axi_v2gx4_AWCACHE { O 4 vector } m_axi_v2gx4_AWPROT { O 3 vector } m_axi_v2gx4_AWQOS { O 4 vector } m_axi_v2gx4_AWREGION { O 4 vector } m_axi_v2gx4_AWUSER { O 1 vector } m_axi_v2gx4_WVALID { O 1 bit } m_axi_v2gx4_WREADY { I 1 bit } m_axi_v2gx4_WDATA { O 32 vector } m_axi_v2gx4_WSTRB { O 4 vector } m_axi_v2gx4_WLAST { O 1 bit } m_axi_v2gx4_WID { O 1 vector } m_axi_v2gx4_WUSER { O 1 vector } m_axi_v2gx4_ARVALID { O 1 bit } m_axi_v2gx4_ARREADY { I 1 bit } m_axi_v2gx4_ARADDR { O 64 vector } m_axi_v2gx4_ARID { O 1 vector } m_axi_v2gx4_ARLEN { O 32 vector } m_axi_v2gx4_ARSIZE { O 3 vector } m_axi_v2gx4_ARBURST { O 2 vector } m_axi_v2gx4_ARLOCK { O 2 vector } m_axi_v2gx4_ARCACHE { O 4 vector } m_axi_v2gx4_ARPROT { O 3 vector } m_axi_v2gx4_ARQOS { O 4 vector } m_axi_v2gx4_ARREGION { O 4 vector } m_axi_v2gx4_ARUSER { O 1 vector } m_axi_v2gx4_RVALID { I 1 bit } m_axi_v2gx4_RREADY { O 1 bit } m_axi_v2gx4_RDATA { I 32 vector } m_axi_v2gx4_RLAST { I 1 bit } m_axi_v2gx4_RID { I 1 vector } m_axi_v2gx4_RFIFONUM { I 9 vector } m_axi_v2gx4_RUSER { I 1 vector } m_axi_v2gx4_RRESP { I 2 vector } m_axi_v2gx4_BVALID { I 1 bit } m_axi_v2gx4_BREADY { O 1 bit } m_axi_v2gx4_BRESP { I 2 vector } m_axi_v2gx4_BID { I 1 vector } m_axi_v2gx4_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name v2gx3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2gx3 \
    op interface \
    ports { m_axi_v2gx3_AWVALID { O 1 bit } m_axi_v2gx3_AWREADY { I 1 bit } m_axi_v2gx3_AWADDR { O 64 vector } m_axi_v2gx3_AWID { O 1 vector } m_axi_v2gx3_AWLEN { O 32 vector } m_axi_v2gx3_AWSIZE { O 3 vector } m_axi_v2gx3_AWBURST { O 2 vector } m_axi_v2gx3_AWLOCK { O 2 vector } m_axi_v2gx3_AWCACHE { O 4 vector } m_axi_v2gx3_AWPROT { O 3 vector } m_axi_v2gx3_AWQOS { O 4 vector } m_axi_v2gx3_AWREGION { O 4 vector } m_axi_v2gx3_AWUSER { O 1 vector } m_axi_v2gx3_WVALID { O 1 bit } m_axi_v2gx3_WREADY { I 1 bit } m_axi_v2gx3_WDATA { O 32 vector } m_axi_v2gx3_WSTRB { O 4 vector } m_axi_v2gx3_WLAST { O 1 bit } m_axi_v2gx3_WID { O 1 vector } m_axi_v2gx3_WUSER { O 1 vector } m_axi_v2gx3_ARVALID { O 1 bit } m_axi_v2gx3_ARREADY { I 1 bit } m_axi_v2gx3_ARADDR { O 64 vector } m_axi_v2gx3_ARID { O 1 vector } m_axi_v2gx3_ARLEN { O 32 vector } m_axi_v2gx3_ARSIZE { O 3 vector } m_axi_v2gx3_ARBURST { O 2 vector } m_axi_v2gx3_ARLOCK { O 2 vector } m_axi_v2gx3_ARCACHE { O 4 vector } m_axi_v2gx3_ARPROT { O 3 vector } m_axi_v2gx3_ARQOS { O 4 vector } m_axi_v2gx3_ARREGION { O 4 vector } m_axi_v2gx3_ARUSER { O 1 vector } m_axi_v2gx3_RVALID { I 1 bit } m_axi_v2gx3_RREADY { O 1 bit } m_axi_v2gx3_RDATA { I 32 vector } m_axi_v2gx3_RLAST { I 1 bit } m_axi_v2gx3_RID { I 1 vector } m_axi_v2gx3_RFIFONUM { I 9 vector } m_axi_v2gx3_RUSER { I 1 vector } m_axi_v2gx3_RRESP { I 2 vector } m_axi_v2gx3_BVALID { I 1 bit } m_axi_v2gx3_BREADY { O 1 bit } m_axi_v2gx3_BRESP { I 2 vector } m_axi_v2gx3_BID { I 1 vector } m_axi_v2gx3_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name v2gx2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v2gx2 \
    op interface \
    ports { m_axi_v2gx2_AWVALID { O 1 bit } m_axi_v2gx2_AWREADY { I 1 bit } m_axi_v2gx2_AWADDR { O 64 vector } m_axi_v2gx2_AWID { O 1 vector } m_axi_v2gx2_AWLEN { O 32 vector } m_axi_v2gx2_AWSIZE { O 3 vector } m_axi_v2gx2_AWBURST { O 2 vector } m_axi_v2gx2_AWLOCK { O 2 vector } m_axi_v2gx2_AWCACHE { O 4 vector } m_axi_v2gx2_AWPROT { O 3 vector } m_axi_v2gx2_AWQOS { O 4 vector } m_axi_v2gx2_AWREGION { O 4 vector } m_axi_v2gx2_AWUSER { O 1 vector } m_axi_v2gx2_WVALID { O 1 bit } m_axi_v2gx2_WREADY { I 1 bit } m_axi_v2gx2_WDATA { O 32 vector } m_axi_v2gx2_WSTRB { O 4 vector } m_axi_v2gx2_WLAST { O 1 bit } m_axi_v2gx2_WID { O 1 vector } m_axi_v2gx2_WUSER { O 1 vector } m_axi_v2gx2_ARVALID { O 1 bit } m_axi_v2gx2_ARREADY { I 1 bit } m_axi_v2gx2_ARADDR { O 64 vector } m_axi_v2gx2_ARID { O 1 vector } m_axi_v2gx2_ARLEN { O 32 vector } m_axi_v2gx2_ARSIZE { O 3 vector } m_axi_v2gx2_ARBURST { O 2 vector } m_axi_v2gx2_ARLOCK { O 2 vector } m_axi_v2gx2_ARCACHE { O 4 vector } m_axi_v2gx2_ARPROT { O 3 vector } m_axi_v2gx2_ARQOS { O 4 vector } m_axi_v2gx2_ARREGION { O 4 vector } m_axi_v2gx2_ARUSER { O 1 vector } m_axi_v2gx2_RVALID { I 1 bit } m_axi_v2gx2_RREADY { O 1 bit } m_axi_v2gx2_RDATA { I 32 vector } m_axi_v2gx2_RLAST { I 1 bit } m_axi_v2gx2_RID { I 1 vector } m_axi_v2gx2_RFIFONUM { I 9 vector } m_axi_v2gx2_RUSER { I 1 vector } m_axi_v2gx2_RRESP { I 2 vector } m_axi_v2gx2_BVALID { I 1 bit } m_axi_v2gx2_BREADY { O 1 bit } m_axi_v2gx2_BRESP { I 2 vector } m_axi_v2gx2_BID { I 1 vector } m_axi_v2gx2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name v2gx1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2gx1 \
    op interface \
    ports { m_axi_v2gx1_AWVALID { O 1 bit } m_axi_v2gx1_AWREADY { I 1 bit } m_axi_v2gx1_AWADDR { O 64 vector } m_axi_v2gx1_AWID { O 1 vector } m_axi_v2gx1_AWLEN { O 32 vector } m_axi_v2gx1_AWSIZE { O 3 vector } m_axi_v2gx1_AWBURST { O 2 vector } m_axi_v2gx1_AWLOCK { O 2 vector } m_axi_v2gx1_AWCACHE { O 4 vector } m_axi_v2gx1_AWPROT { O 3 vector } m_axi_v2gx1_AWQOS { O 4 vector } m_axi_v2gx1_AWREGION { O 4 vector } m_axi_v2gx1_AWUSER { O 1 vector } m_axi_v2gx1_WVALID { O 1 bit } m_axi_v2gx1_WREADY { I 1 bit } m_axi_v2gx1_WDATA { O 32 vector } m_axi_v2gx1_WSTRB { O 4 vector } m_axi_v2gx1_WLAST { O 1 bit } m_axi_v2gx1_WID { O 1 vector } m_axi_v2gx1_WUSER { O 1 vector } m_axi_v2gx1_ARVALID { O 1 bit } m_axi_v2gx1_ARREADY { I 1 bit } m_axi_v2gx1_ARADDR { O 64 vector } m_axi_v2gx1_ARID { O 1 vector } m_axi_v2gx1_ARLEN { O 32 vector } m_axi_v2gx1_ARSIZE { O 3 vector } m_axi_v2gx1_ARBURST { O 2 vector } m_axi_v2gx1_ARLOCK { O 2 vector } m_axi_v2gx1_ARCACHE { O 4 vector } m_axi_v2gx1_ARPROT { O 3 vector } m_axi_v2gx1_ARQOS { O 4 vector } m_axi_v2gx1_ARREGION { O 4 vector } m_axi_v2gx1_ARUSER { O 1 vector } m_axi_v2gx1_RVALID { I 1 bit } m_axi_v2gx1_RREADY { O 1 bit } m_axi_v2gx1_RDATA { I 32 vector } m_axi_v2gx1_RLAST { I 1 bit } m_axi_v2gx1_RID { I 1 vector } m_axi_v2gx1_RFIFONUM { I 9 vector } m_axi_v2gx1_RUSER { I 1 vector } m_axi_v2gx1_RRESP { I 2 vector } m_axi_v2gx1_BVALID { I 1 bit } m_axi_v2gx1_BREADY { O 1 bit } m_axi_v2gx1_BRESP { I 2 vector } m_axi_v2gx1_BID { I 1 vector } m_axi_v2gx1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name sext_ln273_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln273_10 \
    op interface \
    ports { sext_ln273_10 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name sext_ln273_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln273_11 \
    op interface \
    ports { sext_ln273_11 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name sext_ln273_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln273_9 \
    op interface \
    ports { sext_ln273_9 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name zext_ln273_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln273_5 \
    op interface \
    ports { zext_ln273_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name x_val_csr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_val_csr \
    op interface \
    ports { x_val_csr { I 64 vector } } \
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
set InstName large_gessm_v2_flow_control_loop_pipe_sequential_init_U
set CompName large_gessm_v2_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix large_gessm_v2_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


