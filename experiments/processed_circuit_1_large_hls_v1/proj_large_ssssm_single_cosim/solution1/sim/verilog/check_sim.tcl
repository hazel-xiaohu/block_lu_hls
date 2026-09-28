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
         "c.large_ssssm.autotvin_sa0.dat"
         "c.large_ssssm.autotvin_sa1.dat"
         "c.large_ssssm.autotvin_sa2.dat"
         "c.large_ssssm.autotvin_sl0.dat"
         "c.large_ssssm.autotvin_sl1.dat"
         "c.large_ssssm.autotvin_sl2.dat"
         "c.large_ssssm.autotvin_su0.dat"
         "c.large_ssssm.autotvin_su1.dat"
         "c.large_ssssm.autotvin_su2.dat"
         "c.large_ssssm.autotvin_ss0.dat"
         "c.large_ssssm.autotvin_ss1.dat"
         "c.large_ssssm.autotvin_sw0.dat"
         "c.large_ssssm.autotvin_sw1.dat"
         "c.large_ssssm.autotvin_a_ptr.dat"
         "c.large_ssssm.autotvin_a_idx.dat"
         "c.large_ssssm.autotvin_a_val.dat"
         "c.large_ssssm.autotvin_l_ptr.dat"
         "c.large_ssssm.autotvin_l_idx.dat"
         "c.large_ssssm.autotvin_l_val.dat"
         "c.large_ssssm.autotvin_u_ptr.dat"
         "c.large_ssssm.autotvin_u_idx.dat"
         "c.large_ssssm.autotvin_u_val.dat"
         "c.large_ssssm.autotvin_s_ptr.dat"
         "c.large_ssssm.autotvin_s_idx.dat"
         "c.large_ssssm.autotvin_s_val.dat"
         "c.large_ssssm.autotvin_work.dat"
         "c.large_ssssm.autotvin_mark.dat"
         "c.large_ssssm.autotvin_rows.dat"
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
         "rtl.large_ssssm.autotvout_ss2.dat"
         "rtl.large_ssssm.autotvout_sw0.dat"
         "rtl.large_ssssm.autotvout_sw1.dat"
         "rtl.large_ssssm.autotvout_status.dat"
         "rtl.large_ssssm.autotvout_muladds.dat"
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
