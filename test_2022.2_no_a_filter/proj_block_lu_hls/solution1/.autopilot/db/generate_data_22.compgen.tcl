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
    id 673 \
    name rcache_result_bank2_d \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_result_bank2_d \
    op interface \
    ports { rcache_result_bank2_d_dout { I 68 vector } rcache_result_bank2_d_num_data_valid { I 7 vector } rcache_result_bank2_d_fifo_cap { I 7 vector } rcache_result_bank2_d_empty_n { I 1 bit } rcache_result_bank2_d_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 674 \
    name bval2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bval2 \
    op interface \
    ports { m_axi_bval2_AWVALID { O 1 bit } m_axi_bval2_AWREADY { I 1 bit } m_axi_bval2_AWADDR { O 64 vector } m_axi_bval2_AWID { O 1 vector } m_axi_bval2_AWLEN { O 32 vector } m_axi_bval2_AWSIZE { O 3 vector } m_axi_bval2_AWBURST { O 2 vector } m_axi_bval2_AWLOCK { O 2 vector } m_axi_bval2_AWCACHE { O 4 vector } m_axi_bval2_AWPROT { O 3 vector } m_axi_bval2_AWQOS { O 4 vector } m_axi_bval2_AWREGION { O 4 vector } m_axi_bval2_AWUSER { O 1 vector } m_axi_bval2_WVALID { O 1 bit } m_axi_bval2_WREADY { I 1 bit } m_axi_bval2_WDATA { O 128 vector } m_axi_bval2_WSTRB { O 16 vector } m_axi_bval2_WLAST { O 1 bit } m_axi_bval2_WID { O 1 vector } m_axi_bval2_WUSER { O 1 vector } m_axi_bval2_ARVALID { O 1 bit } m_axi_bval2_ARREADY { I 1 bit } m_axi_bval2_ARADDR { O 64 vector } m_axi_bval2_ARID { O 1 vector } m_axi_bval2_ARLEN { O 32 vector } m_axi_bval2_ARSIZE { O 3 vector } m_axi_bval2_ARBURST { O 2 vector } m_axi_bval2_ARLOCK { O 2 vector } m_axi_bval2_ARCACHE { O 4 vector } m_axi_bval2_ARPROT { O 3 vector } m_axi_bval2_ARQOS { O 4 vector } m_axi_bval2_ARREGION { O 4 vector } m_axi_bval2_ARUSER { O 1 vector } m_axi_bval2_RVALID { I 1 bit } m_axi_bval2_RREADY { O 1 bit } m_axi_bval2_RDATA { I 128 vector } m_axi_bval2_RLAST { I 1 bit } m_axi_bval2_RID { I 1 vector } m_axi_bval2_RFIFONUM { I 9 vector } m_axi_bval2_RUSER { I 1 vector } m_axi_bval2_RRESP { I 2 vector } m_axi_bval2_BVALID { I 1 bit } m_axi_bval2_BREADY { O 1 bit } m_axi_bval2_BRESP { I 2 vector } m_axi_bval2_BID { I 1 vector } m_axi_bval2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 675 \
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
    id 676 \
    name bcid2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bcid2 \
    op interface \
    ports { m_axi_bcid2_AWVALID { O 1 bit } m_axi_bcid2_AWREADY { I 1 bit } m_axi_bcid2_AWADDR { O 64 vector } m_axi_bcid2_AWID { O 1 vector } m_axi_bcid2_AWLEN { O 32 vector } m_axi_bcid2_AWSIZE { O 3 vector } m_axi_bcid2_AWBURST { O 2 vector } m_axi_bcid2_AWLOCK { O 2 vector } m_axi_bcid2_AWCACHE { O 4 vector } m_axi_bcid2_AWPROT { O 3 vector } m_axi_bcid2_AWQOS { O 4 vector } m_axi_bcid2_AWREGION { O 4 vector } m_axi_bcid2_AWUSER { O 1 vector } m_axi_bcid2_WVALID { O 1 bit } m_axi_bcid2_WREADY { I 1 bit } m_axi_bcid2_WDATA { O 128 vector } m_axi_bcid2_WSTRB { O 16 vector } m_axi_bcid2_WLAST { O 1 bit } m_axi_bcid2_WID { O 1 vector } m_axi_bcid2_WUSER { O 1 vector } m_axi_bcid2_ARVALID { O 1 bit } m_axi_bcid2_ARREADY { I 1 bit } m_axi_bcid2_ARADDR { O 64 vector } m_axi_bcid2_ARID { O 1 vector } m_axi_bcid2_ARLEN { O 32 vector } m_axi_bcid2_ARSIZE { O 3 vector } m_axi_bcid2_ARBURST { O 2 vector } m_axi_bcid2_ARLOCK { O 2 vector } m_axi_bcid2_ARCACHE { O 4 vector } m_axi_bcid2_ARPROT { O 3 vector } m_axi_bcid2_ARQOS { O 4 vector } m_axi_bcid2_ARREGION { O 4 vector } m_axi_bcid2_ARUSER { O 1 vector } m_axi_bcid2_RVALID { I 1 bit } m_axi_bcid2_RREADY { O 1 bit } m_axi_bcid2_RDATA { I 128 vector } m_axi_bcid2_RLAST { I 1 bit } m_axi_bcid2_RID { I 1 vector } m_axi_bcid2_RFIFONUM { I 9 vector } m_axi_bcid2_RUSER { I 1 vector } m_axi_bcid2_RRESP { I 2 vector } m_axi_bcid2_BVALID { I 1 bit } m_axi_bcid2_BREADY { O 1 bit } m_axi_bcid2_BRESP { I 2 vector } m_axi_bcid2_BID { I 1 vector } m_axi_bcid2_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 677 \
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
    id 678 \
    name vblock2d \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock2d \
    op interface \
    ports { vblock2d_din { O 134 vector } vblock2d_num_data_valid { I 8 vector } vblock2d_fifo_cap { I 8 vector } vblock2d_full_n { I 1 bit } vblock2d_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 679 \
    name cblock2d \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock2d \
    op interface \
    ports { cblock2d_din { O 134 vector } cblock2d_num_data_valid { I 8 vector } cblock2d_fifo_cap { I 8 vector } cblock2d_full_n { I 1 bit } cblock2d_write { O 1 bit } } \
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


