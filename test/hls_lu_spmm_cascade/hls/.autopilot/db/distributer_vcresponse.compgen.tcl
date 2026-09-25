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
    id 2083 \
    name vcache_res_cfinal \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_vcache_res_cfinal \
    op interface \
    ports { vcache_res_cfinal_dout { I 6 vector } vcache_res_cfinal_empty_n { I 1 bit } vcache_res_cfinal_read { O 1 bit } vcache_res_cfinal_num_data_valid { I 3 vector } vcache_res_cfinal_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2084 \
    name cresponse1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cresponse1 \
    op interface \
    ports { cresponse1_din { O 6 vector } cresponse1_full_n { I 1 bit } cresponse1_write { O 1 bit } cresponse1_num_data_valid { I 3 vector } cresponse1_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2085 \
    name cresponse2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cresponse2 \
    op interface \
    ports { cresponse2_din { O 6 vector } cresponse2_full_n { I 1 bit } cresponse2_write { O 1 bit } cresponse2_num_data_valid { I 3 vector } cresponse2_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2086 \
    name cresponse3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cresponse3 \
    op interface \
    ports { cresponse3_din { O 6 vector } cresponse3_full_n { I 1 bit } cresponse3_write { O 1 bit } cresponse3_num_data_valid { I 3 vector } cresponse3_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2087 \
    name cresponse4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cresponse4 \
    op interface \
    ports { cresponse4_din { O 6 vector } cresponse4_full_n { I 1 bit } cresponse4_write { O 1 bit } cresponse4_num_data_valid { I 3 vector } cresponse4_fifo_cap { I 3 vector } } \
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


