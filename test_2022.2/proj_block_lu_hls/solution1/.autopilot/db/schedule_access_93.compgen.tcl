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
    id 1251 \
    name vscheduler \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vscheduler \
    op interface \
    ports { vscheduler_dout { I 68 vector } vscheduler_num_data_valid { I 7 vector } vscheduler_fifo_cap { I 7 vector } vscheduler_empty_n { I 1 bit } vscheduler_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1252 \
    name vresponse4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vresponse4 \
    op interface \
    ports { vresponse4_dout { I 6 vector } vresponse4_num_data_valid { I 7 vector } vresponse4_fifo_cap { I 7 vector } vresponse4_empty_n { I 1 bit } vresponse4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1253 \
    name voff3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_voff3 \
    op interface \
    ports { voff3_din { O 128 vector } voff3_num_data_valid { I 7 vector } voff3_fifo_cap { I 7 vector } voff3_full_n { I 1 bit } voff3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1254 \
    name bv4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bv4 \
    op interface \
    ports { m_axi_bv4_AWVALID { O 1 bit } m_axi_bv4_AWREADY { I 1 bit } m_axi_bv4_AWADDR { O 64 vector } m_axi_bv4_AWID { O 1 vector } m_axi_bv4_AWLEN { O 32 vector } m_axi_bv4_AWSIZE { O 3 vector } m_axi_bv4_AWBURST { O 2 vector } m_axi_bv4_AWLOCK { O 2 vector } m_axi_bv4_AWCACHE { O 4 vector } m_axi_bv4_AWPROT { O 3 vector } m_axi_bv4_AWQOS { O 4 vector } m_axi_bv4_AWREGION { O 4 vector } m_axi_bv4_AWUSER { O 1 vector } m_axi_bv4_WVALID { O 1 bit } m_axi_bv4_WREADY { I 1 bit } m_axi_bv4_WDATA { O 128 vector } m_axi_bv4_WSTRB { O 16 vector } m_axi_bv4_WLAST { O 1 bit } m_axi_bv4_WID { O 1 vector } m_axi_bv4_WUSER { O 1 vector } m_axi_bv4_ARVALID { O 1 bit } m_axi_bv4_ARREADY { I 1 bit } m_axi_bv4_ARADDR { O 64 vector } m_axi_bv4_ARID { O 1 vector } m_axi_bv4_ARLEN { O 32 vector } m_axi_bv4_ARSIZE { O 3 vector } m_axi_bv4_ARBURST { O 2 vector } m_axi_bv4_ARLOCK { O 2 vector } m_axi_bv4_ARCACHE { O 4 vector } m_axi_bv4_ARPROT { O 3 vector } m_axi_bv4_ARQOS { O 4 vector } m_axi_bv4_ARREGION { O 4 vector } m_axi_bv4_ARUSER { O 1 vector } m_axi_bv4_RVALID { I 1 bit } m_axi_bv4_RREADY { O 1 bit } m_axi_bv4_RDATA { I 128 vector } m_axi_bv4_RLAST { I 1 bit } m_axi_bv4_RID { I 1 vector } m_axi_bv4_RFIFONUM { I 9 vector } m_axi_bv4_RUSER { I 1 vector } m_axi_bv4_RRESP { I 2 vector } m_axi_bv4_BVALID { I 1 bit } m_axi_bv4_BREADY { O 1 bit } m_axi_bv4_BRESP { I 2 vector } m_axi_bv4_BID { I 1 vector } m_axi_bv4_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1255 \
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
    id 1256 \
    name v_req \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_req \
    op interface \
    ports { v_req_din { O 209 vector } v_req_num_data_valid { I 7 vector } v_req_fifo_cap { I 7 vector } v_req_full_n { I 1 bit } v_req_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1257 \
    name v_hit1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_v_hit1 \
    op interface \
    ports { v_hit1_din { O 1 vector } v_hit1_num_data_valid { I 5 vector } v_hit1_fifo_cap { I 5 vector } v_hit1_full_n { I 1 bit } v_hit1_write { O 1 bit } } \
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


