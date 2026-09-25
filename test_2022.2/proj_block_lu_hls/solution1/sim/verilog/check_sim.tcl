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
         "c.spmm.autotvin_arcsr.dat"
         "c.spmm.autotvin_acid.dat"
         "c.spmm.autotvin_aval.dat"
         "c.spmm.autotvin_brcsr1.dat"
         "c.spmm.autotvin_brcsr2.dat"
         "c.spmm.autotvin_brcsr3.dat"
         "c.spmm.autotvin_brcsr4.dat"
         "c.spmm.autotvin_bval1.dat"
         "c.spmm.autotvin_bcid1.dat"
         "c.spmm.autotvin_bval2.dat"
         "c.spmm.autotvin_bcid2.dat"
         "c.spmm.autotvin_bval3.dat"
         "c.spmm.autotvin_bcid3.dat"
         "c.spmm.autotvin_bval4.dat"
         "c.spmm.autotvin_bcid4.dat"
         "c.spmm.autotvin_bv1.dat"
         "c.spmm.autotvin_bc1.dat"
         "c.spmm.autotvin_bv2.dat"
         "c.spmm.autotvin_bc2.dat"
         "c.spmm.autotvin_bv3.dat"
         "c.spmm.autotvin_bc3.dat"
         "c.spmm.autotvin_bv4.dat"
         "c.spmm.autotvin_bc4.dat"
         "c.spmm.autotvin_crcsr.dat"
         "c.spmm.autotvin_ccid.dat"
         "c.spmm.autotvin_cval.dat"
         "c.spmm.autotvin_A_rcsr.dat"
         "c.spmm.autotvin_A_cid.dat"
         "c.spmm.autotvin_A_val.dat"
         "c.spmm.autotvin_arnum.dat"
         "c.spmm.autotvin_B_rcsr1.dat"
         "c.spmm.autotvin_B_rcsr2.dat"
         "c.spmm.autotvin_B_rcsr3.dat"
         "c.spmm.autotvin_B_rcsr4.dat"
         "c.spmm.autotvin_B_val1.dat"
         "c.spmm.autotvin_B_cid1.dat"
         "c.spmm.autotvin_B_val2.dat"
         "c.spmm.autotvin_B_cid2.dat"
         "c.spmm.autotvin_B_val3.dat"
         "c.spmm.autotvin_B_cid3.dat"
         "c.spmm.autotvin_B_val4.dat"
         "c.spmm.autotvin_B_cid4.dat"
         "c.spmm.autotvin_brnum.dat"
         "c.spmm.autotvin_B_val_port1.dat"
         "c.spmm.autotvin_B_cid_port1.dat"
         "c.spmm.autotvin_B_val_port2.dat"
         "c.spmm.autotvin_B_cid_port2.dat"
         "c.spmm.autotvin_B_val_port3.dat"
         "c.spmm.autotvin_B_cid_port3.dat"
         "c.spmm.autotvin_B_val_port4.dat"
         "c.spmm.autotvin_B_cid_port4.dat"
         "c.spmm.autotvin_C_rcsr.dat"
         "c.spmm.autotvin_C_cid.dat"
         "c.spmm.autotvin_C_val.dat"
         "c.spmm.autotvin_B_rcsr_base.dat"
         "c.spmm.autotvin_B_val_base.dat"
         "c.spmm.autotvin_B_cid_base.dat"
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
         "rtl.spmm.autotvout_cval.dat"
         "rtl.spmm.autotvout_r1acc.dat"
         "rtl.spmm.autotvout_r1hit.dat"
         "rtl.spmm.autotvout_r2acc.dat"
         "rtl.spmm.autotvout_r2hit.dat"
         "rtl.spmm.autotvout_r3acc.dat"
         "rtl.spmm.autotvout_r3hit.dat"
         "rtl.spmm.autotvout_r4acc.dat"
         "rtl.spmm.autotvout_r4hit.dat"
         "rtl.spmm.autotvout_vc1acc.dat"
         "rtl.spmm.autotvout_vc1hit.dat"
         "rtl.spmm.autotvout_vc2acc.dat"
         "rtl.spmm.autotvout_vc2hit.dat"
         "rtl.spmm.autotvout_vc3acc.dat"
         "rtl.spmm.autotvout_vc3hit.dat"
         "rtl.spmm.autotvout_vc4acc.dat"
         "rtl.spmm.autotvout_vc4hit.dat"
         "rtl.spmm.autotvout_fnum.dat"
         "rtl.spmm.autotvout_workload_counter1.dat"
         "rtl.spmm.autotvout_workload_counter2.dat"
         "rtl.spmm.autotvout_workload_counter3.dat"
         "rtl.spmm.autotvout_workload_counter4.dat"
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
