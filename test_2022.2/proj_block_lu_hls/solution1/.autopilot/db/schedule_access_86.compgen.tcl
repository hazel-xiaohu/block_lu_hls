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
    id 1117 \
    name cscheduler \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cscheduler \
    op interface \
    ports { cscheduler_dout { I 68 vector } cscheduler_num_data_valid { I 7 vector } cscheduler_fifo_cap { I 7 vector } cscheduler_empty_n { I 1 bit } cscheduler_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1118 \
    name cresponse3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cresponse3 \
    op interface \
    ports { cresponse3_dout { I 6 vector } cresponse3_num_data_valid { I 7 vector } cresponse3_fifo_cap { I 7 vector } cresponse3_empty_n { I 1 bit } cresponse3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1119 \
    name coff4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_coff4 \
    op interface \
    ports { coff4_din { O 128 vector } coff4_num_data_valid { I 7 vector } coff4_fifo_cap { I 7 vector } coff4_full_n { I 1 bit } coff4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1120 \
    name bc3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bc3 \
    op interface \
    ports { m_axi_bc3_AWVALID { O 1 bit } m_axi_bc3_AWREADY { I 1 bit } m_axi_bc3_AWADDR { O 64 vector } m_axi_bc3_AWID { O 1 vector } m_axi_bc3_AWLEN { O 32 vector } m_axi_bc3_AWSIZE { O 3 vector } m_axi_bc3_AWBURST { O 2 vector } m_axi_bc3_AWLOCK { O 2 vector } m_axi_bc3_AWCACHE { O 4 vector } m_axi_bc3_AWPROT { O 3 vector } m_axi_bc3_AWQOS { O 4 vector } m_axi_bc3_AWREGION { O 4 vector } m_axi_bc3_AWUSER { O 1 vector } m_axi_bc3_WVALID { O 1 bit } m_axi_bc3_WREADY { I 1 bit } m_axi_bc3_WDATA { O 128 vector } m_axi_bc3_WSTRB { O 16 vector } m_axi_bc3_WLAST { O 1 bit } m_axi_bc3_WID { O 1 vector } m_axi_bc3_WUSER { O 1 vector } m_axi_bc3_ARVALID { O 1 bit } m_axi_bc3_ARREADY { I 1 bit } m_axi_bc3_ARADDR { O 64 vector } m_axi_bc3_ARID { O 1 vector } m_axi_bc3_ARLEN { O 32 vector } m_axi_bc3_ARSIZE { O 3 vector } m_axi_bc3_ARBURST { O 2 vector } m_axi_bc3_ARLOCK { O 2 vector } m_axi_bc3_ARCACHE { O 4 vector } m_axi_bc3_ARPROT { O 3 vector } m_axi_bc3_ARQOS { O 4 vector } m_axi_bc3_ARREGION { O 4 vector } m_axi_bc3_ARUSER { O 1 vector } m_axi_bc3_RVALID { I 1 bit } m_axi_bc3_RREADY { O 1 bit } m_axi_bc3_RDATA { I 128 vector } m_axi_bc3_RLAST { I 1 bit } m_axi_bc3_RID { I 1 vector } m_axi_bc3_RFIFONUM { I 9 vector } m_axi_bc3_RUSER { I 1 vector } m_axi_bc3_RRESP { I 2 vector } m_axi_bc3_BVALID { I 1 bit } m_axi_bc3_BREADY { O 1 bit } m_axi_bc3_BRESP { I 2 vector } m_axi_bc3_BID { I 1 vector } m_axi_bc3_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1121 \
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
    id 1122 \
    name c_req \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_req \
    op interface \
    ports { c_req_din { O 209 vector } c_req_num_data_valid { I 7 vector } c_req_fifo_cap { I 7 vector } c_req_full_n { I 1 bit } c_req_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1123 \
    name c_hit2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_c_hit2 \
    op interface \
    ports { c_hit2_din { O 1 vector } c_hit2_num_data_valid { I 5 vector } c_hit2_fifo_cap { I 5 vector } c_hit2_full_n { I 1 bit } c_hit2_write { O 1 bit } } \
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


