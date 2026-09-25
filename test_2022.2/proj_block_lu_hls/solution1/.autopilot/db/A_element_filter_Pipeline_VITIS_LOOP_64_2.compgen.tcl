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
    id 40 \
    name aval \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_aval \
    op interface \
    ports { m_axi_aval_AWVALID { O 1 bit } m_axi_aval_AWREADY { I 1 bit } m_axi_aval_AWADDR { O 64 vector } m_axi_aval_AWID { O 1 vector } m_axi_aval_AWLEN { O 32 vector } m_axi_aval_AWSIZE { O 3 vector } m_axi_aval_AWBURST { O 2 vector } m_axi_aval_AWLOCK { O 2 vector } m_axi_aval_AWCACHE { O 4 vector } m_axi_aval_AWPROT { O 3 vector } m_axi_aval_AWQOS { O 4 vector } m_axi_aval_AWREGION { O 4 vector } m_axi_aval_AWUSER { O 1 vector } m_axi_aval_WVALID { O 1 bit } m_axi_aval_WREADY { I 1 bit } m_axi_aval_WDATA { O 32 vector } m_axi_aval_WSTRB { O 4 vector } m_axi_aval_WLAST { O 1 bit } m_axi_aval_WID { O 1 vector } m_axi_aval_WUSER { O 1 vector } m_axi_aval_ARVALID { O 1 bit } m_axi_aval_ARREADY { I 1 bit } m_axi_aval_ARADDR { O 64 vector } m_axi_aval_ARID { O 1 vector } m_axi_aval_ARLEN { O 32 vector } m_axi_aval_ARSIZE { O 3 vector } m_axi_aval_ARBURST { O 2 vector } m_axi_aval_ARLOCK { O 2 vector } m_axi_aval_ARCACHE { O 4 vector } m_axi_aval_ARPROT { O 3 vector } m_axi_aval_ARQOS { O 4 vector } m_axi_aval_ARREGION { O 4 vector } m_axi_aval_ARUSER { O 1 vector } m_axi_aval_RVALID { I 1 bit } m_axi_aval_RREADY { O 1 bit } m_axi_aval_RDATA { I 32 vector } m_axi_aval_RLAST { I 1 bit } m_axi_aval_RID { I 1 vector } m_axi_aval_RFIFONUM { I 9 vector } m_axi_aval_RUSER { I 1 vector } m_axi_aval_RRESP { I 2 vector } m_axi_aval_BVALID { I 1 bit } m_axi_aval_BREADY { O 1 bit } m_axi_aval_BRESP { I 2 vector } m_axi_aval_BID { I 1 vector } m_axi_aval_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name sext_ln64_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln64_1 \
    op interface \
    ports { sext_ln64_1 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name acid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_acid \
    op interface \
    ports { m_axi_acid_AWVALID { O 1 bit } m_axi_acid_AWREADY { I 1 bit } m_axi_acid_AWADDR { O 64 vector } m_axi_acid_AWID { O 1 vector } m_axi_acid_AWLEN { O 32 vector } m_axi_acid_AWSIZE { O 3 vector } m_axi_acid_AWBURST { O 2 vector } m_axi_acid_AWLOCK { O 2 vector } m_axi_acid_AWCACHE { O 4 vector } m_axi_acid_AWPROT { O 3 vector } m_axi_acid_AWQOS { O 4 vector } m_axi_acid_AWREGION { O 4 vector } m_axi_acid_AWUSER { O 1 vector } m_axi_acid_WVALID { O 1 bit } m_axi_acid_WREADY { I 1 bit } m_axi_acid_WDATA { O 32 vector } m_axi_acid_WSTRB { O 4 vector } m_axi_acid_WLAST { O 1 bit } m_axi_acid_WID { O 1 vector } m_axi_acid_WUSER { O 1 vector } m_axi_acid_ARVALID { O 1 bit } m_axi_acid_ARREADY { I 1 bit } m_axi_acid_ARADDR { O 64 vector } m_axi_acid_ARID { O 1 vector } m_axi_acid_ARLEN { O 32 vector } m_axi_acid_ARSIZE { O 3 vector } m_axi_acid_ARBURST { O 2 vector } m_axi_acid_ARLOCK { O 2 vector } m_axi_acid_ARCACHE { O 4 vector } m_axi_acid_ARPROT { O 3 vector } m_axi_acid_ARQOS { O 4 vector } m_axi_acid_ARREGION { O 4 vector } m_axi_acid_ARUSER { O 1 vector } m_axi_acid_RVALID { I 1 bit } m_axi_acid_RREADY { O 1 bit } m_axi_acid_RDATA { I 32 vector } m_axi_acid_RLAST { I 1 bit } m_axi_acid_RID { I 1 vector } m_axi_acid_RFIFONUM { I 9 vector } m_axi_acid_RUSER { I 1 vector } m_axi_acid_RRESP { I 2 vector } m_axi_acid_BVALID { I 1 bit } m_axi_acid_BREADY { O 1 bit } m_axi_acid_BRESP { I 2 vector } m_axi_acid_BID { I 1 vector } m_axi_acid_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name sext_ln64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln64 \
    op interface \
    ports { sext_ln64 { I 62 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name row_rlen \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_rlen \
    op interface \
    ports { row_rlen { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name brnum \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_brnum \
    op interface \
    ports { brnum { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name keep_col_V \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_keep_col_V \
    op interface \
    ports { keep_col_V { I 2831 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name row_rid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_row_rid \
    op interface \
    ports { row_rid { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name p_A_element_as \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_A_element_as \
    op interface \
    ports { p_A_element_as_din { O 98 vector } p_A_element_as_num_data_valid { I 9 vector } p_A_element_as_fifo_cap { I 9 vector } p_A_element_as_full_n { I 1 bit } p_A_element_as_write { O 1 bit } } \
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


