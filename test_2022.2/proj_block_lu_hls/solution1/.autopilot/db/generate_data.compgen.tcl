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
    id 675 \
    name rcache_result_bank1_d \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_result_bank1_d \
    op interface \
    ports { rcache_result_bank1_d_dout { I 68 vector } rcache_result_bank1_d_num_data_valid { I 7 vector } rcache_result_bank1_d_fifo_cap { I 7 vector } rcache_result_bank1_d_empty_n { I 1 bit } rcache_result_bank1_d_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 676 \
    name bval1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bval1 \
    op interface \
    ports { m_axi_bval1_AWVALID { O 1 bit } m_axi_bval1_AWREADY { I 1 bit } m_axi_bval1_AWADDR { O 64 vector } m_axi_bval1_AWID { O 1 vector } m_axi_bval1_AWLEN { O 32 vector } m_axi_bval1_AWSIZE { O 3 vector } m_axi_bval1_AWBURST { O 2 vector } m_axi_bval1_AWLOCK { O 2 vector } m_axi_bval1_AWCACHE { O 4 vector } m_axi_bval1_AWPROT { O 3 vector } m_axi_bval1_AWQOS { O 4 vector } m_axi_bval1_AWREGION { O 4 vector } m_axi_bval1_AWUSER { O 1 vector } m_axi_bval1_WVALID { O 1 bit } m_axi_bval1_WREADY { I 1 bit } m_axi_bval1_WDATA { O 128 vector } m_axi_bval1_WSTRB { O 16 vector } m_axi_bval1_WLAST { O 1 bit } m_axi_bval1_WID { O 1 vector } m_axi_bval1_WUSER { O 1 vector } m_axi_bval1_ARVALID { O 1 bit } m_axi_bval1_ARREADY { I 1 bit } m_axi_bval1_ARADDR { O 64 vector } m_axi_bval1_ARID { O 1 vector } m_axi_bval1_ARLEN { O 32 vector } m_axi_bval1_ARSIZE { O 3 vector } m_axi_bval1_ARBURST { O 2 vector } m_axi_bval1_ARLOCK { O 2 vector } m_axi_bval1_ARCACHE { O 4 vector } m_axi_bval1_ARPROT { O 3 vector } m_axi_bval1_ARQOS { O 4 vector } m_axi_bval1_ARREGION { O 4 vector } m_axi_bval1_ARUSER { O 1 vector } m_axi_bval1_RVALID { I 1 bit } m_axi_bval1_RREADY { O 1 bit } m_axi_bval1_RDATA { I 128 vector } m_axi_bval1_RLAST { I 1 bit } m_axi_bval1_RID { I 1 vector } m_axi_bval1_RFIFONUM { I 9 vector } m_axi_bval1_RUSER { I 1 vector } m_axi_bval1_RRESP { I 2 vector } m_axi_bval1_BVALID { I 1 bit } m_axi_bval1_BREADY { O 1 bit } m_axi_bval1_BRESP { I 2 vector } m_axi_bval1_BID { I 1 vector } m_axi_bval1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 677 \
    name B_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_val \
    op interface \
    ports { B_val { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 678 \
    name bcid1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bcid1 \
    op interface \
    ports { m_axi_bcid1_AWVALID { O 1 bit } m_axi_bcid1_AWREADY { I 1 bit } m_axi_bcid1_AWADDR { O 64 vector } m_axi_bcid1_AWID { O 1 vector } m_axi_bcid1_AWLEN { O 32 vector } m_axi_bcid1_AWSIZE { O 3 vector } m_axi_bcid1_AWBURST { O 2 vector } m_axi_bcid1_AWLOCK { O 2 vector } m_axi_bcid1_AWCACHE { O 4 vector } m_axi_bcid1_AWPROT { O 3 vector } m_axi_bcid1_AWQOS { O 4 vector } m_axi_bcid1_AWREGION { O 4 vector } m_axi_bcid1_AWUSER { O 1 vector } m_axi_bcid1_WVALID { O 1 bit } m_axi_bcid1_WREADY { I 1 bit } m_axi_bcid1_WDATA { O 128 vector } m_axi_bcid1_WSTRB { O 16 vector } m_axi_bcid1_WLAST { O 1 bit } m_axi_bcid1_WID { O 1 vector } m_axi_bcid1_WUSER { O 1 vector } m_axi_bcid1_ARVALID { O 1 bit } m_axi_bcid1_ARREADY { I 1 bit } m_axi_bcid1_ARADDR { O 64 vector } m_axi_bcid1_ARID { O 1 vector } m_axi_bcid1_ARLEN { O 32 vector } m_axi_bcid1_ARSIZE { O 3 vector } m_axi_bcid1_ARBURST { O 2 vector } m_axi_bcid1_ARLOCK { O 2 vector } m_axi_bcid1_ARCACHE { O 4 vector } m_axi_bcid1_ARPROT { O 3 vector } m_axi_bcid1_ARQOS { O 4 vector } m_axi_bcid1_ARREGION { O 4 vector } m_axi_bcid1_ARUSER { O 1 vector } m_axi_bcid1_RVALID { I 1 bit } m_axi_bcid1_RREADY { O 1 bit } m_axi_bcid1_RDATA { I 128 vector } m_axi_bcid1_RLAST { I 1 bit } m_axi_bcid1_RID { I 1 vector } m_axi_bcid1_RFIFONUM { I 9 vector } m_axi_bcid1_RUSER { I 1 vector } m_axi_bcid1_RRESP { I 2 vector } m_axi_bcid1_BVALID { I 1 bit } m_axi_bcid1_BREADY { O 1 bit } m_axi_bcid1_BRESP { I 2 vector } m_axi_bcid1_BID { I 1 vector } m_axi_bcid1_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 679 \
    name B_cid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_cid \
    op interface \
    ports { B_cid { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 680 \
    name vblock1d \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock1d \
    op interface \
    ports { vblock1d_din { O 134 vector } vblock1d_num_data_valid { I 8 vector } vblock1d_fifo_cap { I 8 vector } vblock1d_full_n { I 1 bit } vblock1d_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 681 \
    name cblock1d \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock1d \
    op interface \
    ports { cblock1d_din { O 134 vector } cblock1d_num_data_valid { I 8 vector } cblock1d_fifo_cap { I 8 vector } cblock1d_full_n { I 1 bit } cblock1d_write { O 1 bit } } \
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


