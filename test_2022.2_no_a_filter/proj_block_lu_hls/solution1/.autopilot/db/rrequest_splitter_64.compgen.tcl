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
    id 277 \
    name rcache_stream4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_stream4 \
    op interface \
    ports { rcache_stream4_dout { I 230 vector } rcache_stream4_num_data_valid { I 7 vector } rcache_stream4_fifo_cap { I 7 vector } rcache_stream4_empty_n { I 1 bit } rcache_stream4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name rrequest \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rrequest \
    op interface \
    ports { rrequest_din { O 230 vector } rrequest_num_data_valid { I 7 vector } rrequest_fifo_cap { I 7 vector } rrequest_full_n { I 1 bit } rrequest_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name rcollec \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rcollec \
    op interface \
    ports { rcollec_din { O 230 vector } rcollec_num_data_valid { I 7 vector } rcollec_fifo_cap { I 7 vector } rcollec_full_n { I 1 bit } rcollec_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name rscheduler \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rscheduler \
    op interface \
    ports { rscheduler_din { O 230 vector } rscheduler_num_data_valid { I 7 vector } rscheduler_fifo_cap { I 7 vector } rscheduler_full_n { I 1 bit } rscheduler_write { O 1 bit } } \
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


