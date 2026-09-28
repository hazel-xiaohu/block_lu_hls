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
    id 1928 \
    name cblock4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock4 \
    op interface \
    ports { cblock4_dout { I 134 vector } cblock4_num_data_valid { I 8 vector } cblock4_fifo_cap { I 8 vector } cblock4_empty_n { I 1 bit } cblock4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1929 \
    name vblock4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock4 \
    op interface \
    ports { vblock4_dout { I 134 vector } vblock4_num_data_valid { I 8 vector } vblock4_fifo_cap { I 8 vector } vblock4_empty_n { I 1 bit } vblock4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1930 \
    name cblock4d \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock4d \
    op interface \
    ports { cblock4d_dout { I 134 vector } cblock4d_num_data_valid { I 8 vector } cblock4d_fifo_cap { I 8 vector } cblock4d_empty_n { I 1 bit } cblock4d_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1931 \
    name vblock4d \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock4d \
    op interface \
    ports { vblock4d_dout { I 134 vector } vblock4d_num_data_valid { I 8 vector } vblock4d_fifo_cap { I 8 vector } vblock4d_empty_n { I 1 bit } vblock4d_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1932 \
    name pe4_job \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe4_job \
    op interface \
    ports { pe4_job_dout { I 66 vector } pe4_job_num_data_valid { I 8 vector } pe4_job_fifo_cap { I 8 vector } pe4_job_empty_n { I 1 bit } pe4_job_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1933 \
    name p_pe4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_pe4 \
    op interface \
    ports { p_pe4_din { O 263 vector } p_pe4_num_data_valid { I 11 vector } p_pe4_fifo_cap { I 11 vector } p_pe4_full_n { I 1 bit } p_pe4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1934 \
    name B_rlen_pe412 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_rlen_pe412 \
    op interface \
    ports { B_rlen_pe412_dout { I 32 vector } B_rlen_pe412_num_data_valid { I 7 vector } B_rlen_pe412_fifo_cap { I 7 vector } B_rlen_pe412_empty_n { I 1 bit } B_rlen_pe412_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1935 \
    name mc_pe4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_pe4 \
    op interface \
    ports { mc_pe4_din { O 66 vector } mc_pe4_num_data_valid { I 7 vector } mc_pe4_fifo_cap { I 7 vector } mc_pe4_full_n { I 1 bit } mc_pe4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1936 \
    name pe4_idle4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe4_idle4 \
    op interface \
    ports { pe4_idle4_din { O 1 vector } pe4_idle4_num_data_valid { I 8 vector } pe4_idle4_fifo_cap { I 8 vector } pe4_idle4_full_n { I 1 bit } pe4_idle4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1937 \
    name efinish424 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_efinish424 \
    op interface \
    ports { efinish424_dout { I 1 vector } efinish424_num_data_valid { I 7 vector } efinish424_fifo_cap { I 7 vector } efinish424_empty_n { I 1 bit } efinish424_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1938 \
    name workload_counter4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_workload_counter4 \
    op interface \
    ports { workload_counter4 { O 32 vector } workload_counter4_ap_vld { O 1 bit } } \
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


