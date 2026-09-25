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
    id 689 \
    name rcache_result_bank3_d \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_result_bank3_d \
    op interface \
    ports { rcache_result_bank3_d_dout { I 68 vector } rcache_result_bank3_d_num_data_valid { I 7 vector } rcache_result_bank3_d_fifo_cap { I 7 vector } rcache_result_bank3_d_empty_n { I 1 bit } rcache_result_bank3_d_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 690 \
    name bval3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bval3 \
    op interface \
    ports { m_axi_bval3_AWVALID { O 1 bit } m_axi_bval3_AWREADY { I 1 bit } m_axi_bval3_AWADDR { O 64 vector } m_axi_bval3_AWID { O 1 vector } m_axi_bval3_AWLEN { O 32 vector } m_axi_bval3_AWSIZE { O 3 vector } m_axi_bval3_AWBURST { O 2 vector } m_axi_bval3_AWLOCK { O 2 vector } m_axi_bval3_AWCACHE { O 4 vector } m_axi_bval3_AWPROT { O 3 vector } m_axi_bval3_AWQOS { O 4 vector } m_axi_bval3_AWREGION { O 4 vector } m_axi_bval3_AWUSER { O 1 vector } m_axi_bval3_WVALID { O 1 bit } m_axi_bval3_WREADY { I 1 bit } m_axi_bval3_WDATA { O 128 vector } m_axi_bval3_WSTRB { O 16 vector } m_axi_bval3_WLAST { O 1 bit } m_axi_bval3_WID { O 1 vector } m_axi_bval3_WUSER { O 1 vector } m_axi_bval3_ARVALID { O 1 bit } m_axi_bval3_ARREADY { I 1 bit } m_axi_bval3_ARADDR { O 64 vector } m_axi_bval3_ARID { O 1 vector } m_axi_bval3_ARLEN { O 32 vector } m_axi_bval3_ARSIZE { O 3 vector } m_axi_bval3_ARBURST { O 2 vector } m_axi_bval3_ARLOCK { O 2 vector } m_axi_bval3_ARCACHE { O 4 vector } m_axi_bval3_ARPROT { O 3 vector } m_axi_bval3_ARQOS { O 4 vector } m_axi_bval3_ARREGION { O 4 vector } m_axi_bval3_ARUSER { O 1 vector } m_axi_bval3_RVALID { I 1 bit } m_axi_bval3_RREADY { O 1 bit } m_axi_bval3_RDATA { I 128 vector } m_axi_bval3_RLAST { I 1 bit } m_axi_bval3_RID { I 1 vector } m_axi_bval3_RFIFONUM { I 9 vector } m_axi_bval3_RUSER { I 1 vector } m_axi_bval3_RRESP { I 2 vector } m_axi_bval3_BVALID { I 1 bit } m_axi_bval3_BREADY { O 1 bit } m_axi_bval3_BRESP { I 2 vector } m_axi_bval3_BID { I 1 vector } m_axi_bval3_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 691 \
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
    id 692 \
    name bcid3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bcid3 \
    op interface \
    ports { m_axi_bcid3_AWVALID { O 1 bit } m_axi_bcid3_AWREADY { I 1 bit } m_axi_bcid3_AWADDR { O 64 vector } m_axi_bcid3_AWID { O 1 vector } m_axi_bcid3_AWLEN { O 32 vector } m_axi_bcid3_AWSIZE { O 3 vector } m_axi_bcid3_AWBURST { O 2 vector } m_axi_bcid3_AWLOCK { O 2 vector } m_axi_bcid3_AWCACHE { O 4 vector } m_axi_bcid3_AWPROT { O 3 vector } m_axi_bcid3_AWQOS { O 4 vector } m_axi_bcid3_AWREGION { O 4 vector } m_axi_bcid3_AWUSER { O 1 vector } m_axi_bcid3_WVALID { O 1 bit } m_axi_bcid3_WREADY { I 1 bit } m_axi_bcid3_WDATA { O 128 vector } m_axi_bcid3_WSTRB { O 16 vector } m_axi_bcid3_WLAST { O 1 bit } m_axi_bcid3_WID { O 1 vector } m_axi_bcid3_WUSER { O 1 vector } m_axi_bcid3_ARVALID { O 1 bit } m_axi_bcid3_ARREADY { I 1 bit } m_axi_bcid3_ARADDR { O 64 vector } m_axi_bcid3_ARID { O 1 vector } m_axi_bcid3_ARLEN { O 32 vector } m_axi_bcid3_ARSIZE { O 3 vector } m_axi_bcid3_ARBURST { O 2 vector } m_axi_bcid3_ARLOCK { O 2 vector } m_axi_bcid3_ARCACHE { O 4 vector } m_axi_bcid3_ARPROT { O 3 vector } m_axi_bcid3_ARQOS { O 4 vector } m_axi_bcid3_ARREGION { O 4 vector } m_axi_bcid3_ARUSER { O 1 vector } m_axi_bcid3_RVALID { I 1 bit } m_axi_bcid3_RREADY { O 1 bit } m_axi_bcid3_RDATA { I 128 vector } m_axi_bcid3_RLAST { I 1 bit } m_axi_bcid3_RID { I 1 vector } m_axi_bcid3_RFIFONUM { I 9 vector } m_axi_bcid3_RUSER { I 1 vector } m_axi_bcid3_RRESP { I 2 vector } m_axi_bcid3_BVALID { I 1 bit } m_axi_bcid3_BREADY { O 1 bit } m_axi_bcid3_BRESP { I 2 vector } m_axi_bcid3_BID { I 1 vector } m_axi_bcid3_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 693 \
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
    id 694 \
    name vblock3d \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock3d \
    op interface \
    ports { vblock3d_din { O 134 vector } vblock3d_num_data_valid { I 8 vector } vblock3d_fifo_cap { I 8 vector } vblock3d_full_n { I 1 bit } vblock3d_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 695 \
    name cblock3d \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock3d \
    op interface \
    ports { cblock3d_din { O 134 vector } cblock3d_num_data_valid { I 8 vector } cblock3d_fifo_cap { I 8 vector } cblock3d_full_n { I 1 bit } cblock3d_write { O 1 bit } } \
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


