# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
# Tool Version Limit: 2025.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
# 
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
         "c.sparse_lu_shared.autotvin_a_row.dat"
         "c.sparse_lu_shared.autotvin_a_col.dat"
         "c.sparse_lu_shared.autotvin_a_val.dat"
         "c.sparse_lu_shared.autotvin_l_row.dat"
         "c.sparse_lu_shared.autotvin_l_col.dat"
         "c.sparse_lu_shared.autotvin_l_val.dat"
         "c.sparse_lu_shared.autotvin_u_row.dat"
         "c.sparse_lu_shared.autotvin_u_col.dat"
         "c.sparse_lu_shared.autotvin_u_val.dat"
         "c.sparse_lu_shared.autotvin_x_row.dat"
         "c.sparse_lu_shared.autotvin_x_col.dat"
         "c.sparse_lu_shared.autotvin_x_val.dat"
         "c.sparse_lu_shared.autotvin_operation.dat"
         "c.sparse_lu_shared.autotvin_A_rcsr.dat"
         "c.sparse_lu_shared.autotvin_A_cid.dat"
         "c.sparse_lu_shared.autotvin_A_val_r.dat"
         "c.sparse_lu_shared.autotvin_L_rcsr.dat"
         "c.sparse_lu_shared.autotvin_L_cid.dat"
         "c.sparse_lu_shared.autotvin_L_val_r.dat"
         "c.sparse_lu_shared.autotvin_U_rcsr.dat"
         "c.sparse_lu_shared.autotvin_U_cid.dat"
         "c.sparse_lu_shared.autotvin_U_val_r.dat"
         "c.sparse_lu_shared.autotvin_X_rcsr.dat"
         "c.sparse_lu_shared.autotvin_X_cid.dat"
         "c.sparse_lu_shared.autotvin_X_val_r.dat"
         "c.sparse_lu_shared.autotvin_n.dat"
         "c.sparse_lu_shared.autotvin_a_nnz.dat"
         "c.sparse_lu_shared.autotvin_l_nnz.dat"
         "c.sparse_lu_shared.autotvin_u_nnz.dat"
         "c.sparse_lu_shared.autotvin_x_rows.dat"
         "c.sparse_lu_shared.autotvin_x_cols.dat"
         "c.sparse_lu_shared.autotvin_x_nnz.dat"
         "c.sparse_lu_shared.autotvin_pivot_eps.dat"
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
         "rtl.sparse_lu_shared.autotvout_l_val.dat"
         "rtl.sparse_lu_shared.autotvout_u_val.dat"
         "rtl.sparse_lu_shared.autotvout_x_val.dat"
         "rtl.sparse_lu_shared.autotvout_status.dat"
         "rtl.sparse_lu_shared.autotvout_failed_row.dat"
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
