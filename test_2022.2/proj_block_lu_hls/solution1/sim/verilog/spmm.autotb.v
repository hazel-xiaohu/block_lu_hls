// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      spmm
`define AUTOTB_DUT_INST AESL_inst_spmm
`define AUTOTB_TOP      apatb_spmm_top
`define AUTOTB_LAT_RESULT_FILE "spmm.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "spmm.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_spmm_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 2.50

`define AESL_DEPTH_arcsr 1
`define AESL_DEPTH_acid 1
`define AESL_DEPTH_aval 1
`define AESL_DEPTH_brcsr1 1
`define AESL_DEPTH_brcsr2 1
`define AESL_DEPTH_brcsr3 1
`define AESL_DEPTH_brcsr4 1
`define AESL_DEPTH_bval1 1
`define AESL_DEPTH_bcid1 1
`define AESL_DEPTH_bval2 1
`define AESL_DEPTH_bcid2 1
`define AESL_DEPTH_bval3 1
`define AESL_DEPTH_bcid3 1
`define AESL_DEPTH_bval4 1
`define AESL_DEPTH_bcid4 1
`define AESL_DEPTH_bv1 1
`define AESL_DEPTH_bc1 1
`define AESL_DEPTH_bv2 1
`define AESL_DEPTH_bc2 1
`define AESL_DEPTH_bv3 1
`define AESL_DEPTH_bc3 1
`define AESL_DEPTH_bv4 1
`define AESL_DEPTH_bc4 1
`define AESL_DEPTH_crcsr 1
`define AESL_DEPTH_ccid 1
`define AESL_DEPTH_cval 1
`define AESL_DEPTH_A_rcsr 1
`define AESL_DEPTH_A_cid 1
`define AESL_DEPTH_A_val 1
`define AESL_DEPTH_arnum 1
`define AESL_DEPTH_atnum 1
`define AESL_DEPTH_B_rcsr1 1
`define AESL_DEPTH_B_rcsr2 1
`define AESL_DEPTH_B_rcsr3 1
`define AESL_DEPTH_B_rcsr4 1
`define AESL_DEPTH_B_val1 1
`define AESL_DEPTH_B_cid1 1
`define AESL_DEPTH_B_val2 1
`define AESL_DEPTH_B_cid2 1
`define AESL_DEPTH_B_val3 1
`define AESL_DEPTH_B_cid3 1
`define AESL_DEPTH_B_val4 1
`define AESL_DEPTH_B_cid4 1
`define AESL_DEPTH_brnum 1
`define AESL_DEPTH_btnum 1
`define AESL_DEPTH_B_val_port1 1
`define AESL_DEPTH_B_cid_port1 1
`define AESL_DEPTH_B_val_port2 1
`define AESL_DEPTH_B_cid_port2 1
`define AESL_DEPTH_B_val_port3 1
`define AESL_DEPTH_B_cid_port3 1
`define AESL_DEPTH_B_val_port4 1
`define AESL_DEPTH_B_cid_port4 1
`define AESL_DEPTH_C_rcsr 1
`define AESL_DEPTH_C_cid 1
`define AESL_DEPTH_C_val 1
`define AESL_DEPTH_B_rcsr_base 1
`define AESL_DEPTH_B_val_base 1
`define AESL_DEPTH_B_cid_base 1
`define AESL_DEPTH_r1acc 1
`define AESL_DEPTH_r1hit 1
`define AESL_DEPTH_r2acc 1
`define AESL_DEPTH_r2hit 1
`define AESL_DEPTH_r3acc 1
`define AESL_DEPTH_r3hit 1
`define AESL_DEPTH_r4acc 1
`define AESL_DEPTH_r4hit 1
`define AESL_DEPTH_r5acc 1
`define AESL_DEPTH_r5hit 1
`define AESL_DEPTH_r6acc 1
`define AESL_DEPTH_r6hit 1
`define AESL_DEPTH_r7acc 1
`define AESL_DEPTH_r7hit 1
`define AESL_DEPTH_r8acc 1
`define AESL_DEPTH_r8hit 1
`define AESL_DEPTH_vc1acc 1
`define AESL_DEPTH_vc1hit 1
`define AESL_DEPTH_vc2acc 1
`define AESL_DEPTH_vc2hit 1
`define AESL_DEPTH_vc3acc 1
`define AESL_DEPTH_vc3hit 1
`define AESL_DEPTH_vc4acc 1
`define AESL_DEPTH_vc4hit 1
`define AESL_DEPTH_vc5acc 1
`define AESL_DEPTH_vc5hit 1
`define AESL_DEPTH_vc6acc 1
`define AESL_DEPTH_vc6hit 1
`define AESL_DEPTH_vc7acc 1
`define AESL_DEPTH_vc7hit 1
`define AESL_DEPTH_vc8acc 1
`define AESL_DEPTH_vc8hit 1
`define AESL_DEPTH_fnum 1
`define AESL_DEPTH_workload_counter1 1
`define AESL_DEPTH_workload_counter2 1
`define AESL_DEPTH_workload_counter3 1
`define AESL_DEPTH_workload_counter4 1
`define AUTOTB_TVIN_arcsr  "../tv/cdatafile/c.spmm.autotvin_arcsr.dat"
`define AUTOTB_TVIN_acid  "../tv/cdatafile/c.spmm.autotvin_acid.dat"
`define AUTOTB_TVIN_aval  "../tv/cdatafile/c.spmm.autotvin_aval.dat"
`define AUTOTB_TVIN_brcsr1  "../tv/cdatafile/c.spmm.autotvin_brcsr1.dat"
`define AUTOTB_TVIN_brcsr2  "../tv/cdatafile/c.spmm.autotvin_brcsr2.dat"
`define AUTOTB_TVIN_brcsr3  "../tv/cdatafile/c.spmm.autotvin_brcsr3.dat"
`define AUTOTB_TVIN_brcsr4  "../tv/cdatafile/c.spmm.autotvin_brcsr4.dat"
`define AUTOTB_TVIN_bval1  "../tv/cdatafile/c.spmm.autotvin_bval1.dat"
`define AUTOTB_TVIN_bcid1  "../tv/cdatafile/c.spmm.autotvin_bcid1.dat"
`define AUTOTB_TVIN_bval2  "../tv/cdatafile/c.spmm.autotvin_bval2.dat"
`define AUTOTB_TVIN_bcid2  "../tv/cdatafile/c.spmm.autotvin_bcid2.dat"
`define AUTOTB_TVIN_bval3  "../tv/cdatafile/c.spmm.autotvin_bval3.dat"
`define AUTOTB_TVIN_bcid3  "../tv/cdatafile/c.spmm.autotvin_bcid3.dat"
`define AUTOTB_TVIN_bval4  "../tv/cdatafile/c.spmm.autotvin_bval4.dat"
`define AUTOTB_TVIN_bcid4  "../tv/cdatafile/c.spmm.autotvin_bcid4.dat"
`define AUTOTB_TVIN_bv1  "../tv/cdatafile/c.spmm.autotvin_bv1.dat"
`define AUTOTB_TVIN_bc1  "../tv/cdatafile/c.spmm.autotvin_bc1.dat"
`define AUTOTB_TVIN_bv2  "../tv/cdatafile/c.spmm.autotvin_bv2.dat"
`define AUTOTB_TVIN_bc2  "../tv/cdatafile/c.spmm.autotvin_bc2.dat"
`define AUTOTB_TVIN_bv3  "../tv/cdatafile/c.spmm.autotvin_bv3.dat"
`define AUTOTB_TVIN_bc3  "../tv/cdatafile/c.spmm.autotvin_bc3.dat"
`define AUTOTB_TVIN_bv4  "../tv/cdatafile/c.spmm.autotvin_bv4.dat"
`define AUTOTB_TVIN_bc4  "../tv/cdatafile/c.spmm.autotvin_bc4.dat"
`define AUTOTB_TVIN_crcsr  "../tv/cdatafile/c.spmm.autotvin_crcsr.dat"
`define AUTOTB_TVIN_ccid  "../tv/cdatafile/c.spmm.autotvin_ccid.dat"
`define AUTOTB_TVIN_cval  "../tv/cdatafile/c.spmm.autotvin_cval.dat"
`define AUTOTB_TVIN_A_rcsr  "../tv/cdatafile/c.spmm.autotvin_A_rcsr.dat"
`define AUTOTB_TVIN_A_cid  "../tv/cdatafile/c.spmm.autotvin_A_cid.dat"
`define AUTOTB_TVIN_A_val  "../tv/cdatafile/c.spmm.autotvin_A_val.dat"
`define AUTOTB_TVIN_arnum  "../tv/cdatafile/c.spmm.autotvin_arnum.dat"
`define AUTOTB_TVIN_B_rcsr1  "../tv/cdatafile/c.spmm.autotvin_B_rcsr1.dat"
`define AUTOTB_TVIN_B_rcsr2  "../tv/cdatafile/c.spmm.autotvin_B_rcsr2.dat"
`define AUTOTB_TVIN_B_rcsr3  "../tv/cdatafile/c.spmm.autotvin_B_rcsr3.dat"
`define AUTOTB_TVIN_B_rcsr4  "../tv/cdatafile/c.spmm.autotvin_B_rcsr4.dat"
`define AUTOTB_TVIN_B_val1  "../tv/cdatafile/c.spmm.autotvin_B_val1.dat"
`define AUTOTB_TVIN_B_cid1  "../tv/cdatafile/c.spmm.autotvin_B_cid1.dat"
`define AUTOTB_TVIN_B_val2  "../tv/cdatafile/c.spmm.autotvin_B_val2.dat"
`define AUTOTB_TVIN_B_cid2  "../tv/cdatafile/c.spmm.autotvin_B_cid2.dat"
`define AUTOTB_TVIN_B_val3  "../tv/cdatafile/c.spmm.autotvin_B_val3.dat"
`define AUTOTB_TVIN_B_cid3  "../tv/cdatafile/c.spmm.autotvin_B_cid3.dat"
`define AUTOTB_TVIN_B_val4  "../tv/cdatafile/c.spmm.autotvin_B_val4.dat"
`define AUTOTB_TVIN_B_cid4  "../tv/cdatafile/c.spmm.autotvin_B_cid4.dat"
`define AUTOTB_TVIN_brnum  "../tv/cdatafile/c.spmm.autotvin_brnum.dat"
`define AUTOTB_TVIN_B_val_port1  "../tv/cdatafile/c.spmm.autotvin_B_val_port1.dat"
`define AUTOTB_TVIN_B_cid_port1  "../tv/cdatafile/c.spmm.autotvin_B_cid_port1.dat"
`define AUTOTB_TVIN_B_val_port2  "../tv/cdatafile/c.spmm.autotvin_B_val_port2.dat"
`define AUTOTB_TVIN_B_cid_port2  "../tv/cdatafile/c.spmm.autotvin_B_cid_port2.dat"
`define AUTOTB_TVIN_B_val_port3  "../tv/cdatafile/c.spmm.autotvin_B_val_port3.dat"
`define AUTOTB_TVIN_B_cid_port3  "../tv/cdatafile/c.spmm.autotvin_B_cid_port3.dat"
`define AUTOTB_TVIN_B_val_port4  "../tv/cdatafile/c.spmm.autotvin_B_val_port4.dat"
`define AUTOTB_TVIN_B_cid_port4  "../tv/cdatafile/c.spmm.autotvin_B_cid_port4.dat"
`define AUTOTB_TVIN_C_rcsr  "../tv/cdatafile/c.spmm.autotvin_C_rcsr.dat"
`define AUTOTB_TVIN_C_cid  "../tv/cdatafile/c.spmm.autotvin_C_cid.dat"
`define AUTOTB_TVIN_C_val  "../tv/cdatafile/c.spmm.autotvin_C_val.dat"
`define AUTOTB_TVIN_B_rcsr_base  "../tv/cdatafile/c.spmm.autotvin_B_rcsr_base.dat"
`define AUTOTB_TVIN_B_val_base  "../tv/cdatafile/c.spmm.autotvin_B_val_base.dat"
`define AUTOTB_TVIN_B_cid_base  "../tv/cdatafile/c.spmm.autotvin_B_cid_base.dat"
`define AUTOTB_TVIN_arcsr_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_arcsr.dat"
`define AUTOTB_TVIN_acid_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_acid.dat"
`define AUTOTB_TVIN_aval_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_aval.dat"
`define AUTOTB_TVIN_brcsr1_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_brcsr1.dat"
`define AUTOTB_TVIN_brcsr2_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_brcsr2.dat"
`define AUTOTB_TVIN_brcsr3_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_brcsr3.dat"
`define AUTOTB_TVIN_brcsr4_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_brcsr4.dat"
`define AUTOTB_TVIN_bval1_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bval1.dat"
`define AUTOTB_TVIN_bcid1_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bcid1.dat"
`define AUTOTB_TVIN_bval2_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bval2.dat"
`define AUTOTB_TVIN_bcid2_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bcid2.dat"
`define AUTOTB_TVIN_bval3_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bval3.dat"
`define AUTOTB_TVIN_bcid3_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bcid3.dat"
`define AUTOTB_TVIN_bval4_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bval4.dat"
`define AUTOTB_TVIN_bcid4_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bcid4.dat"
`define AUTOTB_TVIN_bv1_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bv1.dat"
`define AUTOTB_TVIN_bc1_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bc1.dat"
`define AUTOTB_TVIN_bv2_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bv2.dat"
`define AUTOTB_TVIN_bc2_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bc2.dat"
`define AUTOTB_TVIN_bv3_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bv3.dat"
`define AUTOTB_TVIN_bc3_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bc3.dat"
`define AUTOTB_TVIN_bv4_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bv4.dat"
`define AUTOTB_TVIN_bc4_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_bc4.dat"
`define AUTOTB_TVIN_crcsr_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_crcsr.dat"
`define AUTOTB_TVIN_ccid_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_ccid.dat"
`define AUTOTB_TVIN_cval_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_cval.dat"
`define AUTOTB_TVIN_A_rcsr_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_A_rcsr.dat"
`define AUTOTB_TVIN_A_cid_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_A_cid.dat"
`define AUTOTB_TVIN_A_val_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_A_val.dat"
`define AUTOTB_TVIN_arnum_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_arnum.dat"
`define AUTOTB_TVIN_B_rcsr1_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_rcsr1.dat"
`define AUTOTB_TVIN_B_rcsr2_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_rcsr2.dat"
`define AUTOTB_TVIN_B_rcsr3_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_rcsr3.dat"
`define AUTOTB_TVIN_B_rcsr4_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_rcsr4.dat"
`define AUTOTB_TVIN_B_val1_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_val1.dat"
`define AUTOTB_TVIN_B_cid1_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_cid1.dat"
`define AUTOTB_TVIN_B_val2_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_val2.dat"
`define AUTOTB_TVIN_B_cid2_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_cid2.dat"
`define AUTOTB_TVIN_B_val3_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_val3.dat"
`define AUTOTB_TVIN_B_cid3_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_cid3.dat"
`define AUTOTB_TVIN_B_val4_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_val4.dat"
`define AUTOTB_TVIN_B_cid4_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_cid4.dat"
`define AUTOTB_TVIN_brnum_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_brnum.dat"
`define AUTOTB_TVIN_B_val_port1_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_val_port1.dat"
`define AUTOTB_TVIN_B_cid_port1_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_cid_port1.dat"
`define AUTOTB_TVIN_B_val_port2_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_val_port2.dat"
`define AUTOTB_TVIN_B_cid_port2_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_cid_port2.dat"
`define AUTOTB_TVIN_B_val_port3_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_val_port3.dat"
`define AUTOTB_TVIN_B_cid_port3_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_cid_port3.dat"
`define AUTOTB_TVIN_B_val_port4_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_val_port4.dat"
`define AUTOTB_TVIN_B_cid_port4_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_cid_port4.dat"
`define AUTOTB_TVIN_C_rcsr_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_C_rcsr.dat"
`define AUTOTB_TVIN_C_cid_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_C_cid.dat"
`define AUTOTB_TVIN_C_val_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_C_val.dat"
`define AUTOTB_TVIN_B_rcsr_base_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_rcsr_base.dat"
`define AUTOTB_TVIN_B_val_base_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_val_base.dat"
`define AUTOTB_TVIN_B_cid_base_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvin_B_cid_base.dat"
`define AUTOTB_TVOUT_cval  "../tv/cdatafile/c.spmm.autotvout_cval.dat"
`define AUTOTB_TVOUT_r1acc  "../tv/cdatafile/c.spmm.autotvout_r1acc.dat"
`define AUTOTB_TVOUT_r1hit  "../tv/cdatafile/c.spmm.autotvout_r1hit.dat"
`define AUTOTB_TVOUT_r2acc  "../tv/cdatafile/c.spmm.autotvout_r2acc.dat"
`define AUTOTB_TVOUT_r2hit  "../tv/cdatafile/c.spmm.autotvout_r2hit.dat"
`define AUTOTB_TVOUT_r3acc  "../tv/cdatafile/c.spmm.autotvout_r3acc.dat"
`define AUTOTB_TVOUT_r3hit  "../tv/cdatafile/c.spmm.autotvout_r3hit.dat"
`define AUTOTB_TVOUT_r4acc  "../tv/cdatafile/c.spmm.autotvout_r4acc.dat"
`define AUTOTB_TVOUT_r4hit  "../tv/cdatafile/c.spmm.autotvout_r4hit.dat"
`define AUTOTB_TVOUT_vc1acc  "../tv/cdatafile/c.spmm.autotvout_vc1acc.dat"
`define AUTOTB_TVOUT_vc1hit  "../tv/cdatafile/c.spmm.autotvout_vc1hit.dat"
`define AUTOTB_TVOUT_vc2acc  "../tv/cdatafile/c.spmm.autotvout_vc2acc.dat"
`define AUTOTB_TVOUT_vc2hit  "../tv/cdatafile/c.spmm.autotvout_vc2hit.dat"
`define AUTOTB_TVOUT_vc3acc  "../tv/cdatafile/c.spmm.autotvout_vc3acc.dat"
`define AUTOTB_TVOUT_vc3hit  "../tv/cdatafile/c.spmm.autotvout_vc3hit.dat"
`define AUTOTB_TVOUT_vc4acc  "../tv/cdatafile/c.spmm.autotvout_vc4acc.dat"
`define AUTOTB_TVOUT_vc4hit  "../tv/cdatafile/c.spmm.autotvout_vc4hit.dat"
`define AUTOTB_TVOUT_fnum  "../tv/cdatafile/c.spmm.autotvout_fnum.dat"
`define AUTOTB_TVOUT_workload_counter1  "../tv/cdatafile/c.spmm.autotvout_workload_counter1.dat"
`define AUTOTB_TVOUT_workload_counter2  "../tv/cdatafile/c.spmm.autotvout_workload_counter2.dat"
`define AUTOTB_TVOUT_workload_counter3  "../tv/cdatafile/c.spmm.autotvout_workload_counter3.dat"
`define AUTOTB_TVOUT_workload_counter4  "../tv/cdatafile/c.spmm.autotvout_workload_counter4.dat"
`define AUTOTB_TVOUT_cval_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_cval.dat"
`define AUTOTB_TVOUT_r1acc_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_r1acc.dat"
`define AUTOTB_TVOUT_r1hit_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_r1hit.dat"
`define AUTOTB_TVOUT_r2acc_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_r2acc.dat"
`define AUTOTB_TVOUT_r2hit_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_r2hit.dat"
`define AUTOTB_TVOUT_r3acc_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_r3acc.dat"
`define AUTOTB_TVOUT_r3hit_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_r3hit.dat"
`define AUTOTB_TVOUT_r4acc_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_r4acc.dat"
`define AUTOTB_TVOUT_r4hit_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_r4hit.dat"
`define AUTOTB_TVOUT_vc1acc_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_vc1acc.dat"
`define AUTOTB_TVOUT_vc1hit_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_vc1hit.dat"
`define AUTOTB_TVOUT_vc2acc_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_vc2acc.dat"
`define AUTOTB_TVOUT_vc2hit_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_vc2hit.dat"
`define AUTOTB_TVOUT_vc3acc_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_vc3acc.dat"
`define AUTOTB_TVOUT_vc3hit_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_vc3hit.dat"
`define AUTOTB_TVOUT_vc4acc_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_vc4acc.dat"
`define AUTOTB_TVOUT_vc4hit_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_vc4hit.dat"
`define AUTOTB_TVOUT_fnum_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_fnum.dat"
`define AUTOTB_TVOUT_workload_counter1_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter1.dat"
`define AUTOTB_TVOUT_workload_counter2_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter2.dat"
`define AUTOTB_TVOUT_workload_counter3_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter3.dat"
`define AUTOTB_TVOUT_workload_counter4_out_wrapc  "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter4.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_A_cid = 1;
parameter LENGTH_A_rcsr = 1;
parameter LENGTH_A_val = 1;
parameter LENGTH_B_cid1 = 1;
parameter LENGTH_B_cid2 = 1;
parameter LENGTH_B_cid3 = 1;
parameter LENGTH_B_cid4 = 1;
parameter LENGTH_B_cid_base = 1;
parameter LENGTH_B_cid_port1 = 1;
parameter LENGTH_B_cid_port2 = 1;
parameter LENGTH_B_cid_port3 = 1;
parameter LENGTH_B_cid_port4 = 1;
parameter LENGTH_B_rcsr1 = 1;
parameter LENGTH_B_rcsr2 = 1;
parameter LENGTH_B_rcsr3 = 1;
parameter LENGTH_B_rcsr4 = 1;
parameter LENGTH_B_rcsr_base = 1;
parameter LENGTH_B_val1 = 1;
parameter LENGTH_B_val2 = 1;
parameter LENGTH_B_val3 = 1;
parameter LENGTH_B_val4 = 1;
parameter LENGTH_B_val_base = 1;
parameter LENGTH_B_val_port1 = 1;
parameter LENGTH_B_val_port2 = 1;
parameter LENGTH_B_val_port3 = 1;
parameter LENGTH_B_val_port4 = 1;
parameter LENGTH_C_cid = 1;
parameter LENGTH_C_rcsr = 1;
parameter LENGTH_C_val = 1;
parameter LENGTH_acid = 2831;
parameter LENGTH_arcsr = 2050;
parameter LENGTH_arnum = 1;
parameter LENGTH_atnum = 1;
parameter LENGTH_aval = 2831;
parameter LENGTH_bc1 = 896;
parameter LENGTH_bc2 = 896;
parameter LENGTH_bc3 = 896;
parameter LENGTH_bc4 = 896;
parameter LENGTH_bcid1 = 896;
parameter LENGTH_bcid2 = 896;
parameter LENGTH_bcid3 = 896;
parameter LENGTH_bcid4 = 896;
parameter LENGTH_brcsr1 = 513;
parameter LENGTH_brcsr2 = 513;
parameter LENGTH_brcsr3 = 513;
parameter LENGTH_brcsr4 = 513;
parameter LENGTH_brnum = 1;
parameter LENGTH_btnum = 1;
parameter LENGTH_bv1 = 896;
parameter LENGTH_bv2 = 896;
parameter LENGTH_bv3 = 896;
parameter LENGTH_bv4 = 896;
parameter LENGTH_bval1 = 896;
parameter LENGTH_bval2 = 896;
parameter LENGTH_bval3 = 896;
parameter LENGTH_bval4 = 896;
parameter LENGTH_ccid = 3627;
parameter LENGTH_crcsr = 2050;
parameter LENGTH_cval = 3627;
parameter LENGTH_fnum = 1;
parameter LENGTH_r1acc = 1;
parameter LENGTH_r1hit = 1;
parameter LENGTH_r2acc = 1;
parameter LENGTH_r2hit = 1;
parameter LENGTH_r3acc = 1;
parameter LENGTH_r3hit = 1;
parameter LENGTH_r4acc = 1;
parameter LENGTH_r4hit = 1;
parameter LENGTH_r5acc = 1;
parameter LENGTH_r5hit = 1;
parameter LENGTH_r6acc = 1;
parameter LENGTH_r6hit = 1;
parameter LENGTH_r7acc = 1;
parameter LENGTH_r7hit = 1;
parameter LENGTH_r8acc = 1;
parameter LENGTH_r8hit = 1;
parameter LENGTH_vc1acc = 1;
parameter LENGTH_vc1hit = 1;
parameter LENGTH_vc2acc = 1;
parameter LENGTH_vc2hit = 1;
parameter LENGTH_vc3acc = 1;
parameter LENGTH_vc3hit = 1;
parameter LENGTH_vc4acc = 1;
parameter LENGTH_vc4hit = 1;
parameter LENGTH_vc5acc = 1;
parameter LENGTH_vc5hit = 1;
parameter LENGTH_vc6acc = 1;
parameter LENGTH_vc6hit = 1;
parameter LENGTH_vc7acc = 1;
parameter LENGTH_vc7hit = 1;
parameter LENGTH_vc8acc = 1;
parameter LENGTH_vc8hit = 1;
parameter LENGTH_workload_counter1 = 1;
parameter LENGTH_workload_counter2 = 1;
parameter LENGTH_workload_counter3 = 1;
parameter LENGTH_workload_counter4 = 1;

task read_token;
    input integer fp;
    output reg [279 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire [8 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [8 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire [9 : 0] ctr_AWADDR;
wire  ctr_AWVALID;
wire  ctr_AWREADY;
wire  ctr_WVALID;
wire  ctr_WREADY;
wire [31 : 0] ctr_WDATA;
wire [3 : 0] ctr_WSTRB;
wire [9 : 0] ctr_ARADDR;
wire  ctr_ARVALID;
wire  ctr_ARREADY;
wire  ctr_RVALID;
wire  ctr_RREADY;
wire [31 : 0] ctr_RDATA;
wire [1 : 0] ctr_RRESP;
wire  ctr_BVALID;
wire  ctr_BREADY;
wire [1 : 0] ctr_BRESP;
wire  ctr_INTERRUPT;
wire  acid_AWVALID;
wire  acid_AWREADY;
wire [63 : 0] acid_AWADDR;
wire [0 : 0] acid_AWID;
wire [7 : 0] acid_AWLEN;
wire [2 : 0] acid_AWSIZE;
wire [1 : 0] acid_AWBURST;
wire [1 : 0] acid_AWLOCK;
wire [3 : 0] acid_AWCACHE;
wire [2 : 0] acid_AWPROT;
wire [3 : 0] acid_AWQOS;
wire [3 : 0] acid_AWREGION;
wire [0 : 0] acid_AWUSER;
wire  acid_WVALID;
wire  acid_WREADY;
wire [31 : 0] acid_WDATA;
wire [3 : 0] acid_WSTRB;
wire  acid_WLAST;
wire [0 : 0] acid_WID;
wire [0 : 0] acid_WUSER;
wire  acid_ARVALID;
wire  acid_ARREADY;
wire [63 : 0] acid_ARADDR;
wire [0 : 0] acid_ARID;
wire [7 : 0] acid_ARLEN;
wire [2 : 0] acid_ARSIZE;
wire [1 : 0] acid_ARBURST;
wire [1 : 0] acid_ARLOCK;
wire [3 : 0] acid_ARCACHE;
wire [2 : 0] acid_ARPROT;
wire [3 : 0] acid_ARQOS;
wire [3 : 0] acid_ARREGION;
wire [0 : 0] acid_ARUSER;
wire  acid_RVALID;
wire  acid_RREADY;
wire [31 : 0] acid_RDATA;
wire  acid_RLAST;
wire [0 : 0] acid_RID;
wire [0 : 0] acid_RUSER;
wire [1 : 0] acid_RRESP;
wire  acid_BVALID;
wire  acid_BREADY;
wire [1 : 0] acid_BRESP;
wire [0 : 0] acid_BID;
wire [0 : 0] acid_BUSER;
wire  arcsr_AWVALID;
wire  arcsr_AWREADY;
wire [63 : 0] arcsr_AWADDR;
wire [0 : 0] arcsr_AWID;
wire [7 : 0] arcsr_AWLEN;
wire [2 : 0] arcsr_AWSIZE;
wire [1 : 0] arcsr_AWBURST;
wire [1 : 0] arcsr_AWLOCK;
wire [3 : 0] arcsr_AWCACHE;
wire [2 : 0] arcsr_AWPROT;
wire [3 : 0] arcsr_AWQOS;
wire [3 : 0] arcsr_AWREGION;
wire [0 : 0] arcsr_AWUSER;
wire  arcsr_WVALID;
wire  arcsr_WREADY;
wire [31 : 0] arcsr_WDATA;
wire [3 : 0] arcsr_WSTRB;
wire  arcsr_WLAST;
wire [0 : 0] arcsr_WID;
wire [0 : 0] arcsr_WUSER;
wire  arcsr_ARVALID;
wire  arcsr_ARREADY;
wire [63 : 0] arcsr_ARADDR;
wire [0 : 0] arcsr_ARID;
wire [7 : 0] arcsr_ARLEN;
wire [2 : 0] arcsr_ARSIZE;
wire [1 : 0] arcsr_ARBURST;
wire [1 : 0] arcsr_ARLOCK;
wire [3 : 0] arcsr_ARCACHE;
wire [2 : 0] arcsr_ARPROT;
wire [3 : 0] arcsr_ARQOS;
wire [3 : 0] arcsr_ARREGION;
wire [0 : 0] arcsr_ARUSER;
wire  arcsr_RVALID;
wire  arcsr_RREADY;
wire [31 : 0] arcsr_RDATA;
wire  arcsr_RLAST;
wire [0 : 0] arcsr_RID;
wire [0 : 0] arcsr_RUSER;
wire [1 : 0] arcsr_RRESP;
wire  arcsr_BVALID;
wire  arcsr_BREADY;
wire [1 : 0] arcsr_BRESP;
wire [0 : 0] arcsr_BID;
wire [0 : 0] arcsr_BUSER;
wire  aval_AWVALID;
wire  aval_AWREADY;
wire [63 : 0] aval_AWADDR;
wire [0 : 0] aval_AWID;
wire [7 : 0] aval_AWLEN;
wire [2 : 0] aval_AWSIZE;
wire [1 : 0] aval_AWBURST;
wire [1 : 0] aval_AWLOCK;
wire [3 : 0] aval_AWCACHE;
wire [2 : 0] aval_AWPROT;
wire [3 : 0] aval_AWQOS;
wire [3 : 0] aval_AWREGION;
wire [0 : 0] aval_AWUSER;
wire  aval_WVALID;
wire  aval_WREADY;
wire [31 : 0] aval_WDATA;
wire [3 : 0] aval_WSTRB;
wire  aval_WLAST;
wire [0 : 0] aval_WID;
wire [0 : 0] aval_WUSER;
wire  aval_ARVALID;
wire  aval_ARREADY;
wire [63 : 0] aval_ARADDR;
wire [0 : 0] aval_ARID;
wire [7 : 0] aval_ARLEN;
wire [2 : 0] aval_ARSIZE;
wire [1 : 0] aval_ARBURST;
wire [1 : 0] aval_ARLOCK;
wire [3 : 0] aval_ARCACHE;
wire [2 : 0] aval_ARPROT;
wire [3 : 0] aval_ARQOS;
wire [3 : 0] aval_ARREGION;
wire [0 : 0] aval_ARUSER;
wire  aval_RVALID;
wire  aval_RREADY;
wire [31 : 0] aval_RDATA;
wire  aval_RLAST;
wire [0 : 0] aval_RID;
wire [0 : 0] aval_RUSER;
wire [1 : 0] aval_RRESP;
wire  aval_BVALID;
wire  aval_BREADY;
wire [1 : 0] aval_BRESP;
wire [0 : 0] aval_BID;
wire [0 : 0] aval_BUSER;
wire  bc1_AWVALID;
wire  bc1_AWREADY;
wire [63 : 0] bc1_AWADDR;
wire [0 : 0] bc1_AWID;
wire [7 : 0] bc1_AWLEN;
wire [2 : 0] bc1_AWSIZE;
wire [1 : 0] bc1_AWBURST;
wire [1 : 0] bc1_AWLOCK;
wire [3 : 0] bc1_AWCACHE;
wire [2 : 0] bc1_AWPROT;
wire [3 : 0] bc1_AWQOS;
wire [3 : 0] bc1_AWREGION;
wire [0 : 0] bc1_AWUSER;
wire  bc1_WVALID;
wire  bc1_WREADY;
wire [127 : 0] bc1_WDATA;
wire [15 : 0] bc1_WSTRB;
wire  bc1_WLAST;
wire [0 : 0] bc1_WID;
wire [0 : 0] bc1_WUSER;
wire  bc1_ARVALID;
wire  bc1_ARREADY;
wire [63 : 0] bc1_ARADDR;
wire [0 : 0] bc1_ARID;
wire [7 : 0] bc1_ARLEN;
wire [2 : 0] bc1_ARSIZE;
wire [1 : 0] bc1_ARBURST;
wire [1 : 0] bc1_ARLOCK;
wire [3 : 0] bc1_ARCACHE;
wire [2 : 0] bc1_ARPROT;
wire [3 : 0] bc1_ARQOS;
wire [3 : 0] bc1_ARREGION;
wire [0 : 0] bc1_ARUSER;
wire  bc1_RVALID;
wire  bc1_RREADY;
wire [127 : 0] bc1_RDATA;
wire  bc1_RLAST;
wire [0 : 0] bc1_RID;
wire [0 : 0] bc1_RUSER;
wire [1 : 0] bc1_RRESP;
wire  bc1_BVALID;
wire  bc1_BREADY;
wire [1 : 0] bc1_BRESP;
wire [0 : 0] bc1_BID;
wire [0 : 0] bc1_BUSER;
wire  bc2_AWVALID;
wire  bc2_AWREADY;
wire [63 : 0] bc2_AWADDR;
wire [0 : 0] bc2_AWID;
wire [7 : 0] bc2_AWLEN;
wire [2 : 0] bc2_AWSIZE;
wire [1 : 0] bc2_AWBURST;
wire [1 : 0] bc2_AWLOCK;
wire [3 : 0] bc2_AWCACHE;
wire [2 : 0] bc2_AWPROT;
wire [3 : 0] bc2_AWQOS;
wire [3 : 0] bc2_AWREGION;
wire [0 : 0] bc2_AWUSER;
wire  bc2_WVALID;
wire  bc2_WREADY;
wire [127 : 0] bc2_WDATA;
wire [15 : 0] bc2_WSTRB;
wire  bc2_WLAST;
wire [0 : 0] bc2_WID;
wire [0 : 0] bc2_WUSER;
wire  bc2_ARVALID;
wire  bc2_ARREADY;
wire [63 : 0] bc2_ARADDR;
wire [0 : 0] bc2_ARID;
wire [7 : 0] bc2_ARLEN;
wire [2 : 0] bc2_ARSIZE;
wire [1 : 0] bc2_ARBURST;
wire [1 : 0] bc2_ARLOCK;
wire [3 : 0] bc2_ARCACHE;
wire [2 : 0] bc2_ARPROT;
wire [3 : 0] bc2_ARQOS;
wire [3 : 0] bc2_ARREGION;
wire [0 : 0] bc2_ARUSER;
wire  bc2_RVALID;
wire  bc2_RREADY;
wire [127 : 0] bc2_RDATA;
wire  bc2_RLAST;
wire [0 : 0] bc2_RID;
wire [0 : 0] bc2_RUSER;
wire [1 : 0] bc2_RRESP;
wire  bc2_BVALID;
wire  bc2_BREADY;
wire [1 : 0] bc2_BRESP;
wire [0 : 0] bc2_BID;
wire [0 : 0] bc2_BUSER;
wire  bc3_AWVALID;
wire  bc3_AWREADY;
wire [63 : 0] bc3_AWADDR;
wire [0 : 0] bc3_AWID;
wire [7 : 0] bc3_AWLEN;
wire [2 : 0] bc3_AWSIZE;
wire [1 : 0] bc3_AWBURST;
wire [1 : 0] bc3_AWLOCK;
wire [3 : 0] bc3_AWCACHE;
wire [2 : 0] bc3_AWPROT;
wire [3 : 0] bc3_AWQOS;
wire [3 : 0] bc3_AWREGION;
wire [0 : 0] bc3_AWUSER;
wire  bc3_WVALID;
wire  bc3_WREADY;
wire [127 : 0] bc3_WDATA;
wire [15 : 0] bc3_WSTRB;
wire  bc3_WLAST;
wire [0 : 0] bc3_WID;
wire [0 : 0] bc3_WUSER;
wire  bc3_ARVALID;
wire  bc3_ARREADY;
wire [63 : 0] bc3_ARADDR;
wire [0 : 0] bc3_ARID;
wire [7 : 0] bc3_ARLEN;
wire [2 : 0] bc3_ARSIZE;
wire [1 : 0] bc3_ARBURST;
wire [1 : 0] bc3_ARLOCK;
wire [3 : 0] bc3_ARCACHE;
wire [2 : 0] bc3_ARPROT;
wire [3 : 0] bc3_ARQOS;
wire [3 : 0] bc3_ARREGION;
wire [0 : 0] bc3_ARUSER;
wire  bc3_RVALID;
wire  bc3_RREADY;
wire [127 : 0] bc3_RDATA;
wire  bc3_RLAST;
wire [0 : 0] bc3_RID;
wire [0 : 0] bc3_RUSER;
wire [1 : 0] bc3_RRESP;
wire  bc3_BVALID;
wire  bc3_BREADY;
wire [1 : 0] bc3_BRESP;
wire [0 : 0] bc3_BID;
wire [0 : 0] bc3_BUSER;
wire  bc4_AWVALID;
wire  bc4_AWREADY;
wire [63 : 0] bc4_AWADDR;
wire [0 : 0] bc4_AWID;
wire [7 : 0] bc4_AWLEN;
wire [2 : 0] bc4_AWSIZE;
wire [1 : 0] bc4_AWBURST;
wire [1 : 0] bc4_AWLOCK;
wire [3 : 0] bc4_AWCACHE;
wire [2 : 0] bc4_AWPROT;
wire [3 : 0] bc4_AWQOS;
wire [3 : 0] bc4_AWREGION;
wire [0 : 0] bc4_AWUSER;
wire  bc4_WVALID;
wire  bc4_WREADY;
wire [127 : 0] bc4_WDATA;
wire [15 : 0] bc4_WSTRB;
wire  bc4_WLAST;
wire [0 : 0] bc4_WID;
wire [0 : 0] bc4_WUSER;
wire  bc4_ARVALID;
wire  bc4_ARREADY;
wire [63 : 0] bc4_ARADDR;
wire [0 : 0] bc4_ARID;
wire [7 : 0] bc4_ARLEN;
wire [2 : 0] bc4_ARSIZE;
wire [1 : 0] bc4_ARBURST;
wire [1 : 0] bc4_ARLOCK;
wire [3 : 0] bc4_ARCACHE;
wire [2 : 0] bc4_ARPROT;
wire [3 : 0] bc4_ARQOS;
wire [3 : 0] bc4_ARREGION;
wire [0 : 0] bc4_ARUSER;
wire  bc4_RVALID;
wire  bc4_RREADY;
wire [127 : 0] bc4_RDATA;
wire  bc4_RLAST;
wire [0 : 0] bc4_RID;
wire [0 : 0] bc4_RUSER;
wire [1 : 0] bc4_RRESP;
wire  bc4_BVALID;
wire  bc4_BREADY;
wire [1 : 0] bc4_BRESP;
wire [0 : 0] bc4_BID;
wire [0 : 0] bc4_BUSER;
wire  bcid1_AWVALID;
wire  bcid1_AWREADY;
wire [63 : 0] bcid1_AWADDR;
wire [0 : 0] bcid1_AWID;
wire [7 : 0] bcid1_AWLEN;
wire [2 : 0] bcid1_AWSIZE;
wire [1 : 0] bcid1_AWBURST;
wire [1 : 0] bcid1_AWLOCK;
wire [3 : 0] bcid1_AWCACHE;
wire [2 : 0] bcid1_AWPROT;
wire [3 : 0] bcid1_AWQOS;
wire [3 : 0] bcid1_AWREGION;
wire [0 : 0] bcid1_AWUSER;
wire  bcid1_WVALID;
wire  bcid1_WREADY;
wire [127 : 0] bcid1_WDATA;
wire [15 : 0] bcid1_WSTRB;
wire  bcid1_WLAST;
wire [0 : 0] bcid1_WID;
wire [0 : 0] bcid1_WUSER;
wire  bcid1_ARVALID;
wire  bcid1_ARREADY;
wire [63 : 0] bcid1_ARADDR;
wire [0 : 0] bcid1_ARID;
wire [7 : 0] bcid1_ARLEN;
wire [2 : 0] bcid1_ARSIZE;
wire [1 : 0] bcid1_ARBURST;
wire [1 : 0] bcid1_ARLOCK;
wire [3 : 0] bcid1_ARCACHE;
wire [2 : 0] bcid1_ARPROT;
wire [3 : 0] bcid1_ARQOS;
wire [3 : 0] bcid1_ARREGION;
wire [0 : 0] bcid1_ARUSER;
wire  bcid1_RVALID;
wire  bcid1_RREADY;
wire [127 : 0] bcid1_RDATA;
wire  bcid1_RLAST;
wire [0 : 0] bcid1_RID;
wire [0 : 0] bcid1_RUSER;
wire [1 : 0] bcid1_RRESP;
wire  bcid1_BVALID;
wire  bcid1_BREADY;
wire [1 : 0] bcid1_BRESP;
wire [0 : 0] bcid1_BID;
wire [0 : 0] bcid1_BUSER;
wire  bcid2_AWVALID;
wire  bcid2_AWREADY;
wire [63 : 0] bcid2_AWADDR;
wire [0 : 0] bcid2_AWID;
wire [7 : 0] bcid2_AWLEN;
wire [2 : 0] bcid2_AWSIZE;
wire [1 : 0] bcid2_AWBURST;
wire [1 : 0] bcid2_AWLOCK;
wire [3 : 0] bcid2_AWCACHE;
wire [2 : 0] bcid2_AWPROT;
wire [3 : 0] bcid2_AWQOS;
wire [3 : 0] bcid2_AWREGION;
wire [0 : 0] bcid2_AWUSER;
wire  bcid2_WVALID;
wire  bcid2_WREADY;
wire [127 : 0] bcid2_WDATA;
wire [15 : 0] bcid2_WSTRB;
wire  bcid2_WLAST;
wire [0 : 0] bcid2_WID;
wire [0 : 0] bcid2_WUSER;
wire  bcid2_ARVALID;
wire  bcid2_ARREADY;
wire [63 : 0] bcid2_ARADDR;
wire [0 : 0] bcid2_ARID;
wire [7 : 0] bcid2_ARLEN;
wire [2 : 0] bcid2_ARSIZE;
wire [1 : 0] bcid2_ARBURST;
wire [1 : 0] bcid2_ARLOCK;
wire [3 : 0] bcid2_ARCACHE;
wire [2 : 0] bcid2_ARPROT;
wire [3 : 0] bcid2_ARQOS;
wire [3 : 0] bcid2_ARREGION;
wire [0 : 0] bcid2_ARUSER;
wire  bcid2_RVALID;
wire  bcid2_RREADY;
wire [127 : 0] bcid2_RDATA;
wire  bcid2_RLAST;
wire [0 : 0] bcid2_RID;
wire [0 : 0] bcid2_RUSER;
wire [1 : 0] bcid2_RRESP;
wire  bcid2_BVALID;
wire  bcid2_BREADY;
wire [1 : 0] bcid2_BRESP;
wire [0 : 0] bcid2_BID;
wire [0 : 0] bcid2_BUSER;
wire  bcid3_AWVALID;
wire  bcid3_AWREADY;
wire [63 : 0] bcid3_AWADDR;
wire [0 : 0] bcid3_AWID;
wire [7 : 0] bcid3_AWLEN;
wire [2 : 0] bcid3_AWSIZE;
wire [1 : 0] bcid3_AWBURST;
wire [1 : 0] bcid3_AWLOCK;
wire [3 : 0] bcid3_AWCACHE;
wire [2 : 0] bcid3_AWPROT;
wire [3 : 0] bcid3_AWQOS;
wire [3 : 0] bcid3_AWREGION;
wire [0 : 0] bcid3_AWUSER;
wire  bcid3_WVALID;
wire  bcid3_WREADY;
wire [127 : 0] bcid3_WDATA;
wire [15 : 0] bcid3_WSTRB;
wire  bcid3_WLAST;
wire [0 : 0] bcid3_WID;
wire [0 : 0] bcid3_WUSER;
wire  bcid3_ARVALID;
wire  bcid3_ARREADY;
wire [63 : 0] bcid3_ARADDR;
wire [0 : 0] bcid3_ARID;
wire [7 : 0] bcid3_ARLEN;
wire [2 : 0] bcid3_ARSIZE;
wire [1 : 0] bcid3_ARBURST;
wire [1 : 0] bcid3_ARLOCK;
wire [3 : 0] bcid3_ARCACHE;
wire [2 : 0] bcid3_ARPROT;
wire [3 : 0] bcid3_ARQOS;
wire [3 : 0] bcid3_ARREGION;
wire [0 : 0] bcid3_ARUSER;
wire  bcid3_RVALID;
wire  bcid3_RREADY;
wire [127 : 0] bcid3_RDATA;
wire  bcid3_RLAST;
wire [0 : 0] bcid3_RID;
wire [0 : 0] bcid3_RUSER;
wire [1 : 0] bcid3_RRESP;
wire  bcid3_BVALID;
wire  bcid3_BREADY;
wire [1 : 0] bcid3_BRESP;
wire [0 : 0] bcid3_BID;
wire [0 : 0] bcid3_BUSER;
wire  bcid4_AWVALID;
wire  bcid4_AWREADY;
wire [63 : 0] bcid4_AWADDR;
wire [0 : 0] bcid4_AWID;
wire [7 : 0] bcid4_AWLEN;
wire [2 : 0] bcid4_AWSIZE;
wire [1 : 0] bcid4_AWBURST;
wire [1 : 0] bcid4_AWLOCK;
wire [3 : 0] bcid4_AWCACHE;
wire [2 : 0] bcid4_AWPROT;
wire [3 : 0] bcid4_AWQOS;
wire [3 : 0] bcid4_AWREGION;
wire [0 : 0] bcid4_AWUSER;
wire  bcid4_WVALID;
wire  bcid4_WREADY;
wire [127 : 0] bcid4_WDATA;
wire [15 : 0] bcid4_WSTRB;
wire  bcid4_WLAST;
wire [0 : 0] bcid4_WID;
wire [0 : 0] bcid4_WUSER;
wire  bcid4_ARVALID;
wire  bcid4_ARREADY;
wire [63 : 0] bcid4_ARADDR;
wire [0 : 0] bcid4_ARID;
wire [7 : 0] bcid4_ARLEN;
wire [2 : 0] bcid4_ARSIZE;
wire [1 : 0] bcid4_ARBURST;
wire [1 : 0] bcid4_ARLOCK;
wire [3 : 0] bcid4_ARCACHE;
wire [2 : 0] bcid4_ARPROT;
wire [3 : 0] bcid4_ARQOS;
wire [3 : 0] bcid4_ARREGION;
wire [0 : 0] bcid4_ARUSER;
wire  bcid4_RVALID;
wire  bcid4_RREADY;
wire [127 : 0] bcid4_RDATA;
wire  bcid4_RLAST;
wire [0 : 0] bcid4_RID;
wire [0 : 0] bcid4_RUSER;
wire [1 : 0] bcid4_RRESP;
wire  bcid4_BVALID;
wire  bcid4_BREADY;
wire [1 : 0] bcid4_BRESP;
wire [0 : 0] bcid4_BID;
wire [0 : 0] bcid4_BUSER;
wire  brcsr1_AWVALID;
wire  brcsr1_AWREADY;
wire [63 : 0] brcsr1_AWADDR;
wire [0 : 0] brcsr1_AWID;
wire [7 : 0] brcsr1_AWLEN;
wire [2 : 0] brcsr1_AWSIZE;
wire [1 : 0] brcsr1_AWBURST;
wire [1 : 0] brcsr1_AWLOCK;
wire [3 : 0] brcsr1_AWCACHE;
wire [2 : 0] brcsr1_AWPROT;
wire [3 : 0] brcsr1_AWQOS;
wire [3 : 0] brcsr1_AWREGION;
wire [0 : 0] brcsr1_AWUSER;
wire  brcsr1_WVALID;
wire  brcsr1_WREADY;
wire [127 : 0] brcsr1_WDATA;
wire [15 : 0] brcsr1_WSTRB;
wire  brcsr1_WLAST;
wire [0 : 0] brcsr1_WID;
wire [0 : 0] brcsr1_WUSER;
wire  brcsr1_ARVALID;
wire  brcsr1_ARREADY;
wire [63 : 0] brcsr1_ARADDR;
wire [0 : 0] brcsr1_ARID;
wire [7 : 0] brcsr1_ARLEN;
wire [2 : 0] brcsr1_ARSIZE;
wire [1 : 0] brcsr1_ARBURST;
wire [1 : 0] brcsr1_ARLOCK;
wire [3 : 0] brcsr1_ARCACHE;
wire [2 : 0] brcsr1_ARPROT;
wire [3 : 0] brcsr1_ARQOS;
wire [3 : 0] brcsr1_ARREGION;
wire [0 : 0] brcsr1_ARUSER;
wire  brcsr1_RVALID;
wire  brcsr1_RREADY;
wire [127 : 0] brcsr1_RDATA;
wire  brcsr1_RLAST;
wire [0 : 0] brcsr1_RID;
wire [0 : 0] brcsr1_RUSER;
wire [1 : 0] brcsr1_RRESP;
wire  brcsr1_BVALID;
wire  brcsr1_BREADY;
wire [1 : 0] brcsr1_BRESP;
wire [0 : 0] brcsr1_BID;
wire [0 : 0] brcsr1_BUSER;
wire  brcsr2_AWVALID;
wire  brcsr2_AWREADY;
wire [63 : 0] brcsr2_AWADDR;
wire [0 : 0] brcsr2_AWID;
wire [7 : 0] brcsr2_AWLEN;
wire [2 : 0] brcsr2_AWSIZE;
wire [1 : 0] brcsr2_AWBURST;
wire [1 : 0] brcsr2_AWLOCK;
wire [3 : 0] brcsr2_AWCACHE;
wire [2 : 0] brcsr2_AWPROT;
wire [3 : 0] brcsr2_AWQOS;
wire [3 : 0] brcsr2_AWREGION;
wire [0 : 0] brcsr2_AWUSER;
wire  brcsr2_WVALID;
wire  brcsr2_WREADY;
wire [127 : 0] brcsr2_WDATA;
wire [15 : 0] brcsr2_WSTRB;
wire  brcsr2_WLAST;
wire [0 : 0] brcsr2_WID;
wire [0 : 0] brcsr2_WUSER;
wire  brcsr2_ARVALID;
wire  brcsr2_ARREADY;
wire [63 : 0] brcsr2_ARADDR;
wire [0 : 0] brcsr2_ARID;
wire [7 : 0] brcsr2_ARLEN;
wire [2 : 0] brcsr2_ARSIZE;
wire [1 : 0] brcsr2_ARBURST;
wire [1 : 0] brcsr2_ARLOCK;
wire [3 : 0] brcsr2_ARCACHE;
wire [2 : 0] brcsr2_ARPROT;
wire [3 : 0] brcsr2_ARQOS;
wire [3 : 0] brcsr2_ARREGION;
wire [0 : 0] brcsr2_ARUSER;
wire  brcsr2_RVALID;
wire  brcsr2_RREADY;
wire [127 : 0] brcsr2_RDATA;
wire  brcsr2_RLAST;
wire [0 : 0] brcsr2_RID;
wire [0 : 0] brcsr2_RUSER;
wire [1 : 0] brcsr2_RRESP;
wire  brcsr2_BVALID;
wire  brcsr2_BREADY;
wire [1 : 0] brcsr2_BRESP;
wire [0 : 0] brcsr2_BID;
wire [0 : 0] brcsr2_BUSER;
wire  brcsr3_AWVALID;
wire  brcsr3_AWREADY;
wire [63 : 0] brcsr3_AWADDR;
wire [0 : 0] brcsr3_AWID;
wire [7 : 0] brcsr3_AWLEN;
wire [2 : 0] brcsr3_AWSIZE;
wire [1 : 0] brcsr3_AWBURST;
wire [1 : 0] brcsr3_AWLOCK;
wire [3 : 0] brcsr3_AWCACHE;
wire [2 : 0] brcsr3_AWPROT;
wire [3 : 0] brcsr3_AWQOS;
wire [3 : 0] brcsr3_AWREGION;
wire [0 : 0] brcsr3_AWUSER;
wire  brcsr3_WVALID;
wire  brcsr3_WREADY;
wire [127 : 0] brcsr3_WDATA;
wire [15 : 0] brcsr3_WSTRB;
wire  brcsr3_WLAST;
wire [0 : 0] brcsr3_WID;
wire [0 : 0] brcsr3_WUSER;
wire  brcsr3_ARVALID;
wire  brcsr3_ARREADY;
wire [63 : 0] brcsr3_ARADDR;
wire [0 : 0] brcsr3_ARID;
wire [7 : 0] brcsr3_ARLEN;
wire [2 : 0] brcsr3_ARSIZE;
wire [1 : 0] brcsr3_ARBURST;
wire [1 : 0] brcsr3_ARLOCK;
wire [3 : 0] brcsr3_ARCACHE;
wire [2 : 0] brcsr3_ARPROT;
wire [3 : 0] brcsr3_ARQOS;
wire [3 : 0] brcsr3_ARREGION;
wire [0 : 0] brcsr3_ARUSER;
wire  brcsr3_RVALID;
wire  brcsr3_RREADY;
wire [127 : 0] brcsr3_RDATA;
wire  brcsr3_RLAST;
wire [0 : 0] brcsr3_RID;
wire [0 : 0] brcsr3_RUSER;
wire [1 : 0] brcsr3_RRESP;
wire  brcsr3_BVALID;
wire  brcsr3_BREADY;
wire [1 : 0] brcsr3_BRESP;
wire [0 : 0] brcsr3_BID;
wire [0 : 0] brcsr3_BUSER;
wire  brcsr4_AWVALID;
wire  brcsr4_AWREADY;
wire [63 : 0] brcsr4_AWADDR;
wire [0 : 0] brcsr4_AWID;
wire [7 : 0] brcsr4_AWLEN;
wire [2 : 0] brcsr4_AWSIZE;
wire [1 : 0] brcsr4_AWBURST;
wire [1 : 0] brcsr4_AWLOCK;
wire [3 : 0] brcsr4_AWCACHE;
wire [2 : 0] brcsr4_AWPROT;
wire [3 : 0] brcsr4_AWQOS;
wire [3 : 0] brcsr4_AWREGION;
wire [0 : 0] brcsr4_AWUSER;
wire  brcsr4_WVALID;
wire  brcsr4_WREADY;
wire [127 : 0] brcsr4_WDATA;
wire [15 : 0] brcsr4_WSTRB;
wire  brcsr4_WLAST;
wire [0 : 0] brcsr4_WID;
wire [0 : 0] brcsr4_WUSER;
wire  brcsr4_ARVALID;
wire  brcsr4_ARREADY;
wire [63 : 0] brcsr4_ARADDR;
wire [0 : 0] brcsr4_ARID;
wire [7 : 0] brcsr4_ARLEN;
wire [2 : 0] brcsr4_ARSIZE;
wire [1 : 0] brcsr4_ARBURST;
wire [1 : 0] brcsr4_ARLOCK;
wire [3 : 0] brcsr4_ARCACHE;
wire [2 : 0] brcsr4_ARPROT;
wire [3 : 0] brcsr4_ARQOS;
wire [3 : 0] brcsr4_ARREGION;
wire [0 : 0] brcsr4_ARUSER;
wire  brcsr4_RVALID;
wire  brcsr4_RREADY;
wire [127 : 0] brcsr4_RDATA;
wire  brcsr4_RLAST;
wire [0 : 0] brcsr4_RID;
wire [0 : 0] brcsr4_RUSER;
wire [1 : 0] brcsr4_RRESP;
wire  brcsr4_BVALID;
wire  brcsr4_BREADY;
wire [1 : 0] brcsr4_BRESP;
wire [0 : 0] brcsr4_BID;
wire [0 : 0] brcsr4_BUSER;
wire  bv1_AWVALID;
wire  bv1_AWREADY;
wire [63 : 0] bv1_AWADDR;
wire [0 : 0] bv1_AWID;
wire [7 : 0] bv1_AWLEN;
wire [2 : 0] bv1_AWSIZE;
wire [1 : 0] bv1_AWBURST;
wire [1 : 0] bv1_AWLOCK;
wire [3 : 0] bv1_AWCACHE;
wire [2 : 0] bv1_AWPROT;
wire [3 : 0] bv1_AWQOS;
wire [3 : 0] bv1_AWREGION;
wire [0 : 0] bv1_AWUSER;
wire  bv1_WVALID;
wire  bv1_WREADY;
wire [127 : 0] bv1_WDATA;
wire [15 : 0] bv1_WSTRB;
wire  bv1_WLAST;
wire [0 : 0] bv1_WID;
wire [0 : 0] bv1_WUSER;
wire  bv1_ARVALID;
wire  bv1_ARREADY;
wire [63 : 0] bv1_ARADDR;
wire [0 : 0] bv1_ARID;
wire [7 : 0] bv1_ARLEN;
wire [2 : 0] bv1_ARSIZE;
wire [1 : 0] bv1_ARBURST;
wire [1 : 0] bv1_ARLOCK;
wire [3 : 0] bv1_ARCACHE;
wire [2 : 0] bv1_ARPROT;
wire [3 : 0] bv1_ARQOS;
wire [3 : 0] bv1_ARREGION;
wire [0 : 0] bv1_ARUSER;
wire  bv1_RVALID;
wire  bv1_RREADY;
wire [127 : 0] bv1_RDATA;
wire  bv1_RLAST;
wire [0 : 0] bv1_RID;
wire [0 : 0] bv1_RUSER;
wire [1 : 0] bv1_RRESP;
wire  bv1_BVALID;
wire  bv1_BREADY;
wire [1 : 0] bv1_BRESP;
wire [0 : 0] bv1_BID;
wire [0 : 0] bv1_BUSER;
wire  bv2_AWVALID;
wire  bv2_AWREADY;
wire [63 : 0] bv2_AWADDR;
wire [0 : 0] bv2_AWID;
wire [7 : 0] bv2_AWLEN;
wire [2 : 0] bv2_AWSIZE;
wire [1 : 0] bv2_AWBURST;
wire [1 : 0] bv2_AWLOCK;
wire [3 : 0] bv2_AWCACHE;
wire [2 : 0] bv2_AWPROT;
wire [3 : 0] bv2_AWQOS;
wire [3 : 0] bv2_AWREGION;
wire [0 : 0] bv2_AWUSER;
wire  bv2_WVALID;
wire  bv2_WREADY;
wire [127 : 0] bv2_WDATA;
wire [15 : 0] bv2_WSTRB;
wire  bv2_WLAST;
wire [0 : 0] bv2_WID;
wire [0 : 0] bv2_WUSER;
wire  bv2_ARVALID;
wire  bv2_ARREADY;
wire [63 : 0] bv2_ARADDR;
wire [0 : 0] bv2_ARID;
wire [7 : 0] bv2_ARLEN;
wire [2 : 0] bv2_ARSIZE;
wire [1 : 0] bv2_ARBURST;
wire [1 : 0] bv2_ARLOCK;
wire [3 : 0] bv2_ARCACHE;
wire [2 : 0] bv2_ARPROT;
wire [3 : 0] bv2_ARQOS;
wire [3 : 0] bv2_ARREGION;
wire [0 : 0] bv2_ARUSER;
wire  bv2_RVALID;
wire  bv2_RREADY;
wire [127 : 0] bv2_RDATA;
wire  bv2_RLAST;
wire [0 : 0] bv2_RID;
wire [0 : 0] bv2_RUSER;
wire [1 : 0] bv2_RRESP;
wire  bv2_BVALID;
wire  bv2_BREADY;
wire [1 : 0] bv2_BRESP;
wire [0 : 0] bv2_BID;
wire [0 : 0] bv2_BUSER;
wire  bv3_AWVALID;
wire  bv3_AWREADY;
wire [63 : 0] bv3_AWADDR;
wire [0 : 0] bv3_AWID;
wire [7 : 0] bv3_AWLEN;
wire [2 : 0] bv3_AWSIZE;
wire [1 : 0] bv3_AWBURST;
wire [1 : 0] bv3_AWLOCK;
wire [3 : 0] bv3_AWCACHE;
wire [2 : 0] bv3_AWPROT;
wire [3 : 0] bv3_AWQOS;
wire [3 : 0] bv3_AWREGION;
wire [0 : 0] bv3_AWUSER;
wire  bv3_WVALID;
wire  bv3_WREADY;
wire [127 : 0] bv3_WDATA;
wire [15 : 0] bv3_WSTRB;
wire  bv3_WLAST;
wire [0 : 0] bv3_WID;
wire [0 : 0] bv3_WUSER;
wire  bv3_ARVALID;
wire  bv3_ARREADY;
wire [63 : 0] bv3_ARADDR;
wire [0 : 0] bv3_ARID;
wire [7 : 0] bv3_ARLEN;
wire [2 : 0] bv3_ARSIZE;
wire [1 : 0] bv3_ARBURST;
wire [1 : 0] bv3_ARLOCK;
wire [3 : 0] bv3_ARCACHE;
wire [2 : 0] bv3_ARPROT;
wire [3 : 0] bv3_ARQOS;
wire [3 : 0] bv3_ARREGION;
wire [0 : 0] bv3_ARUSER;
wire  bv3_RVALID;
wire  bv3_RREADY;
wire [127 : 0] bv3_RDATA;
wire  bv3_RLAST;
wire [0 : 0] bv3_RID;
wire [0 : 0] bv3_RUSER;
wire [1 : 0] bv3_RRESP;
wire  bv3_BVALID;
wire  bv3_BREADY;
wire [1 : 0] bv3_BRESP;
wire [0 : 0] bv3_BID;
wire [0 : 0] bv3_BUSER;
wire  bv4_AWVALID;
wire  bv4_AWREADY;
wire [63 : 0] bv4_AWADDR;
wire [0 : 0] bv4_AWID;
wire [7 : 0] bv4_AWLEN;
wire [2 : 0] bv4_AWSIZE;
wire [1 : 0] bv4_AWBURST;
wire [1 : 0] bv4_AWLOCK;
wire [3 : 0] bv4_AWCACHE;
wire [2 : 0] bv4_AWPROT;
wire [3 : 0] bv4_AWQOS;
wire [3 : 0] bv4_AWREGION;
wire [0 : 0] bv4_AWUSER;
wire  bv4_WVALID;
wire  bv4_WREADY;
wire [127 : 0] bv4_WDATA;
wire [15 : 0] bv4_WSTRB;
wire  bv4_WLAST;
wire [0 : 0] bv4_WID;
wire [0 : 0] bv4_WUSER;
wire  bv4_ARVALID;
wire  bv4_ARREADY;
wire [63 : 0] bv4_ARADDR;
wire [0 : 0] bv4_ARID;
wire [7 : 0] bv4_ARLEN;
wire [2 : 0] bv4_ARSIZE;
wire [1 : 0] bv4_ARBURST;
wire [1 : 0] bv4_ARLOCK;
wire [3 : 0] bv4_ARCACHE;
wire [2 : 0] bv4_ARPROT;
wire [3 : 0] bv4_ARQOS;
wire [3 : 0] bv4_ARREGION;
wire [0 : 0] bv4_ARUSER;
wire  bv4_RVALID;
wire  bv4_RREADY;
wire [127 : 0] bv4_RDATA;
wire  bv4_RLAST;
wire [0 : 0] bv4_RID;
wire [0 : 0] bv4_RUSER;
wire [1 : 0] bv4_RRESP;
wire  bv4_BVALID;
wire  bv4_BREADY;
wire [1 : 0] bv4_BRESP;
wire [0 : 0] bv4_BID;
wire [0 : 0] bv4_BUSER;
wire  bval1_AWVALID;
wire  bval1_AWREADY;
wire [63 : 0] bval1_AWADDR;
wire [0 : 0] bval1_AWID;
wire [7 : 0] bval1_AWLEN;
wire [2 : 0] bval1_AWSIZE;
wire [1 : 0] bval1_AWBURST;
wire [1 : 0] bval1_AWLOCK;
wire [3 : 0] bval1_AWCACHE;
wire [2 : 0] bval1_AWPROT;
wire [3 : 0] bval1_AWQOS;
wire [3 : 0] bval1_AWREGION;
wire [0 : 0] bval1_AWUSER;
wire  bval1_WVALID;
wire  bval1_WREADY;
wire [127 : 0] bval1_WDATA;
wire [15 : 0] bval1_WSTRB;
wire  bval1_WLAST;
wire [0 : 0] bval1_WID;
wire [0 : 0] bval1_WUSER;
wire  bval1_ARVALID;
wire  bval1_ARREADY;
wire [63 : 0] bval1_ARADDR;
wire [0 : 0] bval1_ARID;
wire [7 : 0] bval1_ARLEN;
wire [2 : 0] bval1_ARSIZE;
wire [1 : 0] bval1_ARBURST;
wire [1 : 0] bval1_ARLOCK;
wire [3 : 0] bval1_ARCACHE;
wire [2 : 0] bval1_ARPROT;
wire [3 : 0] bval1_ARQOS;
wire [3 : 0] bval1_ARREGION;
wire [0 : 0] bval1_ARUSER;
wire  bval1_RVALID;
wire  bval1_RREADY;
wire [127 : 0] bval1_RDATA;
wire  bval1_RLAST;
wire [0 : 0] bval1_RID;
wire [0 : 0] bval1_RUSER;
wire [1 : 0] bval1_RRESP;
wire  bval1_BVALID;
wire  bval1_BREADY;
wire [1 : 0] bval1_BRESP;
wire [0 : 0] bval1_BID;
wire [0 : 0] bval1_BUSER;
wire  bval2_AWVALID;
wire  bval2_AWREADY;
wire [63 : 0] bval2_AWADDR;
wire [0 : 0] bval2_AWID;
wire [7 : 0] bval2_AWLEN;
wire [2 : 0] bval2_AWSIZE;
wire [1 : 0] bval2_AWBURST;
wire [1 : 0] bval2_AWLOCK;
wire [3 : 0] bval2_AWCACHE;
wire [2 : 0] bval2_AWPROT;
wire [3 : 0] bval2_AWQOS;
wire [3 : 0] bval2_AWREGION;
wire [0 : 0] bval2_AWUSER;
wire  bval2_WVALID;
wire  bval2_WREADY;
wire [127 : 0] bval2_WDATA;
wire [15 : 0] bval2_WSTRB;
wire  bval2_WLAST;
wire [0 : 0] bval2_WID;
wire [0 : 0] bval2_WUSER;
wire  bval2_ARVALID;
wire  bval2_ARREADY;
wire [63 : 0] bval2_ARADDR;
wire [0 : 0] bval2_ARID;
wire [7 : 0] bval2_ARLEN;
wire [2 : 0] bval2_ARSIZE;
wire [1 : 0] bval2_ARBURST;
wire [1 : 0] bval2_ARLOCK;
wire [3 : 0] bval2_ARCACHE;
wire [2 : 0] bval2_ARPROT;
wire [3 : 0] bval2_ARQOS;
wire [3 : 0] bval2_ARREGION;
wire [0 : 0] bval2_ARUSER;
wire  bval2_RVALID;
wire  bval2_RREADY;
wire [127 : 0] bval2_RDATA;
wire  bval2_RLAST;
wire [0 : 0] bval2_RID;
wire [0 : 0] bval2_RUSER;
wire [1 : 0] bval2_RRESP;
wire  bval2_BVALID;
wire  bval2_BREADY;
wire [1 : 0] bval2_BRESP;
wire [0 : 0] bval2_BID;
wire [0 : 0] bval2_BUSER;
wire  bval3_AWVALID;
wire  bval3_AWREADY;
wire [63 : 0] bval3_AWADDR;
wire [0 : 0] bval3_AWID;
wire [7 : 0] bval3_AWLEN;
wire [2 : 0] bval3_AWSIZE;
wire [1 : 0] bval3_AWBURST;
wire [1 : 0] bval3_AWLOCK;
wire [3 : 0] bval3_AWCACHE;
wire [2 : 0] bval3_AWPROT;
wire [3 : 0] bval3_AWQOS;
wire [3 : 0] bval3_AWREGION;
wire [0 : 0] bval3_AWUSER;
wire  bval3_WVALID;
wire  bval3_WREADY;
wire [127 : 0] bval3_WDATA;
wire [15 : 0] bval3_WSTRB;
wire  bval3_WLAST;
wire [0 : 0] bval3_WID;
wire [0 : 0] bval3_WUSER;
wire  bval3_ARVALID;
wire  bval3_ARREADY;
wire [63 : 0] bval3_ARADDR;
wire [0 : 0] bval3_ARID;
wire [7 : 0] bval3_ARLEN;
wire [2 : 0] bval3_ARSIZE;
wire [1 : 0] bval3_ARBURST;
wire [1 : 0] bval3_ARLOCK;
wire [3 : 0] bval3_ARCACHE;
wire [2 : 0] bval3_ARPROT;
wire [3 : 0] bval3_ARQOS;
wire [3 : 0] bval3_ARREGION;
wire [0 : 0] bval3_ARUSER;
wire  bval3_RVALID;
wire  bval3_RREADY;
wire [127 : 0] bval3_RDATA;
wire  bval3_RLAST;
wire [0 : 0] bval3_RID;
wire [0 : 0] bval3_RUSER;
wire [1 : 0] bval3_RRESP;
wire  bval3_BVALID;
wire  bval3_BREADY;
wire [1 : 0] bval3_BRESP;
wire [0 : 0] bval3_BID;
wire [0 : 0] bval3_BUSER;
wire  bval4_AWVALID;
wire  bval4_AWREADY;
wire [63 : 0] bval4_AWADDR;
wire [0 : 0] bval4_AWID;
wire [7 : 0] bval4_AWLEN;
wire [2 : 0] bval4_AWSIZE;
wire [1 : 0] bval4_AWBURST;
wire [1 : 0] bval4_AWLOCK;
wire [3 : 0] bval4_AWCACHE;
wire [2 : 0] bval4_AWPROT;
wire [3 : 0] bval4_AWQOS;
wire [3 : 0] bval4_AWREGION;
wire [0 : 0] bval4_AWUSER;
wire  bval4_WVALID;
wire  bval4_WREADY;
wire [127 : 0] bval4_WDATA;
wire [15 : 0] bval4_WSTRB;
wire  bval4_WLAST;
wire [0 : 0] bval4_WID;
wire [0 : 0] bval4_WUSER;
wire  bval4_ARVALID;
wire  bval4_ARREADY;
wire [63 : 0] bval4_ARADDR;
wire [0 : 0] bval4_ARID;
wire [7 : 0] bval4_ARLEN;
wire [2 : 0] bval4_ARSIZE;
wire [1 : 0] bval4_ARBURST;
wire [1 : 0] bval4_ARLOCK;
wire [3 : 0] bval4_ARCACHE;
wire [2 : 0] bval4_ARPROT;
wire [3 : 0] bval4_ARQOS;
wire [3 : 0] bval4_ARREGION;
wire [0 : 0] bval4_ARUSER;
wire  bval4_RVALID;
wire  bval4_RREADY;
wire [127 : 0] bval4_RDATA;
wire  bval4_RLAST;
wire [0 : 0] bval4_RID;
wire [0 : 0] bval4_RUSER;
wire [1 : 0] bval4_RRESP;
wire  bval4_BVALID;
wire  bval4_BREADY;
wire [1 : 0] bval4_BRESP;
wire [0 : 0] bval4_BID;
wire [0 : 0] bval4_BUSER;
wire  ccid_AWVALID;
wire  ccid_AWREADY;
wire [63 : 0] ccid_AWADDR;
wire [0 : 0] ccid_AWID;
wire [7 : 0] ccid_AWLEN;
wire [2 : 0] ccid_AWSIZE;
wire [1 : 0] ccid_AWBURST;
wire [1 : 0] ccid_AWLOCK;
wire [3 : 0] ccid_AWCACHE;
wire [2 : 0] ccid_AWPROT;
wire [3 : 0] ccid_AWQOS;
wire [3 : 0] ccid_AWREGION;
wire [0 : 0] ccid_AWUSER;
wire  ccid_WVALID;
wire  ccid_WREADY;
wire [31 : 0] ccid_WDATA;
wire [3 : 0] ccid_WSTRB;
wire  ccid_WLAST;
wire [0 : 0] ccid_WID;
wire [0 : 0] ccid_WUSER;
wire  ccid_ARVALID;
wire  ccid_ARREADY;
wire [63 : 0] ccid_ARADDR;
wire [0 : 0] ccid_ARID;
wire [7 : 0] ccid_ARLEN;
wire [2 : 0] ccid_ARSIZE;
wire [1 : 0] ccid_ARBURST;
wire [1 : 0] ccid_ARLOCK;
wire [3 : 0] ccid_ARCACHE;
wire [2 : 0] ccid_ARPROT;
wire [3 : 0] ccid_ARQOS;
wire [3 : 0] ccid_ARREGION;
wire [0 : 0] ccid_ARUSER;
wire  ccid_RVALID;
wire  ccid_RREADY;
wire [31 : 0] ccid_RDATA;
wire  ccid_RLAST;
wire [0 : 0] ccid_RID;
wire [0 : 0] ccid_RUSER;
wire [1 : 0] ccid_RRESP;
wire  ccid_BVALID;
wire  ccid_BREADY;
wire [1 : 0] ccid_BRESP;
wire [0 : 0] ccid_BID;
wire [0 : 0] ccid_BUSER;
wire  crcsr_AWVALID;
wire  crcsr_AWREADY;
wire [63 : 0] crcsr_AWADDR;
wire [0 : 0] crcsr_AWID;
wire [7 : 0] crcsr_AWLEN;
wire [2 : 0] crcsr_AWSIZE;
wire [1 : 0] crcsr_AWBURST;
wire [1 : 0] crcsr_AWLOCK;
wire [3 : 0] crcsr_AWCACHE;
wire [2 : 0] crcsr_AWPROT;
wire [3 : 0] crcsr_AWQOS;
wire [3 : 0] crcsr_AWREGION;
wire [0 : 0] crcsr_AWUSER;
wire  crcsr_WVALID;
wire  crcsr_WREADY;
wire [31 : 0] crcsr_WDATA;
wire [3 : 0] crcsr_WSTRB;
wire  crcsr_WLAST;
wire [0 : 0] crcsr_WID;
wire [0 : 0] crcsr_WUSER;
wire  crcsr_ARVALID;
wire  crcsr_ARREADY;
wire [63 : 0] crcsr_ARADDR;
wire [0 : 0] crcsr_ARID;
wire [7 : 0] crcsr_ARLEN;
wire [2 : 0] crcsr_ARSIZE;
wire [1 : 0] crcsr_ARBURST;
wire [1 : 0] crcsr_ARLOCK;
wire [3 : 0] crcsr_ARCACHE;
wire [2 : 0] crcsr_ARPROT;
wire [3 : 0] crcsr_ARQOS;
wire [3 : 0] crcsr_ARREGION;
wire [0 : 0] crcsr_ARUSER;
wire  crcsr_RVALID;
wire  crcsr_RREADY;
wire [31 : 0] crcsr_RDATA;
wire  crcsr_RLAST;
wire [0 : 0] crcsr_RID;
wire [0 : 0] crcsr_RUSER;
wire [1 : 0] crcsr_RRESP;
wire  crcsr_BVALID;
wire  crcsr_BREADY;
wire [1 : 0] crcsr_BRESP;
wire [0 : 0] crcsr_BID;
wire [0 : 0] crcsr_BUSER;
wire  cval_AWVALID;
wire  cval_AWREADY;
wire [63 : 0] cval_AWADDR;
wire [0 : 0] cval_AWID;
wire [7 : 0] cval_AWLEN;
wire [2 : 0] cval_AWSIZE;
wire [1 : 0] cval_AWBURST;
wire [1 : 0] cval_AWLOCK;
wire [3 : 0] cval_AWCACHE;
wire [2 : 0] cval_AWPROT;
wire [3 : 0] cval_AWQOS;
wire [3 : 0] cval_AWREGION;
wire [0 : 0] cval_AWUSER;
wire  cval_WVALID;
wire  cval_WREADY;
wire [31 : 0] cval_WDATA;
wire [3 : 0] cval_WSTRB;
wire  cval_WLAST;
wire [0 : 0] cval_WID;
wire [0 : 0] cval_WUSER;
wire  cval_ARVALID;
wire  cval_ARREADY;
wire [63 : 0] cval_ARADDR;
wire [0 : 0] cval_ARID;
wire [7 : 0] cval_ARLEN;
wire [2 : 0] cval_ARSIZE;
wire [1 : 0] cval_ARBURST;
wire [1 : 0] cval_ARLOCK;
wire [3 : 0] cval_ARCACHE;
wire [2 : 0] cval_ARPROT;
wire [3 : 0] cval_ARQOS;
wire [3 : 0] cval_ARREGION;
wire [0 : 0] cval_ARUSER;
wire  cval_RVALID;
wire  cval_RREADY;
wire [31 : 0] cval_RDATA;
wire  cval_RLAST;
wire [0 : 0] cval_RID;
wire [0 : 0] cval_RUSER;
wire [1 : 0] cval_RRESP;
wire  cval_BVALID;
wire  cval_BREADY;
wire [1 : 0] cval_BRESP;
wire [0 : 0] cval_BID;
wire [0 : 0] cval_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire control_write_data_finish;
wire ctr_read_data_finish;
wire ctr_write_data_finish;
wire AESL_slave_start;
reg AESL_slave_start_lock = 0;
wire AESL_slave_write_start_in;
wire AESL_slave_write_start_finish;
reg AESL_slave_ready;
wire AESL_slave_output_done;
wire AESL_slave_done;
reg ready_rise = 0;
reg start_rise = 0;
reg slave_start_status = 0;
reg slave_done_status = 0;
reg ap_done_lock = 0;


wire ap_clk;
wire ap_rst_n;
wire ap_rst_n_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .s_axi_control_AWADDR(control_AWADDR),
    .s_axi_control_AWVALID(control_AWVALID),
    .s_axi_control_AWREADY(control_AWREADY),
    .s_axi_control_WVALID(control_WVALID),
    .s_axi_control_WREADY(control_WREADY),
    .s_axi_control_WDATA(control_WDATA),
    .s_axi_control_WSTRB(control_WSTRB),
    .s_axi_control_ARADDR(control_ARADDR),
    .s_axi_control_ARVALID(control_ARVALID),
    .s_axi_control_ARREADY(control_ARREADY),
    .s_axi_control_RVALID(control_RVALID),
    .s_axi_control_RREADY(control_RREADY),
    .s_axi_control_RDATA(control_RDATA),
    .s_axi_control_RRESP(control_RRESP),
    .s_axi_control_BVALID(control_BVALID),
    .s_axi_control_BREADY(control_BREADY),
    .s_axi_control_BRESP(control_BRESP),
    .s_axi_ctr_AWADDR(ctr_AWADDR),
    .s_axi_ctr_AWVALID(ctr_AWVALID),
    .s_axi_ctr_AWREADY(ctr_AWREADY),
    .s_axi_ctr_WVALID(ctr_WVALID),
    .s_axi_ctr_WREADY(ctr_WREADY),
    .s_axi_ctr_WDATA(ctr_WDATA),
    .s_axi_ctr_WSTRB(ctr_WSTRB),
    .s_axi_ctr_ARADDR(ctr_ARADDR),
    .s_axi_ctr_ARVALID(ctr_ARVALID),
    .s_axi_ctr_ARREADY(ctr_ARREADY),
    .s_axi_ctr_RVALID(ctr_RVALID),
    .s_axi_ctr_RREADY(ctr_RREADY),
    .s_axi_ctr_RDATA(ctr_RDATA),
    .s_axi_ctr_RRESP(ctr_RRESP),
    .s_axi_ctr_BVALID(ctr_BVALID),
    .s_axi_ctr_BREADY(ctr_BREADY),
    .s_axi_ctr_BRESP(ctr_BRESP),
    .interrupt(ctr_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_acid_AWVALID(acid_AWVALID),
    .m_axi_acid_AWREADY(acid_AWREADY),
    .m_axi_acid_AWADDR(acid_AWADDR),
    .m_axi_acid_AWID(acid_AWID),
    .m_axi_acid_AWLEN(acid_AWLEN),
    .m_axi_acid_AWSIZE(acid_AWSIZE),
    .m_axi_acid_AWBURST(acid_AWBURST),
    .m_axi_acid_AWLOCK(acid_AWLOCK),
    .m_axi_acid_AWCACHE(acid_AWCACHE),
    .m_axi_acid_AWPROT(acid_AWPROT),
    .m_axi_acid_AWQOS(acid_AWQOS),
    .m_axi_acid_AWREGION(acid_AWREGION),
    .m_axi_acid_AWUSER(acid_AWUSER),
    .m_axi_acid_WVALID(acid_WVALID),
    .m_axi_acid_WREADY(acid_WREADY),
    .m_axi_acid_WDATA(acid_WDATA),
    .m_axi_acid_WSTRB(acid_WSTRB),
    .m_axi_acid_WLAST(acid_WLAST),
    .m_axi_acid_WID(acid_WID),
    .m_axi_acid_WUSER(acid_WUSER),
    .m_axi_acid_ARVALID(acid_ARVALID),
    .m_axi_acid_ARREADY(acid_ARREADY),
    .m_axi_acid_ARADDR(acid_ARADDR),
    .m_axi_acid_ARID(acid_ARID),
    .m_axi_acid_ARLEN(acid_ARLEN),
    .m_axi_acid_ARSIZE(acid_ARSIZE),
    .m_axi_acid_ARBURST(acid_ARBURST),
    .m_axi_acid_ARLOCK(acid_ARLOCK),
    .m_axi_acid_ARCACHE(acid_ARCACHE),
    .m_axi_acid_ARPROT(acid_ARPROT),
    .m_axi_acid_ARQOS(acid_ARQOS),
    .m_axi_acid_ARREGION(acid_ARREGION),
    .m_axi_acid_ARUSER(acid_ARUSER),
    .m_axi_acid_RVALID(acid_RVALID),
    .m_axi_acid_RREADY(acid_RREADY),
    .m_axi_acid_RDATA(acid_RDATA),
    .m_axi_acid_RLAST(acid_RLAST),
    .m_axi_acid_RID(acid_RID),
    .m_axi_acid_RUSER(acid_RUSER),
    .m_axi_acid_RRESP(acid_RRESP),
    .m_axi_acid_BVALID(acid_BVALID),
    .m_axi_acid_BREADY(acid_BREADY),
    .m_axi_acid_BRESP(acid_BRESP),
    .m_axi_acid_BID(acid_BID),
    .m_axi_acid_BUSER(acid_BUSER),
    .m_axi_arcsr_AWVALID(arcsr_AWVALID),
    .m_axi_arcsr_AWREADY(arcsr_AWREADY),
    .m_axi_arcsr_AWADDR(arcsr_AWADDR),
    .m_axi_arcsr_AWID(arcsr_AWID),
    .m_axi_arcsr_AWLEN(arcsr_AWLEN),
    .m_axi_arcsr_AWSIZE(arcsr_AWSIZE),
    .m_axi_arcsr_AWBURST(arcsr_AWBURST),
    .m_axi_arcsr_AWLOCK(arcsr_AWLOCK),
    .m_axi_arcsr_AWCACHE(arcsr_AWCACHE),
    .m_axi_arcsr_AWPROT(arcsr_AWPROT),
    .m_axi_arcsr_AWQOS(arcsr_AWQOS),
    .m_axi_arcsr_AWREGION(arcsr_AWREGION),
    .m_axi_arcsr_AWUSER(arcsr_AWUSER),
    .m_axi_arcsr_WVALID(arcsr_WVALID),
    .m_axi_arcsr_WREADY(arcsr_WREADY),
    .m_axi_arcsr_WDATA(arcsr_WDATA),
    .m_axi_arcsr_WSTRB(arcsr_WSTRB),
    .m_axi_arcsr_WLAST(arcsr_WLAST),
    .m_axi_arcsr_WID(arcsr_WID),
    .m_axi_arcsr_WUSER(arcsr_WUSER),
    .m_axi_arcsr_ARVALID(arcsr_ARVALID),
    .m_axi_arcsr_ARREADY(arcsr_ARREADY),
    .m_axi_arcsr_ARADDR(arcsr_ARADDR),
    .m_axi_arcsr_ARID(arcsr_ARID),
    .m_axi_arcsr_ARLEN(arcsr_ARLEN),
    .m_axi_arcsr_ARSIZE(arcsr_ARSIZE),
    .m_axi_arcsr_ARBURST(arcsr_ARBURST),
    .m_axi_arcsr_ARLOCK(arcsr_ARLOCK),
    .m_axi_arcsr_ARCACHE(arcsr_ARCACHE),
    .m_axi_arcsr_ARPROT(arcsr_ARPROT),
    .m_axi_arcsr_ARQOS(arcsr_ARQOS),
    .m_axi_arcsr_ARREGION(arcsr_ARREGION),
    .m_axi_arcsr_ARUSER(arcsr_ARUSER),
    .m_axi_arcsr_RVALID(arcsr_RVALID),
    .m_axi_arcsr_RREADY(arcsr_RREADY),
    .m_axi_arcsr_RDATA(arcsr_RDATA),
    .m_axi_arcsr_RLAST(arcsr_RLAST),
    .m_axi_arcsr_RID(arcsr_RID),
    .m_axi_arcsr_RUSER(arcsr_RUSER),
    .m_axi_arcsr_RRESP(arcsr_RRESP),
    .m_axi_arcsr_BVALID(arcsr_BVALID),
    .m_axi_arcsr_BREADY(arcsr_BREADY),
    .m_axi_arcsr_BRESP(arcsr_BRESP),
    .m_axi_arcsr_BID(arcsr_BID),
    .m_axi_arcsr_BUSER(arcsr_BUSER),
    .m_axi_aval_AWVALID(aval_AWVALID),
    .m_axi_aval_AWREADY(aval_AWREADY),
    .m_axi_aval_AWADDR(aval_AWADDR),
    .m_axi_aval_AWID(aval_AWID),
    .m_axi_aval_AWLEN(aval_AWLEN),
    .m_axi_aval_AWSIZE(aval_AWSIZE),
    .m_axi_aval_AWBURST(aval_AWBURST),
    .m_axi_aval_AWLOCK(aval_AWLOCK),
    .m_axi_aval_AWCACHE(aval_AWCACHE),
    .m_axi_aval_AWPROT(aval_AWPROT),
    .m_axi_aval_AWQOS(aval_AWQOS),
    .m_axi_aval_AWREGION(aval_AWREGION),
    .m_axi_aval_AWUSER(aval_AWUSER),
    .m_axi_aval_WVALID(aval_WVALID),
    .m_axi_aval_WREADY(aval_WREADY),
    .m_axi_aval_WDATA(aval_WDATA),
    .m_axi_aval_WSTRB(aval_WSTRB),
    .m_axi_aval_WLAST(aval_WLAST),
    .m_axi_aval_WID(aval_WID),
    .m_axi_aval_WUSER(aval_WUSER),
    .m_axi_aval_ARVALID(aval_ARVALID),
    .m_axi_aval_ARREADY(aval_ARREADY),
    .m_axi_aval_ARADDR(aval_ARADDR),
    .m_axi_aval_ARID(aval_ARID),
    .m_axi_aval_ARLEN(aval_ARLEN),
    .m_axi_aval_ARSIZE(aval_ARSIZE),
    .m_axi_aval_ARBURST(aval_ARBURST),
    .m_axi_aval_ARLOCK(aval_ARLOCK),
    .m_axi_aval_ARCACHE(aval_ARCACHE),
    .m_axi_aval_ARPROT(aval_ARPROT),
    .m_axi_aval_ARQOS(aval_ARQOS),
    .m_axi_aval_ARREGION(aval_ARREGION),
    .m_axi_aval_ARUSER(aval_ARUSER),
    .m_axi_aval_RVALID(aval_RVALID),
    .m_axi_aval_RREADY(aval_RREADY),
    .m_axi_aval_RDATA(aval_RDATA),
    .m_axi_aval_RLAST(aval_RLAST),
    .m_axi_aval_RID(aval_RID),
    .m_axi_aval_RUSER(aval_RUSER),
    .m_axi_aval_RRESP(aval_RRESP),
    .m_axi_aval_BVALID(aval_BVALID),
    .m_axi_aval_BREADY(aval_BREADY),
    .m_axi_aval_BRESP(aval_BRESP),
    .m_axi_aval_BID(aval_BID),
    .m_axi_aval_BUSER(aval_BUSER),
    .m_axi_bc1_AWVALID(bc1_AWVALID),
    .m_axi_bc1_AWREADY(bc1_AWREADY),
    .m_axi_bc1_AWADDR(bc1_AWADDR),
    .m_axi_bc1_AWID(bc1_AWID),
    .m_axi_bc1_AWLEN(bc1_AWLEN),
    .m_axi_bc1_AWSIZE(bc1_AWSIZE),
    .m_axi_bc1_AWBURST(bc1_AWBURST),
    .m_axi_bc1_AWLOCK(bc1_AWLOCK),
    .m_axi_bc1_AWCACHE(bc1_AWCACHE),
    .m_axi_bc1_AWPROT(bc1_AWPROT),
    .m_axi_bc1_AWQOS(bc1_AWQOS),
    .m_axi_bc1_AWREGION(bc1_AWREGION),
    .m_axi_bc1_AWUSER(bc1_AWUSER),
    .m_axi_bc1_WVALID(bc1_WVALID),
    .m_axi_bc1_WREADY(bc1_WREADY),
    .m_axi_bc1_WDATA(bc1_WDATA),
    .m_axi_bc1_WSTRB(bc1_WSTRB),
    .m_axi_bc1_WLAST(bc1_WLAST),
    .m_axi_bc1_WID(bc1_WID),
    .m_axi_bc1_WUSER(bc1_WUSER),
    .m_axi_bc1_ARVALID(bc1_ARVALID),
    .m_axi_bc1_ARREADY(bc1_ARREADY),
    .m_axi_bc1_ARADDR(bc1_ARADDR),
    .m_axi_bc1_ARID(bc1_ARID),
    .m_axi_bc1_ARLEN(bc1_ARLEN),
    .m_axi_bc1_ARSIZE(bc1_ARSIZE),
    .m_axi_bc1_ARBURST(bc1_ARBURST),
    .m_axi_bc1_ARLOCK(bc1_ARLOCK),
    .m_axi_bc1_ARCACHE(bc1_ARCACHE),
    .m_axi_bc1_ARPROT(bc1_ARPROT),
    .m_axi_bc1_ARQOS(bc1_ARQOS),
    .m_axi_bc1_ARREGION(bc1_ARREGION),
    .m_axi_bc1_ARUSER(bc1_ARUSER),
    .m_axi_bc1_RVALID(bc1_RVALID),
    .m_axi_bc1_RREADY(bc1_RREADY),
    .m_axi_bc1_RDATA(bc1_RDATA),
    .m_axi_bc1_RLAST(bc1_RLAST),
    .m_axi_bc1_RID(bc1_RID),
    .m_axi_bc1_RUSER(bc1_RUSER),
    .m_axi_bc1_RRESP(bc1_RRESP),
    .m_axi_bc1_BVALID(bc1_BVALID),
    .m_axi_bc1_BREADY(bc1_BREADY),
    .m_axi_bc1_BRESP(bc1_BRESP),
    .m_axi_bc1_BID(bc1_BID),
    .m_axi_bc1_BUSER(bc1_BUSER),
    .m_axi_bc2_AWVALID(bc2_AWVALID),
    .m_axi_bc2_AWREADY(bc2_AWREADY),
    .m_axi_bc2_AWADDR(bc2_AWADDR),
    .m_axi_bc2_AWID(bc2_AWID),
    .m_axi_bc2_AWLEN(bc2_AWLEN),
    .m_axi_bc2_AWSIZE(bc2_AWSIZE),
    .m_axi_bc2_AWBURST(bc2_AWBURST),
    .m_axi_bc2_AWLOCK(bc2_AWLOCK),
    .m_axi_bc2_AWCACHE(bc2_AWCACHE),
    .m_axi_bc2_AWPROT(bc2_AWPROT),
    .m_axi_bc2_AWQOS(bc2_AWQOS),
    .m_axi_bc2_AWREGION(bc2_AWREGION),
    .m_axi_bc2_AWUSER(bc2_AWUSER),
    .m_axi_bc2_WVALID(bc2_WVALID),
    .m_axi_bc2_WREADY(bc2_WREADY),
    .m_axi_bc2_WDATA(bc2_WDATA),
    .m_axi_bc2_WSTRB(bc2_WSTRB),
    .m_axi_bc2_WLAST(bc2_WLAST),
    .m_axi_bc2_WID(bc2_WID),
    .m_axi_bc2_WUSER(bc2_WUSER),
    .m_axi_bc2_ARVALID(bc2_ARVALID),
    .m_axi_bc2_ARREADY(bc2_ARREADY),
    .m_axi_bc2_ARADDR(bc2_ARADDR),
    .m_axi_bc2_ARID(bc2_ARID),
    .m_axi_bc2_ARLEN(bc2_ARLEN),
    .m_axi_bc2_ARSIZE(bc2_ARSIZE),
    .m_axi_bc2_ARBURST(bc2_ARBURST),
    .m_axi_bc2_ARLOCK(bc2_ARLOCK),
    .m_axi_bc2_ARCACHE(bc2_ARCACHE),
    .m_axi_bc2_ARPROT(bc2_ARPROT),
    .m_axi_bc2_ARQOS(bc2_ARQOS),
    .m_axi_bc2_ARREGION(bc2_ARREGION),
    .m_axi_bc2_ARUSER(bc2_ARUSER),
    .m_axi_bc2_RVALID(bc2_RVALID),
    .m_axi_bc2_RREADY(bc2_RREADY),
    .m_axi_bc2_RDATA(bc2_RDATA),
    .m_axi_bc2_RLAST(bc2_RLAST),
    .m_axi_bc2_RID(bc2_RID),
    .m_axi_bc2_RUSER(bc2_RUSER),
    .m_axi_bc2_RRESP(bc2_RRESP),
    .m_axi_bc2_BVALID(bc2_BVALID),
    .m_axi_bc2_BREADY(bc2_BREADY),
    .m_axi_bc2_BRESP(bc2_BRESP),
    .m_axi_bc2_BID(bc2_BID),
    .m_axi_bc2_BUSER(bc2_BUSER),
    .m_axi_bc3_AWVALID(bc3_AWVALID),
    .m_axi_bc3_AWREADY(bc3_AWREADY),
    .m_axi_bc3_AWADDR(bc3_AWADDR),
    .m_axi_bc3_AWID(bc3_AWID),
    .m_axi_bc3_AWLEN(bc3_AWLEN),
    .m_axi_bc3_AWSIZE(bc3_AWSIZE),
    .m_axi_bc3_AWBURST(bc3_AWBURST),
    .m_axi_bc3_AWLOCK(bc3_AWLOCK),
    .m_axi_bc3_AWCACHE(bc3_AWCACHE),
    .m_axi_bc3_AWPROT(bc3_AWPROT),
    .m_axi_bc3_AWQOS(bc3_AWQOS),
    .m_axi_bc3_AWREGION(bc3_AWREGION),
    .m_axi_bc3_AWUSER(bc3_AWUSER),
    .m_axi_bc3_WVALID(bc3_WVALID),
    .m_axi_bc3_WREADY(bc3_WREADY),
    .m_axi_bc3_WDATA(bc3_WDATA),
    .m_axi_bc3_WSTRB(bc3_WSTRB),
    .m_axi_bc3_WLAST(bc3_WLAST),
    .m_axi_bc3_WID(bc3_WID),
    .m_axi_bc3_WUSER(bc3_WUSER),
    .m_axi_bc3_ARVALID(bc3_ARVALID),
    .m_axi_bc3_ARREADY(bc3_ARREADY),
    .m_axi_bc3_ARADDR(bc3_ARADDR),
    .m_axi_bc3_ARID(bc3_ARID),
    .m_axi_bc3_ARLEN(bc3_ARLEN),
    .m_axi_bc3_ARSIZE(bc3_ARSIZE),
    .m_axi_bc3_ARBURST(bc3_ARBURST),
    .m_axi_bc3_ARLOCK(bc3_ARLOCK),
    .m_axi_bc3_ARCACHE(bc3_ARCACHE),
    .m_axi_bc3_ARPROT(bc3_ARPROT),
    .m_axi_bc3_ARQOS(bc3_ARQOS),
    .m_axi_bc3_ARREGION(bc3_ARREGION),
    .m_axi_bc3_ARUSER(bc3_ARUSER),
    .m_axi_bc3_RVALID(bc3_RVALID),
    .m_axi_bc3_RREADY(bc3_RREADY),
    .m_axi_bc3_RDATA(bc3_RDATA),
    .m_axi_bc3_RLAST(bc3_RLAST),
    .m_axi_bc3_RID(bc3_RID),
    .m_axi_bc3_RUSER(bc3_RUSER),
    .m_axi_bc3_RRESP(bc3_RRESP),
    .m_axi_bc3_BVALID(bc3_BVALID),
    .m_axi_bc3_BREADY(bc3_BREADY),
    .m_axi_bc3_BRESP(bc3_BRESP),
    .m_axi_bc3_BID(bc3_BID),
    .m_axi_bc3_BUSER(bc3_BUSER),
    .m_axi_bc4_AWVALID(bc4_AWVALID),
    .m_axi_bc4_AWREADY(bc4_AWREADY),
    .m_axi_bc4_AWADDR(bc4_AWADDR),
    .m_axi_bc4_AWID(bc4_AWID),
    .m_axi_bc4_AWLEN(bc4_AWLEN),
    .m_axi_bc4_AWSIZE(bc4_AWSIZE),
    .m_axi_bc4_AWBURST(bc4_AWBURST),
    .m_axi_bc4_AWLOCK(bc4_AWLOCK),
    .m_axi_bc4_AWCACHE(bc4_AWCACHE),
    .m_axi_bc4_AWPROT(bc4_AWPROT),
    .m_axi_bc4_AWQOS(bc4_AWQOS),
    .m_axi_bc4_AWREGION(bc4_AWREGION),
    .m_axi_bc4_AWUSER(bc4_AWUSER),
    .m_axi_bc4_WVALID(bc4_WVALID),
    .m_axi_bc4_WREADY(bc4_WREADY),
    .m_axi_bc4_WDATA(bc4_WDATA),
    .m_axi_bc4_WSTRB(bc4_WSTRB),
    .m_axi_bc4_WLAST(bc4_WLAST),
    .m_axi_bc4_WID(bc4_WID),
    .m_axi_bc4_WUSER(bc4_WUSER),
    .m_axi_bc4_ARVALID(bc4_ARVALID),
    .m_axi_bc4_ARREADY(bc4_ARREADY),
    .m_axi_bc4_ARADDR(bc4_ARADDR),
    .m_axi_bc4_ARID(bc4_ARID),
    .m_axi_bc4_ARLEN(bc4_ARLEN),
    .m_axi_bc4_ARSIZE(bc4_ARSIZE),
    .m_axi_bc4_ARBURST(bc4_ARBURST),
    .m_axi_bc4_ARLOCK(bc4_ARLOCK),
    .m_axi_bc4_ARCACHE(bc4_ARCACHE),
    .m_axi_bc4_ARPROT(bc4_ARPROT),
    .m_axi_bc4_ARQOS(bc4_ARQOS),
    .m_axi_bc4_ARREGION(bc4_ARREGION),
    .m_axi_bc4_ARUSER(bc4_ARUSER),
    .m_axi_bc4_RVALID(bc4_RVALID),
    .m_axi_bc4_RREADY(bc4_RREADY),
    .m_axi_bc4_RDATA(bc4_RDATA),
    .m_axi_bc4_RLAST(bc4_RLAST),
    .m_axi_bc4_RID(bc4_RID),
    .m_axi_bc4_RUSER(bc4_RUSER),
    .m_axi_bc4_RRESP(bc4_RRESP),
    .m_axi_bc4_BVALID(bc4_BVALID),
    .m_axi_bc4_BREADY(bc4_BREADY),
    .m_axi_bc4_BRESP(bc4_BRESP),
    .m_axi_bc4_BID(bc4_BID),
    .m_axi_bc4_BUSER(bc4_BUSER),
    .m_axi_bcid1_AWVALID(bcid1_AWVALID),
    .m_axi_bcid1_AWREADY(bcid1_AWREADY),
    .m_axi_bcid1_AWADDR(bcid1_AWADDR),
    .m_axi_bcid1_AWID(bcid1_AWID),
    .m_axi_bcid1_AWLEN(bcid1_AWLEN),
    .m_axi_bcid1_AWSIZE(bcid1_AWSIZE),
    .m_axi_bcid1_AWBURST(bcid1_AWBURST),
    .m_axi_bcid1_AWLOCK(bcid1_AWLOCK),
    .m_axi_bcid1_AWCACHE(bcid1_AWCACHE),
    .m_axi_bcid1_AWPROT(bcid1_AWPROT),
    .m_axi_bcid1_AWQOS(bcid1_AWQOS),
    .m_axi_bcid1_AWREGION(bcid1_AWREGION),
    .m_axi_bcid1_AWUSER(bcid1_AWUSER),
    .m_axi_bcid1_WVALID(bcid1_WVALID),
    .m_axi_bcid1_WREADY(bcid1_WREADY),
    .m_axi_bcid1_WDATA(bcid1_WDATA),
    .m_axi_bcid1_WSTRB(bcid1_WSTRB),
    .m_axi_bcid1_WLAST(bcid1_WLAST),
    .m_axi_bcid1_WID(bcid1_WID),
    .m_axi_bcid1_WUSER(bcid1_WUSER),
    .m_axi_bcid1_ARVALID(bcid1_ARVALID),
    .m_axi_bcid1_ARREADY(bcid1_ARREADY),
    .m_axi_bcid1_ARADDR(bcid1_ARADDR),
    .m_axi_bcid1_ARID(bcid1_ARID),
    .m_axi_bcid1_ARLEN(bcid1_ARLEN),
    .m_axi_bcid1_ARSIZE(bcid1_ARSIZE),
    .m_axi_bcid1_ARBURST(bcid1_ARBURST),
    .m_axi_bcid1_ARLOCK(bcid1_ARLOCK),
    .m_axi_bcid1_ARCACHE(bcid1_ARCACHE),
    .m_axi_bcid1_ARPROT(bcid1_ARPROT),
    .m_axi_bcid1_ARQOS(bcid1_ARQOS),
    .m_axi_bcid1_ARREGION(bcid1_ARREGION),
    .m_axi_bcid1_ARUSER(bcid1_ARUSER),
    .m_axi_bcid1_RVALID(bcid1_RVALID),
    .m_axi_bcid1_RREADY(bcid1_RREADY),
    .m_axi_bcid1_RDATA(bcid1_RDATA),
    .m_axi_bcid1_RLAST(bcid1_RLAST),
    .m_axi_bcid1_RID(bcid1_RID),
    .m_axi_bcid1_RUSER(bcid1_RUSER),
    .m_axi_bcid1_RRESP(bcid1_RRESP),
    .m_axi_bcid1_BVALID(bcid1_BVALID),
    .m_axi_bcid1_BREADY(bcid1_BREADY),
    .m_axi_bcid1_BRESP(bcid1_BRESP),
    .m_axi_bcid1_BID(bcid1_BID),
    .m_axi_bcid1_BUSER(bcid1_BUSER),
    .m_axi_bcid2_AWVALID(bcid2_AWVALID),
    .m_axi_bcid2_AWREADY(bcid2_AWREADY),
    .m_axi_bcid2_AWADDR(bcid2_AWADDR),
    .m_axi_bcid2_AWID(bcid2_AWID),
    .m_axi_bcid2_AWLEN(bcid2_AWLEN),
    .m_axi_bcid2_AWSIZE(bcid2_AWSIZE),
    .m_axi_bcid2_AWBURST(bcid2_AWBURST),
    .m_axi_bcid2_AWLOCK(bcid2_AWLOCK),
    .m_axi_bcid2_AWCACHE(bcid2_AWCACHE),
    .m_axi_bcid2_AWPROT(bcid2_AWPROT),
    .m_axi_bcid2_AWQOS(bcid2_AWQOS),
    .m_axi_bcid2_AWREGION(bcid2_AWREGION),
    .m_axi_bcid2_AWUSER(bcid2_AWUSER),
    .m_axi_bcid2_WVALID(bcid2_WVALID),
    .m_axi_bcid2_WREADY(bcid2_WREADY),
    .m_axi_bcid2_WDATA(bcid2_WDATA),
    .m_axi_bcid2_WSTRB(bcid2_WSTRB),
    .m_axi_bcid2_WLAST(bcid2_WLAST),
    .m_axi_bcid2_WID(bcid2_WID),
    .m_axi_bcid2_WUSER(bcid2_WUSER),
    .m_axi_bcid2_ARVALID(bcid2_ARVALID),
    .m_axi_bcid2_ARREADY(bcid2_ARREADY),
    .m_axi_bcid2_ARADDR(bcid2_ARADDR),
    .m_axi_bcid2_ARID(bcid2_ARID),
    .m_axi_bcid2_ARLEN(bcid2_ARLEN),
    .m_axi_bcid2_ARSIZE(bcid2_ARSIZE),
    .m_axi_bcid2_ARBURST(bcid2_ARBURST),
    .m_axi_bcid2_ARLOCK(bcid2_ARLOCK),
    .m_axi_bcid2_ARCACHE(bcid2_ARCACHE),
    .m_axi_bcid2_ARPROT(bcid2_ARPROT),
    .m_axi_bcid2_ARQOS(bcid2_ARQOS),
    .m_axi_bcid2_ARREGION(bcid2_ARREGION),
    .m_axi_bcid2_ARUSER(bcid2_ARUSER),
    .m_axi_bcid2_RVALID(bcid2_RVALID),
    .m_axi_bcid2_RREADY(bcid2_RREADY),
    .m_axi_bcid2_RDATA(bcid2_RDATA),
    .m_axi_bcid2_RLAST(bcid2_RLAST),
    .m_axi_bcid2_RID(bcid2_RID),
    .m_axi_bcid2_RUSER(bcid2_RUSER),
    .m_axi_bcid2_RRESP(bcid2_RRESP),
    .m_axi_bcid2_BVALID(bcid2_BVALID),
    .m_axi_bcid2_BREADY(bcid2_BREADY),
    .m_axi_bcid2_BRESP(bcid2_BRESP),
    .m_axi_bcid2_BID(bcid2_BID),
    .m_axi_bcid2_BUSER(bcid2_BUSER),
    .m_axi_bcid3_AWVALID(bcid3_AWVALID),
    .m_axi_bcid3_AWREADY(bcid3_AWREADY),
    .m_axi_bcid3_AWADDR(bcid3_AWADDR),
    .m_axi_bcid3_AWID(bcid3_AWID),
    .m_axi_bcid3_AWLEN(bcid3_AWLEN),
    .m_axi_bcid3_AWSIZE(bcid3_AWSIZE),
    .m_axi_bcid3_AWBURST(bcid3_AWBURST),
    .m_axi_bcid3_AWLOCK(bcid3_AWLOCK),
    .m_axi_bcid3_AWCACHE(bcid3_AWCACHE),
    .m_axi_bcid3_AWPROT(bcid3_AWPROT),
    .m_axi_bcid3_AWQOS(bcid3_AWQOS),
    .m_axi_bcid3_AWREGION(bcid3_AWREGION),
    .m_axi_bcid3_AWUSER(bcid3_AWUSER),
    .m_axi_bcid3_WVALID(bcid3_WVALID),
    .m_axi_bcid3_WREADY(bcid3_WREADY),
    .m_axi_bcid3_WDATA(bcid3_WDATA),
    .m_axi_bcid3_WSTRB(bcid3_WSTRB),
    .m_axi_bcid3_WLAST(bcid3_WLAST),
    .m_axi_bcid3_WID(bcid3_WID),
    .m_axi_bcid3_WUSER(bcid3_WUSER),
    .m_axi_bcid3_ARVALID(bcid3_ARVALID),
    .m_axi_bcid3_ARREADY(bcid3_ARREADY),
    .m_axi_bcid3_ARADDR(bcid3_ARADDR),
    .m_axi_bcid3_ARID(bcid3_ARID),
    .m_axi_bcid3_ARLEN(bcid3_ARLEN),
    .m_axi_bcid3_ARSIZE(bcid3_ARSIZE),
    .m_axi_bcid3_ARBURST(bcid3_ARBURST),
    .m_axi_bcid3_ARLOCK(bcid3_ARLOCK),
    .m_axi_bcid3_ARCACHE(bcid3_ARCACHE),
    .m_axi_bcid3_ARPROT(bcid3_ARPROT),
    .m_axi_bcid3_ARQOS(bcid3_ARQOS),
    .m_axi_bcid3_ARREGION(bcid3_ARREGION),
    .m_axi_bcid3_ARUSER(bcid3_ARUSER),
    .m_axi_bcid3_RVALID(bcid3_RVALID),
    .m_axi_bcid3_RREADY(bcid3_RREADY),
    .m_axi_bcid3_RDATA(bcid3_RDATA),
    .m_axi_bcid3_RLAST(bcid3_RLAST),
    .m_axi_bcid3_RID(bcid3_RID),
    .m_axi_bcid3_RUSER(bcid3_RUSER),
    .m_axi_bcid3_RRESP(bcid3_RRESP),
    .m_axi_bcid3_BVALID(bcid3_BVALID),
    .m_axi_bcid3_BREADY(bcid3_BREADY),
    .m_axi_bcid3_BRESP(bcid3_BRESP),
    .m_axi_bcid3_BID(bcid3_BID),
    .m_axi_bcid3_BUSER(bcid3_BUSER),
    .m_axi_bcid4_AWVALID(bcid4_AWVALID),
    .m_axi_bcid4_AWREADY(bcid4_AWREADY),
    .m_axi_bcid4_AWADDR(bcid4_AWADDR),
    .m_axi_bcid4_AWID(bcid4_AWID),
    .m_axi_bcid4_AWLEN(bcid4_AWLEN),
    .m_axi_bcid4_AWSIZE(bcid4_AWSIZE),
    .m_axi_bcid4_AWBURST(bcid4_AWBURST),
    .m_axi_bcid4_AWLOCK(bcid4_AWLOCK),
    .m_axi_bcid4_AWCACHE(bcid4_AWCACHE),
    .m_axi_bcid4_AWPROT(bcid4_AWPROT),
    .m_axi_bcid4_AWQOS(bcid4_AWQOS),
    .m_axi_bcid4_AWREGION(bcid4_AWREGION),
    .m_axi_bcid4_AWUSER(bcid4_AWUSER),
    .m_axi_bcid4_WVALID(bcid4_WVALID),
    .m_axi_bcid4_WREADY(bcid4_WREADY),
    .m_axi_bcid4_WDATA(bcid4_WDATA),
    .m_axi_bcid4_WSTRB(bcid4_WSTRB),
    .m_axi_bcid4_WLAST(bcid4_WLAST),
    .m_axi_bcid4_WID(bcid4_WID),
    .m_axi_bcid4_WUSER(bcid4_WUSER),
    .m_axi_bcid4_ARVALID(bcid4_ARVALID),
    .m_axi_bcid4_ARREADY(bcid4_ARREADY),
    .m_axi_bcid4_ARADDR(bcid4_ARADDR),
    .m_axi_bcid4_ARID(bcid4_ARID),
    .m_axi_bcid4_ARLEN(bcid4_ARLEN),
    .m_axi_bcid4_ARSIZE(bcid4_ARSIZE),
    .m_axi_bcid4_ARBURST(bcid4_ARBURST),
    .m_axi_bcid4_ARLOCK(bcid4_ARLOCK),
    .m_axi_bcid4_ARCACHE(bcid4_ARCACHE),
    .m_axi_bcid4_ARPROT(bcid4_ARPROT),
    .m_axi_bcid4_ARQOS(bcid4_ARQOS),
    .m_axi_bcid4_ARREGION(bcid4_ARREGION),
    .m_axi_bcid4_ARUSER(bcid4_ARUSER),
    .m_axi_bcid4_RVALID(bcid4_RVALID),
    .m_axi_bcid4_RREADY(bcid4_RREADY),
    .m_axi_bcid4_RDATA(bcid4_RDATA),
    .m_axi_bcid4_RLAST(bcid4_RLAST),
    .m_axi_bcid4_RID(bcid4_RID),
    .m_axi_bcid4_RUSER(bcid4_RUSER),
    .m_axi_bcid4_RRESP(bcid4_RRESP),
    .m_axi_bcid4_BVALID(bcid4_BVALID),
    .m_axi_bcid4_BREADY(bcid4_BREADY),
    .m_axi_bcid4_BRESP(bcid4_BRESP),
    .m_axi_bcid4_BID(bcid4_BID),
    .m_axi_bcid4_BUSER(bcid4_BUSER),
    .m_axi_brcsr1_AWVALID(brcsr1_AWVALID),
    .m_axi_brcsr1_AWREADY(brcsr1_AWREADY),
    .m_axi_brcsr1_AWADDR(brcsr1_AWADDR),
    .m_axi_brcsr1_AWID(brcsr1_AWID),
    .m_axi_brcsr1_AWLEN(brcsr1_AWLEN),
    .m_axi_brcsr1_AWSIZE(brcsr1_AWSIZE),
    .m_axi_brcsr1_AWBURST(brcsr1_AWBURST),
    .m_axi_brcsr1_AWLOCK(brcsr1_AWLOCK),
    .m_axi_brcsr1_AWCACHE(brcsr1_AWCACHE),
    .m_axi_brcsr1_AWPROT(brcsr1_AWPROT),
    .m_axi_brcsr1_AWQOS(brcsr1_AWQOS),
    .m_axi_brcsr1_AWREGION(brcsr1_AWREGION),
    .m_axi_brcsr1_AWUSER(brcsr1_AWUSER),
    .m_axi_brcsr1_WVALID(brcsr1_WVALID),
    .m_axi_brcsr1_WREADY(brcsr1_WREADY),
    .m_axi_brcsr1_WDATA(brcsr1_WDATA),
    .m_axi_brcsr1_WSTRB(brcsr1_WSTRB),
    .m_axi_brcsr1_WLAST(brcsr1_WLAST),
    .m_axi_brcsr1_WID(brcsr1_WID),
    .m_axi_brcsr1_WUSER(brcsr1_WUSER),
    .m_axi_brcsr1_ARVALID(brcsr1_ARVALID),
    .m_axi_brcsr1_ARREADY(brcsr1_ARREADY),
    .m_axi_brcsr1_ARADDR(brcsr1_ARADDR),
    .m_axi_brcsr1_ARID(brcsr1_ARID),
    .m_axi_brcsr1_ARLEN(brcsr1_ARLEN),
    .m_axi_brcsr1_ARSIZE(brcsr1_ARSIZE),
    .m_axi_brcsr1_ARBURST(brcsr1_ARBURST),
    .m_axi_brcsr1_ARLOCK(brcsr1_ARLOCK),
    .m_axi_brcsr1_ARCACHE(brcsr1_ARCACHE),
    .m_axi_brcsr1_ARPROT(brcsr1_ARPROT),
    .m_axi_brcsr1_ARQOS(brcsr1_ARQOS),
    .m_axi_brcsr1_ARREGION(brcsr1_ARREGION),
    .m_axi_brcsr1_ARUSER(brcsr1_ARUSER),
    .m_axi_brcsr1_RVALID(brcsr1_RVALID),
    .m_axi_brcsr1_RREADY(brcsr1_RREADY),
    .m_axi_brcsr1_RDATA(brcsr1_RDATA),
    .m_axi_brcsr1_RLAST(brcsr1_RLAST),
    .m_axi_brcsr1_RID(brcsr1_RID),
    .m_axi_brcsr1_RUSER(brcsr1_RUSER),
    .m_axi_brcsr1_RRESP(brcsr1_RRESP),
    .m_axi_brcsr1_BVALID(brcsr1_BVALID),
    .m_axi_brcsr1_BREADY(brcsr1_BREADY),
    .m_axi_brcsr1_BRESP(brcsr1_BRESP),
    .m_axi_brcsr1_BID(brcsr1_BID),
    .m_axi_brcsr1_BUSER(brcsr1_BUSER),
    .m_axi_brcsr2_AWVALID(brcsr2_AWVALID),
    .m_axi_brcsr2_AWREADY(brcsr2_AWREADY),
    .m_axi_brcsr2_AWADDR(brcsr2_AWADDR),
    .m_axi_brcsr2_AWID(brcsr2_AWID),
    .m_axi_brcsr2_AWLEN(brcsr2_AWLEN),
    .m_axi_brcsr2_AWSIZE(brcsr2_AWSIZE),
    .m_axi_brcsr2_AWBURST(brcsr2_AWBURST),
    .m_axi_brcsr2_AWLOCK(brcsr2_AWLOCK),
    .m_axi_brcsr2_AWCACHE(brcsr2_AWCACHE),
    .m_axi_brcsr2_AWPROT(brcsr2_AWPROT),
    .m_axi_brcsr2_AWQOS(brcsr2_AWQOS),
    .m_axi_brcsr2_AWREGION(brcsr2_AWREGION),
    .m_axi_brcsr2_AWUSER(brcsr2_AWUSER),
    .m_axi_brcsr2_WVALID(brcsr2_WVALID),
    .m_axi_brcsr2_WREADY(brcsr2_WREADY),
    .m_axi_brcsr2_WDATA(brcsr2_WDATA),
    .m_axi_brcsr2_WSTRB(brcsr2_WSTRB),
    .m_axi_brcsr2_WLAST(brcsr2_WLAST),
    .m_axi_brcsr2_WID(brcsr2_WID),
    .m_axi_brcsr2_WUSER(brcsr2_WUSER),
    .m_axi_brcsr2_ARVALID(brcsr2_ARVALID),
    .m_axi_brcsr2_ARREADY(brcsr2_ARREADY),
    .m_axi_brcsr2_ARADDR(brcsr2_ARADDR),
    .m_axi_brcsr2_ARID(brcsr2_ARID),
    .m_axi_brcsr2_ARLEN(brcsr2_ARLEN),
    .m_axi_brcsr2_ARSIZE(brcsr2_ARSIZE),
    .m_axi_brcsr2_ARBURST(brcsr2_ARBURST),
    .m_axi_brcsr2_ARLOCK(brcsr2_ARLOCK),
    .m_axi_brcsr2_ARCACHE(brcsr2_ARCACHE),
    .m_axi_brcsr2_ARPROT(brcsr2_ARPROT),
    .m_axi_brcsr2_ARQOS(brcsr2_ARQOS),
    .m_axi_brcsr2_ARREGION(brcsr2_ARREGION),
    .m_axi_brcsr2_ARUSER(brcsr2_ARUSER),
    .m_axi_brcsr2_RVALID(brcsr2_RVALID),
    .m_axi_brcsr2_RREADY(brcsr2_RREADY),
    .m_axi_brcsr2_RDATA(brcsr2_RDATA),
    .m_axi_brcsr2_RLAST(brcsr2_RLAST),
    .m_axi_brcsr2_RID(brcsr2_RID),
    .m_axi_brcsr2_RUSER(brcsr2_RUSER),
    .m_axi_brcsr2_RRESP(brcsr2_RRESP),
    .m_axi_brcsr2_BVALID(brcsr2_BVALID),
    .m_axi_brcsr2_BREADY(brcsr2_BREADY),
    .m_axi_brcsr2_BRESP(brcsr2_BRESP),
    .m_axi_brcsr2_BID(brcsr2_BID),
    .m_axi_brcsr2_BUSER(brcsr2_BUSER),
    .m_axi_brcsr3_AWVALID(brcsr3_AWVALID),
    .m_axi_brcsr3_AWREADY(brcsr3_AWREADY),
    .m_axi_brcsr3_AWADDR(brcsr3_AWADDR),
    .m_axi_brcsr3_AWID(brcsr3_AWID),
    .m_axi_brcsr3_AWLEN(brcsr3_AWLEN),
    .m_axi_brcsr3_AWSIZE(brcsr3_AWSIZE),
    .m_axi_brcsr3_AWBURST(brcsr3_AWBURST),
    .m_axi_brcsr3_AWLOCK(brcsr3_AWLOCK),
    .m_axi_brcsr3_AWCACHE(brcsr3_AWCACHE),
    .m_axi_brcsr3_AWPROT(brcsr3_AWPROT),
    .m_axi_brcsr3_AWQOS(brcsr3_AWQOS),
    .m_axi_brcsr3_AWREGION(brcsr3_AWREGION),
    .m_axi_brcsr3_AWUSER(brcsr3_AWUSER),
    .m_axi_brcsr3_WVALID(brcsr3_WVALID),
    .m_axi_brcsr3_WREADY(brcsr3_WREADY),
    .m_axi_brcsr3_WDATA(brcsr3_WDATA),
    .m_axi_brcsr3_WSTRB(brcsr3_WSTRB),
    .m_axi_brcsr3_WLAST(brcsr3_WLAST),
    .m_axi_brcsr3_WID(brcsr3_WID),
    .m_axi_brcsr3_WUSER(brcsr3_WUSER),
    .m_axi_brcsr3_ARVALID(brcsr3_ARVALID),
    .m_axi_brcsr3_ARREADY(brcsr3_ARREADY),
    .m_axi_brcsr3_ARADDR(brcsr3_ARADDR),
    .m_axi_brcsr3_ARID(brcsr3_ARID),
    .m_axi_brcsr3_ARLEN(brcsr3_ARLEN),
    .m_axi_brcsr3_ARSIZE(brcsr3_ARSIZE),
    .m_axi_brcsr3_ARBURST(brcsr3_ARBURST),
    .m_axi_brcsr3_ARLOCK(brcsr3_ARLOCK),
    .m_axi_brcsr3_ARCACHE(brcsr3_ARCACHE),
    .m_axi_brcsr3_ARPROT(brcsr3_ARPROT),
    .m_axi_brcsr3_ARQOS(brcsr3_ARQOS),
    .m_axi_brcsr3_ARREGION(brcsr3_ARREGION),
    .m_axi_brcsr3_ARUSER(brcsr3_ARUSER),
    .m_axi_brcsr3_RVALID(brcsr3_RVALID),
    .m_axi_brcsr3_RREADY(brcsr3_RREADY),
    .m_axi_brcsr3_RDATA(brcsr3_RDATA),
    .m_axi_brcsr3_RLAST(brcsr3_RLAST),
    .m_axi_brcsr3_RID(brcsr3_RID),
    .m_axi_brcsr3_RUSER(brcsr3_RUSER),
    .m_axi_brcsr3_RRESP(brcsr3_RRESP),
    .m_axi_brcsr3_BVALID(brcsr3_BVALID),
    .m_axi_brcsr3_BREADY(brcsr3_BREADY),
    .m_axi_brcsr3_BRESP(brcsr3_BRESP),
    .m_axi_brcsr3_BID(brcsr3_BID),
    .m_axi_brcsr3_BUSER(brcsr3_BUSER),
    .m_axi_brcsr4_AWVALID(brcsr4_AWVALID),
    .m_axi_brcsr4_AWREADY(brcsr4_AWREADY),
    .m_axi_brcsr4_AWADDR(brcsr4_AWADDR),
    .m_axi_brcsr4_AWID(brcsr4_AWID),
    .m_axi_brcsr4_AWLEN(brcsr4_AWLEN),
    .m_axi_brcsr4_AWSIZE(brcsr4_AWSIZE),
    .m_axi_brcsr4_AWBURST(brcsr4_AWBURST),
    .m_axi_brcsr4_AWLOCK(brcsr4_AWLOCK),
    .m_axi_brcsr4_AWCACHE(brcsr4_AWCACHE),
    .m_axi_brcsr4_AWPROT(brcsr4_AWPROT),
    .m_axi_brcsr4_AWQOS(brcsr4_AWQOS),
    .m_axi_brcsr4_AWREGION(brcsr4_AWREGION),
    .m_axi_brcsr4_AWUSER(brcsr4_AWUSER),
    .m_axi_brcsr4_WVALID(brcsr4_WVALID),
    .m_axi_brcsr4_WREADY(brcsr4_WREADY),
    .m_axi_brcsr4_WDATA(brcsr4_WDATA),
    .m_axi_brcsr4_WSTRB(brcsr4_WSTRB),
    .m_axi_brcsr4_WLAST(brcsr4_WLAST),
    .m_axi_brcsr4_WID(brcsr4_WID),
    .m_axi_brcsr4_WUSER(brcsr4_WUSER),
    .m_axi_brcsr4_ARVALID(brcsr4_ARVALID),
    .m_axi_brcsr4_ARREADY(brcsr4_ARREADY),
    .m_axi_brcsr4_ARADDR(brcsr4_ARADDR),
    .m_axi_brcsr4_ARID(brcsr4_ARID),
    .m_axi_brcsr4_ARLEN(brcsr4_ARLEN),
    .m_axi_brcsr4_ARSIZE(brcsr4_ARSIZE),
    .m_axi_brcsr4_ARBURST(brcsr4_ARBURST),
    .m_axi_brcsr4_ARLOCK(brcsr4_ARLOCK),
    .m_axi_brcsr4_ARCACHE(brcsr4_ARCACHE),
    .m_axi_brcsr4_ARPROT(brcsr4_ARPROT),
    .m_axi_brcsr4_ARQOS(brcsr4_ARQOS),
    .m_axi_brcsr4_ARREGION(brcsr4_ARREGION),
    .m_axi_brcsr4_ARUSER(brcsr4_ARUSER),
    .m_axi_brcsr4_RVALID(brcsr4_RVALID),
    .m_axi_brcsr4_RREADY(brcsr4_RREADY),
    .m_axi_brcsr4_RDATA(brcsr4_RDATA),
    .m_axi_brcsr4_RLAST(brcsr4_RLAST),
    .m_axi_brcsr4_RID(brcsr4_RID),
    .m_axi_brcsr4_RUSER(brcsr4_RUSER),
    .m_axi_brcsr4_RRESP(brcsr4_RRESP),
    .m_axi_brcsr4_BVALID(brcsr4_BVALID),
    .m_axi_brcsr4_BREADY(brcsr4_BREADY),
    .m_axi_brcsr4_BRESP(brcsr4_BRESP),
    .m_axi_brcsr4_BID(brcsr4_BID),
    .m_axi_brcsr4_BUSER(brcsr4_BUSER),
    .m_axi_bv1_AWVALID(bv1_AWVALID),
    .m_axi_bv1_AWREADY(bv1_AWREADY),
    .m_axi_bv1_AWADDR(bv1_AWADDR),
    .m_axi_bv1_AWID(bv1_AWID),
    .m_axi_bv1_AWLEN(bv1_AWLEN),
    .m_axi_bv1_AWSIZE(bv1_AWSIZE),
    .m_axi_bv1_AWBURST(bv1_AWBURST),
    .m_axi_bv1_AWLOCK(bv1_AWLOCK),
    .m_axi_bv1_AWCACHE(bv1_AWCACHE),
    .m_axi_bv1_AWPROT(bv1_AWPROT),
    .m_axi_bv1_AWQOS(bv1_AWQOS),
    .m_axi_bv1_AWREGION(bv1_AWREGION),
    .m_axi_bv1_AWUSER(bv1_AWUSER),
    .m_axi_bv1_WVALID(bv1_WVALID),
    .m_axi_bv1_WREADY(bv1_WREADY),
    .m_axi_bv1_WDATA(bv1_WDATA),
    .m_axi_bv1_WSTRB(bv1_WSTRB),
    .m_axi_bv1_WLAST(bv1_WLAST),
    .m_axi_bv1_WID(bv1_WID),
    .m_axi_bv1_WUSER(bv1_WUSER),
    .m_axi_bv1_ARVALID(bv1_ARVALID),
    .m_axi_bv1_ARREADY(bv1_ARREADY),
    .m_axi_bv1_ARADDR(bv1_ARADDR),
    .m_axi_bv1_ARID(bv1_ARID),
    .m_axi_bv1_ARLEN(bv1_ARLEN),
    .m_axi_bv1_ARSIZE(bv1_ARSIZE),
    .m_axi_bv1_ARBURST(bv1_ARBURST),
    .m_axi_bv1_ARLOCK(bv1_ARLOCK),
    .m_axi_bv1_ARCACHE(bv1_ARCACHE),
    .m_axi_bv1_ARPROT(bv1_ARPROT),
    .m_axi_bv1_ARQOS(bv1_ARQOS),
    .m_axi_bv1_ARREGION(bv1_ARREGION),
    .m_axi_bv1_ARUSER(bv1_ARUSER),
    .m_axi_bv1_RVALID(bv1_RVALID),
    .m_axi_bv1_RREADY(bv1_RREADY),
    .m_axi_bv1_RDATA(bv1_RDATA),
    .m_axi_bv1_RLAST(bv1_RLAST),
    .m_axi_bv1_RID(bv1_RID),
    .m_axi_bv1_RUSER(bv1_RUSER),
    .m_axi_bv1_RRESP(bv1_RRESP),
    .m_axi_bv1_BVALID(bv1_BVALID),
    .m_axi_bv1_BREADY(bv1_BREADY),
    .m_axi_bv1_BRESP(bv1_BRESP),
    .m_axi_bv1_BID(bv1_BID),
    .m_axi_bv1_BUSER(bv1_BUSER),
    .m_axi_bv2_AWVALID(bv2_AWVALID),
    .m_axi_bv2_AWREADY(bv2_AWREADY),
    .m_axi_bv2_AWADDR(bv2_AWADDR),
    .m_axi_bv2_AWID(bv2_AWID),
    .m_axi_bv2_AWLEN(bv2_AWLEN),
    .m_axi_bv2_AWSIZE(bv2_AWSIZE),
    .m_axi_bv2_AWBURST(bv2_AWBURST),
    .m_axi_bv2_AWLOCK(bv2_AWLOCK),
    .m_axi_bv2_AWCACHE(bv2_AWCACHE),
    .m_axi_bv2_AWPROT(bv2_AWPROT),
    .m_axi_bv2_AWQOS(bv2_AWQOS),
    .m_axi_bv2_AWREGION(bv2_AWREGION),
    .m_axi_bv2_AWUSER(bv2_AWUSER),
    .m_axi_bv2_WVALID(bv2_WVALID),
    .m_axi_bv2_WREADY(bv2_WREADY),
    .m_axi_bv2_WDATA(bv2_WDATA),
    .m_axi_bv2_WSTRB(bv2_WSTRB),
    .m_axi_bv2_WLAST(bv2_WLAST),
    .m_axi_bv2_WID(bv2_WID),
    .m_axi_bv2_WUSER(bv2_WUSER),
    .m_axi_bv2_ARVALID(bv2_ARVALID),
    .m_axi_bv2_ARREADY(bv2_ARREADY),
    .m_axi_bv2_ARADDR(bv2_ARADDR),
    .m_axi_bv2_ARID(bv2_ARID),
    .m_axi_bv2_ARLEN(bv2_ARLEN),
    .m_axi_bv2_ARSIZE(bv2_ARSIZE),
    .m_axi_bv2_ARBURST(bv2_ARBURST),
    .m_axi_bv2_ARLOCK(bv2_ARLOCK),
    .m_axi_bv2_ARCACHE(bv2_ARCACHE),
    .m_axi_bv2_ARPROT(bv2_ARPROT),
    .m_axi_bv2_ARQOS(bv2_ARQOS),
    .m_axi_bv2_ARREGION(bv2_ARREGION),
    .m_axi_bv2_ARUSER(bv2_ARUSER),
    .m_axi_bv2_RVALID(bv2_RVALID),
    .m_axi_bv2_RREADY(bv2_RREADY),
    .m_axi_bv2_RDATA(bv2_RDATA),
    .m_axi_bv2_RLAST(bv2_RLAST),
    .m_axi_bv2_RID(bv2_RID),
    .m_axi_bv2_RUSER(bv2_RUSER),
    .m_axi_bv2_RRESP(bv2_RRESP),
    .m_axi_bv2_BVALID(bv2_BVALID),
    .m_axi_bv2_BREADY(bv2_BREADY),
    .m_axi_bv2_BRESP(bv2_BRESP),
    .m_axi_bv2_BID(bv2_BID),
    .m_axi_bv2_BUSER(bv2_BUSER),
    .m_axi_bv3_AWVALID(bv3_AWVALID),
    .m_axi_bv3_AWREADY(bv3_AWREADY),
    .m_axi_bv3_AWADDR(bv3_AWADDR),
    .m_axi_bv3_AWID(bv3_AWID),
    .m_axi_bv3_AWLEN(bv3_AWLEN),
    .m_axi_bv3_AWSIZE(bv3_AWSIZE),
    .m_axi_bv3_AWBURST(bv3_AWBURST),
    .m_axi_bv3_AWLOCK(bv3_AWLOCK),
    .m_axi_bv3_AWCACHE(bv3_AWCACHE),
    .m_axi_bv3_AWPROT(bv3_AWPROT),
    .m_axi_bv3_AWQOS(bv3_AWQOS),
    .m_axi_bv3_AWREGION(bv3_AWREGION),
    .m_axi_bv3_AWUSER(bv3_AWUSER),
    .m_axi_bv3_WVALID(bv3_WVALID),
    .m_axi_bv3_WREADY(bv3_WREADY),
    .m_axi_bv3_WDATA(bv3_WDATA),
    .m_axi_bv3_WSTRB(bv3_WSTRB),
    .m_axi_bv3_WLAST(bv3_WLAST),
    .m_axi_bv3_WID(bv3_WID),
    .m_axi_bv3_WUSER(bv3_WUSER),
    .m_axi_bv3_ARVALID(bv3_ARVALID),
    .m_axi_bv3_ARREADY(bv3_ARREADY),
    .m_axi_bv3_ARADDR(bv3_ARADDR),
    .m_axi_bv3_ARID(bv3_ARID),
    .m_axi_bv3_ARLEN(bv3_ARLEN),
    .m_axi_bv3_ARSIZE(bv3_ARSIZE),
    .m_axi_bv3_ARBURST(bv3_ARBURST),
    .m_axi_bv3_ARLOCK(bv3_ARLOCK),
    .m_axi_bv3_ARCACHE(bv3_ARCACHE),
    .m_axi_bv3_ARPROT(bv3_ARPROT),
    .m_axi_bv3_ARQOS(bv3_ARQOS),
    .m_axi_bv3_ARREGION(bv3_ARREGION),
    .m_axi_bv3_ARUSER(bv3_ARUSER),
    .m_axi_bv3_RVALID(bv3_RVALID),
    .m_axi_bv3_RREADY(bv3_RREADY),
    .m_axi_bv3_RDATA(bv3_RDATA),
    .m_axi_bv3_RLAST(bv3_RLAST),
    .m_axi_bv3_RID(bv3_RID),
    .m_axi_bv3_RUSER(bv3_RUSER),
    .m_axi_bv3_RRESP(bv3_RRESP),
    .m_axi_bv3_BVALID(bv3_BVALID),
    .m_axi_bv3_BREADY(bv3_BREADY),
    .m_axi_bv3_BRESP(bv3_BRESP),
    .m_axi_bv3_BID(bv3_BID),
    .m_axi_bv3_BUSER(bv3_BUSER),
    .m_axi_bv4_AWVALID(bv4_AWVALID),
    .m_axi_bv4_AWREADY(bv4_AWREADY),
    .m_axi_bv4_AWADDR(bv4_AWADDR),
    .m_axi_bv4_AWID(bv4_AWID),
    .m_axi_bv4_AWLEN(bv4_AWLEN),
    .m_axi_bv4_AWSIZE(bv4_AWSIZE),
    .m_axi_bv4_AWBURST(bv4_AWBURST),
    .m_axi_bv4_AWLOCK(bv4_AWLOCK),
    .m_axi_bv4_AWCACHE(bv4_AWCACHE),
    .m_axi_bv4_AWPROT(bv4_AWPROT),
    .m_axi_bv4_AWQOS(bv4_AWQOS),
    .m_axi_bv4_AWREGION(bv4_AWREGION),
    .m_axi_bv4_AWUSER(bv4_AWUSER),
    .m_axi_bv4_WVALID(bv4_WVALID),
    .m_axi_bv4_WREADY(bv4_WREADY),
    .m_axi_bv4_WDATA(bv4_WDATA),
    .m_axi_bv4_WSTRB(bv4_WSTRB),
    .m_axi_bv4_WLAST(bv4_WLAST),
    .m_axi_bv4_WID(bv4_WID),
    .m_axi_bv4_WUSER(bv4_WUSER),
    .m_axi_bv4_ARVALID(bv4_ARVALID),
    .m_axi_bv4_ARREADY(bv4_ARREADY),
    .m_axi_bv4_ARADDR(bv4_ARADDR),
    .m_axi_bv4_ARID(bv4_ARID),
    .m_axi_bv4_ARLEN(bv4_ARLEN),
    .m_axi_bv4_ARSIZE(bv4_ARSIZE),
    .m_axi_bv4_ARBURST(bv4_ARBURST),
    .m_axi_bv4_ARLOCK(bv4_ARLOCK),
    .m_axi_bv4_ARCACHE(bv4_ARCACHE),
    .m_axi_bv4_ARPROT(bv4_ARPROT),
    .m_axi_bv4_ARQOS(bv4_ARQOS),
    .m_axi_bv4_ARREGION(bv4_ARREGION),
    .m_axi_bv4_ARUSER(bv4_ARUSER),
    .m_axi_bv4_RVALID(bv4_RVALID),
    .m_axi_bv4_RREADY(bv4_RREADY),
    .m_axi_bv4_RDATA(bv4_RDATA),
    .m_axi_bv4_RLAST(bv4_RLAST),
    .m_axi_bv4_RID(bv4_RID),
    .m_axi_bv4_RUSER(bv4_RUSER),
    .m_axi_bv4_RRESP(bv4_RRESP),
    .m_axi_bv4_BVALID(bv4_BVALID),
    .m_axi_bv4_BREADY(bv4_BREADY),
    .m_axi_bv4_BRESP(bv4_BRESP),
    .m_axi_bv4_BID(bv4_BID),
    .m_axi_bv4_BUSER(bv4_BUSER),
    .m_axi_bval1_AWVALID(bval1_AWVALID),
    .m_axi_bval1_AWREADY(bval1_AWREADY),
    .m_axi_bval1_AWADDR(bval1_AWADDR),
    .m_axi_bval1_AWID(bval1_AWID),
    .m_axi_bval1_AWLEN(bval1_AWLEN),
    .m_axi_bval1_AWSIZE(bval1_AWSIZE),
    .m_axi_bval1_AWBURST(bval1_AWBURST),
    .m_axi_bval1_AWLOCK(bval1_AWLOCK),
    .m_axi_bval1_AWCACHE(bval1_AWCACHE),
    .m_axi_bval1_AWPROT(bval1_AWPROT),
    .m_axi_bval1_AWQOS(bval1_AWQOS),
    .m_axi_bval1_AWREGION(bval1_AWREGION),
    .m_axi_bval1_AWUSER(bval1_AWUSER),
    .m_axi_bval1_WVALID(bval1_WVALID),
    .m_axi_bval1_WREADY(bval1_WREADY),
    .m_axi_bval1_WDATA(bval1_WDATA),
    .m_axi_bval1_WSTRB(bval1_WSTRB),
    .m_axi_bval1_WLAST(bval1_WLAST),
    .m_axi_bval1_WID(bval1_WID),
    .m_axi_bval1_WUSER(bval1_WUSER),
    .m_axi_bval1_ARVALID(bval1_ARVALID),
    .m_axi_bval1_ARREADY(bval1_ARREADY),
    .m_axi_bval1_ARADDR(bval1_ARADDR),
    .m_axi_bval1_ARID(bval1_ARID),
    .m_axi_bval1_ARLEN(bval1_ARLEN),
    .m_axi_bval1_ARSIZE(bval1_ARSIZE),
    .m_axi_bval1_ARBURST(bval1_ARBURST),
    .m_axi_bval1_ARLOCK(bval1_ARLOCK),
    .m_axi_bval1_ARCACHE(bval1_ARCACHE),
    .m_axi_bval1_ARPROT(bval1_ARPROT),
    .m_axi_bval1_ARQOS(bval1_ARQOS),
    .m_axi_bval1_ARREGION(bval1_ARREGION),
    .m_axi_bval1_ARUSER(bval1_ARUSER),
    .m_axi_bval1_RVALID(bval1_RVALID),
    .m_axi_bval1_RREADY(bval1_RREADY),
    .m_axi_bval1_RDATA(bval1_RDATA),
    .m_axi_bval1_RLAST(bval1_RLAST),
    .m_axi_bval1_RID(bval1_RID),
    .m_axi_bval1_RUSER(bval1_RUSER),
    .m_axi_bval1_RRESP(bval1_RRESP),
    .m_axi_bval1_BVALID(bval1_BVALID),
    .m_axi_bval1_BREADY(bval1_BREADY),
    .m_axi_bval1_BRESP(bval1_BRESP),
    .m_axi_bval1_BID(bval1_BID),
    .m_axi_bval1_BUSER(bval1_BUSER),
    .m_axi_bval2_AWVALID(bval2_AWVALID),
    .m_axi_bval2_AWREADY(bval2_AWREADY),
    .m_axi_bval2_AWADDR(bval2_AWADDR),
    .m_axi_bval2_AWID(bval2_AWID),
    .m_axi_bval2_AWLEN(bval2_AWLEN),
    .m_axi_bval2_AWSIZE(bval2_AWSIZE),
    .m_axi_bval2_AWBURST(bval2_AWBURST),
    .m_axi_bval2_AWLOCK(bval2_AWLOCK),
    .m_axi_bval2_AWCACHE(bval2_AWCACHE),
    .m_axi_bval2_AWPROT(bval2_AWPROT),
    .m_axi_bval2_AWQOS(bval2_AWQOS),
    .m_axi_bval2_AWREGION(bval2_AWREGION),
    .m_axi_bval2_AWUSER(bval2_AWUSER),
    .m_axi_bval2_WVALID(bval2_WVALID),
    .m_axi_bval2_WREADY(bval2_WREADY),
    .m_axi_bval2_WDATA(bval2_WDATA),
    .m_axi_bval2_WSTRB(bval2_WSTRB),
    .m_axi_bval2_WLAST(bval2_WLAST),
    .m_axi_bval2_WID(bval2_WID),
    .m_axi_bval2_WUSER(bval2_WUSER),
    .m_axi_bval2_ARVALID(bval2_ARVALID),
    .m_axi_bval2_ARREADY(bval2_ARREADY),
    .m_axi_bval2_ARADDR(bval2_ARADDR),
    .m_axi_bval2_ARID(bval2_ARID),
    .m_axi_bval2_ARLEN(bval2_ARLEN),
    .m_axi_bval2_ARSIZE(bval2_ARSIZE),
    .m_axi_bval2_ARBURST(bval2_ARBURST),
    .m_axi_bval2_ARLOCK(bval2_ARLOCK),
    .m_axi_bval2_ARCACHE(bval2_ARCACHE),
    .m_axi_bval2_ARPROT(bval2_ARPROT),
    .m_axi_bval2_ARQOS(bval2_ARQOS),
    .m_axi_bval2_ARREGION(bval2_ARREGION),
    .m_axi_bval2_ARUSER(bval2_ARUSER),
    .m_axi_bval2_RVALID(bval2_RVALID),
    .m_axi_bval2_RREADY(bval2_RREADY),
    .m_axi_bval2_RDATA(bval2_RDATA),
    .m_axi_bval2_RLAST(bval2_RLAST),
    .m_axi_bval2_RID(bval2_RID),
    .m_axi_bval2_RUSER(bval2_RUSER),
    .m_axi_bval2_RRESP(bval2_RRESP),
    .m_axi_bval2_BVALID(bval2_BVALID),
    .m_axi_bval2_BREADY(bval2_BREADY),
    .m_axi_bval2_BRESP(bval2_BRESP),
    .m_axi_bval2_BID(bval2_BID),
    .m_axi_bval2_BUSER(bval2_BUSER),
    .m_axi_bval3_AWVALID(bval3_AWVALID),
    .m_axi_bval3_AWREADY(bval3_AWREADY),
    .m_axi_bval3_AWADDR(bval3_AWADDR),
    .m_axi_bval3_AWID(bval3_AWID),
    .m_axi_bval3_AWLEN(bval3_AWLEN),
    .m_axi_bval3_AWSIZE(bval3_AWSIZE),
    .m_axi_bval3_AWBURST(bval3_AWBURST),
    .m_axi_bval3_AWLOCK(bval3_AWLOCK),
    .m_axi_bval3_AWCACHE(bval3_AWCACHE),
    .m_axi_bval3_AWPROT(bval3_AWPROT),
    .m_axi_bval3_AWQOS(bval3_AWQOS),
    .m_axi_bval3_AWREGION(bval3_AWREGION),
    .m_axi_bval3_AWUSER(bval3_AWUSER),
    .m_axi_bval3_WVALID(bval3_WVALID),
    .m_axi_bval3_WREADY(bval3_WREADY),
    .m_axi_bval3_WDATA(bval3_WDATA),
    .m_axi_bval3_WSTRB(bval3_WSTRB),
    .m_axi_bval3_WLAST(bval3_WLAST),
    .m_axi_bval3_WID(bval3_WID),
    .m_axi_bval3_WUSER(bval3_WUSER),
    .m_axi_bval3_ARVALID(bval3_ARVALID),
    .m_axi_bval3_ARREADY(bval3_ARREADY),
    .m_axi_bval3_ARADDR(bval3_ARADDR),
    .m_axi_bval3_ARID(bval3_ARID),
    .m_axi_bval3_ARLEN(bval3_ARLEN),
    .m_axi_bval3_ARSIZE(bval3_ARSIZE),
    .m_axi_bval3_ARBURST(bval3_ARBURST),
    .m_axi_bval3_ARLOCK(bval3_ARLOCK),
    .m_axi_bval3_ARCACHE(bval3_ARCACHE),
    .m_axi_bval3_ARPROT(bval3_ARPROT),
    .m_axi_bval3_ARQOS(bval3_ARQOS),
    .m_axi_bval3_ARREGION(bval3_ARREGION),
    .m_axi_bval3_ARUSER(bval3_ARUSER),
    .m_axi_bval3_RVALID(bval3_RVALID),
    .m_axi_bval3_RREADY(bval3_RREADY),
    .m_axi_bval3_RDATA(bval3_RDATA),
    .m_axi_bval3_RLAST(bval3_RLAST),
    .m_axi_bval3_RID(bval3_RID),
    .m_axi_bval3_RUSER(bval3_RUSER),
    .m_axi_bval3_RRESP(bval3_RRESP),
    .m_axi_bval3_BVALID(bval3_BVALID),
    .m_axi_bval3_BREADY(bval3_BREADY),
    .m_axi_bval3_BRESP(bval3_BRESP),
    .m_axi_bval3_BID(bval3_BID),
    .m_axi_bval3_BUSER(bval3_BUSER),
    .m_axi_bval4_AWVALID(bval4_AWVALID),
    .m_axi_bval4_AWREADY(bval4_AWREADY),
    .m_axi_bval4_AWADDR(bval4_AWADDR),
    .m_axi_bval4_AWID(bval4_AWID),
    .m_axi_bval4_AWLEN(bval4_AWLEN),
    .m_axi_bval4_AWSIZE(bval4_AWSIZE),
    .m_axi_bval4_AWBURST(bval4_AWBURST),
    .m_axi_bval4_AWLOCK(bval4_AWLOCK),
    .m_axi_bval4_AWCACHE(bval4_AWCACHE),
    .m_axi_bval4_AWPROT(bval4_AWPROT),
    .m_axi_bval4_AWQOS(bval4_AWQOS),
    .m_axi_bval4_AWREGION(bval4_AWREGION),
    .m_axi_bval4_AWUSER(bval4_AWUSER),
    .m_axi_bval4_WVALID(bval4_WVALID),
    .m_axi_bval4_WREADY(bval4_WREADY),
    .m_axi_bval4_WDATA(bval4_WDATA),
    .m_axi_bval4_WSTRB(bval4_WSTRB),
    .m_axi_bval4_WLAST(bval4_WLAST),
    .m_axi_bval4_WID(bval4_WID),
    .m_axi_bval4_WUSER(bval4_WUSER),
    .m_axi_bval4_ARVALID(bval4_ARVALID),
    .m_axi_bval4_ARREADY(bval4_ARREADY),
    .m_axi_bval4_ARADDR(bval4_ARADDR),
    .m_axi_bval4_ARID(bval4_ARID),
    .m_axi_bval4_ARLEN(bval4_ARLEN),
    .m_axi_bval4_ARSIZE(bval4_ARSIZE),
    .m_axi_bval4_ARBURST(bval4_ARBURST),
    .m_axi_bval4_ARLOCK(bval4_ARLOCK),
    .m_axi_bval4_ARCACHE(bval4_ARCACHE),
    .m_axi_bval4_ARPROT(bval4_ARPROT),
    .m_axi_bval4_ARQOS(bval4_ARQOS),
    .m_axi_bval4_ARREGION(bval4_ARREGION),
    .m_axi_bval4_ARUSER(bval4_ARUSER),
    .m_axi_bval4_RVALID(bval4_RVALID),
    .m_axi_bval4_RREADY(bval4_RREADY),
    .m_axi_bval4_RDATA(bval4_RDATA),
    .m_axi_bval4_RLAST(bval4_RLAST),
    .m_axi_bval4_RID(bval4_RID),
    .m_axi_bval4_RUSER(bval4_RUSER),
    .m_axi_bval4_RRESP(bval4_RRESP),
    .m_axi_bval4_BVALID(bval4_BVALID),
    .m_axi_bval4_BREADY(bval4_BREADY),
    .m_axi_bval4_BRESP(bval4_BRESP),
    .m_axi_bval4_BID(bval4_BID),
    .m_axi_bval4_BUSER(bval4_BUSER),
    .m_axi_ccid_AWVALID(ccid_AWVALID),
    .m_axi_ccid_AWREADY(ccid_AWREADY),
    .m_axi_ccid_AWADDR(ccid_AWADDR),
    .m_axi_ccid_AWID(ccid_AWID),
    .m_axi_ccid_AWLEN(ccid_AWLEN),
    .m_axi_ccid_AWSIZE(ccid_AWSIZE),
    .m_axi_ccid_AWBURST(ccid_AWBURST),
    .m_axi_ccid_AWLOCK(ccid_AWLOCK),
    .m_axi_ccid_AWCACHE(ccid_AWCACHE),
    .m_axi_ccid_AWPROT(ccid_AWPROT),
    .m_axi_ccid_AWQOS(ccid_AWQOS),
    .m_axi_ccid_AWREGION(ccid_AWREGION),
    .m_axi_ccid_AWUSER(ccid_AWUSER),
    .m_axi_ccid_WVALID(ccid_WVALID),
    .m_axi_ccid_WREADY(ccid_WREADY),
    .m_axi_ccid_WDATA(ccid_WDATA),
    .m_axi_ccid_WSTRB(ccid_WSTRB),
    .m_axi_ccid_WLAST(ccid_WLAST),
    .m_axi_ccid_WID(ccid_WID),
    .m_axi_ccid_WUSER(ccid_WUSER),
    .m_axi_ccid_ARVALID(ccid_ARVALID),
    .m_axi_ccid_ARREADY(ccid_ARREADY),
    .m_axi_ccid_ARADDR(ccid_ARADDR),
    .m_axi_ccid_ARID(ccid_ARID),
    .m_axi_ccid_ARLEN(ccid_ARLEN),
    .m_axi_ccid_ARSIZE(ccid_ARSIZE),
    .m_axi_ccid_ARBURST(ccid_ARBURST),
    .m_axi_ccid_ARLOCK(ccid_ARLOCK),
    .m_axi_ccid_ARCACHE(ccid_ARCACHE),
    .m_axi_ccid_ARPROT(ccid_ARPROT),
    .m_axi_ccid_ARQOS(ccid_ARQOS),
    .m_axi_ccid_ARREGION(ccid_ARREGION),
    .m_axi_ccid_ARUSER(ccid_ARUSER),
    .m_axi_ccid_RVALID(ccid_RVALID),
    .m_axi_ccid_RREADY(ccid_RREADY),
    .m_axi_ccid_RDATA(ccid_RDATA),
    .m_axi_ccid_RLAST(ccid_RLAST),
    .m_axi_ccid_RID(ccid_RID),
    .m_axi_ccid_RUSER(ccid_RUSER),
    .m_axi_ccid_RRESP(ccid_RRESP),
    .m_axi_ccid_BVALID(ccid_BVALID),
    .m_axi_ccid_BREADY(ccid_BREADY),
    .m_axi_ccid_BRESP(ccid_BRESP),
    .m_axi_ccid_BID(ccid_BID),
    .m_axi_ccid_BUSER(ccid_BUSER),
    .m_axi_crcsr_AWVALID(crcsr_AWVALID),
    .m_axi_crcsr_AWREADY(crcsr_AWREADY),
    .m_axi_crcsr_AWADDR(crcsr_AWADDR),
    .m_axi_crcsr_AWID(crcsr_AWID),
    .m_axi_crcsr_AWLEN(crcsr_AWLEN),
    .m_axi_crcsr_AWSIZE(crcsr_AWSIZE),
    .m_axi_crcsr_AWBURST(crcsr_AWBURST),
    .m_axi_crcsr_AWLOCK(crcsr_AWLOCK),
    .m_axi_crcsr_AWCACHE(crcsr_AWCACHE),
    .m_axi_crcsr_AWPROT(crcsr_AWPROT),
    .m_axi_crcsr_AWQOS(crcsr_AWQOS),
    .m_axi_crcsr_AWREGION(crcsr_AWREGION),
    .m_axi_crcsr_AWUSER(crcsr_AWUSER),
    .m_axi_crcsr_WVALID(crcsr_WVALID),
    .m_axi_crcsr_WREADY(crcsr_WREADY),
    .m_axi_crcsr_WDATA(crcsr_WDATA),
    .m_axi_crcsr_WSTRB(crcsr_WSTRB),
    .m_axi_crcsr_WLAST(crcsr_WLAST),
    .m_axi_crcsr_WID(crcsr_WID),
    .m_axi_crcsr_WUSER(crcsr_WUSER),
    .m_axi_crcsr_ARVALID(crcsr_ARVALID),
    .m_axi_crcsr_ARREADY(crcsr_ARREADY),
    .m_axi_crcsr_ARADDR(crcsr_ARADDR),
    .m_axi_crcsr_ARID(crcsr_ARID),
    .m_axi_crcsr_ARLEN(crcsr_ARLEN),
    .m_axi_crcsr_ARSIZE(crcsr_ARSIZE),
    .m_axi_crcsr_ARBURST(crcsr_ARBURST),
    .m_axi_crcsr_ARLOCK(crcsr_ARLOCK),
    .m_axi_crcsr_ARCACHE(crcsr_ARCACHE),
    .m_axi_crcsr_ARPROT(crcsr_ARPROT),
    .m_axi_crcsr_ARQOS(crcsr_ARQOS),
    .m_axi_crcsr_ARREGION(crcsr_ARREGION),
    .m_axi_crcsr_ARUSER(crcsr_ARUSER),
    .m_axi_crcsr_RVALID(crcsr_RVALID),
    .m_axi_crcsr_RREADY(crcsr_RREADY),
    .m_axi_crcsr_RDATA(crcsr_RDATA),
    .m_axi_crcsr_RLAST(crcsr_RLAST),
    .m_axi_crcsr_RID(crcsr_RID),
    .m_axi_crcsr_RUSER(crcsr_RUSER),
    .m_axi_crcsr_RRESP(crcsr_RRESP),
    .m_axi_crcsr_BVALID(crcsr_BVALID),
    .m_axi_crcsr_BREADY(crcsr_BREADY),
    .m_axi_crcsr_BRESP(crcsr_BRESP),
    .m_axi_crcsr_BID(crcsr_BID),
    .m_axi_crcsr_BUSER(crcsr_BUSER),
    .m_axi_cval_AWVALID(cval_AWVALID),
    .m_axi_cval_AWREADY(cval_AWREADY),
    .m_axi_cval_AWADDR(cval_AWADDR),
    .m_axi_cval_AWID(cval_AWID),
    .m_axi_cval_AWLEN(cval_AWLEN),
    .m_axi_cval_AWSIZE(cval_AWSIZE),
    .m_axi_cval_AWBURST(cval_AWBURST),
    .m_axi_cval_AWLOCK(cval_AWLOCK),
    .m_axi_cval_AWCACHE(cval_AWCACHE),
    .m_axi_cval_AWPROT(cval_AWPROT),
    .m_axi_cval_AWQOS(cval_AWQOS),
    .m_axi_cval_AWREGION(cval_AWREGION),
    .m_axi_cval_AWUSER(cval_AWUSER),
    .m_axi_cval_WVALID(cval_WVALID),
    .m_axi_cval_WREADY(cval_WREADY),
    .m_axi_cval_WDATA(cval_WDATA),
    .m_axi_cval_WSTRB(cval_WSTRB),
    .m_axi_cval_WLAST(cval_WLAST),
    .m_axi_cval_WID(cval_WID),
    .m_axi_cval_WUSER(cval_WUSER),
    .m_axi_cval_ARVALID(cval_ARVALID),
    .m_axi_cval_ARREADY(cval_ARREADY),
    .m_axi_cval_ARADDR(cval_ARADDR),
    .m_axi_cval_ARID(cval_ARID),
    .m_axi_cval_ARLEN(cval_ARLEN),
    .m_axi_cval_ARSIZE(cval_ARSIZE),
    .m_axi_cval_ARBURST(cval_ARBURST),
    .m_axi_cval_ARLOCK(cval_ARLOCK),
    .m_axi_cval_ARCACHE(cval_ARCACHE),
    .m_axi_cval_ARPROT(cval_ARPROT),
    .m_axi_cval_ARQOS(cval_ARQOS),
    .m_axi_cval_ARREGION(cval_ARREGION),
    .m_axi_cval_ARUSER(cval_ARUSER),
    .m_axi_cval_RVALID(cval_RVALID),
    .m_axi_cval_RREADY(cval_RREADY),
    .m_axi_cval_RDATA(cval_RDATA),
    .m_axi_cval_RLAST(cval_RLAST),
    .m_axi_cval_RID(cval_RID),
    .m_axi_cval_RUSER(cval_RUSER),
    .m_axi_cval_RRESP(cval_RRESP),
    .m_axi_cval_BVALID(cval_BVALID),
    .m_axi_cval_BREADY(cval_BREADY),
    .m_axi_cval_BRESP(cval_BRESP),
    .m_axi_cval_BID(cval_BID),
    .m_axi_cval_BUSER(cval_BUSER));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & control_write_data_finish & ctr_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status  & ctr_read_data_finish;

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        slave_start_status <= 1;
    end
    else begin
        if (AESL_start == 1 ) begin
            start_rise = 1;
        end
        if (start_rise == 1 && AESL_done == 1 ) begin
            slave_start_status <= 1;
        end
        if (AESL_slave_write_start_in == 1 && AESL_done == 0) begin 
            slave_start_status <= 0;
            start_rise = 0;
        end
    end
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
    begin
        AESL_slave_ready <= 0;
        ready_rise = 0;
    end
    else begin
        if (AESL_ready == 1 ) begin
            ready_rise = 1;
        end
        if (ready_rise == 1 && AESL_done_delay == 1 ) begin
            AESL_slave_ready <= 1;
        end
        if (AESL_slave_ready == 1) begin 
            AESL_slave_ready <= 0;
            ready_rise = 0;
        end
    end
end

always @ (posedge AESL_clock)
begin
    if (AESL_done == 1) begin
        slave_done_status <= 0;
    end
    else if (AESL_slave_output_done == 1 ) begin
        slave_done_status <= 1;
    end
end
































































































wire    AESL_axi_master_arcsr_ready;
wire    AESL_axi_master_arcsr_done;
AESL_axi_master_arcsr AESL_AXI_MASTER_arcsr(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_arcsr_AWVALID (arcsr_AWVALID),
    .TRAN_arcsr_AWREADY (arcsr_AWREADY),
    .TRAN_arcsr_AWADDR (arcsr_AWADDR),
    .TRAN_arcsr_AWID (arcsr_AWID),
    .TRAN_arcsr_AWLEN (arcsr_AWLEN),
    .TRAN_arcsr_AWSIZE (arcsr_AWSIZE),
    .TRAN_arcsr_AWBURST (arcsr_AWBURST),
    .TRAN_arcsr_AWLOCK (arcsr_AWLOCK),
    .TRAN_arcsr_AWCACHE (arcsr_AWCACHE),
    .TRAN_arcsr_AWPROT (arcsr_AWPROT),
    .TRAN_arcsr_AWQOS (arcsr_AWQOS),
    .TRAN_arcsr_AWREGION (arcsr_AWREGION),
    .TRAN_arcsr_AWUSER (arcsr_AWUSER),
    .TRAN_arcsr_WVALID (arcsr_WVALID),
    .TRAN_arcsr_WREADY (arcsr_WREADY),
    .TRAN_arcsr_WDATA (arcsr_WDATA),
    .TRAN_arcsr_WSTRB (arcsr_WSTRB),
    .TRAN_arcsr_WLAST (arcsr_WLAST),
    .TRAN_arcsr_WID (arcsr_WID),
    .TRAN_arcsr_WUSER (arcsr_WUSER),
    .TRAN_arcsr_ARVALID (arcsr_ARVALID),
    .TRAN_arcsr_ARREADY (arcsr_ARREADY),
    .TRAN_arcsr_ARADDR (arcsr_ARADDR),
    .TRAN_arcsr_ARID (arcsr_ARID),
    .TRAN_arcsr_ARLEN (arcsr_ARLEN),
    .TRAN_arcsr_ARSIZE (arcsr_ARSIZE),
    .TRAN_arcsr_ARBURST (arcsr_ARBURST),
    .TRAN_arcsr_ARLOCK (arcsr_ARLOCK),
    .TRAN_arcsr_ARCACHE (arcsr_ARCACHE),
    .TRAN_arcsr_ARPROT (arcsr_ARPROT),
    .TRAN_arcsr_ARQOS (arcsr_ARQOS),
    .TRAN_arcsr_ARREGION (arcsr_ARREGION),
    .TRAN_arcsr_ARUSER (arcsr_ARUSER),
    .TRAN_arcsr_RVALID (arcsr_RVALID),
    .TRAN_arcsr_RREADY (arcsr_RREADY),
    .TRAN_arcsr_RDATA (arcsr_RDATA),
    .TRAN_arcsr_RLAST (arcsr_RLAST),
    .TRAN_arcsr_RID (arcsr_RID),
    .TRAN_arcsr_RUSER (arcsr_RUSER),
    .TRAN_arcsr_RRESP (arcsr_RRESP),
    .TRAN_arcsr_BVALID (arcsr_BVALID),
    .TRAN_arcsr_BREADY (arcsr_BREADY),
    .TRAN_arcsr_BRESP (arcsr_BRESP),
    .TRAN_arcsr_BID (arcsr_BID),
    .TRAN_arcsr_BUSER (arcsr_BUSER),
    .ready (AESL_axi_master_arcsr_ready),
    .done  (AESL_axi_master_arcsr_done)
);
assign    AESL_axi_master_arcsr_ready    =   ready;
assign    AESL_axi_master_arcsr_done    =   AESL_done_delay;
wire    AESL_axi_master_acid_ready;
wire    AESL_axi_master_acid_done;
AESL_axi_master_acid AESL_AXI_MASTER_acid(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_acid_AWVALID (acid_AWVALID),
    .TRAN_acid_AWREADY (acid_AWREADY),
    .TRAN_acid_AWADDR (acid_AWADDR),
    .TRAN_acid_AWID (acid_AWID),
    .TRAN_acid_AWLEN (acid_AWLEN),
    .TRAN_acid_AWSIZE (acid_AWSIZE),
    .TRAN_acid_AWBURST (acid_AWBURST),
    .TRAN_acid_AWLOCK (acid_AWLOCK),
    .TRAN_acid_AWCACHE (acid_AWCACHE),
    .TRAN_acid_AWPROT (acid_AWPROT),
    .TRAN_acid_AWQOS (acid_AWQOS),
    .TRAN_acid_AWREGION (acid_AWREGION),
    .TRAN_acid_AWUSER (acid_AWUSER),
    .TRAN_acid_WVALID (acid_WVALID),
    .TRAN_acid_WREADY (acid_WREADY),
    .TRAN_acid_WDATA (acid_WDATA),
    .TRAN_acid_WSTRB (acid_WSTRB),
    .TRAN_acid_WLAST (acid_WLAST),
    .TRAN_acid_WID (acid_WID),
    .TRAN_acid_WUSER (acid_WUSER),
    .TRAN_acid_ARVALID (acid_ARVALID),
    .TRAN_acid_ARREADY (acid_ARREADY),
    .TRAN_acid_ARADDR (acid_ARADDR),
    .TRAN_acid_ARID (acid_ARID),
    .TRAN_acid_ARLEN (acid_ARLEN),
    .TRAN_acid_ARSIZE (acid_ARSIZE),
    .TRAN_acid_ARBURST (acid_ARBURST),
    .TRAN_acid_ARLOCK (acid_ARLOCK),
    .TRAN_acid_ARCACHE (acid_ARCACHE),
    .TRAN_acid_ARPROT (acid_ARPROT),
    .TRAN_acid_ARQOS (acid_ARQOS),
    .TRAN_acid_ARREGION (acid_ARREGION),
    .TRAN_acid_ARUSER (acid_ARUSER),
    .TRAN_acid_RVALID (acid_RVALID),
    .TRAN_acid_RREADY (acid_RREADY),
    .TRAN_acid_RDATA (acid_RDATA),
    .TRAN_acid_RLAST (acid_RLAST),
    .TRAN_acid_RID (acid_RID),
    .TRAN_acid_RUSER (acid_RUSER),
    .TRAN_acid_RRESP (acid_RRESP),
    .TRAN_acid_BVALID (acid_BVALID),
    .TRAN_acid_BREADY (acid_BREADY),
    .TRAN_acid_BRESP (acid_BRESP),
    .TRAN_acid_BID (acid_BID),
    .TRAN_acid_BUSER (acid_BUSER),
    .ready (AESL_axi_master_acid_ready),
    .done  (AESL_axi_master_acid_done)
);
assign    AESL_axi_master_acid_ready    =   ready;
assign    AESL_axi_master_acid_done    =   AESL_done_delay;
wire    AESL_axi_master_aval_ready;
wire    AESL_axi_master_aval_done;
AESL_axi_master_aval AESL_AXI_MASTER_aval(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_aval_AWVALID (aval_AWVALID),
    .TRAN_aval_AWREADY (aval_AWREADY),
    .TRAN_aval_AWADDR (aval_AWADDR),
    .TRAN_aval_AWID (aval_AWID),
    .TRAN_aval_AWLEN (aval_AWLEN),
    .TRAN_aval_AWSIZE (aval_AWSIZE),
    .TRAN_aval_AWBURST (aval_AWBURST),
    .TRAN_aval_AWLOCK (aval_AWLOCK),
    .TRAN_aval_AWCACHE (aval_AWCACHE),
    .TRAN_aval_AWPROT (aval_AWPROT),
    .TRAN_aval_AWQOS (aval_AWQOS),
    .TRAN_aval_AWREGION (aval_AWREGION),
    .TRAN_aval_AWUSER (aval_AWUSER),
    .TRAN_aval_WVALID (aval_WVALID),
    .TRAN_aval_WREADY (aval_WREADY),
    .TRAN_aval_WDATA (aval_WDATA),
    .TRAN_aval_WSTRB (aval_WSTRB),
    .TRAN_aval_WLAST (aval_WLAST),
    .TRAN_aval_WID (aval_WID),
    .TRAN_aval_WUSER (aval_WUSER),
    .TRAN_aval_ARVALID (aval_ARVALID),
    .TRAN_aval_ARREADY (aval_ARREADY),
    .TRAN_aval_ARADDR (aval_ARADDR),
    .TRAN_aval_ARID (aval_ARID),
    .TRAN_aval_ARLEN (aval_ARLEN),
    .TRAN_aval_ARSIZE (aval_ARSIZE),
    .TRAN_aval_ARBURST (aval_ARBURST),
    .TRAN_aval_ARLOCK (aval_ARLOCK),
    .TRAN_aval_ARCACHE (aval_ARCACHE),
    .TRAN_aval_ARPROT (aval_ARPROT),
    .TRAN_aval_ARQOS (aval_ARQOS),
    .TRAN_aval_ARREGION (aval_ARREGION),
    .TRAN_aval_ARUSER (aval_ARUSER),
    .TRAN_aval_RVALID (aval_RVALID),
    .TRAN_aval_RREADY (aval_RREADY),
    .TRAN_aval_RDATA (aval_RDATA),
    .TRAN_aval_RLAST (aval_RLAST),
    .TRAN_aval_RID (aval_RID),
    .TRAN_aval_RUSER (aval_RUSER),
    .TRAN_aval_RRESP (aval_RRESP),
    .TRAN_aval_BVALID (aval_BVALID),
    .TRAN_aval_BREADY (aval_BREADY),
    .TRAN_aval_BRESP (aval_BRESP),
    .TRAN_aval_BID (aval_BID),
    .TRAN_aval_BUSER (aval_BUSER),
    .ready (AESL_axi_master_aval_ready),
    .done  (AESL_axi_master_aval_done)
);
assign    AESL_axi_master_aval_ready    =   ready;
assign    AESL_axi_master_aval_done    =   AESL_done_delay;
wire    AESL_axi_master_brcsr1_ready;
wire    AESL_axi_master_brcsr1_done;
AESL_axi_master_brcsr1 AESL_AXI_MASTER_brcsr1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_brcsr1_AWVALID (brcsr1_AWVALID),
    .TRAN_brcsr1_AWREADY (brcsr1_AWREADY),
    .TRAN_brcsr1_AWADDR (brcsr1_AWADDR),
    .TRAN_brcsr1_AWID (brcsr1_AWID),
    .TRAN_brcsr1_AWLEN (brcsr1_AWLEN),
    .TRAN_brcsr1_AWSIZE (brcsr1_AWSIZE),
    .TRAN_brcsr1_AWBURST (brcsr1_AWBURST),
    .TRAN_brcsr1_AWLOCK (brcsr1_AWLOCK),
    .TRAN_brcsr1_AWCACHE (brcsr1_AWCACHE),
    .TRAN_brcsr1_AWPROT (brcsr1_AWPROT),
    .TRAN_brcsr1_AWQOS (brcsr1_AWQOS),
    .TRAN_brcsr1_AWREGION (brcsr1_AWREGION),
    .TRAN_brcsr1_AWUSER (brcsr1_AWUSER),
    .TRAN_brcsr1_WVALID (brcsr1_WVALID),
    .TRAN_brcsr1_WREADY (brcsr1_WREADY),
    .TRAN_brcsr1_WDATA (brcsr1_WDATA),
    .TRAN_brcsr1_WSTRB (brcsr1_WSTRB),
    .TRAN_brcsr1_WLAST (brcsr1_WLAST),
    .TRAN_brcsr1_WID (brcsr1_WID),
    .TRAN_brcsr1_WUSER (brcsr1_WUSER),
    .TRAN_brcsr1_ARVALID (brcsr1_ARVALID),
    .TRAN_brcsr1_ARREADY (brcsr1_ARREADY),
    .TRAN_brcsr1_ARADDR (brcsr1_ARADDR),
    .TRAN_brcsr1_ARID (brcsr1_ARID),
    .TRAN_brcsr1_ARLEN (brcsr1_ARLEN),
    .TRAN_brcsr1_ARSIZE (brcsr1_ARSIZE),
    .TRAN_brcsr1_ARBURST (brcsr1_ARBURST),
    .TRAN_brcsr1_ARLOCK (brcsr1_ARLOCK),
    .TRAN_brcsr1_ARCACHE (brcsr1_ARCACHE),
    .TRAN_brcsr1_ARPROT (brcsr1_ARPROT),
    .TRAN_brcsr1_ARQOS (brcsr1_ARQOS),
    .TRAN_brcsr1_ARREGION (brcsr1_ARREGION),
    .TRAN_brcsr1_ARUSER (brcsr1_ARUSER),
    .TRAN_brcsr1_RVALID (brcsr1_RVALID),
    .TRAN_brcsr1_RREADY (brcsr1_RREADY),
    .TRAN_brcsr1_RDATA (brcsr1_RDATA),
    .TRAN_brcsr1_RLAST (brcsr1_RLAST),
    .TRAN_brcsr1_RID (brcsr1_RID),
    .TRAN_brcsr1_RUSER (brcsr1_RUSER),
    .TRAN_brcsr1_RRESP (brcsr1_RRESP),
    .TRAN_brcsr1_BVALID (brcsr1_BVALID),
    .TRAN_brcsr1_BREADY (brcsr1_BREADY),
    .TRAN_brcsr1_BRESP (brcsr1_BRESP),
    .TRAN_brcsr1_BID (brcsr1_BID),
    .TRAN_brcsr1_BUSER (brcsr1_BUSER),
    .ready (AESL_axi_master_brcsr1_ready),
    .done  (AESL_axi_master_brcsr1_done)
);
assign    AESL_axi_master_brcsr1_ready    =   ready;
assign    AESL_axi_master_brcsr1_done    =   AESL_done_delay;
wire    AESL_axi_master_brcsr2_ready;
wire    AESL_axi_master_brcsr2_done;
AESL_axi_master_brcsr2 AESL_AXI_MASTER_brcsr2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_brcsr2_AWVALID (brcsr2_AWVALID),
    .TRAN_brcsr2_AWREADY (brcsr2_AWREADY),
    .TRAN_brcsr2_AWADDR (brcsr2_AWADDR),
    .TRAN_brcsr2_AWID (brcsr2_AWID),
    .TRAN_brcsr2_AWLEN (brcsr2_AWLEN),
    .TRAN_brcsr2_AWSIZE (brcsr2_AWSIZE),
    .TRAN_brcsr2_AWBURST (brcsr2_AWBURST),
    .TRAN_brcsr2_AWLOCK (brcsr2_AWLOCK),
    .TRAN_brcsr2_AWCACHE (brcsr2_AWCACHE),
    .TRAN_brcsr2_AWPROT (brcsr2_AWPROT),
    .TRAN_brcsr2_AWQOS (brcsr2_AWQOS),
    .TRAN_brcsr2_AWREGION (brcsr2_AWREGION),
    .TRAN_brcsr2_AWUSER (brcsr2_AWUSER),
    .TRAN_brcsr2_WVALID (brcsr2_WVALID),
    .TRAN_brcsr2_WREADY (brcsr2_WREADY),
    .TRAN_brcsr2_WDATA (brcsr2_WDATA),
    .TRAN_brcsr2_WSTRB (brcsr2_WSTRB),
    .TRAN_brcsr2_WLAST (brcsr2_WLAST),
    .TRAN_brcsr2_WID (brcsr2_WID),
    .TRAN_brcsr2_WUSER (brcsr2_WUSER),
    .TRAN_brcsr2_ARVALID (brcsr2_ARVALID),
    .TRAN_brcsr2_ARREADY (brcsr2_ARREADY),
    .TRAN_brcsr2_ARADDR (brcsr2_ARADDR),
    .TRAN_brcsr2_ARID (brcsr2_ARID),
    .TRAN_brcsr2_ARLEN (brcsr2_ARLEN),
    .TRAN_brcsr2_ARSIZE (brcsr2_ARSIZE),
    .TRAN_brcsr2_ARBURST (brcsr2_ARBURST),
    .TRAN_brcsr2_ARLOCK (brcsr2_ARLOCK),
    .TRAN_brcsr2_ARCACHE (brcsr2_ARCACHE),
    .TRAN_brcsr2_ARPROT (brcsr2_ARPROT),
    .TRAN_brcsr2_ARQOS (brcsr2_ARQOS),
    .TRAN_brcsr2_ARREGION (brcsr2_ARREGION),
    .TRAN_brcsr2_ARUSER (brcsr2_ARUSER),
    .TRAN_brcsr2_RVALID (brcsr2_RVALID),
    .TRAN_brcsr2_RREADY (brcsr2_RREADY),
    .TRAN_brcsr2_RDATA (brcsr2_RDATA),
    .TRAN_brcsr2_RLAST (brcsr2_RLAST),
    .TRAN_brcsr2_RID (brcsr2_RID),
    .TRAN_brcsr2_RUSER (brcsr2_RUSER),
    .TRAN_brcsr2_RRESP (brcsr2_RRESP),
    .TRAN_brcsr2_BVALID (brcsr2_BVALID),
    .TRAN_brcsr2_BREADY (brcsr2_BREADY),
    .TRAN_brcsr2_BRESP (brcsr2_BRESP),
    .TRAN_brcsr2_BID (brcsr2_BID),
    .TRAN_brcsr2_BUSER (brcsr2_BUSER),
    .ready (AESL_axi_master_brcsr2_ready),
    .done  (AESL_axi_master_brcsr2_done)
);
assign    AESL_axi_master_brcsr2_ready    =   ready;
assign    AESL_axi_master_brcsr2_done    =   AESL_done_delay;
wire    AESL_axi_master_brcsr3_ready;
wire    AESL_axi_master_brcsr3_done;
AESL_axi_master_brcsr3 AESL_AXI_MASTER_brcsr3(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_brcsr3_AWVALID (brcsr3_AWVALID),
    .TRAN_brcsr3_AWREADY (brcsr3_AWREADY),
    .TRAN_brcsr3_AWADDR (brcsr3_AWADDR),
    .TRAN_brcsr3_AWID (brcsr3_AWID),
    .TRAN_brcsr3_AWLEN (brcsr3_AWLEN),
    .TRAN_brcsr3_AWSIZE (brcsr3_AWSIZE),
    .TRAN_brcsr3_AWBURST (brcsr3_AWBURST),
    .TRAN_brcsr3_AWLOCK (brcsr3_AWLOCK),
    .TRAN_brcsr3_AWCACHE (brcsr3_AWCACHE),
    .TRAN_brcsr3_AWPROT (brcsr3_AWPROT),
    .TRAN_brcsr3_AWQOS (brcsr3_AWQOS),
    .TRAN_brcsr3_AWREGION (brcsr3_AWREGION),
    .TRAN_brcsr3_AWUSER (brcsr3_AWUSER),
    .TRAN_brcsr3_WVALID (brcsr3_WVALID),
    .TRAN_brcsr3_WREADY (brcsr3_WREADY),
    .TRAN_brcsr3_WDATA (brcsr3_WDATA),
    .TRAN_brcsr3_WSTRB (brcsr3_WSTRB),
    .TRAN_brcsr3_WLAST (brcsr3_WLAST),
    .TRAN_brcsr3_WID (brcsr3_WID),
    .TRAN_brcsr3_WUSER (brcsr3_WUSER),
    .TRAN_brcsr3_ARVALID (brcsr3_ARVALID),
    .TRAN_brcsr3_ARREADY (brcsr3_ARREADY),
    .TRAN_brcsr3_ARADDR (brcsr3_ARADDR),
    .TRAN_brcsr3_ARID (brcsr3_ARID),
    .TRAN_brcsr3_ARLEN (brcsr3_ARLEN),
    .TRAN_brcsr3_ARSIZE (brcsr3_ARSIZE),
    .TRAN_brcsr3_ARBURST (brcsr3_ARBURST),
    .TRAN_brcsr3_ARLOCK (brcsr3_ARLOCK),
    .TRAN_brcsr3_ARCACHE (brcsr3_ARCACHE),
    .TRAN_brcsr3_ARPROT (brcsr3_ARPROT),
    .TRAN_brcsr3_ARQOS (brcsr3_ARQOS),
    .TRAN_brcsr3_ARREGION (brcsr3_ARREGION),
    .TRAN_brcsr3_ARUSER (brcsr3_ARUSER),
    .TRAN_brcsr3_RVALID (brcsr3_RVALID),
    .TRAN_brcsr3_RREADY (brcsr3_RREADY),
    .TRAN_brcsr3_RDATA (brcsr3_RDATA),
    .TRAN_brcsr3_RLAST (brcsr3_RLAST),
    .TRAN_brcsr3_RID (brcsr3_RID),
    .TRAN_brcsr3_RUSER (brcsr3_RUSER),
    .TRAN_brcsr3_RRESP (brcsr3_RRESP),
    .TRAN_brcsr3_BVALID (brcsr3_BVALID),
    .TRAN_brcsr3_BREADY (brcsr3_BREADY),
    .TRAN_brcsr3_BRESP (brcsr3_BRESP),
    .TRAN_brcsr3_BID (brcsr3_BID),
    .TRAN_brcsr3_BUSER (brcsr3_BUSER),
    .ready (AESL_axi_master_brcsr3_ready),
    .done  (AESL_axi_master_brcsr3_done)
);
assign    AESL_axi_master_brcsr3_ready    =   ready;
assign    AESL_axi_master_brcsr3_done    =   AESL_done_delay;
wire    AESL_axi_master_brcsr4_ready;
wire    AESL_axi_master_brcsr4_done;
AESL_axi_master_brcsr4 AESL_AXI_MASTER_brcsr4(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_brcsr4_AWVALID (brcsr4_AWVALID),
    .TRAN_brcsr4_AWREADY (brcsr4_AWREADY),
    .TRAN_brcsr4_AWADDR (brcsr4_AWADDR),
    .TRAN_brcsr4_AWID (brcsr4_AWID),
    .TRAN_brcsr4_AWLEN (brcsr4_AWLEN),
    .TRAN_brcsr4_AWSIZE (brcsr4_AWSIZE),
    .TRAN_brcsr4_AWBURST (brcsr4_AWBURST),
    .TRAN_brcsr4_AWLOCK (brcsr4_AWLOCK),
    .TRAN_brcsr4_AWCACHE (brcsr4_AWCACHE),
    .TRAN_brcsr4_AWPROT (brcsr4_AWPROT),
    .TRAN_brcsr4_AWQOS (brcsr4_AWQOS),
    .TRAN_brcsr4_AWREGION (brcsr4_AWREGION),
    .TRAN_brcsr4_AWUSER (brcsr4_AWUSER),
    .TRAN_brcsr4_WVALID (brcsr4_WVALID),
    .TRAN_brcsr4_WREADY (brcsr4_WREADY),
    .TRAN_brcsr4_WDATA (brcsr4_WDATA),
    .TRAN_brcsr4_WSTRB (brcsr4_WSTRB),
    .TRAN_brcsr4_WLAST (brcsr4_WLAST),
    .TRAN_brcsr4_WID (brcsr4_WID),
    .TRAN_brcsr4_WUSER (brcsr4_WUSER),
    .TRAN_brcsr4_ARVALID (brcsr4_ARVALID),
    .TRAN_brcsr4_ARREADY (brcsr4_ARREADY),
    .TRAN_brcsr4_ARADDR (brcsr4_ARADDR),
    .TRAN_brcsr4_ARID (brcsr4_ARID),
    .TRAN_brcsr4_ARLEN (brcsr4_ARLEN),
    .TRAN_brcsr4_ARSIZE (brcsr4_ARSIZE),
    .TRAN_brcsr4_ARBURST (brcsr4_ARBURST),
    .TRAN_brcsr4_ARLOCK (brcsr4_ARLOCK),
    .TRAN_brcsr4_ARCACHE (brcsr4_ARCACHE),
    .TRAN_brcsr4_ARPROT (brcsr4_ARPROT),
    .TRAN_brcsr4_ARQOS (brcsr4_ARQOS),
    .TRAN_brcsr4_ARREGION (brcsr4_ARREGION),
    .TRAN_brcsr4_ARUSER (brcsr4_ARUSER),
    .TRAN_brcsr4_RVALID (brcsr4_RVALID),
    .TRAN_brcsr4_RREADY (brcsr4_RREADY),
    .TRAN_brcsr4_RDATA (brcsr4_RDATA),
    .TRAN_brcsr4_RLAST (brcsr4_RLAST),
    .TRAN_brcsr4_RID (brcsr4_RID),
    .TRAN_brcsr4_RUSER (brcsr4_RUSER),
    .TRAN_brcsr4_RRESP (brcsr4_RRESP),
    .TRAN_brcsr4_BVALID (brcsr4_BVALID),
    .TRAN_brcsr4_BREADY (brcsr4_BREADY),
    .TRAN_brcsr4_BRESP (brcsr4_BRESP),
    .TRAN_brcsr4_BID (brcsr4_BID),
    .TRAN_brcsr4_BUSER (brcsr4_BUSER),
    .ready (AESL_axi_master_brcsr4_ready),
    .done  (AESL_axi_master_brcsr4_done)
);
assign    AESL_axi_master_brcsr4_ready    =   ready;
assign    AESL_axi_master_brcsr4_done    =   AESL_done_delay;
wire    AESL_axi_master_bval1_ready;
wire    AESL_axi_master_bval1_done;
AESL_axi_master_bval1 AESL_AXI_MASTER_bval1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bval1_AWVALID (bval1_AWVALID),
    .TRAN_bval1_AWREADY (bval1_AWREADY),
    .TRAN_bval1_AWADDR (bval1_AWADDR),
    .TRAN_bval1_AWID (bval1_AWID),
    .TRAN_bval1_AWLEN (bval1_AWLEN),
    .TRAN_bval1_AWSIZE (bval1_AWSIZE),
    .TRAN_bval1_AWBURST (bval1_AWBURST),
    .TRAN_bval1_AWLOCK (bval1_AWLOCK),
    .TRAN_bval1_AWCACHE (bval1_AWCACHE),
    .TRAN_bval1_AWPROT (bval1_AWPROT),
    .TRAN_bval1_AWQOS (bval1_AWQOS),
    .TRAN_bval1_AWREGION (bval1_AWREGION),
    .TRAN_bval1_AWUSER (bval1_AWUSER),
    .TRAN_bval1_WVALID (bval1_WVALID),
    .TRAN_bval1_WREADY (bval1_WREADY),
    .TRAN_bval1_WDATA (bval1_WDATA),
    .TRAN_bval1_WSTRB (bval1_WSTRB),
    .TRAN_bval1_WLAST (bval1_WLAST),
    .TRAN_bval1_WID (bval1_WID),
    .TRAN_bval1_WUSER (bval1_WUSER),
    .TRAN_bval1_ARVALID (bval1_ARVALID),
    .TRAN_bval1_ARREADY (bval1_ARREADY),
    .TRAN_bval1_ARADDR (bval1_ARADDR),
    .TRAN_bval1_ARID (bval1_ARID),
    .TRAN_bval1_ARLEN (bval1_ARLEN),
    .TRAN_bval1_ARSIZE (bval1_ARSIZE),
    .TRAN_bval1_ARBURST (bval1_ARBURST),
    .TRAN_bval1_ARLOCK (bval1_ARLOCK),
    .TRAN_bval1_ARCACHE (bval1_ARCACHE),
    .TRAN_bval1_ARPROT (bval1_ARPROT),
    .TRAN_bval1_ARQOS (bval1_ARQOS),
    .TRAN_bval1_ARREGION (bval1_ARREGION),
    .TRAN_bval1_ARUSER (bval1_ARUSER),
    .TRAN_bval1_RVALID (bval1_RVALID),
    .TRAN_bval1_RREADY (bval1_RREADY),
    .TRAN_bval1_RDATA (bval1_RDATA),
    .TRAN_bval1_RLAST (bval1_RLAST),
    .TRAN_bval1_RID (bval1_RID),
    .TRAN_bval1_RUSER (bval1_RUSER),
    .TRAN_bval1_RRESP (bval1_RRESP),
    .TRAN_bval1_BVALID (bval1_BVALID),
    .TRAN_bval1_BREADY (bval1_BREADY),
    .TRAN_bval1_BRESP (bval1_BRESP),
    .TRAN_bval1_BID (bval1_BID),
    .TRAN_bval1_BUSER (bval1_BUSER),
    .ready (AESL_axi_master_bval1_ready),
    .done  (AESL_axi_master_bval1_done)
);
assign    AESL_axi_master_bval1_ready    =   ready;
assign    AESL_axi_master_bval1_done    =   AESL_done_delay;
wire    AESL_axi_master_bcid1_ready;
wire    AESL_axi_master_bcid1_done;
AESL_axi_master_bcid1 AESL_AXI_MASTER_bcid1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bcid1_AWVALID (bcid1_AWVALID),
    .TRAN_bcid1_AWREADY (bcid1_AWREADY),
    .TRAN_bcid1_AWADDR (bcid1_AWADDR),
    .TRAN_bcid1_AWID (bcid1_AWID),
    .TRAN_bcid1_AWLEN (bcid1_AWLEN),
    .TRAN_bcid1_AWSIZE (bcid1_AWSIZE),
    .TRAN_bcid1_AWBURST (bcid1_AWBURST),
    .TRAN_bcid1_AWLOCK (bcid1_AWLOCK),
    .TRAN_bcid1_AWCACHE (bcid1_AWCACHE),
    .TRAN_bcid1_AWPROT (bcid1_AWPROT),
    .TRAN_bcid1_AWQOS (bcid1_AWQOS),
    .TRAN_bcid1_AWREGION (bcid1_AWREGION),
    .TRAN_bcid1_AWUSER (bcid1_AWUSER),
    .TRAN_bcid1_WVALID (bcid1_WVALID),
    .TRAN_bcid1_WREADY (bcid1_WREADY),
    .TRAN_bcid1_WDATA (bcid1_WDATA),
    .TRAN_bcid1_WSTRB (bcid1_WSTRB),
    .TRAN_bcid1_WLAST (bcid1_WLAST),
    .TRAN_bcid1_WID (bcid1_WID),
    .TRAN_bcid1_WUSER (bcid1_WUSER),
    .TRAN_bcid1_ARVALID (bcid1_ARVALID),
    .TRAN_bcid1_ARREADY (bcid1_ARREADY),
    .TRAN_bcid1_ARADDR (bcid1_ARADDR),
    .TRAN_bcid1_ARID (bcid1_ARID),
    .TRAN_bcid1_ARLEN (bcid1_ARLEN),
    .TRAN_bcid1_ARSIZE (bcid1_ARSIZE),
    .TRAN_bcid1_ARBURST (bcid1_ARBURST),
    .TRAN_bcid1_ARLOCK (bcid1_ARLOCK),
    .TRAN_bcid1_ARCACHE (bcid1_ARCACHE),
    .TRAN_bcid1_ARPROT (bcid1_ARPROT),
    .TRAN_bcid1_ARQOS (bcid1_ARQOS),
    .TRAN_bcid1_ARREGION (bcid1_ARREGION),
    .TRAN_bcid1_ARUSER (bcid1_ARUSER),
    .TRAN_bcid1_RVALID (bcid1_RVALID),
    .TRAN_bcid1_RREADY (bcid1_RREADY),
    .TRAN_bcid1_RDATA (bcid1_RDATA),
    .TRAN_bcid1_RLAST (bcid1_RLAST),
    .TRAN_bcid1_RID (bcid1_RID),
    .TRAN_bcid1_RUSER (bcid1_RUSER),
    .TRAN_bcid1_RRESP (bcid1_RRESP),
    .TRAN_bcid1_BVALID (bcid1_BVALID),
    .TRAN_bcid1_BREADY (bcid1_BREADY),
    .TRAN_bcid1_BRESP (bcid1_BRESP),
    .TRAN_bcid1_BID (bcid1_BID),
    .TRAN_bcid1_BUSER (bcid1_BUSER),
    .ready (AESL_axi_master_bcid1_ready),
    .done  (AESL_axi_master_bcid1_done)
);
assign    AESL_axi_master_bcid1_ready    =   ready;
assign    AESL_axi_master_bcid1_done    =   AESL_done_delay;
wire    AESL_axi_master_bval2_ready;
wire    AESL_axi_master_bval2_done;
AESL_axi_master_bval2 AESL_AXI_MASTER_bval2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bval2_AWVALID (bval2_AWVALID),
    .TRAN_bval2_AWREADY (bval2_AWREADY),
    .TRAN_bval2_AWADDR (bval2_AWADDR),
    .TRAN_bval2_AWID (bval2_AWID),
    .TRAN_bval2_AWLEN (bval2_AWLEN),
    .TRAN_bval2_AWSIZE (bval2_AWSIZE),
    .TRAN_bval2_AWBURST (bval2_AWBURST),
    .TRAN_bval2_AWLOCK (bval2_AWLOCK),
    .TRAN_bval2_AWCACHE (bval2_AWCACHE),
    .TRAN_bval2_AWPROT (bval2_AWPROT),
    .TRAN_bval2_AWQOS (bval2_AWQOS),
    .TRAN_bval2_AWREGION (bval2_AWREGION),
    .TRAN_bval2_AWUSER (bval2_AWUSER),
    .TRAN_bval2_WVALID (bval2_WVALID),
    .TRAN_bval2_WREADY (bval2_WREADY),
    .TRAN_bval2_WDATA (bval2_WDATA),
    .TRAN_bval2_WSTRB (bval2_WSTRB),
    .TRAN_bval2_WLAST (bval2_WLAST),
    .TRAN_bval2_WID (bval2_WID),
    .TRAN_bval2_WUSER (bval2_WUSER),
    .TRAN_bval2_ARVALID (bval2_ARVALID),
    .TRAN_bval2_ARREADY (bval2_ARREADY),
    .TRAN_bval2_ARADDR (bval2_ARADDR),
    .TRAN_bval2_ARID (bval2_ARID),
    .TRAN_bval2_ARLEN (bval2_ARLEN),
    .TRAN_bval2_ARSIZE (bval2_ARSIZE),
    .TRAN_bval2_ARBURST (bval2_ARBURST),
    .TRAN_bval2_ARLOCK (bval2_ARLOCK),
    .TRAN_bval2_ARCACHE (bval2_ARCACHE),
    .TRAN_bval2_ARPROT (bval2_ARPROT),
    .TRAN_bval2_ARQOS (bval2_ARQOS),
    .TRAN_bval2_ARREGION (bval2_ARREGION),
    .TRAN_bval2_ARUSER (bval2_ARUSER),
    .TRAN_bval2_RVALID (bval2_RVALID),
    .TRAN_bval2_RREADY (bval2_RREADY),
    .TRAN_bval2_RDATA (bval2_RDATA),
    .TRAN_bval2_RLAST (bval2_RLAST),
    .TRAN_bval2_RID (bval2_RID),
    .TRAN_bval2_RUSER (bval2_RUSER),
    .TRAN_bval2_RRESP (bval2_RRESP),
    .TRAN_bval2_BVALID (bval2_BVALID),
    .TRAN_bval2_BREADY (bval2_BREADY),
    .TRAN_bval2_BRESP (bval2_BRESP),
    .TRAN_bval2_BID (bval2_BID),
    .TRAN_bval2_BUSER (bval2_BUSER),
    .ready (AESL_axi_master_bval2_ready),
    .done  (AESL_axi_master_bval2_done)
);
assign    AESL_axi_master_bval2_ready    =   ready;
assign    AESL_axi_master_bval2_done    =   AESL_done_delay;
wire    AESL_axi_master_bcid2_ready;
wire    AESL_axi_master_bcid2_done;
AESL_axi_master_bcid2 AESL_AXI_MASTER_bcid2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bcid2_AWVALID (bcid2_AWVALID),
    .TRAN_bcid2_AWREADY (bcid2_AWREADY),
    .TRAN_bcid2_AWADDR (bcid2_AWADDR),
    .TRAN_bcid2_AWID (bcid2_AWID),
    .TRAN_bcid2_AWLEN (bcid2_AWLEN),
    .TRAN_bcid2_AWSIZE (bcid2_AWSIZE),
    .TRAN_bcid2_AWBURST (bcid2_AWBURST),
    .TRAN_bcid2_AWLOCK (bcid2_AWLOCK),
    .TRAN_bcid2_AWCACHE (bcid2_AWCACHE),
    .TRAN_bcid2_AWPROT (bcid2_AWPROT),
    .TRAN_bcid2_AWQOS (bcid2_AWQOS),
    .TRAN_bcid2_AWREGION (bcid2_AWREGION),
    .TRAN_bcid2_AWUSER (bcid2_AWUSER),
    .TRAN_bcid2_WVALID (bcid2_WVALID),
    .TRAN_bcid2_WREADY (bcid2_WREADY),
    .TRAN_bcid2_WDATA (bcid2_WDATA),
    .TRAN_bcid2_WSTRB (bcid2_WSTRB),
    .TRAN_bcid2_WLAST (bcid2_WLAST),
    .TRAN_bcid2_WID (bcid2_WID),
    .TRAN_bcid2_WUSER (bcid2_WUSER),
    .TRAN_bcid2_ARVALID (bcid2_ARVALID),
    .TRAN_bcid2_ARREADY (bcid2_ARREADY),
    .TRAN_bcid2_ARADDR (bcid2_ARADDR),
    .TRAN_bcid2_ARID (bcid2_ARID),
    .TRAN_bcid2_ARLEN (bcid2_ARLEN),
    .TRAN_bcid2_ARSIZE (bcid2_ARSIZE),
    .TRAN_bcid2_ARBURST (bcid2_ARBURST),
    .TRAN_bcid2_ARLOCK (bcid2_ARLOCK),
    .TRAN_bcid2_ARCACHE (bcid2_ARCACHE),
    .TRAN_bcid2_ARPROT (bcid2_ARPROT),
    .TRAN_bcid2_ARQOS (bcid2_ARQOS),
    .TRAN_bcid2_ARREGION (bcid2_ARREGION),
    .TRAN_bcid2_ARUSER (bcid2_ARUSER),
    .TRAN_bcid2_RVALID (bcid2_RVALID),
    .TRAN_bcid2_RREADY (bcid2_RREADY),
    .TRAN_bcid2_RDATA (bcid2_RDATA),
    .TRAN_bcid2_RLAST (bcid2_RLAST),
    .TRAN_bcid2_RID (bcid2_RID),
    .TRAN_bcid2_RUSER (bcid2_RUSER),
    .TRAN_bcid2_RRESP (bcid2_RRESP),
    .TRAN_bcid2_BVALID (bcid2_BVALID),
    .TRAN_bcid2_BREADY (bcid2_BREADY),
    .TRAN_bcid2_BRESP (bcid2_BRESP),
    .TRAN_bcid2_BID (bcid2_BID),
    .TRAN_bcid2_BUSER (bcid2_BUSER),
    .ready (AESL_axi_master_bcid2_ready),
    .done  (AESL_axi_master_bcid2_done)
);
assign    AESL_axi_master_bcid2_ready    =   ready;
assign    AESL_axi_master_bcid2_done    =   AESL_done_delay;
wire    AESL_axi_master_bval3_ready;
wire    AESL_axi_master_bval3_done;
AESL_axi_master_bval3 AESL_AXI_MASTER_bval3(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bval3_AWVALID (bval3_AWVALID),
    .TRAN_bval3_AWREADY (bval3_AWREADY),
    .TRAN_bval3_AWADDR (bval3_AWADDR),
    .TRAN_bval3_AWID (bval3_AWID),
    .TRAN_bval3_AWLEN (bval3_AWLEN),
    .TRAN_bval3_AWSIZE (bval3_AWSIZE),
    .TRAN_bval3_AWBURST (bval3_AWBURST),
    .TRAN_bval3_AWLOCK (bval3_AWLOCK),
    .TRAN_bval3_AWCACHE (bval3_AWCACHE),
    .TRAN_bval3_AWPROT (bval3_AWPROT),
    .TRAN_bval3_AWQOS (bval3_AWQOS),
    .TRAN_bval3_AWREGION (bval3_AWREGION),
    .TRAN_bval3_AWUSER (bval3_AWUSER),
    .TRAN_bval3_WVALID (bval3_WVALID),
    .TRAN_bval3_WREADY (bval3_WREADY),
    .TRAN_bval3_WDATA (bval3_WDATA),
    .TRAN_bval3_WSTRB (bval3_WSTRB),
    .TRAN_bval3_WLAST (bval3_WLAST),
    .TRAN_bval3_WID (bval3_WID),
    .TRAN_bval3_WUSER (bval3_WUSER),
    .TRAN_bval3_ARVALID (bval3_ARVALID),
    .TRAN_bval3_ARREADY (bval3_ARREADY),
    .TRAN_bval3_ARADDR (bval3_ARADDR),
    .TRAN_bval3_ARID (bval3_ARID),
    .TRAN_bval3_ARLEN (bval3_ARLEN),
    .TRAN_bval3_ARSIZE (bval3_ARSIZE),
    .TRAN_bval3_ARBURST (bval3_ARBURST),
    .TRAN_bval3_ARLOCK (bval3_ARLOCK),
    .TRAN_bval3_ARCACHE (bval3_ARCACHE),
    .TRAN_bval3_ARPROT (bval3_ARPROT),
    .TRAN_bval3_ARQOS (bval3_ARQOS),
    .TRAN_bval3_ARREGION (bval3_ARREGION),
    .TRAN_bval3_ARUSER (bval3_ARUSER),
    .TRAN_bval3_RVALID (bval3_RVALID),
    .TRAN_bval3_RREADY (bval3_RREADY),
    .TRAN_bval3_RDATA (bval3_RDATA),
    .TRAN_bval3_RLAST (bval3_RLAST),
    .TRAN_bval3_RID (bval3_RID),
    .TRAN_bval3_RUSER (bval3_RUSER),
    .TRAN_bval3_RRESP (bval3_RRESP),
    .TRAN_bval3_BVALID (bval3_BVALID),
    .TRAN_bval3_BREADY (bval3_BREADY),
    .TRAN_bval3_BRESP (bval3_BRESP),
    .TRAN_bval3_BID (bval3_BID),
    .TRAN_bval3_BUSER (bval3_BUSER),
    .ready (AESL_axi_master_bval3_ready),
    .done  (AESL_axi_master_bval3_done)
);
assign    AESL_axi_master_bval3_ready    =   ready;
assign    AESL_axi_master_bval3_done    =   AESL_done_delay;
wire    AESL_axi_master_bcid3_ready;
wire    AESL_axi_master_bcid3_done;
AESL_axi_master_bcid3 AESL_AXI_MASTER_bcid3(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bcid3_AWVALID (bcid3_AWVALID),
    .TRAN_bcid3_AWREADY (bcid3_AWREADY),
    .TRAN_bcid3_AWADDR (bcid3_AWADDR),
    .TRAN_bcid3_AWID (bcid3_AWID),
    .TRAN_bcid3_AWLEN (bcid3_AWLEN),
    .TRAN_bcid3_AWSIZE (bcid3_AWSIZE),
    .TRAN_bcid3_AWBURST (bcid3_AWBURST),
    .TRAN_bcid3_AWLOCK (bcid3_AWLOCK),
    .TRAN_bcid3_AWCACHE (bcid3_AWCACHE),
    .TRAN_bcid3_AWPROT (bcid3_AWPROT),
    .TRAN_bcid3_AWQOS (bcid3_AWQOS),
    .TRAN_bcid3_AWREGION (bcid3_AWREGION),
    .TRAN_bcid3_AWUSER (bcid3_AWUSER),
    .TRAN_bcid3_WVALID (bcid3_WVALID),
    .TRAN_bcid3_WREADY (bcid3_WREADY),
    .TRAN_bcid3_WDATA (bcid3_WDATA),
    .TRAN_bcid3_WSTRB (bcid3_WSTRB),
    .TRAN_bcid3_WLAST (bcid3_WLAST),
    .TRAN_bcid3_WID (bcid3_WID),
    .TRAN_bcid3_WUSER (bcid3_WUSER),
    .TRAN_bcid3_ARVALID (bcid3_ARVALID),
    .TRAN_bcid3_ARREADY (bcid3_ARREADY),
    .TRAN_bcid3_ARADDR (bcid3_ARADDR),
    .TRAN_bcid3_ARID (bcid3_ARID),
    .TRAN_bcid3_ARLEN (bcid3_ARLEN),
    .TRAN_bcid3_ARSIZE (bcid3_ARSIZE),
    .TRAN_bcid3_ARBURST (bcid3_ARBURST),
    .TRAN_bcid3_ARLOCK (bcid3_ARLOCK),
    .TRAN_bcid3_ARCACHE (bcid3_ARCACHE),
    .TRAN_bcid3_ARPROT (bcid3_ARPROT),
    .TRAN_bcid3_ARQOS (bcid3_ARQOS),
    .TRAN_bcid3_ARREGION (bcid3_ARREGION),
    .TRAN_bcid3_ARUSER (bcid3_ARUSER),
    .TRAN_bcid3_RVALID (bcid3_RVALID),
    .TRAN_bcid3_RREADY (bcid3_RREADY),
    .TRAN_bcid3_RDATA (bcid3_RDATA),
    .TRAN_bcid3_RLAST (bcid3_RLAST),
    .TRAN_bcid3_RID (bcid3_RID),
    .TRAN_bcid3_RUSER (bcid3_RUSER),
    .TRAN_bcid3_RRESP (bcid3_RRESP),
    .TRAN_bcid3_BVALID (bcid3_BVALID),
    .TRAN_bcid3_BREADY (bcid3_BREADY),
    .TRAN_bcid3_BRESP (bcid3_BRESP),
    .TRAN_bcid3_BID (bcid3_BID),
    .TRAN_bcid3_BUSER (bcid3_BUSER),
    .ready (AESL_axi_master_bcid3_ready),
    .done  (AESL_axi_master_bcid3_done)
);
assign    AESL_axi_master_bcid3_ready    =   ready;
assign    AESL_axi_master_bcid3_done    =   AESL_done_delay;
wire    AESL_axi_master_bval4_ready;
wire    AESL_axi_master_bval4_done;
AESL_axi_master_bval4 AESL_AXI_MASTER_bval4(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bval4_AWVALID (bval4_AWVALID),
    .TRAN_bval4_AWREADY (bval4_AWREADY),
    .TRAN_bval4_AWADDR (bval4_AWADDR),
    .TRAN_bval4_AWID (bval4_AWID),
    .TRAN_bval4_AWLEN (bval4_AWLEN),
    .TRAN_bval4_AWSIZE (bval4_AWSIZE),
    .TRAN_bval4_AWBURST (bval4_AWBURST),
    .TRAN_bval4_AWLOCK (bval4_AWLOCK),
    .TRAN_bval4_AWCACHE (bval4_AWCACHE),
    .TRAN_bval4_AWPROT (bval4_AWPROT),
    .TRAN_bval4_AWQOS (bval4_AWQOS),
    .TRAN_bval4_AWREGION (bval4_AWREGION),
    .TRAN_bval4_AWUSER (bval4_AWUSER),
    .TRAN_bval4_WVALID (bval4_WVALID),
    .TRAN_bval4_WREADY (bval4_WREADY),
    .TRAN_bval4_WDATA (bval4_WDATA),
    .TRAN_bval4_WSTRB (bval4_WSTRB),
    .TRAN_bval4_WLAST (bval4_WLAST),
    .TRAN_bval4_WID (bval4_WID),
    .TRAN_bval4_WUSER (bval4_WUSER),
    .TRAN_bval4_ARVALID (bval4_ARVALID),
    .TRAN_bval4_ARREADY (bval4_ARREADY),
    .TRAN_bval4_ARADDR (bval4_ARADDR),
    .TRAN_bval4_ARID (bval4_ARID),
    .TRAN_bval4_ARLEN (bval4_ARLEN),
    .TRAN_bval4_ARSIZE (bval4_ARSIZE),
    .TRAN_bval4_ARBURST (bval4_ARBURST),
    .TRAN_bval4_ARLOCK (bval4_ARLOCK),
    .TRAN_bval4_ARCACHE (bval4_ARCACHE),
    .TRAN_bval4_ARPROT (bval4_ARPROT),
    .TRAN_bval4_ARQOS (bval4_ARQOS),
    .TRAN_bval4_ARREGION (bval4_ARREGION),
    .TRAN_bval4_ARUSER (bval4_ARUSER),
    .TRAN_bval4_RVALID (bval4_RVALID),
    .TRAN_bval4_RREADY (bval4_RREADY),
    .TRAN_bval4_RDATA (bval4_RDATA),
    .TRAN_bval4_RLAST (bval4_RLAST),
    .TRAN_bval4_RID (bval4_RID),
    .TRAN_bval4_RUSER (bval4_RUSER),
    .TRAN_bval4_RRESP (bval4_RRESP),
    .TRAN_bval4_BVALID (bval4_BVALID),
    .TRAN_bval4_BREADY (bval4_BREADY),
    .TRAN_bval4_BRESP (bval4_BRESP),
    .TRAN_bval4_BID (bval4_BID),
    .TRAN_bval4_BUSER (bval4_BUSER),
    .ready (AESL_axi_master_bval4_ready),
    .done  (AESL_axi_master_bval4_done)
);
assign    AESL_axi_master_bval4_ready    =   ready;
assign    AESL_axi_master_bval4_done    =   AESL_done_delay;
wire    AESL_axi_master_bcid4_ready;
wire    AESL_axi_master_bcid4_done;
AESL_axi_master_bcid4 AESL_AXI_MASTER_bcid4(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bcid4_AWVALID (bcid4_AWVALID),
    .TRAN_bcid4_AWREADY (bcid4_AWREADY),
    .TRAN_bcid4_AWADDR (bcid4_AWADDR),
    .TRAN_bcid4_AWID (bcid4_AWID),
    .TRAN_bcid4_AWLEN (bcid4_AWLEN),
    .TRAN_bcid4_AWSIZE (bcid4_AWSIZE),
    .TRAN_bcid4_AWBURST (bcid4_AWBURST),
    .TRAN_bcid4_AWLOCK (bcid4_AWLOCK),
    .TRAN_bcid4_AWCACHE (bcid4_AWCACHE),
    .TRAN_bcid4_AWPROT (bcid4_AWPROT),
    .TRAN_bcid4_AWQOS (bcid4_AWQOS),
    .TRAN_bcid4_AWREGION (bcid4_AWREGION),
    .TRAN_bcid4_AWUSER (bcid4_AWUSER),
    .TRAN_bcid4_WVALID (bcid4_WVALID),
    .TRAN_bcid4_WREADY (bcid4_WREADY),
    .TRAN_bcid4_WDATA (bcid4_WDATA),
    .TRAN_bcid4_WSTRB (bcid4_WSTRB),
    .TRAN_bcid4_WLAST (bcid4_WLAST),
    .TRAN_bcid4_WID (bcid4_WID),
    .TRAN_bcid4_WUSER (bcid4_WUSER),
    .TRAN_bcid4_ARVALID (bcid4_ARVALID),
    .TRAN_bcid4_ARREADY (bcid4_ARREADY),
    .TRAN_bcid4_ARADDR (bcid4_ARADDR),
    .TRAN_bcid4_ARID (bcid4_ARID),
    .TRAN_bcid4_ARLEN (bcid4_ARLEN),
    .TRAN_bcid4_ARSIZE (bcid4_ARSIZE),
    .TRAN_bcid4_ARBURST (bcid4_ARBURST),
    .TRAN_bcid4_ARLOCK (bcid4_ARLOCK),
    .TRAN_bcid4_ARCACHE (bcid4_ARCACHE),
    .TRAN_bcid4_ARPROT (bcid4_ARPROT),
    .TRAN_bcid4_ARQOS (bcid4_ARQOS),
    .TRAN_bcid4_ARREGION (bcid4_ARREGION),
    .TRAN_bcid4_ARUSER (bcid4_ARUSER),
    .TRAN_bcid4_RVALID (bcid4_RVALID),
    .TRAN_bcid4_RREADY (bcid4_RREADY),
    .TRAN_bcid4_RDATA (bcid4_RDATA),
    .TRAN_bcid4_RLAST (bcid4_RLAST),
    .TRAN_bcid4_RID (bcid4_RID),
    .TRAN_bcid4_RUSER (bcid4_RUSER),
    .TRAN_bcid4_RRESP (bcid4_RRESP),
    .TRAN_bcid4_BVALID (bcid4_BVALID),
    .TRAN_bcid4_BREADY (bcid4_BREADY),
    .TRAN_bcid4_BRESP (bcid4_BRESP),
    .TRAN_bcid4_BID (bcid4_BID),
    .TRAN_bcid4_BUSER (bcid4_BUSER),
    .ready (AESL_axi_master_bcid4_ready),
    .done  (AESL_axi_master_bcid4_done)
);
assign    AESL_axi_master_bcid4_ready    =   ready;
assign    AESL_axi_master_bcid4_done    =   AESL_done_delay;
wire    AESL_axi_master_bv1_ready;
wire    AESL_axi_master_bv1_done;
AESL_axi_master_bv1 AESL_AXI_MASTER_bv1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bv1_AWVALID (bv1_AWVALID),
    .TRAN_bv1_AWREADY (bv1_AWREADY),
    .TRAN_bv1_AWADDR (bv1_AWADDR),
    .TRAN_bv1_AWID (bv1_AWID),
    .TRAN_bv1_AWLEN (bv1_AWLEN),
    .TRAN_bv1_AWSIZE (bv1_AWSIZE),
    .TRAN_bv1_AWBURST (bv1_AWBURST),
    .TRAN_bv1_AWLOCK (bv1_AWLOCK),
    .TRAN_bv1_AWCACHE (bv1_AWCACHE),
    .TRAN_bv1_AWPROT (bv1_AWPROT),
    .TRAN_bv1_AWQOS (bv1_AWQOS),
    .TRAN_bv1_AWREGION (bv1_AWREGION),
    .TRAN_bv1_AWUSER (bv1_AWUSER),
    .TRAN_bv1_WVALID (bv1_WVALID),
    .TRAN_bv1_WREADY (bv1_WREADY),
    .TRAN_bv1_WDATA (bv1_WDATA),
    .TRAN_bv1_WSTRB (bv1_WSTRB),
    .TRAN_bv1_WLAST (bv1_WLAST),
    .TRAN_bv1_WID (bv1_WID),
    .TRAN_bv1_WUSER (bv1_WUSER),
    .TRAN_bv1_ARVALID (bv1_ARVALID),
    .TRAN_bv1_ARREADY (bv1_ARREADY),
    .TRAN_bv1_ARADDR (bv1_ARADDR),
    .TRAN_bv1_ARID (bv1_ARID),
    .TRAN_bv1_ARLEN (bv1_ARLEN),
    .TRAN_bv1_ARSIZE (bv1_ARSIZE),
    .TRAN_bv1_ARBURST (bv1_ARBURST),
    .TRAN_bv1_ARLOCK (bv1_ARLOCK),
    .TRAN_bv1_ARCACHE (bv1_ARCACHE),
    .TRAN_bv1_ARPROT (bv1_ARPROT),
    .TRAN_bv1_ARQOS (bv1_ARQOS),
    .TRAN_bv1_ARREGION (bv1_ARREGION),
    .TRAN_bv1_ARUSER (bv1_ARUSER),
    .TRAN_bv1_RVALID (bv1_RVALID),
    .TRAN_bv1_RREADY (bv1_RREADY),
    .TRAN_bv1_RDATA (bv1_RDATA),
    .TRAN_bv1_RLAST (bv1_RLAST),
    .TRAN_bv1_RID (bv1_RID),
    .TRAN_bv1_RUSER (bv1_RUSER),
    .TRAN_bv1_RRESP (bv1_RRESP),
    .TRAN_bv1_BVALID (bv1_BVALID),
    .TRAN_bv1_BREADY (bv1_BREADY),
    .TRAN_bv1_BRESP (bv1_BRESP),
    .TRAN_bv1_BID (bv1_BID),
    .TRAN_bv1_BUSER (bv1_BUSER),
    .ready (AESL_axi_master_bv1_ready),
    .done  (AESL_axi_master_bv1_done)
);
assign    AESL_axi_master_bv1_ready    =   ready;
assign    AESL_axi_master_bv1_done    =   AESL_done_delay;
wire    AESL_axi_master_bc1_ready;
wire    AESL_axi_master_bc1_done;
AESL_axi_master_bc1 AESL_AXI_MASTER_bc1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bc1_AWVALID (bc1_AWVALID),
    .TRAN_bc1_AWREADY (bc1_AWREADY),
    .TRAN_bc1_AWADDR (bc1_AWADDR),
    .TRAN_bc1_AWID (bc1_AWID),
    .TRAN_bc1_AWLEN (bc1_AWLEN),
    .TRAN_bc1_AWSIZE (bc1_AWSIZE),
    .TRAN_bc1_AWBURST (bc1_AWBURST),
    .TRAN_bc1_AWLOCK (bc1_AWLOCK),
    .TRAN_bc1_AWCACHE (bc1_AWCACHE),
    .TRAN_bc1_AWPROT (bc1_AWPROT),
    .TRAN_bc1_AWQOS (bc1_AWQOS),
    .TRAN_bc1_AWREGION (bc1_AWREGION),
    .TRAN_bc1_AWUSER (bc1_AWUSER),
    .TRAN_bc1_WVALID (bc1_WVALID),
    .TRAN_bc1_WREADY (bc1_WREADY),
    .TRAN_bc1_WDATA (bc1_WDATA),
    .TRAN_bc1_WSTRB (bc1_WSTRB),
    .TRAN_bc1_WLAST (bc1_WLAST),
    .TRAN_bc1_WID (bc1_WID),
    .TRAN_bc1_WUSER (bc1_WUSER),
    .TRAN_bc1_ARVALID (bc1_ARVALID),
    .TRAN_bc1_ARREADY (bc1_ARREADY),
    .TRAN_bc1_ARADDR (bc1_ARADDR),
    .TRAN_bc1_ARID (bc1_ARID),
    .TRAN_bc1_ARLEN (bc1_ARLEN),
    .TRAN_bc1_ARSIZE (bc1_ARSIZE),
    .TRAN_bc1_ARBURST (bc1_ARBURST),
    .TRAN_bc1_ARLOCK (bc1_ARLOCK),
    .TRAN_bc1_ARCACHE (bc1_ARCACHE),
    .TRAN_bc1_ARPROT (bc1_ARPROT),
    .TRAN_bc1_ARQOS (bc1_ARQOS),
    .TRAN_bc1_ARREGION (bc1_ARREGION),
    .TRAN_bc1_ARUSER (bc1_ARUSER),
    .TRAN_bc1_RVALID (bc1_RVALID),
    .TRAN_bc1_RREADY (bc1_RREADY),
    .TRAN_bc1_RDATA (bc1_RDATA),
    .TRAN_bc1_RLAST (bc1_RLAST),
    .TRAN_bc1_RID (bc1_RID),
    .TRAN_bc1_RUSER (bc1_RUSER),
    .TRAN_bc1_RRESP (bc1_RRESP),
    .TRAN_bc1_BVALID (bc1_BVALID),
    .TRAN_bc1_BREADY (bc1_BREADY),
    .TRAN_bc1_BRESP (bc1_BRESP),
    .TRAN_bc1_BID (bc1_BID),
    .TRAN_bc1_BUSER (bc1_BUSER),
    .ready (AESL_axi_master_bc1_ready),
    .done  (AESL_axi_master_bc1_done)
);
assign    AESL_axi_master_bc1_ready    =   ready;
assign    AESL_axi_master_bc1_done    =   AESL_done_delay;
wire    AESL_axi_master_bv2_ready;
wire    AESL_axi_master_bv2_done;
AESL_axi_master_bv2 AESL_AXI_MASTER_bv2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bv2_AWVALID (bv2_AWVALID),
    .TRAN_bv2_AWREADY (bv2_AWREADY),
    .TRAN_bv2_AWADDR (bv2_AWADDR),
    .TRAN_bv2_AWID (bv2_AWID),
    .TRAN_bv2_AWLEN (bv2_AWLEN),
    .TRAN_bv2_AWSIZE (bv2_AWSIZE),
    .TRAN_bv2_AWBURST (bv2_AWBURST),
    .TRAN_bv2_AWLOCK (bv2_AWLOCK),
    .TRAN_bv2_AWCACHE (bv2_AWCACHE),
    .TRAN_bv2_AWPROT (bv2_AWPROT),
    .TRAN_bv2_AWQOS (bv2_AWQOS),
    .TRAN_bv2_AWREGION (bv2_AWREGION),
    .TRAN_bv2_AWUSER (bv2_AWUSER),
    .TRAN_bv2_WVALID (bv2_WVALID),
    .TRAN_bv2_WREADY (bv2_WREADY),
    .TRAN_bv2_WDATA (bv2_WDATA),
    .TRAN_bv2_WSTRB (bv2_WSTRB),
    .TRAN_bv2_WLAST (bv2_WLAST),
    .TRAN_bv2_WID (bv2_WID),
    .TRAN_bv2_WUSER (bv2_WUSER),
    .TRAN_bv2_ARVALID (bv2_ARVALID),
    .TRAN_bv2_ARREADY (bv2_ARREADY),
    .TRAN_bv2_ARADDR (bv2_ARADDR),
    .TRAN_bv2_ARID (bv2_ARID),
    .TRAN_bv2_ARLEN (bv2_ARLEN),
    .TRAN_bv2_ARSIZE (bv2_ARSIZE),
    .TRAN_bv2_ARBURST (bv2_ARBURST),
    .TRAN_bv2_ARLOCK (bv2_ARLOCK),
    .TRAN_bv2_ARCACHE (bv2_ARCACHE),
    .TRAN_bv2_ARPROT (bv2_ARPROT),
    .TRAN_bv2_ARQOS (bv2_ARQOS),
    .TRAN_bv2_ARREGION (bv2_ARREGION),
    .TRAN_bv2_ARUSER (bv2_ARUSER),
    .TRAN_bv2_RVALID (bv2_RVALID),
    .TRAN_bv2_RREADY (bv2_RREADY),
    .TRAN_bv2_RDATA (bv2_RDATA),
    .TRAN_bv2_RLAST (bv2_RLAST),
    .TRAN_bv2_RID (bv2_RID),
    .TRAN_bv2_RUSER (bv2_RUSER),
    .TRAN_bv2_RRESP (bv2_RRESP),
    .TRAN_bv2_BVALID (bv2_BVALID),
    .TRAN_bv2_BREADY (bv2_BREADY),
    .TRAN_bv2_BRESP (bv2_BRESP),
    .TRAN_bv2_BID (bv2_BID),
    .TRAN_bv2_BUSER (bv2_BUSER),
    .ready (AESL_axi_master_bv2_ready),
    .done  (AESL_axi_master_bv2_done)
);
assign    AESL_axi_master_bv2_ready    =   ready;
assign    AESL_axi_master_bv2_done    =   AESL_done_delay;
wire    AESL_axi_master_bc2_ready;
wire    AESL_axi_master_bc2_done;
AESL_axi_master_bc2 AESL_AXI_MASTER_bc2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bc2_AWVALID (bc2_AWVALID),
    .TRAN_bc2_AWREADY (bc2_AWREADY),
    .TRAN_bc2_AWADDR (bc2_AWADDR),
    .TRAN_bc2_AWID (bc2_AWID),
    .TRAN_bc2_AWLEN (bc2_AWLEN),
    .TRAN_bc2_AWSIZE (bc2_AWSIZE),
    .TRAN_bc2_AWBURST (bc2_AWBURST),
    .TRAN_bc2_AWLOCK (bc2_AWLOCK),
    .TRAN_bc2_AWCACHE (bc2_AWCACHE),
    .TRAN_bc2_AWPROT (bc2_AWPROT),
    .TRAN_bc2_AWQOS (bc2_AWQOS),
    .TRAN_bc2_AWREGION (bc2_AWREGION),
    .TRAN_bc2_AWUSER (bc2_AWUSER),
    .TRAN_bc2_WVALID (bc2_WVALID),
    .TRAN_bc2_WREADY (bc2_WREADY),
    .TRAN_bc2_WDATA (bc2_WDATA),
    .TRAN_bc2_WSTRB (bc2_WSTRB),
    .TRAN_bc2_WLAST (bc2_WLAST),
    .TRAN_bc2_WID (bc2_WID),
    .TRAN_bc2_WUSER (bc2_WUSER),
    .TRAN_bc2_ARVALID (bc2_ARVALID),
    .TRAN_bc2_ARREADY (bc2_ARREADY),
    .TRAN_bc2_ARADDR (bc2_ARADDR),
    .TRAN_bc2_ARID (bc2_ARID),
    .TRAN_bc2_ARLEN (bc2_ARLEN),
    .TRAN_bc2_ARSIZE (bc2_ARSIZE),
    .TRAN_bc2_ARBURST (bc2_ARBURST),
    .TRAN_bc2_ARLOCK (bc2_ARLOCK),
    .TRAN_bc2_ARCACHE (bc2_ARCACHE),
    .TRAN_bc2_ARPROT (bc2_ARPROT),
    .TRAN_bc2_ARQOS (bc2_ARQOS),
    .TRAN_bc2_ARREGION (bc2_ARREGION),
    .TRAN_bc2_ARUSER (bc2_ARUSER),
    .TRAN_bc2_RVALID (bc2_RVALID),
    .TRAN_bc2_RREADY (bc2_RREADY),
    .TRAN_bc2_RDATA (bc2_RDATA),
    .TRAN_bc2_RLAST (bc2_RLAST),
    .TRAN_bc2_RID (bc2_RID),
    .TRAN_bc2_RUSER (bc2_RUSER),
    .TRAN_bc2_RRESP (bc2_RRESP),
    .TRAN_bc2_BVALID (bc2_BVALID),
    .TRAN_bc2_BREADY (bc2_BREADY),
    .TRAN_bc2_BRESP (bc2_BRESP),
    .TRAN_bc2_BID (bc2_BID),
    .TRAN_bc2_BUSER (bc2_BUSER),
    .ready (AESL_axi_master_bc2_ready),
    .done  (AESL_axi_master_bc2_done)
);
assign    AESL_axi_master_bc2_ready    =   ready;
assign    AESL_axi_master_bc2_done    =   AESL_done_delay;
wire    AESL_axi_master_bv3_ready;
wire    AESL_axi_master_bv3_done;
AESL_axi_master_bv3 AESL_AXI_MASTER_bv3(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bv3_AWVALID (bv3_AWVALID),
    .TRAN_bv3_AWREADY (bv3_AWREADY),
    .TRAN_bv3_AWADDR (bv3_AWADDR),
    .TRAN_bv3_AWID (bv3_AWID),
    .TRAN_bv3_AWLEN (bv3_AWLEN),
    .TRAN_bv3_AWSIZE (bv3_AWSIZE),
    .TRAN_bv3_AWBURST (bv3_AWBURST),
    .TRAN_bv3_AWLOCK (bv3_AWLOCK),
    .TRAN_bv3_AWCACHE (bv3_AWCACHE),
    .TRAN_bv3_AWPROT (bv3_AWPROT),
    .TRAN_bv3_AWQOS (bv3_AWQOS),
    .TRAN_bv3_AWREGION (bv3_AWREGION),
    .TRAN_bv3_AWUSER (bv3_AWUSER),
    .TRAN_bv3_WVALID (bv3_WVALID),
    .TRAN_bv3_WREADY (bv3_WREADY),
    .TRAN_bv3_WDATA (bv3_WDATA),
    .TRAN_bv3_WSTRB (bv3_WSTRB),
    .TRAN_bv3_WLAST (bv3_WLAST),
    .TRAN_bv3_WID (bv3_WID),
    .TRAN_bv3_WUSER (bv3_WUSER),
    .TRAN_bv3_ARVALID (bv3_ARVALID),
    .TRAN_bv3_ARREADY (bv3_ARREADY),
    .TRAN_bv3_ARADDR (bv3_ARADDR),
    .TRAN_bv3_ARID (bv3_ARID),
    .TRAN_bv3_ARLEN (bv3_ARLEN),
    .TRAN_bv3_ARSIZE (bv3_ARSIZE),
    .TRAN_bv3_ARBURST (bv3_ARBURST),
    .TRAN_bv3_ARLOCK (bv3_ARLOCK),
    .TRAN_bv3_ARCACHE (bv3_ARCACHE),
    .TRAN_bv3_ARPROT (bv3_ARPROT),
    .TRAN_bv3_ARQOS (bv3_ARQOS),
    .TRAN_bv3_ARREGION (bv3_ARREGION),
    .TRAN_bv3_ARUSER (bv3_ARUSER),
    .TRAN_bv3_RVALID (bv3_RVALID),
    .TRAN_bv3_RREADY (bv3_RREADY),
    .TRAN_bv3_RDATA (bv3_RDATA),
    .TRAN_bv3_RLAST (bv3_RLAST),
    .TRAN_bv3_RID (bv3_RID),
    .TRAN_bv3_RUSER (bv3_RUSER),
    .TRAN_bv3_RRESP (bv3_RRESP),
    .TRAN_bv3_BVALID (bv3_BVALID),
    .TRAN_bv3_BREADY (bv3_BREADY),
    .TRAN_bv3_BRESP (bv3_BRESP),
    .TRAN_bv3_BID (bv3_BID),
    .TRAN_bv3_BUSER (bv3_BUSER),
    .ready (AESL_axi_master_bv3_ready),
    .done  (AESL_axi_master_bv3_done)
);
assign    AESL_axi_master_bv3_ready    =   ready;
assign    AESL_axi_master_bv3_done    =   AESL_done_delay;
wire    AESL_axi_master_bc3_ready;
wire    AESL_axi_master_bc3_done;
AESL_axi_master_bc3 AESL_AXI_MASTER_bc3(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bc3_AWVALID (bc3_AWVALID),
    .TRAN_bc3_AWREADY (bc3_AWREADY),
    .TRAN_bc3_AWADDR (bc3_AWADDR),
    .TRAN_bc3_AWID (bc3_AWID),
    .TRAN_bc3_AWLEN (bc3_AWLEN),
    .TRAN_bc3_AWSIZE (bc3_AWSIZE),
    .TRAN_bc3_AWBURST (bc3_AWBURST),
    .TRAN_bc3_AWLOCK (bc3_AWLOCK),
    .TRAN_bc3_AWCACHE (bc3_AWCACHE),
    .TRAN_bc3_AWPROT (bc3_AWPROT),
    .TRAN_bc3_AWQOS (bc3_AWQOS),
    .TRAN_bc3_AWREGION (bc3_AWREGION),
    .TRAN_bc3_AWUSER (bc3_AWUSER),
    .TRAN_bc3_WVALID (bc3_WVALID),
    .TRAN_bc3_WREADY (bc3_WREADY),
    .TRAN_bc3_WDATA (bc3_WDATA),
    .TRAN_bc3_WSTRB (bc3_WSTRB),
    .TRAN_bc3_WLAST (bc3_WLAST),
    .TRAN_bc3_WID (bc3_WID),
    .TRAN_bc3_WUSER (bc3_WUSER),
    .TRAN_bc3_ARVALID (bc3_ARVALID),
    .TRAN_bc3_ARREADY (bc3_ARREADY),
    .TRAN_bc3_ARADDR (bc3_ARADDR),
    .TRAN_bc3_ARID (bc3_ARID),
    .TRAN_bc3_ARLEN (bc3_ARLEN),
    .TRAN_bc3_ARSIZE (bc3_ARSIZE),
    .TRAN_bc3_ARBURST (bc3_ARBURST),
    .TRAN_bc3_ARLOCK (bc3_ARLOCK),
    .TRAN_bc3_ARCACHE (bc3_ARCACHE),
    .TRAN_bc3_ARPROT (bc3_ARPROT),
    .TRAN_bc3_ARQOS (bc3_ARQOS),
    .TRAN_bc3_ARREGION (bc3_ARREGION),
    .TRAN_bc3_ARUSER (bc3_ARUSER),
    .TRAN_bc3_RVALID (bc3_RVALID),
    .TRAN_bc3_RREADY (bc3_RREADY),
    .TRAN_bc3_RDATA (bc3_RDATA),
    .TRAN_bc3_RLAST (bc3_RLAST),
    .TRAN_bc3_RID (bc3_RID),
    .TRAN_bc3_RUSER (bc3_RUSER),
    .TRAN_bc3_RRESP (bc3_RRESP),
    .TRAN_bc3_BVALID (bc3_BVALID),
    .TRAN_bc3_BREADY (bc3_BREADY),
    .TRAN_bc3_BRESP (bc3_BRESP),
    .TRAN_bc3_BID (bc3_BID),
    .TRAN_bc3_BUSER (bc3_BUSER),
    .ready (AESL_axi_master_bc3_ready),
    .done  (AESL_axi_master_bc3_done)
);
assign    AESL_axi_master_bc3_ready    =   ready;
assign    AESL_axi_master_bc3_done    =   AESL_done_delay;
wire    AESL_axi_master_bv4_ready;
wire    AESL_axi_master_bv4_done;
AESL_axi_master_bv4 AESL_AXI_MASTER_bv4(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bv4_AWVALID (bv4_AWVALID),
    .TRAN_bv4_AWREADY (bv4_AWREADY),
    .TRAN_bv4_AWADDR (bv4_AWADDR),
    .TRAN_bv4_AWID (bv4_AWID),
    .TRAN_bv4_AWLEN (bv4_AWLEN),
    .TRAN_bv4_AWSIZE (bv4_AWSIZE),
    .TRAN_bv4_AWBURST (bv4_AWBURST),
    .TRAN_bv4_AWLOCK (bv4_AWLOCK),
    .TRAN_bv4_AWCACHE (bv4_AWCACHE),
    .TRAN_bv4_AWPROT (bv4_AWPROT),
    .TRAN_bv4_AWQOS (bv4_AWQOS),
    .TRAN_bv4_AWREGION (bv4_AWREGION),
    .TRAN_bv4_AWUSER (bv4_AWUSER),
    .TRAN_bv4_WVALID (bv4_WVALID),
    .TRAN_bv4_WREADY (bv4_WREADY),
    .TRAN_bv4_WDATA (bv4_WDATA),
    .TRAN_bv4_WSTRB (bv4_WSTRB),
    .TRAN_bv4_WLAST (bv4_WLAST),
    .TRAN_bv4_WID (bv4_WID),
    .TRAN_bv4_WUSER (bv4_WUSER),
    .TRAN_bv4_ARVALID (bv4_ARVALID),
    .TRAN_bv4_ARREADY (bv4_ARREADY),
    .TRAN_bv4_ARADDR (bv4_ARADDR),
    .TRAN_bv4_ARID (bv4_ARID),
    .TRAN_bv4_ARLEN (bv4_ARLEN),
    .TRAN_bv4_ARSIZE (bv4_ARSIZE),
    .TRAN_bv4_ARBURST (bv4_ARBURST),
    .TRAN_bv4_ARLOCK (bv4_ARLOCK),
    .TRAN_bv4_ARCACHE (bv4_ARCACHE),
    .TRAN_bv4_ARPROT (bv4_ARPROT),
    .TRAN_bv4_ARQOS (bv4_ARQOS),
    .TRAN_bv4_ARREGION (bv4_ARREGION),
    .TRAN_bv4_ARUSER (bv4_ARUSER),
    .TRAN_bv4_RVALID (bv4_RVALID),
    .TRAN_bv4_RREADY (bv4_RREADY),
    .TRAN_bv4_RDATA (bv4_RDATA),
    .TRAN_bv4_RLAST (bv4_RLAST),
    .TRAN_bv4_RID (bv4_RID),
    .TRAN_bv4_RUSER (bv4_RUSER),
    .TRAN_bv4_RRESP (bv4_RRESP),
    .TRAN_bv4_BVALID (bv4_BVALID),
    .TRAN_bv4_BREADY (bv4_BREADY),
    .TRAN_bv4_BRESP (bv4_BRESP),
    .TRAN_bv4_BID (bv4_BID),
    .TRAN_bv4_BUSER (bv4_BUSER),
    .ready (AESL_axi_master_bv4_ready),
    .done  (AESL_axi_master_bv4_done)
);
assign    AESL_axi_master_bv4_ready    =   ready;
assign    AESL_axi_master_bv4_done    =   AESL_done_delay;
wire    AESL_axi_master_bc4_ready;
wire    AESL_axi_master_bc4_done;
AESL_axi_master_bc4 AESL_AXI_MASTER_bc4(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_bc4_AWVALID (bc4_AWVALID),
    .TRAN_bc4_AWREADY (bc4_AWREADY),
    .TRAN_bc4_AWADDR (bc4_AWADDR),
    .TRAN_bc4_AWID (bc4_AWID),
    .TRAN_bc4_AWLEN (bc4_AWLEN),
    .TRAN_bc4_AWSIZE (bc4_AWSIZE),
    .TRAN_bc4_AWBURST (bc4_AWBURST),
    .TRAN_bc4_AWLOCK (bc4_AWLOCK),
    .TRAN_bc4_AWCACHE (bc4_AWCACHE),
    .TRAN_bc4_AWPROT (bc4_AWPROT),
    .TRAN_bc4_AWQOS (bc4_AWQOS),
    .TRAN_bc4_AWREGION (bc4_AWREGION),
    .TRAN_bc4_AWUSER (bc4_AWUSER),
    .TRAN_bc4_WVALID (bc4_WVALID),
    .TRAN_bc4_WREADY (bc4_WREADY),
    .TRAN_bc4_WDATA (bc4_WDATA),
    .TRAN_bc4_WSTRB (bc4_WSTRB),
    .TRAN_bc4_WLAST (bc4_WLAST),
    .TRAN_bc4_WID (bc4_WID),
    .TRAN_bc4_WUSER (bc4_WUSER),
    .TRAN_bc4_ARVALID (bc4_ARVALID),
    .TRAN_bc4_ARREADY (bc4_ARREADY),
    .TRAN_bc4_ARADDR (bc4_ARADDR),
    .TRAN_bc4_ARID (bc4_ARID),
    .TRAN_bc4_ARLEN (bc4_ARLEN),
    .TRAN_bc4_ARSIZE (bc4_ARSIZE),
    .TRAN_bc4_ARBURST (bc4_ARBURST),
    .TRAN_bc4_ARLOCK (bc4_ARLOCK),
    .TRAN_bc4_ARCACHE (bc4_ARCACHE),
    .TRAN_bc4_ARPROT (bc4_ARPROT),
    .TRAN_bc4_ARQOS (bc4_ARQOS),
    .TRAN_bc4_ARREGION (bc4_ARREGION),
    .TRAN_bc4_ARUSER (bc4_ARUSER),
    .TRAN_bc4_RVALID (bc4_RVALID),
    .TRAN_bc4_RREADY (bc4_RREADY),
    .TRAN_bc4_RDATA (bc4_RDATA),
    .TRAN_bc4_RLAST (bc4_RLAST),
    .TRAN_bc4_RID (bc4_RID),
    .TRAN_bc4_RUSER (bc4_RUSER),
    .TRAN_bc4_RRESP (bc4_RRESP),
    .TRAN_bc4_BVALID (bc4_BVALID),
    .TRAN_bc4_BREADY (bc4_BREADY),
    .TRAN_bc4_BRESP (bc4_BRESP),
    .TRAN_bc4_BID (bc4_BID),
    .TRAN_bc4_BUSER (bc4_BUSER),
    .ready (AESL_axi_master_bc4_ready),
    .done  (AESL_axi_master_bc4_done)
);
assign    AESL_axi_master_bc4_ready    =   ready;
assign    AESL_axi_master_bc4_done    =   AESL_done_delay;
wire    AESL_axi_master_crcsr_ready;
wire    AESL_axi_master_crcsr_done;
AESL_axi_master_crcsr AESL_AXI_MASTER_crcsr(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_crcsr_AWVALID (crcsr_AWVALID),
    .TRAN_crcsr_AWREADY (crcsr_AWREADY),
    .TRAN_crcsr_AWADDR (crcsr_AWADDR),
    .TRAN_crcsr_AWID (crcsr_AWID),
    .TRAN_crcsr_AWLEN (crcsr_AWLEN),
    .TRAN_crcsr_AWSIZE (crcsr_AWSIZE),
    .TRAN_crcsr_AWBURST (crcsr_AWBURST),
    .TRAN_crcsr_AWLOCK (crcsr_AWLOCK),
    .TRAN_crcsr_AWCACHE (crcsr_AWCACHE),
    .TRAN_crcsr_AWPROT (crcsr_AWPROT),
    .TRAN_crcsr_AWQOS (crcsr_AWQOS),
    .TRAN_crcsr_AWREGION (crcsr_AWREGION),
    .TRAN_crcsr_AWUSER (crcsr_AWUSER),
    .TRAN_crcsr_WVALID (crcsr_WVALID),
    .TRAN_crcsr_WREADY (crcsr_WREADY),
    .TRAN_crcsr_WDATA (crcsr_WDATA),
    .TRAN_crcsr_WSTRB (crcsr_WSTRB),
    .TRAN_crcsr_WLAST (crcsr_WLAST),
    .TRAN_crcsr_WID (crcsr_WID),
    .TRAN_crcsr_WUSER (crcsr_WUSER),
    .TRAN_crcsr_ARVALID (crcsr_ARVALID),
    .TRAN_crcsr_ARREADY (crcsr_ARREADY),
    .TRAN_crcsr_ARADDR (crcsr_ARADDR),
    .TRAN_crcsr_ARID (crcsr_ARID),
    .TRAN_crcsr_ARLEN (crcsr_ARLEN),
    .TRAN_crcsr_ARSIZE (crcsr_ARSIZE),
    .TRAN_crcsr_ARBURST (crcsr_ARBURST),
    .TRAN_crcsr_ARLOCK (crcsr_ARLOCK),
    .TRAN_crcsr_ARCACHE (crcsr_ARCACHE),
    .TRAN_crcsr_ARPROT (crcsr_ARPROT),
    .TRAN_crcsr_ARQOS (crcsr_ARQOS),
    .TRAN_crcsr_ARREGION (crcsr_ARREGION),
    .TRAN_crcsr_ARUSER (crcsr_ARUSER),
    .TRAN_crcsr_RVALID (crcsr_RVALID),
    .TRAN_crcsr_RREADY (crcsr_RREADY),
    .TRAN_crcsr_RDATA (crcsr_RDATA),
    .TRAN_crcsr_RLAST (crcsr_RLAST),
    .TRAN_crcsr_RID (crcsr_RID),
    .TRAN_crcsr_RUSER (crcsr_RUSER),
    .TRAN_crcsr_RRESP (crcsr_RRESP),
    .TRAN_crcsr_BVALID (crcsr_BVALID),
    .TRAN_crcsr_BREADY (crcsr_BREADY),
    .TRAN_crcsr_BRESP (crcsr_BRESP),
    .TRAN_crcsr_BID (crcsr_BID),
    .TRAN_crcsr_BUSER (crcsr_BUSER),
    .ready (AESL_axi_master_crcsr_ready),
    .done  (AESL_axi_master_crcsr_done)
);
assign    AESL_axi_master_crcsr_ready    =   ready;
assign    AESL_axi_master_crcsr_done    =   AESL_done_delay;
wire    AESL_axi_master_ccid_ready;
wire    AESL_axi_master_ccid_done;
AESL_axi_master_ccid AESL_AXI_MASTER_ccid(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_ccid_AWVALID (ccid_AWVALID),
    .TRAN_ccid_AWREADY (ccid_AWREADY),
    .TRAN_ccid_AWADDR (ccid_AWADDR),
    .TRAN_ccid_AWID (ccid_AWID),
    .TRAN_ccid_AWLEN (ccid_AWLEN),
    .TRAN_ccid_AWSIZE (ccid_AWSIZE),
    .TRAN_ccid_AWBURST (ccid_AWBURST),
    .TRAN_ccid_AWLOCK (ccid_AWLOCK),
    .TRAN_ccid_AWCACHE (ccid_AWCACHE),
    .TRAN_ccid_AWPROT (ccid_AWPROT),
    .TRAN_ccid_AWQOS (ccid_AWQOS),
    .TRAN_ccid_AWREGION (ccid_AWREGION),
    .TRAN_ccid_AWUSER (ccid_AWUSER),
    .TRAN_ccid_WVALID (ccid_WVALID),
    .TRAN_ccid_WREADY (ccid_WREADY),
    .TRAN_ccid_WDATA (ccid_WDATA),
    .TRAN_ccid_WSTRB (ccid_WSTRB),
    .TRAN_ccid_WLAST (ccid_WLAST),
    .TRAN_ccid_WID (ccid_WID),
    .TRAN_ccid_WUSER (ccid_WUSER),
    .TRAN_ccid_ARVALID (ccid_ARVALID),
    .TRAN_ccid_ARREADY (ccid_ARREADY),
    .TRAN_ccid_ARADDR (ccid_ARADDR),
    .TRAN_ccid_ARID (ccid_ARID),
    .TRAN_ccid_ARLEN (ccid_ARLEN),
    .TRAN_ccid_ARSIZE (ccid_ARSIZE),
    .TRAN_ccid_ARBURST (ccid_ARBURST),
    .TRAN_ccid_ARLOCK (ccid_ARLOCK),
    .TRAN_ccid_ARCACHE (ccid_ARCACHE),
    .TRAN_ccid_ARPROT (ccid_ARPROT),
    .TRAN_ccid_ARQOS (ccid_ARQOS),
    .TRAN_ccid_ARREGION (ccid_ARREGION),
    .TRAN_ccid_ARUSER (ccid_ARUSER),
    .TRAN_ccid_RVALID (ccid_RVALID),
    .TRAN_ccid_RREADY (ccid_RREADY),
    .TRAN_ccid_RDATA (ccid_RDATA),
    .TRAN_ccid_RLAST (ccid_RLAST),
    .TRAN_ccid_RID (ccid_RID),
    .TRAN_ccid_RUSER (ccid_RUSER),
    .TRAN_ccid_RRESP (ccid_RRESP),
    .TRAN_ccid_BVALID (ccid_BVALID),
    .TRAN_ccid_BREADY (ccid_BREADY),
    .TRAN_ccid_BRESP (ccid_BRESP),
    .TRAN_ccid_BID (ccid_BID),
    .TRAN_ccid_BUSER (ccid_BUSER),
    .ready (AESL_axi_master_ccid_ready),
    .done  (AESL_axi_master_ccid_done)
);
assign    AESL_axi_master_ccid_ready    =   ready;
assign    AESL_axi_master_ccid_done    =   AESL_done_delay;
wire    AESL_axi_master_cval_ready;
wire    AESL_axi_master_cval_done;
AESL_axi_master_cval AESL_AXI_MASTER_cval(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_cval_AWVALID (cval_AWVALID),
    .TRAN_cval_AWREADY (cval_AWREADY),
    .TRAN_cval_AWADDR (cval_AWADDR),
    .TRAN_cval_AWID (cval_AWID),
    .TRAN_cval_AWLEN (cval_AWLEN),
    .TRAN_cval_AWSIZE (cval_AWSIZE),
    .TRAN_cval_AWBURST (cval_AWBURST),
    .TRAN_cval_AWLOCK (cval_AWLOCK),
    .TRAN_cval_AWCACHE (cval_AWCACHE),
    .TRAN_cval_AWPROT (cval_AWPROT),
    .TRAN_cval_AWQOS (cval_AWQOS),
    .TRAN_cval_AWREGION (cval_AWREGION),
    .TRAN_cval_AWUSER (cval_AWUSER),
    .TRAN_cval_WVALID (cval_WVALID),
    .TRAN_cval_WREADY (cval_WREADY),
    .TRAN_cval_WDATA (cval_WDATA),
    .TRAN_cval_WSTRB (cval_WSTRB),
    .TRAN_cval_WLAST (cval_WLAST),
    .TRAN_cval_WID (cval_WID),
    .TRAN_cval_WUSER (cval_WUSER),
    .TRAN_cval_ARVALID (cval_ARVALID),
    .TRAN_cval_ARREADY (cval_ARREADY),
    .TRAN_cval_ARADDR (cval_ARADDR),
    .TRAN_cval_ARID (cval_ARID),
    .TRAN_cval_ARLEN (cval_ARLEN),
    .TRAN_cval_ARSIZE (cval_ARSIZE),
    .TRAN_cval_ARBURST (cval_ARBURST),
    .TRAN_cval_ARLOCK (cval_ARLOCK),
    .TRAN_cval_ARCACHE (cval_ARCACHE),
    .TRAN_cval_ARPROT (cval_ARPROT),
    .TRAN_cval_ARQOS (cval_ARQOS),
    .TRAN_cval_ARREGION (cval_ARREGION),
    .TRAN_cval_ARUSER (cval_ARUSER),
    .TRAN_cval_RVALID (cval_RVALID),
    .TRAN_cval_RREADY (cval_RREADY),
    .TRAN_cval_RDATA (cval_RDATA),
    .TRAN_cval_RLAST (cval_RLAST),
    .TRAN_cval_RID (cval_RID),
    .TRAN_cval_RUSER (cval_RUSER),
    .TRAN_cval_RRESP (cval_RRESP),
    .TRAN_cval_BVALID (cval_BVALID),
    .TRAN_cval_BREADY (cval_BREADY),
    .TRAN_cval_BRESP (cval_BRESP),
    .TRAN_cval_BID (cval_BID),
    .TRAN_cval_BUSER (cval_BUSER),
    .ready (AESL_axi_master_cval_ready),
    .done  (AESL_axi_master_cval_done)
);
assign    AESL_axi_master_cval_ready    =   ready;
assign    AESL_axi_master_cval_done    =   AESL_done_delay;

AESL_axi_slave_control AESL_AXI_SLAVE_control(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_control_AWADDR (control_AWADDR),
    .TRAN_s_axi_control_AWVALID (control_AWVALID),
    .TRAN_s_axi_control_AWREADY (control_AWREADY),
    .TRAN_s_axi_control_WVALID (control_WVALID),
    .TRAN_s_axi_control_WREADY (control_WREADY),
    .TRAN_s_axi_control_WDATA (control_WDATA),
    .TRAN_s_axi_control_WSTRB (control_WSTRB),
    .TRAN_s_axi_control_ARADDR (control_ARADDR),
    .TRAN_s_axi_control_ARVALID (control_ARVALID),
    .TRAN_s_axi_control_ARREADY (control_ARREADY),
    .TRAN_s_axi_control_RVALID (control_RVALID),
    .TRAN_s_axi_control_RREADY (control_RREADY),
    .TRAN_s_axi_control_RDATA (control_RDATA),
    .TRAN_s_axi_control_RRESP (control_RRESP),
    .TRAN_s_axi_control_BVALID (control_BVALID),
    .TRAN_s_axi_control_BREADY (control_BREADY),
    .TRAN_s_axi_control_BRESP (control_BRESP),
    .TRAN_control_write_data_finish(control_write_data_finish),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_in (AESL_slave_output_done),
    .TRAN_control_idle_in (AESL_idle),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
);
AESL_axi_slave_ctr AESL_AXI_SLAVE_ctr(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_s_axi_ctr_AWADDR (ctr_AWADDR),
    .TRAN_s_axi_ctr_AWVALID (ctr_AWVALID),
    .TRAN_s_axi_ctr_AWREADY (ctr_AWREADY),
    .TRAN_s_axi_ctr_WVALID (ctr_WVALID),
    .TRAN_s_axi_ctr_WREADY (ctr_WREADY),
    .TRAN_s_axi_ctr_WDATA (ctr_WDATA),
    .TRAN_s_axi_ctr_WSTRB (ctr_WSTRB),
    .TRAN_s_axi_ctr_ARADDR (ctr_ARADDR),
    .TRAN_s_axi_ctr_ARVALID (ctr_ARVALID),
    .TRAN_s_axi_ctr_ARREADY (ctr_ARREADY),
    .TRAN_s_axi_ctr_RVALID (ctr_RVALID),
    .TRAN_s_axi_ctr_RREADY (ctr_RREADY),
    .TRAN_s_axi_ctr_RDATA (ctr_RDATA),
    .TRAN_s_axi_ctr_RRESP (ctr_RRESP),
    .TRAN_s_axi_ctr_BVALID (ctr_BVALID),
    .TRAN_s_axi_ctr_BREADY (ctr_BREADY),
    .TRAN_s_axi_ctr_BRESP (ctr_BRESP),
    .TRAN_ctr_interrupt (ctr_INTERRUPT),
    .TRAN_ctr_read_data_finish(ctr_read_data_finish),
    .TRAN_ctr_write_data_finish(ctr_write_data_finish),
    .TRAN_ctr_ready_out (AESL_ready),
    .TRAN_ctr_ready_in (AESL_slave_ready),
    .TRAN_ctr_done_out (AESL_slave_output_done),
    .TRAN_ctr_idle_out (AESL_idle),
    .TRAN_ctr_write_start_in     (AESL_slave_write_start_in),
    .TRAN_ctr_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_ctr_transaction_done_in (AESL_done_delay),
    .TRAN_ctr_start_in  (AESL_slave_start)
);

initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 1);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 1);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (~AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_arcsr;
reg [31:0] size_arcsr;
reg [31:0] size_arcsr_backup;
reg end_acid;
reg [31:0] size_acid;
reg [31:0] size_acid_backup;
reg end_aval;
reg [31:0] size_aval;
reg [31:0] size_aval_backup;
reg end_brcsr1;
reg [31:0] size_brcsr1;
reg [31:0] size_brcsr1_backup;
reg end_brcsr2;
reg [31:0] size_brcsr2;
reg [31:0] size_brcsr2_backup;
reg end_brcsr3;
reg [31:0] size_brcsr3;
reg [31:0] size_brcsr3_backup;
reg end_brcsr4;
reg [31:0] size_brcsr4;
reg [31:0] size_brcsr4_backup;
reg end_bval1;
reg [31:0] size_bval1;
reg [31:0] size_bval1_backup;
reg end_bcid1;
reg [31:0] size_bcid1;
reg [31:0] size_bcid1_backup;
reg end_bval2;
reg [31:0] size_bval2;
reg [31:0] size_bval2_backup;
reg end_bcid2;
reg [31:0] size_bcid2;
reg [31:0] size_bcid2_backup;
reg end_bval3;
reg [31:0] size_bval3;
reg [31:0] size_bval3_backup;
reg end_bcid3;
reg [31:0] size_bcid3;
reg [31:0] size_bcid3_backup;
reg end_bval4;
reg [31:0] size_bval4;
reg [31:0] size_bval4_backup;
reg end_bcid4;
reg [31:0] size_bcid4;
reg [31:0] size_bcid4_backup;
reg end_bv1;
reg [31:0] size_bv1;
reg [31:0] size_bv1_backup;
reg end_bc1;
reg [31:0] size_bc1;
reg [31:0] size_bc1_backup;
reg end_bv2;
reg [31:0] size_bv2;
reg [31:0] size_bv2_backup;
reg end_bc2;
reg [31:0] size_bc2;
reg [31:0] size_bc2_backup;
reg end_bv3;
reg [31:0] size_bv3;
reg [31:0] size_bv3_backup;
reg end_bc3;
reg [31:0] size_bc3;
reg [31:0] size_bc3_backup;
reg end_bv4;
reg [31:0] size_bv4;
reg [31:0] size_bv4_backup;
reg end_bc4;
reg [31:0] size_bc4;
reg [31:0] size_bc4_backup;
reg end_crcsr;
reg [31:0] size_crcsr;
reg [31:0] size_crcsr_backup;
reg end_ccid;
reg [31:0] size_ccid;
reg [31:0] size_ccid_backup;
reg end_cval;
reg [31:0] size_cval;
reg [31:0] size_cval_backup;
reg end_A_rcsr;
reg [31:0] size_A_rcsr;
reg [31:0] size_A_rcsr_backup;
reg end_A_cid;
reg [31:0] size_A_cid;
reg [31:0] size_A_cid_backup;
reg end_A_val;
reg [31:0] size_A_val;
reg [31:0] size_A_val_backup;
reg end_arnum;
reg [31:0] size_arnum;
reg [31:0] size_arnum_backup;
reg end_B_rcsr1;
reg [31:0] size_B_rcsr1;
reg [31:0] size_B_rcsr1_backup;
reg end_B_rcsr2;
reg [31:0] size_B_rcsr2;
reg [31:0] size_B_rcsr2_backup;
reg end_B_rcsr3;
reg [31:0] size_B_rcsr3;
reg [31:0] size_B_rcsr3_backup;
reg end_B_rcsr4;
reg [31:0] size_B_rcsr4;
reg [31:0] size_B_rcsr4_backup;
reg end_B_val1;
reg [31:0] size_B_val1;
reg [31:0] size_B_val1_backup;
reg end_B_cid1;
reg [31:0] size_B_cid1;
reg [31:0] size_B_cid1_backup;
reg end_B_val2;
reg [31:0] size_B_val2;
reg [31:0] size_B_val2_backup;
reg end_B_cid2;
reg [31:0] size_B_cid2;
reg [31:0] size_B_cid2_backup;
reg end_B_val3;
reg [31:0] size_B_val3;
reg [31:0] size_B_val3_backup;
reg end_B_cid3;
reg [31:0] size_B_cid3;
reg [31:0] size_B_cid3_backup;
reg end_B_val4;
reg [31:0] size_B_val4;
reg [31:0] size_B_val4_backup;
reg end_B_cid4;
reg [31:0] size_B_cid4;
reg [31:0] size_B_cid4_backup;
reg end_brnum;
reg [31:0] size_brnum;
reg [31:0] size_brnum_backup;
reg end_B_val_port1;
reg [31:0] size_B_val_port1;
reg [31:0] size_B_val_port1_backup;
reg end_B_cid_port1;
reg [31:0] size_B_cid_port1;
reg [31:0] size_B_cid_port1_backup;
reg end_B_val_port2;
reg [31:0] size_B_val_port2;
reg [31:0] size_B_val_port2_backup;
reg end_B_cid_port2;
reg [31:0] size_B_cid_port2;
reg [31:0] size_B_cid_port2_backup;
reg end_B_val_port3;
reg [31:0] size_B_val_port3;
reg [31:0] size_B_val_port3_backup;
reg end_B_cid_port3;
reg [31:0] size_B_cid_port3;
reg [31:0] size_B_cid_port3_backup;
reg end_B_val_port4;
reg [31:0] size_B_val_port4;
reg [31:0] size_B_val_port4_backup;
reg end_B_cid_port4;
reg [31:0] size_B_cid_port4;
reg [31:0] size_B_cid_port4_backup;
reg end_C_rcsr;
reg [31:0] size_C_rcsr;
reg [31:0] size_C_rcsr_backup;
reg end_C_cid;
reg [31:0] size_C_cid;
reg [31:0] size_C_cid_backup;
reg end_C_val;
reg [31:0] size_C_val;
reg [31:0] size_C_val_backup;
reg end_B_rcsr_base;
reg [31:0] size_B_rcsr_base;
reg [31:0] size_B_rcsr_base_backup;
reg end_B_val_base;
reg [31:0] size_B_val_base;
reg [31:0] size_B_val_base_backup;
reg end_B_cid_base;
reg [31:0] size_B_cid_base;
reg [31:0] size_B_cid_base_backup;
reg end_r1acc;
reg [31:0] size_r1acc;
reg [31:0] size_r1acc_backup;
reg end_r1hit;
reg [31:0] size_r1hit;
reg [31:0] size_r1hit_backup;
reg end_r2acc;
reg [31:0] size_r2acc;
reg [31:0] size_r2acc_backup;
reg end_r2hit;
reg [31:0] size_r2hit;
reg [31:0] size_r2hit_backup;
reg end_r3acc;
reg [31:0] size_r3acc;
reg [31:0] size_r3acc_backup;
reg end_r3hit;
reg [31:0] size_r3hit;
reg [31:0] size_r3hit_backup;
reg end_r4acc;
reg [31:0] size_r4acc;
reg [31:0] size_r4acc_backup;
reg end_r4hit;
reg [31:0] size_r4hit;
reg [31:0] size_r4hit_backup;
reg end_vc1acc;
reg [31:0] size_vc1acc;
reg [31:0] size_vc1acc_backup;
reg end_vc1hit;
reg [31:0] size_vc1hit;
reg [31:0] size_vc1hit_backup;
reg end_vc2acc;
reg [31:0] size_vc2acc;
reg [31:0] size_vc2acc_backup;
reg end_vc2hit;
reg [31:0] size_vc2hit;
reg [31:0] size_vc2hit_backup;
reg end_vc3acc;
reg [31:0] size_vc3acc;
reg [31:0] size_vc3acc_backup;
reg end_vc3hit;
reg [31:0] size_vc3hit;
reg [31:0] size_vc3hit_backup;
reg end_vc4acc;
reg [31:0] size_vc4acc;
reg [31:0] size_vc4acc_backup;
reg end_vc4hit;
reg [31:0] size_vc4hit;
reg [31:0] size_vc4hit_backup;
reg end_fnum;
reg [31:0] size_fnum;
reg [31:0] size_fnum_backup;
reg end_workload_counter1;
reg [31:0] size_workload_counter1;
reg [31:0] size_workload_counter1_backup;
reg end_workload_counter2;
reg [31:0] size_workload_counter2;
reg [31:0] size_workload_counter2_backup;
reg end_workload_counter3;
reg [31:0] size_workload_counter3;
reg [31:0] size_workload_counter3_backup;
reg end_workload_counter4;
reg [31:0] size_workload_counter4;
reg [31:0] size_workload_counter4_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 1;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 1);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_cval;

initial begin : dump_tvout_runtime_sign_cval
    integer fp;
    dump_tvout_finish_cval = 0;
    fp = $fopen(`AUTOTB_TVOUT_cval_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_cval_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_cval_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_cval_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_cval = 1;
end


reg dump_tvout_finish_r1acc;

initial begin : dump_tvout_runtime_sign_r1acc
    integer fp;
    dump_tvout_finish_r1acc = 0;
    fp = $fopen(`AUTOTB_TVOUT_r1acc_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r1acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_r1acc_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r1acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_r1acc = 1;
end


reg dump_tvout_finish_r1hit;

initial begin : dump_tvout_runtime_sign_r1hit
    integer fp;
    dump_tvout_finish_r1hit = 0;
    fp = $fopen(`AUTOTB_TVOUT_r1hit_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r1hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_r1hit_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r1hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_r1hit = 1;
end


reg dump_tvout_finish_r2acc;

initial begin : dump_tvout_runtime_sign_r2acc
    integer fp;
    dump_tvout_finish_r2acc = 0;
    fp = $fopen(`AUTOTB_TVOUT_r2acc_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r2acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_r2acc_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r2acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_r2acc = 1;
end


reg dump_tvout_finish_r2hit;

initial begin : dump_tvout_runtime_sign_r2hit
    integer fp;
    dump_tvout_finish_r2hit = 0;
    fp = $fopen(`AUTOTB_TVOUT_r2hit_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r2hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_r2hit_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r2hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_r2hit = 1;
end


reg dump_tvout_finish_r3acc;

initial begin : dump_tvout_runtime_sign_r3acc
    integer fp;
    dump_tvout_finish_r3acc = 0;
    fp = $fopen(`AUTOTB_TVOUT_r3acc_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r3acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_r3acc_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r3acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_r3acc = 1;
end


reg dump_tvout_finish_r3hit;

initial begin : dump_tvout_runtime_sign_r3hit
    integer fp;
    dump_tvout_finish_r3hit = 0;
    fp = $fopen(`AUTOTB_TVOUT_r3hit_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r3hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_r3hit_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r3hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_r3hit = 1;
end


reg dump_tvout_finish_r4acc;

initial begin : dump_tvout_runtime_sign_r4acc
    integer fp;
    dump_tvout_finish_r4acc = 0;
    fp = $fopen(`AUTOTB_TVOUT_r4acc_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r4acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_r4acc_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r4acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_r4acc = 1;
end


reg dump_tvout_finish_r4hit;

initial begin : dump_tvout_runtime_sign_r4hit
    integer fp;
    dump_tvout_finish_r4hit = 0;
    fp = $fopen(`AUTOTB_TVOUT_r4hit_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r4hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_r4hit_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_r4hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_r4hit = 1;
end


reg dump_tvout_finish_vc1acc;

initial begin : dump_tvout_runtime_sign_vc1acc
    integer fp;
    dump_tvout_finish_vc1acc = 0;
    fp = $fopen(`AUTOTB_TVOUT_vc1acc_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc1acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_vc1acc_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc1acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vc1acc = 1;
end


reg dump_tvout_finish_vc1hit;

initial begin : dump_tvout_runtime_sign_vc1hit
    integer fp;
    dump_tvout_finish_vc1hit = 0;
    fp = $fopen(`AUTOTB_TVOUT_vc1hit_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc1hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_vc1hit_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc1hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vc1hit = 1;
end


reg dump_tvout_finish_vc2acc;

initial begin : dump_tvout_runtime_sign_vc2acc
    integer fp;
    dump_tvout_finish_vc2acc = 0;
    fp = $fopen(`AUTOTB_TVOUT_vc2acc_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc2acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_vc2acc_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc2acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vc2acc = 1;
end


reg dump_tvout_finish_vc2hit;

initial begin : dump_tvout_runtime_sign_vc2hit
    integer fp;
    dump_tvout_finish_vc2hit = 0;
    fp = $fopen(`AUTOTB_TVOUT_vc2hit_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc2hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_vc2hit_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc2hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vc2hit = 1;
end


reg dump_tvout_finish_vc3acc;

initial begin : dump_tvout_runtime_sign_vc3acc
    integer fp;
    dump_tvout_finish_vc3acc = 0;
    fp = $fopen(`AUTOTB_TVOUT_vc3acc_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc3acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_vc3acc_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc3acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vc3acc = 1;
end


reg dump_tvout_finish_vc3hit;

initial begin : dump_tvout_runtime_sign_vc3hit
    integer fp;
    dump_tvout_finish_vc3hit = 0;
    fp = $fopen(`AUTOTB_TVOUT_vc3hit_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc3hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_vc3hit_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc3hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vc3hit = 1;
end


reg dump_tvout_finish_vc4acc;

initial begin : dump_tvout_runtime_sign_vc4acc
    integer fp;
    dump_tvout_finish_vc4acc = 0;
    fp = $fopen(`AUTOTB_TVOUT_vc4acc_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc4acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_vc4acc_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc4acc_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vc4acc = 1;
end


reg dump_tvout_finish_vc4hit;

initial begin : dump_tvout_runtime_sign_vc4hit
    integer fp;
    dump_tvout_finish_vc4hit = 0;
    fp = $fopen(`AUTOTB_TVOUT_vc4hit_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc4hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_vc4hit_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_vc4hit_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_vc4hit = 1;
end


reg dump_tvout_finish_fnum;

initial begin : dump_tvout_runtime_sign_fnum
    integer fp;
    dump_tvout_finish_fnum = 0;
    fp = $fopen(`AUTOTB_TVOUT_fnum_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_fnum_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_fnum_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_fnum_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_fnum = 1;
end


reg dump_tvout_finish_workload_counter1;

initial begin : dump_tvout_runtime_sign_workload_counter1
    integer fp;
    dump_tvout_finish_workload_counter1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_workload_counter1_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_workload_counter1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_workload_counter1_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_workload_counter1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_workload_counter1 = 1;
end


reg dump_tvout_finish_workload_counter2;

initial begin : dump_tvout_runtime_sign_workload_counter2
    integer fp;
    dump_tvout_finish_workload_counter2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_workload_counter2_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_workload_counter2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_workload_counter2_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_workload_counter2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_workload_counter2 = 1;
end


reg dump_tvout_finish_workload_counter3;

initial begin : dump_tvout_runtime_sign_workload_counter3
    integer fp;
    dump_tvout_finish_workload_counter3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_workload_counter3_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_workload_counter3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_workload_counter3_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_workload_counter3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_workload_counter3 = 1;
end


reg dump_tvout_finish_workload_counter4;

initial begin : dump_tvout_runtime_sign_workload_counter4
    integer fp;
    dump_tvout_finish_workload_counter4 = 0;
    fp = $fopen(`AUTOTB_TVOUT_workload_counter4_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_workload_counter4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_workload_counter4_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_workload_counter4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_workload_counter4 = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 0) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 1);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 1);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

`endif

AESL_deadlock_detector deadlock_detector(
    .dl_reset(AESL_reset),
    .all_finish(all_finish),
    .dl_clock(AESL_clock));

///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
