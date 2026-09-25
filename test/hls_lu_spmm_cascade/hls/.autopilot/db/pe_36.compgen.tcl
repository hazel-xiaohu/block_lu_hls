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
    id 2150 \
    name cblock2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock2 \
    op interface \
    ports { cblock2_dout { I 134 vector } cblock2_empty_n { I 1 bit } cblock2_read { O 1 bit } cblock2_num_data_valid { I 8 vector } cblock2_fifo_cap { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2151 \
    name vblock2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock2 \
    op interface \
    ports { vblock2_dout { I 134 vector } vblock2_empty_n { I 1 bit } vblock2_read { O 1 bit } vblock2_num_data_valid { I 8 vector } vblock2_fifo_cap { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2152 \
    name cblock2d \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cblock2d \
    op interface \
    ports { cblock2d_dout { I 134 vector } cblock2d_empty_n { I 1 bit } cblock2d_read { O 1 bit } cblock2d_num_data_valid { I 8 vector } cblock2d_fifo_cap { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2153 \
    name vblock2d \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vblock2d \
    op interface \
    ports { vblock2d_dout { I 134 vector } vblock2d_empty_n { I 1 bit } vblock2d_read { O 1 bit } vblock2d_num_data_valid { I 8 vector } vblock2d_fifo_cap { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2154 \
    name pe2_job \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pe2_job \
    op interface \
    ports { pe2_job_dout { I 66 vector } pe2_job_empty_n { I 1 bit } pe2_job_read { O 1 bit } pe2_job_num_data_valid { I 3 vector } pe2_job_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2155 \
    name p_pe2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_pe2 \
    op interface \
    ports { p_pe2_din { O 263 vector } p_pe2_full_n { I 1 bit } p_pe2_write { O 1 bit } p_pe2_num_data_valid { I 32 vector } p_pe2_fifo_cap { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2156 \
    name B_rlen_pe2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_B_rlen_pe2 \
    op interface \
    ports { B_rlen_pe2_dout { I 32 vector } B_rlen_pe2_empty_n { I 1 bit } B_rlen_pe2_read { O 1 bit } B_rlen_pe2_num_data_valid { I 3 vector } B_rlen_pe2_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2157 \
    name mc_pe2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mc_pe2 \
    op interface \
    ports { mc_pe2_din { O 66 vector } mc_pe2_full_n { I 1 bit } mc_pe2_write { O 1 bit } mc_pe2_num_data_valid { I 3 vector } mc_pe2_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2158 \
    name pe2_idle \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pe2_idle \
    op interface \
    ports { pe2_idle_din { O 1 vector } pe2_idle_full_n { I 1 bit } pe2_idle_write { O 1 bit } pe2_idle_num_data_valid { I 3 vector } pe2_idle_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2159 \
    name efinish2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_efinish2 \
    op interface \
    ports { efinish2_dout { I 1 vector } efinish2_empty_n { I 1 bit } efinish2_read { O 1 bit } efinish2_num_data_valid { I 3 vector } efinish2_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2160 \
    name workload_counter2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_workload_counter2 \
    op interface \
    ports { workload_counter2 { O 32 vector } workload_counter2_ap_vld { O 1 bit } } \
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


