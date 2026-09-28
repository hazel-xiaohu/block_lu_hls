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
    id 15 \
    name ur \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename ur \
    op interface \
    ports { ur_address0 { O 13 vector } ur_ce0 { O 1 bit } ur_we0 { O 1 bit } ur_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ur'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 17 \
    name uv \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename uv \
    op interface \
    ports { uv_address0 { O 13 vector } uv_ce0 { O 1 bit } uv_we0 { O 1 bit } uv_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'uv'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name v2tu3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2tu3 \
    op interface \
    ports { m_axi_v2tu3_AWVALID { O 1 bit } m_axi_v2tu3_AWREADY { I 1 bit } m_axi_v2tu3_AWADDR { O 64 vector } m_axi_v2tu3_AWID { O 1 vector } m_axi_v2tu3_AWLEN { O 32 vector } m_axi_v2tu3_AWSIZE { O 3 vector } m_axi_v2tu3_AWBURST { O 2 vector } m_axi_v2tu3_AWLOCK { O 2 vector } m_axi_v2tu3_AWCACHE { O 4 vector } m_axi_v2tu3_AWPROT { O 3 vector } m_axi_v2tu3_AWQOS { O 4 vector } m_axi_v2tu3_AWREGION { O 4 vector } m_axi_v2tu3_AWUSER { O 1 vector } m_axi_v2tu3_WVALID { O 1 bit } m_axi_v2tu3_WREADY { I 1 bit } m_axi_v2tu3_WDATA { O 32 vector } m_axi_v2tu3_WSTRB { O 4 vector } m_axi_v2tu3_WLAST { O 1 bit } m_axi_v2tu3_WID { O 1 vector } m_axi_v2tu3_WUSER { O 1 vector } m_axi_v2tu3_ARVALID { O 1 bit } m_axi_v2tu3_ARREADY { I 1 bit } m_axi_v2tu3_ARADDR { O 64 vector } m_axi_v2tu3_ARID { O 1 vector } m_axi_v2tu3_ARLEN { O 32 vector } m_axi_v2tu3_ARSIZE { O 3 vector } m_axi_v2tu3_ARBURST { O 2 vector } m_axi_v2tu3_ARLOCK { O 2 vector } m_axi_v2tu3_ARCACHE { O 4 vector } m_axi_v2tu3_ARPROT { O 3 vector } m_axi_v2tu3_ARQOS { O 4 vector } m_axi_v2tu3_ARREGION { O 4 vector } m_axi_v2tu3_ARUSER { O 1 vector } m_axi_v2tu3_RVALID { I 1 bit } m_axi_v2tu3_RREADY { O 1 bit } m_axi_v2tu3_RDATA { I 32 vector } m_axi_v2tu3_RLAST { I 1 bit } m_axi_v2tu3_RID { I 1 vector } m_axi_v2tu3_RFIFONUM { I 9 vector } m_axi_v2tu3_RUSER { I 1 vector } m_axi_v2tu3_RRESP { I 2 vector } m_axi_v2tu3_BVALID { I 1 bit } m_axi_v2tu3_BREADY { O 1 bit } m_axi_v2tu3_BRESP { I 2 vector } m_axi_v2tu3_BID { I 1 vector } m_axi_v2tu3_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name v2tu2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2tu2 \
    op interface \
    ports { m_axi_v2tu2_AWVALID { O 1 bit } m_axi_v2tu2_AWREADY { I 1 bit } m_axi_v2tu2_AWADDR { O 64 vector } m_axi_v2tu2_AWID { O 1 vector } m_axi_v2tu2_AWLEN { O 32 vector } m_axi_v2tu2_AWSIZE { O 3 vector } m_axi_v2tu2_AWBURST { O 2 vector } m_axi_v2tu2_AWLOCK { O 2 vector } m_axi_v2tu2_AWCACHE { O 4 vector } m_axi_v2tu2_AWPROT { O 3 vector } m_axi_v2tu2_AWQOS { O 4 vector } m_axi_v2tu2_AWREGION { O 4 vector } m_axi_v2tu2_AWUSER { O 1 vector } m_axi_v2tu2_WVALID { O 1 bit } m_axi_v2tu2_WREADY { I 1 bit } m_axi_v2tu2_WDATA { O 32 vector } m_axi_v2tu2_WSTRB { O 4 vector } m_axi_v2tu2_WLAST { O 1 bit } m_axi_v2tu2_WID { O 1 vector } m_axi_v2tu2_WUSER { O 1 vector } m_axi_v2tu2_ARVALID { O 1 bit } m_axi_v2tu2_ARREADY { I 1 bit } m_axi_v2tu2_ARADDR { O 64 vector } m_axi_v2tu2_ARID { O 1 vector } m_axi_v2tu2_ARLEN { O 32 vector } m_axi_v2tu2_ARSIZE { O 3 vector } m_axi_v2tu2_ARBURST { O 2 vector } m_axi_v2tu2_ARLOCK { O 2 vector } m_axi_v2tu2_ARCACHE { O 4 vector } m_axi_v2tu2_ARPROT { O 3 vector } m_axi_v2tu2_ARQOS { O 4 vector } m_axi_v2tu2_ARREGION { O 4 vector } m_axi_v2tu2_ARUSER { O 1 vector } m_axi_v2tu2_RVALID { I 1 bit } m_axi_v2tu2_RREADY { O 1 bit } m_axi_v2tu2_RDATA { I 32 vector } m_axi_v2tu2_RLAST { I 1 bit } m_axi_v2tu2_RID { I 1 vector } m_axi_v2tu2_RFIFONUM { I 9 vector } m_axi_v2tu2_RUSER { I 1 vector } m_axi_v2tu2_RRESP { I 2 vector } m_axi_v2tu2_BVALID { I 1 bit } m_axi_v2tu2_BREADY { O 1 bit } m_axi_v2tu2_BRESP { I 2 vector } m_axi_v2tu2_BID { I 1 vector } m_axi_v2tu2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name v2tu1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v2tu1 \
    op interface \
    ports { m_axi_v2tu1_AWVALID { O 1 bit } m_axi_v2tu1_AWREADY { I 1 bit } m_axi_v2tu1_AWADDR { O 64 vector } m_axi_v2tu1_AWID { O 1 vector } m_axi_v2tu1_AWLEN { O 32 vector } m_axi_v2tu1_AWSIZE { O 3 vector } m_axi_v2tu1_AWBURST { O 2 vector } m_axi_v2tu1_AWLOCK { O 2 vector } m_axi_v2tu1_AWCACHE { O 4 vector } m_axi_v2tu1_AWPROT { O 3 vector } m_axi_v2tu1_AWQOS { O 4 vector } m_axi_v2tu1_AWREGION { O 4 vector } m_axi_v2tu1_AWUSER { O 1 vector } m_axi_v2tu1_WVALID { O 1 bit } m_axi_v2tu1_WREADY { I 1 bit } m_axi_v2tu1_WDATA { O 32 vector } m_axi_v2tu1_WSTRB { O 4 vector } m_axi_v2tu1_WLAST { O 1 bit } m_axi_v2tu1_WID { O 1 vector } m_axi_v2tu1_WUSER { O 1 vector } m_axi_v2tu1_ARVALID { O 1 bit } m_axi_v2tu1_ARREADY { I 1 bit } m_axi_v2tu1_ARADDR { O 64 vector } m_axi_v2tu1_ARID { O 1 vector } m_axi_v2tu1_ARLEN { O 32 vector } m_axi_v2tu1_ARSIZE { O 3 vector } m_axi_v2tu1_ARBURST { O 2 vector } m_axi_v2tu1_ARLOCK { O 2 vector } m_axi_v2tu1_ARCACHE { O 4 vector } m_axi_v2tu1_ARPROT { O 3 vector } m_axi_v2tu1_ARQOS { O 4 vector } m_axi_v2tu1_ARREGION { O 4 vector } m_axi_v2tu1_ARUSER { O 1 vector } m_axi_v2tu1_RVALID { I 1 bit } m_axi_v2tu1_RREADY { O 1 bit } m_axi_v2tu1_RDATA { I 32 vector } m_axi_v2tu1_RLAST { I 1 bit } m_axi_v2tu1_RID { I 1 vector } m_axi_v2tu1_RFIFONUM { I 9 vector } m_axi_v2tu1_RUSER { I 1 vector } m_axi_v2tu1_RRESP { I 2 vector } m_axi_v2tu1_BVALID { I 1 bit } m_axi_v2tu1_BREADY { O 1 bit } m_axi_v2tu1_BRESP { I 2 vector } m_axi_v2tu1_BID { I 1 vector } m_axi_v2tu1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name sext_ln333_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln333_1 \
    op interface \
    ports { sext_ln333_1 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name sext_ln333 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln333 \
    op interface \
    ports { sext_ln333 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name trunc_ln333_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln333_2 \
    op interface \
    ports { trunc_ln333_2 { I 14 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name u_csr_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_u_csr_val \
    op interface \
    ports { u_csr_val { I 64 vector } } \
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


