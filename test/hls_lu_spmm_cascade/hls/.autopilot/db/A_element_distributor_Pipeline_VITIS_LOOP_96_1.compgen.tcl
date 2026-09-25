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
    id 64 \
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
    id 65 \
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
    id 66 \
    name trunc_ln95_s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln95_s \
    op interface \
    ports { trunc_ln95_s { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name empty_249 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_249 \
    op interface \
    ports { empty_249 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name pe1_job \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe1_job \
    op interface \
    ports { pe1_job_din { O 66 vector } pe1_job_full_n { I 1 bit } pe1_job_write { O 1 bit } pe1_job_num_data_valid { I 3 vector } pe1_job_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name pe2_job \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe2_job \
    op interface \
    ports { pe2_job_din { O 66 vector } pe2_job_full_n { I 1 bit } pe2_job_write { O 1 bit } pe2_job_num_data_valid { I 3 vector } pe2_job_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name pe3_job \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe3_job \
    op interface \
    ports { pe3_job_din { O 66 vector } pe3_job_full_n { I 1 bit } pe3_job_write { O 1 bit } pe3_job_num_data_valid { I 3 vector } pe3_job_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name pe4_job \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe4_job \
    op interface \
    ports { pe4_job_din { O 66 vector } pe4_job_full_n { I 1 bit } pe4_job_write { O 1 bit } pe4_job_num_data_valid { I 3 vector } pe4_job_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name p_A_element_as \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_A_element_as \
    op interface \
    ports { p_A_element_as_dout { I 98 vector } p_A_element_as_empty_n { I 1 bit } p_A_element_as_read { O 1 bit } p_A_element_as_num_data_valid { I 3 vector } p_A_element_as_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name pe4_idle \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe4_idle \
    op interface \
    ports { pe4_idle_dout { I 1 vector } pe4_idle_empty_n { I 1 bit } pe4_idle_read { O 1 bit } pe4_idle_num_data_valid { I 3 vector } pe4_idle_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name pe3_idle \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe3_idle \
    op interface \
    ports { pe3_idle_dout { I 1 vector } pe3_idle_empty_n { I 1 bit } pe3_idle_read { O 1 bit } pe3_idle_num_data_valid { I 3 vector } pe3_idle_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name pe2_idle \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe2_idle \
    op interface \
    ports { pe2_idle_dout { I 1 vector } pe2_idle_empty_n { I 1 bit } pe2_idle_read { O 1 bit } pe2_idle_num_data_valid { I 3 vector } pe2_idle_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name pe1_idle \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe1_idle \
    op interface \
    ports { pe1_idle_dout { I 1 vector } pe1_idle_empty_n { I 1 bit } pe1_idle_read { O 1 bit } pe1_idle_num_data_valid { I 3 vector } pe1_idle_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name rm1_idle \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rm1_idle \
    op interface \
    ports { rm1_idle_dout { I 1 vector } rm1_idle_empty_n { I 1 bit } rm1_idle_read { O 1 bit } rm1_idle_num_data_valid { I 3 vector } rm1_idle_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name rm2_idle \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rm2_idle \
    op interface \
    ports { rm2_idle_dout { I 1 vector } rm2_idle_empty_n { I 1 bit } rm2_idle_read { O 1 bit } rm2_idle_num_data_valid { I 3 vector } rm2_idle_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name rm3_idle \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rm3_idle \
    op interface \
    ports { rm3_idle_dout { I 1 vector } rm3_idle_empty_n { I 1 bit } rm3_idle_read { O 1 bit } rm3_idle_num_data_valid { I 3 vector } rm3_idle_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name rm4_idle \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rm4_idle \
    op interface \
    ports { rm4_idle_dout { I 1 vector } rm4_idle_empty_n { I 1 bit } rm4_idle_read { O 1 bit } rm4_idle_num_data_valid { I 3 vector } rm4_idle_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name rcache_stream1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_stream1 \
    op interface \
    ports { rcache_stream1_din { O 398 vector } rcache_stream1_full_n { I 1 bit } rcache_stream1_write { O 1 bit } rcache_stream1_num_data_valid { I 3 vector } rcache_stream1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name rcache_stream2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_stream2 \
    op interface \
    ports { rcache_stream2_din { O 398 vector } rcache_stream2_full_n { I 1 bit } rcache_stream2_write { O 1 bit } rcache_stream2_num_data_valid { I 3 vector } rcache_stream2_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name rcache_stream3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_stream3 \
    op interface \
    ports { rcache_stream3_din { O 398 vector } rcache_stream3_full_n { I 1 bit } rcache_stream3_write { O 1 bit } rcache_stream3_num_data_valid { I 3 vector } rcache_stream3_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name rcache_stream4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_stream4 \
    op interface \
    ports { rcache_stream4_din { O 398 vector } rcache_stream4_full_n { I 1 bit } rcache_stream4_write { O 1 bit } rcache_stream4_num_data_valid { I 3 vector } rcache_stream4_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name temp_rcache_request_3810_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_rcache_request_3810_1_out \
    op interface \
    ports { temp_rcache_request_3810_1_out { O 32 vector } temp_rcache_request_3810_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name temp_rcache_request_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_rcache_request_2_1_out \
    op interface \
    ports { temp_rcache_request_2_1_out { O 2 vector } temp_rcache_request_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name temp_rcache_request_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_rcache_request_0_1_out \
    op interface \
    ports { temp_rcache_request_0_1_out { O 3 vector } temp_rcache_request_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
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
    id 90 \
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


