// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps


`define AUTOTB_DUT      sparse_lu_shared
`define AUTOTB_DUT_INST AESL_inst_sparse_lu_shared
`define AUTOTB_TOP      apatb_sparse_lu_shared_top
`define AUTOTB_LAT_RESULT_FILE "sparse_lu_shared.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "sparse_lu_shared.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_sparse_lu_shared_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 2.50

`define AESL_DEPTH_a_row 1
`define AESL_DEPTH_a_col 1
`define AESL_DEPTH_a_val 1
`define AESL_DEPTH_l_row 1
`define AESL_DEPTH_l_col 1
`define AESL_DEPTH_l_val 1
`define AESL_DEPTH_u_row 1
`define AESL_DEPTH_u_col 1
`define AESL_DEPTH_u_val 1
`define AESL_DEPTH_x_row 1
`define AESL_DEPTH_x_col 1
`define AESL_DEPTH_x_val 1
`define AESL_DEPTH_operation 1
`define AESL_DEPTH_A_rcsr 1
`define AESL_DEPTH_A_cid 1
`define AESL_DEPTH_A_val_r 1
`define AESL_DEPTH_L_rcsr 1
`define AESL_DEPTH_L_cid 1
`define AESL_DEPTH_L_val_r 1
`define AESL_DEPTH_U_rcsr 1
`define AESL_DEPTH_U_cid 1
`define AESL_DEPTH_U_val_r 1
`define AESL_DEPTH_X_rcsr 1
`define AESL_DEPTH_X_cid 1
`define AESL_DEPTH_X_val_r 1
`define AESL_DEPTH_n 1
`define AESL_DEPTH_a_nnz 1
`define AESL_DEPTH_l_nnz 1
`define AESL_DEPTH_u_nnz 1
`define AESL_DEPTH_x_rows 1
`define AESL_DEPTH_x_cols 1
`define AESL_DEPTH_x_nnz 1
`define AESL_DEPTH_pivot_eps 1
`define AESL_DEPTH_status 1
`define AESL_DEPTH_failed_row 1
`define AUTOTB_TVIN_a_row  "../tv/cdatafile/c.sparse_lu_shared.autotvin_a_row.dat"
`define AUTOTB_TVIN_a_col  "../tv/cdatafile/c.sparse_lu_shared.autotvin_a_col.dat"
`define AUTOTB_TVIN_a_val  "../tv/cdatafile/c.sparse_lu_shared.autotvin_a_val.dat"
`define AUTOTB_TVIN_l_row  "../tv/cdatafile/c.sparse_lu_shared.autotvin_l_row.dat"
`define AUTOTB_TVIN_l_col  "../tv/cdatafile/c.sparse_lu_shared.autotvin_l_col.dat"
`define AUTOTB_TVIN_l_val  "../tv/cdatafile/c.sparse_lu_shared.autotvin_l_val.dat"
`define AUTOTB_TVIN_u_row  "../tv/cdatafile/c.sparse_lu_shared.autotvin_u_row.dat"
`define AUTOTB_TVIN_u_col  "../tv/cdatafile/c.sparse_lu_shared.autotvin_u_col.dat"
`define AUTOTB_TVIN_u_val  "../tv/cdatafile/c.sparse_lu_shared.autotvin_u_val.dat"
`define AUTOTB_TVIN_x_row  "../tv/cdatafile/c.sparse_lu_shared.autotvin_x_row.dat"
`define AUTOTB_TVIN_x_col  "../tv/cdatafile/c.sparse_lu_shared.autotvin_x_col.dat"
`define AUTOTB_TVIN_x_val  "../tv/cdatafile/c.sparse_lu_shared.autotvin_x_val.dat"
`define AUTOTB_TVIN_operation  "../tv/cdatafile/c.sparse_lu_shared.autotvin_operation.dat"
`define AUTOTB_TVIN_A_rcsr  "../tv/cdatafile/c.sparse_lu_shared.autotvin_A_rcsr.dat"
`define AUTOTB_TVIN_A_cid  "../tv/cdatafile/c.sparse_lu_shared.autotvin_A_cid.dat"
`define AUTOTB_TVIN_A_val_r  "../tv/cdatafile/c.sparse_lu_shared.autotvin_A_val_r.dat"
`define AUTOTB_TVIN_L_rcsr  "../tv/cdatafile/c.sparse_lu_shared.autotvin_L_rcsr.dat"
`define AUTOTB_TVIN_L_cid  "../tv/cdatafile/c.sparse_lu_shared.autotvin_L_cid.dat"
`define AUTOTB_TVIN_L_val_r  "../tv/cdatafile/c.sparse_lu_shared.autotvin_L_val_r.dat"
`define AUTOTB_TVIN_U_rcsr  "../tv/cdatafile/c.sparse_lu_shared.autotvin_U_rcsr.dat"
`define AUTOTB_TVIN_U_cid  "../tv/cdatafile/c.sparse_lu_shared.autotvin_U_cid.dat"
`define AUTOTB_TVIN_U_val_r  "../tv/cdatafile/c.sparse_lu_shared.autotvin_U_val_r.dat"
`define AUTOTB_TVIN_X_rcsr  "../tv/cdatafile/c.sparse_lu_shared.autotvin_X_rcsr.dat"
`define AUTOTB_TVIN_X_cid  "../tv/cdatafile/c.sparse_lu_shared.autotvin_X_cid.dat"
`define AUTOTB_TVIN_X_val_r  "../tv/cdatafile/c.sparse_lu_shared.autotvin_X_val_r.dat"
`define AUTOTB_TVIN_n  "../tv/cdatafile/c.sparse_lu_shared.autotvin_n.dat"
`define AUTOTB_TVIN_a_nnz  "../tv/cdatafile/c.sparse_lu_shared.autotvin_a_nnz.dat"
`define AUTOTB_TVIN_l_nnz  "../tv/cdatafile/c.sparse_lu_shared.autotvin_l_nnz.dat"
`define AUTOTB_TVIN_u_nnz  "../tv/cdatafile/c.sparse_lu_shared.autotvin_u_nnz.dat"
`define AUTOTB_TVIN_x_rows  "../tv/cdatafile/c.sparse_lu_shared.autotvin_x_rows.dat"
`define AUTOTB_TVIN_x_cols  "../tv/cdatafile/c.sparse_lu_shared.autotvin_x_cols.dat"
`define AUTOTB_TVIN_x_nnz  "../tv/cdatafile/c.sparse_lu_shared.autotvin_x_nnz.dat"
`define AUTOTB_TVIN_pivot_eps  "../tv/cdatafile/c.sparse_lu_shared.autotvin_pivot_eps.dat"
`define AUTOTB_TVIN_a_row_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_a_row.dat"
`define AUTOTB_TVIN_a_col_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_a_col.dat"
`define AUTOTB_TVIN_a_val_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_a_val.dat"
`define AUTOTB_TVIN_l_row_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_l_row.dat"
`define AUTOTB_TVIN_l_col_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_l_col.dat"
`define AUTOTB_TVIN_l_val_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_l_val.dat"
`define AUTOTB_TVIN_u_row_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_u_row.dat"
`define AUTOTB_TVIN_u_col_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_u_col.dat"
`define AUTOTB_TVIN_u_val_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_u_val.dat"
`define AUTOTB_TVIN_x_row_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_x_row.dat"
`define AUTOTB_TVIN_x_col_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_x_col.dat"
`define AUTOTB_TVIN_x_val_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_x_val.dat"
`define AUTOTB_TVIN_operation_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_operation.dat"
`define AUTOTB_TVIN_A_rcsr_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_A_rcsr.dat"
`define AUTOTB_TVIN_A_cid_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_A_cid.dat"
`define AUTOTB_TVIN_A_val_r_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_A_val_r.dat"
`define AUTOTB_TVIN_L_rcsr_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_L_rcsr.dat"
`define AUTOTB_TVIN_L_cid_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_L_cid.dat"
`define AUTOTB_TVIN_L_val_r_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_L_val_r.dat"
`define AUTOTB_TVIN_U_rcsr_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_U_rcsr.dat"
`define AUTOTB_TVIN_U_cid_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_U_cid.dat"
`define AUTOTB_TVIN_U_val_r_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_U_val_r.dat"
`define AUTOTB_TVIN_X_rcsr_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_X_rcsr.dat"
`define AUTOTB_TVIN_X_cid_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_X_cid.dat"
`define AUTOTB_TVIN_X_val_r_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_X_val_r.dat"
`define AUTOTB_TVIN_n_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_n.dat"
`define AUTOTB_TVIN_a_nnz_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_a_nnz.dat"
`define AUTOTB_TVIN_l_nnz_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_l_nnz.dat"
`define AUTOTB_TVIN_u_nnz_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_u_nnz.dat"
`define AUTOTB_TVIN_x_rows_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_x_rows.dat"
`define AUTOTB_TVIN_x_cols_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_x_cols.dat"
`define AUTOTB_TVIN_x_nnz_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_x_nnz.dat"
`define AUTOTB_TVIN_pivot_eps_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvin_pivot_eps.dat"
`define AUTOTB_TVOUT_l_val  "../tv/cdatafile/c.sparse_lu_shared.autotvout_l_val.dat"
`define AUTOTB_TVOUT_u_val  "../tv/cdatafile/c.sparse_lu_shared.autotvout_u_val.dat"
`define AUTOTB_TVOUT_x_val  "../tv/cdatafile/c.sparse_lu_shared.autotvout_x_val.dat"
`define AUTOTB_TVOUT_status  "../tv/cdatafile/c.sparse_lu_shared.autotvout_status.dat"
`define AUTOTB_TVOUT_failed_row  "../tv/cdatafile/c.sparse_lu_shared.autotvout_failed_row.dat"
`define AUTOTB_TVOUT_l_val_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_l_val.dat"
`define AUTOTB_TVOUT_u_val_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_u_val.dat"
`define AUTOTB_TVOUT_x_val_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_x_val.dat"
`define AUTOTB_TVOUT_status_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_status.dat"
`define AUTOTB_TVOUT_failed_row_out_wrapc  "../tv/rtldatafile/rtl.sparse_lu_shared.autotvout_failed_row.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 3;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_A_cid = 1;
parameter LENGTH_A_rcsr = 1;
parameter LENGTH_A_val_r = 1;
parameter LENGTH_L_cid = 1;
parameter LENGTH_L_rcsr = 1;
parameter LENGTH_L_val_r = 1;
parameter LENGTH_U_cid = 1;
parameter LENGTH_U_rcsr = 1;
parameter LENGTH_U_val_r = 1;
parameter LENGTH_X_cid = 1;
parameter LENGTH_X_rcsr = 1;
parameter LENGTH_X_val_r = 1;
parameter LENGTH_a_col = 1024;
parameter LENGTH_a_nnz = 1;
parameter LENGTH_a_row = 65;
parameter LENGTH_a_val = 1024;
parameter LENGTH_failed_row = 1;
parameter LENGTH_l_col = 2048;
parameter LENGTH_l_nnz = 1;
parameter LENGTH_l_row = 65;
parameter LENGTH_l_val = 2048;
parameter LENGTH_n = 1;
parameter LENGTH_operation = 1;
parameter LENGTH_pivot_eps = 1;
parameter LENGTH_status = 1;
parameter LENGTH_u_col = 2048;
parameter LENGTH_u_nnz = 1;
parameter LENGTH_u_row = 65;
parameter LENGTH_u_val = 2048;
parameter LENGTH_x_col = 4096;
parameter LENGTH_x_cols = 1;
parameter LENGTH_x_nnz = 1;
parameter LENGTH_x_row = 65;
parameter LENGTH_x_rows = 1;
parameter LENGTH_x_val = 4096;

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
wire [6 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [6 : 0] control_ARADDR;
wire  control_ARVALID;
wire  control_ARREADY;
wire  control_RVALID;
wire  control_RREADY;
wire [31 : 0] control_RDATA;
wire [1 : 0] control_RRESP;
wire  control_BVALID;
wire  control_BREADY;
wire [1 : 0] control_BRESP;
wire  control_INTERRUPT;
wire [7 : 0] control_r_AWADDR;
wire  control_r_AWVALID;
wire  control_r_AWREADY;
wire  control_r_WVALID;
wire  control_r_WREADY;
wire [31 : 0] control_r_WDATA;
wire [3 : 0] control_r_WSTRB;
wire [7 : 0] control_r_ARADDR;
wire  control_r_ARVALID;
wire  control_r_ARREADY;
wire  control_r_RVALID;
wire  control_r_RREADY;
wire [31 : 0] control_r_RDATA;
wire [1 : 0] control_r_RRESP;
wire  control_r_BVALID;
wire  control_r_BREADY;
wire [1 : 0] control_r_BRESP;
wire  a_row_AWVALID;
wire  a_row_AWREADY;
wire [63 : 0] a_row_AWADDR;
wire [0 : 0] a_row_AWID;
wire [7 : 0] a_row_AWLEN;
wire [2 : 0] a_row_AWSIZE;
wire [1 : 0] a_row_AWBURST;
wire [1 : 0] a_row_AWLOCK;
wire [3 : 0] a_row_AWCACHE;
wire [2 : 0] a_row_AWPROT;
wire [3 : 0] a_row_AWQOS;
wire [3 : 0] a_row_AWREGION;
wire [0 : 0] a_row_AWUSER;
wire  a_row_WVALID;
wire  a_row_WREADY;
wire [31 : 0] a_row_WDATA;
wire [3 : 0] a_row_WSTRB;
wire  a_row_WLAST;
wire [0 : 0] a_row_WID;
wire [0 : 0] a_row_WUSER;
wire  a_row_ARVALID;
wire  a_row_ARREADY;
wire [63 : 0] a_row_ARADDR;
wire [0 : 0] a_row_ARID;
wire [7 : 0] a_row_ARLEN;
wire [2 : 0] a_row_ARSIZE;
wire [1 : 0] a_row_ARBURST;
wire [1 : 0] a_row_ARLOCK;
wire [3 : 0] a_row_ARCACHE;
wire [2 : 0] a_row_ARPROT;
wire [3 : 0] a_row_ARQOS;
wire [3 : 0] a_row_ARREGION;
wire [0 : 0] a_row_ARUSER;
wire  a_row_RVALID;
wire  a_row_RREADY;
wire [31 : 0] a_row_RDATA;
wire  a_row_RLAST;
wire [0 : 0] a_row_RID;
wire [0 : 0] a_row_RUSER;
wire [1 : 0] a_row_RRESP;
wire  a_row_BVALID;
wire  a_row_BREADY;
wire [1 : 0] a_row_BRESP;
wire [0 : 0] a_row_BID;
wire [0 : 0] a_row_BUSER;
wire  a_col_AWVALID;
wire  a_col_AWREADY;
wire [63 : 0] a_col_AWADDR;
wire [0 : 0] a_col_AWID;
wire [7 : 0] a_col_AWLEN;
wire [2 : 0] a_col_AWSIZE;
wire [1 : 0] a_col_AWBURST;
wire [1 : 0] a_col_AWLOCK;
wire [3 : 0] a_col_AWCACHE;
wire [2 : 0] a_col_AWPROT;
wire [3 : 0] a_col_AWQOS;
wire [3 : 0] a_col_AWREGION;
wire [0 : 0] a_col_AWUSER;
wire  a_col_WVALID;
wire  a_col_WREADY;
wire [31 : 0] a_col_WDATA;
wire [3 : 0] a_col_WSTRB;
wire  a_col_WLAST;
wire [0 : 0] a_col_WID;
wire [0 : 0] a_col_WUSER;
wire  a_col_ARVALID;
wire  a_col_ARREADY;
wire [63 : 0] a_col_ARADDR;
wire [0 : 0] a_col_ARID;
wire [7 : 0] a_col_ARLEN;
wire [2 : 0] a_col_ARSIZE;
wire [1 : 0] a_col_ARBURST;
wire [1 : 0] a_col_ARLOCK;
wire [3 : 0] a_col_ARCACHE;
wire [2 : 0] a_col_ARPROT;
wire [3 : 0] a_col_ARQOS;
wire [3 : 0] a_col_ARREGION;
wire [0 : 0] a_col_ARUSER;
wire  a_col_RVALID;
wire  a_col_RREADY;
wire [31 : 0] a_col_RDATA;
wire  a_col_RLAST;
wire [0 : 0] a_col_RID;
wire [0 : 0] a_col_RUSER;
wire [1 : 0] a_col_RRESP;
wire  a_col_BVALID;
wire  a_col_BREADY;
wire [1 : 0] a_col_BRESP;
wire [0 : 0] a_col_BID;
wire [0 : 0] a_col_BUSER;
wire  a_val_AWVALID;
wire  a_val_AWREADY;
wire [63 : 0] a_val_AWADDR;
wire [0 : 0] a_val_AWID;
wire [7 : 0] a_val_AWLEN;
wire [2 : 0] a_val_AWSIZE;
wire [1 : 0] a_val_AWBURST;
wire [1 : 0] a_val_AWLOCK;
wire [3 : 0] a_val_AWCACHE;
wire [2 : 0] a_val_AWPROT;
wire [3 : 0] a_val_AWQOS;
wire [3 : 0] a_val_AWREGION;
wire [0 : 0] a_val_AWUSER;
wire  a_val_WVALID;
wire  a_val_WREADY;
wire [31 : 0] a_val_WDATA;
wire [3 : 0] a_val_WSTRB;
wire  a_val_WLAST;
wire [0 : 0] a_val_WID;
wire [0 : 0] a_val_WUSER;
wire  a_val_ARVALID;
wire  a_val_ARREADY;
wire [63 : 0] a_val_ARADDR;
wire [0 : 0] a_val_ARID;
wire [7 : 0] a_val_ARLEN;
wire [2 : 0] a_val_ARSIZE;
wire [1 : 0] a_val_ARBURST;
wire [1 : 0] a_val_ARLOCK;
wire [3 : 0] a_val_ARCACHE;
wire [2 : 0] a_val_ARPROT;
wire [3 : 0] a_val_ARQOS;
wire [3 : 0] a_val_ARREGION;
wire [0 : 0] a_val_ARUSER;
wire  a_val_RVALID;
wire  a_val_RREADY;
wire [31 : 0] a_val_RDATA;
wire  a_val_RLAST;
wire [0 : 0] a_val_RID;
wire [0 : 0] a_val_RUSER;
wire [1 : 0] a_val_RRESP;
wire  a_val_BVALID;
wire  a_val_BREADY;
wire [1 : 0] a_val_BRESP;
wire [0 : 0] a_val_BID;
wire [0 : 0] a_val_BUSER;
wire  l_row_AWVALID;
wire  l_row_AWREADY;
wire [63 : 0] l_row_AWADDR;
wire [0 : 0] l_row_AWID;
wire [7 : 0] l_row_AWLEN;
wire [2 : 0] l_row_AWSIZE;
wire [1 : 0] l_row_AWBURST;
wire [1 : 0] l_row_AWLOCK;
wire [3 : 0] l_row_AWCACHE;
wire [2 : 0] l_row_AWPROT;
wire [3 : 0] l_row_AWQOS;
wire [3 : 0] l_row_AWREGION;
wire [0 : 0] l_row_AWUSER;
wire  l_row_WVALID;
wire  l_row_WREADY;
wire [31 : 0] l_row_WDATA;
wire [3 : 0] l_row_WSTRB;
wire  l_row_WLAST;
wire [0 : 0] l_row_WID;
wire [0 : 0] l_row_WUSER;
wire  l_row_ARVALID;
wire  l_row_ARREADY;
wire [63 : 0] l_row_ARADDR;
wire [0 : 0] l_row_ARID;
wire [7 : 0] l_row_ARLEN;
wire [2 : 0] l_row_ARSIZE;
wire [1 : 0] l_row_ARBURST;
wire [1 : 0] l_row_ARLOCK;
wire [3 : 0] l_row_ARCACHE;
wire [2 : 0] l_row_ARPROT;
wire [3 : 0] l_row_ARQOS;
wire [3 : 0] l_row_ARREGION;
wire [0 : 0] l_row_ARUSER;
wire  l_row_RVALID;
wire  l_row_RREADY;
wire [31 : 0] l_row_RDATA;
wire  l_row_RLAST;
wire [0 : 0] l_row_RID;
wire [0 : 0] l_row_RUSER;
wire [1 : 0] l_row_RRESP;
wire  l_row_BVALID;
wire  l_row_BREADY;
wire [1 : 0] l_row_BRESP;
wire [0 : 0] l_row_BID;
wire [0 : 0] l_row_BUSER;
wire  l_col_AWVALID;
wire  l_col_AWREADY;
wire [63 : 0] l_col_AWADDR;
wire [0 : 0] l_col_AWID;
wire [7 : 0] l_col_AWLEN;
wire [2 : 0] l_col_AWSIZE;
wire [1 : 0] l_col_AWBURST;
wire [1 : 0] l_col_AWLOCK;
wire [3 : 0] l_col_AWCACHE;
wire [2 : 0] l_col_AWPROT;
wire [3 : 0] l_col_AWQOS;
wire [3 : 0] l_col_AWREGION;
wire [0 : 0] l_col_AWUSER;
wire  l_col_WVALID;
wire  l_col_WREADY;
wire [31 : 0] l_col_WDATA;
wire [3 : 0] l_col_WSTRB;
wire  l_col_WLAST;
wire [0 : 0] l_col_WID;
wire [0 : 0] l_col_WUSER;
wire  l_col_ARVALID;
wire  l_col_ARREADY;
wire [63 : 0] l_col_ARADDR;
wire [0 : 0] l_col_ARID;
wire [7 : 0] l_col_ARLEN;
wire [2 : 0] l_col_ARSIZE;
wire [1 : 0] l_col_ARBURST;
wire [1 : 0] l_col_ARLOCK;
wire [3 : 0] l_col_ARCACHE;
wire [2 : 0] l_col_ARPROT;
wire [3 : 0] l_col_ARQOS;
wire [3 : 0] l_col_ARREGION;
wire [0 : 0] l_col_ARUSER;
wire  l_col_RVALID;
wire  l_col_RREADY;
wire [31 : 0] l_col_RDATA;
wire  l_col_RLAST;
wire [0 : 0] l_col_RID;
wire [0 : 0] l_col_RUSER;
wire [1 : 0] l_col_RRESP;
wire  l_col_BVALID;
wire  l_col_BREADY;
wire [1 : 0] l_col_BRESP;
wire [0 : 0] l_col_BID;
wire [0 : 0] l_col_BUSER;
wire  l_val_AWVALID;
wire  l_val_AWREADY;
wire [63 : 0] l_val_AWADDR;
wire [0 : 0] l_val_AWID;
wire [7 : 0] l_val_AWLEN;
wire [2 : 0] l_val_AWSIZE;
wire [1 : 0] l_val_AWBURST;
wire [1 : 0] l_val_AWLOCK;
wire [3 : 0] l_val_AWCACHE;
wire [2 : 0] l_val_AWPROT;
wire [3 : 0] l_val_AWQOS;
wire [3 : 0] l_val_AWREGION;
wire [0 : 0] l_val_AWUSER;
wire  l_val_WVALID;
wire  l_val_WREADY;
wire [31 : 0] l_val_WDATA;
wire [3 : 0] l_val_WSTRB;
wire  l_val_WLAST;
wire [0 : 0] l_val_WID;
wire [0 : 0] l_val_WUSER;
wire  l_val_ARVALID;
wire  l_val_ARREADY;
wire [63 : 0] l_val_ARADDR;
wire [0 : 0] l_val_ARID;
wire [7 : 0] l_val_ARLEN;
wire [2 : 0] l_val_ARSIZE;
wire [1 : 0] l_val_ARBURST;
wire [1 : 0] l_val_ARLOCK;
wire [3 : 0] l_val_ARCACHE;
wire [2 : 0] l_val_ARPROT;
wire [3 : 0] l_val_ARQOS;
wire [3 : 0] l_val_ARREGION;
wire [0 : 0] l_val_ARUSER;
wire  l_val_RVALID;
wire  l_val_RREADY;
wire [31 : 0] l_val_RDATA;
wire  l_val_RLAST;
wire [0 : 0] l_val_RID;
wire [0 : 0] l_val_RUSER;
wire [1 : 0] l_val_RRESP;
wire  l_val_BVALID;
wire  l_val_BREADY;
wire [1 : 0] l_val_BRESP;
wire [0 : 0] l_val_BID;
wire [0 : 0] l_val_BUSER;
wire  u_row_AWVALID;
wire  u_row_AWREADY;
wire [63 : 0] u_row_AWADDR;
wire [0 : 0] u_row_AWID;
wire [7 : 0] u_row_AWLEN;
wire [2 : 0] u_row_AWSIZE;
wire [1 : 0] u_row_AWBURST;
wire [1 : 0] u_row_AWLOCK;
wire [3 : 0] u_row_AWCACHE;
wire [2 : 0] u_row_AWPROT;
wire [3 : 0] u_row_AWQOS;
wire [3 : 0] u_row_AWREGION;
wire [0 : 0] u_row_AWUSER;
wire  u_row_WVALID;
wire  u_row_WREADY;
wire [31 : 0] u_row_WDATA;
wire [3 : 0] u_row_WSTRB;
wire  u_row_WLAST;
wire [0 : 0] u_row_WID;
wire [0 : 0] u_row_WUSER;
wire  u_row_ARVALID;
wire  u_row_ARREADY;
wire [63 : 0] u_row_ARADDR;
wire [0 : 0] u_row_ARID;
wire [7 : 0] u_row_ARLEN;
wire [2 : 0] u_row_ARSIZE;
wire [1 : 0] u_row_ARBURST;
wire [1 : 0] u_row_ARLOCK;
wire [3 : 0] u_row_ARCACHE;
wire [2 : 0] u_row_ARPROT;
wire [3 : 0] u_row_ARQOS;
wire [3 : 0] u_row_ARREGION;
wire [0 : 0] u_row_ARUSER;
wire  u_row_RVALID;
wire  u_row_RREADY;
wire [31 : 0] u_row_RDATA;
wire  u_row_RLAST;
wire [0 : 0] u_row_RID;
wire [0 : 0] u_row_RUSER;
wire [1 : 0] u_row_RRESP;
wire  u_row_BVALID;
wire  u_row_BREADY;
wire [1 : 0] u_row_BRESP;
wire [0 : 0] u_row_BID;
wire [0 : 0] u_row_BUSER;
wire  u_col_AWVALID;
wire  u_col_AWREADY;
wire [63 : 0] u_col_AWADDR;
wire [0 : 0] u_col_AWID;
wire [7 : 0] u_col_AWLEN;
wire [2 : 0] u_col_AWSIZE;
wire [1 : 0] u_col_AWBURST;
wire [1 : 0] u_col_AWLOCK;
wire [3 : 0] u_col_AWCACHE;
wire [2 : 0] u_col_AWPROT;
wire [3 : 0] u_col_AWQOS;
wire [3 : 0] u_col_AWREGION;
wire [0 : 0] u_col_AWUSER;
wire  u_col_WVALID;
wire  u_col_WREADY;
wire [31 : 0] u_col_WDATA;
wire [3 : 0] u_col_WSTRB;
wire  u_col_WLAST;
wire [0 : 0] u_col_WID;
wire [0 : 0] u_col_WUSER;
wire  u_col_ARVALID;
wire  u_col_ARREADY;
wire [63 : 0] u_col_ARADDR;
wire [0 : 0] u_col_ARID;
wire [7 : 0] u_col_ARLEN;
wire [2 : 0] u_col_ARSIZE;
wire [1 : 0] u_col_ARBURST;
wire [1 : 0] u_col_ARLOCK;
wire [3 : 0] u_col_ARCACHE;
wire [2 : 0] u_col_ARPROT;
wire [3 : 0] u_col_ARQOS;
wire [3 : 0] u_col_ARREGION;
wire [0 : 0] u_col_ARUSER;
wire  u_col_RVALID;
wire  u_col_RREADY;
wire [31 : 0] u_col_RDATA;
wire  u_col_RLAST;
wire [0 : 0] u_col_RID;
wire [0 : 0] u_col_RUSER;
wire [1 : 0] u_col_RRESP;
wire  u_col_BVALID;
wire  u_col_BREADY;
wire [1 : 0] u_col_BRESP;
wire [0 : 0] u_col_BID;
wire [0 : 0] u_col_BUSER;
wire  u_val_AWVALID;
wire  u_val_AWREADY;
wire [63 : 0] u_val_AWADDR;
wire [0 : 0] u_val_AWID;
wire [7 : 0] u_val_AWLEN;
wire [2 : 0] u_val_AWSIZE;
wire [1 : 0] u_val_AWBURST;
wire [1 : 0] u_val_AWLOCK;
wire [3 : 0] u_val_AWCACHE;
wire [2 : 0] u_val_AWPROT;
wire [3 : 0] u_val_AWQOS;
wire [3 : 0] u_val_AWREGION;
wire [0 : 0] u_val_AWUSER;
wire  u_val_WVALID;
wire  u_val_WREADY;
wire [31 : 0] u_val_WDATA;
wire [3 : 0] u_val_WSTRB;
wire  u_val_WLAST;
wire [0 : 0] u_val_WID;
wire [0 : 0] u_val_WUSER;
wire  u_val_ARVALID;
wire  u_val_ARREADY;
wire [63 : 0] u_val_ARADDR;
wire [0 : 0] u_val_ARID;
wire [7 : 0] u_val_ARLEN;
wire [2 : 0] u_val_ARSIZE;
wire [1 : 0] u_val_ARBURST;
wire [1 : 0] u_val_ARLOCK;
wire [3 : 0] u_val_ARCACHE;
wire [2 : 0] u_val_ARPROT;
wire [3 : 0] u_val_ARQOS;
wire [3 : 0] u_val_ARREGION;
wire [0 : 0] u_val_ARUSER;
wire  u_val_RVALID;
wire  u_val_RREADY;
wire [31 : 0] u_val_RDATA;
wire  u_val_RLAST;
wire [0 : 0] u_val_RID;
wire [0 : 0] u_val_RUSER;
wire [1 : 0] u_val_RRESP;
wire  u_val_BVALID;
wire  u_val_BREADY;
wire [1 : 0] u_val_BRESP;
wire [0 : 0] u_val_BID;
wire [0 : 0] u_val_BUSER;
wire  x_row_AWVALID;
wire  x_row_AWREADY;
wire [63 : 0] x_row_AWADDR;
wire [0 : 0] x_row_AWID;
wire [7 : 0] x_row_AWLEN;
wire [2 : 0] x_row_AWSIZE;
wire [1 : 0] x_row_AWBURST;
wire [1 : 0] x_row_AWLOCK;
wire [3 : 0] x_row_AWCACHE;
wire [2 : 0] x_row_AWPROT;
wire [3 : 0] x_row_AWQOS;
wire [3 : 0] x_row_AWREGION;
wire [0 : 0] x_row_AWUSER;
wire  x_row_WVALID;
wire  x_row_WREADY;
wire [31 : 0] x_row_WDATA;
wire [3 : 0] x_row_WSTRB;
wire  x_row_WLAST;
wire [0 : 0] x_row_WID;
wire [0 : 0] x_row_WUSER;
wire  x_row_ARVALID;
wire  x_row_ARREADY;
wire [63 : 0] x_row_ARADDR;
wire [0 : 0] x_row_ARID;
wire [7 : 0] x_row_ARLEN;
wire [2 : 0] x_row_ARSIZE;
wire [1 : 0] x_row_ARBURST;
wire [1 : 0] x_row_ARLOCK;
wire [3 : 0] x_row_ARCACHE;
wire [2 : 0] x_row_ARPROT;
wire [3 : 0] x_row_ARQOS;
wire [3 : 0] x_row_ARREGION;
wire [0 : 0] x_row_ARUSER;
wire  x_row_RVALID;
wire  x_row_RREADY;
wire [31 : 0] x_row_RDATA;
wire  x_row_RLAST;
wire [0 : 0] x_row_RID;
wire [0 : 0] x_row_RUSER;
wire [1 : 0] x_row_RRESP;
wire  x_row_BVALID;
wire  x_row_BREADY;
wire [1 : 0] x_row_BRESP;
wire [0 : 0] x_row_BID;
wire [0 : 0] x_row_BUSER;
wire  x_col_AWVALID;
wire  x_col_AWREADY;
wire [63 : 0] x_col_AWADDR;
wire [0 : 0] x_col_AWID;
wire [7 : 0] x_col_AWLEN;
wire [2 : 0] x_col_AWSIZE;
wire [1 : 0] x_col_AWBURST;
wire [1 : 0] x_col_AWLOCK;
wire [3 : 0] x_col_AWCACHE;
wire [2 : 0] x_col_AWPROT;
wire [3 : 0] x_col_AWQOS;
wire [3 : 0] x_col_AWREGION;
wire [0 : 0] x_col_AWUSER;
wire  x_col_WVALID;
wire  x_col_WREADY;
wire [31 : 0] x_col_WDATA;
wire [3 : 0] x_col_WSTRB;
wire  x_col_WLAST;
wire [0 : 0] x_col_WID;
wire [0 : 0] x_col_WUSER;
wire  x_col_ARVALID;
wire  x_col_ARREADY;
wire [63 : 0] x_col_ARADDR;
wire [0 : 0] x_col_ARID;
wire [7 : 0] x_col_ARLEN;
wire [2 : 0] x_col_ARSIZE;
wire [1 : 0] x_col_ARBURST;
wire [1 : 0] x_col_ARLOCK;
wire [3 : 0] x_col_ARCACHE;
wire [2 : 0] x_col_ARPROT;
wire [3 : 0] x_col_ARQOS;
wire [3 : 0] x_col_ARREGION;
wire [0 : 0] x_col_ARUSER;
wire  x_col_RVALID;
wire  x_col_RREADY;
wire [31 : 0] x_col_RDATA;
wire  x_col_RLAST;
wire [0 : 0] x_col_RID;
wire [0 : 0] x_col_RUSER;
wire [1 : 0] x_col_RRESP;
wire  x_col_BVALID;
wire  x_col_BREADY;
wire [1 : 0] x_col_BRESP;
wire [0 : 0] x_col_BID;
wire [0 : 0] x_col_BUSER;
wire  x_val_AWVALID;
wire  x_val_AWREADY;
wire [63 : 0] x_val_AWADDR;
wire [0 : 0] x_val_AWID;
wire [7 : 0] x_val_AWLEN;
wire [2 : 0] x_val_AWSIZE;
wire [1 : 0] x_val_AWBURST;
wire [1 : 0] x_val_AWLOCK;
wire [3 : 0] x_val_AWCACHE;
wire [2 : 0] x_val_AWPROT;
wire [3 : 0] x_val_AWQOS;
wire [3 : 0] x_val_AWREGION;
wire [0 : 0] x_val_AWUSER;
wire  x_val_WVALID;
wire  x_val_WREADY;
wire [31 : 0] x_val_WDATA;
wire [3 : 0] x_val_WSTRB;
wire  x_val_WLAST;
wire [0 : 0] x_val_WID;
wire [0 : 0] x_val_WUSER;
wire  x_val_ARVALID;
wire  x_val_ARREADY;
wire [63 : 0] x_val_ARADDR;
wire [0 : 0] x_val_ARID;
wire [7 : 0] x_val_ARLEN;
wire [2 : 0] x_val_ARSIZE;
wire [1 : 0] x_val_ARBURST;
wire [1 : 0] x_val_ARLOCK;
wire [3 : 0] x_val_ARCACHE;
wire [2 : 0] x_val_ARPROT;
wire [3 : 0] x_val_ARQOS;
wire [3 : 0] x_val_ARREGION;
wire [0 : 0] x_val_ARUSER;
wire  x_val_RVALID;
wire  x_val_RREADY;
wire [31 : 0] x_val_RDATA;
wire  x_val_RLAST;
wire [0 : 0] x_val_RID;
wire [0 : 0] x_val_RUSER;
wire [1 : 0] x_val_RRESP;
wire  x_val_BVALID;
wire  x_val_BREADY;
wire [1 : 0] x_val_BRESP;
wire [0 : 0] x_val_BID;
wire [0 : 0] x_val_BUSER;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;
wire control_read_data_finish;
wire control_write_data_finish;
wire control_r_write_data_finish;
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


wire all_finish;
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
    .interrupt(control_INTERRUPT),
    .s_axi_control_r_AWADDR(control_r_AWADDR),
    .s_axi_control_r_AWVALID(control_r_AWVALID),
    .s_axi_control_r_AWREADY(control_r_AWREADY),
    .s_axi_control_r_WVALID(control_r_WVALID),
    .s_axi_control_r_WREADY(control_r_WREADY),
    .s_axi_control_r_WDATA(control_r_WDATA),
    .s_axi_control_r_WSTRB(control_r_WSTRB),
    .s_axi_control_r_ARADDR(control_r_ARADDR),
    .s_axi_control_r_ARVALID(control_r_ARVALID),
    .s_axi_control_r_ARREADY(control_r_ARREADY),
    .s_axi_control_r_RVALID(control_r_RVALID),
    .s_axi_control_r_RREADY(control_r_RREADY),
    .s_axi_control_r_RDATA(control_r_RDATA),
    .s_axi_control_r_RRESP(control_r_RRESP),
    .s_axi_control_r_BVALID(control_r_BVALID),
    .s_axi_control_r_BREADY(control_r_BREADY),
    .s_axi_control_r_BRESP(control_r_BRESP),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_a_row_AWVALID(a_row_AWVALID),
    .m_axi_a_row_AWREADY(a_row_AWREADY),
    .m_axi_a_row_AWADDR(a_row_AWADDR),
    .m_axi_a_row_AWID(a_row_AWID),
    .m_axi_a_row_AWLEN(a_row_AWLEN),
    .m_axi_a_row_AWSIZE(a_row_AWSIZE),
    .m_axi_a_row_AWBURST(a_row_AWBURST),
    .m_axi_a_row_AWLOCK(a_row_AWLOCK),
    .m_axi_a_row_AWCACHE(a_row_AWCACHE),
    .m_axi_a_row_AWPROT(a_row_AWPROT),
    .m_axi_a_row_AWQOS(a_row_AWQOS),
    .m_axi_a_row_AWREGION(a_row_AWREGION),
    .m_axi_a_row_AWUSER(a_row_AWUSER),
    .m_axi_a_row_WVALID(a_row_WVALID),
    .m_axi_a_row_WREADY(a_row_WREADY),
    .m_axi_a_row_WDATA(a_row_WDATA),
    .m_axi_a_row_WSTRB(a_row_WSTRB),
    .m_axi_a_row_WLAST(a_row_WLAST),
    .m_axi_a_row_WID(a_row_WID),
    .m_axi_a_row_WUSER(a_row_WUSER),
    .m_axi_a_row_ARVALID(a_row_ARVALID),
    .m_axi_a_row_ARREADY(a_row_ARREADY),
    .m_axi_a_row_ARADDR(a_row_ARADDR),
    .m_axi_a_row_ARID(a_row_ARID),
    .m_axi_a_row_ARLEN(a_row_ARLEN),
    .m_axi_a_row_ARSIZE(a_row_ARSIZE),
    .m_axi_a_row_ARBURST(a_row_ARBURST),
    .m_axi_a_row_ARLOCK(a_row_ARLOCK),
    .m_axi_a_row_ARCACHE(a_row_ARCACHE),
    .m_axi_a_row_ARPROT(a_row_ARPROT),
    .m_axi_a_row_ARQOS(a_row_ARQOS),
    .m_axi_a_row_ARREGION(a_row_ARREGION),
    .m_axi_a_row_ARUSER(a_row_ARUSER),
    .m_axi_a_row_RVALID(a_row_RVALID),
    .m_axi_a_row_RREADY(a_row_RREADY),
    .m_axi_a_row_RDATA(a_row_RDATA),
    .m_axi_a_row_RLAST(a_row_RLAST),
    .m_axi_a_row_RID(a_row_RID),
    .m_axi_a_row_RUSER(a_row_RUSER),
    .m_axi_a_row_RRESP(a_row_RRESP),
    .m_axi_a_row_BVALID(a_row_BVALID),
    .m_axi_a_row_BREADY(a_row_BREADY),
    .m_axi_a_row_BRESP(a_row_BRESP),
    .m_axi_a_row_BID(a_row_BID),
    .m_axi_a_row_BUSER(a_row_BUSER),
    .m_axi_a_col_AWVALID(a_col_AWVALID),
    .m_axi_a_col_AWREADY(a_col_AWREADY),
    .m_axi_a_col_AWADDR(a_col_AWADDR),
    .m_axi_a_col_AWID(a_col_AWID),
    .m_axi_a_col_AWLEN(a_col_AWLEN),
    .m_axi_a_col_AWSIZE(a_col_AWSIZE),
    .m_axi_a_col_AWBURST(a_col_AWBURST),
    .m_axi_a_col_AWLOCK(a_col_AWLOCK),
    .m_axi_a_col_AWCACHE(a_col_AWCACHE),
    .m_axi_a_col_AWPROT(a_col_AWPROT),
    .m_axi_a_col_AWQOS(a_col_AWQOS),
    .m_axi_a_col_AWREGION(a_col_AWREGION),
    .m_axi_a_col_AWUSER(a_col_AWUSER),
    .m_axi_a_col_WVALID(a_col_WVALID),
    .m_axi_a_col_WREADY(a_col_WREADY),
    .m_axi_a_col_WDATA(a_col_WDATA),
    .m_axi_a_col_WSTRB(a_col_WSTRB),
    .m_axi_a_col_WLAST(a_col_WLAST),
    .m_axi_a_col_WID(a_col_WID),
    .m_axi_a_col_WUSER(a_col_WUSER),
    .m_axi_a_col_ARVALID(a_col_ARVALID),
    .m_axi_a_col_ARREADY(a_col_ARREADY),
    .m_axi_a_col_ARADDR(a_col_ARADDR),
    .m_axi_a_col_ARID(a_col_ARID),
    .m_axi_a_col_ARLEN(a_col_ARLEN),
    .m_axi_a_col_ARSIZE(a_col_ARSIZE),
    .m_axi_a_col_ARBURST(a_col_ARBURST),
    .m_axi_a_col_ARLOCK(a_col_ARLOCK),
    .m_axi_a_col_ARCACHE(a_col_ARCACHE),
    .m_axi_a_col_ARPROT(a_col_ARPROT),
    .m_axi_a_col_ARQOS(a_col_ARQOS),
    .m_axi_a_col_ARREGION(a_col_ARREGION),
    .m_axi_a_col_ARUSER(a_col_ARUSER),
    .m_axi_a_col_RVALID(a_col_RVALID),
    .m_axi_a_col_RREADY(a_col_RREADY),
    .m_axi_a_col_RDATA(a_col_RDATA),
    .m_axi_a_col_RLAST(a_col_RLAST),
    .m_axi_a_col_RID(a_col_RID),
    .m_axi_a_col_RUSER(a_col_RUSER),
    .m_axi_a_col_RRESP(a_col_RRESP),
    .m_axi_a_col_BVALID(a_col_BVALID),
    .m_axi_a_col_BREADY(a_col_BREADY),
    .m_axi_a_col_BRESP(a_col_BRESP),
    .m_axi_a_col_BID(a_col_BID),
    .m_axi_a_col_BUSER(a_col_BUSER),
    .m_axi_a_val_AWVALID(a_val_AWVALID),
    .m_axi_a_val_AWREADY(a_val_AWREADY),
    .m_axi_a_val_AWADDR(a_val_AWADDR),
    .m_axi_a_val_AWID(a_val_AWID),
    .m_axi_a_val_AWLEN(a_val_AWLEN),
    .m_axi_a_val_AWSIZE(a_val_AWSIZE),
    .m_axi_a_val_AWBURST(a_val_AWBURST),
    .m_axi_a_val_AWLOCK(a_val_AWLOCK),
    .m_axi_a_val_AWCACHE(a_val_AWCACHE),
    .m_axi_a_val_AWPROT(a_val_AWPROT),
    .m_axi_a_val_AWQOS(a_val_AWQOS),
    .m_axi_a_val_AWREGION(a_val_AWREGION),
    .m_axi_a_val_AWUSER(a_val_AWUSER),
    .m_axi_a_val_WVALID(a_val_WVALID),
    .m_axi_a_val_WREADY(a_val_WREADY),
    .m_axi_a_val_WDATA(a_val_WDATA),
    .m_axi_a_val_WSTRB(a_val_WSTRB),
    .m_axi_a_val_WLAST(a_val_WLAST),
    .m_axi_a_val_WID(a_val_WID),
    .m_axi_a_val_WUSER(a_val_WUSER),
    .m_axi_a_val_ARVALID(a_val_ARVALID),
    .m_axi_a_val_ARREADY(a_val_ARREADY),
    .m_axi_a_val_ARADDR(a_val_ARADDR),
    .m_axi_a_val_ARID(a_val_ARID),
    .m_axi_a_val_ARLEN(a_val_ARLEN),
    .m_axi_a_val_ARSIZE(a_val_ARSIZE),
    .m_axi_a_val_ARBURST(a_val_ARBURST),
    .m_axi_a_val_ARLOCK(a_val_ARLOCK),
    .m_axi_a_val_ARCACHE(a_val_ARCACHE),
    .m_axi_a_val_ARPROT(a_val_ARPROT),
    .m_axi_a_val_ARQOS(a_val_ARQOS),
    .m_axi_a_val_ARREGION(a_val_ARREGION),
    .m_axi_a_val_ARUSER(a_val_ARUSER),
    .m_axi_a_val_RVALID(a_val_RVALID),
    .m_axi_a_val_RREADY(a_val_RREADY),
    .m_axi_a_val_RDATA(a_val_RDATA),
    .m_axi_a_val_RLAST(a_val_RLAST),
    .m_axi_a_val_RID(a_val_RID),
    .m_axi_a_val_RUSER(a_val_RUSER),
    .m_axi_a_val_RRESP(a_val_RRESP),
    .m_axi_a_val_BVALID(a_val_BVALID),
    .m_axi_a_val_BREADY(a_val_BREADY),
    .m_axi_a_val_BRESP(a_val_BRESP),
    .m_axi_a_val_BID(a_val_BID),
    .m_axi_a_val_BUSER(a_val_BUSER),
    .m_axi_l_row_AWVALID(l_row_AWVALID),
    .m_axi_l_row_AWREADY(l_row_AWREADY),
    .m_axi_l_row_AWADDR(l_row_AWADDR),
    .m_axi_l_row_AWID(l_row_AWID),
    .m_axi_l_row_AWLEN(l_row_AWLEN),
    .m_axi_l_row_AWSIZE(l_row_AWSIZE),
    .m_axi_l_row_AWBURST(l_row_AWBURST),
    .m_axi_l_row_AWLOCK(l_row_AWLOCK),
    .m_axi_l_row_AWCACHE(l_row_AWCACHE),
    .m_axi_l_row_AWPROT(l_row_AWPROT),
    .m_axi_l_row_AWQOS(l_row_AWQOS),
    .m_axi_l_row_AWREGION(l_row_AWREGION),
    .m_axi_l_row_AWUSER(l_row_AWUSER),
    .m_axi_l_row_WVALID(l_row_WVALID),
    .m_axi_l_row_WREADY(l_row_WREADY),
    .m_axi_l_row_WDATA(l_row_WDATA),
    .m_axi_l_row_WSTRB(l_row_WSTRB),
    .m_axi_l_row_WLAST(l_row_WLAST),
    .m_axi_l_row_WID(l_row_WID),
    .m_axi_l_row_WUSER(l_row_WUSER),
    .m_axi_l_row_ARVALID(l_row_ARVALID),
    .m_axi_l_row_ARREADY(l_row_ARREADY),
    .m_axi_l_row_ARADDR(l_row_ARADDR),
    .m_axi_l_row_ARID(l_row_ARID),
    .m_axi_l_row_ARLEN(l_row_ARLEN),
    .m_axi_l_row_ARSIZE(l_row_ARSIZE),
    .m_axi_l_row_ARBURST(l_row_ARBURST),
    .m_axi_l_row_ARLOCK(l_row_ARLOCK),
    .m_axi_l_row_ARCACHE(l_row_ARCACHE),
    .m_axi_l_row_ARPROT(l_row_ARPROT),
    .m_axi_l_row_ARQOS(l_row_ARQOS),
    .m_axi_l_row_ARREGION(l_row_ARREGION),
    .m_axi_l_row_ARUSER(l_row_ARUSER),
    .m_axi_l_row_RVALID(l_row_RVALID),
    .m_axi_l_row_RREADY(l_row_RREADY),
    .m_axi_l_row_RDATA(l_row_RDATA),
    .m_axi_l_row_RLAST(l_row_RLAST),
    .m_axi_l_row_RID(l_row_RID),
    .m_axi_l_row_RUSER(l_row_RUSER),
    .m_axi_l_row_RRESP(l_row_RRESP),
    .m_axi_l_row_BVALID(l_row_BVALID),
    .m_axi_l_row_BREADY(l_row_BREADY),
    .m_axi_l_row_BRESP(l_row_BRESP),
    .m_axi_l_row_BID(l_row_BID),
    .m_axi_l_row_BUSER(l_row_BUSER),
    .m_axi_l_col_AWVALID(l_col_AWVALID),
    .m_axi_l_col_AWREADY(l_col_AWREADY),
    .m_axi_l_col_AWADDR(l_col_AWADDR),
    .m_axi_l_col_AWID(l_col_AWID),
    .m_axi_l_col_AWLEN(l_col_AWLEN),
    .m_axi_l_col_AWSIZE(l_col_AWSIZE),
    .m_axi_l_col_AWBURST(l_col_AWBURST),
    .m_axi_l_col_AWLOCK(l_col_AWLOCK),
    .m_axi_l_col_AWCACHE(l_col_AWCACHE),
    .m_axi_l_col_AWPROT(l_col_AWPROT),
    .m_axi_l_col_AWQOS(l_col_AWQOS),
    .m_axi_l_col_AWREGION(l_col_AWREGION),
    .m_axi_l_col_AWUSER(l_col_AWUSER),
    .m_axi_l_col_WVALID(l_col_WVALID),
    .m_axi_l_col_WREADY(l_col_WREADY),
    .m_axi_l_col_WDATA(l_col_WDATA),
    .m_axi_l_col_WSTRB(l_col_WSTRB),
    .m_axi_l_col_WLAST(l_col_WLAST),
    .m_axi_l_col_WID(l_col_WID),
    .m_axi_l_col_WUSER(l_col_WUSER),
    .m_axi_l_col_ARVALID(l_col_ARVALID),
    .m_axi_l_col_ARREADY(l_col_ARREADY),
    .m_axi_l_col_ARADDR(l_col_ARADDR),
    .m_axi_l_col_ARID(l_col_ARID),
    .m_axi_l_col_ARLEN(l_col_ARLEN),
    .m_axi_l_col_ARSIZE(l_col_ARSIZE),
    .m_axi_l_col_ARBURST(l_col_ARBURST),
    .m_axi_l_col_ARLOCK(l_col_ARLOCK),
    .m_axi_l_col_ARCACHE(l_col_ARCACHE),
    .m_axi_l_col_ARPROT(l_col_ARPROT),
    .m_axi_l_col_ARQOS(l_col_ARQOS),
    .m_axi_l_col_ARREGION(l_col_ARREGION),
    .m_axi_l_col_ARUSER(l_col_ARUSER),
    .m_axi_l_col_RVALID(l_col_RVALID),
    .m_axi_l_col_RREADY(l_col_RREADY),
    .m_axi_l_col_RDATA(l_col_RDATA),
    .m_axi_l_col_RLAST(l_col_RLAST),
    .m_axi_l_col_RID(l_col_RID),
    .m_axi_l_col_RUSER(l_col_RUSER),
    .m_axi_l_col_RRESP(l_col_RRESP),
    .m_axi_l_col_BVALID(l_col_BVALID),
    .m_axi_l_col_BREADY(l_col_BREADY),
    .m_axi_l_col_BRESP(l_col_BRESP),
    .m_axi_l_col_BID(l_col_BID),
    .m_axi_l_col_BUSER(l_col_BUSER),
    .m_axi_l_val_AWVALID(l_val_AWVALID),
    .m_axi_l_val_AWREADY(l_val_AWREADY),
    .m_axi_l_val_AWADDR(l_val_AWADDR),
    .m_axi_l_val_AWID(l_val_AWID),
    .m_axi_l_val_AWLEN(l_val_AWLEN),
    .m_axi_l_val_AWSIZE(l_val_AWSIZE),
    .m_axi_l_val_AWBURST(l_val_AWBURST),
    .m_axi_l_val_AWLOCK(l_val_AWLOCK),
    .m_axi_l_val_AWCACHE(l_val_AWCACHE),
    .m_axi_l_val_AWPROT(l_val_AWPROT),
    .m_axi_l_val_AWQOS(l_val_AWQOS),
    .m_axi_l_val_AWREGION(l_val_AWREGION),
    .m_axi_l_val_AWUSER(l_val_AWUSER),
    .m_axi_l_val_WVALID(l_val_WVALID),
    .m_axi_l_val_WREADY(l_val_WREADY),
    .m_axi_l_val_WDATA(l_val_WDATA),
    .m_axi_l_val_WSTRB(l_val_WSTRB),
    .m_axi_l_val_WLAST(l_val_WLAST),
    .m_axi_l_val_WID(l_val_WID),
    .m_axi_l_val_WUSER(l_val_WUSER),
    .m_axi_l_val_ARVALID(l_val_ARVALID),
    .m_axi_l_val_ARREADY(l_val_ARREADY),
    .m_axi_l_val_ARADDR(l_val_ARADDR),
    .m_axi_l_val_ARID(l_val_ARID),
    .m_axi_l_val_ARLEN(l_val_ARLEN),
    .m_axi_l_val_ARSIZE(l_val_ARSIZE),
    .m_axi_l_val_ARBURST(l_val_ARBURST),
    .m_axi_l_val_ARLOCK(l_val_ARLOCK),
    .m_axi_l_val_ARCACHE(l_val_ARCACHE),
    .m_axi_l_val_ARPROT(l_val_ARPROT),
    .m_axi_l_val_ARQOS(l_val_ARQOS),
    .m_axi_l_val_ARREGION(l_val_ARREGION),
    .m_axi_l_val_ARUSER(l_val_ARUSER),
    .m_axi_l_val_RVALID(l_val_RVALID),
    .m_axi_l_val_RREADY(l_val_RREADY),
    .m_axi_l_val_RDATA(l_val_RDATA),
    .m_axi_l_val_RLAST(l_val_RLAST),
    .m_axi_l_val_RID(l_val_RID),
    .m_axi_l_val_RUSER(l_val_RUSER),
    .m_axi_l_val_RRESP(l_val_RRESP),
    .m_axi_l_val_BVALID(l_val_BVALID),
    .m_axi_l_val_BREADY(l_val_BREADY),
    .m_axi_l_val_BRESP(l_val_BRESP),
    .m_axi_l_val_BID(l_val_BID),
    .m_axi_l_val_BUSER(l_val_BUSER),
    .m_axi_u_row_AWVALID(u_row_AWVALID),
    .m_axi_u_row_AWREADY(u_row_AWREADY),
    .m_axi_u_row_AWADDR(u_row_AWADDR),
    .m_axi_u_row_AWID(u_row_AWID),
    .m_axi_u_row_AWLEN(u_row_AWLEN),
    .m_axi_u_row_AWSIZE(u_row_AWSIZE),
    .m_axi_u_row_AWBURST(u_row_AWBURST),
    .m_axi_u_row_AWLOCK(u_row_AWLOCK),
    .m_axi_u_row_AWCACHE(u_row_AWCACHE),
    .m_axi_u_row_AWPROT(u_row_AWPROT),
    .m_axi_u_row_AWQOS(u_row_AWQOS),
    .m_axi_u_row_AWREGION(u_row_AWREGION),
    .m_axi_u_row_AWUSER(u_row_AWUSER),
    .m_axi_u_row_WVALID(u_row_WVALID),
    .m_axi_u_row_WREADY(u_row_WREADY),
    .m_axi_u_row_WDATA(u_row_WDATA),
    .m_axi_u_row_WSTRB(u_row_WSTRB),
    .m_axi_u_row_WLAST(u_row_WLAST),
    .m_axi_u_row_WID(u_row_WID),
    .m_axi_u_row_WUSER(u_row_WUSER),
    .m_axi_u_row_ARVALID(u_row_ARVALID),
    .m_axi_u_row_ARREADY(u_row_ARREADY),
    .m_axi_u_row_ARADDR(u_row_ARADDR),
    .m_axi_u_row_ARID(u_row_ARID),
    .m_axi_u_row_ARLEN(u_row_ARLEN),
    .m_axi_u_row_ARSIZE(u_row_ARSIZE),
    .m_axi_u_row_ARBURST(u_row_ARBURST),
    .m_axi_u_row_ARLOCK(u_row_ARLOCK),
    .m_axi_u_row_ARCACHE(u_row_ARCACHE),
    .m_axi_u_row_ARPROT(u_row_ARPROT),
    .m_axi_u_row_ARQOS(u_row_ARQOS),
    .m_axi_u_row_ARREGION(u_row_ARREGION),
    .m_axi_u_row_ARUSER(u_row_ARUSER),
    .m_axi_u_row_RVALID(u_row_RVALID),
    .m_axi_u_row_RREADY(u_row_RREADY),
    .m_axi_u_row_RDATA(u_row_RDATA),
    .m_axi_u_row_RLAST(u_row_RLAST),
    .m_axi_u_row_RID(u_row_RID),
    .m_axi_u_row_RUSER(u_row_RUSER),
    .m_axi_u_row_RRESP(u_row_RRESP),
    .m_axi_u_row_BVALID(u_row_BVALID),
    .m_axi_u_row_BREADY(u_row_BREADY),
    .m_axi_u_row_BRESP(u_row_BRESP),
    .m_axi_u_row_BID(u_row_BID),
    .m_axi_u_row_BUSER(u_row_BUSER),
    .m_axi_u_col_AWVALID(u_col_AWVALID),
    .m_axi_u_col_AWREADY(u_col_AWREADY),
    .m_axi_u_col_AWADDR(u_col_AWADDR),
    .m_axi_u_col_AWID(u_col_AWID),
    .m_axi_u_col_AWLEN(u_col_AWLEN),
    .m_axi_u_col_AWSIZE(u_col_AWSIZE),
    .m_axi_u_col_AWBURST(u_col_AWBURST),
    .m_axi_u_col_AWLOCK(u_col_AWLOCK),
    .m_axi_u_col_AWCACHE(u_col_AWCACHE),
    .m_axi_u_col_AWPROT(u_col_AWPROT),
    .m_axi_u_col_AWQOS(u_col_AWQOS),
    .m_axi_u_col_AWREGION(u_col_AWREGION),
    .m_axi_u_col_AWUSER(u_col_AWUSER),
    .m_axi_u_col_WVALID(u_col_WVALID),
    .m_axi_u_col_WREADY(u_col_WREADY),
    .m_axi_u_col_WDATA(u_col_WDATA),
    .m_axi_u_col_WSTRB(u_col_WSTRB),
    .m_axi_u_col_WLAST(u_col_WLAST),
    .m_axi_u_col_WID(u_col_WID),
    .m_axi_u_col_WUSER(u_col_WUSER),
    .m_axi_u_col_ARVALID(u_col_ARVALID),
    .m_axi_u_col_ARREADY(u_col_ARREADY),
    .m_axi_u_col_ARADDR(u_col_ARADDR),
    .m_axi_u_col_ARID(u_col_ARID),
    .m_axi_u_col_ARLEN(u_col_ARLEN),
    .m_axi_u_col_ARSIZE(u_col_ARSIZE),
    .m_axi_u_col_ARBURST(u_col_ARBURST),
    .m_axi_u_col_ARLOCK(u_col_ARLOCK),
    .m_axi_u_col_ARCACHE(u_col_ARCACHE),
    .m_axi_u_col_ARPROT(u_col_ARPROT),
    .m_axi_u_col_ARQOS(u_col_ARQOS),
    .m_axi_u_col_ARREGION(u_col_ARREGION),
    .m_axi_u_col_ARUSER(u_col_ARUSER),
    .m_axi_u_col_RVALID(u_col_RVALID),
    .m_axi_u_col_RREADY(u_col_RREADY),
    .m_axi_u_col_RDATA(u_col_RDATA),
    .m_axi_u_col_RLAST(u_col_RLAST),
    .m_axi_u_col_RID(u_col_RID),
    .m_axi_u_col_RUSER(u_col_RUSER),
    .m_axi_u_col_RRESP(u_col_RRESP),
    .m_axi_u_col_BVALID(u_col_BVALID),
    .m_axi_u_col_BREADY(u_col_BREADY),
    .m_axi_u_col_BRESP(u_col_BRESP),
    .m_axi_u_col_BID(u_col_BID),
    .m_axi_u_col_BUSER(u_col_BUSER),
    .m_axi_u_val_AWVALID(u_val_AWVALID),
    .m_axi_u_val_AWREADY(u_val_AWREADY),
    .m_axi_u_val_AWADDR(u_val_AWADDR),
    .m_axi_u_val_AWID(u_val_AWID),
    .m_axi_u_val_AWLEN(u_val_AWLEN),
    .m_axi_u_val_AWSIZE(u_val_AWSIZE),
    .m_axi_u_val_AWBURST(u_val_AWBURST),
    .m_axi_u_val_AWLOCK(u_val_AWLOCK),
    .m_axi_u_val_AWCACHE(u_val_AWCACHE),
    .m_axi_u_val_AWPROT(u_val_AWPROT),
    .m_axi_u_val_AWQOS(u_val_AWQOS),
    .m_axi_u_val_AWREGION(u_val_AWREGION),
    .m_axi_u_val_AWUSER(u_val_AWUSER),
    .m_axi_u_val_WVALID(u_val_WVALID),
    .m_axi_u_val_WREADY(u_val_WREADY),
    .m_axi_u_val_WDATA(u_val_WDATA),
    .m_axi_u_val_WSTRB(u_val_WSTRB),
    .m_axi_u_val_WLAST(u_val_WLAST),
    .m_axi_u_val_WID(u_val_WID),
    .m_axi_u_val_WUSER(u_val_WUSER),
    .m_axi_u_val_ARVALID(u_val_ARVALID),
    .m_axi_u_val_ARREADY(u_val_ARREADY),
    .m_axi_u_val_ARADDR(u_val_ARADDR),
    .m_axi_u_val_ARID(u_val_ARID),
    .m_axi_u_val_ARLEN(u_val_ARLEN),
    .m_axi_u_val_ARSIZE(u_val_ARSIZE),
    .m_axi_u_val_ARBURST(u_val_ARBURST),
    .m_axi_u_val_ARLOCK(u_val_ARLOCK),
    .m_axi_u_val_ARCACHE(u_val_ARCACHE),
    .m_axi_u_val_ARPROT(u_val_ARPROT),
    .m_axi_u_val_ARQOS(u_val_ARQOS),
    .m_axi_u_val_ARREGION(u_val_ARREGION),
    .m_axi_u_val_ARUSER(u_val_ARUSER),
    .m_axi_u_val_RVALID(u_val_RVALID),
    .m_axi_u_val_RREADY(u_val_RREADY),
    .m_axi_u_val_RDATA(u_val_RDATA),
    .m_axi_u_val_RLAST(u_val_RLAST),
    .m_axi_u_val_RID(u_val_RID),
    .m_axi_u_val_RUSER(u_val_RUSER),
    .m_axi_u_val_RRESP(u_val_RRESP),
    .m_axi_u_val_BVALID(u_val_BVALID),
    .m_axi_u_val_BREADY(u_val_BREADY),
    .m_axi_u_val_BRESP(u_val_BRESP),
    .m_axi_u_val_BID(u_val_BID),
    .m_axi_u_val_BUSER(u_val_BUSER),
    .m_axi_x_row_AWVALID(x_row_AWVALID),
    .m_axi_x_row_AWREADY(x_row_AWREADY),
    .m_axi_x_row_AWADDR(x_row_AWADDR),
    .m_axi_x_row_AWID(x_row_AWID),
    .m_axi_x_row_AWLEN(x_row_AWLEN),
    .m_axi_x_row_AWSIZE(x_row_AWSIZE),
    .m_axi_x_row_AWBURST(x_row_AWBURST),
    .m_axi_x_row_AWLOCK(x_row_AWLOCK),
    .m_axi_x_row_AWCACHE(x_row_AWCACHE),
    .m_axi_x_row_AWPROT(x_row_AWPROT),
    .m_axi_x_row_AWQOS(x_row_AWQOS),
    .m_axi_x_row_AWREGION(x_row_AWREGION),
    .m_axi_x_row_AWUSER(x_row_AWUSER),
    .m_axi_x_row_WVALID(x_row_WVALID),
    .m_axi_x_row_WREADY(x_row_WREADY),
    .m_axi_x_row_WDATA(x_row_WDATA),
    .m_axi_x_row_WSTRB(x_row_WSTRB),
    .m_axi_x_row_WLAST(x_row_WLAST),
    .m_axi_x_row_WID(x_row_WID),
    .m_axi_x_row_WUSER(x_row_WUSER),
    .m_axi_x_row_ARVALID(x_row_ARVALID),
    .m_axi_x_row_ARREADY(x_row_ARREADY),
    .m_axi_x_row_ARADDR(x_row_ARADDR),
    .m_axi_x_row_ARID(x_row_ARID),
    .m_axi_x_row_ARLEN(x_row_ARLEN),
    .m_axi_x_row_ARSIZE(x_row_ARSIZE),
    .m_axi_x_row_ARBURST(x_row_ARBURST),
    .m_axi_x_row_ARLOCK(x_row_ARLOCK),
    .m_axi_x_row_ARCACHE(x_row_ARCACHE),
    .m_axi_x_row_ARPROT(x_row_ARPROT),
    .m_axi_x_row_ARQOS(x_row_ARQOS),
    .m_axi_x_row_ARREGION(x_row_ARREGION),
    .m_axi_x_row_ARUSER(x_row_ARUSER),
    .m_axi_x_row_RVALID(x_row_RVALID),
    .m_axi_x_row_RREADY(x_row_RREADY),
    .m_axi_x_row_RDATA(x_row_RDATA),
    .m_axi_x_row_RLAST(x_row_RLAST),
    .m_axi_x_row_RID(x_row_RID),
    .m_axi_x_row_RUSER(x_row_RUSER),
    .m_axi_x_row_RRESP(x_row_RRESP),
    .m_axi_x_row_BVALID(x_row_BVALID),
    .m_axi_x_row_BREADY(x_row_BREADY),
    .m_axi_x_row_BRESP(x_row_BRESP),
    .m_axi_x_row_BID(x_row_BID),
    .m_axi_x_row_BUSER(x_row_BUSER),
    .m_axi_x_col_AWVALID(x_col_AWVALID),
    .m_axi_x_col_AWREADY(x_col_AWREADY),
    .m_axi_x_col_AWADDR(x_col_AWADDR),
    .m_axi_x_col_AWID(x_col_AWID),
    .m_axi_x_col_AWLEN(x_col_AWLEN),
    .m_axi_x_col_AWSIZE(x_col_AWSIZE),
    .m_axi_x_col_AWBURST(x_col_AWBURST),
    .m_axi_x_col_AWLOCK(x_col_AWLOCK),
    .m_axi_x_col_AWCACHE(x_col_AWCACHE),
    .m_axi_x_col_AWPROT(x_col_AWPROT),
    .m_axi_x_col_AWQOS(x_col_AWQOS),
    .m_axi_x_col_AWREGION(x_col_AWREGION),
    .m_axi_x_col_AWUSER(x_col_AWUSER),
    .m_axi_x_col_WVALID(x_col_WVALID),
    .m_axi_x_col_WREADY(x_col_WREADY),
    .m_axi_x_col_WDATA(x_col_WDATA),
    .m_axi_x_col_WSTRB(x_col_WSTRB),
    .m_axi_x_col_WLAST(x_col_WLAST),
    .m_axi_x_col_WID(x_col_WID),
    .m_axi_x_col_WUSER(x_col_WUSER),
    .m_axi_x_col_ARVALID(x_col_ARVALID),
    .m_axi_x_col_ARREADY(x_col_ARREADY),
    .m_axi_x_col_ARADDR(x_col_ARADDR),
    .m_axi_x_col_ARID(x_col_ARID),
    .m_axi_x_col_ARLEN(x_col_ARLEN),
    .m_axi_x_col_ARSIZE(x_col_ARSIZE),
    .m_axi_x_col_ARBURST(x_col_ARBURST),
    .m_axi_x_col_ARLOCK(x_col_ARLOCK),
    .m_axi_x_col_ARCACHE(x_col_ARCACHE),
    .m_axi_x_col_ARPROT(x_col_ARPROT),
    .m_axi_x_col_ARQOS(x_col_ARQOS),
    .m_axi_x_col_ARREGION(x_col_ARREGION),
    .m_axi_x_col_ARUSER(x_col_ARUSER),
    .m_axi_x_col_RVALID(x_col_RVALID),
    .m_axi_x_col_RREADY(x_col_RREADY),
    .m_axi_x_col_RDATA(x_col_RDATA),
    .m_axi_x_col_RLAST(x_col_RLAST),
    .m_axi_x_col_RID(x_col_RID),
    .m_axi_x_col_RUSER(x_col_RUSER),
    .m_axi_x_col_RRESP(x_col_RRESP),
    .m_axi_x_col_BVALID(x_col_BVALID),
    .m_axi_x_col_BREADY(x_col_BREADY),
    .m_axi_x_col_BRESP(x_col_BRESP),
    .m_axi_x_col_BID(x_col_BID),
    .m_axi_x_col_BUSER(x_col_BUSER),
    .m_axi_x_val_AWVALID(x_val_AWVALID),
    .m_axi_x_val_AWREADY(x_val_AWREADY),
    .m_axi_x_val_AWADDR(x_val_AWADDR),
    .m_axi_x_val_AWID(x_val_AWID),
    .m_axi_x_val_AWLEN(x_val_AWLEN),
    .m_axi_x_val_AWSIZE(x_val_AWSIZE),
    .m_axi_x_val_AWBURST(x_val_AWBURST),
    .m_axi_x_val_AWLOCK(x_val_AWLOCK),
    .m_axi_x_val_AWCACHE(x_val_AWCACHE),
    .m_axi_x_val_AWPROT(x_val_AWPROT),
    .m_axi_x_val_AWQOS(x_val_AWQOS),
    .m_axi_x_val_AWREGION(x_val_AWREGION),
    .m_axi_x_val_AWUSER(x_val_AWUSER),
    .m_axi_x_val_WVALID(x_val_WVALID),
    .m_axi_x_val_WREADY(x_val_WREADY),
    .m_axi_x_val_WDATA(x_val_WDATA),
    .m_axi_x_val_WSTRB(x_val_WSTRB),
    .m_axi_x_val_WLAST(x_val_WLAST),
    .m_axi_x_val_WID(x_val_WID),
    .m_axi_x_val_WUSER(x_val_WUSER),
    .m_axi_x_val_ARVALID(x_val_ARVALID),
    .m_axi_x_val_ARREADY(x_val_ARREADY),
    .m_axi_x_val_ARADDR(x_val_ARADDR),
    .m_axi_x_val_ARID(x_val_ARID),
    .m_axi_x_val_ARLEN(x_val_ARLEN),
    .m_axi_x_val_ARSIZE(x_val_ARSIZE),
    .m_axi_x_val_ARBURST(x_val_ARBURST),
    .m_axi_x_val_ARLOCK(x_val_ARLOCK),
    .m_axi_x_val_ARCACHE(x_val_ARCACHE),
    .m_axi_x_val_ARPROT(x_val_ARPROT),
    .m_axi_x_val_ARQOS(x_val_ARQOS),
    .m_axi_x_val_ARREGION(x_val_ARREGION),
    .m_axi_x_val_ARUSER(x_val_ARUSER),
    .m_axi_x_val_RVALID(x_val_RVALID),
    .m_axi_x_val_RREADY(x_val_RREADY),
    .m_axi_x_val_RDATA(x_val_RDATA),
    .m_axi_x_val_RLAST(x_val_RLAST),
    .m_axi_x_val_RID(x_val_RID),
    .m_axi_x_val_RUSER(x_val_RUSER),
    .m_axi_x_val_RRESP(x_val_RRESP),
    .m_axi_x_val_BVALID(x_val_BVALID),
    .m_axi_x_val_BREADY(x_val_BREADY),
    .m_axi_x_val_BRESP(x_val_BRESP),
    .m_axi_x_val_BID(x_val_BID),
    .m_axi_x_val_BUSER(x_val_BUSER));
assign ap_clk = AESL_clock;
assign ap_rst_n = AESL_reset;
assign ap_rst_n_n = ~AESL_reset;
assign AESL_reset = dut_rst;
assign AESL_start = svtb_top.misc_if.tb2dut_ap_start;
assign AESL_ready = svtb_top.misc_if.dut2tb_ap_ready;
assign AESL_done  = svtb_top.misc_if.dut2tb_ap_done;
assign all_finish = svtb_top.misc_if.finished;
initial begin : initial_process
    integer proc_rand;
    rst = 0;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    # 0.1;
    rst = 1;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 0;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    # 0.1;
    dut_rst = 1;
end
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end

    sv_module_top svtb_top();

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
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"
endmodule
