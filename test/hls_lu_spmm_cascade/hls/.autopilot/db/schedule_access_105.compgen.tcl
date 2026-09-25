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
    id 1498 \
    name cscheduler \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cscheduler \
    op interface \
    ports { cscheduler_dout { I 68 vector } cscheduler_empty_n { I 1 bit } cscheduler_read { O 1 bit } cscheduler_num_data_valid { I 3 vector } cscheduler_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1499 \
    name cresponse4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresponse4 \
    op interface \
    ports { cresponse4_dout { I 6 vector } cresponse4_empty_n { I 1 bit } cresponse4_read { O 1 bit } cresponse4_num_data_valid { I 3 vector } cresponse4_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1500 \
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
    id 1501 \
    name bc4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bc4 \
    op interface \
    ports { m_axi_bc4_0_AWVALID { O 1 bit } m_axi_bc4_0_AWREADY { I 1 bit } m_axi_bc4_0_AWADDR { O 64 vector } m_axi_bc4_0_AWID { O 1 vector } m_axi_bc4_0_AWLEN { O 32 vector } m_axi_bc4_0_AWSIZE { O 3 vector } m_axi_bc4_0_AWBURST { O 2 vector } m_axi_bc4_0_AWLOCK { O 2 vector } m_axi_bc4_0_AWCACHE { O 4 vector } m_axi_bc4_0_AWPROT { O 3 vector } m_axi_bc4_0_AWQOS { O 4 vector } m_axi_bc4_0_AWREGION { O 4 vector } m_axi_bc4_0_AWUSER { O 1 vector } m_axi_bc4_0_WVALID { O 1 bit } m_axi_bc4_0_WREADY { I 1 bit } m_axi_bc4_0_WDATA { O 128 vector } m_axi_bc4_0_WSTRB { O 16 vector } m_axi_bc4_0_WLAST { O 1 bit } m_axi_bc4_0_WID { O 1 vector } m_axi_bc4_0_WUSER { O 1 vector } m_axi_bc4_0_ARVALID { O 1 bit } m_axi_bc4_0_ARREADY { I 1 bit } m_axi_bc4_0_ARADDR { O 64 vector } m_axi_bc4_0_ARID { O 1 vector } m_axi_bc4_0_ARLEN { O 32 vector } m_axi_bc4_0_ARSIZE { O 3 vector } m_axi_bc4_0_ARBURST { O 2 vector } m_axi_bc4_0_ARLOCK { O 2 vector } m_axi_bc4_0_ARCACHE { O 4 vector } m_axi_bc4_0_ARPROT { O 3 vector } m_axi_bc4_0_ARQOS { O 4 vector } m_axi_bc4_0_ARREGION { O 4 vector } m_axi_bc4_0_ARUSER { O 1 vector } m_axi_bc4_0_RVALID { I 1 bit } m_axi_bc4_0_RREADY { O 1 bit } m_axi_bc4_0_RDATA { I 128 vector } m_axi_bc4_0_RLAST { I 1 bit } m_axi_bc4_0_RID { I 1 vector } m_axi_bc4_0_RFIFONUM { I 9 vector } m_axi_bc4_0_RUSER { I 1 vector } m_axi_bc4_0_RRESP { I 2 vector } m_axi_bc4_0_BVALID { I 1 bit } m_axi_bc4_0_BREADY { O 1 bit } m_axi_bc4_0_BRESP { I 2 vector } m_axi_bc4_0_BID { I 1 vector } m_axi_bc4_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1502 \
    name off_pointer \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_off_pointer \
    op interface \
    ports { off_pointer { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1503 \
    name c_req \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_req \
    op interface \
    ports { c_req_din { O 225 vector } c_req_full_n { I 1 bit } c_req_write { O 1 bit } c_req_num_data_valid { I 3 vector } c_req_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1504 \
    name c_hit \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_hit \
    op interface \
    ports { c_hit_din { O 1 vector } c_hit_full_n { I 1 bit } c_hit_write { O 1 bit } c_hit_num_data_valid { I 5 vector } c_hit_fifo_cap { I 5 vector } } \
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


