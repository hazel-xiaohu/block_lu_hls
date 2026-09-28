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
    id 31 \
    name zext_ln144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln144 \
    op interface \
    ports { zext_ln144 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name tw0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tw0 \
    op interface \
    ports { m_axi_tw0_AWVALID { O 1 bit } m_axi_tw0_AWREADY { I 1 bit } m_axi_tw0_AWADDR { O 64 vector } m_axi_tw0_AWID { O 1 vector } m_axi_tw0_AWLEN { O 32 vector } m_axi_tw0_AWSIZE { O 3 vector } m_axi_tw0_AWBURST { O 2 vector } m_axi_tw0_AWLOCK { O 2 vector } m_axi_tw0_AWCACHE { O 4 vector } m_axi_tw0_AWPROT { O 3 vector } m_axi_tw0_AWQOS { O 4 vector } m_axi_tw0_AWREGION { O 4 vector } m_axi_tw0_AWUSER { O 1 vector } m_axi_tw0_WVALID { O 1 bit } m_axi_tw0_WREADY { I 1 bit } m_axi_tw0_WDATA { O 32 vector } m_axi_tw0_WSTRB { O 4 vector } m_axi_tw0_WLAST { O 1 bit } m_axi_tw0_WID { O 1 vector } m_axi_tw0_WUSER { O 1 vector } m_axi_tw0_ARVALID { O 1 bit } m_axi_tw0_ARREADY { I 1 bit } m_axi_tw0_ARADDR { O 64 vector } m_axi_tw0_ARID { O 1 vector } m_axi_tw0_ARLEN { O 32 vector } m_axi_tw0_ARSIZE { O 3 vector } m_axi_tw0_ARBURST { O 2 vector } m_axi_tw0_ARLOCK { O 2 vector } m_axi_tw0_ARCACHE { O 4 vector } m_axi_tw0_ARPROT { O 3 vector } m_axi_tw0_ARQOS { O 4 vector } m_axi_tw0_ARREGION { O 4 vector } m_axi_tw0_ARUSER { O 1 vector } m_axi_tw0_RVALID { I 1 bit } m_axi_tw0_RREADY { O 1 bit } m_axi_tw0_RDATA { I 32 vector } m_axi_tw0_RLAST { I 1 bit } m_axi_tw0_RID { I 1 vector } m_axi_tw0_RFIFONUM { I 9 vector } m_axi_tw0_RUSER { I 1 vector } m_axi_tw0_RRESP { I 2 vector } m_axi_tw0_BVALID { I 1 bit } m_axi_tw0_BREADY { O 1 bit } m_axi_tw0_BRESP { I 2 vector } m_axi_tw0_BID { I 1 vector } m_axi_tw0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name tx2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_tx2 \
    op interface \
    ports { m_axi_tx2_AWVALID { O 1 bit } m_axi_tx2_AWREADY { I 1 bit } m_axi_tx2_AWADDR { O 64 vector } m_axi_tx2_AWID { O 1 vector } m_axi_tx2_AWLEN { O 32 vector } m_axi_tx2_AWSIZE { O 3 vector } m_axi_tx2_AWBURST { O 2 vector } m_axi_tx2_AWLOCK { O 2 vector } m_axi_tx2_AWCACHE { O 4 vector } m_axi_tx2_AWPROT { O 3 vector } m_axi_tx2_AWQOS { O 4 vector } m_axi_tx2_AWREGION { O 4 vector } m_axi_tx2_AWUSER { O 1 vector } m_axi_tx2_WVALID { O 1 bit } m_axi_tx2_WREADY { I 1 bit } m_axi_tx2_WDATA { O 32 vector } m_axi_tx2_WSTRB { O 4 vector } m_axi_tx2_WLAST { O 1 bit } m_axi_tx2_WID { O 1 vector } m_axi_tx2_WUSER { O 1 vector } m_axi_tx2_ARVALID { O 1 bit } m_axi_tx2_ARREADY { I 1 bit } m_axi_tx2_ARADDR { O 64 vector } m_axi_tx2_ARID { O 1 vector } m_axi_tx2_ARLEN { O 32 vector } m_axi_tx2_ARSIZE { O 3 vector } m_axi_tx2_ARBURST { O 2 vector } m_axi_tx2_ARLOCK { O 2 vector } m_axi_tx2_ARCACHE { O 4 vector } m_axi_tx2_ARPROT { O 3 vector } m_axi_tx2_ARQOS { O 4 vector } m_axi_tx2_ARREGION { O 4 vector } m_axi_tx2_ARUSER { O 1 vector } m_axi_tx2_RVALID { I 1 bit } m_axi_tx2_RREADY { O 1 bit } m_axi_tx2_RDATA { I 32 vector } m_axi_tx2_RLAST { I 1 bit } m_axi_tx2_RID { I 1 vector } m_axi_tx2_RFIFONUM { I 9 vector } m_axi_tx2_RUSER { I 1 vector } m_axi_tx2_RRESP { I 2 vector } m_axi_tx2_BVALID { I 1 bit } m_axi_tx2_BREADY { O 1 bit } m_axi_tx2_BRESP { I 2 vector } m_axi_tx2_BID { I 1 vector } m_axi_tx2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name tx1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tx1 \
    op interface \
    ports { m_axi_tx1_AWVALID { O 1 bit } m_axi_tx1_AWREADY { I 1 bit } m_axi_tx1_AWADDR { O 64 vector } m_axi_tx1_AWID { O 1 vector } m_axi_tx1_AWLEN { O 32 vector } m_axi_tx1_AWSIZE { O 3 vector } m_axi_tx1_AWBURST { O 2 vector } m_axi_tx1_AWLOCK { O 2 vector } m_axi_tx1_AWCACHE { O 4 vector } m_axi_tx1_AWPROT { O 3 vector } m_axi_tx1_AWQOS { O 4 vector } m_axi_tx1_AWREGION { O 4 vector } m_axi_tx1_AWUSER { O 1 vector } m_axi_tx1_WVALID { O 1 bit } m_axi_tx1_WREADY { I 1 bit } m_axi_tx1_WDATA { O 32 vector } m_axi_tx1_WSTRB { O 4 vector } m_axi_tx1_WLAST { O 1 bit } m_axi_tx1_WID { O 1 vector } m_axi_tx1_WUSER { O 1 vector } m_axi_tx1_ARVALID { O 1 bit } m_axi_tx1_ARREADY { I 1 bit } m_axi_tx1_ARADDR { O 64 vector } m_axi_tx1_ARID { O 1 vector } m_axi_tx1_ARLEN { O 32 vector } m_axi_tx1_ARSIZE { O 3 vector } m_axi_tx1_ARBURST { O 2 vector } m_axi_tx1_ARLOCK { O 2 vector } m_axi_tx1_ARCACHE { O 4 vector } m_axi_tx1_ARPROT { O 3 vector } m_axi_tx1_ARQOS { O 4 vector } m_axi_tx1_ARREGION { O 4 vector } m_axi_tx1_ARUSER { O 1 vector } m_axi_tx1_RVALID { I 1 bit } m_axi_tx1_RREADY { O 1 bit } m_axi_tx1_RDATA { I 32 vector } m_axi_tx1_RLAST { I 1 bit } m_axi_tx1_RID { I 1 vector } m_axi_tx1_RFIFONUM { I 9 vector } m_axi_tx1_RUSER { I 1 vector } m_axi_tx1_RRESP { I 2 vector } m_axi_tx1_BVALID { I 1 bit } m_axi_tx1_BREADY { O 1 bit } m_axi_tx1_BRESP { I 2 vector } m_axi_tx1_BID { I 1 vector } m_axi_tx1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name sext_ln144_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln144_2 \
    op interface \
    ports { sext_ln144_2 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name sext_ln144_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln144_1 \
    op interface \
    ports { sext_ln144_1 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name zext_ln144_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln144_1 \
    op interface \
    ports { zext_ln144_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
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
set InstName large_tstrf_flow_control_loop_pipe_sequential_init_U
set CompName large_tstrf_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix large_tstrf_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


