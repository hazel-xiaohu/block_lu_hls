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
    id 48 \
    name pos_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pos_12 \
    op interface \
    ports { pos_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name l_col \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_col \
    op interface \
    ports { m_axi_l_col_0_AWVALID { O 1 bit } m_axi_l_col_0_AWREADY { I 1 bit } m_axi_l_col_0_AWADDR { O 64 vector } m_axi_l_col_0_AWID { O 1 vector } m_axi_l_col_0_AWLEN { O 32 vector } m_axi_l_col_0_AWSIZE { O 3 vector } m_axi_l_col_0_AWBURST { O 2 vector } m_axi_l_col_0_AWLOCK { O 2 vector } m_axi_l_col_0_AWCACHE { O 4 vector } m_axi_l_col_0_AWPROT { O 3 vector } m_axi_l_col_0_AWQOS { O 4 vector } m_axi_l_col_0_AWREGION { O 4 vector } m_axi_l_col_0_AWUSER { O 1 vector } m_axi_l_col_0_WVALID { O 1 bit } m_axi_l_col_0_WREADY { I 1 bit } m_axi_l_col_0_WDATA { O 32 vector } m_axi_l_col_0_WSTRB { O 4 vector } m_axi_l_col_0_WLAST { O 1 bit } m_axi_l_col_0_WID { O 1 vector } m_axi_l_col_0_WUSER { O 1 vector } m_axi_l_col_0_ARVALID { O 1 bit } m_axi_l_col_0_ARREADY { I 1 bit } m_axi_l_col_0_ARADDR { O 64 vector } m_axi_l_col_0_ARID { O 1 vector } m_axi_l_col_0_ARLEN { O 32 vector } m_axi_l_col_0_ARSIZE { O 3 vector } m_axi_l_col_0_ARBURST { O 2 vector } m_axi_l_col_0_ARLOCK { O 2 vector } m_axi_l_col_0_ARCACHE { O 4 vector } m_axi_l_col_0_ARPROT { O 3 vector } m_axi_l_col_0_ARQOS { O 4 vector } m_axi_l_col_0_ARREGION { O 4 vector } m_axi_l_col_0_ARUSER { O 1 vector } m_axi_l_col_0_RVALID { I 1 bit } m_axi_l_col_0_RREADY { O 1 bit } m_axi_l_col_0_RDATA { I 32 vector } m_axi_l_col_0_RLAST { I 1 bit } m_axi_l_col_0_RID { I 1 vector } m_axi_l_col_0_RFIFONUM { I 9 vector } m_axi_l_col_0_RUSER { I 1 vector } m_axi_l_col_0_RRESP { I 2 vector } m_axi_l_col_0_BVALID { I 1 bit } m_axi_l_col_0_BREADY { O 1 bit } m_axi_l_col_0_BRESP { I 2 vector } m_axi_l_col_0_BID { I 1 vector } m_axi_l_col_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name l_row_addr_5_read_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_l_row_addr_5_read_1 \
    op interface \
    ports { l_row_addr_5_read_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name L_cid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_L_cid \
    op interface \
    ports { L_cid { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name n \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_n \
    op interface \
    ports { n { I 32 vector } } \
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


