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
    id 21 \
    name arcsr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_arcsr \
    op interface \
    ports { m_axi_arcsr_AWVALID { O 1 bit } m_axi_arcsr_AWREADY { I 1 bit } m_axi_arcsr_AWADDR { O 64 vector } m_axi_arcsr_AWID { O 1 vector } m_axi_arcsr_AWLEN { O 32 vector } m_axi_arcsr_AWSIZE { O 3 vector } m_axi_arcsr_AWBURST { O 2 vector } m_axi_arcsr_AWLOCK { O 2 vector } m_axi_arcsr_AWCACHE { O 4 vector } m_axi_arcsr_AWPROT { O 3 vector } m_axi_arcsr_AWQOS { O 4 vector } m_axi_arcsr_AWREGION { O 4 vector } m_axi_arcsr_AWUSER { O 1 vector } m_axi_arcsr_WVALID { O 1 bit } m_axi_arcsr_WREADY { I 1 bit } m_axi_arcsr_WDATA { O 32 vector } m_axi_arcsr_WSTRB { O 4 vector } m_axi_arcsr_WLAST { O 1 bit } m_axi_arcsr_WID { O 1 vector } m_axi_arcsr_WUSER { O 1 vector } m_axi_arcsr_ARVALID { O 1 bit } m_axi_arcsr_ARREADY { I 1 bit } m_axi_arcsr_ARADDR { O 64 vector } m_axi_arcsr_ARID { O 1 vector } m_axi_arcsr_ARLEN { O 32 vector } m_axi_arcsr_ARSIZE { O 3 vector } m_axi_arcsr_ARBURST { O 2 vector } m_axi_arcsr_ARLOCK { O 2 vector } m_axi_arcsr_ARCACHE { O 4 vector } m_axi_arcsr_ARPROT { O 3 vector } m_axi_arcsr_ARQOS { O 4 vector } m_axi_arcsr_ARREGION { O 4 vector } m_axi_arcsr_ARUSER { O 1 vector } m_axi_arcsr_RVALID { I 1 bit } m_axi_arcsr_RREADY { O 1 bit } m_axi_arcsr_RDATA { I 32 vector } m_axi_arcsr_RLAST { I 1 bit } m_axi_arcsr_RID { I 1 vector } m_axi_arcsr_RFIFONUM { I 9 vector } m_axi_arcsr_RUSER { I 1 vector } m_axi_arcsr_RRESP { I 2 vector } m_axi_arcsr_BVALID { I 1 bit } m_axi_arcsr_BREADY { O 1 bit } m_axi_arcsr_BRESP { I 2 vector } m_axi_arcsr_BID { I 1 vector } m_axi_arcsr_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name sext_ln13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln13 \
    op interface \
    ports { sext_ln13 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name add \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add \
    op interface \
    ports { add { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name p_A_reader_rs \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_A_reader_rs \
    op interface \
    ports { p_A_reader_rs_din { O 64 vector } p_A_reader_rs_num_data_valid { I 8 vector } p_A_reader_rs_fifo_cap { I 8 vector } p_A_reader_rs_full_n { I 1 bit } p_A_reader_rs_write { O 1 bit } } \
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
set InstName spmm_flow_control_loop_pipe_sequential_init_U
set CompName spmm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix spmm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


