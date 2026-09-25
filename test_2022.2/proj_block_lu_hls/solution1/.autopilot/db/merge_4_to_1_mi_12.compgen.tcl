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
    id 578 \
    name mi1_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mi1_4 \
    op interface \
    ports { mi1_4_dout { I 5 vector } mi1_4_num_data_valid { I 2 vector } mi1_4_fifo_cap { I 2 vector } mi1_4_empty_n { I 1 bit } mi1_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 579 \
    name mi2_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mi2_4 \
    op interface \
    ports { mi2_4_dout { I 5 vector } mi2_4_num_data_valid { I 2 vector } mi2_4_fifo_cap { I 2 vector } mi2_4_empty_n { I 1 bit } mi2_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 580 \
    name mi3_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mi3_4 \
    op interface \
    ports { mi3_4_dout { I 5 vector } mi3_4_num_data_valid { I 2 vector } mi3_4_fifo_cap { I 2 vector } mi3_4_empty_n { I 1 bit } mi3_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 581 \
    name mi4_4 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mi4_4 \
    op interface \
    ports { mi4_4_dout { I 5 vector } mi4_4_num_data_valid { I 2 vector } mi4_4_fifo_cap { I 2 vector } mi4_4_empty_n { I 1 bit } mi4_4_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 582 \
    name rm4_idle9 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_rm4_idle9 \
    op interface \
    ports { rm4_idle9_din { O 1 vector } rm4_idle9_num_data_valid { I 8 vector } rm4_idle9_fifo_cap { I 8 vector } rm4_idle9_full_n { I 1 bit } rm4_idle9_write { O 1 bit } } \
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


