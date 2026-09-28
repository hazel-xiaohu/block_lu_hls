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
    id 11 \
    name zext_ln176 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln176 \
    op interface \
    ports { zext_ln176 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name sw1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sw1 \
    op interface \
    ports { m_axi_sw1_AWVALID { O 1 bit } m_axi_sw1_AWREADY { I 1 bit } m_axi_sw1_AWADDR { O 64 vector } m_axi_sw1_AWID { O 1 vector } m_axi_sw1_AWLEN { O 32 vector } m_axi_sw1_AWSIZE { O 3 vector } m_axi_sw1_AWBURST { O 2 vector } m_axi_sw1_AWLOCK { O 2 vector } m_axi_sw1_AWCACHE { O 4 vector } m_axi_sw1_AWPROT { O 3 vector } m_axi_sw1_AWQOS { O 4 vector } m_axi_sw1_AWREGION { O 4 vector } m_axi_sw1_AWUSER { O 1 vector } m_axi_sw1_WVALID { O 1 bit } m_axi_sw1_WREADY { I 1 bit } m_axi_sw1_WDATA { O 32 vector } m_axi_sw1_WSTRB { O 4 vector } m_axi_sw1_WLAST { O 1 bit } m_axi_sw1_WID { O 1 vector } m_axi_sw1_WUSER { O 1 vector } m_axi_sw1_ARVALID { O 1 bit } m_axi_sw1_ARREADY { I 1 bit } m_axi_sw1_ARADDR { O 64 vector } m_axi_sw1_ARID { O 1 vector } m_axi_sw1_ARLEN { O 32 vector } m_axi_sw1_ARSIZE { O 3 vector } m_axi_sw1_ARBURST { O 2 vector } m_axi_sw1_ARLOCK { O 2 vector } m_axi_sw1_ARCACHE { O 4 vector } m_axi_sw1_ARPROT { O 3 vector } m_axi_sw1_ARQOS { O 4 vector } m_axi_sw1_ARREGION { O 4 vector } m_axi_sw1_ARUSER { O 1 vector } m_axi_sw1_RVALID { I 1 bit } m_axi_sw1_RREADY { O 1 bit } m_axi_sw1_RDATA { I 32 vector } m_axi_sw1_RLAST { I 1 bit } m_axi_sw1_RID { I 1 vector } m_axi_sw1_RFIFONUM { I 9 vector } m_axi_sw1_RUSER { I 1 vector } m_axi_sw1_RRESP { I 2 vector } m_axi_sw1_BVALID { I 1 bit } m_axi_sw1_BREADY { O 1 bit } m_axi_sw1_BRESP { I 2 vector } m_axi_sw1_BID { I 1 vector } m_axi_sw1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name sw0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_sw0 \
    op interface \
    ports { m_axi_sw0_AWVALID { O 1 bit } m_axi_sw0_AWREADY { I 1 bit } m_axi_sw0_AWADDR { O 64 vector } m_axi_sw0_AWID { O 1 vector } m_axi_sw0_AWLEN { O 32 vector } m_axi_sw0_AWSIZE { O 3 vector } m_axi_sw0_AWBURST { O 2 vector } m_axi_sw0_AWLOCK { O 2 vector } m_axi_sw0_AWCACHE { O 4 vector } m_axi_sw0_AWPROT { O 3 vector } m_axi_sw0_AWQOS { O 4 vector } m_axi_sw0_AWREGION { O 4 vector } m_axi_sw0_AWUSER { O 1 vector } m_axi_sw0_WVALID { O 1 bit } m_axi_sw0_WREADY { I 1 bit } m_axi_sw0_WDATA { O 32 vector } m_axi_sw0_WSTRB { O 4 vector } m_axi_sw0_WLAST { O 1 bit } m_axi_sw0_WID { O 1 vector } m_axi_sw0_WUSER { O 1 vector } m_axi_sw0_ARVALID { O 1 bit } m_axi_sw0_ARREADY { I 1 bit } m_axi_sw0_ARADDR { O 64 vector } m_axi_sw0_ARID { O 1 vector } m_axi_sw0_ARLEN { O 32 vector } m_axi_sw0_ARSIZE { O 3 vector } m_axi_sw0_ARBURST { O 2 vector } m_axi_sw0_ARLOCK { O 2 vector } m_axi_sw0_ARCACHE { O 4 vector } m_axi_sw0_ARPROT { O 3 vector } m_axi_sw0_ARQOS { O 4 vector } m_axi_sw0_ARREGION { O 4 vector } m_axi_sw0_ARUSER { O 1 vector } m_axi_sw0_RVALID { I 1 bit } m_axi_sw0_RREADY { O 1 bit } m_axi_sw0_RDATA { I 32 vector } m_axi_sw0_RLAST { I 1 bit } m_axi_sw0_RID { I 1 vector } m_axi_sw0_RFIFONUM { I 9 vector } m_axi_sw0_RUSER { I 1 vector } m_axi_sw0_RRESP { I 2 vector } m_axi_sw0_BVALID { I 1 bit } m_axi_sw0_BREADY { O 1 bit } m_axi_sw0_BRESP { I 2 vector } m_axi_sw0_BID { I 1 vector } m_axi_sw0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name sa2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sa2 \
    op interface \
    ports { m_axi_sa2_AWVALID { O 1 bit } m_axi_sa2_AWREADY { I 1 bit } m_axi_sa2_AWADDR { O 64 vector } m_axi_sa2_AWID { O 1 vector } m_axi_sa2_AWLEN { O 32 vector } m_axi_sa2_AWSIZE { O 3 vector } m_axi_sa2_AWBURST { O 2 vector } m_axi_sa2_AWLOCK { O 2 vector } m_axi_sa2_AWCACHE { O 4 vector } m_axi_sa2_AWPROT { O 3 vector } m_axi_sa2_AWQOS { O 4 vector } m_axi_sa2_AWREGION { O 4 vector } m_axi_sa2_AWUSER { O 1 vector } m_axi_sa2_WVALID { O 1 bit } m_axi_sa2_WREADY { I 1 bit } m_axi_sa2_WDATA { O 32 vector } m_axi_sa2_WSTRB { O 4 vector } m_axi_sa2_WLAST { O 1 bit } m_axi_sa2_WID { O 1 vector } m_axi_sa2_WUSER { O 1 vector } m_axi_sa2_ARVALID { O 1 bit } m_axi_sa2_ARREADY { I 1 bit } m_axi_sa2_ARADDR { O 64 vector } m_axi_sa2_ARID { O 1 vector } m_axi_sa2_ARLEN { O 32 vector } m_axi_sa2_ARSIZE { O 3 vector } m_axi_sa2_ARBURST { O 2 vector } m_axi_sa2_ARLOCK { O 2 vector } m_axi_sa2_ARCACHE { O 4 vector } m_axi_sa2_ARPROT { O 3 vector } m_axi_sa2_ARQOS { O 4 vector } m_axi_sa2_ARREGION { O 4 vector } m_axi_sa2_ARUSER { O 1 vector } m_axi_sa2_RVALID { I 1 bit } m_axi_sa2_RREADY { O 1 bit } m_axi_sa2_RDATA { I 32 vector } m_axi_sa2_RLAST { I 1 bit } m_axi_sa2_RID { I 1 vector } m_axi_sa2_RFIFONUM { I 9 vector } m_axi_sa2_RUSER { I 1 vector } m_axi_sa2_RRESP { I 2 vector } m_axi_sa2_BVALID { I 1 bit } m_axi_sa2_BREADY { O 1 bit } m_axi_sa2_BRESP { I 2 vector } m_axi_sa2_BID { I 1 vector } m_axi_sa2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name sa1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sa1 \
    op interface \
    ports { m_axi_sa1_AWVALID { O 1 bit } m_axi_sa1_AWREADY { I 1 bit } m_axi_sa1_AWADDR { O 64 vector } m_axi_sa1_AWID { O 1 vector } m_axi_sa1_AWLEN { O 32 vector } m_axi_sa1_AWSIZE { O 3 vector } m_axi_sa1_AWBURST { O 2 vector } m_axi_sa1_AWLOCK { O 2 vector } m_axi_sa1_AWCACHE { O 4 vector } m_axi_sa1_AWPROT { O 3 vector } m_axi_sa1_AWQOS { O 4 vector } m_axi_sa1_AWREGION { O 4 vector } m_axi_sa1_AWUSER { O 1 vector } m_axi_sa1_WVALID { O 1 bit } m_axi_sa1_WREADY { I 1 bit } m_axi_sa1_WDATA { O 32 vector } m_axi_sa1_WSTRB { O 4 vector } m_axi_sa1_WLAST { O 1 bit } m_axi_sa1_WID { O 1 vector } m_axi_sa1_WUSER { O 1 vector } m_axi_sa1_ARVALID { O 1 bit } m_axi_sa1_ARREADY { I 1 bit } m_axi_sa1_ARADDR { O 64 vector } m_axi_sa1_ARID { O 1 vector } m_axi_sa1_ARLEN { O 32 vector } m_axi_sa1_ARSIZE { O 3 vector } m_axi_sa1_ARBURST { O 2 vector } m_axi_sa1_ARLOCK { O 2 vector } m_axi_sa1_ARCACHE { O 4 vector } m_axi_sa1_ARPROT { O 3 vector } m_axi_sa1_ARQOS { O 4 vector } m_axi_sa1_ARREGION { O 4 vector } m_axi_sa1_ARUSER { O 1 vector } m_axi_sa1_RVALID { I 1 bit } m_axi_sa1_RREADY { O 1 bit } m_axi_sa1_RDATA { I 32 vector } m_axi_sa1_RLAST { I 1 bit } m_axi_sa1_RID { I 1 vector } m_axi_sa1_RFIFONUM { I 9 vector } m_axi_sa1_RUSER { I 1 vector } m_axi_sa1_RRESP { I 2 vector } m_axi_sa1_BVALID { I 1 bit } m_axi_sa1_BREADY { O 1 bit } m_axi_sa1_BRESP { I 2 vector } m_axi_sa1_BID { I 1 vector } m_axi_sa1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name zext_ln176_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln176_1 \
    op interface \
    ports { zext_ln176_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
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
    id 18 \
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
    id 19 \
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
    id 20 \
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
    id 21 \
    name add_ln172_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln172_3 \
    op interface \
    ports { add_ln172_3 { I 33 vector } } \
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
set InstName large_ssssm_flow_control_loop_pipe_sequential_init_U
set CompName large_ssssm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix large_ssssm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


