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
    id 1252 \
    name rcache_result_bank3_b \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_rcache_result_bank3_b \
    op interface \
    ports { rcache_result_bank3_b_dout { I 68 vector } rcache_result_bank3_b_empty_n { I 1 bit } rcache_result_bank3_b_read { O 1 bit } rcache_result_bank3_b_num_data_valid { I 3 vector } rcache_result_bank3_b_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1253 \
    name vrequest \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vrequest \
    op interface \
    ports { vrequest_din { O 68 vector } vrequest_full_n { I 1 bit } vrequest_write { O 1 bit } vrequest_num_data_valid { I 3 vector } vrequest_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1254 \
    name crequest \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_crequest \
    op interface \
    ports { crequest_din { O 68 vector } crequest_full_n { I 1 bit } crequest_write { O 1 bit } crequest_num_data_valid { I 3 vector } crequest_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1255 \
    name vcollector \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vcollector \
    op interface \
    ports { vcollector_din { O 68 vector } vcollector_full_n { I 1 bit } vcollector_write { O 1 bit } vcollector_num_data_valid { I 3 vector } vcollector_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1256 \
    name ccollector \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ccollector \
    op interface \
    ports { ccollector_din { O 68 vector } ccollector_full_n { I 1 bit } ccollector_write { O 1 bit } ccollector_num_data_valid { I 3 vector } ccollector_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1257 \
    name vscheduler \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_vscheduler \
    op interface \
    ports { vscheduler_din { O 68 vector } vscheduler_full_n { I 1 bit } vscheduler_write { O 1 bit } vscheduler_num_data_valid { I 3 vector } vscheduler_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1258 \
    name cscheduler \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cscheduler \
    op interface \
    ports { cscheduler_din { O 68 vector } cscheduler_full_n { I 1 bit } cscheduler_write { O 1 bit } cscheduler_num_data_valid { I 3 vector } cscheduler_fifo_cap { I 3 vector } } \
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


