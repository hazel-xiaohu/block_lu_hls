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
    id 176 \
    name Bridx_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename Bridx_V \
    op interface \
    ports { Bridx_V_address0 { O 1 vector } Bridx_V_ce0 { O 1 bit } Bridx_V_we0 { O 1 bit } Bridx_V_d0 { O 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Bridx_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name access_idx_cast_cast_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_access_idx_cast_cast_cast \
    op interface \
    ports { access_idx_cast_cast_cast { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name brcsr2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_brcsr2 \
    op interface \
    ports { m_axi_brcsr2_AWVALID { O 1 bit } m_axi_brcsr2_AWREADY { I 1 bit } m_axi_brcsr2_AWADDR { O 64 vector } m_axi_brcsr2_AWID { O 1 vector } m_axi_brcsr2_AWLEN { O 32 vector } m_axi_brcsr2_AWSIZE { O 3 vector } m_axi_brcsr2_AWBURST { O 2 vector } m_axi_brcsr2_AWLOCK { O 2 vector } m_axi_brcsr2_AWCACHE { O 4 vector } m_axi_brcsr2_AWPROT { O 3 vector } m_axi_brcsr2_AWQOS { O 4 vector } m_axi_brcsr2_AWREGION { O 4 vector } m_axi_brcsr2_AWUSER { O 1 vector } m_axi_brcsr2_WVALID { O 1 bit } m_axi_brcsr2_WREADY { I 1 bit } m_axi_brcsr2_WDATA { O 128 vector } m_axi_brcsr2_WSTRB { O 16 vector } m_axi_brcsr2_WLAST { O 1 bit } m_axi_brcsr2_WID { O 1 vector } m_axi_brcsr2_WUSER { O 1 vector } m_axi_brcsr2_ARVALID { O 1 bit } m_axi_brcsr2_ARREADY { I 1 bit } m_axi_brcsr2_ARADDR { O 64 vector } m_axi_brcsr2_ARID { O 1 vector } m_axi_brcsr2_ARLEN { O 32 vector } m_axi_brcsr2_ARSIZE { O 3 vector } m_axi_brcsr2_ARBURST { O 2 vector } m_axi_brcsr2_ARLOCK { O 2 vector } m_axi_brcsr2_ARCACHE { O 4 vector } m_axi_brcsr2_ARPROT { O 3 vector } m_axi_brcsr2_ARQOS { O 4 vector } m_axi_brcsr2_ARREGION { O 4 vector } m_axi_brcsr2_ARUSER { O 1 vector } m_axi_brcsr2_RVALID { I 1 bit } m_axi_brcsr2_RREADY { O 1 bit } m_axi_brcsr2_RDATA { I 128 vector } m_axi_brcsr2_RLAST { I 1 bit } m_axi_brcsr2_RID { I 1 vector } m_axi_brcsr2_RFIFONUM { I 9 vector } m_axi_brcsr2_RUSER { I 1 vector } m_axi_brcsr2_RRESP { I 2 vector } m_axi_brcsr2_BVALID { I 1 bit } m_axi_brcsr2_BREADY { O 1 bit } m_axi_brcsr2_BRESP { I 2 vector } m_axi_brcsr2_BID { I 1 vector } m_axi_brcsr2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name sext_ln91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln91 \
    op interface \
    ports { sext_ln91 { I 60 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name add \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add \
    op interface \
    ports { add { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name trunc_ln \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln \
    op interface \
    ports { trunc_ln { I 1 vector } } \
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


