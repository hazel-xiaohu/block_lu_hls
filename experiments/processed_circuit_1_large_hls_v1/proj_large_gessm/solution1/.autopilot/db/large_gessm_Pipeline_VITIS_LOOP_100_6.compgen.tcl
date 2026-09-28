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
    id 29 \
    name zext_ln100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln100 \
    op interface \
    ports { zext_ln100 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name gw0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gw0 \
    op interface \
    ports { m_axi_gw0_AWVALID { O 1 bit } m_axi_gw0_AWREADY { I 1 bit } m_axi_gw0_AWADDR { O 64 vector } m_axi_gw0_AWID { O 1 vector } m_axi_gw0_AWLEN { O 32 vector } m_axi_gw0_AWSIZE { O 3 vector } m_axi_gw0_AWBURST { O 2 vector } m_axi_gw0_AWLOCK { O 2 vector } m_axi_gw0_AWCACHE { O 4 vector } m_axi_gw0_AWPROT { O 3 vector } m_axi_gw0_AWQOS { O 4 vector } m_axi_gw0_AWREGION { O 4 vector } m_axi_gw0_AWUSER { O 1 vector } m_axi_gw0_WVALID { O 1 bit } m_axi_gw0_WREADY { I 1 bit } m_axi_gw0_WDATA { O 32 vector } m_axi_gw0_WSTRB { O 4 vector } m_axi_gw0_WLAST { O 1 bit } m_axi_gw0_WID { O 1 vector } m_axi_gw0_WUSER { O 1 vector } m_axi_gw0_ARVALID { O 1 bit } m_axi_gw0_ARREADY { I 1 bit } m_axi_gw0_ARADDR { O 64 vector } m_axi_gw0_ARID { O 1 vector } m_axi_gw0_ARLEN { O 32 vector } m_axi_gw0_ARSIZE { O 3 vector } m_axi_gw0_ARBURST { O 2 vector } m_axi_gw0_ARLOCK { O 2 vector } m_axi_gw0_ARCACHE { O 4 vector } m_axi_gw0_ARPROT { O 3 vector } m_axi_gw0_ARQOS { O 4 vector } m_axi_gw0_ARREGION { O 4 vector } m_axi_gw0_ARUSER { O 1 vector } m_axi_gw0_RVALID { I 1 bit } m_axi_gw0_RREADY { O 1 bit } m_axi_gw0_RDATA { I 32 vector } m_axi_gw0_RLAST { I 1 bit } m_axi_gw0_RID { I 1 vector } m_axi_gw0_RFIFONUM { I 9 vector } m_axi_gw0_RUSER { I 1 vector } m_axi_gw0_RRESP { I 2 vector } m_axi_gw0_BVALID { I 1 bit } m_axi_gw0_BREADY { O 1 bit } m_axi_gw0_BRESP { I 2 vector } m_axi_gw0_BID { I 1 vector } m_axi_gw0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name gx4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gx4 \
    op interface \
    ports { m_axi_gx4_AWVALID { O 1 bit } m_axi_gx4_AWREADY { I 1 bit } m_axi_gx4_AWADDR { O 64 vector } m_axi_gx4_AWID { O 1 vector } m_axi_gx4_AWLEN { O 32 vector } m_axi_gx4_AWSIZE { O 3 vector } m_axi_gx4_AWBURST { O 2 vector } m_axi_gx4_AWLOCK { O 2 vector } m_axi_gx4_AWCACHE { O 4 vector } m_axi_gx4_AWPROT { O 3 vector } m_axi_gx4_AWQOS { O 4 vector } m_axi_gx4_AWREGION { O 4 vector } m_axi_gx4_AWUSER { O 1 vector } m_axi_gx4_WVALID { O 1 bit } m_axi_gx4_WREADY { I 1 bit } m_axi_gx4_WDATA { O 32 vector } m_axi_gx4_WSTRB { O 4 vector } m_axi_gx4_WLAST { O 1 bit } m_axi_gx4_WID { O 1 vector } m_axi_gx4_WUSER { O 1 vector } m_axi_gx4_ARVALID { O 1 bit } m_axi_gx4_ARREADY { I 1 bit } m_axi_gx4_ARADDR { O 64 vector } m_axi_gx4_ARID { O 1 vector } m_axi_gx4_ARLEN { O 32 vector } m_axi_gx4_ARSIZE { O 3 vector } m_axi_gx4_ARBURST { O 2 vector } m_axi_gx4_ARLOCK { O 2 vector } m_axi_gx4_ARCACHE { O 4 vector } m_axi_gx4_ARPROT { O 3 vector } m_axi_gx4_ARQOS { O 4 vector } m_axi_gx4_ARREGION { O 4 vector } m_axi_gx4_ARUSER { O 1 vector } m_axi_gx4_RVALID { I 1 bit } m_axi_gx4_RREADY { O 1 bit } m_axi_gx4_RDATA { I 32 vector } m_axi_gx4_RLAST { I 1 bit } m_axi_gx4_RID { I 1 vector } m_axi_gx4_RFIFONUM { I 9 vector } m_axi_gx4_RUSER { I 1 vector } m_axi_gx4_RRESP { I 2 vector } m_axi_gx4_BVALID { I 1 bit } m_axi_gx4_BREADY { O 1 bit } m_axi_gx4_BRESP { I 2 vector } m_axi_gx4_BID { I 1 vector } m_axi_gx4_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name gx3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gx3 \
    op interface \
    ports { m_axi_gx3_AWVALID { O 1 bit } m_axi_gx3_AWREADY { I 1 bit } m_axi_gx3_AWADDR { O 64 vector } m_axi_gx3_AWID { O 1 vector } m_axi_gx3_AWLEN { O 32 vector } m_axi_gx3_AWSIZE { O 3 vector } m_axi_gx3_AWBURST { O 2 vector } m_axi_gx3_AWLOCK { O 2 vector } m_axi_gx3_AWCACHE { O 4 vector } m_axi_gx3_AWPROT { O 3 vector } m_axi_gx3_AWQOS { O 4 vector } m_axi_gx3_AWREGION { O 4 vector } m_axi_gx3_AWUSER { O 1 vector } m_axi_gx3_WVALID { O 1 bit } m_axi_gx3_WREADY { I 1 bit } m_axi_gx3_WDATA { O 32 vector } m_axi_gx3_WSTRB { O 4 vector } m_axi_gx3_WLAST { O 1 bit } m_axi_gx3_WID { O 1 vector } m_axi_gx3_WUSER { O 1 vector } m_axi_gx3_ARVALID { O 1 bit } m_axi_gx3_ARREADY { I 1 bit } m_axi_gx3_ARADDR { O 64 vector } m_axi_gx3_ARID { O 1 vector } m_axi_gx3_ARLEN { O 32 vector } m_axi_gx3_ARSIZE { O 3 vector } m_axi_gx3_ARBURST { O 2 vector } m_axi_gx3_ARLOCK { O 2 vector } m_axi_gx3_ARCACHE { O 4 vector } m_axi_gx3_ARPROT { O 3 vector } m_axi_gx3_ARQOS { O 4 vector } m_axi_gx3_ARREGION { O 4 vector } m_axi_gx3_ARUSER { O 1 vector } m_axi_gx3_RVALID { I 1 bit } m_axi_gx3_RREADY { O 1 bit } m_axi_gx3_RDATA { I 32 vector } m_axi_gx3_RLAST { I 1 bit } m_axi_gx3_RID { I 1 vector } m_axi_gx3_RFIFONUM { I 9 vector } m_axi_gx3_RUSER { I 1 vector } m_axi_gx3_RRESP { I 2 vector } m_axi_gx3_BVALID { I 1 bit } m_axi_gx3_BREADY { O 1 bit } m_axi_gx3_BRESP { I 2 vector } m_axi_gx3_BID { I 1 vector } m_axi_gx3_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name gx2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gx2 \
    op interface \
    ports { m_axi_gx2_AWVALID { O 1 bit } m_axi_gx2_AWREADY { I 1 bit } m_axi_gx2_AWADDR { O 64 vector } m_axi_gx2_AWID { O 1 vector } m_axi_gx2_AWLEN { O 32 vector } m_axi_gx2_AWSIZE { O 3 vector } m_axi_gx2_AWBURST { O 2 vector } m_axi_gx2_AWLOCK { O 2 vector } m_axi_gx2_AWCACHE { O 4 vector } m_axi_gx2_AWPROT { O 3 vector } m_axi_gx2_AWQOS { O 4 vector } m_axi_gx2_AWREGION { O 4 vector } m_axi_gx2_AWUSER { O 1 vector } m_axi_gx2_WVALID { O 1 bit } m_axi_gx2_WREADY { I 1 bit } m_axi_gx2_WDATA { O 32 vector } m_axi_gx2_WSTRB { O 4 vector } m_axi_gx2_WLAST { O 1 bit } m_axi_gx2_WID { O 1 vector } m_axi_gx2_WUSER { O 1 vector } m_axi_gx2_ARVALID { O 1 bit } m_axi_gx2_ARREADY { I 1 bit } m_axi_gx2_ARADDR { O 64 vector } m_axi_gx2_ARID { O 1 vector } m_axi_gx2_ARLEN { O 32 vector } m_axi_gx2_ARSIZE { O 3 vector } m_axi_gx2_ARBURST { O 2 vector } m_axi_gx2_ARLOCK { O 2 vector } m_axi_gx2_ARCACHE { O 4 vector } m_axi_gx2_ARPROT { O 3 vector } m_axi_gx2_ARQOS { O 4 vector } m_axi_gx2_ARREGION { O 4 vector } m_axi_gx2_ARUSER { O 1 vector } m_axi_gx2_RVALID { I 1 bit } m_axi_gx2_RREADY { O 1 bit } m_axi_gx2_RDATA { I 32 vector } m_axi_gx2_RLAST { I 1 bit } m_axi_gx2_RID { I 1 vector } m_axi_gx2_RFIFONUM { I 9 vector } m_axi_gx2_RUSER { I 1 vector } m_axi_gx2_RRESP { I 2 vector } m_axi_gx2_BVALID { I 1 bit } m_axi_gx2_BREADY { O 1 bit } m_axi_gx2_BRESP { I 2 vector } m_axi_gx2_BID { I 1 vector } m_axi_gx2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name gx1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gx1 \
    op interface \
    ports { m_axi_gx1_AWVALID { O 1 bit } m_axi_gx1_AWREADY { I 1 bit } m_axi_gx1_AWADDR { O 64 vector } m_axi_gx1_AWID { O 1 vector } m_axi_gx1_AWLEN { O 32 vector } m_axi_gx1_AWSIZE { O 3 vector } m_axi_gx1_AWBURST { O 2 vector } m_axi_gx1_AWLOCK { O 2 vector } m_axi_gx1_AWCACHE { O 4 vector } m_axi_gx1_AWPROT { O 3 vector } m_axi_gx1_AWQOS { O 4 vector } m_axi_gx1_AWREGION { O 4 vector } m_axi_gx1_AWUSER { O 1 vector } m_axi_gx1_WVALID { O 1 bit } m_axi_gx1_WREADY { I 1 bit } m_axi_gx1_WDATA { O 32 vector } m_axi_gx1_WSTRB { O 4 vector } m_axi_gx1_WLAST { O 1 bit } m_axi_gx1_WID { O 1 vector } m_axi_gx1_WUSER { O 1 vector } m_axi_gx1_ARVALID { O 1 bit } m_axi_gx1_ARREADY { I 1 bit } m_axi_gx1_ARADDR { O 64 vector } m_axi_gx1_ARID { O 1 vector } m_axi_gx1_ARLEN { O 32 vector } m_axi_gx1_ARSIZE { O 3 vector } m_axi_gx1_ARBURST { O 2 vector } m_axi_gx1_ARLOCK { O 2 vector } m_axi_gx1_ARCACHE { O 4 vector } m_axi_gx1_ARPROT { O 3 vector } m_axi_gx1_ARQOS { O 4 vector } m_axi_gx1_ARREGION { O 4 vector } m_axi_gx1_ARUSER { O 1 vector } m_axi_gx1_RVALID { I 1 bit } m_axi_gx1_RREADY { O 1 bit } m_axi_gx1_RDATA { I 32 vector } m_axi_gx1_RLAST { I 1 bit } m_axi_gx1_RID { I 1 vector } m_axi_gx1_RFIFONUM { I 9 vector } m_axi_gx1_RUSER { I 1 vector } m_axi_gx1_RRESP { I 2 vector } m_axi_gx1_BVALID { I 1 bit } m_axi_gx1_BREADY { O 1 bit } m_axi_gx1_BRESP { I 2 vector } m_axi_gx1_BID { I 1 vector } m_axi_gx1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name sext_ln100_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln100_2 \
    op interface \
    ports { sext_ln100_2 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name sext_ln100_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln100_3 \
    op interface \
    ports { sext_ln100_3 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name sext_ln100_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln100_1 \
    op interface \
    ports { sext_ln100_1 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name zext_ln100_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln100_1 \
    op interface \
    ports { zext_ln100_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name work \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_work \
    op interface \
    ports { work { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
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
set InstName large_gessm_flow_control_loop_pipe_sequential_init_U
set CompName large_gessm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix large_gessm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


