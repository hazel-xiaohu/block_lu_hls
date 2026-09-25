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
    id 853 \
    name tmp_252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_252 \
    op interface \
    ports { tmp_252 { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 854 \
    name begin_block_idx \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_begin_block_idx \
    op interface \
    ports { begin_block_idx { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 855 \
    name add_ln53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_add_ln53 \
    op interface \
    ports { add_ln53 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 856 \
    name bcid3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bcid3 \
    op interface \
    ports { m_axi_bcid3_0_AWVALID { O 1 bit } m_axi_bcid3_0_AWREADY { I 1 bit } m_axi_bcid3_0_AWADDR { O 64 vector } m_axi_bcid3_0_AWID { O 1 vector } m_axi_bcid3_0_AWLEN { O 32 vector } m_axi_bcid3_0_AWSIZE { O 3 vector } m_axi_bcid3_0_AWBURST { O 2 vector } m_axi_bcid3_0_AWLOCK { O 2 vector } m_axi_bcid3_0_AWCACHE { O 4 vector } m_axi_bcid3_0_AWPROT { O 3 vector } m_axi_bcid3_0_AWQOS { O 4 vector } m_axi_bcid3_0_AWREGION { O 4 vector } m_axi_bcid3_0_AWUSER { O 1 vector } m_axi_bcid3_0_WVALID { O 1 bit } m_axi_bcid3_0_WREADY { I 1 bit } m_axi_bcid3_0_WDATA { O 128 vector } m_axi_bcid3_0_WSTRB { O 16 vector } m_axi_bcid3_0_WLAST { O 1 bit } m_axi_bcid3_0_WID { O 1 vector } m_axi_bcid3_0_WUSER { O 1 vector } m_axi_bcid3_0_ARVALID { O 1 bit } m_axi_bcid3_0_ARREADY { I 1 bit } m_axi_bcid3_0_ARADDR { O 64 vector } m_axi_bcid3_0_ARID { O 1 vector } m_axi_bcid3_0_ARLEN { O 32 vector } m_axi_bcid3_0_ARSIZE { O 3 vector } m_axi_bcid3_0_ARBURST { O 2 vector } m_axi_bcid3_0_ARLOCK { O 2 vector } m_axi_bcid3_0_ARCACHE { O 4 vector } m_axi_bcid3_0_ARPROT { O 3 vector } m_axi_bcid3_0_ARQOS { O 4 vector } m_axi_bcid3_0_ARREGION { O 4 vector } m_axi_bcid3_0_ARUSER { O 1 vector } m_axi_bcid3_0_RVALID { I 1 bit } m_axi_bcid3_0_RREADY { O 1 bit } m_axi_bcid3_0_RDATA { I 128 vector } m_axi_bcid3_0_RLAST { I 1 bit } m_axi_bcid3_0_RID { I 1 vector } m_axi_bcid3_0_RFIFONUM { I 9 vector } m_axi_bcid3_0_RUSER { I 1 vector } m_axi_bcid3_0_RRESP { I 2 vector } m_axi_bcid3_0_BVALID { I 1 bit } m_axi_bcid3_0_BREADY { O 1 bit } m_axi_bcid3_0_BRESP { I 2 vector } m_axi_bcid3_0_BID { I 1 vector } m_axi_bcid3_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 857 \
    name sext_ln53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln53 \
    op interface \
    ports { sext_ln53 { I 60 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 858 \
    name bval3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bval3 \
    op interface \
    ports { m_axi_bval3_0_AWVALID { O 1 bit } m_axi_bval3_0_AWREADY { I 1 bit } m_axi_bval3_0_AWADDR { O 64 vector } m_axi_bval3_0_AWID { O 1 vector } m_axi_bval3_0_AWLEN { O 32 vector } m_axi_bval3_0_AWSIZE { O 3 vector } m_axi_bval3_0_AWBURST { O 2 vector } m_axi_bval3_0_AWLOCK { O 2 vector } m_axi_bval3_0_AWCACHE { O 4 vector } m_axi_bval3_0_AWPROT { O 3 vector } m_axi_bval3_0_AWQOS { O 4 vector } m_axi_bval3_0_AWREGION { O 4 vector } m_axi_bval3_0_AWUSER { O 1 vector } m_axi_bval3_0_WVALID { O 1 bit } m_axi_bval3_0_WREADY { I 1 bit } m_axi_bval3_0_WDATA { O 128 vector } m_axi_bval3_0_WSTRB { O 16 vector } m_axi_bval3_0_WLAST { O 1 bit } m_axi_bval3_0_WID { O 1 vector } m_axi_bval3_0_WUSER { O 1 vector } m_axi_bval3_0_ARVALID { O 1 bit } m_axi_bval3_0_ARREADY { I 1 bit } m_axi_bval3_0_ARADDR { O 64 vector } m_axi_bval3_0_ARID { O 1 vector } m_axi_bval3_0_ARLEN { O 32 vector } m_axi_bval3_0_ARSIZE { O 3 vector } m_axi_bval3_0_ARBURST { O 2 vector } m_axi_bval3_0_ARLOCK { O 2 vector } m_axi_bval3_0_ARCACHE { O 4 vector } m_axi_bval3_0_ARPROT { O 3 vector } m_axi_bval3_0_ARQOS { O 4 vector } m_axi_bval3_0_ARREGION { O 4 vector } m_axi_bval3_0_ARUSER { O 1 vector } m_axi_bval3_0_RVALID { I 1 bit } m_axi_bval3_0_RREADY { O 1 bit } m_axi_bval3_0_RDATA { I 128 vector } m_axi_bval3_0_RLAST { I 1 bit } m_axi_bval3_0_RID { I 1 vector } m_axi_bval3_0_RFIFONUM { I 9 vector } m_axi_bval3_0_RUSER { I 1 vector } m_axi_bval3_0_RRESP { I 2 vector } m_axi_bval3_0_BVALID { I 1 bit } m_axi_bval3_0_BREADY { O 1 bit } m_axi_bval3_0_BRESP { I 2 vector } m_axi_bval3_0_BID { I 1 vector } m_axi_bval3_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 859 \
    name sext_ln53_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln53_2 \
    op interface \
    ports { sext_ln53_2 { I 60 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 860 \
    name trunc_ln55_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln55_2 \
    op interface \
    ports { trunc_ln55_2 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 861 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 862 \
    name vblock3d \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock3d \
    op interface \
    ports { vblock3d_din { O 134 vector } vblock3d_full_n { I 1 bit } vblock3d_write { O 1 bit } vblock3d_num_data_valid { I 8 vector } vblock3d_fifo_cap { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 863 \
    name cblock3d \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock3d \
    op interface \
    ports { cblock3d_din { O 134 vector } cblock3d_full_n { I 1 bit } cblock3d_write { O 1 bit } cblock3d_num_data_valid { I 8 vector } cblock3d_fifo_cap { I 8 vector } } \
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


