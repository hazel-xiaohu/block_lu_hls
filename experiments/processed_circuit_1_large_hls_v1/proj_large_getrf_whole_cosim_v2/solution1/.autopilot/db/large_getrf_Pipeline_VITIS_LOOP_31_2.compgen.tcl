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
    id 1 \
    name zext_ln31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln31 \
    op interface \
    ports { zext_ln31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name w1 \
    type other \
    dir O \
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
    id 3 \
    name w0 \
    type other \
    dir O \
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
    id 4 \
    name l1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l1 \
    op interface \
    ports { m_axi_l1_AWVALID { O 1 bit } m_axi_l1_AWREADY { I 1 bit } m_axi_l1_AWADDR { O 64 vector } m_axi_l1_AWID { O 1 vector } m_axi_l1_AWLEN { O 32 vector } m_axi_l1_AWSIZE { O 3 vector } m_axi_l1_AWBURST { O 2 vector } m_axi_l1_AWLOCK { O 2 vector } m_axi_l1_AWCACHE { O 4 vector } m_axi_l1_AWPROT { O 3 vector } m_axi_l1_AWQOS { O 4 vector } m_axi_l1_AWREGION { O 4 vector } m_axi_l1_AWUSER { O 1 vector } m_axi_l1_WVALID { O 1 bit } m_axi_l1_WREADY { I 1 bit } m_axi_l1_WDATA { O 32 vector } m_axi_l1_WSTRB { O 4 vector } m_axi_l1_WLAST { O 1 bit } m_axi_l1_WID { O 1 vector } m_axi_l1_WUSER { O 1 vector } m_axi_l1_ARVALID { O 1 bit } m_axi_l1_ARREADY { I 1 bit } m_axi_l1_ARADDR { O 64 vector } m_axi_l1_ARID { O 1 vector } m_axi_l1_ARLEN { O 32 vector } m_axi_l1_ARSIZE { O 3 vector } m_axi_l1_ARBURST { O 2 vector } m_axi_l1_ARLOCK { O 2 vector } m_axi_l1_ARCACHE { O 4 vector } m_axi_l1_ARPROT { O 3 vector } m_axi_l1_ARQOS { O 4 vector } m_axi_l1_ARREGION { O 4 vector } m_axi_l1_ARUSER { O 1 vector } m_axi_l1_RVALID { I 1 bit } m_axi_l1_RREADY { O 1 bit } m_axi_l1_RDATA { I 32 vector } m_axi_l1_RLAST { I 1 bit } m_axi_l1_RID { I 1 vector } m_axi_l1_RFIFONUM { I 9 vector } m_axi_l1_RUSER { I 1 vector } m_axi_l1_RRESP { I 2 vector } m_axi_l1_BVALID { I 1 bit } m_axi_l1_BREADY { O 1 bit } m_axi_l1_BRESP { I 2 vector } m_axi_l1_BID { I 1 vector } m_axi_l1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name sext_ln31_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln31_1 \
    op interface \
    ports { sext_ln31_1 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name zext_ln31_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln31_1 \
    op interface \
    ports { zext_ln31_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
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
    id 8 \
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
    id 9 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 32 vector } } \
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


