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
    id 1905 \
    name cblock3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock3 \
    op interface \
    ports { cblock3_dout { I 134 vector } cblock3_num_data_valid { I 8 vector } cblock3_fifo_cap { I 8 vector } cblock3_empty_n { I 1 bit } cblock3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1906 \
    name vblock3 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock3 \
    op interface \
    ports { vblock3_dout { I 134 vector } vblock3_num_data_valid { I 8 vector } vblock3_fifo_cap { I 8 vector } vblock3_empty_n { I 1 bit } vblock3_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1907 \
    name cblock3d \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock3d \
    op interface \
    ports { cblock3d_dout { I 134 vector } cblock3d_num_data_valid { I 8 vector } cblock3d_fifo_cap { I 8 vector } cblock3d_empty_n { I 1 bit } cblock3d_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1908 \
    name vblock3d \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock3d \
    op interface \
    ports { vblock3d_dout { I 134 vector } vblock3d_num_data_valid { I 8 vector } vblock3d_fifo_cap { I 8 vector } vblock3d_empty_n { I 1 bit } vblock3d_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1909 \
    name pe3_job \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe3_job \
    op interface \
    ports { pe3_job_dout { I 66 vector } pe3_job_num_data_valid { I 8 vector } pe3_job_fifo_cap { I 8 vector } pe3_job_empty_n { I 1 bit } pe3_job_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1910 \
    name p_pe3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_pe3 \
    op interface \
    ports { p_pe3_din { O 263 vector } p_pe3_num_data_valid { I 11 vector } p_pe3_fifo_cap { I 11 vector } p_pe3_full_n { I 1 bit } p_pe3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1911 \
    name B_rlen_pe311 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_rlen_pe311 \
    op interface \
    ports { B_rlen_pe311_dout { I 32 vector } B_rlen_pe311_num_data_valid { I 7 vector } B_rlen_pe311_fifo_cap { I 7 vector } B_rlen_pe311_empty_n { I 1 bit } B_rlen_pe311_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1912 \
    name mc_pe3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_pe3 \
    op interface \
    ports { mc_pe3_din { O 66 vector } mc_pe3_num_data_valid { I 7 vector } mc_pe3_fifo_cap { I 7 vector } mc_pe3_full_n { I 1 bit } mc_pe3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1913 \
    name pe3_idle3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe3_idle3 \
    op interface \
    ports { pe3_idle3_din { O 1 vector } pe3_idle3_num_data_valid { I 8 vector } pe3_idle3_fifo_cap { I 8 vector } pe3_idle3_full_n { I 1 bit } pe3_idle3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1914 \
    name efinish323 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_efinish323 \
    op interface \
    ports { efinish323_dout { I 1 vector } efinish323_num_data_valid { I 7 vector } efinish323_fifo_cap { I 7 vector } efinish323_empty_n { I 1 bit } efinish323_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1915 \
    name workload_counter3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_workload_counter3 \
    op interface \
    ports { workload_counter3 { O 32 vector } workload_counter3_ap_vld { O 1 bit } } \
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


