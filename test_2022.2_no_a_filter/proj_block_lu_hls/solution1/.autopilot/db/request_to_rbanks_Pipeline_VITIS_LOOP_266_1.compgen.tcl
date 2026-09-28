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
    id 342 \
    name rrequestf \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rrequestf \
    op interface \
    ports { rrequestf_dout { I 230 vector } rrequestf_num_data_valid { I 3 vector } rrequestf_fifo_cap { I 3 vector } rrequestf_empty_n { I 1 bit } rrequestf_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name rcache_re_bank1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_re_bank1 \
    op interface \
    ports { rcache_re_bank1_din { O 230 vector } rcache_re_bank1_num_data_valid { I 4 vector } rcache_re_bank1_fifo_cap { I 4 vector } rcache_re_bank1_full_n { I 1 bit } rcache_re_bank1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name base_addr_rcsr_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_base_addr_rcsr_cast \
    op interface \
    ports { base_addr_rcsr_cast { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name rcache_re_bank2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_re_bank2 \
    op interface \
    ports { rcache_re_bank2_din { O 230 vector } rcache_re_bank2_num_data_valid { I 4 vector } rcache_re_bank2_fifo_cap { I 4 vector } rcache_re_bank2_full_n { I 1 bit } rcache_re_bank2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name rcache_re_bank3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_re_bank3 \
    op interface \
    ports { rcache_re_bank3_din { O 230 vector } rcache_re_bank3_num_data_valid { I 4 vector } rcache_re_bank3_fifo_cap { I 4 vector } rcache_re_bank3_full_n { I 1 bit } rcache_re_bank3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name rcache_re_bank4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_re_bank4 \
    op interface \
    ports { rcache_re_bank4_din { O 230 vector } rcache_re_bank4_num_data_valid { I 4 vector } rcache_re_bank4_fifo_cap { I 4 vector } rcache_re_bank4_full_n { I 1 bit } rcache_re_bank4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name temp_req_data_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_data_V_out \
    op interface \
    ports { temp_req_data_V_out { O 160 vector } temp_req_data_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name temp_req_Acid1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_Acid1_out \
    op interface \
    ports { temp_req_Acid1_out { O 32 vector } temp_req_Acid1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name temp_req_Acid_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_Acid_out \
    op interface \
    ports { temp_req_Acid_out { O 32 vector } temp_req_Acid_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name temp_req_type_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_type_V_out \
    op interface \
    ports { temp_req_type_V_out { O 2 vector } temp_req_type_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name temp_req_dest_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_req_dest_V_out \
    op interface \
    ports { temp_req_dest_V_out { O 3 vector } temp_req_dest_V_out_ap_vld { O 1 bit } } \
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


