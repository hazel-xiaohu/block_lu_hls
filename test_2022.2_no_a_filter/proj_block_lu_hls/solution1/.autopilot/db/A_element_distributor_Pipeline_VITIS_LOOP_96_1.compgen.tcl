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
    name temp_avc_rid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_avc_rid \
    op interface \
    ports { temp_avc_rid { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name temp_avc_cid \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_avc_cid \
    op interface \
    ports { temp_avc_cid { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name trunc_ln95_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln95_1 \
    op interface \
    ports { trunc_ln95_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name temp_avc_end \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_avc_end \
    op interface \
    ports { temp_avc_end { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name temp_avc_row_end \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_avc_row_end \
    op interface \
    ports { temp_avc_row_end { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name pe1_job \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe1_job \
    op interface \
    ports { pe1_job_din { O 66 vector } pe1_job_num_data_valid { I 8 vector } pe1_job_fifo_cap { I 8 vector } pe1_job_full_n { I 1 bit } pe1_job_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name pe2_job \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe2_job \
    op interface \
    ports { pe2_job_din { O 66 vector } pe2_job_num_data_valid { I 8 vector } pe2_job_fifo_cap { I 8 vector } pe2_job_full_n { I 1 bit } pe2_job_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name pe3_job \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe3_job \
    op interface \
    ports { pe3_job_din { O 66 vector } pe3_job_num_data_valid { I 8 vector } pe3_job_fifo_cap { I 8 vector } pe3_job_full_n { I 1 bit } pe3_job_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name pe4_job \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe4_job \
    op interface \
    ports { pe4_job_din { O 66 vector } pe4_job_num_data_valid { I 8 vector } pe4_job_fifo_cap { I 8 vector } pe4_job_full_n { I 1 bit } pe4_job_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name p_A_element_as \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_A_element_as \
    op interface \
    ports { p_A_element_as_dout { I 98 vector } p_A_element_as_num_data_valid { I 9 vector } p_A_element_as_fifo_cap { I 9 vector } p_A_element_as_empty_n { I 1 bit } p_A_element_as_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name pe4_idle4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe4_idle4 \
    op interface \
    ports { pe4_idle4_dout { I 1 vector } pe4_idle4_num_data_valid { I 8 vector } pe4_idle4_fifo_cap { I 8 vector } pe4_idle4_empty_n { I 1 bit } pe4_idle4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name pe3_idle3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe3_idle3 \
    op interface \
    ports { pe3_idle3_dout { I 1 vector } pe3_idle3_num_data_valid { I 8 vector } pe3_idle3_fifo_cap { I 8 vector } pe3_idle3_empty_n { I 1 bit } pe3_idle3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name pe2_idle2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe2_idle2 \
    op interface \
    ports { pe2_idle2_dout { I 1 vector } pe2_idle2_num_data_valid { I 8 vector } pe2_idle2_fifo_cap { I 8 vector } pe2_idle2_empty_n { I 1 bit } pe2_idle2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name pe1_idle1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe1_idle1 \
    op interface \
    ports { pe1_idle1_dout { I 1 vector } pe1_idle1_num_data_valid { I 8 vector } pe1_idle1_fifo_cap { I 8 vector } pe1_idle1_empty_n { I 1 bit } pe1_idle1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name rm1_idle5 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rm1_idle5 \
    op interface \
    ports { rm1_idle5_dout { I 1 vector } rm1_idle5_num_data_valid { I 8 vector } rm1_idle5_fifo_cap { I 8 vector } rm1_idle5_empty_n { I 1 bit } rm1_idle5_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name rm2_idle6 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rm2_idle6 \
    op interface \
    ports { rm2_idle6_dout { I 1 vector } rm2_idle6_num_data_valid { I 8 vector } rm2_idle6_fifo_cap { I 8 vector } rm2_idle6_empty_n { I 1 bit } rm2_idle6_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name rm3_idle7 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rm3_idle7 \
    op interface \
    ports { rm3_idle7_dout { I 1 vector } rm3_idle7_num_data_valid { I 8 vector } rm3_idle7_fifo_cap { I 8 vector } rm3_idle7_empty_n { I 1 bit } rm3_idle7_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name rm4_idle8 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rm4_idle8 \
    op interface \
    ports { rm4_idle8_dout { I 1 vector } rm4_idle8_num_data_valid { I 8 vector } rm4_idle8_fifo_cap { I 8 vector } rm4_idle8_empty_n { I 1 bit } rm4_idle8_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name rcache_stream1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_stream1 \
    op interface \
    ports { rcache_stream1_din { O 230 vector } rcache_stream1_num_data_valid { I 7 vector } rcache_stream1_fifo_cap { I 7 vector } rcache_stream1_full_n { I 1 bit } rcache_stream1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name rcache_stream2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_stream2 \
    op interface \
    ports { rcache_stream2_din { O 230 vector } rcache_stream2_num_data_valid { I 7 vector } rcache_stream2_fifo_cap { I 7 vector } rcache_stream2_full_n { I 1 bit } rcache_stream2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name rcache_stream3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_stream3 \
    op interface \
    ports { rcache_stream3_din { O 230 vector } rcache_stream3_num_data_valid { I 7 vector } rcache_stream3_fifo_cap { I 7 vector } rcache_stream3_full_n { I 1 bit } rcache_stream3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name rcache_stream4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_stream4 \
    op interface \
    ports { rcache_stream4_din { O 230 vector } rcache_stream4_num_data_valid { I 7 vector } rcache_stream4_fifo_cap { I 7 vector } rcache_stream4_full_n { I 1 bit } rcache_stream4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name temp_rcache_request_data_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_rcache_request_data_V_out \
    op interface \
    ports { temp_rcache_request_data_V_out { O 160 vector } temp_rcache_request_data_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name temp_rcache_request_Acid_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_rcache_request_Acid_out \
    op interface \
    ports { temp_rcache_request_Acid_out { O 32 vector } temp_rcache_request_Acid_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name temp_rcache_request_type_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_rcache_request_type_V_out \
    op interface \
    ports { temp_rcache_request_type_V_out { O 2 vector } temp_rcache_request_type_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name temp_rcache_request_dest_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_rcache_request_dest_V_out \
    op interface \
    ports { temp_rcache_request_dest_V_out { O 3 vector } temp_rcache_request_dest_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name temp_pe_rid_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_pe_rid_out \
    op interface \
    ports { temp_pe_rid_out { O 32 vector } temp_pe_rid_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name p_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out { O 32 vector } p_out_ap_vld { O 1 bit } } \
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


