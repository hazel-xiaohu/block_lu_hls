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
    id 687 \
    name rcache_result_bank4_d \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_result_bank4_d \
    op interface \
    ports { rcache_result_bank4_d_dout { I 68 vector } rcache_result_bank4_d_num_data_valid { I 7 vector } rcache_result_bank4_d_fifo_cap { I 7 vector } rcache_result_bank4_d_empty_n { I 1 bit } rcache_result_bank4_d_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 688 \
    name bval4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bval4 \
    op interface \
    ports { m_axi_bval4_AWVALID { O 1 bit } m_axi_bval4_AWREADY { I 1 bit } m_axi_bval4_AWADDR { O 64 vector } m_axi_bval4_AWID { O 1 vector } m_axi_bval4_AWLEN { O 32 vector } m_axi_bval4_AWSIZE { O 3 vector } m_axi_bval4_AWBURST { O 2 vector } m_axi_bval4_AWLOCK { O 2 vector } m_axi_bval4_AWCACHE { O 4 vector } m_axi_bval4_AWPROT { O 3 vector } m_axi_bval4_AWQOS { O 4 vector } m_axi_bval4_AWREGION { O 4 vector } m_axi_bval4_AWUSER { O 1 vector } m_axi_bval4_WVALID { O 1 bit } m_axi_bval4_WREADY { I 1 bit } m_axi_bval4_WDATA { O 128 vector } m_axi_bval4_WSTRB { O 16 vector } m_axi_bval4_WLAST { O 1 bit } m_axi_bval4_WID { O 1 vector } m_axi_bval4_WUSER { O 1 vector } m_axi_bval4_ARVALID { O 1 bit } m_axi_bval4_ARREADY { I 1 bit } m_axi_bval4_ARADDR { O 64 vector } m_axi_bval4_ARID { O 1 vector } m_axi_bval4_ARLEN { O 32 vector } m_axi_bval4_ARSIZE { O 3 vector } m_axi_bval4_ARBURST { O 2 vector } m_axi_bval4_ARLOCK { O 2 vector } m_axi_bval4_ARCACHE { O 4 vector } m_axi_bval4_ARPROT { O 3 vector } m_axi_bval4_ARQOS { O 4 vector } m_axi_bval4_ARREGION { O 4 vector } m_axi_bval4_ARUSER { O 1 vector } m_axi_bval4_RVALID { I 1 bit } m_axi_bval4_RREADY { O 1 bit } m_axi_bval4_RDATA { I 128 vector } m_axi_bval4_RLAST { I 1 bit } m_axi_bval4_RID { I 1 vector } m_axi_bval4_RFIFONUM { I 9 vector } m_axi_bval4_RUSER { I 1 vector } m_axi_bval4_RRESP { I 2 vector } m_axi_bval4_BVALID { I 1 bit } m_axi_bval4_BREADY { O 1 bit } m_axi_bval4_BRESP { I 2 vector } m_axi_bval4_BID { I 1 vector } m_axi_bval4_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 689 \
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
    id 690 \
    name bcid4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bcid4 \
    op interface \
    ports { m_axi_bcid4_AWVALID { O 1 bit } m_axi_bcid4_AWREADY { I 1 bit } m_axi_bcid4_AWADDR { O 64 vector } m_axi_bcid4_AWID { O 1 vector } m_axi_bcid4_AWLEN { O 32 vector } m_axi_bcid4_AWSIZE { O 3 vector } m_axi_bcid4_AWBURST { O 2 vector } m_axi_bcid4_AWLOCK { O 2 vector } m_axi_bcid4_AWCACHE { O 4 vector } m_axi_bcid4_AWPROT { O 3 vector } m_axi_bcid4_AWQOS { O 4 vector } m_axi_bcid4_AWREGION { O 4 vector } m_axi_bcid4_AWUSER { O 1 vector } m_axi_bcid4_WVALID { O 1 bit } m_axi_bcid4_WREADY { I 1 bit } m_axi_bcid4_WDATA { O 128 vector } m_axi_bcid4_WSTRB { O 16 vector } m_axi_bcid4_WLAST { O 1 bit } m_axi_bcid4_WID { O 1 vector } m_axi_bcid4_WUSER { O 1 vector } m_axi_bcid4_ARVALID { O 1 bit } m_axi_bcid4_ARREADY { I 1 bit } m_axi_bcid4_ARADDR { O 64 vector } m_axi_bcid4_ARID { O 1 vector } m_axi_bcid4_ARLEN { O 32 vector } m_axi_bcid4_ARSIZE { O 3 vector } m_axi_bcid4_ARBURST { O 2 vector } m_axi_bcid4_ARLOCK { O 2 vector } m_axi_bcid4_ARCACHE { O 4 vector } m_axi_bcid4_ARPROT { O 3 vector } m_axi_bcid4_ARQOS { O 4 vector } m_axi_bcid4_ARREGION { O 4 vector } m_axi_bcid4_ARUSER { O 1 vector } m_axi_bcid4_RVALID { I 1 bit } m_axi_bcid4_RREADY { O 1 bit } m_axi_bcid4_RDATA { I 128 vector } m_axi_bcid4_RLAST { I 1 bit } m_axi_bcid4_RID { I 1 vector } m_axi_bcid4_RFIFONUM { I 9 vector } m_axi_bcid4_RUSER { I 1 vector } m_axi_bcid4_RRESP { I 2 vector } m_axi_bcid4_BVALID { I 1 bit } m_axi_bcid4_BREADY { O 1 bit } m_axi_bcid4_BRESP { I 2 vector } m_axi_bcid4_BID { I 1 vector } m_axi_bcid4_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 691 \
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
    id 692 \
    name vblock4d \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock4d \
    op interface \
    ports { vblock4d_din { O 134 vector } vblock4d_num_data_valid { I 8 vector } vblock4d_fifo_cap { I 8 vector } vblock4d_full_n { I 1 bit } vblock4d_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 693 \
    name cblock4d \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock4d \
    op interface \
    ports { cblock4d_din { O 134 vector } cblock4d_num_data_valid { I 8 vector } cblock4d_fifo_cap { I 8 vector } cblock4d_full_n { I 1 bit } cblock4d_write { O 1 bit } } \
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


