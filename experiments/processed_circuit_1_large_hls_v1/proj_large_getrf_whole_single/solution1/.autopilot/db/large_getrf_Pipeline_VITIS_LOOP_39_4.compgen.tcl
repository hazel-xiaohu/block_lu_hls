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
    id 20 \
    name zext_ln39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln39 \
    op interface \
    ports { zext_ln39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name w1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1 \
    op interface \
    ports { m_axi_w1_AWVALID { O 1 bit } m_axi_w1_AWREADY { I 1 bit } m_axi_w1_AWADDR { O 64 vector } m_axi_w1_AWID { O 1 vector } m_axi_w1_AWLEN { O 32 vector } m_axi_w1_AWSIZE { O 3 vector } m_axi_w1_AWBURST { O 2 vector } m_axi_w1_AWLOCK { O 2 vector } m_axi_w1_AWCACHE { O 4 vector } m_axi_w1_AWPROT { O 3 vector } m_axi_w1_AWQOS { O 4 vector } m_axi_w1_AWREGION { O 4 vector } m_axi_w1_AWUSER { O 1 vector } m_axi_w1_WVALID { O 1 bit } m_axi_w1_WREADY { I 1 bit } m_axi_w1_WDATA { O 32 vector } m_axi_w1_WSTRB { O 4 vector } m_axi_w1_WLAST { O 1 bit } m_axi_w1_WID { O 1 vector } m_axi_w1_WUSER { O 1 vector } m_axi_w1_ARVALID { O 1 bit } m_axi_w1_ARREADY { I 1 bit } m_axi_w1_ARADDR { O 64 vector } m_axi_w1_ARID { O 1 vector } m_axi_w1_ARLEN { O 32 vector } m_axi_w1_ARSIZE { O 3 vector } m_axi_w1_ARBURST { O 2 vector } m_axi_w1_ARLOCK { O 2 vector } m_axi_w1_ARCACHE { O 4 vector } m_axi_w1_ARPROT { O 3 vector } m_axi_w1_ARQOS { O 4 vector } m_axi_w1_ARREGION { O 4 vector } m_axi_w1_ARUSER { O 1 vector } m_axi_w1_RVALID { I 1 bit } m_axi_w1_RREADY { O 1 bit } m_axi_w1_RDATA { I 32 vector } m_axi_w1_RLAST { I 1 bit } m_axi_w1_RID { I 1 vector } m_axi_w1_RFIFONUM { I 9 vector } m_axi_w1_RUSER { I 1 vector } m_axi_w1_RRESP { I 2 vector } m_axi_w1_BVALID { I 1 bit } m_axi_w1_BREADY { O 1 bit } m_axi_w1_BRESP { I 2 vector } m_axi_w1_BID { I 1 vector } m_axi_w1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name w0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_w0 \
    op interface \
    ports { m_axi_w0_AWVALID { O 1 bit } m_axi_w0_AWREADY { I 1 bit } m_axi_w0_AWADDR { O 64 vector } m_axi_w0_AWID { O 1 vector } m_axi_w0_AWLEN { O 32 vector } m_axi_w0_AWSIZE { O 3 vector } m_axi_w0_AWBURST { O 2 vector } m_axi_w0_AWLOCK { O 2 vector } m_axi_w0_AWCACHE { O 4 vector } m_axi_w0_AWPROT { O 3 vector } m_axi_w0_AWQOS { O 4 vector } m_axi_w0_AWREGION { O 4 vector } m_axi_w0_AWUSER { O 1 vector } m_axi_w0_WVALID { O 1 bit } m_axi_w0_WREADY { I 1 bit } m_axi_w0_WDATA { O 32 vector } m_axi_w0_WSTRB { O 4 vector } m_axi_w0_WLAST { O 1 bit } m_axi_w0_WID { O 1 vector } m_axi_w0_WUSER { O 1 vector } m_axi_w0_ARVALID { O 1 bit } m_axi_w0_ARREADY { I 1 bit } m_axi_w0_ARADDR { O 64 vector } m_axi_w0_ARID { O 1 vector } m_axi_w0_ARLEN { O 32 vector } m_axi_w0_ARSIZE { O 3 vector } m_axi_w0_ARBURST { O 2 vector } m_axi_w0_ARLOCK { O 2 vector } m_axi_w0_ARCACHE { O 4 vector } m_axi_w0_ARPROT { O 3 vector } m_axi_w0_ARQOS { O 4 vector } m_axi_w0_ARREGION { O 4 vector } m_axi_w0_ARUSER { O 1 vector } m_axi_w0_RVALID { I 1 bit } m_axi_w0_RREADY { O 1 bit } m_axi_w0_RDATA { I 32 vector } m_axi_w0_RLAST { I 1 bit } m_axi_w0_RID { I 1 vector } m_axi_w0_RFIFONUM { I 9 vector } m_axi_w0_RUSER { I 1 vector } m_axi_w0_RRESP { I 2 vector } m_axi_w0_BVALID { I 1 bit } m_axi_w0_BREADY { O 1 bit } m_axi_w0_BRESP { I 2 vector } m_axi_w0_BID { I 1 vector } m_axi_w0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name a2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a2 \
    op interface \
    ports { m_axi_a2_AWVALID { O 1 bit } m_axi_a2_AWREADY { I 1 bit } m_axi_a2_AWADDR { O 64 vector } m_axi_a2_AWID { O 1 vector } m_axi_a2_AWLEN { O 32 vector } m_axi_a2_AWSIZE { O 3 vector } m_axi_a2_AWBURST { O 2 vector } m_axi_a2_AWLOCK { O 2 vector } m_axi_a2_AWCACHE { O 4 vector } m_axi_a2_AWPROT { O 3 vector } m_axi_a2_AWQOS { O 4 vector } m_axi_a2_AWREGION { O 4 vector } m_axi_a2_AWUSER { O 1 vector } m_axi_a2_WVALID { O 1 bit } m_axi_a2_WREADY { I 1 bit } m_axi_a2_WDATA { O 32 vector } m_axi_a2_WSTRB { O 4 vector } m_axi_a2_WLAST { O 1 bit } m_axi_a2_WID { O 1 vector } m_axi_a2_WUSER { O 1 vector } m_axi_a2_ARVALID { O 1 bit } m_axi_a2_ARREADY { I 1 bit } m_axi_a2_ARADDR { O 64 vector } m_axi_a2_ARID { O 1 vector } m_axi_a2_ARLEN { O 32 vector } m_axi_a2_ARSIZE { O 3 vector } m_axi_a2_ARBURST { O 2 vector } m_axi_a2_ARLOCK { O 2 vector } m_axi_a2_ARCACHE { O 4 vector } m_axi_a2_ARPROT { O 3 vector } m_axi_a2_ARQOS { O 4 vector } m_axi_a2_ARREGION { O 4 vector } m_axi_a2_ARUSER { O 1 vector } m_axi_a2_RVALID { I 1 bit } m_axi_a2_RREADY { O 1 bit } m_axi_a2_RDATA { I 32 vector } m_axi_a2_RLAST { I 1 bit } m_axi_a2_RID { I 1 vector } m_axi_a2_RFIFONUM { I 9 vector } m_axi_a2_RUSER { I 1 vector } m_axi_a2_RRESP { I 2 vector } m_axi_a2_BVALID { I 1 bit } m_axi_a2_BREADY { O 1 bit } m_axi_a2_BRESP { I 2 vector } m_axi_a2_BID { I 1 vector } m_axi_a2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name a1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a1 \
    op interface \
    ports { m_axi_a1_AWVALID { O 1 bit } m_axi_a1_AWREADY { I 1 bit } m_axi_a1_AWADDR { O 64 vector } m_axi_a1_AWID { O 1 vector } m_axi_a1_AWLEN { O 32 vector } m_axi_a1_AWSIZE { O 3 vector } m_axi_a1_AWBURST { O 2 vector } m_axi_a1_AWLOCK { O 2 vector } m_axi_a1_AWCACHE { O 4 vector } m_axi_a1_AWPROT { O 3 vector } m_axi_a1_AWQOS { O 4 vector } m_axi_a1_AWREGION { O 4 vector } m_axi_a1_AWUSER { O 1 vector } m_axi_a1_WVALID { O 1 bit } m_axi_a1_WREADY { I 1 bit } m_axi_a1_WDATA { O 32 vector } m_axi_a1_WSTRB { O 4 vector } m_axi_a1_WLAST { O 1 bit } m_axi_a1_WID { O 1 vector } m_axi_a1_WUSER { O 1 vector } m_axi_a1_ARVALID { O 1 bit } m_axi_a1_ARREADY { I 1 bit } m_axi_a1_ARADDR { O 64 vector } m_axi_a1_ARID { O 1 vector } m_axi_a1_ARLEN { O 32 vector } m_axi_a1_ARSIZE { O 3 vector } m_axi_a1_ARBURST { O 2 vector } m_axi_a1_ARLOCK { O 2 vector } m_axi_a1_ARCACHE { O 4 vector } m_axi_a1_ARPROT { O 3 vector } m_axi_a1_ARQOS { O 4 vector } m_axi_a1_ARREGION { O 4 vector } m_axi_a1_ARUSER { O 1 vector } m_axi_a1_RVALID { I 1 bit } m_axi_a1_RREADY { O 1 bit } m_axi_a1_RDATA { I 32 vector } m_axi_a1_RLAST { I 1 bit } m_axi_a1_RID { I 1 vector } m_axi_a1_RFIFONUM { I 9 vector } m_axi_a1_RUSER { I 1 vector } m_axi_a1_RRESP { I 2 vector } m_axi_a1_BVALID { I 1 bit } m_axi_a1_BREADY { O 1 bit } m_axi_a1_BRESP { I 2 vector } m_axi_a1_BID { I 1 vector } m_axi_a1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name zext_ln39_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln39_1 \
    op interface \
    ports { zext_ln39_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name a_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_val \
    op interface \
    ports { a_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
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
    id 28 \
    name a_idx \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a_idx \
    op interface \
    ports { a_idx { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name mark \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mark \
    op interface \
    ports { mark { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name add_ln30_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln30_3 \
    op interface \
    ports { add_ln30_3 { I 64 vector } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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
set InstName large_getrf_flow_control_loop_pipe_sequential_init_U
set CompName large_getrf_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix large_getrf_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


