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
    id 965 \
    name select_ln105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln105 \
    op interface \
    ports { select_ln105 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 966 \
    name bc1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bc1 \
    op interface \
    ports { m_axi_bc1_0_AWVALID { O 1 bit } m_axi_bc1_0_AWREADY { I 1 bit } m_axi_bc1_0_AWADDR { O 64 vector } m_axi_bc1_0_AWID { O 1 vector } m_axi_bc1_0_AWLEN { O 32 vector } m_axi_bc1_0_AWSIZE { O 3 vector } m_axi_bc1_0_AWBURST { O 2 vector } m_axi_bc1_0_AWLOCK { O 2 vector } m_axi_bc1_0_AWCACHE { O 4 vector } m_axi_bc1_0_AWPROT { O 3 vector } m_axi_bc1_0_AWQOS { O 4 vector } m_axi_bc1_0_AWREGION { O 4 vector } m_axi_bc1_0_AWUSER { O 1 vector } m_axi_bc1_0_WVALID { O 1 bit } m_axi_bc1_0_WREADY { I 1 bit } m_axi_bc1_0_WDATA { O 128 vector } m_axi_bc1_0_WSTRB { O 16 vector } m_axi_bc1_0_WLAST { O 1 bit } m_axi_bc1_0_WID { O 1 vector } m_axi_bc1_0_WUSER { O 1 vector } m_axi_bc1_0_ARVALID { O 1 bit } m_axi_bc1_0_ARREADY { I 1 bit } m_axi_bc1_0_ARADDR { O 64 vector } m_axi_bc1_0_ARID { O 1 vector } m_axi_bc1_0_ARLEN { O 32 vector } m_axi_bc1_0_ARSIZE { O 3 vector } m_axi_bc1_0_ARBURST { O 2 vector } m_axi_bc1_0_ARLOCK { O 2 vector } m_axi_bc1_0_ARCACHE { O 4 vector } m_axi_bc1_0_ARPROT { O 3 vector } m_axi_bc1_0_ARQOS { O 4 vector } m_axi_bc1_0_ARREGION { O 4 vector } m_axi_bc1_0_ARUSER { O 1 vector } m_axi_bc1_0_RVALID { I 1 bit } m_axi_bc1_0_RREADY { O 1 bit } m_axi_bc1_0_RDATA { I 128 vector } m_axi_bc1_0_RLAST { I 1 bit } m_axi_bc1_0_RID { I 1 vector } m_axi_bc1_0_RFIFONUM { I 9 vector } m_axi_bc1_0_RUSER { I 1 vector } m_axi_bc1_0_RRESP { I 2 vector } m_axi_bc1_0_BVALID { I 1 bit } m_axi_bc1_0_BREADY { O 1 bit } m_axi_bc1_0_BRESP { I 2 vector } m_axi_bc1_0_BID { I 1 vector } m_axi_bc1_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 967 \
    name sext_ln105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln105 \
    op interface \
    ports { sext_ln105 { I 60 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 968 \
    name coff \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coff \
    op interface \
    ports { coff_din { O 128 vector } coff_full_n { I 1 bit } coff_write { O 1 bit } coff_num_data_valid { I 4 vector } coff_fifo_cap { I 4 vector } } \
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


