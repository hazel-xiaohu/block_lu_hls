# This script segment is generated automatically by AutoPilot

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
    id 244 \
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
    id 245 \
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
    id 246 \
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
    id 247 \
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
    id 248 \
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
    id 249 \
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
    id 250 \
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
    id 251 \
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
    id 252 \
    name block_pos_0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_0_0 \
    op interface \
    ports { block_pos_0_0_address0 { O 8 vector } block_pos_0_0_ce0 { O 1 bit } block_pos_0_0_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 253 \
    name block_pos_0_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_0_1 \
    op interface \
    ports { block_pos_0_1_address0 { O 8 vector } block_pos_0_1_ce0 { O 1 bit } block_pos_0_1_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 254 \
    name block_pos_0_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_0_2 \
    op interface \
    ports { block_pos_0_2_address0 { O 8 vector } block_pos_0_2_ce0 { O 1 bit } block_pos_0_2_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 255 \
    name block_pos_0_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_0_3 \
    op interface \
    ports { block_pos_0_3_address0 { O 8 vector } block_pos_0_3_ce0 { O 1 bit } block_pos_0_3_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 256 \
    name block_pos_1_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_1_0 \
    op interface \
    ports { block_pos_1_0_address0 { O 8 vector } block_pos_1_0_ce0 { O 1 bit } block_pos_1_0_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 257 \
    name block_pos_1_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_1_1 \
    op interface \
    ports { block_pos_1_1_address0 { O 8 vector } block_pos_1_1_ce0 { O 1 bit } block_pos_1_1_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 258 \
    name block_pos_1_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_1_2 \
    op interface \
    ports { block_pos_1_2_address0 { O 8 vector } block_pos_1_2_ce0 { O 1 bit } block_pos_1_2_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 259 \
    name block_pos_1_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_1_3 \
    op interface \
    ports { block_pos_1_3_address0 { O 8 vector } block_pos_1_3_ce0 { O 1 bit } block_pos_1_3_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 260 \
    name block_pos_2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_2_0 \
    op interface \
    ports { block_pos_2_0_address0 { O 8 vector } block_pos_2_0_ce0 { O 1 bit } block_pos_2_0_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 261 \
    name block_pos_2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_2_1 \
    op interface \
    ports { block_pos_2_1_address0 { O 8 vector } block_pos_2_1_ce0 { O 1 bit } block_pos_2_1_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 262 \
    name block_pos_2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_2_2 \
    op interface \
    ports { block_pos_2_2_address0 { O 8 vector } block_pos_2_2_ce0 { O 1 bit } block_pos_2_2_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 263 \
    name block_pos_2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_2_3 \
    op interface \
    ports { block_pos_2_3_address0 { O 8 vector } block_pos_2_3_ce0 { O 1 bit } block_pos_2_3_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 264 \
    name block_pos_3_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_3_0 \
    op interface \
    ports { block_pos_3_0_address0 { O 8 vector } block_pos_3_0_ce0 { O 1 bit } block_pos_3_0_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 265 \
    name block_pos_3_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_3_1 \
    op interface \
    ports { block_pos_3_1_address0 { O 8 vector } block_pos_3_1_ce0 { O 1 bit } block_pos_3_1_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 266 \
    name block_pos_3_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_3_2 \
    op interface \
    ports { block_pos_3_2_address0 { O 8 vector } block_pos_3_2_ce0 { O 1 bit } block_pos_3_2_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 267 \
    name block_pos_3_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename block_pos_3_3 \
    op interface \
    ports { block_pos_3_3_address0 { O 8 vector } block_pos_3_3_ce0 { O 1 bit } block_pos_3_3_q0 { I 13 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_pos_3_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 268 \
    name block_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_0_0 \
    op interface \
    ports { block_0_0_address0 { O 8 vector } block_0_0_ce0 { O 1 bit } block_0_0_we0 { O 1 bit } block_0_0_d0 { O 32 vector } block_0_0_q0 { I 32 vector } block_0_0_address1 { O 8 vector } block_0_0_ce1 { O 1 bit } block_0_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 269 \
    name block_0_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_0_1 \
    op interface \
    ports { block_0_1_address0 { O 8 vector } block_0_1_ce0 { O 1 bit } block_0_1_we0 { O 1 bit } block_0_1_d0 { O 32 vector } block_0_1_q0 { I 32 vector } block_0_1_address1 { O 8 vector } block_0_1_ce1 { O 1 bit } block_0_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 270 \
    name block_0_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_0_2 \
    op interface \
    ports { block_0_2_address0 { O 8 vector } block_0_2_ce0 { O 1 bit } block_0_2_we0 { O 1 bit } block_0_2_d0 { O 32 vector } block_0_2_q0 { I 32 vector } block_0_2_address1 { O 8 vector } block_0_2_ce1 { O 1 bit } block_0_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 271 \
    name block_0_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_0_3 \
    op interface \
    ports { block_0_3_address0 { O 8 vector } block_0_3_ce0 { O 1 bit } block_0_3_we0 { O 1 bit } block_0_3_d0 { O 32 vector } block_0_3_q0 { I 32 vector } block_0_3_address1 { O 8 vector } block_0_3_ce1 { O 1 bit } block_0_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 272 \
    name block_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_1_0 \
    op interface \
    ports { block_1_0_address0 { O 8 vector } block_1_0_ce0 { O 1 bit } block_1_0_we0 { O 1 bit } block_1_0_d0 { O 32 vector } block_1_0_q0 { I 32 vector } block_1_0_address1 { O 8 vector } block_1_0_ce1 { O 1 bit } block_1_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 273 \
    name block_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_1_1 \
    op interface \
    ports { block_1_1_address0 { O 8 vector } block_1_1_ce0 { O 1 bit } block_1_1_we0 { O 1 bit } block_1_1_d0 { O 32 vector } block_1_1_q0 { I 32 vector } block_1_1_address1 { O 8 vector } block_1_1_ce1 { O 1 bit } block_1_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 274 \
    name block_1_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_1_2 \
    op interface \
    ports { block_1_2_address0 { O 8 vector } block_1_2_ce0 { O 1 bit } block_1_2_we0 { O 1 bit } block_1_2_d0 { O 32 vector } block_1_2_q0 { I 32 vector } block_1_2_address1 { O 8 vector } block_1_2_ce1 { O 1 bit } block_1_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 275 \
    name block_1_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_1_3 \
    op interface \
    ports { block_1_3_address0 { O 8 vector } block_1_3_ce0 { O 1 bit } block_1_3_we0 { O 1 bit } block_1_3_d0 { O 32 vector } block_1_3_q0 { I 32 vector } block_1_3_address1 { O 8 vector } block_1_3_ce1 { O 1 bit } block_1_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 276 \
    name block_2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_2_0 \
    op interface \
    ports { block_2_0_address0 { O 8 vector } block_2_0_ce0 { O 1 bit } block_2_0_we0 { O 1 bit } block_2_0_d0 { O 32 vector } block_2_0_q0 { I 32 vector } block_2_0_address1 { O 8 vector } block_2_0_ce1 { O 1 bit } block_2_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 277 \
    name block_2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_2_1 \
    op interface \
    ports { block_2_1_address0 { O 8 vector } block_2_1_ce0 { O 1 bit } block_2_1_we0 { O 1 bit } block_2_1_d0 { O 32 vector } block_2_1_q0 { I 32 vector } block_2_1_address1 { O 8 vector } block_2_1_ce1 { O 1 bit } block_2_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 278 \
    name block_2_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_2_2 \
    op interface \
    ports { block_2_2_address0 { O 8 vector } block_2_2_ce0 { O 1 bit } block_2_2_we0 { O 1 bit } block_2_2_d0 { O 32 vector } block_2_2_q0 { I 32 vector } block_2_2_address1 { O 8 vector } block_2_2_ce1 { O 1 bit } block_2_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 279 \
    name block_2_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_2_3 \
    op interface \
    ports { block_2_3_address0 { O 8 vector } block_2_3_ce0 { O 1 bit } block_2_3_we0 { O 1 bit } block_2_3_d0 { O 32 vector } block_2_3_q0 { I 32 vector } block_2_3_address1 { O 8 vector } block_2_3_ce1 { O 1 bit } block_2_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 280 \
    name block_3_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_3_0 \
    op interface \
    ports { block_3_0_address0 { O 8 vector } block_3_0_ce0 { O 1 bit } block_3_0_we0 { O 1 bit } block_3_0_d0 { O 32 vector } block_3_0_q0 { I 32 vector } block_3_0_address1 { O 8 vector } block_3_0_ce1 { O 1 bit } block_3_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 281 \
    name block_3_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_3_1 \
    op interface \
    ports { block_3_1_address0 { O 8 vector } block_3_1_ce0 { O 1 bit } block_3_1_we0 { O 1 bit } block_3_1_d0 { O 32 vector } block_3_1_q0 { I 32 vector } block_3_1_address1 { O 8 vector } block_3_1_ce1 { O 1 bit } block_3_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 282 \
    name block_3_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_3_2 \
    op interface \
    ports { block_3_2_address0 { O 8 vector } block_3_2_ce0 { O 1 bit } block_3_2_we0 { O 1 bit } block_3_2_d0 { O 32 vector } block_3_2_q0 { I 32 vector } block_3_2_address1 { O 8 vector } block_3_2_ce1 { O 1 bit } block_3_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 283 \
    name block_3_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_3_3 \
    op interface \
    ports { block_3_3_address0 { O 8 vector } block_3_3_ce0 { O 1 bit } block_3_3_we0 { O 1 bit } block_3_3_d0 { O 32 vector } block_3_3_q0 { I 32 vector } block_3_3_address1 { O 8 vector } block_3_3_ce1 { O 1 bit } block_3_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_3_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
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
    id 242 \
    name x_rows \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_rows \
    op interface \
    ports { x_rows { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name pivot_eps \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pivot_eps \
    op interface \
    ports { pivot_eps { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name failed_row \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_failed_row \
    op interface \
    ports { failed_row { O 32 vector } failed_row_ap_vld { O 1 bit } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 3 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


