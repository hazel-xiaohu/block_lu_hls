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
    id 61 \
    name row_idx \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename row_idx \
    op interface \
    ports { row_idx_address0 { O 13 vector } row_idx_ce0 { O 1 bit } row_idx_we0 { O 1 bit } row_idx_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_idx'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 62 \
    name row_val \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename row_val \
    op interface \
    ports { row_val_address0 { O 13 vector } row_val_ce0 { O 1 bit } row_val_we0 { O 1 bit } row_val_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'row_val'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name v4u2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v4u2 \
    op interface \
    ports { m_axi_v4u2_AWVALID { O 1 bit } m_axi_v4u2_AWREADY { I 1 bit } m_axi_v4u2_AWADDR { O 64 vector } m_axi_v4u2_AWID { O 1 vector } m_axi_v4u2_AWLEN { O 32 vector } m_axi_v4u2_AWSIZE { O 3 vector } m_axi_v4u2_AWBURST { O 2 vector } m_axi_v4u2_AWLOCK { O 2 vector } m_axi_v4u2_AWCACHE { O 4 vector } m_axi_v4u2_AWPROT { O 3 vector } m_axi_v4u2_AWQOS { O 4 vector } m_axi_v4u2_AWREGION { O 4 vector } m_axi_v4u2_AWUSER { O 1 vector } m_axi_v4u2_WVALID { O 1 bit } m_axi_v4u2_WREADY { I 1 bit } m_axi_v4u2_WDATA { O 32 vector } m_axi_v4u2_WSTRB { O 4 vector } m_axi_v4u2_WLAST { O 1 bit } m_axi_v4u2_WID { O 1 vector } m_axi_v4u2_WUSER { O 1 vector } m_axi_v4u2_ARVALID { O 1 bit } m_axi_v4u2_ARREADY { I 1 bit } m_axi_v4u2_ARADDR { O 64 vector } m_axi_v4u2_ARID { O 1 vector } m_axi_v4u2_ARLEN { O 32 vector } m_axi_v4u2_ARSIZE { O 3 vector } m_axi_v4u2_ARBURST { O 2 vector } m_axi_v4u2_ARLOCK { O 2 vector } m_axi_v4u2_ARCACHE { O 4 vector } m_axi_v4u2_ARPROT { O 3 vector } m_axi_v4u2_ARQOS { O 4 vector } m_axi_v4u2_ARREGION { O 4 vector } m_axi_v4u2_ARUSER { O 1 vector } m_axi_v4u2_RVALID { I 1 bit } m_axi_v4u2_RREADY { O 1 bit } m_axi_v4u2_RDATA { I 32 vector } m_axi_v4u2_RLAST { I 1 bit } m_axi_v4u2_RID { I 1 vector } m_axi_v4u2_RFIFONUM { I 9 vector } m_axi_v4u2_RUSER { I 1 vector } m_axi_v4u2_RRESP { I 2 vector } m_axi_v4u2_BVALID { I 1 bit } m_axi_v4u2_BREADY { O 1 bit } m_axi_v4u2_BRESP { I 2 vector } m_axi_v4u2_BID { I 1 vector } m_axi_v4u2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name v4u1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_v4u1 \
    op interface \
    ports { m_axi_v4u1_AWVALID { O 1 bit } m_axi_v4u1_AWREADY { I 1 bit } m_axi_v4u1_AWADDR { O 64 vector } m_axi_v4u1_AWID { O 1 vector } m_axi_v4u1_AWLEN { O 32 vector } m_axi_v4u1_AWSIZE { O 3 vector } m_axi_v4u1_AWBURST { O 2 vector } m_axi_v4u1_AWLOCK { O 2 vector } m_axi_v4u1_AWCACHE { O 4 vector } m_axi_v4u1_AWPROT { O 3 vector } m_axi_v4u1_AWQOS { O 4 vector } m_axi_v4u1_AWREGION { O 4 vector } m_axi_v4u1_AWUSER { O 1 vector } m_axi_v4u1_WVALID { O 1 bit } m_axi_v4u1_WREADY { I 1 bit } m_axi_v4u1_WDATA { O 32 vector } m_axi_v4u1_WSTRB { O 4 vector } m_axi_v4u1_WLAST { O 1 bit } m_axi_v4u1_WID { O 1 vector } m_axi_v4u1_WUSER { O 1 vector } m_axi_v4u1_ARVALID { O 1 bit } m_axi_v4u1_ARREADY { I 1 bit } m_axi_v4u1_ARADDR { O 64 vector } m_axi_v4u1_ARID { O 1 vector } m_axi_v4u1_ARLEN { O 32 vector } m_axi_v4u1_ARSIZE { O 3 vector } m_axi_v4u1_ARBURST { O 2 vector } m_axi_v4u1_ARLOCK { O 2 vector } m_axi_v4u1_ARCACHE { O 4 vector } m_axi_v4u1_ARPROT { O 3 vector } m_axi_v4u1_ARQOS { O 4 vector } m_axi_v4u1_ARREGION { O 4 vector } m_axi_v4u1_ARUSER { O 1 vector } m_axi_v4u1_RVALID { I 1 bit } m_axi_v4u1_RREADY { O 1 bit } m_axi_v4u1_RDATA { I 32 vector } m_axi_v4u1_RLAST { I 1 bit } m_axi_v4u1_RID { I 1 vector } m_axi_v4u1_RFIFONUM { I 9 vector } m_axi_v4u1_RUSER { I 1 vector } m_axi_v4u1_RRESP { I 2 vector } m_axi_v4u1_BVALID { I 1 bit } m_axi_v4u1_BREADY { O 1 bit } m_axi_v4u1_BRESP { I 2 vector } m_axi_v4u1_BID { I 1 vector } m_axi_v4u1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name sext_ln80_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln80_1 \
    op interface \
    ports { sext_ln80_1 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name sext_ln80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln80 \
    op interface \
    ports { sext_ln80 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name trunc_ln80_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln80_2 \
    op interface \
    ports { trunc_ln80_2 { I 14 vector } } \
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
set InstName large_getrf_v4_flow_control_loop_pipe_sequential_init_U
set CompName large_getrf_v4_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix large_getrf_v4_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


