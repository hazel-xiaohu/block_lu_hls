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
    id 5 \
    name zext_ln94_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln94_1 \
    op interface \
    ports { zext_ln94_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name gw0 \
    type other \
    dir IO \
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
    id 7 \
    name gb2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gb2 \
    op interface \
    ports { m_axi_gb2_AWVALID { O 1 bit } m_axi_gb2_AWREADY { I 1 bit } m_axi_gb2_AWADDR { O 64 vector } m_axi_gb2_AWID { O 1 vector } m_axi_gb2_AWLEN { O 32 vector } m_axi_gb2_AWSIZE { O 3 vector } m_axi_gb2_AWBURST { O 2 vector } m_axi_gb2_AWLOCK { O 2 vector } m_axi_gb2_AWCACHE { O 4 vector } m_axi_gb2_AWPROT { O 3 vector } m_axi_gb2_AWQOS { O 4 vector } m_axi_gb2_AWREGION { O 4 vector } m_axi_gb2_AWUSER { O 1 vector } m_axi_gb2_WVALID { O 1 bit } m_axi_gb2_WREADY { I 1 bit } m_axi_gb2_WDATA { O 32 vector } m_axi_gb2_WSTRB { O 4 vector } m_axi_gb2_WLAST { O 1 bit } m_axi_gb2_WID { O 1 vector } m_axi_gb2_WUSER { O 1 vector } m_axi_gb2_ARVALID { O 1 bit } m_axi_gb2_ARREADY { I 1 bit } m_axi_gb2_ARADDR { O 64 vector } m_axi_gb2_ARID { O 1 vector } m_axi_gb2_ARLEN { O 32 vector } m_axi_gb2_ARSIZE { O 3 vector } m_axi_gb2_ARBURST { O 2 vector } m_axi_gb2_ARLOCK { O 2 vector } m_axi_gb2_ARCACHE { O 4 vector } m_axi_gb2_ARPROT { O 3 vector } m_axi_gb2_ARQOS { O 4 vector } m_axi_gb2_ARREGION { O 4 vector } m_axi_gb2_ARUSER { O 1 vector } m_axi_gb2_RVALID { I 1 bit } m_axi_gb2_RREADY { O 1 bit } m_axi_gb2_RDATA { I 32 vector } m_axi_gb2_RLAST { I 1 bit } m_axi_gb2_RID { I 1 vector } m_axi_gb2_RFIFONUM { I 9 vector } m_axi_gb2_RUSER { I 1 vector } m_axi_gb2_RRESP { I 2 vector } m_axi_gb2_BVALID { I 1 bit } m_axi_gb2_BREADY { O 1 bit } m_axi_gb2_BRESP { I 2 vector } m_axi_gb2_BID { I 1 vector } m_axi_gb2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name gb1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gb1 \
    op interface \
    ports { m_axi_gb1_AWVALID { O 1 bit } m_axi_gb1_AWREADY { I 1 bit } m_axi_gb1_AWADDR { O 64 vector } m_axi_gb1_AWID { O 1 vector } m_axi_gb1_AWLEN { O 32 vector } m_axi_gb1_AWSIZE { O 3 vector } m_axi_gb1_AWBURST { O 2 vector } m_axi_gb1_AWLOCK { O 2 vector } m_axi_gb1_AWCACHE { O 4 vector } m_axi_gb1_AWPROT { O 3 vector } m_axi_gb1_AWQOS { O 4 vector } m_axi_gb1_AWREGION { O 4 vector } m_axi_gb1_AWUSER { O 1 vector } m_axi_gb1_WVALID { O 1 bit } m_axi_gb1_WREADY { I 1 bit } m_axi_gb1_WDATA { O 32 vector } m_axi_gb1_WSTRB { O 4 vector } m_axi_gb1_WLAST { O 1 bit } m_axi_gb1_WID { O 1 vector } m_axi_gb1_WUSER { O 1 vector } m_axi_gb1_ARVALID { O 1 bit } m_axi_gb1_ARREADY { I 1 bit } m_axi_gb1_ARADDR { O 64 vector } m_axi_gb1_ARID { O 1 vector } m_axi_gb1_ARLEN { O 32 vector } m_axi_gb1_ARSIZE { O 3 vector } m_axi_gb1_ARBURST { O 2 vector } m_axi_gb1_ARLOCK { O 2 vector } m_axi_gb1_ARCACHE { O 4 vector } m_axi_gb1_ARPROT { O 3 vector } m_axi_gb1_ARQOS { O 4 vector } m_axi_gb1_ARREGION { O 4 vector } m_axi_gb1_ARUSER { O 1 vector } m_axi_gb1_RVALID { I 1 bit } m_axi_gb1_RREADY { O 1 bit } m_axi_gb1_RDATA { I 32 vector } m_axi_gb1_RLAST { I 1 bit } m_axi_gb1_RID { I 1 vector } m_axi_gb1_RFIFONUM { I 9 vector } m_axi_gb1_RUSER { I 1 vector } m_axi_gb1_RRESP { I 2 vector } m_axi_gb1_BVALID { I 1 bit } m_axi_gb1_BREADY { O 1 bit } m_axi_gb1_BRESP { I 2 vector } m_axi_gb1_BID { I 1 vector } m_axi_gb1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name sext_ln94_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln94_2 \
    op interface \
    ports { sext_ln94_2 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name sext_ln94_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln94_1 \
    op interface \
    ports { sext_ln94_1 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name zext_ln94_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln94_2 \
    op interface \
    ports { zext_ln94_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
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


