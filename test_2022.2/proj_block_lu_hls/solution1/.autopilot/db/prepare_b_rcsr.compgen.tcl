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
    id 37 \
    name local_rcsr \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename local_rcsr \
    op interface \
    ports { local_rcsr_address0 { O 10 vector } local_rcsr_ce0 { O 1 bit } local_rcsr_we0 { O 1 bit } local_rcsr_d0 { O 128 vector } local_rcsr_q0 { I 128 vector } local_rcsr_address1 { O 10 vector } local_rcsr_ce1 { O 1 bit } local_rcsr_q1 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_rcsr'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name brcsr1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_brcsr1 \
    op interface \
    ports { m_axi_brcsr1_AWVALID { O 1 bit } m_axi_brcsr1_AWREADY { I 1 bit } m_axi_brcsr1_AWADDR { O 64 vector } m_axi_brcsr1_AWID { O 1 vector } m_axi_brcsr1_AWLEN { O 32 vector } m_axi_brcsr1_AWSIZE { O 3 vector } m_axi_brcsr1_AWBURST { O 2 vector } m_axi_brcsr1_AWLOCK { O 2 vector } m_axi_brcsr1_AWCACHE { O 4 vector } m_axi_brcsr1_AWPROT { O 3 vector } m_axi_brcsr1_AWQOS { O 4 vector } m_axi_brcsr1_AWREGION { O 4 vector } m_axi_brcsr1_AWUSER { O 1 vector } m_axi_brcsr1_WVALID { O 1 bit } m_axi_brcsr1_WREADY { I 1 bit } m_axi_brcsr1_WDATA { O 128 vector } m_axi_brcsr1_WSTRB { O 16 vector } m_axi_brcsr1_WLAST { O 1 bit } m_axi_brcsr1_WID { O 1 vector } m_axi_brcsr1_WUSER { O 1 vector } m_axi_brcsr1_ARVALID { O 1 bit } m_axi_brcsr1_ARREADY { I 1 bit } m_axi_brcsr1_ARADDR { O 64 vector } m_axi_brcsr1_ARID { O 1 vector } m_axi_brcsr1_ARLEN { O 32 vector } m_axi_brcsr1_ARSIZE { O 3 vector } m_axi_brcsr1_ARBURST { O 2 vector } m_axi_brcsr1_ARLOCK { O 2 vector } m_axi_brcsr1_ARCACHE { O 4 vector } m_axi_brcsr1_ARPROT { O 3 vector } m_axi_brcsr1_ARQOS { O 4 vector } m_axi_brcsr1_ARREGION { O 4 vector } m_axi_brcsr1_ARUSER { O 1 vector } m_axi_brcsr1_RVALID { I 1 bit } m_axi_brcsr1_RREADY { O 1 bit } m_axi_brcsr1_RDATA { I 128 vector } m_axi_brcsr1_RLAST { I 1 bit } m_axi_brcsr1_RID { I 1 vector } m_axi_brcsr1_RFIFONUM { I 9 vector } m_axi_brcsr1_RUSER { I 1 vector } m_axi_brcsr1_RRESP { I 2 vector } m_axi_brcsr1_BVALID { I 1 bit } m_axi_brcsr1_BREADY { O 1 bit } m_axi_brcsr1_BRESP { I 2 vector } m_axi_brcsr1_BID { I 1 vector } m_axi_brcsr1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name B_rcsr \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_rcsr \
    op interface \
    ports { B_rcsr { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
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
    id 39 \
    name p_B_keep_col11 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_B_keep_col11 \
    op interface \
    ports { p_B_keep_col11_din { O 2831 vector } p_B_keep_col11_num_data_valid { I 2 vector } p_B_keep_col11_fifo_cap { I 2 vector } p_B_keep_col11_full_n { I 1 bit } p_B_keep_col11_write { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


