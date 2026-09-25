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
    id 383 \
    name lower_pos_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename lower_pos_0 \
    op interface \
    ports { lower_pos_0_address0 { O 10 vector } lower_pos_0_ce0 { O 1 bit } lower_pos_0_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lower_pos_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 384 \
    name lower_pos_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename lower_pos_1 \
    op interface \
    ports { lower_pos_1_address0 { O 10 vector } lower_pos_1_ce0 { O 1 bit } lower_pos_1_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lower_pos_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 385 \
    name lower_pos_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename lower_pos_2 \
    op interface \
    ports { lower_pos_2_address0 { O 10 vector } lower_pos_2_ce0 { O 1 bit } lower_pos_2_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lower_pos_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 386 \
    name lower_pos_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename lower_pos_3 \
    op interface \
    ports { lower_pos_3_address0 { O 10 vector } lower_pos_3_ce0 { O 1 bit } lower_pos_3_q0 { I 12 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'lower_pos_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 387 \
    name factor_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename factor_0 \
    op interface \
    ports { factor_0_address0 { O 10 vector } factor_0_ce0 { O 1 bit } factor_0_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'factor_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 388 \
    name factor_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename factor_1 \
    op interface \
    ports { factor_1_address0 { O 10 vector } factor_1_ce0 { O 1 bit } factor_1_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'factor_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 389 \
    name factor_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename factor_2 \
    op interface \
    ports { factor_2_address0 { O 10 vector } factor_2_ce0 { O 1 bit } factor_2_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'factor_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 390 \
    name factor_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename factor_3 \
    op interface \
    ports { factor_3_address0 { O 10 vector } factor_3_ce0 { O 1 bit } factor_3_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'factor_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 391 \
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
    id 392 \
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
    id 393 \
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
    id 394 \
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
    id 395 \
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
    id 396 \
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
    id 397 \
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
    id 398 \
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
    id 399 \
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
    id 400 \
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
    id 401 \
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
    id 402 \
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
    id 403 \
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
    id 404 \
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
    id 405 \
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
    id 406 \
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
    id 407 \
    name block_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_0_0 \
    op interface \
    ports { block_0_0_address0 { O 8 vector } block_0_0_ce0 { O 1 bit } block_0_0_we0 { O 1 bit } block_0_0_d0 { O 32 vector } block_0_0_address1 { O 8 vector } block_0_0_ce1 { O 1 bit } block_0_0_q1 { I 32 vector } block_0_0_address2 { O 8 vector } block_0_0_ce2 { O 1 bit } block_0_0_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 408 \
    name block_0_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_0_1 \
    op interface \
    ports { block_0_1_address0 { O 8 vector } block_0_1_ce0 { O 1 bit } block_0_1_we0 { O 1 bit } block_0_1_d0 { O 32 vector } block_0_1_address1 { O 8 vector } block_0_1_ce1 { O 1 bit } block_0_1_q1 { I 32 vector } block_0_1_address2 { O 8 vector } block_0_1_ce2 { O 1 bit } block_0_1_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 409 \
    name block_0_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_0_2 \
    op interface \
    ports { block_0_2_address0 { O 8 vector } block_0_2_ce0 { O 1 bit } block_0_2_we0 { O 1 bit } block_0_2_d0 { O 32 vector } block_0_2_address1 { O 8 vector } block_0_2_ce1 { O 1 bit } block_0_2_q1 { I 32 vector } block_0_2_address2 { O 8 vector } block_0_2_ce2 { O 1 bit } block_0_2_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 410 \
    name block_0_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_0_3 \
    op interface \
    ports { block_0_3_address0 { O 8 vector } block_0_3_ce0 { O 1 bit } block_0_3_we0 { O 1 bit } block_0_3_d0 { O 32 vector } block_0_3_address1 { O 8 vector } block_0_3_ce1 { O 1 bit } block_0_3_q1 { I 32 vector } block_0_3_address2 { O 8 vector } block_0_3_ce2 { O 1 bit } block_0_3_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 411 \
    name block_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_1_0 \
    op interface \
    ports { block_1_0_address0 { O 8 vector } block_1_0_ce0 { O 1 bit } block_1_0_we0 { O 1 bit } block_1_0_d0 { O 32 vector } block_1_0_address1 { O 8 vector } block_1_0_ce1 { O 1 bit } block_1_0_q1 { I 32 vector } block_1_0_address2 { O 8 vector } block_1_0_ce2 { O 1 bit } block_1_0_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 412 \
    name block_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_1_1 \
    op interface \
    ports { block_1_1_address0 { O 8 vector } block_1_1_ce0 { O 1 bit } block_1_1_we0 { O 1 bit } block_1_1_d0 { O 32 vector } block_1_1_address1 { O 8 vector } block_1_1_ce1 { O 1 bit } block_1_1_q1 { I 32 vector } block_1_1_address2 { O 8 vector } block_1_1_ce2 { O 1 bit } block_1_1_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 413 \
    name block_1_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_1_2 \
    op interface \
    ports { block_1_2_address0 { O 8 vector } block_1_2_ce0 { O 1 bit } block_1_2_we0 { O 1 bit } block_1_2_d0 { O 32 vector } block_1_2_address1 { O 8 vector } block_1_2_ce1 { O 1 bit } block_1_2_q1 { I 32 vector } block_1_2_address2 { O 8 vector } block_1_2_ce2 { O 1 bit } block_1_2_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 414 \
    name block_1_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_1_3 \
    op interface \
    ports { block_1_3_address0 { O 8 vector } block_1_3_ce0 { O 1 bit } block_1_3_we0 { O 1 bit } block_1_3_d0 { O 32 vector } block_1_3_address1 { O 8 vector } block_1_3_ce1 { O 1 bit } block_1_3_q1 { I 32 vector } block_1_3_address2 { O 8 vector } block_1_3_ce2 { O 1 bit } block_1_3_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 415 \
    name block_2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_2_0 \
    op interface \
    ports { block_2_0_address0 { O 8 vector } block_2_0_ce0 { O 1 bit } block_2_0_we0 { O 1 bit } block_2_0_d0 { O 32 vector } block_2_0_address1 { O 8 vector } block_2_0_ce1 { O 1 bit } block_2_0_q1 { I 32 vector } block_2_0_address2 { O 8 vector } block_2_0_ce2 { O 1 bit } block_2_0_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 416 \
    name block_2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_2_1 \
    op interface \
    ports { block_2_1_address0 { O 8 vector } block_2_1_ce0 { O 1 bit } block_2_1_we0 { O 1 bit } block_2_1_d0 { O 32 vector } block_2_1_address1 { O 8 vector } block_2_1_ce1 { O 1 bit } block_2_1_q1 { I 32 vector } block_2_1_address2 { O 8 vector } block_2_1_ce2 { O 1 bit } block_2_1_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 417 \
    name block_2_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_2_2 \
    op interface \
    ports { block_2_2_address0 { O 8 vector } block_2_2_ce0 { O 1 bit } block_2_2_we0 { O 1 bit } block_2_2_d0 { O 32 vector } block_2_2_address1 { O 8 vector } block_2_2_ce1 { O 1 bit } block_2_2_q1 { I 32 vector } block_2_2_address2 { O 8 vector } block_2_2_ce2 { O 1 bit } block_2_2_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 418 \
    name block_2_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_2_3 \
    op interface \
    ports { block_2_3_address0 { O 8 vector } block_2_3_ce0 { O 1 bit } block_2_3_we0 { O 1 bit } block_2_3_d0 { O 32 vector } block_2_3_address1 { O 8 vector } block_2_3_ce1 { O 1 bit } block_2_3_q1 { I 32 vector } block_2_3_address2 { O 8 vector } block_2_3_ce2 { O 1 bit } block_2_3_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 419 \
    name block_3_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_3_0 \
    op interface \
    ports { block_3_0_address0 { O 8 vector } block_3_0_ce0 { O 1 bit } block_3_0_we0 { O 1 bit } block_3_0_d0 { O 32 vector } block_3_0_address1 { O 8 vector } block_3_0_ce1 { O 1 bit } block_3_0_q1 { I 32 vector } block_3_0_address2 { O 8 vector } block_3_0_ce2 { O 1 bit } block_3_0_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 420 \
    name block_3_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_3_1 \
    op interface \
    ports { block_3_1_address0 { O 8 vector } block_3_1_ce0 { O 1 bit } block_3_1_we0 { O 1 bit } block_3_1_d0 { O 32 vector } block_3_1_address1 { O 8 vector } block_3_1_ce1 { O 1 bit } block_3_1_q1 { I 32 vector } block_3_1_address2 { O 8 vector } block_3_1_ce2 { O 1 bit } block_3_1_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 421 \
    name block_3_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_3_2 \
    op interface \
    ports { block_3_2_address0 { O 8 vector } block_3_2_ce0 { O 1 bit } block_3_2_we0 { O 1 bit } block_3_2_d0 { O 32 vector } block_3_2_address1 { O 8 vector } block_3_2_ce1 { O 1 bit } block_3_2_q1 { I 32 vector } block_3_2_address2 { O 8 vector } block_3_2_ce2 { O 1 bit } block_3_2_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 422 \
    name block_3_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename block_3_3 \
    op interface \
    ports { block_3_3_address0 { O 8 vector } block_3_3_ce0 { O 1 bit } block_3_3_we0 { O 1 bit } block_3_3_d0 { O 32 vector } block_3_3_address1 { O 8 vector } block_3_3_ce1 { O 1 bit } block_3_3_q1 { I 32 vector } block_3_3_address2 { O 8 vector } block_3_3_ce2 { O 1 bit } block_3_3_q2 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'block_3_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
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
    id 382 \
    name x_cols \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_cols \
    op interface \
    ports { x_cols { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
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
    ports { ap_return { O 1 vector } } \
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


