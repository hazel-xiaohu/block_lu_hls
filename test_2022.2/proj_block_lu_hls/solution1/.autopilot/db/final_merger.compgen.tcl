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
    id 2105 \
    name final_merger_1 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_final_merger_1 \
    op interface \
    ports { final_merger_1_dout { I 66 vector } final_merger_1_num_data_valid { I 11 vector } final_merger_1_fifo_cap { I 11 vector } final_merger_1_empty_n { I 1 bit } final_merger_1_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2106 \
    name final_merger_2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_final_merger_2 \
    op interface \
    ports { final_merger_2_dout { I 66 vector } final_merger_2_num_data_valid { I 11 vector } final_merger_2_fifo_cap { I 11 vector } final_merger_2_empty_n { I 1 bit } final_merger_2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2107 \
    name final_merger_3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_final_merger_3 \
    op interface \
    ports { final_merger_3_din { O 66 vector } final_merger_3_num_data_valid { I 11 vector } final_merger_3_fifo_cap { I 11 vector } final_merger_3_full_n { I 1 bit } final_merger_3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2108 \
    name final_len_126 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_final_len_126 \
    op interface \
    ports { final_len_126_din { O 32 vector } final_len_126_num_data_valid { I 13 vector } final_len_126_fifo_cap { I 13 vector } final_len_126_full_n { I 1 bit } final_len_126_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2109 \
    name final_len_227 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_final_len_227 \
    op interface \
    ports { final_len_227_din { O 32 vector } final_len_227_num_data_valid { I 13 vector } final_len_227_fifo_cap { I 13 vector } final_len_227_full_n { I 1 bit } final_len_227_write { O 1 bit } } \
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


