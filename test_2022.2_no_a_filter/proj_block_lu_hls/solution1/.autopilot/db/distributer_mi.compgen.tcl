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
    id 493 \
    name mi1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mi1 \
    op interface \
    ports { mi1_dout { I 5 vector } mi1_num_data_valid { I 2 vector } mi1_fifo_cap { I 2 vector } mi1_empty_n { I 1 bit } mi1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name mi1_1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mi1_1 \
    op interface \
    ports { mi1_1_din { O 5 vector } mi1_1_num_data_valid { I 2 vector } mi1_1_fifo_cap { I 2 vector } mi1_1_full_n { I 1 bit } mi1_1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name mi1_2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mi1_2 \
    op interface \
    ports { mi1_2_din { O 5 vector } mi1_2_num_data_valid { I 2 vector } mi1_2_fifo_cap { I 2 vector } mi1_2_full_n { I 1 bit } mi1_2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name mi1_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mi1_3 \
    op interface \
    ports { mi1_3_din { O 5 vector } mi1_3_num_data_valid { I 2 vector } mi1_3_fifo_cap { I 2 vector } mi1_3_full_n { I 1 bit } mi1_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name mi1_4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mi1_4 \
    op interface \
    ports { mi1_4_din { O 5 vector } mi1_4_num_data_valid { I 2 vector } mi1_4_fifo_cap { I 2 vector } mi1_4_full_n { I 1 bit } mi1_4_write { O 1 bit } } \
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


