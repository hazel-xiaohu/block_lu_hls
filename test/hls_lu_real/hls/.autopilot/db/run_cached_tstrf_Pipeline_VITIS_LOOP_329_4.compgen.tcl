# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler sparse_lu_shared_sparsemux_9_2_32_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {compactencoding_dontcare}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 185 \
    name upper_pos_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename upper_pos_0 \
    op interface \
    ports { upper_pos_0_address0 { O 10 vector } upper_pos_0_ce0 { O 1 bit } upper_pos_0_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'upper_pos_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 186 \
    name upper_pos_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename upper_pos_1 \
    op interface \
    ports { upper_pos_1_address0 { O 10 vector } upper_pos_1_ce0 { O 1 bit } upper_pos_1_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'upper_pos_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 187 \
    name upper_pos_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename upper_pos_2 \
    op interface \
    ports { upper_pos_2_address0 { O 10 vector } upper_pos_2_ce0 { O 1 bit } upper_pos_2_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'upper_pos_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 188 \
    name upper_pos_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename upper_pos_3 \
    op interface \
    ports { upper_pos_3_address0 { O 10 vector } upper_pos_3_ce0 { O 1 bit } upper_pos_3_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'upper_pos_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 189 \
    name factor_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename factor_0 \
    op interface \
    ports { factor_0_address0 { O 10 vector } factor_0_ce0 { O 1 bit } factor_0_q0 { I 32 vector } factor_0_address1 { O 10 vector } factor_0_ce1 { O 1 bit } factor_0_q1 { I 32 vector } factor_0_address2 { O 10 vector } factor_0_ce2 { O 1 bit } factor_0_q2 { I 32 vector } factor_0_address3 { O 10 vector } factor_0_ce3 { O 1 bit } factor_0_q3 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'factor_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 190 \
    name factor_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename factor_1 \
    op interface \
    ports { factor_1_address0 { O 10 vector } factor_1_ce0 { O 1 bit } factor_1_q0 { I 32 vector } factor_1_address1 { O 10 vector } factor_1_ce1 { O 1 bit } factor_1_q1 { I 32 vector } factor_1_address2 { O 10 vector } factor_1_ce2 { O 1 bit } factor_1_q2 { I 32 vector } factor_1_address3 { O 10 vector } factor_1_ce3 { O 1 bit } factor_1_q3 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'factor_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 191 \
    name factor_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename factor_2 \
    op interface \
    ports { factor_2_address0 { O 10 vector } factor_2_ce0 { O 1 bit } factor_2_q0 { I 32 vector } factor_2_address1 { O 10 vector } factor_2_ce1 { O 1 bit } factor_2_q1 { I 32 vector } factor_2_address2 { O 10 vector } factor_2_ce2 { O 1 bit } factor_2_q2 { I 32 vector } factor_2_address3 { O 10 vector } factor_2_ce3 { O 1 bit } factor_2_q3 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'factor_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 192 \
    name factor_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename factor_3 \
    op interface \
    ports { factor_3_address0 { O 10 vector } factor_3_ce0 { O 1 bit } factor_3_q0 { I 32 vector } factor_3_address1 { O 10 vector } factor_3_ce1 { O 1 bit } factor_3_q1 { I 32 vector } factor_3_address2 { O 10 vector } factor_3_ce2 { O 1 bit } factor_3_q2 { I 32 vector } factor_3_address3 { O 10 vector } factor_3_ce3 { O 1 bit } factor_3_q3 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'factor_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 194 \
    name block_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_0_0 \
    op interface \
    ports { block_0_0_address0 { O 8 vector } block_0_0_ce0 { O 1 bit } block_0_0_we0 { O 1 bit } block_0_0_d0 { O 32 vector } block_0_0_address1 { O 8 vector } block_0_0_ce1 { O 1 bit } block_0_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 195 \
    name block_0_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_0_1 \
    op interface \
    ports { block_0_1_address0 { O 8 vector } block_0_1_ce0 { O 1 bit } block_0_1_we0 { O 1 bit } block_0_1_d0 { O 32 vector } block_0_1_address1 { O 8 vector } block_0_1_ce1 { O 1 bit } block_0_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 196 \
    name block_0_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_0_2 \
    op interface \
    ports { block_0_2_address0 { O 8 vector } block_0_2_ce0 { O 1 bit } block_0_2_we0 { O 1 bit } block_0_2_d0 { O 32 vector } block_0_2_address1 { O 8 vector } block_0_2_ce1 { O 1 bit } block_0_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 197 \
    name block_0_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_0_3 \
    op interface \
    ports { block_0_3_address0 { O 8 vector } block_0_3_ce0 { O 1 bit } block_0_3_we0 { O 1 bit } block_0_3_d0 { O 32 vector } block_0_3_address1 { O 8 vector } block_0_3_ce1 { O 1 bit } block_0_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 198 \
    name block_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_1_0 \
    op interface \
    ports { block_1_0_address0 { O 8 vector } block_1_0_ce0 { O 1 bit } block_1_0_we0 { O 1 bit } block_1_0_d0 { O 32 vector } block_1_0_address1 { O 8 vector } block_1_0_ce1 { O 1 bit } block_1_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 199 \
    name block_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_1_1 \
    op interface \
    ports { block_1_1_address0 { O 8 vector } block_1_1_ce0 { O 1 bit } block_1_1_we0 { O 1 bit } block_1_1_d0 { O 32 vector } block_1_1_address1 { O 8 vector } block_1_1_ce1 { O 1 bit } block_1_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 200 \
    name block_1_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_1_2 \
    op interface \
    ports { block_1_2_address0 { O 8 vector } block_1_2_ce0 { O 1 bit } block_1_2_we0 { O 1 bit } block_1_2_d0 { O 32 vector } block_1_2_address1 { O 8 vector } block_1_2_ce1 { O 1 bit } block_1_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 201 \
    name block_1_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_1_3 \
    op interface \
    ports { block_1_3_address0 { O 8 vector } block_1_3_ce0 { O 1 bit } block_1_3_we0 { O 1 bit } block_1_3_d0 { O 32 vector } block_1_3_address1 { O 8 vector } block_1_3_ce1 { O 1 bit } block_1_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 202 \
    name block_2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_2_0 \
    op interface \
    ports { block_2_0_address0 { O 8 vector } block_2_0_ce0 { O 1 bit } block_2_0_we0 { O 1 bit } block_2_0_d0 { O 32 vector } block_2_0_address1 { O 8 vector } block_2_0_ce1 { O 1 bit } block_2_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 203 \
    name block_2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_2_1 \
    op interface \
    ports { block_2_1_address0 { O 8 vector } block_2_1_ce0 { O 1 bit } block_2_1_we0 { O 1 bit } block_2_1_d0 { O 32 vector } block_2_1_address1 { O 8 vector } block_2_1_ce1 { O 1 bit } block_2_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 204 \
    name block_2_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_2_2 \
    op interface \
    ports { block_2_2_address0 { O 8 vector } block_2_2_ce0 { O 1 bit } block_2_2_we0 { O 1 bit } block_2_2_d0 { O 32 vector } block_2_2_address1 { O 8 vector } block_2_2_ce1 { O 1 bit } block_2_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 205 \
    name block_2_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_2_3 \
    op interface \
    ports { block_2_3_address0 { O 8 vector } block_2_3_ce0 { O 1 bit } block_2_3_we0 { O 1 bit } block_2_3_d0 { O 32 vector } block_2_3_address1 { O 8 vector } block_2_3_ce1 { O 1 bit } block_2_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 206 \
    name block_3_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_3_0 \
    op interface \
    ports { block_3_0_address0 { O 8 vector } block_3_0_ce0 { O 1 bit } block_3_0_we0 { O 1 bit } block_3_0_d0 { O 32 vector } block_3_0_address1 { O 8 vector } block_3_0_ce1 { O 1 bit } block_3_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 207 \
    name block_3_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_3_1 \
    op interface \
    ports { block_3_1_address0 { O 8 vector } block_3_1_ce0 { O 1 bit } block_3_1_we0 { O 1 bit } block_3_1_d0 { O 32 vector } block_3_1_address1 { O 8 vector } block_3_1_ce1 { O 1 bit } block_3_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 208 \
    name block_3_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_3_2 \
    op interface \
    ports { block_3_2_address0 { O 8 vector } block_3_2_ce0 { O 1 bit } block_3_2_we0 { O 1 bit } block_3_2_d0 { O 32 vector } block_3_2_address1 { O 8 vector } block_3_2_ce1 { O 1 bit } block_3_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 209 \
    name block_3_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_3_3 \
    op interface \
    ports { block_3_3_address0 { O 8 vector } block_3_3_ce0 { O 1 bit } block_3_3_we0 { O 1 bit } block_3_3_d0 { O 32 vector } block_3_3_address1 { O 8 vector } block_3_3_ce1 { O 1 bit } block_3_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_3_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name zext_ln309 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln309 \
    op interface \
    ports { zext_ln309 { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name tmp_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_5 \
    op interface \
    ports { tmp_5 { I 13 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name n \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_n \
    op interface \
    ports { n { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name zext_ln332 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln332 \
    op interface \
    ports { zext_ln332 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name zext_ln324 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln324 \
    op interface \
    ports { zext_ln324 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name empty_69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_69 \
    op interface \
    ports { empty_69 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name empty_70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_70 \
    op interface \
    ports { empty_70 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name cond48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cond48 \
    op interface \
    ports { cond48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name cond_149 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_149 \
    op interface \
    ports { cond_149 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name cond_251 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_251 \
    op interface \
    ports { cond_251 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name cond_353 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_353 \
    op interface \
    ports { cond_353 { I 32 vector } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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


# flow_control definition:
set InstName sparse_lu_shared_flow_control_loop_pipe_sequential_init_U
set CompName sparse_lu_shared_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix sparse_lu_shared_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


