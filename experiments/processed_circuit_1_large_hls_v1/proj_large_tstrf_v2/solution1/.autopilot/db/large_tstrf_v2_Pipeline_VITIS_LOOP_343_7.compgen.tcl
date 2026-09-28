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
    id 27 \
    name w \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename w \
    op interface \
    ports { w_address0 { O 12 vector } w_ce0 { O 1 bit } w_q0 { I 32 vector } w_address1 { O 12 vector } w_ce1 { O 1 bit } w_we1 { O 1 bit } w_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'w'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name zext_ln343_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln343_1 \
    op interface \
    ports { zext_ln343_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name v2tb2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2tb2 \
    op interface \
    ports { m_axi_v2tb2_AWVALID { O 1 bit } m_axi_v2tb2_AWREADY { I 1 bit } m_axi_v2tb2_AWADDR { O 64 vector } m_axi_v2tb2_AWID { O 1 vector } m_axi_v2tb2_AWLEN { O 32 vector } m_axi_v2tb2_AWSIZE { O 3 vector } m_axi_v2tb2_AWBURST { O 2 vector } m_axi_v2tb2_AWLOCK { O 2 vector } m_axi_v2tb2_AWCACHE { O 4 vector } m_axi_v2tb2_AWPROT { O 3 vector } m_axi_v2tb2_AWQOS { O 4 vector } m_axi_v2tb2_AWREGION { O 4 vector } m_axi_v2tb2_AWUSER { O 1 vector } m_axi_v2tb2_WVALID { O 1 bit } m_axi_v2tb2_WREADY { I 1 bit } m_axi_v2tb2_WDATA { O 32 vector } m_axi_v2tb2_WSTRB { O 4 vector } m_axi_v2tb2_WLAST { O 1 bit } m_axi_v2tb2_WID { O 1 vector } m_axi_v2tb2_WUSER { O 1 vector } m_axi_v2tb2_ARVALID { O 1 bit } m_axi_v2tb2_ARREADY { I 1 bit } m_axi_v2tb2_ARADDR { O 64 vector } m_axi_v2tb2_ARID { O 1 vector } m_axi_v2tb2_ARLEN { O 32 vector } m_axi_v2tb2_ARSIZE { O 3 vector } m_axi_v2tb2_ARBURST { O 2 vector } m_axi_v2tb2_ARLOCK { O 2 vector } m_axi_v2tb2_ARCACHE { O 4 vector } m_axi_v2tb2_ARPROT { O 3 vector } m_axi_v2tb2_ARQOS { O 4 vector } m_axi_v2tb2_ARREGION { O 4 vector } m_axi_v2tb2_ARUSER { O 1 vector } m_axi_v2tb2_RVALID { I 1 bit } m_axi_v2tb2_RREADY { O 1 bit } m_axi_v2tb2_RDATA { I 32 vector } m_axi_v2tb2_RLAST { I 1 bit } m_axi_v2tb2_RID { I 1 vector } m_axi_v2tb2_RFIFONUM { I 9 vector } m_axi_v2tb2_RUSER { I 1 vector } m_axi_v2tb2_RRESP { I 2 vector } m_axi_v2tb2_BVALID { I 1 bit } m_axi_v2tb2_BREADY { O 1 bit } m_axi_v2tb2_BRESP { I 2 vector } m_axi_v2tb2_BID { I 1 vector } m_axi_v2tb2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name v2tb1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2tb1 \
    op interface \
    ports { m_axi_v2tb1_AWVALID { O 1 bit } m_axi_v2tb1_AWREADY { I 1 bit } m_axi_v2tb1_AWADDR { O 64 vector } m_axi_v2tb1_AWID { O 1 vector } m_axi_v2tb1_AWLEN { O 32 vector } m_axi_v2tb1_AWSIZE { O 3 vector } m_axi_v2tb1_AWBURST { O 2 vector } m_axi_v2tb1_AWLOCK { O 2 vector } m_axi_v2tb1_AWCACHE { O 4 vector } m_axi_v2tb1_AWPROT { O 3 vector } m_axi_v2tb1_AWQOS { O 4 vector } m_axi_v2tb1_AWREGION { O 4 vector } m_axi_v2tb1_AWUSER { O 1 vector } m_axi_v2tb1_WVALID { O 1 bit } m_axi_v2tb1_WREADY { I 1 bit } m_axi_v2tb1_WDATA { O 32 vector } m_axi_v2tb1_WSTRB { O 4 vector } m_axi_v2tb1_WLAST { O 1 bit } m_axi_v2tb1_WID { O 1 vector } m_axi_v2tb1_WUSER { O 1 vector } m_axi_v2tb1_ARVALID { O 1 bit } m_axi_v2tb1_ARREADY { I 1 bit } m_axi_v2tb1_ARADDR { O 64 vector } m_axi_v2tb1_ARID { O 1 vector } m_axi_v2tb1_ARLEN { O 32 vector } m_axi_v2tb1_ARSIZE { O 3 vector } m_axi_v2tb1_ARBURST { O 2 vector } m_axi_v2tb1_ARLOCK { O 2 vector } m_axi_v2tb1_ARCACHE { O 4 vector } m_axi_v2tb1_ARPROT { O 3 vector } m_axi_v2tb1_ARQOS { O 4 vector } m_axi_v2tb1_ARREGION { O 4 vector } m_axi_v2tb1_ARUSER { O 1 vector } m_axi_v2tb1_RVALID { I 1 bit } m_axi_v2tb1_RREADY { O 1 bit } m_axi_v2tb1_RDATA { I 32 vector } m_axi_v2tb1_RLAST { I 1 bit } m_axi_v2tb1_RID { I 1 vector } m_axi_v2tb1_RFIFONUM { I 9 vector } m_axi_v2tb1_RUSER { I 1 vector } m_axi_v2tb1_RRESP { I 2 vector } m_axi_v2tb1_BVALID { I 1 bit } m_axi_v2tb1_BREADY { O 1 bit } m_axi_v2tb1_BRESP { I 2 vector } m_axi_v2tb1_BID { I 1 vector } m_axi_v2tb1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name sext_ln343_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln343_2 \
    op interface \
    ports { sext_ln343_2 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name sext_ln343_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln343_1 \
    op interface \
    ports { sext_ln343_1 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name zext_ln343_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln343_2 \
    op interface \
    ports { zext_ln343_2 { I 32 vector } } \
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
set InstName large_tstrf_v2_flow_control_loop_pipe_sequential_init_U
set CompName large_tstrf_v2_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix large_tstrf_v2_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


