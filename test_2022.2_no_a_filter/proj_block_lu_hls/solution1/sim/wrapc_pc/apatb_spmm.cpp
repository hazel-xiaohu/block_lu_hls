#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_signal_handler.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_A_rcsr "../tv/cdatafile/c.spmm.autotvin_A_rcsr.dat"
#define AUTOTB_TVOUT_A_rcsr "../tv/cdatafile/c.spmm.autotvout_A_rcsr.dat"
#define AUTOTB_TVIN_A_cid "../tv/cdatafile/c.spmm.autotvin_A_cid.dat"
#define AUTOTB_TVOUT_A_cid "../tv/cdatafile/c.spmm.autotvout_A_cid.dat"
#define AUTOTB_TVIN_A_val "../tv/cdatafile/c.spmm.autotvin_A_val.dat"
#define AUTOTB_TVOUT_A_val "../tv/cdatafile/c.spmm.autotvout_A_val.dat"
#define AUTOTB_TVIN_arnum "../tv/cdatafile/c.spmm.autotvin_arnum.dat"
#define AUTOTB_TVOUT_arnum "../tv/cdatafile/c.spmm.autotvout_arnum.dat"
#define AUTOTB_TVIN_atnum "../tv/cdatafile/c.spmm.autotvin_atnum.dat"
#define AUTOTB_TVOUT_atnum "../tv/cdatafile/c.spmm.autotvout_atnum.dat"
#define AUTOTB_TVIN_B_rcsr1 "../tv/cdatafile/c.spmm.autotvin_B_rcsr1.dat"
#define AUTOTB_TVOUT_B_rcsr1 "../tv/cdatafile/c.spmm.autotvout_B_rcsr1.dat"
#define AUTOTB_TVIN_B_rcsr2 "../tv/cdatafile/c.spmm.autotvin_B_rcsr2.dat"
#define AUTOTB_TVOUT_B_rcsr2 "../tv/cdatafile/c.spmm.autotvout_B_rcsr2.dat"
#define AUTOTB_TVIN_B_rcsr3 "../tv/cdatafile/c.spmm.autotvin_B_rcsr3.dat"
#define AUTOTB_TVOUT_B_rcsr3 "../tv/cdatafile/c.spmm.autotvout_B_rcsr3.dat"
#define AUTOTB_TVIN_B_rcsr4 "../tv/cdatafile/c.spmm.autotvin_B_rcsr4.dat"
#define AUTOTB_TVOUT_B_rcsr4 "../tv/cdatafile/c.spmm.autotvout_B_rcsr4.dat"
#define AUTOTB_TVIN_B_val1 "../tv/cdatafile/c.spmm.autotvin_B_val1.dat"
#define AUTOTB_TVOUT_B_val1 "../tv/cdatafile/c.spmm.autotvout_B_val1.dat"
#define AUTOTB_TVIN_B_cid1 "../tv/cdatafile/c.spmm.autotvin_B_cid1.dat"
#define AUTOTB_TVOUT_B_cid1 "../tv/cdatafile/c.spmm.autotvout_B_cid1.dat"
#define AUTOTB_TVIN_B_val2 "../tv/cdatafile/c.spmm.autotvin_B_val2.dat"
#define AUTOTB_TVOUT_B_val2 "../tv/cdatafile/c.spmm.autotvout_B_val2.dat"
#define AUTOTB_TVIN_B_cid2 "../tv/cdatafile/c.spmm.autotvin_B_cid2.dat"
#define AUTOTB_TVOUT_B_cid2 "../tv/cdatafile/c.spmm.autotvout_B_cid2.dat"
#define AUTOTB_TVIN_B_val3 "../tv/cdatafile/c.spmm.autotvin_B_val3.dat"
#define AUTOTB_TVOUT_B_val3 "../tv/cdatafile/c.spmm.autotvout_B_val3.dat"
#define AUTOTB_TVIN_B_cid3 "../tv/cdatafile/c.spmm.autotvin_B_cid3.dat"
#define AUTOTB_TVOUT_B_cid3 "../tv/cdatafile/c.spmm.autotvout_B_cid3.dat"
#define AUTOTB_TVIN_B_val4 "../tv/cdatafile/c.spmm.autotvin_B_val4.dat"
#define AUTOTB_TVOUT_B_val4 "../tv/cdatafile/c.spmm.autotvout_B_val4.dat"
#define AUTOTB_TVIN_B_cid4 "../tv/cdatafile/c.spmm.autotvin_B_cid4.dat"
#define AUTOTB_TVOUT_B_cid4 "../tv/cdatafile/c.spmm.autotvout_B_cid4.dat"
#define AUTOTB_TVIN_brnum "../tv/cdatafile/c.spmm.autotvin_brnum.dat"
#define AUTOTB_TVOUT_brnum "../tv/cdatafile/c.spmm.autotvout_brnum.dat"
#define AUTOTB_TVIN_btnum "../tv/cdatafile/c.spmm.autotvin_btnum.dat"
#define AUTOTB_TVOUT_btnum "../tv/cdatafile/c.spmm.autotvout_btnum.dat"
#define AUTOTB_TVIN_B_val_port1 "../tv/cdatafile/c.spmm.autotvin_B_val_port1.dat"
#define AUTOTB_TVOUT_B_val_port1 "../tv/cdatafile/c.spmm.autotvout_B_val_port1.dat"
#define AUTOTB_TVIN_B_cid_port1 "../tv/cdatafile/c.spmm.autotvin_B_cid_port1.dat"
#define AUTOTB_TVOUT_B_cid_port1 "../tv/cdatafile/c.spmm.autotvout_B_cid_port1.dat"
#define AUTOTB_TVIN_B_val_port2 "../tv/cdatafile/c.spmm.autotvin_B_val_port2.dat"
#define AUTOTB_TVOUT_B_val_port2 "../tv/cdatafile/c.spmm.autotvout_B_val_port2.dat"
#define AUTOTB_TVIN_B_cid_port2 "../tv/cdatafile/c.spmm.autotvin_B_cid_port2.dat"
#define AUTOTB_TVOUT_B_cid_port2 "../tv/cdatafile/c.spmm.autotvout_B_cid_port2.dat"
#define AUTOTB_TVIN_B_val_port3 "../tv/cdatafile/c.spmm.autotvin_B_val_port3.dat"
#define AUTOTB_TVOUT_B_val_port3 "../tv/cdatafile/c.spmm.autotvout_B_val_port3.dat"
#define AUTOTB_TVIN_B_cid_port3 "../tv/cdatafile/c.spmm.autotvin_B_cid_port3.dat"
#define AUTOTB_TVOUT_B_cid_port3 "../tv/cdatafile/c.spmm.autotvout_B_cid_port3.dat"
#define AUTOTB_TVIN_B_val_port4 "../tv/cdatafile/c.spmm.autotvin_B_val_port4.dat"
#define AUTOTB_TVOUT_B_val_port4 "../tv/cdatafile/c.spmm.autotvout_B_val_port4.dat"
#define AUTOTB_TVIN_B_cid_port4 "../tv/cdatafile/c.spmm.autotvin_B_cid_port4.dat"
#define AUTOTB_TVOUT_B_cid_port4 "../tv/cdatafile/c.spmm.autotvout_B_cid_port4.dat"
#define AUTOTB_TVIN_C_rcsr "../tv/cdatafile/c.spmm.autotvin_C_rcsr.dat"
#define AUTOTB_TVOUT_C_rcsr "../tv/cdatafile/c.spmm.autotvout_C_rcsr.dat"
#define AUTOTB_TVIN_C_cid "../tv/cdatafile/c.spmm.autotvin_C_cid.dat"
#define AUTOTB_TVOUT_C_cid "../tv/cdatafile/c.spmm.autotvout_C_cid.dat"
#define AUTOTB_TVIN_C_val "../tv/cdatafile/c.spmm.autotvin_C_val.dat"
#define AUTOTB_TVOUT_C_val "../tv/cdatafile/c.spmm.autotvout_C_val.dat"
#define AUTOTB_TVIN_B_rcsr_base "../tv/cdatafile/c.spmm.autotvin_B_rcsr_base.dat"
#define AUTOTB_TVOUT_B_rcsr_base "../tv/cdatafile/c.spmm.autotvout_B_rcsr_base.dat"
#define AUTOTB_TVIN_B_val_base "../tv/cdatafile/c.spmm.autotvin_B_val_base.dat"
#define AUTOTB_TVOUT_B_val_base "../tv/cdatafile/c.spmm.autotvout_B_val_base.dat"
#define AUTOTB_TVIN_B_cid_base "../tv/cdatafile/c.spmm.autotvin_B_cid_base.dat"
#define AUTOTB_TVOUT_B_cid_base "../tv/cdatafile/c.spmm.autotvout_B_cid_base.dat"
#define AUTOTB_TVIN_r1acc "../tv/cdatafile/c.spmm.autotvin_r1acc.dat"
#define AUTOTB_TVOUT_r1acc "../tv/cdatafile/c.spmm.autotvout_r1acc.dat"
#define AUTOTB_TVIN_r1hit "../tv/cdatafile/c.spmm.autotvin_r1hit.dat"
#define AUTOTB_TVOUT_r1hit "../tv/cdatafile/c.spmm.autotvout_r1hit.dat"
#define AUTOTB_TVIN_r2acc "../tv/cdatafile/c.spmm.autotvin_r2acc.dat"
#define AUTOTB_TVOUT_r2acc "../tv/cdatafile/c.spmm.autotvout_r2acc.dat"
#define AUTOTB_TVIN_r2hit "../tv/cdatafile/c.spmm.autotvin_r2hit.dat"
#define AUTOTB_TVOUT_r2hit "../tv/cdatafile/c.spmm.autotvout_r2hit.dat"
#define AUTOTB_TVIN_r3acc "../tv/cdatafile/c.spmm.autotvin_r3acc.dat"
#define AUTOTB_TVOUT_r3acc "../tv/cdatafile/c.spmm.autotvout_r3acc.dat"
#define AUTOTB_TVIN_r3hit "../tv/cdatafile/c.spmm.autotvin_r3hit.dat"
#define AUTOTB_TVOUT_r3hit "../tv/cdatafile/c.spmm.autotvout_r3hit.dat"
#define AUTOTB_TVIN_r4acc "../tv/cdatafile/c.spmm.autotvin_r4acc.dat"
#define AUTOTB_TVOUT_r4acc "../tv/cdatafile/c.spmm.autotvout_r4acc.dat"
#define AUTOTB_TVIN_r4hit "../tv/cdatafile/c.spmm.autotvin_r4hit.dat"
#define AUTOTB_TVOUT_r4hit "../tv/cdatafile/c.spmm.autotvout_r4hit.dat"
#define AUTOTB_TVIN_r5acc "../tv/cdatafile/c.spmm.autotvin_r5acc.dat"
#define AUTOTB_TVOUT_r5acc "../tv/cdatafile/c.spmm.autotvout_r5acc.dat"
#define AUTOTB_TVIN_r5hit "../tv/cdatafile/c.spmm.autotvin_r5hit.dat"
#define AUTOTB_TVOUT_r5hit "../tv/cdatafile/c.spmm.autotvout_r5hit.dat"
#define AUTOTB_TVIN_r6acc "../tv/cdatafile/c.spmm.autotvin_r6acc.dat"
#define AUTOTB_TVOUT_r6acc "../tv/cdatafile/c.spmm.autotvout_r6acc.dat"
#define AUTOTB_TVIN_r6hit "../tv/cdatafile/c.spmm.autotvin_r6hit.dat"
#define AUTOTB_TVOUT_r6hit "../tv/cdatafile/c.spmm.autotvout_r6hit.dat"
#define AUTOTB_TVIN_r7acc "../tv/cdatafile/c.spmm.autotvin_r7acc.dat"
#define AUTOTB_TVOUT_r7acc "../tv/cdatafile/c.spmm.autotvout_r7acc.dat"
#define AUTOTB_TVIN_r7hit "../tv/cdatafile/c.spmm.autotvin_r7hit.dat"
#define AUTOTB_TVOUT_r7hit "../tv/cdatafile/c.spmm.autotvout_r7hit.dat"
#define AUTOTB_TVIN_r8acc "../tv/cdatafile/c.spmm.autotvin_r8acc.dat"
#define AUTOTB_TVOUT_r8acc "../tv/cdatafile/c.spmm.autotvout_r8acc.dat"
#define AUTOTB_TVIN_r8hit "../tv/cdatafile/c.spmm.autotvin_r8hit.dat"
#define AUTOTB_TVOUT_r8hit "../tv/cdatafile/c.spmm.autotvout_r8hit.dat"
#define AUTOTB_TVIN_vc1acc "../tv/cdatafile/c.spmm.autotvin_vc1acc.dat"
#define AUTOTB_TVOUT_vc1acc "../tv/cdatafile/c.spmm.autotvout_vc1acc.dat"
#define AUTOTB_TVIN_vc1hit "../tv/cdatafile/c.spmm.autotvin_vc1hit.dat"
#define AUTOTB_TVOUT_vc1hit "../tv/cdatafile/c.spmm.autotvout_vc1hit.dat"
#define AUTOTB_TVIN_vc2acc "../tv/cdatafile/c.spmm.autotvin_vc2acc.dat"
#define AUTOTB_TVOUT_vc2acc "../tv/cdatafile/c.spmm.autotvout_vc2acc.dat"
#define AUTOTB_TVIN_vc2hit "../tv/cdatafile/c.spmm.autotvin_vc2hit.dat"
#define AUTOTB_TVOUT_vc2hit "../tv/cdatafile/c.spmm.autotvout_vc2hit.dat"
#define AUTOTB_TVIN_vc3acc "../tv/cdatafile/c.spmm.autotvin_vc3acc.dat"
#define AUTOTB_TVOUT_vc3acc "../tv/cdatafile/c.spmm.autotvout_vc3acc.dat"
#define AUTOTB_TVIN_vc3hit "../tv/cdatafile/c.spmm.autotvin_vc3hit.dat"
#define AUTOTB_TVOUT_vc3hit "../tv/cdatafile/c.spmm.autotvout_vc3hit.dat"
#define AUTOTB_TVIN_vc4acc "../tv/cdatafile/c.spmm.autotvin_vc4acc.dat"
#define AUTOTB_TVOUT_vc4acc "../tv/cdatafile/c.spmm.autotvout_vc4acc.dat"
#define AUTOTB_TVIN_vc4hit "../tv/cdatafile/c.spmm.autotvin_vc4hit.dat"
#define AUTOTB_TVOUT_vc4hit "../tv/cdatafile/c.spmm.autotvout_vc4hit.dat"
#define AUTOTB_TVIN_vc5acc "../tv/cdatafile/c.spmm.autotvin_vc5acc.dat"
#define AUTOTB_TVOUT_vc5acc "../tv/cdatafile/c.spmm.autotvout_vc5acc.dat"
#define AUTOTB_TVIN_vc5hit "../tv/cdatafile/c.spmm.autotvin_vc5hit.dat"
#define AUTOTB_TVOUT_vc5hit "../tv/cdatafile/c.spmm.autotvout_vc5hit.dat"
#define AUTOTB_TVIN_vc6acc "../tv/cdatafile/c.spmm.autotvin_vc6acc.dat"
#define AUTOTB_TVOUT_vc6acc "../tv/cdatafile/c.spmm.autotvout_vc6acc.dat"
#define AUTOTB_TVIN_vc6hit "../tv/cdatafile/c.spmm.autotvin_vc6hit.dat"
#define AUTOTB_TVOUT_vc6hit "../tv/cdatafile/c.spmm.autotvout_vc6hit.dat"
#define AUTOTB_TVIN_vc7acc "../tv/cdatafile/c.spmm.autotvin_vc7acc.dat"
#define AUTOTB_TVOUT_vc7acc "../tv/cdatafile/c.spmm.autotvout_vc7acc.dat"
#define AUTOTB_TVIN_vc7hit "../tv/cdatafile/c.spmm.autotvin_vc7hit.dat"
#define AUTOTB_TVOUT_vc7hit "../tv/cdatafile/c.spmm.autotvout_vc7hit.dat"
#define AUTOTB_TVIN_vc8acc "../tv/cdatafile/c.spmm.autotvin_vc8acc.dat"
#define AUTOTB_TVOUT_vc8acc "../tv/cdatafile/c.spmm.autotvout_vc8acc.dat"
#define AUTOTB_TVIN_vc8hit "../tv/cdatafile/c.spmm.autotvin_vc8hit.dat"
#define AUTOTB_TVOUT_vc8hit "../tv/cdatafile/c.spmm.autotvout_vc8hit.dat"
#define AUTOTB_TVIN_fnum "../tv/cdatafile/c.spmm.autotvin_fnum.dat"
#define AUTOTB_TVOUT_fnum "../tv/cdatafile/c.spmm.autotvout_fnum.dat"
#define AUTOTB_TVIN_workload_counter1 "../tv/cdatafile/c.spmm.autotvin_workload_counter1.dat"
#define AUTOTB_TVOUT_workload_counter1 "../tv/cdatafile/c.spmm.autotvout_workload_counter1.dat"
#define AUTOTB_TVIN_workload_counter2 "../tv/cdatafile/c.spmm.autotvin_workload_counter2.dat"
#define AUTOTB_TVOUT_workload_counter2 "../tv/cdatafile/c.spmm.autotvout_workload_counter2.dat"
#define AUTOTB_TVIN_workload_counter3 "../tv/cdatafile/c.spmm.autotvin_workload_counter3.dat"
#define AUTOTB_TVOUT_workload_counter3 "../tv/cdatafile/c.spmm.autotvout_workload_counter3.dat"
#define AUTOTB_TVIN_workload_counter4 "../tv/cdatafile/c.spmm.autotvin_workload_counter4.dat"
#define AUTOTB_TVOUT_workload_counter4 "../tv/cdatafile/c.spmm.autotvout_workload_counter4.dat"
#define AUTOTB_TVIN_acid "../tv/cdatafile/c.spmm.autotvin_acid.dat"
#define AUTOTB_TVOUT_acid "../tv/cdatafile/c.spmm.autotvout_acid.dat"
#define AUTOTB_TVIN_arcsr "../tv/cdatafile/c.spmm.autotvin_arcsr.dat"
#define AUTOTB_TVOUT_arcsr "../tv/cdatafile/c.spmm.autotvout_arcsr.dat"
#define AUTOTB_TVIN_aval "../tv/cdatafile/c.spmm.autotvin_aval.dat"
#define AUTOTB_TVOUT_aval "../tv/cdatafile/c.spmm.autotvout_aval.dat"
#define AUTOTB_TVIN_bc1 "../tv/cdatafile/c.spmm.autotvin_bc1.dat"
#define AUTOTB_TVOUT_bc1 "../tv/cdatafile/c.spmm.autotvout_bc1.dat"
#define AUTOTB_TVIN_bc2 "../tv/cdatafile/c.spmm.autotvin_bc2.dat"
#define AUTOTB_TVOUT_bc2 "../tv/cdatafile/c.spmm.autotvout_bc2.dat"
#define AUTOTB_TVIN_bc3 "../tv/cdatafile/c.spmm.autotvin_bc3.dat"
#define AUTOTB_TVOUT_bc3 "../tv/cdatafile/c.spmm.autotvout_bc3.dat"
#define AUTOTB_TVIN_bc4 "../tv/cdatafile/c.spmm.autotvin_bc4.dat"
#define AUTOTB_TVOUT_bc4 "../tv/cdatafile/c.spmm.autotvout_bc4.dat"
#define AUTOTB_TVIN_bcid1 "../tv/cdatafile/c.spmm.autotvin_bcid1.dat"
#define AUTOTB_TVOUT_bcid1 "../tv/cdatafile/c.spmm.autotvout_bcid1.dat"
#define AUTOTB_TVIN_bcid2 "../tv/cdatafile/c.spmm.autotvin_bcid2.dat"
#define AUTOTB_TVOUT_bcid2 "../tv/cdatafile/c.spmm.autotvout_bcid2.dat"
#define AUTOTB_TVIN_bcid3 "../tv/cdatafile/c.spmm.autotvin_bcid3.dat"
#define AUTOTB_TVOUT_bcid3 "../tv/cdatafile/c.spmm.autotvout_bcid3.dat"
#define AUTOTB_TVIN_bcid4 "../tv/cdatafile/c.spmm.autotvin_bcid4.dat"
#define AUTOTB_TVOUT_bcid4 "../tv/cdatafile/c.spmm.autotvout_bcid4.dat"
#define AUTOTB_TVIN_brcsr1 "../tv/cdatafile/c.spmm.autotvin_brcsr1.dat"
#define AUTOTB_TVOUT_brcsr1 "../tv/cdatafile/c.spmm.autotvout_brcsr1.dat"
#define AUTOTB_TVIN_brcsr2 "../tv/cdatafile/c.spmm.autotvin_brcsr2.dat"
#define AUTOTB_TVOUT_brcsr2 "../tv/cdatafile/c.spmm.autotvout_brcsr2.dat"
#define AUTOTB_TVIN_brcsr3 "../tv/cdatafile/c.spmm.autotvin_brcsr3.dat"
#define AUTOTB_TVOUT_brcsr3 "../tv/cdatafile/c.spmm.autotvout_brcsr3.dat"
#define AUTOTB_TVIN_brcsr4 "../tv/cdatafile/c.spmm.autotvin_brcsr4.dat"
#define AUTOTB_TVOUT_brcsr4 "../tv/cdatafile/c.spmm.autotvout_brcsr4.dat"
#define AUTOTB_TVIN_bv1 "../tv/cdatafile/c.spmm.autotvin_bv1.dat"
#define AUTOTB_TVOUT_bv1 "../tv/cdatafile/c.spmm.autotvout_bv1.dat"
#define AUTOTB_TVIN_bv2 "../tv/cdatafile/c.spmm.autotvin_bv2.dat"
#define AUTOTB_TVOUT_bv2 "../tv/cdatafile/c.spmm.autotvout_bv2.dat"
#define AUTOTB_TVIN_bv3 "../tv/cdatafile/c.spmm.autotvin_bv3.dat"
#define AUTOTB_TVOUT_bv3 "../tv/cdatafile/c.spmm.autotvout_bv3.dat"
#define AUTOTB_TVIN_bv4 "../tv/cdatafile/c.spmm.autotvin_bv4.dat"
#define AUTOTB_TVOUT_bv4 "../tv/cdatafile/c.spmm.autotvout_bv4.dat"
#define AUTOTB_TVIN_bval1 "../tv/cdatafile/c.spmm.autotvin_bval1.dat"
#define AUTOTB_TVOUT_bval1 "../tv/cdatafile/c.spmm.autotvout_bval1.dat"
#define AUTOTB_TVIN_bval2 "../tv/cdatafile/c.spmm.autotvin_bval2.dat"
#define AUTOTB_TVOUT_bval2 "../tv/cdatafile/c.spmm.autotvout_bval2.dat"
#define AUTOTB_TVIN_bval3 "../tv/cdatafile/c.spmm.autotvin_bval3.dat"
#define AUTOTB_TVOUT_bval3 "../tv/cdatafile/c.spmm.autotvout_bval3.dat"
#define AUTOTB_TVIN_bval4 "../tv/cdatafile/c.spmm.autotvin_bval4.dat"
#define AUTOTB_TVOUT_bval4 "../tv/cdatafile/c.spmm.autotvout_bval4.dat"
#define AUTOTB_TVIN_ccid "../tv/cdatafile/c.spmm.autotvin_ccid.dat"
#define AUTOTB_TVOUT_ccid "../tv/cdatafile/c.spmm.autotvout_ccid.dat"
#define AUTOTB_TVIN_crcsr "../tv/cdatafile/c.spmm.autotvin_crcsr.dat"
#define AUTOTB_TVOUT_crcsr "../tv/cdatafile/c.spmm.autotvout_crcsr.dat"
#define AUTOTB_TVIN_cval "../tv/cdatafile/c.spmm.autotvin_cval.dat"
#define AUTOTB_TVOUT_cval "../tv/cdatafile/c.spmm.autotvout_cval.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_r1acc "../tv/rtldatafile/rtl.spmm.autotvout_r1acc.dat"
#define AUTOTB_TVOUT_PC_r1hit "../tv/rtldatafile/rtl.spmm.autotvout_r1hit.dat"
#define AUTOTB_TVOUT_PC_r2acc "../tv/rtldatafile/rtl.spmm.autotvout_r2acc.dat"
#define AUTOTB_TVOUT_PC_r2hit "../tv/rtldatafile/rtl.spmm.autotvout_r2hit.dat"
#define AUTOTB_TVOUT_PC_r3acc "../tv/rtldatafile/rtl.spmm.autotvout_r3acc.dat"
#define AUTOTB_TVOUT_PC_r3hit "../tv/rtldatafile/rtl.spmm.autotvout_r3hit.dat"
#define AUTOTB_TVOUT_PC_r4acc "../tv/rtldatafile/rtl.spmm.autotvout_r4acc.dat"
#define AUTOTB_TVOUT_PC_r4hit "../tv/rtldatafile/rtl.spmm.autotvout_r4hit.dat"
#define AUTOTB_TVOUT_PC_vc1acc "../tv/rtldatafile/rtl.spmm.autotvout_vc1acc.dat"
#define AUTOTB_TVOUT_PC_vc1hit "../tv/rtldatafile/rtl.spmm.autotvout_vc1hit.dat"
#define AUTOTB_TVOUT_PC_vc2acc "../tv/rtldatafile/rtl.spmm.autotvout_vc2acc.dat"
#define AUTOTB_TVOUT_PC_vc2hit "../tv/rtldatafile/rtl.spmm.autotvout_vc2hit.dat"
#define AUTOTB_TVOUT_PC_vc3acc "../tv/rtldatafile/rtl.spmm.autotvout_vc3acc.dat"
#define AUTOTB_TVOUT_PC_vc3hit "../tv/rtldatafile/rtl.spmm.autotvout_vc3hit.dat"
#define AUTOTB_TVOUT_PC_vc4acc "../tv/rtldatafile/rtl.spmm.autotvout_vc4acc.dat"
#define AUTOTB_TVOUT_PC_vc4hit "../tv/rtldatafile/rtl.spmm.autotvout_vc4hit.dat"
#define AUTOTB_TVOUT_PC_fnum "../tv/rtldatafile/rtl.spmm.autotvout_fnum.dat"
#define AUTOTB_TVOUT_PC_workload_counter1 "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter1.dat"
#define AUTOTB_TVOUT_PC_workload_counter2 "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter2.dat"
#define AUTOTB_TVOUT_PC_workload_counter3 "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter3.dat"
#define AUTOTB_TVOUT_PC_workload_counter4 "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter4.dat"
#define AUTOTB_TVOUT_PC_acid "../tv/rtldatafile/rtl.spmm.autotvout_acid.dat"
#define AUTOTB_TVOUT_PC_arcsr "../tv/rtldatafile/rtl.spmm.autotvout_arcsr.dat"
#define AUTOTB_TVOUT_PC_aval "../tv/rtldatafile/rtl.spmm.autotvout_aval.dat"
#define AUTOTB_TVOUT_PC_bc1 "../tv/rtldatafile/rtl.spmm.autotvout_bc1.dat"
#define AUTOTB_TVOUT_PC_bc2 "../tv/rtldatafile/rtl.spmm.autotvout_bc2.dat"
#define AUTOTB_TVOUT_PC_bc3 "../tv/rtldatafile/rtl.spmm.autotvout_bc3.dat"
#define AUTOTB_TVOUT_PC_bc4 "../tv/rtldatafile/rtl.spmm.autotvout_bc4.dat"
#define AUTOTB_TVOUT_PC_bcid1 "../tv/rtldatafile/rtl.spmm.autotvout_bcid1.dat"
#define AUTOTB_TVOUT_PC_bcid2 "../tv/rtldatafile/rtl.spmm.autotvout_bcid2.dat"
#define AUTOTB_TVOUT_PC_bcid3 "../tv/rtldatafile/rtl.spmm.autotvout_bcid3.dat"
#define AUTOTB_TVOUT_PC_bcid4 "../tv/rtldatafile/rtl.spmm.autotvout_bcid4.dat"
#define AUTOTB_TVOUT_PC_brcsr1 "../tv/rtldatafile/rtl.spmm.autotvout_brcsr1.dat"
#define AUTOTB_TVOUT_PC_brcsr2 "../tv/rtldatafile/rtl.spmm.autotvout_brcsr2.dat"
#define AUTOTB_TVOUT_PC_brcsr3 "../tv/rtldatafile/rtl.spmm.autotvout_brcsr3.dat"
#define AUTOTB_TVOUT_PC_brcsr4 "../tv/rtldatafile/rtl.spmm.autotvout_brcsr4.dat"
#define AUTOTB_TVOUT_PC_bv1 "../tv/rtldatafile/rtl.spmm.autotvout_bv1.dat"
#define AUTOTB_TVOUT_PC_bv2 "../tv/rtldatafile/rtl.spmm.autotvout_bv2.dat"
#define AUTOTB_TVOUT_PC_bv3 "../tv/rtldatafile/rtl.spmm.autotvout_bv3.dat"
#define AUTOTB_TVOUT_PC_bv4 "../tv/rtldatafile/rtl.spmm.autotvout_bv4.dat"
#define AUTOTB_TVOUT_PC_bval1 "../tv/rtldatafile/rtl.spmm.autotvout_bval1.dat"
#define AUTOTB_TVOUT_PC_bval2 "../tv/rtldatafile/rtl.spmm.autotvout_bval2.dat"
#define AUTOTB_TVOUT_PC_bval3 "../tv/rtldatafile/rtl.spmm.autotvout_bval3.dat"
#define AUTOTB_TVOUT_PC_bval4 "../tv/rtldatafile/rtl.spmm.autotvout_bval4.dat"
#define AUTOTB_TVOUT_PC_ccid "../tv/rtldatafile/rtl.spmm.autotvout_ccid.dat"
#define AUTOTB_TVOUT_PC_crcsr "../tv/rtldatafile/rtl.spmm.autotvout_crcsr.dat"
#define AUTOTB_TVOUT_PC_cval "../tv/rtldatafile/rtl.spmm.autotvout_cval.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}

namespace hls::sim
{
  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put)
  {
    size_t wbytes = (strlen(data)-2+1)>>1;
    put = LE ? put : put+wbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + strlen(data) - 1;
    auto next = [&] () {
      char res = ord(*c);
      --c;
      return res;
    };
    size_t fbytes = (strlen(data)-2)>>1;
    for (size_t i = 0; i < fbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
    if (wbytes > fbytes) {
      *nextp() = next();
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t psize, size_t depth)
    {
      for (size_t i = 0; i < depth; ++i) {
        read(param, wbytes);
        param += psize;
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t psize, size_t depth, size_t skip)
    {
      param -= psize*skip;
      for (size_t i = 0; i < depth; ++i) {
        write(param, wbytes);
        param += psize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> depth;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = depth[0];
      } else {
        tcl.set(name[0], sum(depth));
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct FIFO {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t depth;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~FIFO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = port.offset[i];
        size_t depth = port.depth[i] - skip;
        port.reader->advance(wbytes*skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                          port.asize, depth);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                            port.asize, port.depth[i]);
        } else {
          port.reader->advance(wbytes*port.depth[i]);
        }
      }
    }
  }
#endif
  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        for (size_t j = 0; j < port.depth[i]-port.offset[i]; ++j) {
          if (char *s = port.reader->next()) {
            foundX |= RTLOutputCheckAndReplacement(s);
            unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
          }
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          for (size_t j = 0; j < port.depth[i]; ++j) {
            if (char *s = port.reader->next()) {
              foundX |= RTLOutputCheckAndReplacement(s);
              unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
            }
          }
        } else {
          port.reader->skip(port.depth[i]);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(FIFO &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      for (size_t j = 0; j < port.depth; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, (unsigned char*)port.param+j*port.asize);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(sum(port.depth));
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.depth[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      for (size_t j = 0; j < port.depth[i]; ++j) {
        std::string &&s {
          formatData((unsigned char*)port.param[i]+j*port.asize, port.width)
        };
        writer->next(s.data());
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(FIFO &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t j = 0; j < port.depth; ++j) {
      std::string &&s {
        formatData((unsigned char*)port.param+j*port.asize, port.width)
      };
      writer->next(s.data());
    }
    writer->end();
  }


  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void spmm_hw_stub_wrapper(void*, void*, void*, hls::sim::Byte<4>, hls::sim::Byte<4>, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, hls::sim::Byte<4>, hls::sim::Byte<4>, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, hls::sim::Byte<4>, hls::sim::Byte<4>, hls::sim::Byte<4>, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_spmm_hw(void* __xlx_apatb_param_A_rcsr, void* __xlx_apatb_param_A_cid, void* __xlx_apatb_param_A_val, hls::sim::Byte<4> __xlx_apatb_param_arnum, hls::sim::Byte<4> __xlx_apatb_param_atnum, void* __xlx_apatb_param_B_rcsr1, void* __xlx_apatb_param_B_rcsr2, void* __xlx_apatb_param_B_rcsr3, void* __xlx_apatb_param_B_rcsr4, void* __xlx_apatb_param_B_val1, void* __xlx_apatb_param_B_cid1, void* __xlx_apatb_param_B_val2, void* __xlx_apatb_param_B_cid2, void* __xlx_apatb_param_B_val3, void* __xlx_apatb_param_B_cid3, void* __xlx_apatb_param_B_val4, void* __xlx_apatb_param_B_cid4, hls::sim::Byte<4> __xlx_apatb_param_brnum, hls::sim::Byte<4> __xlx_apatb_param_btnum, void* __xlx_apatb_param_B_val_port1, void* __xlx_apatb_param_B_cid_port1, void* __xlx_apatb_param_B_val_port2, void* __xlx_apatb_param_B_cid_port2, void* __xlx_apatb_param_B_val_port3, void* __xlx_apatb_param_B_cid_port3, void* __xlx_apatb_param_B_val_port4, void* __xlx_apatb_param_B_cid_port4, void* __xlx_apatb_param_C_rcsr, void* __xlx_apatb_param_C_cid, void* __xlx_apatb_param_C_val, hls::sim::Byte<4> __xlx_apatb_param_B_rcsr_base, hls::sim::Byte<4> __xlx_apatb_param_B_val_base, hls::sim::Byte<4> __xlx_apatb_param_B_cid_base, void* __xlx_apatb_param_r1acc, void* __xlx_apatb_param_r1hit, void* __xlx_apatb_param_r2acc, void* __xlx_apatb_param_r2hit, void* __xlx_apatb_param_r3acc, void* __xlx_apatb_param_r3hit, void* __xlx_apatb_param_r4acc, void* __xlx_apatb_param_r4hit, void* __xlx_apatb_param_r5acc, void* __xlx_apatb_param_r5hit, void* __xlx_apatb_param_r6acc, void* __xlx_apatb_param_r6hit, void* __xlx_apatb_param_r7acc, void* __xlx_apatb_param_r7hit, void* __xlx_apatb_param_r8acc, void* __xlx_apatb_param_r8hit, void* __xlx_apatb_param_vc1acc, void* __xlx_apatb_param_vc1hit, void* __xlx_apatb_param_vc2acc, void* __xlx_apatb_param_vc2hit, void* __xlx_apatb_param_vc3acc, void* __xlx_apatb_param_vc3hit, void* __xlx_apatb_param_vc4acc, void* __xlx_apatb_param_vc4hit, void* __xlx_apatb_param_vc5acc, void* __xlx_apatb_param_vc5hit, void* __xlx_apatb_param_vc6acc, void* __xlx_apatb_param_vc6hit, void* __xlx_apatb_param_vc7acc, void* __xlx_apatb_param_vc7hit, void* __xlx_apatb_param_vc8acc, void* __xlx_apatb_param_vc8hit, void* __xlx_apatb_param_fnum, void* __xlx_apatb_param_workload_counter1, void* __xlx_apatb_param_workload_counter2, void* __xlx_apatb_param_workload_counter3, void* __xlx_apatb_param_workload_counter4)
{
  hls::sim::Byte<4> __xlx_offset_byte_param_A_rcsr;
  static hls::sim::Register port0 {
    .name = "A_rcsr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_rcsr),
#endif
  };
  port0.param = &__xlx_offset_byte_param_A_rcsr;

  hls::sim::Byte<4> __xlx_offset_byte_param_A_cid;
  static hls::sim::Register port1 {
    .name = "A_cid",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_cid),
#endif
  };
  port1.param = &__xlx_offset_byte_param_A_cid;

  hls::sim::Byte<4> __xlx_offset_byte_param_A_val;
  static hls::sim::Register port2 {
    .name = "A_val",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_A_val),
#endif
  };
  port2.param = &__xlx_offset_byte_param_A_val;

  static hls::sim::Register port3 {
    .name = "arnum",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_arnum),
#endif
  };
  port3.param = &__xlx_apatb_param_arnum;

  static hls::sim::Register port4 {
    .name = "atnum",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_atnum),
#endif
  };
  port4.param = &__xlx_apatb_param_atnum;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_rcsr1;
  static hls::sim::Register port5 {
    .name = "B_rcsr1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_rcsr1),
#endif
  };
  port5.param = &__xlx_offset_byte_param_B_rcsr1;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_rcsr2;
  static hls::sim::Register port6 {
    .name = "B_rcsr2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_rcsr2),
#endif
  };
  port6.param = &__xlx_offset_byte_param_B_rcsr2;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_rcsr3;
  static hls::sim::Register port7 {
    .name = "B_rcsr3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_rcsr3),
#endif
  };
  port7.param = &__xlx_offset_byte_param_B_rcsr3;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_rcsr4;
  static hls::sim::Register port8 {
    .name = "B_rcsr4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_rcsr4),
#endif
  };
  port8.param = &__xlx_offset_byte_param_B_rcsr4;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_val1;
  static hls::sim::Register port9 {
    .name = "B_val1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_val1),
#endif
  };
  port9.param = &__xlx_offset_byte_param_B_val1;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_cid1;
  static hls::sim::Register port10 {
    .name = "B_cid1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_cid1),
#endif
  };
  port10.param = &__xlx_offset_byte_param_B_cid1;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_val2;
  static hls::sim::Register port11 {
    .name = "B_val2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_val2),
#endif
  };
  port11.param = &__xlx_offset_byte_param_B_val2;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_cid2;
  static hls::sim::Register port12 {
    .name = "B_cid2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_cid2),
#endif
  };
  port12.param = &__xlx_offset_byte_param_B_cid2;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_val3;
  static hls::sim::Register port13 {
    .name = "B_val3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_val3),
#endif
  };
  port13.param = &__xlx_offset_byte_param_B_val3;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_cid3;
  static hls::sim::Register port14 {
    .name = "B_cid3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_cid3),
#endif
  };
  port14.param = &__xlx_offset_byte_param_B_cid3;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_val4;
  static hls::sim::Register port15 {
    .name = "B_val4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_val4),
#endif
  };
  port15.param = &__xlx_offset_byte_param_B_val4;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_cid4;
  static hls::sim::Register port16 {
    .name = "B_cid4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_cid4),
#endif
  };
  port16.param = &__xlx_offset_byte_param_B_cid4;

  static hls::sim::Register port17 {
    .name = "brnum",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_brnum),
#endif
  };
  port17.param = &__xlx_apatb_param_brnum;

  static hls::sim::Register port18 {
    .name = "btnum",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_btnum),
#endif
  };
  port18.param = &__xlx_apatb_param_btnum;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_val_port1;
  static hls::sim::Register port19 {
    .name = "B_val_port1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_val_port1),
#endif
  };
  port19.param = &__xlx_offset_byte_param_B_val_port1;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_cid_port1;
  static hls::sim::Register port20 {
    .name = "B_cid_port1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_cid_port1),
#endif
  };
  port20.param = &__xlx_offset_byte_param_B_cid_port1;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_val_port2;
  static hls::sim::Register port21 {
    .name = "B_val_port2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_val_port2),
#endif
  };
  port21.param = &__xlx_offset_byte_param_B_val_port2;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_cid_port2;
  static hls::sim::Register port22 {
    .name = "B_cid_port2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_cid_port2),
#endif
  };
  port22.param = &__xlx_offset_byte_param_B_cid_port2;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_val_port3;
  static hls::sim::Register port23 {
    .name = "B_val_port3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_val_port3),
#endif
  };
  port23.param = &__xlx_offset_byte_param_B_val_port3;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_cid_port3;
  static hls::sim::Register port24 {
    .name = "B_cid_port3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_cid_port3),
#endif
  };
  port24.param = &__xlx_offset_byte_param_B_cid_port3;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_val_port4;
  static hls::sim::Register port25 {
    .name = "B_val_port4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_val_port4),
#endif
  };
  port25.param = &__xlx_offset_byte_param_B_val_port4;

  hls::sim::Byte<4> __xlx_offset_byte_param_B_cid_port4;
  static hls::sim::Register port26 {
    .name = "B_cid_port4",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_cid_port4),
#endif
  };
  port26.param = &__xlx_offset_byte_param_B_cid_port4;

  hls::sim::Byte<4> __xlx_offset_byte_param_C_rcsr;
  static hls::sim::Register port27 {
    .name = "C_rcsr",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_rcsr),
#endif
  };
  port27.param = &__xlx_offset_byte_param_C_rcsr;

  hls::sim::Byte<4> __xlx_offset_byte_param_C_cid;
  static hls::sim::Register port28 {
    .name = "C_cid",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_cid),
#endif
  };
  port28.param = &__xlx_offset_byte_param_C_cid;

  hls::sim::Byte<4> __xlx_offset_byte_param_C_val;
  static hls::sim::Register port29 {
    .name = "C_val",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_C_val),
#endif
  };
  port29.param = &__xlx_offset_byte_param_C_val;

  static hls::sim::Register port30 {
    .name = "B_rcsr_base",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_rcsr_base),
#endif
  };
  port30.param = &__xlx_apatb_param_B_rcsr_base;

  static hls::sim::Register port31 {
    .name = "B_val_base",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_val_base),
#endif
  };
  port31.param = &__xlx_apatb_param_B_val_base;

  static hls::sim::Register port32 {
    .name = "B_cid_base",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_B_cid_base),
#endif
  };
  port32.param = &__xlx_apatb_param_B_cid_base;

  static hls::sim::Register port33 {
    .name = "r1acc",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_r1acc),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_r1acc),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r1acc),
#endif
  };
  port33.param = __xlx_apatb_param_r1acc;

  static hls::sim::Register port34 {
    .name = "r1hit",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_r1hit),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_r1hit),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r1hit),
#endif
  };
  port34.param = __xlx_apatb_param_r1hit;

  static hls::sim::Register port35 {
    .name = "r2acc",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_r2acc),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_r2acc),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r2acc),
#endif
  };
  port35.param = __xlx_apatb_param_r2acc;

  static hls::sim::Register port36 {
    .name = "r2hit",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_r2hit),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_r2hit),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r2hit),
#endif
  };
  port36.param = __xlx_apatb_param_r2hit;

  static hls::sim::Register port37 {
    .name = "r3acc",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_r3acc),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_r3acc),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r3acc),
#endif
  };
  port37.param = __xlx_apatb_param_r3acc;

  static hls::sim::Register port38 {
    .name = "r3hit",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_r3hit),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_r3hit),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r3hit),
#endif
  };
  port38.param = __xlx_apatb_param_r3hit;

  static hls::sim::Register port39 {
    .name = "r4acc",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_r4acc),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_r4acc),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r4acc),
#endif
  };
  port39.param = __xlx_apatb_param_r4acc;

  static hls::sim::Register port40 {
    .name = "r4hit",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_r4hit),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_r4hit),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r4hit),
#endif
  };
  port40.param = __xlx_apatb_param_r4hit;

  static hls::sim::Register port41 {
    .name = "r5acc",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r5acc),
#endif
  };
  port41.param = __xlx_apatb_param_r5acc;

  static hls::sim::Register port42 {
    .name = "r5hit",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r5hit),
#endif
  };
  port42.param = __xlx_apatb_param_r5hit;

  static hls::sim::Register port43 {
    .name = "r6acc",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r6acc),
#endif
  };
  port43.param = __xlx_apatb_param_r6acc;

  static hls::sim::Register port44 {
    .name = "r6hit",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r6hit),
#endif
  };
  port44.param = __xlx_apatb_param_r6hit;

  static hls::sim::Register port45 {
    .name = "r7acc",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r7acc),
#endif
  };
  port45.param = __xlx_apatb_param_r7acc;

  static hls::sim::Register port46 {
    .name = "r7hit",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r7hit),
#endif
  };
  port46.param = __xlx_apatb_param_r7hit;

  static hls::sim::Register port47 {
    .name = "r8acc",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r8acc),
#endif
  };
  port47.param = __xlx_apatb_param_r8acc;

  static hls::sim::Register port48 {
    .name = "r8hit",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_r8hit),
#endif
  };
  port48.param = __xlx_apatb_param_r8hit;

  static hls::sim::Register port49 {
    .name = "vc1acc",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vc1acc),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vc1acc),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc1acc),
#endif
  };
  port49.param = __xlx_apatb_param_vc1acc;

  static hls::sim::Register port50 {
    .name = "vc1hit",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vc1hit),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vc1hit),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc1hit),
#endif
  };
  port50.param = __xlx_apatb_param_vc1hit;

  static hls::sim::Register port51 {
    .name = "vc2acc",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vc2acc),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vc2acc),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc2acc),
#endif
  };
  port51.param = __xlx_apatb_param_vc2acc;

  static hls::sim::Register port52 {
    .name = "vc2hit",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vc2hit),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vc2hit),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc2hit),
#endif
  };
  port52.param = __xlx_apatb_param_vc2hit;

  static hls::sim::Register port53 {
    .name = "vc3acc",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vc3acc),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vc3acc),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc3acc),
#endif
  };
  port53.param = __xlx_apatb_param_vc3acc;

  static hls::sim::Register port54 {
    .name = "vc3hit",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vc3hit),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vc3hit),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc3hit),
#endif
  };
  port54.param = __xlx_apatb_param_vc3hit;

  static hls::sim::Register port55 {
    .name = "vc4acc",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vc4acc),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vc4acc),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc4acc),
#endif
  };
  port55.param = __xlx_apatb_param_vc4acc;

  static hls::sim::Register port56 {
    .name = "vc4hit",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_vc4hit),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_vc4hit),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc4hit),
#endif
  };
  port56.param = __xlx_apatb_param_vc4hit;

  static hls::sim::Register port57 {
    .name = "vc5acc",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc5acc),
#endif
  };
  port57.param = __xlx_apatb_param_vc5acc;

  static hls::sim::Register port58 {
    .name = "vc5hit",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc5hit),
#endif
  };
  port58.param = __xlx_apatb_param_vc5hit;

  static hls::sim::Register port59 {
    .name = "vc6acc",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc6acc),
#endif
  };
  port59.param = __xlx_apatb_param_vc6acc;

  static hls::sim::Register port60 {
    .name = "vc6hit",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc6hit),
#endif
  };
  port60.param = __xlx_apatb_param_vc6hit;

  static hls::sim::Register port61 {
    .name = "vc7acc",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc7acc),
#endif
  };
  port61.param = __xlx_apatb_param_vc7acc;

  static hls::sim::Register port62 {
    .name = "vc7hit",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc7hit),
#endif
  };
  port62.param = __xlx_apatb_param_vc7hit;

  static hls::sim::Register port63 {
    .name = "vc8acc",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc8acc),
#endif
  };
  port63.param = __xlx_apatb_param_vc8acc;

  static hls::sim::Register port64 {
    .name = "vc8hit",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vc8hit),
#endif
  };
  port64.param = __xlx_apatb_param_vc8hit;

  static hls::sim::Register port65 {
    .name = "fnum",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_fnum),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_fnum),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_fnum),
#endif
  };
  port65.param = __xlx_apatb_param_fnum;

  static hls::sim::Register port66 {
    .name = "workload_counter1",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_workload_counter1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_workload_counter1),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_workload_counter1),
#endif
  };
  port66.param = __xlx_apatb_param_workload_counter1;

  static hls::sim::Register port67 {
    .name = "workload_counter2",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_workload_counter2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_workload_counter2),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_workload_counter2),
#endif
  };
  port67.param = __xlx_apatb_param_workload_counter2;

  static hls::sim::Register port68 {
    .name = "workload_counter3",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_workload_counter3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_workload_counter3),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_workload_counter3),
#endif
  };
  port68.param = __xlx_apatb_param_workload_counter3;

  static hls::sim::Register port69 {
    .name = "workload_counter4",
    .width = 32,
#ifdef POST_CHECK
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_workload_counter4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_workload_counter4),
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_workload_counter4),
#endif
  };
  port69.param = __xlx_apatb_param_workload_counter4;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port70 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port70 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "acid" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_acid),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_acid),
#endif
#endif
  };
  port70.param = { __xlx_apatb_param_A_cid };
  port70.depth = { 2831 };
  port70.offset = {  };
  port70.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port71 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port71 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "arcsr" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_arcsr),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_arcsr),
#endif
#endif
  };
  port71.param = { __xlx_apatb_param_A_rcsr };
  port71.depth = { 2050 };
  port71.offset = {  };
  port71.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port72 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port72 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "aval" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_aval),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_aval),
#endif
#endif
  };
  port72.param = { __xlx_apatb_param_A_val };
  port72.depth = { 2831 };
  port72.offset = {  };
  port72.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port73 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port73 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bc1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bc1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bc1),
#endif
#endif
  };
  port73.param = { __xlx_apatb_param_B_cid_port1 };
  port73.depth = { 896 };
  port73.offset = {  };
  port73.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port74 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port74 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bc2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bc2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bc2),
#endif
#endif
  };
  port74.param = { __xlx_apatb_param_B_cid_port2 };
  port74.depth = { 896 };
  port74.offset = {  };
  port74.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port75 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port75 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bc3" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bc3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bc3),
#endif
#endif
  };
  port75.param = { __xlx_apatb_param_B_cid_port3 };
  port75.depth = { 896 };
  port75.offset = {  };
  port75.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port76 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port76 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bc4" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bc4),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bc4),
#endif
#endif
  };
  port76.param = { __xlx_apatb_param_B_cid_port4 };
  port76.depth = { 896 };
  port76.offset = {  };
  port76.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port77 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port77 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bcid1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bcid1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bcid1),
#endif
#endif
  };
  port77.param = { __xlx_apatb_param_B_cid1 };
  port77.depth = { 896 };
  port77.offset = {  };
  port77.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port78 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port78 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bcid2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bcid2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bcid2),
#endif
#endif
  };
  port78.param = { __xlx_apatb_param_B_cid2 };
  port78.depth = { 896 };
  port78.offset = {  };
  port78.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port79 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port79 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bcid3" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bcid3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bcid3),
#endif
#endif
  };
  port79.param = { __xlx_apatb_param_B_cid3 };
  port79.depth = { 896 };
  port79.offset = {  };
  port79.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port80 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port80 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bcid4" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bcid4),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bcid4),
#endif
#endif
  };
  port80.param = { __xlx_apatb_param_B_cid4 };
  port80.depth = { 896 };
  port80.offset = {  };
  port80.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port81 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port81 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "brcsr1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_brcsr1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_brcsr1),
#endif
#endif
  };
  port81.param = { __xlx_apatb_param_B_rcsr1 };
  port81.depth = { 513 };
  port81.offset = {  };
  port81.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port82 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port82 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "brcsr2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_brcsr2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_brcsr2),
#endif
#endif
  };
  port82.param = { __xlx_apatb_param_B_rcsr2 };
  port82.depth = { 513 };
  port82.offset = {  };
  port82.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port83 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port83 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "brcsr3" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_brcsr3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_brcsr3),
#endif
#endif
  };
  port83.param = { __xlx_apatb_param_B_rcsr3 };
  port83.depth = { 513 };
  port83.offset = {  };
  port83.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port84 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port84 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "brcsr4" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_brcsr4),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_brcsr4),
#endif
#endif
  };
  port84.param = { __xlx_apatb_param_B_rcsr4 };
  port84.depth = { 513 };
  port84.offset = {  };
  port84.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port85 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port85 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bv1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bv1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bv1),
#endif
#endif
  };
  port85.param = { __xlx_apatb_param_B_val_port1 };
  port85.depth = { 896 };
  port85.offset = {  };
  port85.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port86 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port86 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bv2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bv2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bv2),
#endif
#endif
  };
  port86.param = { __xlx_apatb_param_B_val_port2 };
  port86.depth = { 896 };
  port86.offset = {  };
  port86.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port87 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port87 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bv3" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bv3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bv3),
#endif
#endif
  };
  port87.param = { __xlx_apatb_param_B_val_port3 };
  port87.depth = { 896 };
  port87.offset = {  };
  port87.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port88 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port88 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bv4" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bv4),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bv4),
#endif
#endif
  };
  port88.param = { __xlx_apatb_param_B_val_port4 };
  port88.depth = { 896 };
  port88.offset = {  };
  port88.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port89 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port89 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bval1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bval1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bval1),
#endif
#endif
  };
  port89.param = { __xlx_apatb_param_B_val1 };
  port89.depth = { 896 };
  port89.offset = {  };
  port89.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port90 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port90 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bval2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bval2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bval2),
#endif
#endif
  };
  port90.param = { __xlx_apatb_param_B_val2 };
  port90.depth = { 896 };
  port90.offset = {  };
  port90.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port91 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port91 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bval3" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bval3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bval3),
#endif
#endif
  };
  port91.param = { __xlx_apatb_param_B_val3 };
  port91.depth = { 896 };
  port91.offset = {  };
  port91.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port92 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port92 {
#endif
    .width = 128,
    .asize = 16,
    .hbm = false,
    .name = { "bval4" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_bval4),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_bval4),
#endif
#endif
  };
  port92.param = { __xlx_apatb_param_B_val4 };
  port92.depth = { 896 };
  port92.offset = {  };
  port92.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port93 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port93 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "ccid" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_ccid),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_ccid),
#endif
#endif
  };
  port93.param = { __xlx_apatb_param_C_cid };
  port93.depth = { 3627 };
  port93.offset = {  };
  port93.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port94 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port94 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "crcsr" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_crcsr),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_crcsr),
#endif
#endif
  };
  port94.param = { __xlx_apatb_param_C_rcsr };
  port94.depth = { 2050 };
  port94.offset = {  };
  port94.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port95 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port95 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "cval" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_cval),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_cval),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_cval),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_cval),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_cval),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_cval),
#endif
#endif
  };
  port95.param = { __xlx_apatb_param_C_val };
  port95.depth = { 3627 };
  port95.offset = {  };
  port95.hasWrite = { true };

  refine_signal_handler();
  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port33);
    check(port34);
    check(port35);
    check(port36);
    check(port37);
    check(port38);
    check(port39);
    check(port40);
    check(port49);
    check(port50);
    check(port51);
    check(port52);
    check(port53);
    check(port54);
    check(port55);
    check(port56);
    check(port65);
    check(port66);
    check(port67);
    check(port68);
    check(port69);
    check(port95);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    dump(port34, port34.iwriter, tcl.AESL_transaction);
    dump(port35, port35.iwriter, tcl.AESL_transaction);
    dump(port36, port36.iwriter, tcl.AESL_transaction);
    dump(port37, port37.iwriter, tcl.AESL_transaction);
    dump(port38, port38.iwriter, tcl.AESL_transaction);
    dump(port39, port39.iwriter, tcl.AESL_transaction);
    dump(port40, port40.iwriter, tcl.AESL_transaction);
    dump(port41, port41.iwriter, tcl.AESL_transaction);
    dump(port42, port42.iwriter, tcl.AESL_transaction);
    dump(port43, port43.iwriter, tcl.AESL_transaction);
    dump(port44, port44.iwriter, tcl.AESL_transaction);
    dump(port45, port45.iwriter, tcl.AESL_transaction);
    dump(port46, port46.iwriter, tcl.AESL_transaction);
    dump(port47, port47.iwriter, tcl.AESL_transaction);
    dump(port48, port48.iwriter, tcl.AESL_transaction);
    dump(port49, port49.iwriter, tcl.AESL_transaction);
    dump(port50, port50.iwriter, tcl.AESL_transaction);
    dump(port51, port51.iwriter, tcl.AESL_transaction);
    dump(port52, port52.iwriter, tcl.AESL_transaction);
    dump(port53, port53.iwriter, tcl.AESL_transaction);
    dump(port54, port54.iwriter, tcl.AESL_transaction);
    dump(port55, port55.iwriter, tcl.AESL_transaction);
    dump(port56, port56.iwriter, tcl.AESL_transaction);
    dump(port57, port57.iwriter, tcl.AESL_transaction);
    dump(port58, port58.iwriter, tcl.AESL_transaction);
    dump(port59, port59.iwriter, tcl.AESL_transaction);
    dump(port60, port60.iwriter, tcl.AESL_transaction);
    dump(port61, port61.iwriter, tcl.AESL_transaction);
    dump(port62, port62.iwriter, tcl.AESL_transaction);
    dump(port63, port63.iwriter, tcl.AESL_transaction);
    dump(port64, port64.iwriter, tcl.AESL_transaction);
    dump(port65, port65.iwriter, tcl.AESL_transaction);
    dump(port66, port66.iwriter, tcl.AESL_transaction);
    dump(port67, port67.iwriter, tcl.AESL_transaction);
    dump(port68, port68.iwriter, tcl.AESL_transaction);
    dump(port69, port69.iwriter, tcl.AESL_transaction);
    dump(port70, port70.iwriter, tcl.AESL_transaction);
    dump(port71, port71.iwriter, tcl.AESL_transaction);
    dump(port72, port72.iwriter, tcl.AESL_transaction);
    dump(port73, port73.iwriter, tcl.AESL_transaction);
    dump(port74, port74.iwriter, tcl.AESL_transaction);
    dump(port75, port75.iwriter, tcl.AESL_transaction);
    dump(port76, port76.iwriter, tcl.AESL_transaction);
    dump(port77, port77.iwriter, tcl.AESL_transaction);
    dump(port78, port78.iwriter, tcl.AESL_transaction);
    dump(port79, port79.iwriter, tcl.AESL_transaction);
    dump(port80, port80.iwriter, tcl.AESL_transaction);
    dump(port81, port81.iwriter, tcl.AESL_transaction);
    dump(port82, port82.iwriter, tcl.AESL_transaction);
    dump(port83, port83.iwriter, tcl.AESL_transaction);
    dump(port84, port84.iwriter, tcl.AESL_transaction);
    dump(port85, port85.iwriter, tcl.AESL_transaction);
    dump(port86, port86.iwriter, tcl.AESL_transaction);
    dump(port87, port87.iwriter, tcl.AESL_transaction);
    dump(port88, port88.iwriter, tcl.AESL_transaction);
    dump(port89, port89.iwriter, tcl.AESL_transaction);
    dump(port90, port90.iwriter, tcl.AESL_transaction);
    dump(port91, port91.iwriter, tcl.AESL_transaction);
    dump(port92, port92.iwriter, tcl.AESL_transaction);
    dump(port93, port93.iwriter, tcl.AESL_transaction);
    dump(port94, port94.iwriter, tcl.AESL_transaction);
    dump(port95, port95.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    port35.doTCL(tcl);
    port36.doTCL(tcl);
    port37.doTCL(tcl);
    port38.doTCL(tcl);
    port39.doTCL(tcl);
    port40.doTCL(tcl);
    port41.doTCL(tcl);
    port42.doTCL(tcl);
    port43.doTCL(tcl);
    port44.doTCL(tcl);
    port45.doTCL(tcl);
    port46.doTCL(tcl);
    port47.doTCL(tcl);
    port48.doTCL(tcl);
    port49.doTCL(tcl);
    port50.doTCL(tcl);
    port51.doTCL(tcl);
    port52.doTCL(tcl);
    port53.doTCL(tcl);
    port54.doTCL(tcl);
    port55.doTCL(tcl);
    port56.doTCL(tcl);
    port57.doTCL(tcl);
    port58.doTCL(tcl);
    port59.doTCL(tcl);
    port60.doTCL(tcl);
    port61.doTCL(tcl);
    port62.doTCL(tcl);
    port63.doTCL(tcl);
    port64.doTCL(tcl);
    port65.doTCL(tcl);
    port66.doTCL(tcl);
    port67.doTCL(tcl);
    port68.doTCL(tcl);
    port69.doTCL(tcl);
    port70.doTCL(tcl);
    port71.doTCL(tcl);
    port72.doTCL(tcl);
    port73.doTCL(tcl);
    port74.doTCL(tcl);
    port75.doTCL(tcl);
    port76.doTCL(tcl);
    port77.doTCL(tcl);
    port78.doTCL(tcl);
    port79.doTCL(tcl);
    port80.doTCL(tcl);
    port81.doTCL(tcl);
    port82.doTCL(tcl);
    port83.doTCL(tcl);
    port84.doTCL(tcl);
    port85.doTCL(tcl);
    port86.doTCL(tcl);
    port87.doTCL(tcl);
    port88.doTCL(tcl);
    port89.doTCL(tcl);
    port90.doTCL(tcl);
    port91.doTCL(tcl);
    port92.doTCL(tcl);
    port93.doTCL(tcl);
    port94.doTCL(tcl);
    port95.doTCL(tcl);
    CodeState = CALL_C_DUT;
    spmm_hw_stub_wrapper(__xlx_apatb_param_A_rcsr, __xlx_apatb_param_A_cid, __xlx_apatb_param_A_val, __xlx_apatb_param_arnum, __xlx_apatb_param_atnum, __xlx_apatb_param_B_rcsr1, __xlx_apatb_param_B_rcsr2, __xlx_apatb_param_B_rcsr3, __xlx_apatb_param_B_rcsr4, __xlx_apatb_param_B_val1, __xlx_apatb_param_B_cid1, __xlx_apatb_param_B_val2, __xlx_apatb_param_B_cid2, __xlx_apatb_param_B_val3, __xlx_apatb_param_B_cid3, __xlx_apatb_param_B_val4, __xlx_apatb_param_B_cid4, __xlx_apatb_param_brnum, __xlx_apatb_param_btnum, __xlx_apatb_param_B_val_port1, __xlx_apatb_param_B_cid_port1, __xlx_apatb_param_B_val_port2, __xlx_apatb_param_B_cid_port2, __xlx_apatb_param_B_val_port3, __xlx_apatb_param_B_cid_port3, __xlx_apatb_param_B_val_port4, __xlx_apatb_param_B_cid_port4, __xlx_apatb_param_C_rcsr, __xlx_apatb_param_C_cid, __xlx_apatb_param_C_val, __xlx_apatb_param_B_rcsr_base, __xlx_apatb_param_B_val_base, __xlx_apatb_param_B_cid_base, __xlx_apatb_param_r1acc, __xlx_apatb_param_r1hit, __xlx_apatb_param_r2acc, __xlx_apatb_param_r2hit, __xlx_apatb_param_r3acc, __xlx_apatb_param_r3hit, __xlx_apatb_param_r4acc, __xlx_apatb_param_r4hit, __xlx_apatb_param_r5acc, __xlx_apatb_param_r5hit, __xlx_apatb_param_r6acc, __xlx_apatb_param_r6hit, __xlx_apatb_param_r7acc, __xlx_apatb_param_r7hit, __xlx_apatb_param_r8acc, __xlx_apatb_param_r8hit, __xlx_apatb_param_vc1acc, __xlx_apatb_param_vc1hit, __xlx_apatb_param_vc2acc, __xlx_apatb_param_vc2hit, __xlx_apatb_param_vc3acc, __xlx_apatb_param_vc3hit, __xlx_apatb_param_vc4acc, __xlx_apatb_param_vc4hit, __xlx_apatb_param_vc5acc, __xlx_apatb_param_vc5hit, __xlx_apatb_param_vc6acc, __xlx_apatb_param_vc6hit, __xlx_apatb_param_vc7acc, __xlx_apatb_param_vc7hit, __xlx_apatb_param_vc8acc, __xlx_apatb_param_vc8hit, __xlx_apatb_param_fnum, __xlx_apatb_param_workload_counter1, __xlx_apatb_param_workload_counter2, __xlx_apatb_param_workload_counter3, __xlx_apatb_param_workload_counter4);
    CodeState = DUMP_OUTPUTS;
    dump(port33, port33.owriter, tcl.AESL_transaction);
    dump(port34, port34.owriter, tcl.AESL_transaction);
    dump(port35, port35.owriter, tcl.AESL_transaction);
    dump(port36, port36.owriter, tcl.AESL_transaction);
    dump(port37, port37.owriter, tcl.AESL_transaction);
    dump(port38, port38.owriter, tcl.AESL_transaction);
    dump(port39, port39.owriter, tcl.AESL_transaction);
    dump(port40, port40.owriter, tcl.AESL_transaction);
    dump(port49, port49.owriter, tcl.AESL_transaction);
    dump(port50, port50.owriter, tcl.AESL_transaction);
    dump(port51, port51.owriter, tcl.AESL_transaction);
    dump(port52, port52.owriter, tcl.AESL_transaction);
    dump(port53, port53.owriter, tcl.AESL_transaction);
    dump(port54, port54.owriter, tcl.AESL_transaction);
    dump(port55, port55.owriter, tcl.AESL_transaction);
    dump(port56, port56.owriter, tcl.AESL_transaction);
    dump(port65, port65.owriter, tcl.AESL_transaction);
    dump(port66, port66.owriter, tcl.AESL_transaction);
    dump(port67, port67.owriter, tcl.AESL_transaction);
    dump(port68, port68.owriter, tcl.AESL_transaction);
    dump(port69, port69.owriter, tcl.AESL_transaction);
    dump(port95, port95.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}