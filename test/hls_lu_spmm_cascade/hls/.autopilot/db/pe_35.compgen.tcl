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
    id 2128 \
    name cblock1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock1 \
    op interface \
    ports { cblock1_dout { I 134 vector } cblock1_empty_n { I 1 bit } cblock1_read { O 1 bit } cblock1_num_data_valid { I 8 vector } cblock1_fifo_cap { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2129 \
    name vblock1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock1 \
    op interface \
    ports { vblock1_dout { I 134 vector } vblock1_empty_n { I 1 bit } vblock1_read { O 1 bit } vblock1_num_data_valid { I 8 vector } vblock1_fifo_cap { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2130 \
    name cblock1d \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock1d \
    op interface \
    ports { cblock1d_dout { I 134 vector } cblock1d_empty_n { I 1 bit } cblock1d_read { O 1 bit } cblock1d_num_data_valid { I 8 vector } cblock1d_fifo_cap { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2131 \
    name vblock1d \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock1d \
    op interface \
    ports { vblock1d_dout { I 134 vector } vblock1d_empty_n { I 1 bit } vblock1d_read { O 1 bit } vblock1d_num_data_valid { I 8 vector } vblock1d_fifo_cap { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2132 \
    name pe1_job \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe1_job \
    op interface \
    ports { pe1_job_dout { I 66 vector } pe1_job_empty_n { I 1 bit } pe1_job_read { O 1 bit } pe1_job_num_data_valid { I 3 vector } pe1_job_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2133 \
    name p_pe1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_pe1 \
    op interface \
    ports { p_pe1_din { O 263 vector } p_pe1_full_n { I 1 bit } p_pe1_write { O 1 bit } p_pe1_num_data_valid { I 32 vector } p_pe1_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2134 \
    name B_rlen_pe1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_rlen_pe1 \
    op interface \
    ports { B_rlen_pe1_dout { I 32 vector } B_rlen_pe1_empty_n { I 1 bit } B_rlen_pe1_read { O 1 bit } B_rlen_pe1_num_data_valid { I 3 vector } B_rlen_pe1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2135 \
    name mc_pe1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_pe1 \
    op interface \
    ports { mc_pe1_din { O 66 vector } mc_pe1_full_n { I 1 bit } mc_pe1_write { O 1 bit } mc_pe1_num_data_valid { I 3 vector } mc_pe1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2136 \
    name pe1_idle \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe1_idle \
    op interface \
    ports { pe1_idle_din { O 1 vector } pe1_idle_full_n { I 1 bit } pe1_idle_write { O 1 bit } pe1_idle_num_data_valid { I 3 vector } pe1_idle_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2137 \
    name efinish1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_efinish1 \
    op interface \
    ports { efinish1_dout { I 1 vector } efinish1_empty_n { I 1 bit } efinish1_read { O 1 bit } efinish1_num_data_valid { I 3 vector } efinish1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2138 \
    name workload_counter1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_workload_counter1 \
    op interface \
    ports { workload_counter1 { O 32 vector } workload_counter1_ap_vld { O 1 bit } } \
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


