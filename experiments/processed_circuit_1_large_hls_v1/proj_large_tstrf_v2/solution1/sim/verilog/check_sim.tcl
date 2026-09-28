# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
# Tool Version Limit: 2019.12
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc sc_sim_check {ret err logfile} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        while {[gets $fl line] >= 0} {
            if {[string first "AESL_mErrNo = " $line] == 0} {
                set mismatch_num [string range $line [string length "AESL_mErrNo = "] end]
                if {$mismatch_num != 0} {
                    ::AP::printMsg ERR COSIM 403 COSIM_403_986 ${mismatch_num}
                    break
                }
            }
        }
    }
    if {$ret || $err != ""} {
        if { [lindex $::errorCode 0] eq "CHILDSTATUS"} {
            set status [lindex $::errorCode 2]
            if {$status != ""} {
                ::AP::printMsg ERR COSIM 404 COSIM_404_987 $status
            } else {
                ::AP::printMsg ERR COSIM 405 COSIM_405_988
            }
        } else {
            ::AP::printMsg ERR COSIM 405 COSIM_405_989
        }
    }
    if {[file exists $logfile]} {
        set cmdret [catch {eval exec "grep \"Error:\" $logfile"} err]
        file delete -force $logfile
        if {$cmdret == 0} {
            ::AP::printMsg ERR COSIM 405 COSIM_405_990
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc rtl_sim_check {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set errfile "err.log"
    if {[file exists $errfile] && [file size $errfile] != 0} {
        set fl [open $errfile r]
        set unmatch_num 0
        while {[gets $fl line] >= 0} {
            if {[string first "unmatched" $line] != -1} {
                set unmatch_num [expr $unmatch_num + 1]
            }
        }
        if {$unmatch_num != 0} {
            ::AP::printMsg ERR COSIM 406 COSIM_406_991 ${unmatch_num}
        }
    }
    if {[file exists ".aesl_error"]} {
        set errfl [open ".aesl_error" r]
        gets $errfl line
        if {$line != 0} {
            ::AP::printMsg ERR COSIM 407 COSIM_407_992 $line
        }
    }
    if {[file exists ".exit.err"]} {
        ::AP::printMsg ERR COSIM 405 COSIM_405_993
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
}

proc check_tvin_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "c.large_tstrf_v2.autotvin_v2tu0.dat"
         "c.large_tstrf_v2.autotvin_v2tu1.dat"
         "c.large_tstrf_v2.autotvin_v2tu2.dat"
         "c.large_tstrf_v2.autotvin_v2tu3.dat"
         "c.large_tstrf_v2.autotvin_v2tu4.dat"
         "c.large_tstrf_v2.autotvin_v2tb0.dat"
         "c.large_tstrf_v2.autotvin_v2tb1.dat"
         "c.large_tstrf_v2.autotvin_v2tb2.dat"
         "c.large_tstrf_v2.autotvin_v2tx0.dat"
         "c.large_tstrf_v2.autotvin_v2tx1.dat"
         "c.large_tstrf_v2.autotvin_v2ta0.dat"
         "c.large_tstrf_v2.autotvin_u_col_ptr.dat"
         "c.large_tstrf_v2.autotvin_u_row_idx.dat"
         "c.large_tstrf_v2.autotvin_u_csr_val.dat"
         "c.large_tstrf_v2.autotvin_u_csc_to_csr.dat"
         "c.large_tstrf_v2.autotvin_u_diag_pos.dat"
         "c.large_tstrf_v2.autotvin_b_ptr.dat"
         "c.large_tstrf_v2.autotvin_b_idx.dat"
         "c.large_tstrf_v2.autotvin_b_val.dat"
         "c.large_tstrf_v2.autotvin_x_ptr.dat"
         "c.large_tstrf_v2.autotvin_x_idx.dat"
         "c.large_tstrf_v2.autotvin_x_val.dat"
         "c.large_tstrf_v2.autotvin_active_rows.dat"
         "c.large_tstrf_v2.autotvin_active_count.dat"
         "c.large_tstrf_v2.autotvin_n.dat"
         "c.large_tstrf_v2.autotvin_pivot_eps.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 320 COSIM_320_994
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}

proc check_tvout_file {} {
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] start...";
	}
    set rtlfilelist {
         "rtl.large_tstrf_v2.autotvout_v2tx2.dat"
         "rtl.large_tstrf_v2.autotvout_status.dat"
         "rtl.large_tstrf_v2.autotvout_muladds.dat"
         "rtl.large_tstrf_v2.autotvout_divisions.dat"
    }
    foreach rtlfile $rtlfilelist {
        if {[file isfile $rtlfile]} {
        } else {
            ::AP::printMsg ERR COSIM 303 COSIM_303_996
            return 1
        }
    }
	if {$::AESL_AUTOSIM::gDebug == 1} {
		puts stdout "[debug_prompt arg check_sim.tcl] finish...";
	}
    return 0
}
