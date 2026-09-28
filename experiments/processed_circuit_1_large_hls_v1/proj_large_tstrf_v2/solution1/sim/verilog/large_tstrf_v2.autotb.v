// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      large_tstrf_v2
`define AUTOTB_DUT_INST AESL_inst_large_tstrf_v2
`define AUTOTB_TOP      apatb_large_tstrf_v2_top
`define AUTOTB_LAT_RESULT_FILE "large_tstrf_v2.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "large_tstrf_v2.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_large_tstrf_v2_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 2.50

`define AESL_DEPTH_v2tu0 1
`define AESL_DEPTH_v2tu1 1
`define AESL_DEPTH_v2tu2 1
`define AESL_DEPTH_v2tu3 1
`define AESL_DEPTH_v2tu4 1
`define AESL_DEPTH_v2tb0 1
`define AESL_DEPTH_v2tb1 1
`define AESL_DEPTH_v2tb2 1
`define AESL_DEPTH_v2tx0 1
`define AESL_DEPTH_v2tx1 1
`define AESL_DEPTH_v2tx2 1
`define AESL_DEPTH_v2ta0 1
`define AESL_DEPTH_v2tw0 1
`define AESL_DEPTH_u_col_ptr 1
`define AESL_DEPTH_u_row_idx 1
`define AESL_DEPTH_u_csr_val 1
`define AESL_DEPTH_u_csc_to_csr 1
`define AESL_DEPTH_u_diag_pos 1
`define AESL_DEPTH_b_ptr 1
`define AESL_DEPTH_b_idx 1
`define AESL_DEPTH_b_val 1
`define AESL_DEPTH_x_ptr 1
`define AESL_DEPTH_x_idx 1
`define AESL_DEPTH_x_val 1
`define AESL_DEPTH_active_rows 1
`define AESL_DEPTH_active_count 1
`define AESL_DEPTH_work 1
`define AESL_DEPTH_n 1
`define AESL_DEPTH_pivot_eps 1
`define AESL_DEPTH_status 1
`define AESL_DEPTH_muladds 1
`define AESL_DEPTH_divisions 1
`define AUTOTB_TVIN_v2tu0  "../tv/cdatafile/c.large_tstrf_v2.autotvin_v2tu0.dat"
`define AUTOTB_TVIN_v2tu1  "../tv/cdatafile/c.large_tstrf_v2.autotvin_v2tu1.dat"
`define AUTOTB_TVIN_v2tu2  "../tv/cdatafile/c.large_tstrf_v2.autotvin_v2tu2.dat"
`define AUTOTB_TVIN_v2tu3  "../tv/cdatafile/c.large_tstrf_v2.autotvin_v2tu3.dat"
`define AUTOTB_TVIN_v2tu4  "../tv/cdatafile/c.large_tstrf_v2.autotvin_v2tu4.dat"
`define AUTOTB_TVIN_v2tb0  "../tv/cdatafile/c.large_tstrf_v2.autotvin_v2tb0.dat"
`define AUTOTB_TVIN_v2tb1  "../tv/cdatafile/c.large_tstrf_v2.autotvin_v2tb1.dat"
`define AUTOTB_TVIN_v2tb2  "../tv/cdatafile/c.large_tstrf_v2.autotvin_v2tb2.dat"
`define AUTOTB_TVIN_v2tx0  "../tv/cdatafile/c.large_tstrf_v2.autotvin_v2tx0.dat"
`define AUTOTB_TVIN_v2tx1  "../tv/cdatafile/c.large_tstrf_v2.autotvin_v2tx1.dat"
`define AUTOTB_TVIN_v2ta0  "../tv/cdatafile/c.large_tstrf_v2.autotvin_v2ta0.dat"
`define AUTOTB_TVIN_u_col_ptr  "../tv/cdatafile/c.large_tstrf_v2.autotvin_u_col_ptr.dat"
`define AUTOTB_TVIN_u_row_idx  "../tv/cdatafile/c.large_tstrf_v2.autotvin_u_row_idx.dat"
`define AUTOTB_TVIN_u_csr_val  "../tv/cdatafile/c.large_tstrf_v2.autotvin_u_csr_val.dat"
`define AUTOTB_TVIN_u_csc_to_csr  "../tv/cdatafile/c.large_tstrf_v2.autotvin_u_csc_to_csr.dat"
`define AUTOTB_TVIN_u_diag_pos  "../tv/cdatafile/c.large_tstrf_v2.autotvin_u_diag_pos.dat"
`define AUTOTB_TVIN_b_ptr  "../tv/cdatafile/c.large_tstrf_v2.autotvin_b_ptr.dat"
`define AUTOTB_TVIN_b_idx  "../tv/cdatafile/c.large_tstrf_v2.autotvin_b_idx.dat"
`define AUTOTB_TVIN_b_val  "../tv/cdatafile/c.large_tstrf_v2.autotvin_b_val.dat"
`define AUTOTB_TVIN_x_ptr  "../tv/cdatafile/c.large_tstrf_v2.autotvin_x_ptr.dat"
`define AUTOTB_TVIN_x_idx  "../tv/cdatafile/c.large_tstrf_v2.autotvin_x_idx.dat"
`define AUTOTB_TVIN_x_val  "../tv/cdatafile/c.large_tstrf_v2.autotvin_x_val.dat"
`define AUTOTB_TVIN_active_rows  "../tv/cdatafile/c.large_tstrf_v2.autotvin_active_rows.dat"
`define AUTOTB_TVIN_active_count  "../tv/cdatafile/c.large_tstrf_v2.autotvin_active_count.dat"
`define AUTOTB_TVIN_n  "../tv/cdatafile/c.large_tstrf_v2.autotvin_n.dat"
`define AUTOTB_TVIN_pivot_eps  "../tv/cdatafile/c.large_tstrf_v2.autotvin_pivot_eps.dat"
`define AUTOTB_TVIN_v2tu0_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_v2tu0.dat"
`define AUTOTB_TVIN_v2tu1_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_v2tu1.dat"
`define AUTOTB_TVIN_v2tu2_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_v2tu2.dat"
`define AUTOTB_TVIN_v2tu3_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_v2tu3.dat"
`define AUTOTB_TVIN_v2tu4_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_v2tu4.dat"
`define AUTOTB_TVIN_v2tb0_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_v2tb0.dat"
`define AUTOTB_TVIN_v2tb1_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_v2tb1.dat"
`define AUTOTB_TVIN_v2tb2_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_v2tb2.dat"
`define AUTOTB_TVIN_v2tx0_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_v2tx0.dat"
`define AUTOTB_TVIN_v2tx1_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_v2tx1.dat"
`define AUTOTB_TVIN_v2ta0_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_v2ta0.dat"
`define AUTOTB_TVIN_u_col_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_u_col_ptr.dat"
`define AUTOTB_TVIN_u_row_idx_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_u_row_idx.dat"
`define AUTOTB_TVIN_u_csr_val_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_u_csr_val.dat"
`define AUTOTB_TVIN_u_csc_to_csr_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_u_csc_to_csr.dat"
`define AUTOTB_TVIN_u_diag_pos_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_u_diag_pos.dat"
`define AUTOTB_TVIN_b_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_b_ptr.dat"
`define AUTOTB_TVIN_b_idx_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_b_idx.dat"
`define AUTOTB_TVIN_b_val_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_b_val.dat"
`define AUTOTB_TVIN_x_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_x_ptr.dat"
`define AUTOTB_TVIN_x_idx_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_x_idx.dat"
`define AUTOTB_TVIN_x_val_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_x_val.dat"
`define AUTOTB_TVIN_active_rows_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_active_rows.dat"
`define AUTOTB_TVIN_active_count_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_active_count.dat"
`define AUTOTB_TVIN_n_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_n.dat"
`define AUTOTB_TVIN_pivot_eps_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvin_pivot_eps.dat"
`define AUTOTB_TVOUT_v2tx2  "../tv/cdatafile/c.large_tstrf_v2.autotvout_v2tx2.dat"
`define AUTOTB_TVOUT_status  "../tv/cdatafile/c.large_tstrf_v2.autotvout_status.dat"
`define AUTOTB_TVOUT_muladds  "../tv/cdatafile/c.large_tstrf_v2.autotvout_muladds.dat"
`define AUTOTB_TVOUT_divisions  "../tv/cdatafile/c.large_tstrf_v2.autotvout_divisions.dat"
`define AUTOTB_TVOUT_v2tx2_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvout_v2tx2.dat"
`define AUTOTB_TVOUT_status_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvout_status.dat"
`define AUTOTB_TVOUT_muladds_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvout_muladds.dat"
`define AUTOTB_TVOUT_divisions_out_wrapc  "../tv/rtldatafile/rtl.large_tstrf_v2.autotvout_divisions.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_active_count = 1;
parameter LENGTH_active_rows = 1;
parameter LENGTH_b_idx = 1;
parameter LENGTH_b_ptr = 1;
parameter LENGTH_b_val = 1;
parameter LENGTH_divisions = 1;
parameter LENGTH_muladds = 1;
parameter LENGTH_n = 1;
parameter LENGTH_pivot_eps = 1;
parameter LENGTH_status = 1;
parameter LENGTH_u_col_ptr = 1;
parameter LENGTH_u_csc_to_csr = 1;
parameter LENGTH_u_csr_val = 1;
parameter LENGTH_u_diag_pos = 1;
parameter LENGTH_u_row_idx = 1;
parameter LENGTH_v2ta0 = 2624;
parameter LENGTH_v2tb0 = 2625;
parameter LENGTH_v2tb1 = 8192;
parameter LENGTH_v2tb2 = 8192;
parameter LENGTH_v2tu0 = 2625;
parameter LENGTH_v2tu1 = 8192;
parameter LENGTH_v2tu2 = 8192;
parameter LENGTH_v2tu3 = 8192;
parameter LENGTH_v2tu4 = 2624;
parameter LENGTH_v2tw0 = 2624;
parameter LENGTH_v2tx0 = 2625;
parameter LENGTH_v2tx1 = 8192;
parameter LENGTH_v2tx2 = 8192;
parameter LENGTH_work = 1;
parameter LENGTH_x_idx = 1;
parameter LENGTH_x_ptr = 1;
parameter LENGTH_x_val = 1;

task read_token;
    input integer fp;
    output reg [191 : 0] token;
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
wire [7 : 0] control_AWADDR;
wire  control_AWVALID;
wire  control_AWREADY;
wire  control_WVALID;
wire  control_WREADY;
wire [31 : 0] control_WDATA;
wire [3 : 0] control_WSTRB;
wire [7 : 0] control_ARADDR;
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
wire  v2tu0_AWVALID;
wire  v2tu0_AWREADY;
wire [63 : 0] v2tu0_AWADDR;
wire [0 : 0] v2tu0_AWID;
wire [7 : 0] v2tu0_AWLEN;
wire [2 : 0] v2tu0_AWSIZE;
wire [1 : 0] v2tu0_AWBURST;
wire [1 : 0] v2tu0_AWLOCK;
wire [3 : 0] v2tu0_AWCACHE;
wire [2 : 0] v2tu0_AWPROT;
wire [3 : 0] v2tu0_AWQOS;
wire [3 : 0] v2tu0_AWREGION;
wire [0 : 0] v2tu0_AWUSER;
wire  v2tu0_WVALID;
wire  v2tu0_WREADY;
wire [31 : 0] v2tu0_WDATA;
wire [3 : 0] v2tu0_WSTRB;
wire  v2tu0_WLAST;
wire [0 : 0] v2tu0_WID;
wire [0 : 0] v2tu0_WUSER;
wire  v2tu0_ARVALID;
wire  v2tu0_ARREADY;
wire [63 : 0] v2tu0_ARADDR;
wire [0 : 0] v2tu0_ARID;
wire [7 : 0] v2tu0_ARLEN;
wire [2 : 0] v2tu0_ARSIZE;
wire [1 : 0] v2tu0_ARBURST;
wire [1 : 0] v2tu0_ARLOCK;
wire [3 : 0] v2tu0_ARCACHE;
wire [2 : 0] v2tu0_ARPROT;
wire [3 : 0] v2tu0_ARQOS;
wire [3 : 0] v2tu0_ARREGION;
wire [0 : 0] v2tu0_ARUSER;
wire  v2tu0_RVALID;
wire  v2tu0_RREADY;
wire [31 : 0] v2tu0_RDATA;
wire  v2tu0_RLAST;
wire [0 : 0] v2tu0_RID;
wire [0 : 0] v2tu0_RUSER;
wire [1 : 0] v2tu0_RRESP;
wire  v2tu0_BVALID;
wire  v2tu0_BREADY;
wire [1 : 0] v2tu0_BRESP;
wire [0 : 0] v2tu0_BID;
wire [0 : 0] v2tu0_BUSER;
wire  v2tu1_AWVALID;
wire  v2tu1_AWREADY;
wire [63 : 0] v2tu1_AWADDR;
wire [0 : 0] v2tu1_AWID;
wire [7 : 0] v2tu1_AWLEN;
wire [2 : 0] v2tu1_AWSIZE;
wire [1 : 0] v2tu1_AWBURST;
wire [1 : 0] v2tu1_AWLOCK;
wire [3 : 0] v2tu1_AWCACHE;
wire [2 : 0] v2tu1_AWPROT;
wire [3 : 0] v2tu1_AWQOS;
wire [3 : 0] v2tu1_AWREGION;
wire [0 : 0] v2tu1_AWUSER;
wire  v2tu1_WVALID;
wire  v2tu1_WREADY;
wire [31 : 0] v2tu1_WDATA;
wire [3 : 0] v2tu1_WSTRB;
wire  v2tu1_WLAST;
wire [0 : 0] v2tu1_WID;
wire [0 : 0] v2tu1_WUSER;
wire  v2tu1_ARVALID;
wire  v2tu1_ARREADY;
wire [63 : 0] v2tu1_ARADDR;
wire [0 : 0] v2tu1_ARID;
wire [7 : 0] v2tu1_ARLEN;
wire [2 : 0] v2tu1_ARSIZE;
wire [1 : 0] v2tu1_ARBURST;
wire [1 : 0] v2tu1_ARLOCK;
wire [3 : 0] v2tu1_ARCACHE;
wire [2 : 0] v2tu1_ARPROT;
wire [3 : 0] v2tu1_ARQOS;
wire [3 : 0] v2tu1_ARREGION;
wire [0 : 0] v2tu1_ARUSER;
wire  v2tu1_RVALID;
wire  v2tu1_RREADY;
wire [31 : 0] v2tu1_RDATA;
wire  v2tu1_RLAST;
wire [0 : 0] v2tu1_RID;
wire [0 : 0] v2tu1_RUSER;
wire [1 : 0] v2tu1_RRESP;
wire  v2tu1_BVALID;
wire  v2tu1_BREADY;
wire [1 : 0] v2tu1_BRESP;
wire [0 : 0] v2tu1_BID;
wire [0 : 0] v2tu1_BUSER;
wire  v2tu2_AWVALID;
wire  v2tu2_AWREADY;
wire [63 : 0] v2tu2_AWADDR;
wire [0 : 0] v2tu2_AWID;
wire [7 : 0] v2tu2_AWLEN;
wire [2 : 0] v2tu2_AWSIZE;
wire [1 : 0] v2tu2_AWBURST;
wire [1 : 0] v2tu2_AWLOCK;
wire [3 : 0] v2tu2_AWCACHE;
wire [2 : 0] v2tu2_AWPROT;
wire [3 : 0] v2tu2_AWQOS;
wire [3 : 0] v2tu2_AWREGION;
wire [0 : 0] v2tu2_AWUSER;
wire  v2tu2_WVALID;
wire  v2tu2_WREADY;
wire [31 : 0] v2tu2_WDATA;
wire [3 : 0] v2tu2_WSTRB;
wire  v2tu2_WLAST;
wire [0 : 0] v2tu2_WID;
wire [0 : 0] v2tu2_WUSER;
wire  v2tu2_ARVALID;
wire  v2tu2_ARREADY;
wire [63 : 0] v2tu2_ARADDR;
wire [0 : 0] v2tu2_ARID;
wire [7 : 0] v2tu2_ARLEN;
wire [2 : 0] v2tu2_ARSIZE;
wire [1 : 0] v2tu2_ARBURST;
wire [1 : 0] v2tu2_ARLOCK;
wire [3 : 0] v2tu2_ARCACHE;
wire [2 : 0] v2tu2_ARPROT;
wire [3 : 0] v2tu2_ARQOS;
wire [3 : 0] v2tu2_ARREGION;
wire [0 : 0] v2tu2_ARUSER;
wire  v2tu2_RVALID;
wire  v2tu2_RREADY;
wire [31 : 0] v2tu2_RDATA;
wire  v2tu2_RLAST;
wire [0 : 0] v2tu2_RID;
wire [0 : 0] v2tu2_RUSER;
wire [1 : 0] v2tu2_RRESP;
wire  v2tu2_BVALID;
wire  v2tu2_BREADY;
wire [1 : 0] v2tu2_BRESP;
wire [0 : 0] v2tu2_BID;
wire [0 : 0] v2tu2_BUSER;
wire  v2tu3_AWVALID;
wire  v2tu3_AWREADY;
wire [63 : 0] v2tu3_AWADDR;
wire [0 : 0] v2tu3_AWID;
wire [7 : 0] v2tu3_AWLEN;
wire [2 : 0] v2tu3_AWSIZE;
wire [1 : 0] v2tu3_AWBURST;
wire [1 : 0] v2tu3_AWLOCK;
wire [3 : 0] v2tu3_AWCACHE;
wire [2 : 0] v2tu3_AWPROT;
wire [3 : 0] v2tu3_AWQOS;
wire [3 : 0] v2tu3_AWREGION;
wire [0 : 0] v2tu3_AWUSER;
wire  v2tu3_WVALID;
wire  v2tu3_WREADY;
wire [31 : 0] v2tu3_WDATA;
wire [3 : 0] v2tu3_WSTRB;
wire  v2tu3_WLAST;
wire [0 : 0] v2tu3_WID;
wire [0 : 0] v2tu3_WUSER;
wire  v2tu3_ARVALID;
wire  v2tu3_ARREADY;
wire [63 : 0] v2tu3_ARADDR;
wire [0 : 0] v2tu3_ARID;
wire [7 : 0] v2tu3_ARLEN;
wire [2 : 0] v2tu3_ARSIZE;
wire [1 : 0] v2tu3_ARBURST;
wire [1 : 0] v2tu3_ARLOCK;
wire [3 : 0] v2tu3_ARCACHE;
wire [2 : 0] v2tu3_ARPROT;
wire [3 : 0] v2tu3_ARQOS;
wire [3 : 0] v2tu3_ARREGION;
wire [0 : 0] v2tu3_ARUSER;
wire  v2tu3_RVALID;
wire  v2tu3_RREADY;
wire [31 : 0] v2tu3_RDATA;
wire  v2tu3_RLAST;
wire [0 : 0] v2tu3_RID;
wire [0 : 0] v2tu3_RUSER;
wire [1 : 0] v2tu3_RRESP;
wire  v2tu3_BVALID;
wire  v2tu3_BREADY;
wire [1 : 0] v2tu3_BRESP;
wire [0 : 0] v2tu3_BID;
wire [0 : 0] v2tu3_BUSER;
wire  v2tu4_AWVALID;
wire  v2tu4_AWREADY;
wire [63 : 0] v2tu4_AWADDR;
wire [0 : 0] v2tu4_AWID;
wire [7 : 0] v2tu4_AWLEN;
wire [2 : 0] v2tu4_AWSIZE;
wire [1 : 0] v2tu4_AWBURST;
wire [1 : 0] v2tu4_AWLOCK;
wire [3 : 0] v2tu4_AWCACHE;
wire [2 : 0] v2tu4_AWPROT;
wire [3 : 0] v2tu4_AWQOS;
wire [3 : 0] v2tu4_AWREGION;
wire [0 : 0] v2tu4_AWUSER;
wire  v2tu4_WVALID;
wire  v2tu4_WREADY;
wire [31 : 0] v2tu4_WDATA;
wire [3 : 0] v2tu4_WSTRB;
wire  v2tu4_WLAST;
wire [0 : 0] v2tu4_WID;
wire [0 : 0] v2tu4_WUSER;
wire  v2tu4_ARVALID;
wire  v2tu4_ARREADY;
wire [63 : 0] v2tu4_ARADDR;
wire [0 : 0] v2tu4_ARID;
wire [7 : 0] v2tu4_ARLEN;
wire [2 : 0] v2tu4_ARSIZE;
wire [1 : 0] v2tu4_ARBURST;
wire [1 : 0] v2tu4_ARLOCK;
wire [3 : 0] v2tu4_ARCACHE;
wire [2 : 0] v2tu4_ARPROT;
wire [3 : 0] v2tu4_ARQOS;
wire [3 : 0] v2tu4_ARREGION;
wire [0 : 0] v2tu4_ARUSER;
wire  v2tu4_RVALID;
wire  v2tu4_RREADY;
wire [31 : 0] v2tu4_RDATA;
wire  v2tu4_RLAST;
wire [0 : 0] v2tu4_RID;
wire [0 : 0] v2tu4_RUSER;
wire [1 : 0] v2tu4_RRESP;
wire  v2tu4_BVALID;
wire  v2tu4_BREADY;
wire [1 : 0] v2tu4_BRESP;
wire [0 : 0] v2tu4_BID;
wire [0 : 0] v2tu4_BUSER;
wire  v2tb0_AWVALID;
wire  v2tb0_AWREADY;
wire [63 : 0] v2tb0_AWADDR;
wire [0 : 0] v2tb0_AWID;
wire [7 : 0] v2tb0_AWLEN;
wire [2 : 0] v2tb0_AWSIZE;
wire [1 : 0] v2tb0_AWBURST;
wire [1 : 0] v2tb0_AWLOCK;
wire [3 : 0] v2tb0_AWCACHE;
wire [2 : 0] v2tb0_AWPROT;
wire [3 : 0] v2tb0_AWQOS;
wire [3 : 0] v2tb0_AWREGION;
wire [0 : 0] v2tb0_AWUSER;
wire  v2tb0_WVALID;
wire  v2tb0_WREADY;
wire [31 : 0] v2tb0_WDATA;
wire [3 : 0] v2tb0_WSTRB;
wire  v2tb0_WLAST;
wire [0 : 0] v2tb0_WID;
wire [0 : 0] v2tb0_WUSER;
wire  v2tb0_ARVALID;
wire  v2tb0_ARREADY;
wire [63 : 0] v2tb0_ARADDR;
wire [0 : 0] v2tb0_ARID;
wire [7 : 0] v2tb0_ARLEN;
wire [2 : 0] v2tb0_ARSIZE;
wire [1 : 0] v2tb0_ARBURST;
wire [1 : 0] v2tb0_ARLOCK;
wire [3 : 0] v2tb0_ARCACHE;
wire [2 : 0] v2tb0_ARPROT;
wire [3 : 0] v2tb0_ARQOS;
wire [3 : 0] v2tb0_ARREGION;
wire [0 : 0] v2tb0_ARUSER;
wire  v2tb0_RVALID;
wire  v2tb0_RREADY;
wire [31 : 0] v2tb0_RDATA;
wire  v2tb0_RLAST;
wire [0 : 0] v2tb0_RID;
wire [0 : 0] v2tb0_RUSER;
wire [1 : 0] v2tb0_RRESP;
wire  v2tb0_BVALID;
wire  v2tb0_BREADY;
wire [1 : 0] v2tb0_BRESP;
wire [0 : 0] v2tb0_BID;
wire [0 : 0] v2tb0_BUSER;
wire  v2tb1_AWVALID;
wire  v2tb1_AWREADY;
wire [63 : 0] v2tb1_AWADDR;
wire [0 : 0] v2tb1_AWID;
wire [7 : 0] v2tb1_AWLEN;
wire [2 : 0] v2tb1_AWSIZE;
wire [1 : 0] v2tb1_AWBURST;
wire [1 : 0] v2tb1_AWLOCK;
wire [3 : 0] v2tb1_AWCACHE;
wire [2 : 0] v2tb1_AWPROT;
wire [3 : 0] v2tb1_AWQOS;
wire [3 : 0] v2tb1_AWREGION;
wire [0 : 0] v2tb1_AWUSER;
wire  v2tb1_WVALID;
wire  v2tb1_WREADY;
wire [31 : 0] v2tb1_WDATA;
wire [3 : 0] v2tb1_WSTRB;
wire  v2tb1_WLAST;
wire [0 : 0] v2tb1_WID;
wire [0 : 0] v2tb1_WUSER;
wire  v2tb1_ARVALID;
wire  v2tb1_ARREADY;
wire [63 : 0] v2tb1_ARADDR;
wire [0 : 0] v2tb1_ARID;
wire [7 : 0] v2tb1_ARLEN;
wire [2 : 0] v2tb1_ARSIZE;
wire [1 : 0] v2tb1_ARBURST;
wire [1 : 0] v2tb1_ARLOCK;
wire [3 : 0] v2tb1_ARCACHE;
wire [2 : 0] v2tb1_ARPROT;
wire [3 : 0] v2tb1_ARQOS;
wire [3 : 0] v2tb1_ARREGION;
wire [0 : 0] v2tb1_ARUSER;
wire  v2tb1_RVALID;
wire  v2tb1_RREADY;
wire [31 : 0] v2tb1_RDATA;
wire  v2tb1_RLAST;
wire [0 : 0] v2tb1_RID;
wire [0 : 0] v2tb1_RUSER;
wire [1 : 0] v2tb1_RRESP;
wire  v2tb1_BVALID;
wire  v2tb1_BREADY;
wire [1 : 0] v2tb1_BRESP;
wire [0 : 0] v2tb1_BID;
wire [0 : 0] v2tb1_BUSER;
wire  v2tb2_AWVALID;
wire  v2tb2_AWREADY;
wire [63 : 0] v2tb2_AWADDR;
wire [0 : 0] v2tb2_AWID;
wire [7 : 0] v2tb2_AWLEN;
wire [2 : 0] v2tb2_AWSIZE;
wire [1 : 0] v2tb2_AWBURST;
wire [1 : 0] v2tb2_AWLOCK;
wire [3 : 0] v2tb2_AWCACHE;
wire [2 : 0] v2tb2_AWPROT;
wire [3 : 0] v2tb2_AWQOS;
wire [3 : 0] v2tb2_AWREGION;
wire [0 : 0] v2tb2_AWUSER;
wire  v2tb2_WVALID;
wire  v2tb2_WREADY;
wire [31 : 0] v2tb2_WDATA;
wire [3 : 0] v2tb2_WSTRB;
wire  v2tb2_WLAST;
wire [0 : 0] v2tb2_WID;
wire [0 : 0] v2tb2_WUSER;
wire  v2tb2_ARVALID;
wire  v2tb2_ARREADY;
wire [63 : 0] v2tb2_ARADDR;
wire [0 : 0] v2tb2_ARID;
wire [7 : 0] v2tb2_ARLEN;
wire [2 : 0] v2tb2_ARSIZE;
wire [1 : 0] v2tb2_ARBURST;
wire [1 : 0] v2tb2_ARLOCK;
wire [3 : 0] v2tb2_ARCACHE;
wire [2 : 0] v2tb2_ARPROT;
wire [3 : 0] v2tb2_ARQOS;
wire [3 : 0] v2tb2_ARREGION;
wire [0 : 0] v2tb2_ARUSER;
wire  v2tb2_RVALID;
wire  v2tb2_RREADY;
wire [31 : 0] v2tb2_RDATA;
wire  v2tb2_RLAST;
wire [0 : 0] v2tb2_RID;
wire [0 : 0] v2tb2_RUSER;
wire [1 : 0] v2tb2_RRESP;
wire  v2tb2_BVALID;
wire  v2tb2_BREADY;
wire [1 : 0] v2tb2_BRESP;
wire [0 : 0] v2tb2_BID;
wire [0 : 0] v2tb2_BUSER;
wire  v2tx0_AWVALID;
wire  v2tx0_AWREADY;
wire [63 : 0] v2tx0_AWADDR;
wire [0 : 0] v2tx0_AWID;
wire [7 : 0] v2tx0_AWLEN;
wire [2 : 0] v2tx0_AWSIZE;
wire [1 : 0] v2tx0_AWBURST;
wire [1 : 0] v2tx0_AWLOCK;
wire [3 : 0] v2tx0_AWCACHE;
wire [2 : 0] v2tx0_AWPROT;
wire [3 : 0] v2tx0_AWQOS;
wire [3 : 0] v2tx0_AWREGION;
wire [0 : 0] v2tx0_AWUSER;
wire  v2tx0_WVALID;
wire  v2tx0_WREADY;
wire [31 : 0] v2tx0_WDATA;
wire [3 : 0] v2tx0_WSTRB;
wire  v2tx0_WLAST;
wire [0 : 0] v2tx0_WID;
wire [0 : 0] v2tx0_WUSER;
wire  v2tx0_ARVALID;
wire  v2tx0_ARREADY;
wire [63 : 0] v2tx0_ARADDR;
wire [0 : 0] v2tx0_ARID;
wire [7 : 0] v2tx0_ARLEN;
wire [2 : 0] v2tx0_ARSIZE;
wire [1 : 0] v2tx0_ARBURST;
wire [1 : 0] v2tx0_ARLOCK;
wire [3 : 0] v2tx0_ARCACHE;
wire [2 : 0] v2tx0_ARPROT;
wire [3 : 0] v2tx0_ARQOS;
wire [3 : 0] v2tx0_ARREGION;
wire [0 : 0] v2tx0_ARUSER;
wire  v2tx0_RVALID;
wire  v2tx0_RREADY;
wire [31 : 0] v2tx0_RDATA;
wire  v2tx0_RLAST;
wire [0 : 0] v2tx0_RID;
wire [0 : 0] v2tx0_RUSER;
wire [1 : 0] v2tx0_RRESP;
wire  v2tx0_BVALID;
wire  v2tx0_BREADY;
wire [1 : 0] v2tx0_BRESP;
wire [0 : 0] v2tx0_BID;
wire [0 : 0] v2tx0_BUSER;
wire  v2tx1_AWVALID;
wire  v2tx1_AWREADY;
wire [63 : 0] v2tx1_AWADDR;
wire [0 : 0] v2tx1_AWID;
wire [7 : 0] v2tx1_AWLEN;
wire [2 : 0] v2tx1_AWSIZE;
wire [1 : 0] v2tx1_AWBURST;
wire [1 : 0] v2tx1_AWLOCK;
wire [3 : 0] v2tx1_AWCACHE;
wire [2 : 0] v2tx1_AWPROT;
wire [3 : 0] v2tx1_AWQOS;
wire [3 : 0] v2tx1_AWREGION;
wire [0 : 0] v2tx1_AWUSER;
wire  v2tx1_WVALID;
wire  v2tx1_WREADY;
wire [31 : 0] v2tx1_WDATA;
wire [3 : 0] v2tx1_WSTRB;
wire  v2tx1_WLAST;
wire [0 : 0] v2tx1_WID;
wire [0 : 0] v2tx1_WUSER;
wire  v2tx1_ARVALID;
wire  v2tx1_ARREADY;
wire [63 : 0] v2tx1_ARADDR;
wire [0 : 0] v2tx1_ARID;
wire [7 : 0] v2tx1_ARLEN;
wire [2 : 0] v2tx1_ARSIZE;
wire [1 : 0] v2tx1_ARBURST;
wire [1 : 0] v2tx1_ARLOCK;
wire [3 : 0] v2tx1_ARCACHE;
wire [2 : 0] v2tx1_ARPROT;
wire [3 : 0] v2tx1_ARQOS;
wire [3 : 0] v2tx1_ARREGION;
wire [0 : 0] v2tx1_ARUSER;
wire  v2tx1_RVALID;
wire  v2tx1_RREADY;
wire [31 : 0] v2tx1_RDATA;
wire  v2tx1_RLAST;
wire [0 : 0] v2tx1_RID;
wire [0 : 0] v2tx1_RUSER;
wire [1 : 0] v2tx1_RRESP;
wire  v2tx1_BVALID;
wire  v2tx1_BREADY;
wire [1 : 0] v2tx1_BRESP;
wire [0 : 0] v2tx1_BID;
wire [0 : 0] v2tx1_BUSER;
wire  v2tx2_AWVALID;
wire  v2tx2_AWREADY;
wire [63 : 0] v2tx2_AWADDR;
wire [0 : 0] v2tx2_AWID;
wire [7 : 0] v2tx2_AWLEN;
wire [2 : 0] v2tx2_AWSIZE;
wire [1 : 0] v2tx2_AWBURST;
wire [1 : 0] v2tx2_AWLOCK;
wire [3 : 0] v2tx2_AWCACHE;
wire [2 : 0] v2tx2_AWPROT;
wire [3 : 0] v2tx2_AWQOS;
wire [3 : 0] v2tx2_AWREGION;
wire [0 : 0] v2tx2_AWUSER;
wire  v2tx2_WVALID;
wire  v2tx2_WREADY;
wire [31 : 0] v2tx2_WDATA;
wire [3 : 0] v2tx2_WSTRB;
wire  v2tx2_WLAST;
wire [0 : 0] v2tx2_WID;
wire [0 : 0] v2tx2_WUSER;
wire  v2tx2_ARVALID;
wire  v2tx2_ARREADY;
wire [63 : 0] v2tx2_ARADDR;
wire [0 : 0] v2tx2_ARID;
wire [7 : 0] v2tx2_ARLEN;
wire [2 : 0] v2tx2_ARSIZE;
wire [1 : 0] v2tx2_ARBURST;
wire [1 : 0] v2tx2_ARLOCK;
wire [3 : 0] v2tx2_ARCACHE;
wire [2 : 0] v2tx2_ARPROT;
wire [3 : 0] v2tx2_ARQOS;
wire [3 : 0] v2tx2_ARREGION;
wire [0 : 0] v2tx2_ARUSER;
wire  v2tx2_RVALID;
wire  v2tx2_RREADY;
wire [31 : 0] v2tx2_RDATA;
wire  v2tx2_RLAST;
wire [0 : 0] v2tx2_RID;
wire [0 : 0] v2tx2_RUSER;
wire [1 : 0] v2tx2_RRESP;
wire  v2tx2_BVALID;
wire  v2tx2_BREADY;
wire [1 : 0] v2tx2_BRESP;
wire [0 : 0] v2tx2_BID;
wire [0 : 0] v2tx2_BUSER;
wire  v2ta0_AWVALID;
wire  v2ta0_AWREADY;
wire [63 : 0] v2ta0_AWADDR;
wire [0 : 0] v2ta0_AWID;
wire [7 : 0] v2ta0_AWLEN;
wire [2 : 0] v2ta0_AWSIZE;
wire [1 : 0] v2ta0_AWBURST;
wire [1 : 0] v2ta0_AWLOCK;
wire [3 : 0] v2ta0_AWCACHE;
wire [2 : 0] v2ta0_AWPROT;
wire [3 : 0] v2ta0_AWQOS;
wire [3 : 0] v2ta0_AWREGION;
wire [0 : 0] v2ta0_AWUSER;
wire  v2ta0_WVALID;
wire  v2ta0_WREADY;
wire [31 : 0] v2ta0_WDATA;
wire [3 : 0] v2ta0_WSTRB;
wire  v2ta0_WLAST;
wire [0 : 0] v2ta0_WID;
wire [0 : 0] v2ta0_WUSER;
wire  v2ta0_ARVALID;
wire  v2ta0_ARREADY;
wire [63 : 0] v2ta0_ARADDR;
wire [0 : 0] v2ta0_ARID;
wire [7 : 0] v2ta0_ARLEN;
wire [2 : 0] v2ta0_ARSIZE;
wire [1 : 0] v2ta0_ARBURST;
wire [1 : 0] v2ta0_ARLOCK;
wire [3 : 0] v2ta0_ARCACHE;
wire [2 : 0] v2ta0_ARPROT;
wire [3 : 0] v2ta0_ARQOS;
wire [3 : 0] v2ta0_ARREGION;
wire [0 : 0] v2ta0_ARUSER;
wire  v2ta0_RVALID;
wire  v2ta0_RREADY;
wire [31 : 0] v2ta0_RDATA;
wire  v2ta0_RLAST;
wire [0 : 0] v2ta0_RID;
wire [0 : 0] v2ta0_RUSER;
wire [1 : 0] v2ta0_RRESP;
wire  v2ta0_BVALID;
wire  v2ta0_BREADY;
wire [1 : 0] v2ta0_BRESP;
wire [0 : 0] v2ta0_BID;
wire [0 : 0] v2ta0_BUSER;
wire  m_axi_v2tw0_AWVALID;
wire  m_axi_v2tw0_AWREADY;
wire [63 : 0] m_axi_v2tw0_AWADDR;
wire [0 : 0] m_axi_v2tw0_AWID;
wire [7 : 0] m_axi_v2tw0_AWLEN;
wire [2 : 0] m_axi_v2tw0_AWSIZE;
wire [1 : 0] m_axi_v2tw0_AWBURST;
wire [1 : 0] m_axi_v2tw0_AWLOCK;
wire [3 : 0] m_axi_v2tw0_AWCACHE;
wire [2 : 0] m_axi_v2tw0_AWPROT;
wire [3 : 0] m_axi_v2tw0_AWQOS;
wire [3 : 0] m_axi_v2tw0_AWREGION;
wire [0 : 0] m_axi_v2tw0_AWUSER;
wire  m_axi_v2tw0_WVALID;
wire  m_axi_v2tw0_WREADY;
wire [31 : 0] m_axi_v2tw0_WDATA;
wire [3 : 0] m_axi_v2tw0_WSTRB;
wire  m_axi_v2tw0_WLAST;
wire [0 : 0] m_axi_v2tw0_WID;
wire [0 : 0] m_axi_v2tw0_WUSER;
wire  m_axi_v2tw0_ARVALID;
wire  m_axi_v2tw0_ARREADY;
wire [63 : 0] m_axi_v2tw0_ARADDR;
wire [0 : 0] m_axi_v2tw0_ARID;
wire [7 : 0] m_axi_v2tw0_ARLEN;
wire [2 : 0] m_axi_v2tw0_ARSIZE;
wire [1 : 0] m_axi_v2tw0_ARBURST;
wire [1 : 0] m_axi_v2tw0_ARLOCK;
wire [3 : 0] m_axi_v2tw0_ARCACHE;
wire [2 : 0] m_axi_v2tw0_ARPROT;
wire [3 : 0] m_axi_v2tw0_ARQOS;
wire [3 : 0] m_axi_v2tw0_ARREGION;
wire [0 : 0] m_axi_v2tw0_ARUSER;
wire  m_axi_v2tw0_RVALID;
wire  m_axi_v2tw0_RREADY;
wire [31 : 0] m_axi_v2tw0_RDATA;
wire  m_axi_v2tw0_RLAST;
wire [0 : 0] m_axi_v2tw0_RID;
wire [0 : 0] m_axi_v2tw0_RUSER;
wire [1 : 0] m_axi_v2tw0_RRESP;
wire  m_axi_v2tw0_BVALID;
wire  m_axi_v2tw0_BREADY;
wire [1 : 0] m_axi_v2tw0_BRESP;
wire [0 : 0] m_axi_v2tw0_BID;
wire [0 : 0] m_axi_v2tw0_BUSER;
wire [31 : 0] active_count;
wire [31 : 0] n;
wire [31 : 0] pivot_eps;
wire [31 : 0] status;
wire  status_ap_vld;
wire [63 : 0] muladds;
wire  muladds_ap_vld;
wire [63 : 0] divisions;
wire  divisions_ap_vld;
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
    .interrupt(control_INTERRUPT),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .m_axi_v2tu0_AWVALID(v2tu0_AWVALID),
    .m_axi_v2tu0_AWREADY(v2tu0_AWREADY),
    .m_axi_v2tu0_AWADDR(v2tu0_AWADDR),
    .m_axi_v2tu0_AWID(v2tu0_AWID),
    .m_axi_v2tu0_AWLEN(v2tu0_AWLEN),
    .m_axi_v2tu0_AWSIZE(v2tu0_AWSIZE),
    .m_axi_v2tu0_AWBURST(v2tu0_AWBURST),
    .m_axi_v2tu0_AWLOCK(v2tu0_AWLOCK),
    .m_axi_v2tu0_AWCACHE(v2tu0_AWCACHE),
    .m_axi_v2tu0_AWPROT(v2tu0_AWPROT),
    .m_axi_v2tu0_AWQOS(v2tu0_AWQOS),
    .m_axi_v2tu0_AWREGION(v2tu0_AWREGION),
    .m_axi_v2tu0_AWUSER(v2tu0_AWUSER),
    .m_axi_v2tu0_WVALID(v2tu0_WVALID),
    .m_axi_v2tu0_WREADY(v2tu0_WREADY),
    .m_axi_v2tu0_WDATA(v2tu0_WDATA),
    .m_axi_v2tu0_WSTRB(v2tu0_WSTRB),
    .m_axi_v2tu0_WLAST(v2tu0_WLAST),
    .m_axi_v2tu0_WID(v2tu0_WID),
    .m_axi_v2tu0_WUSER(v2tu0_WUSER),
    .m_axi_v2tu0_ARVALID(v2tu0_ARVALID),
    .m_axi_v2tu0_ARREADY(v2tu0_ARREADY),
    .m_axi_v2tu0_ARADDR(v2tu0_ARADDR),
    .m_axi_v2tu0_ARID(v2tu0_ARID),
    .m_axi_v2tu0_ARLEN(v2tu0_ARLEN),
    .m_axi_v2tu0_ARSIZE(v2tu0_ARSIZE),
    .m_axi_v2tu0_ARBURST(v2tu0_ARBURST),
    .m_axi_v2tu0_ARLOCK(v2tu0_ARLOCK),
    .m_axi_v2tu0_ARCACHE(v2tu0_ARCACHE),
    .m_axi_v2tu0_ARPROT(v2tu0_ARPROT),
    .m_axi_v2tu0_ARQOS(v2tu0_ARQOS),
    .m_axi_v2tu0_ARREGION(v2tu0_ARREGION),
    .m_axi_v2tu0_ARUSER(v2tu0_ARUSER),
    .m_axi_v2tu0_RVALID(v2tu0_RVALID),
    .m_axi_v2tu0_RREADY(v2tu0_RREADY),
    .m_axi_v2tu0_RDATA(v2tu0_RDATA),
    .m_axi_v2tu0_RLAST(v2tu0_RLAST),
    .m_axi_v2tu0_RID(v2tu0_RID),
    .m_axi_v2tu0_RUSER(v2tu0_RUSER),
    .m_axi_v2tu0_RRESP(v2tu0_RRESP),
    .m_axi_v2tu0_BVALID(v2tu0_BVALID),
    .m_axi_v2tu0_BREADY(v2tu0_BREADY),
    .m_axi_v2tu0_BRESP(v2tu0_BRESP),
    .m_axi_v2tu0_BID(v2tu0_BID),
    .m_axi_v2tu0_BUSER(v2tu0_BUSER),
    .m_axi_v2tu1_AWVALID(v2tu1_AWVALID),
    .m_axi_v2tu1_AWREADY(v2tu1_AWREADY),
    .m_axi_v2tu1_AWADDR(v2tu1_AWADDR),
    .m_axi_v2tu1_AWID(v2tu1_AWID),
    .m_axi_v2tu1_AWLEN(v2tu1_AWLEN),
    .m_axi_v2tu1_AWSIZE(v2tu1_AWSIZE),
    .m_axi_v2tu1_AWBURST(v2tu1_AWBURST),
    .m_axi_v2tu1_AWLOCK(v2tu1_AWLOCK),
    .m_axi_v2tu1_AWCACHE(v2tu1_AWCACHE),
    .m_axi_v2tu1_AWPROT(v2tu1_AWPROT),
    .m_axi_v2tu1_AWQOS(v2tu1_AWQOS),
    .m_axi_v2tu1_AWREGION(v2tu1_AWREGION),
    .m_axi_v2tu1_AWUSER(v2tu1_AWUSER),
    .m_axi_v2tu1_WVALID(v2tu1_WVALID),
    .m_axi_v2tu1_WREADY(v2tu1_WREADY),
    .m_axi_v2tu1_WDATA(v2tu1_WDATA),
    .m_axi_v2tu1_WSTRB(v2tu1_WSTRB),
    .m_axi_v2tu1_WLAST(v2tu1_WLAST),
    .m_axi_v2tu1_WID(v2tu1_WID),
    .m_axi_v2tu1_WUSER(v2tu1_WUSER),
    .m_axi_v2tu1_ARVALID(v2tu1_ARVALID),
    .m_axi_v2tu1_ARREADY(v2tu1_ARREADY),
    .m_axi_v2tu1_ARADDR(v2tu1_ARADDR),
    .m_axi_v2tu1_ARID(v2tu1_ARID),
    .m_axi_v2tu1_ARLEN(v2tu1_ARLEN),
    .m_axi_v2tu1_ARSIZE(v2tu1_ARSIZE),
    .m_axi_v2tu1_ARBURST(v2tu1_ARBURST),
    .m_axi_v2tu1_ARLOCK(v2tu1_ARLOCK),
    .m_axi_v2tu1_ARCACHE(v2tu1_ARCACHE),
    .m_axi_v2tu1_ARPROT(v2tu1_ARPROT),
    .m_axi_v2tu1_ARQOS(v2tu1_ARQOS),
    .m_axi_v2tu1_ARREGION(v2tu1_ARREGION),
    .m_axi_v2tu1_ARUSER(v2tu1_ARUSER),
    .m_axi_v2tu1_RVALID(v2tu1_RVALID),
    .m_axi_v2tu1_RREADY(v2tu1_RREADY),
    .m_axi_v2tu1_RDATA(v2tu1_RDATA),
    .m_axi_v2tu1_RLAST(v2tu1_RLAST),
    .m_axi_v2tu1_RID(v2tu1_RID),
    .m_axi_v2tu1_RUSER(v2tu1_RUSER),
    .m_axi_v2tu1_RRESP(v2tu1_RRESP),
    .m_axi_v2tu1_BVALID(v2tu1_BVALID),
    .m_axi_v2tu1_BREADY(v2tu1_BREADY),
    .m_axi_v2tu1_BRESP(v2tu1_BRESP),
    .m_axi_v2tu1_BID(v2tu1_BID),
    .m_axi_v2tu1_BUSER(v2tu1_BUSER),
    .m_axi_v2tu2_AWVALID(v2tu2_AWVALID),
    .m_axi_v2tu2_AWREADY(v2tu2_AWREADY),
    .m_axi_v2tu2_AWADDR(v2tu2_AWADDR),
    .m_axi_v2tu2_AWID(v2tu2_AWID),
    .m_axi_v2tu2_AWLEN(v2tu2_AWLEN),
    .m_axi_v2tu2_AWSIZE(v2tu2_AWSIZE),
    .m_axi_v2tu2_AWBURST(v2tu2_AWBURST),
    .m_axi_v2tu2_AWLOCK(v2tu2_AWLOCK),
    .m_axi_v2tu2_AWCACHE(v2tu2_AWCACHE),
    .m_axi_v2tu2_AWPROT(v2tu2_AWPROT),
    .m_axi_v2tu2_AWQOS(v2tu2_AWQOS),
    .m_axi_v2tu2_AWREGION(v2tu2_AWREGION),
    .m_axi_v2tu2_AWUSER(v2tu2_AWUSER),
    .m_axi_v2tu2_WVALID(v2tu2_WVALID),
    .m_axi_v2tu2_WREADY(v2tu2_WREADY),
    .m_axi_v2tu2_WDATA(v2tu2_WDATA),
    .m_axi_v2tu2_WSTRB(v2tu2_WSTRB),
    .m_axi_v2tu2_WLAST(v2tu2_WLAST),
    .m_axi_v2tu2_WID(v2tu2_WID),
    .m_axi_v2tu2_WUSER(v2tu2_WUSER),
    .m_axi_v2tu2_ARVALID(v2tu2_ARVALID),
    .m_axi_v2tu2_ARREADY(v2tu2_ARREADY),
    .m_axi_v2tu2_ARADDR(v2tu2_ARADDR),
    .m_axi_v2tu2_ARID(v2tu2_ARID),
    .m_axi_v2tu2_ARLEN(v2tu2_ARLEN),
    .m_axi_v2tu2_ARSIZE(v2tu2_ARSIZE),
    .m_axi_v2tu2_ARBURST(v2tu2_ARBURST),
    .m_axi_v2tu2_ARLOCK(v2tu2_ARLOCK),
    .m_axi_v2tu2_ARCACHE(v2tu2_ARCACHE),
    .m_axi_v2tu2_ARPROT(v2tu2_ARPROT),
    .m_axi_v2tu2_ARQOS(v2tu2_ARQOS),
    .m_axi_v2tu2_ARREGION(v2tu2_ARREGION),
    .m_axi_v2tu2_ARUSER(v2tu2_ARUSER),
    .m_axi_v2tu2_RVALID(v2tu2_RVALID),
    .m_axi_v2tu2_RREADY(v2tu2_RREADY),
    .m_axi_v2tu2_RDATA(v2tu2_RDATA),
    .m_axi_v2tu2_RLAST(v2tu2_RLAST),
    .m_axi_v2tu2_RID(v2tu2_RID),
    .m_axi_v2tu2_RUSER(v2tu2_RUSER),
    .m_axi_v2tu2_RRESP(v2tu2_RRESP),
    .m_axi_v2tu2_BVALID(v2tu2_BVALID),
    .m_axi_v2tu2_BREADY(v2tu2_BREADY),
    .m_axi_v2tu2_BRESP(v2tu2_BRESP),
    .m_axi_v2tu2_BID(v2tu2_BID),
    .m_axi_v2tu2_BUSER(v2tu2_BUSER),
    .m_axi_v2tu3_AWVALID(v2tu3_AWVALID),
    .m_axi_v2tu3_AWREADY(v2tu3_AWREADY),
    .m_axi_v2tu3_AWADDR(v2tu3_AWADDR),
    .m_axi_v2tu3_AWID(v2tu3_AWID),
    .m_axi_v2tu3_AWLEN(v2tu3_AWLEN),
    .m_axi_v2tu3_AWSIZE(v2tu3_AWSIZE),
    .m_axi_v2tu3_AWBURST(v2tu3_AWBURST),
    .m_axi_v2tu3_AWLOCK(v2tu3_AWLOCK),
    .m_axi_v2tu3_AWCACHE(v2tu3_AWCACHE),
    .m_axi_v2tu3_AWPROT(v2tu3_AWPROT),
    .m_axi_v2tu3_AWQOS(v2tu3_AWQOS),
    .m_axi_v2tu3_AWREGION(v2tu3_AWREGION),
    .m_axi_v2tu3_AWUSER(v2tu3_AWUSER),
    .m_axi_v2tu3_WVALID(v2tu3_WVALID),
    .m_axi_v2tu3_WREADY(v2tu3_WREADY),
    .m_axi_v2tu3_WDATA(v2tu3_WDATA),
    .m_axi_v2tu3_WSTRB(v2tu3_WSTRB),
    .m_axi_v2tu3_WLAST(v2tu3_WLAST),
    .m_axi_v2tu3_WID(v2tu3_WID),
    .m_axi_v2tu3_WUSER(v2tu3_WUSER),
    .m_axi_v2tu3_ARVALID(v2tu3_ARVALID),
    .m_axi_v2tu3_ARREADY(v2tu3_ARREADY),
    .m_axi_v2tu3_ARADDR(v2tu3_ARADDR),
    .m_axi_v2tu3_ARID(v2tu3_ARID),
    .m_axi_v2tu3_ARLEN(v2tu3_ARLEN),
    .m_axi_v2tu3_ARSIZE(v2tu3_ARSIZE),
    .m_axi_v2tu3_ARBURST(v2tu3_ARBURST),
    .m_axi_v2tu3_ARLOCK(v2tu3_ARLOCK),
    .m_axi_v2tu3_ARCACHE(v2tu3_ARCACHE),
    .m_axi_v2tu3_ARPROT(v2tu3_ARPROT),
    .m_axi_v2tu3_ARQOS(v2tu3_ARQOS),
    .m_axi_v2tu3_ARREGION(v2tu3_ARREGION),
    .m_axi_v2tu3_ARUSER(v2tu3_ARUSER),
    .m_axi_v2tu3_RVALID(v2tu3_RVALID),
    .m_axi_v2tu3_RREADY(v2tu3_RREADY),
    .m_axi_v2tu3_RDATA(v2tu3_RDATA),
    .m_axi_v2tu3_RLAST(v2tu3_RLAST),
    .m_axi_v2tu3_RID(v2tu3_RID),
    .m_axi_v2tu3_RUSER(v2tu3_RUSER),
    .m_axi_v2tu3_RRESP(v2tu3_RRESP),
    .m_axi_v2tu3_BVALID(v2tu3_BVALID),
    .m_axi_v2tu3_BREADY(v2tu3_BREADY),
    .m_axi_v2tu3_BRESP(v2tu3_BRESP),
    .m_axi_v2tu3_BID(v2tu3_BID),
    .m_axi_v2tu3_BUSER(v2tu3_BUSER),
    .m_axi_v2tu4_AWVALID(v2tu4_AWVALID),
    .m_axi_v2tu4_AWREADY(v2tu4_AWREADY),
    .m_axi_v2tu4_AWADDR(v2tu4_AWADDR),
    .m_axi_v2tu4_AWID(v2tu4_AWID),
    .m_axi_v2tu4_AWLEN(v2tu4_AWLEN),
    .m_axi_v2tu4_AWSIZE(v2tu4_AWSIZE),
    .m_axi_v2tu4_AWBURST(v2tu4_AWBURST),
    .m_axi_v2tu4_AWLOCK(v2tu4_AWLOCK),
    .m_axi_v2tu4_AWCACHE(v2tu4_AWCACHE),
    .m_axi_v2tu4_AWPROT(v2tu4_AWPROT),
    .m_axi_v2tu4_AWQOS(v2tu4_AWQOS),
    .m_axi_v2tu4_AWREGION(v2tu4_AWREGION),
    .m_axi_v2tu4_AWUSER(v2tu4_AWUSER),
    .m_axi_v2tu4_WVALID(v2tu4_WVALID),
    .m_axi_v2tu4_WREADY(v2tu4_WREADY),
    .m_axi_v2tu4_WDATA(v2tu4_WDATA),
    .m_axi_v2tu4_WSTRB(v2tu4_WSTRB),
    .m_axi_v2tu4_WLAST(v2tu4_WLAST),
    .m_axi_v2tu4_WID(v2tu4_WID),
    .m_axi_v2tu4_WUSER(v2tu4_WUSER),
    .m_axi_v2tu4_ARVALID(v2tu4_ARVALID),
    .m_axi_v2tu4_ARREADY(v2tu4_ARREADY),
    .m_axi_v2tu4_ARADDR(v2tu4_ARADDR),
    .m_axi_v2tu4_ARID(v2tu4_ARID),
    .m_axi_v2tu4_ARLEN(v2tu4_ARLEN),
    .m_axi_v2tu4_ARSIZE(v2tu4_ARSIZE),
    .m_axi_v2tu4_ARBURST(v2tu4_ARBURST),
    .m_axi_v2tu4_ARLOCK(v2tu4_ARLOCK),
    .m_axi_v2tu4_ARCACHE(v2tu4_ARCACHE),
    .m_axi_v2tu4_ARPROT(v2tu4_ARPROT),
    .m_axi_v2tu4_ARQOS(v2tu4_ARQOS),
    .m_axi_v2tu4_ARREGION(v2tu4_ARREGION),
    .m_axi_v2tu4_ARUSER(v2tu4_ARUSER),
    .m_axi_v2tu4_RVALID(v2tu4_RVALID),
    .m_axi_v2tu4_RREADY(v2tu4_RREADY),
    .m_axi_v2tu4_RDATA(v2tu4_RDATA),
    .m_axi_v2tu4_RLAST(v2tu4_RLAST),
    .m_axi_v2tu4_RID(v2tu4_RID),
    .m_axi_v2tu4_RUSER(v2tu4_RUSER),
    .m_axi_v2tu4_RRESP(v2tu4_RRESP),
    .m_axi_v2tu4_BVALID(v2tu4_BVALID),
    .m_axi_v2tu4_BREADY(v2tu4_BREADY),
    .m_axi_v2tu4_BRESP(v2tu4_BRESP),
    .m_axi_v2tu4_BID(v2tu4_BID),
    .m_axi_v2tu4_BUSER(v2tu4_BUSER),
    .m_axi_v2tb0_AWVALID(v2tb0_AWVALID),
    .m_axi_v2tb0_AWREADY(v2tb0_AWREADY),
    .m_axi_v2tb0_AWADDR(v2tb0_AWADDR),
    .m_axi_v2tb0_AWID(v2tb0_AWID),
    .m_axi_v2tb0_AWLEN(v2tb0_AWLEN),
    .m_axi_v2tb0_AWSIZE(v2tb0_AWSIZE),
    .m_axi_v2tb0_AWBURST(v2tb0_AWBURST),
    .m_axi_v2tb0_AWLOCK(v2tb0_AWLOCK),
    .m_axi_v2tb0_AWCACHE(v2tb0_AWCACHE),
    .m_axi_v2tb0_AWPROT(v2tb0_AWPROT),
    .m_axi_v2tb0_AWQOS(v2tb0_AWQOS),
    .m_axi_v2tb0_AWREGION(v2tb0_AWREGION),
    .m_axi_v2tb0_AWUSER(v2tb0_AWUSER),
    .m_axi_v2tb0_WVALID(v2tb0_WVALID),
    .m_axi_v2tb0_WREADY(v2tb0_WREADY),
    .m_axi_v2tb0_WDATA(v2tb0_WDATA),
    .m_axi_v2tb0_WSTRB(v2tb0_WSTRB),
    .m_axi_v2tb0_WLAST(v2tb0_WLAST),
    .m_axi_v2tb0_WID(v2tb0_WID),
    .m_axi_v2tb0_WUSER(v2tb0_WUSER),
    .m_axi_v2tb0_ARVALID(v2tb0_ARVALID),
    .m_axi_v2tb0_ARREADY(v2tb0_ARREADY),
    .m_axi_v2tb0_ARADDR(v2tb0_ARADDR),
    .m_axi_v2tb0_ARID(v2tb0_ARID),
    .m_axi_v2tb0_ARLEN(v2tb0_ARLEN),
    .m_axi_v2tb0_ARSIZE(v2tb0_ARSIZE),
    .m_axi_v2tb0_ARBURST(v2tb0_ARBURST),
    .m_axi_v2tb0_ARLOCK(v2tb0_ARLOCK),
    .m_axi_v2tb0_ARCACHE(v2tb0_ARCACHE),
    .m_axi_v2tb0_ARPROT(v2tb0_ARPROT),
    .m_axi_v2tb0_ARQOS(v2tb0_ARQOS),
    .m_axi_v2tb0_ARREGION(v2tb0_ARREGION),
    .m_axi_v2tb0_ARUSER(v2tb0_ARUSER),
    .m_axi_v2tb0_RVALID(v2tb0_RVALID),
    .m_axi_v2tb0_RREADY(v2tb0_RREADY),
    .m_axi_v2tb0_RDATA(v2tb0_RDATA),
    .m_axi_v2tb0_RLAST(v2tb0_RLAST),
    .m_axi_v2tb0_RID(v2tb0_RID),
    .m_axi_v2tb0_RUSER(v2tb0_RUSER),
    .m_axi_v2tb0_RRESP(v2tb0_RRESP),
    .m_axi_v2tb0_BVALID(v2tb0_BVALID),
    .m_axi_v2tb0_BREADY(v2tb0_BREADY),
    .m_axi_v2tb0_BRESP(v2tb0_BRESP),
    .m_axi_v2tb0_BID(v2tb0_BID),
    .m_axi_v2tb0_BUSER(v2tb0_BUSER),
    .m_axi_v2tb1_AWVALID(v2tb1_AWVALID),
    .m_axi_v2tb1_AWREADY(v2tb1_AWREADY),
    .m_axi_v2tb1_AWADDR(v2tb1_AWADDR),
    .m_axi_v2tb1_AWID(v2tb1_AWID),
    .m_axi_v2tb1_AWLEN(v2tb1_AWLEN),
    .m_axi_v2tb1_AWSIZE(v2tb1_AWSIZE),
    .m_axi_v2tb1_AWBURST(v2tb1_AWBURST),
    .m_axi_v2tb1_AWLOCK(v2tb1_AWLOCK),
    .m_axi_v2tb1_AWCACHE(v2tb1_AWCACHE),
    .m_axi_v2tb1_AWPROT(v2tb1_AWPROT),
    .m_axi_v2tb1_AWQOS(v2tb1_AWQOS),
    .m_axi_v2tb1_AWREGION(v2tb1_AWREGION),
    .m_axi_v2tb1_AWUSER(v2tb1_AWUSER),
    .m_axi_v2tb1_WVALID(v2tb1_WVALID),
    .m_axi_v2tb1_WREADY(v2tb1_WREADY),
    .m_axi_v2tb1_WDATA(v2tb1_WDATA),
    .m_axi_v2tb1_WSTRB(v2tb1_WSTRB),
    .m_axi_v2tb1_WLAST(v2tb1_WLAST),
    .m_axi_v2tb1_WID(v2tb1_WID),
    .m_axi_v2tb1_WUSER(v2tb1_WUSER),
    .m_axi_v2tb1_ARVALID(v2tb1_ARVALID),
    .m_axi_v2tb1_ARREADY(v2tb1_ARREADY),
    .m_axi_v2tb1_ARADDR(v2tb1_ARADDR),
    .m_axi_v2tb1_ARID(v2tb1_ARID),
    .m_axi_v2tb1_ARLEN(v2tb1_ARLEN),
    .m_axi_v2tb1_ARSIZE(v2tb1_ARSIZE),
    .m_axi_v2tb1_ARBURST(v2tb1_ARBURST),
    .m_axi_v2tb1_ARLOCK(v2tb1_ARLOCK),
    .m_axi_v2tb1_ARCACHE(v2tb1_ARCACHE),
    .m_axi_v2tb1_ARPROT(v2tb1_ARPROT),
    .m_axi_v2tb1_ARQOS(v2tb1_ARQOS),
    .m_axi_v2tb1_ARREGION(v2tb1_ARREGION),
    .m_axi_v2tb1_ARUSER(v2tb1_ARUSER),
    .m_axi_v2tb1_RVALID(v2tb1_RVALID),
    .m_axi_v2tb1_RREADY(v2tb1_RREADY),
    .m_axi_v2tb1_RDATA(v2tb1_RDATA),
    .m_axi_v2tb1_RLAST(v2tb1_RLAST),
    .m_axi_v2tb1_RID(v2tb1_RID),
    .m_axi_v2tb1_RUSER(v2tb1_RUSER),
    .m_axi_v2tb1_RRESP(v2tb1_RRESP),
    .m_axi_v2tb1_BVALID(v2tb1_BVALID),
    .m_axi_v2tb1_BREADY(v2tb1_BREADY),
    .m_axi_v2tb1_BRESP(v2tb1_BRESP),
    .m_axi_v2tb1_BID(v2tb1_BID),
    .m_axi_v2tb1_BUSER(v2tb1_BUSER),
    .m_axi_v2tb2_AWVALID(v2tb2_AWVALID),
    .m_axi_v2tb2_AWREADY(v2tb2_AWREADY),
    .m_axi_v2tb2_AWADDR(v2tb2_AWADDR),
    .m_axi_v2tb2_AWID(v2tb2_AWID),
    .m_axi_v2tb2_AWLEN(v2tb2_AWLEN),
    .m_axi_v2tb2_AWSIZE(v2tb2_AWSIZE),
    .m_axi_v2tb2_AWBURST(v2tb2_AWBURST),
    .m_axi_v2tb2_AWLOCK(v2tb2_AWLOCK),
    .m_axi_v2tb2_AWCACHE(v2tb2_AWCACHE),
    .m_axi_v2tb2_AWPROT(v2tb2_AWPROT),
    .m_axi_v2tb2_AWQOS(v2tb2_AWQOS),
    .m_axi_v2tb2_AWREGION(v2tb2_AWREGION),
    .m_axi_v2tb2_AWUSER(v2tb2_AWUSER),
    .m_axi_v2tb2_WVALID(v2tb2_WVALID),
    .m_axi_v2tb2_WREADY(v2tb2_WREADY),
    .m_axi_v2tb2_WDATA(v2tb2_WDATA),
    .m_axi_v2tb2_WSTRB(v2tb2_WSTRB),
    .m_axi_v2tb2_WLAST(v2tb2_WLAST),
    .m_axi_v2tb2_WID(v2tb2_WID),
    .m_axi_v2tb2_WUSER(v2tb2_WUSER),
    .m_axi_v2tb2_ARVALID(v2tb2_ARVALID),
    .m_axi_v2tb2_ARREADY(v2tb2_ARREADY),
    .m_axi_v2tb2_ARADDR(v2tb2_ARADDR),
    .m_axi_v2tb2_ARID(v2tb2_ARID),
    .m_axi_v2tb2_ARLEN(v2tb2_ARLEN),
    .m_axi_v2tb2_ARSIZE(v2tb2_ARSIZE),
    .m_axi_v2tb2_ARBURST(v2tb2_ARBURST),
    .m_axi_v2tb2_ARLOCK(v2tb2_ARLOCK),
    .m_axi_v2tb2_ARCACHE(v2tb2_ARCACHE),
    .m_axi_v2tb2_ARPROT(v2tb2_ARPROT),
    .m_axi_v2tb2_ARQOS(v2tb2_ARQOS),
    .m_axi_v2tb2_ARREGION(v2tb2_ARREGION),
    .m_axi_v2tb2_ARUSER(v2tb2_ARUSER),
    .m_axi_v2tb2_RVALID(v2tb2_RVALID),
    .m_axi_v2tb2_RREADY(v2tb2_RREADY),
    .m_axi_v2tb2_RDATA(v2tb2_RDATA),
    .m_axi_v2tb2_RLAST(v2tb2_RLAST),
    .m_axi_v2tb2_RID(v2tb2_RID),
    .m_axi_v2tb2_RUSER(v2tb2_RUSER),
    .m_axi_v2tb2_RRESP(v2tb2_RRESP),
    .m_axi_v2tb2_BVALID(v2tb2_BVALID),
    .m_axi_v2tb2_BREADY(v2tb2_BREADY),
    .m_axi_v2tb2_BRESP(v2tb2_BRESP),
    .m_axi_v2tb2_BID(v2tb2_BID),
    .m_axi_v2tb2_BUSER(v2tb2_BUSER),
    .m_axi_v2tx0_AWVALID(v2tx0_AWVALID),
    .m_axi_v2tx0_AWREADY(v2tx0_AWREADY),
    .m_axi_v2tx0_AWADDR(v2tx0_AWADDR),
    .m_axi_v2tx0_AWID(v2tx0_AWID),
    .m_axi_v2tx0_AWLEN(v2tx0_AWLEN),
    .m_axi_v2tx0_AWSIZE(v2tx0_AWSIZE),
    .m_axi_v2tx0_AWBURST(v2tx0_AWBURST),
    .m_axi_v2tx0_AWLOCK(v2tx0_AWLOCK),
    .m_axi_v2tx0_AWCACHE(v2tx0_AWCACHE),
    .m_axi_v2tx0_AWPROT(v2tx0_AWPROT),
    .m_axi_v2tx0_AWQOS(v2tx0_AWQOS),
    .m_axi_v2tx0_AWREGION(v2tx0_AWREGION),
    .m_axi_v2tx0_AWUSER(v2tx0_AWUSER),
    .m_axi_v2tx0_WVALID(v2tx0_WVALID),
    .m_axi_v2tx0_WREADY(v2tx0_WREADY),
    .m_axi_v2tx0_WDATA(v2tx0_WDATA),
    .m_axi_v2tx0_WSTRB(v2tx0_WSTRB),
    .m_axi_v2tx0_WLAST(v2tx0_WLAST),
    .m_axi_v2tx0_WID(v2tx0_WID),
    .m_axi_v2tx0_WUSER(v2tx0_WUSER),
    .m_axi_v2tx0_ARVALID(v2tx0_ARVALID),
    .m_axi_v2tx0_ARREADY(v2tx0_ARREADY),
    .m_axi_v2tx0_ARADDR(v2tx0_ARADDR),
    .m_axi_v2tx0_ARID(v2tx0_ARID),
    .m_axi_v2tx0_ARLEN(v2tx0_ARLEN),
    .m_axi_v2tx0_ARSIZE(v2tx0_ARSIZE),
    .m_axi_v2tx0_ARBURST(v2tx0_ARBURST),
    .m_axi_v2tx0_ARLOCK(v2tx0_ARLOCK),
    .m_axi_v2tx0_ARCACHE(v2tx0_ARCACHE),
    .m_axi_v2tx0_ARPROT(v2tx0_ARPROT),
    .m_axi_v2tx0_ARQOS(v2tx0_ARQOS),
    .m_axi_v2tx0_ARREGION(v2tx0_ARREGION),
    .m_axi_v2tx0_ARUSER(v2tx0_ARUSER),
    .m_axi_v2tx0_RVALID(v2tx0_RVALID),
    .m_axi_v2tx0_RREADY(v2tx0_RREADY),
    .m_axi_v2tx0_RDATA(v2tx0_RDATA),
    .m_axi_v2tx0_RLAST(v2tx0_RLAST),
    .m_axi_v2tx0_RID(v2tx0_RID),
    .m_axi_v2tx0_RUSER(v2tx0_RUSER),
    .m_axi_v2tx0_RRESP(v2tx0_RRESP),
    .m_axi_v2tx0_BVALID(v2tx0_BVALID),
    .m_axi_v2tx0_BREADY(v2tx0_BREADY),
    .m_axi_v2tx0_BRESP(v2tx0_BRESP),
    .m_axi_v2tx0_BID(v2tx0_BID),
    .m_axi_v2tx0_BUSER(v2tx0_BUSER),
    .m_axi_v2tx1_AWVALID(v2tx1_AWVALID),
    .m_axi_v2tx1_AWREADY(v2tx1_AWREADY),
    .m_axi_v2tx1_AWADDR(v2tx1_AWADDR),
    .m_axi_v2tx1_AWID(v2tx1_AWID),
    .m_axi_v2tx1_AWLEN(v2tx1_AWLEN),
    .m_axi_v2tx1_AWSIZE(v2tx1_AWSIZE),
    .m_axi_v2tx1_AWBURST(v2tx1_AWBURST),
    .m_axi_v2tx1_AWLOCK(v2tx1_AWLOCK),
    .m_axi_v2tx1_AWCACHE(v2tx1_AWCACHE),
    .m_axi_v2tx1_AWPROT(v2tx1_AWPROT),
    .m_axi_v2tx1_AWQOS(v2tx1_AWQOS),
    .m_axi_v2tx1_AWREGION(v2tx1_AWREGION),
    .m_axi_v2tx1_AWUSER(v2tx1_AWUSER),
    .m_axi_v2tx1_WVALID(v2tx1_WVALID),
    .m_axi_v2tx1_WREADY(v2tx1_WREADY),
    .m_axi_v2tx1_WDATA(v2tx1_WDATA),
    .m_axi_v2tx1_WSTRB(v2tx1_WSTRB),
    .m_axi_v2tx1_WLAST(v2tx1_WLAST),
    .m_axi_v2tx1_WID(v2tx1_WID),
    .m_axi_v2tx1_WUSER(v2tx1_WUSER),
    .m_axi_v2tx1_ARVALID(v2tx1_ARVALID),
    .m_axi_v2tx1_ARREADY(v2tx1_ARREADY),
    .m_axi_v2tx1_ARADDR(v2tx1_ARADDR),
    .m_axi_v2tx1_ARID(v2tx1_ARID),
    .m_axi_v2tx1_ARLEN(v2tx1_ARLEN),
    .m_axi_v2tx1_ARSIZE(v2tx1_ARSIZE),
    .m_axi_v2tx1_ARBURST(v2tx1_ARBURST),
    .m_axi_v2tx1_ARLOCK(v2tx1_ARLOCK),
    .m_axi_v2tx1_ARCACHE(v2tx1_ARCACHE),
    .m_axi_v2tx1_ARPROT(v2tx1_ARPROT),
    .m_axi_v2tx1_ARQOS(v2tx1_ARQOS),
    .m_axi_v2tx1_ARREGION(v2tx1_ARREGION),
    .m_axi_v2tx1_ARUSER(v2tx1_ARUSER),
    .m_axi_v2tx1_RVALID(v2tx1_RVALID),
    .m_axi_v2tx1_RREADY(v2tx1_RREADY),
    .m_axi_v2tx1_RDATA(v2tx1_RDATA),
    .m_axi_v2tx1_RLAST(v2tx1_RLAST),
    .m_axi_v2tx1_RID(v2tx1_RID),
    .m_axi_v2tx1_RUSER(v2tx1_RUSER),
    .m_axi_v2tx1_RRESP(v2tx1_RRESP),
    .m_axi_v2tx1_BVALID(v2tx1_BVALID),
    .m_axi_v2tx1_BREADY(v2tx1_BREADY),
    .m_axi_v2tx1_BRESP(v2tx1_BRESP),
    .m_axi_v2tx1_BID(v2tx1_BID),
    .m_axi_v2tx1_BUSER(v2tx1_BUSER),
    .m_axi_v2tx2_AWVALID(v2tx2_AWVALID),
    .m_axi_v2tx2_AWREADY(v2tx2_AWREADY),
    .m_axi_v2tx2_AWADDR(v2tx2_AWADDR),
    .m_axi_v2tx2_AWID(v2tx2_AWID),
    .m_axi_v2tx2_AWLEN(v2tx2_AWLEN),
    .m_axi_v2tx2_AWSIZE(v2tx2_AWSIZE),
    .m_axi_v2tx2_AWBURST(v2tx2_AWBURST),
    .m_axi_v2tx2_AWLOCK(v2tx2_AWLOCK),
    .m_axi_v2tx2_AWCACHE(v2tx2_AWCACHE),
    .m_axi_v2tx2_AWPROT(v2tx2_AWPROT),
    .m_axi_v2tx2_AWQOS(v2tx2_AWQOS),
    .m_axi_v2tx2_AWREGION(v2tx2_AWREGION),
    .m_axi_v2tx2_AWUSER(v2tx2_AWUSER),
    .m_axi_v2tx2_WVALID(v2tx2_WVALID),
    .m_axi_v2tx2_WREADY(v2tx2_WREADY),
    .m_axi_v2tx2_WDATA(v2tx2_WDATA),
    .m_axi_v2tx2_WSTRB(v2tx2_WSTRB),
    .m_axi_v2tx2_WLAST(v2tx2_WLAST),
    .m_axi_v2tx2_WID(v2tx2_WID),
    .m_axi_v2tx2_WUSER(v2tx2_WUSER),
    .m_axi_v2tx2_ARVALID(v2tx2_ARVALID),
    .m_axi_v2tx2_ARREADY(v2tx2_ARREADY),
    .m_axi_v2tx2_ARADDR(v2tx2_ARADDR),
    .m_axi_v2tx2_ARID(v2tx2_ARID),
    .m_axi_v2tx2_ARLEN(v2tx2_ARLEN),
    .m_axi_v2tx2_ARSIZE(v2tx2_ARSIZE),
    .m_axi_v2tx2_ARBURST(v2tx2_ARBURST),
    .m_axi_v2tx2_ARLOCK(v2tx2_ARLOCK),
    .m_axi_v2tx2_ARCACHE(v2tx2_ARCACHE),
    .m_axi_v2tx2_ARPROT(v2tx2_ARPROT),
    .m_axi_v2tx2_ARQOS(v2tx2_ARQOS),
    .m_axi_v2tx2_ARREGION(v2tx2_ARREGION),
    .m_axi_v2tx2_ARUSER(v2tx2_ARUSER),
    .m_axi_v2tx2_RVALID(v2tx2_RVALID),
    .m_axi_v2tx2_RREADY(v2tx2_RREADY),
    .m_axi_v2tx2_RDATA(v2tx2_RDATA),
    .m_axi_v2tx2_RLAST(v2tx2_RLAST),
    .m_axi_v2tx2_RID(v2tx2_RID),
    .m_axi_v2tx2_RUSER(v2tx2_RUSER),
    .m_axi_v2tx2_RRESP(v2tx2_RRESP),
    .m_axi_v2tx2_BVALID(v2tx2_BVALID),
    .m_axi_v2tx2_BREADY(v2tx2_BREADY),
    .m_axi_v2tx2_BRESP(v2tx2_BRESP),
    .m_axi_v2tx2_BID(v2tx2_BID),
    .m_axi_v2tx2_BUSER(v2tx2_BUSER),
    .m_axi_v2ta0_AWVALID(v2ta0_AWVALID),
    .m_axi_v2ta0_AWREADY(v2ta0_AWREADY),
    .m_axi_v2ta0_AWADDR(v2ta0_AWADDR),
    .m_axi_v2ta0_AWID(v2ta0_AWID),
    .m_axi_v2ta0_AWLEN(v2ta0_AWLEN),
    .m_axi_v2ta0_AWSIZE(v2ta0_AWSIZE),
    .m_axi_v2ta0_AWBURST(v2ta0_AWBURST),
    .m_axi_v2ta0_AWLOCK(v2ta0_AWLOCK),
    .m_axi_v2ta0_AWCACHE(v2ta0_AWCACHE),
    .m_axi_v2ta0_AWPROT(v2ta0_AWPROT),
    .m_axi_v2ta0_AWQOS(v2ta0_AWQOS),
    .m_axi_v2ta0_AWREGION(v2ta0_AWREGION),
    .m_axi_v2ta0_AWUSER(v2ta0_AWUSER),
    .m_axi_v2ta0_WVALID(v2ta0_WVALID),
    .m_axi_v2ta0_WREADY(v2ta0_WREADY),
    .m_axi_v2ta0_WDATA(v2ta0_WDATA),
    .m_axi_v2ta0_WSTRB(v2ta0_WSTRB),
    .m_axi_v2ta0_WLAST(v2ta0_WLAST),
    .m_axi_v2ta0_WID(v2ta0_WID),
    .m_axi_v2ta0_WUSER(v2ta0_WUSER),
    .m_axi_v2ta0_ARVALID(v2ta0_ARVALID),
    .m_axi_v2ta0_ARREADY(v2ta0_ARREADY),
    .m_axi_v2ta0_ARADDR(v2ta0_ARADDR),
    .m_axi_v2ta0_ARID(v2ta0_ARID),
    .m_axi_v2ta0_ARLEN(v2ta0_ARLEN),
    .m_axi_v2ta0_ARSIZE(v2ta0_ARSIZE),
    .m_axi_v2ta0_ARBURST(v2ta0_ARBURST),
    .m_axi_v2ta0_ARLOCK(v2ta0_ARLOCK),
    .m_axi_v2ta0_ARCACHE(v2ta0_ARCACHE),
    .m_axi_v2ta0_ARPROT(v2ta0_ARPROT),
    .m_axi_v2ta0_ARQOS(v2ta0_ARQOS),
    .m_axi_v2ta0_ARREGION(v2ta0_ARREGION),
    .m_axi_v2ta0_ARUSER(v2ta0_ARUSER),
    .m_axi_v2ta0_RVALID(v2ta0_RVALID),
    .m_axi_v2ta0_RREADY(v2ta0_RREADY),
    .m_axi_v2ta0_RDATA(v2ta0_RDATA),
    .m_axi_v2ta0_RLAST(v2ta0_RLAST),
    .m_axi_v2ta0_RID(v2ta0_RID),
    .m_axi_v2ta0_RUSER(v2ta0_RUSER),
    .m_axi_v2ta0_RRESP(v2ta0_RRESP),
    .m_axi_v2ta0_BVALID(v2ta0_BVALID),
    .m_axi_v2ta0_BREADY(v2ta0_BREADY),
    .m_axi_v2ta0_BRESP(v2ta0_BRESP),
    .m_axi_v2ta0_BID(v2ta0_BID),
    .m_axi_v2ta0_BUSER(v2ta0_BUSER),
    .m_axi_v2tw0_AWVALID(m_axi_v2tw0_AWVALID),
    .m_axi_v2tw0_AWREADY(m_axi_v2tw0_AWREADY),
    .m_axi_v2tw0_AWADDR(m_axi_v2tw0_AWADDR),
    .m_axi_v2tw0_AWID(m_axi_v2tw0_AWID),
    .m_axi_v2tw0_AWLEN(m_axi_v2tw0_AWLEN),
    .m_axi_v2tw0_AWSIZE(m_axi_v2tw0_AWSIZE),
    .m_axi_v2tw0_AWBURST(m_axi_v2tw0_AWBURST),
    .m_axi_v2tw0_AWLOCK(m_axi_v2tw0_AWLOCK),
    .m_axi_v2tw0_AWCACHE(m_axi_v2tw0_AWCACHE),
    .m_axi_v2tw0_AWPROT(m_axi_v2tw0_AWPROT),
    .m_axi_v2tw0_AWQOS(m_axi_v2tw0_AWQOS),
    .m_axi_v2tw0_AWREGION(m_axi_v2tw0_AWREGION),
    .m_axi_v2tw0_AWUSER(m_axi_v2tw0_AWUSER),
    .m_axi_v2tw0_WVALID(m_axi_v2tw0_WVALID),
    .m_axi_v2tw0_WREADY(m_axi_v2tw0_WREADY),
    .m_axi_v2tw0_WDATA(m_axi_v2tw0_WDATA),
    .m_axi_v2tw0_WSTRB(m_axi_v2tw0_WSTRB),
    .m_axi_v2tw0_WLAST(m_axi_v2tw0_WLAST),
    .m_axi_v2tw0_WID(m_axi_v2tw0_WID),
    .m_axi_v2tw0_WUSER(m_axi_v2tw0_WUSER),
    .m_axi_v2tw0_ARVALID(m_axi_v2tw0_ARVALID),
    .m_axi_v2tw0_ARREADY(m_axi_v2tw0_ARREADY),
    .m_axi_v2tw0_ARADDR(m_axi_v2tw0_ARADDR),
    .m_axi_v2tw0_ARID(m_axi_v2tw0_ARID),
    .m_axi_v2tw0_ARLEN(m_axi_v2tw0_ARLEN),
    .m_axi_v2tw0_ARSIZE(m_axi_v2tw0_ARSIZE),
    .m_axi_v2tw0_ARBURST(m_axi_v2tw0_ARBURST),
    .m_axi_v2tw0_ARLOCK(m_axi_v2tw0_ARLOCK),
    .m_axi_v2tw0_ARCACHE(m_axi_v2tw0_ARCACHE),
    .m_axi_v2tw0_ARPROT(m_axi_v2tw0_ARPROT),
    .m_axi_v2tw0_ARQOS(m_axi_v2tw0_ARQOS),
    .m_axi_v2tw0_ARREGION(m_axi_v2tw0_ARREGION),
    .m_axi_v2tw0_ARUSER(m_axi_v2tw0_ARUSER),
    .m_axi_v2tw0_RVALID(m_axi_v2tw0_RVALID),
    .m_axi_v2tw0_RREADY(m_axi_v2tw0_RREADY),
    .m_axi_v2tw0_RDATA(m_axi_v2tw0_RDATA),
    .m_axi_v2tw0_RLAST(m_axi_v2tw0_RLAST),
    .m_axi_v2tw0_RID(m_axi_v2tw0_RID),
    .m_axi_v2tw0_RUSER(m_axi_v2tw0_RUSER),
    .m_axi_v2tw0_RRESP(m_axi_v2tw0_RRESP),
    .m_axi_v2tw0_BVALID(m_axi_v2tw0_BVALID),
    .m_axi_v2tw0_BREADY(m_axi_v2tw0_BREADY),
    .m_axi_v2tw0_BRESP(m_axi_v2tw0_BRESP),
    .m_axi_v2tw0_BID(m_axi_v2tw0_BID),
    .m_axi_v2tw0_BUSER(m_axi_v2tw0_BUSER),
    .active_count(active_count),
    .n(n),
    .pivot_eps(pivot_eps),
    .status(status),
    .status_ap_vld(status_ap_vld),
    .muladds(muladds),
    .muladds_ap_vld(muladds_ap_vld),
    .divisions(divisions),
    .divisions_ap_vld(divisions_ap_vld));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst_n = dut_rst;
assign ap_rst_n_n = ~dut_rst;
assign AESL_reset = rst;
assign AESL_start = start;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
  assign AESL_slave_write_start_in = slave_start_status  & control_write_data_finish;
  assign AESL_slave_start = AESL_slave_write_start_finish;
  assign AESL_done = slave_done_status ;

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

























// The signal of port active_count
reg [31: 0] AESL_REG_active_count = 0;
assign active_count = AESL_REG_active_count;
initial begin : read_file_process_active_count
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [191  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_active_count,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_active_count);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_active_count);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end



// The signal of port n
reg [31: 0] AESL_REG_n = 0;
assign n = AESL_REG_n;
initial begin : read_file_process_n
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [191  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_n,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_n);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_n);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port pivot_eps
reg [31: 0] AESL_REG_pivot_eps = 0;
assign pivot_eps = AESL_REG_pivot_eps;
initial begin : read_file_process_pivot_eps
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [191  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVIN_pivot_eps,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_pivot_eps);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_pivot_eps);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


reg AESL_REG_status_ap_vld = 0;
// The signal of port status
reg [31: 0] AESL_REG_status = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
        AESL_REG_status = 0; 
    else if(status_ap_vld) begin
        AESL_REG_status <= status;
        AESL_REG_status_ap_vld <= 1;
    end
end 

initial begin : write_file_process_status
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer status_count;
    reg [191:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVOUT_status_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_status_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_status_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_status);
        AESL_REG_status_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_muladds_ap_vld = 0;
// The signal of port muladds
reg [63: 0] AESL_REG_muladds = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
        AESL_REG_muladds = 0; 
    else if(muladds_ap_vld) begin
        AESL_REG_muladds <= muladds;
        AESL_REG_muladds_ap_vld <= 1;
    end
end 

initial begin : write_file_process_muladds
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer muladds_count;
    reg [191:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVOUT_muladds_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_muladds_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_muladds_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_muladds);
        AESL_REG_muladds_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_divisions_ap_vld = 0;
// The signal of port divisions
reg [63: 0] AESL_REG_divisions = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset === 0)
        AESL_REG_divisions = 0; 
    else if(divisions_ap_vld) begin
        AESL_REG_divisions <= divisions;
        AESL_REG_divisions_ap_vld <= 1;
    end
end 

initial begin : write_file_process_divisions
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer divisions_count;
    reg [191:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 1);
    fp = $fopen(`AUTOTB_TVOUT_divisions_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_divisions_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_divisions_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_divisions);
        AESL_REG_divisions_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


wire    AESL_axi_master_v2tu0_ready;
wire    AESL_axi_master_v2tu0_done;
AESL_axi_master_v2tu0 AESL_AXI_MASTER_v2tu0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2tu0_AWVALID (v2tu0_AWVALID),
    .TRAN_v2tu0_AWREADY (v2tu0_AWREADY),
    .TRAN_v2tu0_AWADDR (v2tu0_AWADDR),
    .TRAN_v2tu0_AWID (v2tu0_AWID),
    .TRAN_v2tu0_AWLEN (v2tu0_AWLEN),
    .TRAN_v2tu0_AWSIZE (v2tu0_AWSIZE),
    .TRAN_v2tu0_AWBURST (v2tu0_AWBURST),
    .TRAN_v2tu0_AWLOCK (v2tu0_AWLOCK),
    .TRAN_v2tu0_AWCACHE (v2tu0_AWCACHE),
    .TRAN_v2tu0_AWPROT (v2tu0_AWPROT),
    .TRAN_v2tu0_AWQOS (v2tu0_AWQOS),
    .TRAN_v2tu0_AWREGION (v2tu0_AWREGION),
    .TRAN_v2tu0_AWUSER (v2tu0_AWUSER),
    .TRAN_v2tu0_WVALID (v2tu0_WVALID),
    .TRAN_v2tu0_WREADY (v2tu0_WREADY),
    .TRAN_v2tu0_WDATA (v2tu0_WDATA),
    .TRAN_v2tu0_WSTRB (v2tu0_WSTRB),
    .TRAN_v2tu0_WLAST (v2tu0_WLAST),
    .TRAN_v2tu0_WID (v2tu0_WID),
    .TRAN_v2tu0_WUSER (v2tu0_WUSER),
    .TRAN_v2tu0_ARVALID (v2tu0_ARVALID),
    .TRAN_v2tu0_ARREADY (v2tu0_ARREADY),
    .TRAN_v2tu0_ARADDR (v2tu0_ARADDR),
    .TRAN_v2tu0_ARID (v2tu0_ARID),
    .TRAN_v2tu0_ARLEN (v2tu0_ARLEN),
    .TRAN_v2tu0_ARSIZE (v2tu0_ARSIZE),
    .TRAN_v2tu0_ARBURST (v2tu0_ARBURST),
    .TRAN_v2tu0_ARLOCK (v2tu0_ARLOCK),
    .TRAN_v2tu0_ARCACHE (v2tu0_ARCACHE),
    .TRAN_v2tu0_ARPROT (v2tu0_ARPROT),
    .TRAN_v2tu0_ARQOS (v2tu0_ARQOS),
    .TRAN_v2tu0_ARREGION (v2tu0_ARREGION),
    .TRAN_v2tu0_ARUSER (v2tu0_ARUSER),
    .TRAN_v2tu0_RVALID (v2tu0_RVALID),
    .TRAN_v2tu0_RREADY (v2tu0_RREADY),
    .TRAN_v2tu0_RDATA (v2tu0_RDATA),
    .TRAN_v2tu0_RLAST (v2tu0_RLAST),
    .TRAN_v2tu0_RID (v2tu0_RID),
    .TRAN_v2tu0_RUSER (v2tu0_RUSER),
    .TRAN_v2tu0_RRESP (v2tu0_RRESP),
    .TRAN_v2tu0_BVALID (v2tu0_BVALID),
    .TRAN_v2tu0_BREADY (v2tu0_BREADY),
    .TRAN_v2tu0_BRESP (v2tu0_BRESP),
    .TRAN_v2tu0_BID (v2tu0_BID),
    .TRAN_v2tu0_BUSER (v2tu0_BUSER),
    .ready (AESL_axi_master_v2tu0_ready),
    .done  (AESL_axi_master_v2tu0_done)
);
assign    AESL_axi_master_v2tu0_ready    =   ready;
assign    AESL_axi_master_v2tu0_done    =   AESL_done_delay;
wire    AESL_axi_master_v2tu1_ready;
wire    AESL_axi_master_v2tu1_done;
AESL_axi_master_v2tu1 AESL_AXI_MASTER_v2tu1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2tu1_AWVALID (v2tu1_AWVALID),
    .TRAN_v2tu1_AWREADY (v2tu1_AWREADY),
    .TRAN_v2tu1_AWADDR (v2tu1_AWADDR),
    .TRAN_v2tu1_AWID (v2tu1_AWID),
    .TRAN_v2tu1_AWLEN (v2tu1_AWLEN),
    .TRAN_v2tu1_AWSIZE (v2tu1_AWSIZE),
    .TRAN_v2tu1_AWBURST (v2tu1_AWBURST),
    .TRAN_v2tu1_AWLOCK (v2tu1_AWLOCK),
    .TRAN_v2tu1_AWCACHE (v2tu1_AWCACHE),
    .TRAN_v2tu1_AWPROT (v2tu1_AWPROT),
    .TRAN_v2tu1_AWQOS (v2tu1_AWQOS),
    .TRAN_v2tu1_AWREGION (v2tu1_AWREGION),
    .TRAN_v2tu1_AWUSER (v2tu1_AWUSER),
    .TRAN_v2tu1_WVALID (v2tu1_WVALID),
    .TRAN_v2tu1_WREADY (v2tu1_WREADY),
    .TRAN_v2tu1_WDATA (v2tu1_WDATA),
    .TRAN_v2tu1_WSTRB (v2tu1_WSTRB),
    .TRAN_v2tu1_WLAST (v2tu1_WLAST),
    .TRAN_v2tu1_WID (v2tu1_WID),
    .TRAN_v2tu1_WUSER (v2tu1_WUSER),
    .TRAN_v2tu1_ARVALID (v2tu1_ARVALID),
    .TRAN_v2tu1_ARREADY (v2tu1_ARREADY),
    .TRAN_v2tu1_ARADDR (v2tu1_ARADDR),
    .TRAN_v2tu1_ARID (v2tu1_ARID),
    .TRAN_v2tu1_ARLEN (v2tu1_ARLEN),
    .TRAN_v2tu1_ARSIZE (v2tu1_ARSIZE),
    .TRAN_v2tu1_ARBURST (v2tu1_ARBURST),
    .TRAN_v2tu1_ARLOCK (v2tu1_ARLOCK),
    .TRAN_v2tu1_ARCACHE (v2tu1_ARCACHE),
    .TRAN_v2tu1_ARPROT (v2tu1_ARPROT),
    .TRAN_v2tu1_ARQOS (v2tu1_ARQOS),
    .TRAN_v2tu1_ARREGION (v2tu1_ARREGION),
    .TRAN_v2tu1_ARUSER (v2tu1_ARUSER),
    .TRAN_v2tu1_RVALID (v2tu1_RVALID),
    .TRAN_v2tu1_RREADY (v2tu1_RREADY),
    .TRAN_v2tu1_RDATA (v2tu1_RDATA),
    .TRAN_v2tu1_RLAST (v2tu1_RLAST),
    .TRAN_v2tu1_RID (v2tu1_RID),
    .TRAN_v2tu1_RUSER (v2tu1_RUSER),
    .TRAN_v2tu1_RRESP (v2tu1_RRESP),
    .TRAN_v2tu1_BVALID (v2tu1_BVALID),
    .TRAN_v2tu1_BREADY (v2tu1_BREADY),
    .TRAN_v2tu1_BRESP (v2tu1_BRESP),
    .TRAN_v2tu1_BID (v2tu1_BID),
    .TRAN_v2tu1_BUSER (v2tu1_BUSER),
    .ready (AESL_axi_master_v2tu1_ready),
    .done  (AESL_axi_master_v2tu1_done)
);
assign    AESL_axi_master_v2tu1_ready    =   ready;
assign    AESL_axi_master_v2tu1_done    =   AESL_done_delay;
wire    AESL_axi_master_v2tu2_ready;
wire    AESL_axi_master_v2tu2_done;
AESL_axi_master_v2tu2 AESL_AXI_MASTER_v2tu2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2tu2_AWVALID (v2tu2_AWVALID),
    .TRAN_v2tu2_AWREADY (v2tu2_AWREADY),
    .TRAN_v2tu2_AWADDR (v2tu2_AWADDR),
    .TRAN_v2tu2_AWID (v2tu2_AWID),
    .TRAN_v2tu2_AWLEN (v2tu2_AWLEN),
    .TRAN_v2tu2_AWSIZE (v2tu2_AWSIZE),
    .TRAN_v2tu2_AWBURST (v2tu2_AWBURST),
    .TRAN_v2tu2_AWLOCK (v2tu2_AWLOCK),
    .TRAN_v2tu2_AWCACHE (v2tu2_AWCACHE),
    .TRAN_v2tu2_AWPROT (v2tu2_AWPROT),
    .TRAN_v2tu2_AWQOS (v2tu2_AWQOS),
    .TRAN_v2tu2_AWREGION (v2tu2_AWREGION),
    .TRAN_v2tu2_AWUSER (v2tu2_AWUSER),
    .TRAN_v2tu2_WVALID (v2tu2_WVALID),
    .TRAN_v2tu2_WREADY (v2tu2_WREADY),
    .TRAN_v2tu2_WDATA (v2tu2_WDATA),
    .TRAN_v2tu2_WSTRB (v2tu2_WSTRB),
    .TRAN_v2tu2_WLAST (v2tu2_WLAST),
    .TRAN_v2tu2_WID (v2tu2_WID),
    .TRAN_v2tu2_WUSER (v2tu2_WUSER),
    .TRAN_v2tu2_ARVALID (v2tu2_ARVALID),
    .TRAN_v2tu2_ARREADY (v2tu2_ARREADY),
    .TRAN_v2tu2_ARADDR (v2tu2_ARADDR),
    .TRAN_v2tu2_ARID (v2tu2_ARID),
    .TRAN_v2tu2_ARLEN (v2tu2_ARLEN),
    .TRAN_v2tu2_ARSIZE (v2tu2_ARSIZE),
    .TRAN_v2tu2_ARBURST (v2tu2_ARBURST),
    .TRAN_v2tu2_ARLOCK (v2tu2_ARLOCK),
    .TRAN_v2tu2_ARCACHE (v2tu2_ARCACHE),
    .TRAN_v2tu2_ARPROT (v2tu2_ARPROT),
    .TRAN_v2tu2_ARQOS (v2tu2_ARQOS),
    .TRAN_v2tu2_ARREGION (v2tu2_ARREGION),
    .TRAN_v2tu2_ARUSER (v2tu2_ARUSER),
    .TRAN_v2tu2_RVALID (v2tu2_RVALID),
    .TRAN_v2tu2_RREADY (v2tu2_RREADY),
    .TRAN_v2tu2_RDATA (v2tu2_RDATA),
    .TRAN_v2tu2_RLAST (v2tu2_RLAST),
    .TRAN_v2tu2_RID (v2tu2_RID),
    .TRAN_v2tu2_RUSER (v2tu2_RUSER),
    .TRAN_v2tu2_RRESP (v2tu2_RRESP),
    .TRAN_v2tu2_BVALID (v2tu2_BVALID),
    .TRAN_v2tu2_BREADY (v2tu2_BREADY),
    .TRAN_v2tu2_BRESP (v2tu2_BRESP),
    .TRAN_v2tu2_BID (v2tu2_BID),
    .TRAN_v2tu2_BUSER (v2tu2_BUSER),
    .ready (AESL_axi_master_v2tu2_ready),
    .done  (AESL_axi_master_v2tu2_done)
);
assign    AESL_axi_master_v2tu2_ready    =   ready;
assign    AESL_axi_master_v2tu2_done    =   AESL_done_delay;
wire    AESL_axi_master_v2tu3_ready;
wire    AESL_axi_master_v2tu3_done;
AESL_axi_master_v2tu3 AESL_AXI_MASTER_v2tu3(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2tu3_AWVALID (v2tu3_AWVALID),
    .TRAN_v2tu3_AWREADY (v2tu3_AWREADY),
    .TRAN_v2tu3_AWADDR (v2tu3_AWADDR),
    .TRAN_v2tu3_AWID (v2tu3_AWID),
    .TRAN_v2tu3_AWLEN (v2tu3_AWLEN),
    .TRAN_v2tu3_AWSIZE (v2tu3_AWSIZE),
    .TRAN_v2tu3_AWBURST (v2tu3_AWBURST),
    .TRAN_v2tu3_AWLOCK (v2tu3_AWLOCK),
    .TRAN_v2tu3_AWCACHE (v2tu3_AWCACHE),
    .TRAN_v2tu3_AWPROT (v2tu3_AWPROT),
    .TRAN_v2tu3_AWQOS (v2tu3_AWQOS),
    .TRAN_v2tu3_AWREGION (v2tu3_AWREGION),
    .TRAN_v2tu3_AWUSER (v2tu3_AWUSER),
    .TRAN_v2tu3_WVALID (v2tu3_WVALID),
    .TRAN_v2tu3_WREADY (v2tu3_WREADY),
    .TRAN_v2tu3_WDATA (v2tu3_WDATA),
    .TRAN_v2tu3_WSTRB (v2tu3_WSTRB),
    .TRAN_v2tu3_WLAST (v2tu3_WLAST),
    .TRAN_v2tu3_WID (v2tu3_WID),
    .TRAN_v2tu3_WUSER (v2tu3_WUSER),
    .TRAN_v2tu3_ARVALID (v2tu3_ARVALID),
    .TRAN_v2tu3_ARREADY (v2tu3_ARREADY),
    .TRAN_v2tu3_ARADDR (v2tu3_ARADDR),
    .TRAN_v2tu3_ARID (v2tu3_ARID),
    .TRAN_v2tu3_ARLEN (v2tu3_ARLEN),
    .TRAN_v2tu3_ARSIZE (v2tu3_ARSIZE),
    .TRAN_v2tu3_ARBURST (v2tu3_ARBURST),
    .TRAN_v2tu3_ARLOCK (v2tu3_ARLOCK),
    .TRAN_v2tu3_ARCACHE (v2tu3_ARCACHE),
    .TRAN_v2tu3_ARPROT (v2tu3_ARPROT),
    .TRAN_v2tu3_ARQOS (v2tu3_ARQOS),
    .TRAN_v2tu3_ARREGION (v2tu3_ARREGION),
    .TRAN_v2tu3_ARUSER (v2tu3_ARUSER),
    .TRAN_v2tu3_RVALID (v2tu3_RVALID),
    .TRAN_v2tu3_RREADY (v2tu3_RREADY),
    .TRAN_v2tu3_RDATA (v2tu3_RDATA),
    .TRAN_v2tu3_RLAST (v2tu3_RLAST),
    .TRAN_v2tu3_RID (v2tu3_RID),
    .TRAN_v2tu3_RUSER (v2tu3_RUSER),
    .TRAN_v2tu3_RRESP (v2tu3_RRESP),
    .TRAN_v2tu3_BVALID (v2tu3_BVALID),
    .TRAN_v2tu3_BREADY (v2tu3_BREADY),
    .TRAN_v2tu3_BRESP (v2tu3_BRESP),
    .TRAN_v2tu3_BID (v2tu3_BID),
    .TRAN_v2tu3_BUSER (v2tu3_BUSER),
    .ready (AESL_axi_master_v2tu3_ready),
    .done  (AESL_axi_master_v2tu3_done)
);
assign    AESL_axi_master_v2tu3_ready    =   ready;
assign    AESL_axi_master_v2tu3_done    =   AESL_done_delay;
wire    AESL_axi_master_v2tu4_ready;
wire    AESL_axi_master_v2tu4_done;
AESL_axi_master_v2tu4 AESL_AXI_MASTER_v2tu4(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2tu4_AWVALID (v2tu4_AWVALID),
    .TRAN_v2tu4_AWREADY (v2tu4_AWREADY),
    .TRAN_v2tu4_AWADDR (v2tu4_AWADDR),
    .TRAN_v2tu4_AWID (v2tu4_AWID),
    .TRAN_v2tu4_AWLEN (v2tu4_AWLEN),
    .TRAN_v2tu4_AWSIZE (v2tu4_AWSIZE),
    .TRAN_v2tu4_AWBURST (v2tu4_AWBURST),
    .TRAN_v2tu4_AWLOCK (v2tu4_AWLOCK),
    .TRAN_v2tu4_AWCACHE (v2tu4_AWCACHE),
    .TRAN_v2tu4_AWPROT (v2tu4_AWPROT),
    .TRAN_v2tu4_AWQOS (v2tu4_AWQOS),
    .TRAN_v2tu4_AWREGION (v2tu4_AWREGION),
    .TRAN_v2tu4_AWUSER (v2tu4_AWUSER),
    .TRAN_v2tu4_WVALID (v2tu4_WVALID),
    .TRAN_v2tu4_WREADY (v2tu4_WREADY),
    .TRAN_v2tu4_WDATA (v2tu4_WDATA),
    .TRAN_v2tu4_WSTRB (v2tu4_WSTRB),
    .TRAN_v2tu4_WLAST (v2tu4_WLAST),
    .TRAN_v2tu4_WID (v2tu4_WID),
    .TRAN_v2tu4_WUSER (v2tu4_WUSER),
    .TRAN_v2tu4_ARVALID (v2tu4_ARVALID),
    .TRAN_v2tu4_ARREADY (v2tu4_ARREADY),
    .TRAN_v2tu4_ARADDR (v2tu4_ARADDR),
    .TRAN_v2tu4_ARID (v2tu4_ARID),
    .TRAN_v2tu4_ARLEN (v2tu4_ARLEN),
    .TRAN_v2tu4_ARSIZE (v2tu4_ARSIZE),
    .TRAN_v2tu4_ARBURST (v2tu4_ARBURST),
    .TRAN_v2tu4_ARLOCK (v2tu4_ARLOCK),
    .TRAN_v2tu4_ARCACHE (v2tu4_ARCACHE),
    .TRAN_v2tu4_ARPROT (v2tu4_ARPROT),
    .TRAN_v2tu4_ARQOS (v2tu4_ARQOS),
    .TRAN_v2tu4_ARREGION (v2tu4_ARREGION),
    .TRAN_v2tu4_ARUSER (v2tu4_ARUSER),
    .TRAN_v2tu4_RVALID (v2tu4_RVALID),
    .TRAN_v2tu4_RREADY (v2tu4_RREADY),
    .TRAN_v2tu4_RDATA (v2tu4_RDATA),
    .TRAN_v2tu4_RLAST (v2tu4_RLAST),
    .TRAN_v2tu4_RID (v2tu4_RID),
    .TRAN_v2tu4_RUSER (v2tu4_RUSER),
    .TRAN_v2tu4_RRESP (v2tu4_RRESP),
    .TRAN_v2tu4_BVALID (v2tu4_BVALID),
    .TRAN_v2tu4_BREADY (v2tu4_BREADY),
    .TRAN_v2tu4_BRESP (v2tu4_BRESP),
    .TRAN_v2tu4_BID (v2tu4_BID),
    .TRAN_v2tu4_BUSER (v2tu4_BUSER),
    .ready (AESL_axi_master_v2tu4_ready),
    .done  (AESL_axi_master_v2tu4_done)
);
assign    AESL_axi_master_v2tu4_ready    =   ready;
assign    AESL_axi_master_v2tu4_done    =   AESL_done_delay;
wire    AESL_axi_master_v2tb0_ready;
wire    AESL_axi_master_v2tb0_done;
AESL_axi_master_v2tb0 AESL_AXI_MASTER_v2tb0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2tb0_AWVALID (v2tb0_AWVALID),
    .TRAN_v2tb0_AWREADY (v2tb0_AWREADY),
    .TRAN_v2tb0_AWADDR (v2tb0_AWADDR),
    .TRAN_v2tb0_AWID (v2tb0_AWID),
    .TRAN_v2tb0_AWLEN (v2tb0_AWLEN),
    .TRAN_v2tb0_AWSIZE (v2tb0_AWSIZE),
    .TRAN_v2tb0_AWBURST (v2tb0_AWBURST),
    .TRAN_v2tb0_AWLOCK (v2tb0_AWLOCK),
    .TRAN_v2tb0_AWCACHE (v2tb0_AWCACHE),
    .TRAN_v2tb0_AWPROT (v2tb0_AWPROT),
    .TRAN_v2tb0_AWQOS (v2tb0_AWQOS),
    .TRAN_v2tb0_AWREGION (v2tb0_AWREGION),
    .TRAN_v2tb0_AWUSER (v2tb0_AWUSER),
    .TRAN_v2tb0_WVALID (v2tb0_WVALID),
    .TRAN_v2tb0_WREADY (v2tb0_WREADY),
    .TRAN_v2tb0_WDATA (v2tb0_WDATA),
    .TRAN_v2tb0_WSTRB (v2tb0_WSTRB),
    .TRAN_v2tb0_WLAST (v2tb0_WLAST),
    .TRAN_v2tb0_WID (v2tb0_WID),
    .TRAN_v2tb0_WUSER (v2tb0_WUSER),
    .TRAN_v2tb0_ARVALID (v2tb0_ARVALID),
    .TRAN_v2tb0_ARREADY (v2tb0_ARREADY),
    .TRAN_v2tb0_ARADDR (v2tb0_ARADDR),
    .TRAN_v2tb0_ARID (v2tb0_ARID),
    .TRAN_v2tb0_ARLEN (v2tb0_ARLEN),
    .TRAN_v2tb0_ARSIZE (v2tb0_ARSIZE),
    .TRAN_v2tb0_ARBURST (v2tb0_ARBURST),
    .TRAN_v2tb0_ARLOCK (v2tb0_ARLOCK),
    .TRAN_v2tb0_ARCACHE (v2tb0_ARCACHE),
    .TRAN_v2tb0_ARPROT (v2tb0_ARPROT),
    .TRAN_v2tb0_ARQOS (v2tb0_ARQOS),
    .TRAN_v2tb0_ARREGION (v2tb0_ARREGION),
    .TRAN_v2tb0_ARUSER (v2tb0_ARUSER),
    .TRAN_v2tb0_RVALID (v2tb0_RVALID),
    .TRAN_v2tb0_RREADY (v2tb0_RREADY),
    .TRAN_v2tb0_RDATA (v2tb0_RDATA),
    .TRAN_v2tb0_RLAST (v2tb0_RLAST),
    .TRAN_v2tb0_RID (v2tb0_RID),
    .TRAN_v2tb0_RUSER (v2tb0_RUSER),
    .TRAN_v2tb0_RRESP (v2tb0_RRESP),
    .TRAN_v2tb0_BVALID (v2tb0_BVALID),
    .TRAN_v2tb0_BREADY (v2tb0_BREADY),
    .TRAN_v2tb0_BRESP (v2tb0_BRESP),
    .TRAN_v2tb0_BID (v2tb0_BID),
    .TRAN_v2tb0_BUSER (v2tb0_BUSER),
    .ready (AESL_axi_master_v2tb0_ready),
    .done  (AESL_axi_master_v2tb0_done)
);
assign    AESL_axi_master_v2tb0_ready    =   ready;
assign    AESL_axi_master_v2tb0_done    =   AESL_done_delay;
wire    AESL_axi_master_v2tb1_ready;
wire    AESL_axi_master_v2tb1_done;
AESL_axi_master_v2tb1 AESL_AXI_MASTER_v2tb1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2tb1_AWVALID (v2tb1_AWVALID),
    .TRAN_v2tb1_AWREADY (v2tb1_AWREADY),
    .TRAN_v2tb1_AWADDR (v2tb1_AWADDR),
    .TRAN_v2tb1_AWID (v2tb1_AWID),
    .TRAN_v2tb1_AWLEN (v2tb1_AWLEN),
    .TRAN_v2tb1_AWSIZE (v2tb1_AWSIZE),
    .TRAN_v2tb1_AWBURST (v2tb1_AWBURST),
    .TRAN_v2tb1_AWLOCK (v2tb1_AWLOCK),
    .TRAN_v2tb1_AWCACHE (v2tb1_AWCACHE),
    .TRAN_v2tb1_AWPROT (v2tb1_AWPROT),
    .TRAN_v2tb1_AWQOS (v2tb1_AWQOS),
    .TRAN_v2tb1_AWREGION (v2tb1_AWREGION),
    .TRAN_v2tb1_AWUSER (v2tb1_AWUSER),
    .TRAN_v2tb1_WVALID (v2tb1_WVALID),
    .TRAN_v2tb1_WREADY (v2tb1_WREADY),
    .TRAN_v2tb1_WDATA (v2tb1_WDATA),
    .TRAN_v2tb1_WSTRB (v2tb1_WSTRB),
    .TRAN_v2tb1_WLAST (v2tb1_WLAST),
    .TRAN_v2tb1_WID (v2tb1_WID),
    .TRAN_v2tb1_WUSER (v2tb1_WUSER),
    .TRAN_v2tb1_ARVALID (v2tb1_ARVALID),
    .TRAN_v2tb1_ARREADY (v2tb1_ARREADY),
    .TRAN_v2tb1_ARADDR (v2tb1_ARADDR),
    .TRAN_v2tb1_ARID (v2tb1_ARID),
    .TRAN_v2tb1_ARLEN (v2tb1_ARLEN),
    .TRAN_v2tb1_ARSIZE (v2tb1_ARSIZE),
    .TRAN_v2tb1_ARBURST (v2tb1_ARBURST),
    .TRAN_v2tb1_ARLOCK (v2tb1_ARLOCK),
    .TRAN_v2tb1_ARCACHE (v2tb1_ARCACHE),
    .TRAN_v2tb1_ARPROT (v2tb1_ARPROT),
    .TRAN_v2tb1_ARQOS (v2tb1_ARQOS),
    .TRAN_v2tb1_ARREGION (v2tb1_ARREGION),
    .TRAN_v2tb1_ARUSER (v2tb1_ARUSER),
    .TRAN_v2tb1_RVALID (v2tb1_RVALID),
    .TRAN_v2tb1_RREADY (v2tb1_RREADY),
    .TRAN_v2tb1_RDATA (v2tb1_RDATA),
    .TRAN_v2tb1_RLAST (v2tb1_RLAST),
    .TRAN_v2tb1_RID (v2tb1_RID),
    .TRAN_v2tb1_RUSER (v2tb1_RUSER),
    .TRAN_v2tb1_RRESP (v2tb1_RRESP),
    .TRAN_v2tb1_BVALID (v2tb1_BVALID),
    .TRAN_v2tb1_BREADY (v2tb1_BREADY),
    .TRAN_v2tb1_BRESP (v2tb1_BRESP),
    .TRAN_v2tb1_BID (v2tb1_BID),
    .TRAN_v2tb1_BUSER (v2tb1_BUSER),
    .ready (AESL_axi_master_v2tb1_ready),
    .done  (AESL_axi_master_v2tb1_done)
);
assign    AESL_axi_master_v2tb1_ready    =   ready;
assign    AESL_axi_master_v2tb1_done    =   AESL_done_delay;
wire    AESL_axi_master_v2tb2_ready;
wire    AESL_axi_master_v2tb2_done;
AESL_axi_master_v2tb2 AESL_AXI_MASTER_v2tb2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2tb2_AWVALID (v2tb2_AWVALID),
    .TRAN_v2tb2_AWREADY (v2tb2_AWREADY),
    .TRAN_v2tb2_AWADDR (v2tb2_AWADDR),
    .TRAN_v2tb2_AWID (v2tb2_AWID),
    .TRAN_v2tb2_AWLEN (v2tb2_AWLEN),
    .TRAN_v2tb2_AWSIZE (v2tb2_AWSIZE),
    .TRAN_v2tb2_AWBURST (v2tb2_AWBURST),
    .TRAN_v2tb2_AWLOCK (v2tb2_AWLOCK),
    .TRAN_v2tb2_AWCACHE (v2tb2_AWCACHE),
    .TRAN_v2tb2_AWPROT (v2tb2_AWPROT),
    .TRAN_v2tb2_AWQOS (v2tb2_AWQOS),
    .TRAN_v2tb2_AWREGION (v2tb2_AWREGION),
    .TRAN_v2tb2_AWUSER (v2tb2_AWUSER),
    .TRAN_v2tb2_WVALID (v2tb2_WVALID),
    .TRAN_v2tb2_WREADY (v2tb2_WREADY),
    .TRAN_v2tb2_WDATA (v2tb2_WDATA),
    .TRAN_v2tb2_WSTRB (v2tb2_WSTRB),
    .TRAN_v2tb2_WLAST (v2tb2_WLAST),
    .TRAN_v2tb2_WID (v2tb2_WID),
    .TRAN_v2tb2_WUSER (v2tb2_WUSER),
    .TRAN_v2tb2_ARVALID (v2tb2_ARVALID),
    .TRAN_v2tb2_ARREADY (v2tb2_ARREADY),
    .TRAN_v2tb2_ARADDR (v2tb2_ARADDR),
    .TRAN_v2tb2_ARID (v2tb2_ARID),
    .TRAN_v2tb2_ARLEN (v2tb2_ARLEN),
    .TRAN_v2tb2_ARSIZE (v2tb2_ARSIZE),
    .TRAN_v2tb2_ARBURST (v2tb2_ARBURST),
    .TRAN_v2tb2_ARLOCK (v2tb2_ARLOCK),
    .TRAN_v2tb2_ARCACHE (v2tb2_ARCACHE),
    .TRAN_v2tb2_ARPROT (v2tb2_ARPROT),
    .TRAN_v2tb2_ARQOS (v2tb2_ARQOS),
    .TRAN_v2tb2_ARREGION (v2tb2_ARREGION),
    .TRAN_v2tb2_ARUSER (v2tb2_ARUSER),
    .TRAN_v2tb2_RVALID (v2tb2_RVALID),
    .TRAN_v2tb2_RREADY (v2tb2_RREADY),
    .TRAN_v2tb2_RDATA (v2tb2_RDATA),
    .TRAN_v2tb2_RLAST (v2tb2_RLAST),
    .TRAN_v2tb2_RID (v2tb2_RID),
    .TRAN_v2tb2_RUSER (v2tb2_RUSER),
    .TRAN_v2tb2_RRESP (v2tb2_RRESP),
    .TRAN_v2tb2_BVALID (v2tb2_BVALID),
    .TRAN_v2tb2_BREADY (v2tb2_BREADY),
    .TRAN_v2tb2_BRESP (v2tb2_BRESP),
    .TRAN_v2tb2_BID (v2tb2_BID),
    .TRAN_v2tb2_BUSER (v2tb2_BUSER),
    .ready (AESL_axi_master_v2tb2_ready),
    .done  (AESL_axi_master_v2tb2_done)
);
assign    AESL_axi_master_v2tb2_ready    =   ready;
assign    AESL_axi_master_v2tb2_done    =   AESL_done_delay;
wire    AESL_axi_master_v2tx0_ready;
wire    AESL_axi_master_v2tx0_done;
AESL_axi_master_v2tx0 AESL_AXI_MASTER_v2tx0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2tx0_AWVALID (v2tx0_AWVALID),
    .TRAN_v2tx0_AWREADY (v2tx0_AWREADY),
    .TRAN_v2tx0_AWADDR (v2tx0_AWADDR),
    .TRAN_v2tx0_AWID (v2tx0_AWID),
    .TRAN_v2tx0_AWLEN (v2tx0_AWLEN),
    .TRAN_v2tx0_AWSIZE (v2tx0_AWSIZE),
    .TRAN_v2tx0_AWBURST (v2tx0_AWBURST),
    .TRAN_v2tx0_AWLOCK (v2tx0_AWLOCK),
    .TRAN_v2tx0_AWCACHE (v2tx0_AWCACHE),
    .TRAN_v2tx0_AWPROT (v2tx0_AWPROT),
    .TRAN_v2tx0_AWQOS (v2tx0_AWQOS),
    .TRAN_v2tx0_AWREGION (v2tx0_AWREGION),
    .TRAN_v2tx0_AWUSER (v2tx0_AWUSER),
    .TRAN_v2tx0_WVALID (v2tx0_WVALID),
    .TRAN_v2tx0_WREADY (v2tx0_WREADY),
    .TRAN_v2tx0_WDATA (v2tx0_WDATA),
    .TRAN_v2tx0_WSTRB (v2tx0_WSTRB),
    .TRAN_v2tx0_WLAST (v2tx0_WLAST),
    .TRAN_v2tx0_WID (v2tx0_WID),
    .TRAN_v2tx0_WUSER (v2tx0_WUSER),
    .TRAN_v2tx0_ARVALID (v2tx0_ARVALID),
    .TRAN_v2tx0_ARREADY (v2tx0_ARREADY),
    .TRAN_v2tx0_ARADDR (v2tx0_ARADDR),
    .TRAN_v2tx0_ARID (v2tx0_ARID),
    .TRAN_v2tx0_ARLEN (v2tx0_ARLEN),
    .TRAN_v2tx0_ARSIZE (v2tx0_ARSIZE),
    .TRAN_v2tx0_ARBURST (v2tx0_ARBURST),
    .TRAN_v2tx0_ARLOCK (v2tx0_ARLOCK),
    .TRAN_v2tx0_ARCACHE (v2tx0_ARCACHE),
    .TRAN_v2tx0_ARPROT (v2tx0_ARPROT),
    .TRAN_v2tx0_ARQOS (v2tx0_ARQOS),
    .TRAN_v2tx0_ARREGION (v2tx0_ARREGION),
    .TRAN_v2tx0_ARUSER (v2tx0_ARUSER),
    .TRAN_v2tx0_RVALID (v2tx0_RVALID),
    .TRAN_v2tx0_RREADY (v2tx0_RREADY),
    .TRAN_v2tx0_RDATA (v2tx0_RDATA),
    .TRAN_v2tx0_RLAST (v2tx0_RLAST),
    .TRAN_v2tx0_RID (v2tx0_RID),
    .TRAN_v2tx0_RUSER (v2tx0_RUSER),
    .TRAN_v2tx0_RRESP (v2tx0_RRESP),
    .TRAN_v2tx0_BVALID (v2tx0_BVALID),
    .TRAN_v2tx0_BREADY (v2tx0_BREADY),
    .TRAN_v2tx0_BRESP (v2tx0_BRESP),
    .TRAN_v2tx0_BID (v2tx0_BID),
    .TRAN_v2tx0_BUSER (v2tx0_BUSER),
    .ready (AESL_axi_master_v2tx0_ready),
    .done  (AESL_axi_master_v2tx0_done)
);
assign    AESL_axi_master_v2tx0_ready    =   ready;
assign    AESL_axi_master_v2tx0_done    =   AESL_done_delay;
wire    AESL_axi_master_v2tx1_ready;
wire    AESL_axi_master_v2tx1_done;
AESL_axi_master_v2tx1 AESL_AXI_MASTER_v2tx1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2tx1_AWVALID (v2tx1_AWVALID),
    .TRAN_v2tx1_AWREADY (v2tx1_AWREADY),
    .TRAN_v2tx1_AWADDR (v2tx1_AWADDR),
    .TRAN_v2tx1_AWID (v2tx1_AWID),
    .TRAN_v2tx1_AWLEN (v2tx1_AWLEN),
    .TRAN_v2tx1_AWSIZE (v2tx1_AWSIZE),
    .TRAN_v2tx1_AWBURST (v2tx1_AWBURST),
    .TRAN_v2tx1_AWLOCK (v2tx1_AWLOCK),
    .TRAN_v2tx1_AWCACHE (v2tx1_AWCACHE),
    .TRAN_v2tx1_AWPROT (v2tx1_AWPROT),
    .TRAN_v2tx1_AWQOS (v2tx1_AWQOS),
    .TRAN_v2tx1_AWREGION (v2tx1_AWREGION),
    .TRAN_v2tx1_AWUSER (v2tx1_AWUSER),
    .TRAN_v2tx1_WVALID (v2tx1_WVALID),
    .TRAN_v2tx1_WREADY (v2tx1_WREADY),
    .TRAN_v2tx1_WDATA (v2tx1_WDATA),
    .TRAN_v2tx1_WSTRB (v2tx1_WSTRB),
    .TRAN_v2tx1_WLAST (v2tx1_WLAST),
    .TRAN_v2tx1_WID (v2tx1_WID),
    .TRAN_v2tx1_WUSER (v2tx1_WUSER),
    .TRAN_v2tx1_ARVALID (v2tx1_ARVALID),
    .TRAN_v2tx1_ARREADY (v2tx1_ARREADY),
    .TRAN_v2tx1_ARADDR (v2tx1_ARADDR),
    .TRAN_v2tx1_ARID (v2tx1_ARID),
    .TRAN_v2tx1_ARLEN (v2tx1_ARLEN),
    .TRAN_v2tx1_ARSIZE (v2tx1_ARSIZE),
    .TRAN_v2tx1_ARBURST (v2tx1_ARBURST),
    .TRAN_v2tx1_ARLOCK (v2tx1_ARLOCK),
    .TRAN_v2tx1_ARCACHE (v2tx1_ARCACHE),
    .TRAN_v2tx1_ARPROT (v2tx1_ARPROT),
    .TRAN_v2tx1_ARQOS (v2tx1_ARQOS),
    .TRAN_v2tx1_ARREGION (v2tx1_ARREGION),
    .TRAN_v2tx1_ARUSER (v2tx1_ARUSER),
    .TRAN_v2tx1_RVALID (v2tx1_RVALID),
    .TRAN_v2tx1_RREADY (v2tx1_RREADY),
    .TRAN_v2tx1_RDATA (v2tx1_RDATA),
    .TRAN_v2tx1_RLAST (v2tx1_RLAST),
    .TRAN_v2tx1_RID (v2tx1_RID),
    .TRAN_v2tx1_RUSER (v2tx1_RUSER),
    .TRAN_v2tx1_RRESP (v2tx1_RRESP),
    .TRAN_v2tx1_BVALID (v2tx1_BVALID),
    .TRAN_v2tx1_BREADY (v2tx1_BREADY),
    .TRAN_v2tx1_BRESP (v2tx1_BRESP),
    .TRAN_v2tx1_BID (v2tx1_BID),
    .TRAN_v2tx1_BUSER (v2tx1_BUSER),
    .ready (AESL_axi_master_v2tx1_ready),
    .done  (AESL_axi_master_v2tx1_done)
);
assign    AESL_axi_master_v2tx1_ready    =   ready;
assign    AESL_axi_master_v2tx1_done    =   AESL_done_delay;
wire    AESL_axi_master_v2tx2_ready;
wire    AESL_axi_master_v2tx2_done;
AESL_axi_master_v2tx2 AESL_AXI_MASTER_v2tx2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2tx2_AWVALID (v2tx2_AWVALID),
    .TRAN_v2tx2_AWREADY (v2tx2_AWREADY),
    .TRAN_v2tx2_AWADDR (v2tx2_AWADDR),
    .TRAN_v2tx2_AWID (v2tx2_AWID),
    .TRAN_v2tx2_AWLEN (v2tx2_AWLEN),
    .TRAN_v2tx2_AWSIZE (v2tx2_AWSIZE),
    .TRAN_v2tx2_AWBURST (v2tx2_AWBURST),
    .TRAN_v2tx2_AWLOCK (v2tx2_AWLOCK),
    .TRAN_v2tx2_AWCACHE (v2tx2_AWCACHE),
    .TRAN_v2tx2_AWPROT (v2tx2_AWPROT),
    .TRAN_v2tx2_AWQOS (v2tx2_AWQOS),
    .TRAN_v2tx2_AWREGION (v2tx2_AWREGION),
    .TRAN_v2tx2_AWUSER (v2tx2_AWUSER),
    .TRAN_v2tx2_WVALID (v2tx2_WVALID),
    .TRAN_v2tx2_WREADY (v2tx2_WREADY),
    .TRAN_v2tx2_WDATA (v2tx2_WDATA),
    .TRAN_v2tx2_WSTRB (v2tx2_WSTRB),
    .TRAN_v2tx2_WLAST (v2tx2_WLAST),
    .TRAN_v2tx2_WID (v2tx2_WID),
    .TRAN_v2tx2_WUSER (v2tx2_WUSER),
    .TRAN_v2tx2_ARVALID (v2tx2_ARVALID),
    .TRAN_v2tx2_ARREADY (v2tx2_ARREADY),
    .TRAN_v2tx2_ARADDR (v2tx2_ARADDR),
    .TRAN_v2tx2_ARID (v2tx2_ARID),
    .TRAN_v2tx2_ARLEN (v2tx2_ARLEN),
    .TRAN_v2tx2_ARSIZE (v2tx2_ARSIZE),
    .TRAN_v2tx2_ARBURST (v2tx2_ARBURST),
    .TRAN_v2tx2_ARLOCK (v2tx2_ARLOCK),
    .TRAN_v2tx2_ARCACHE (v2tx2_ARCACHE),
    .TRAN_v2tx2_ARPROT (v2tx2_ARPROT),
    .TRAN_v2tx2_ARQOS (v2tx2_ARQOS),
    .TRAN_v2tx2_ARREGION (v2tx2_ARREGION),
    .TRAN_v2tx2_ARUSER (v2tx2_ARUSER),
    .TRAN_v2tx2_RVALID (v2tx2_RVALID),
    .TRAN_v2tx2_RREADY (v2tx2_RREADY),
    .TRAN_v2tx2_RDATA (v2tx2_RDATA),
    .TRAN_v2tx2_RLAST (v2tx2_RLAST),
    .TRAN_v2tx2_RID (v2tx2_RID),
    .TRAN_v2tx2_RUSER (v2tx2_RUSER),
    .TRAN_v2tx2_RRESP (v2tx2_RRESP),
    .TRAN_v2tx2_BVALID (v2tx2_BVALID),
    .TRAN_v2tx2_BREADY (v2tx2_BREADY),
    .TRAN_v2tx2_BRESP (v2tx2_BRESP),
    .TRAN_v2tx2_BID (v2tx2_BID),
    .TRAN_v2tx2_BUSER (v2tx2_BUSER),
    .ready (AESL_axi_master_v2tx2_ready),
    .done  (AESL_axi_master_v2tx2_done)
);
assign    AESL_axi_master_v2tx2_ready    =   ready;
assign    AESL_axi_master_v2tx2_done    =   AESL_done_delay;
wire    AESL_axi_master_v2ta0_ready;
wire    AESL_axi_master_v2ta0_done;
AESL_axi_master_v2ta0 AESL_AXI_MASTER_v2ta0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2ta0_AWVALID (v2ta0_AWVALID),
    .TRAN_v2ta0_AWREADY (v2ta0_AWREADY),
    .TRAN_v2ta0_AWADDR (v2ta0_AWADDR),
    .TRAN_v2ta0_AWID (v2ta0_AWID),
    .TRAN_v2ta0_AWLEN (v2ta0_AWLEN),
    .TRAN_v2ta0_AWSIZE (v2ta0_AWSIZE),
    .TRAN_v2ta0_AWBURST (v2ta0_AWBURST),
    .TRAN_v2ta0_AWLOCK (v2ta0_AWLOCK),
    .TRAN_v2ta0_AWCACHE (v2ta0_AWCACHE),
    .TRAN_v2ta0_AWPROT (v2ta0_AWPROT),
    .TRAN_v2ta0_AWQOS (v2ta0_AWQOS),
    .TRAN_v2ta0_AWREGION (v2ta0_AWREGION),
    .TRAN_v2ta0_AWUSER (v2ta0_AWUSER),
    .TRAN_v2ta0_WVALID (v2ta0_WVALID),
    .TRAN_v2ta0_WREADY (v2ta0_WREADY),
    .TRAN_v2ta0_WDATA (v2ta0_WDATA),
    .TRAN_v2ta0_WSTRB (v2ta0_WSTRB),
    .TRAN_v2ta0_WLAST (v2ta0_WLAST),
    .TRAN_v2ta0_WID (v2ta0_WID),
    .TRAN_v2ta0_WUSER (v2ta0_WUSER),
    .TRAN_v2ta0_ARVALID (v2ta0_ARVALID),
    .TRAN_v2ta0_ARREADY (v2ta0_ARREADY),
    .TRAN_v2ta0_ARADDR (v2ta0_ARADDR),
    .TRAN_v2ta0_ARID (v2ta0_ARID),
    .TRAN_v2ta0_ARLEN (v2ta0_ARLEN),
    .TRAN_v2ta0_ARSIZE (v2ta0_ARSIZE),
    .TRAN_v2ta0_ARBURST (v2ta0_ARBURST),
    .TRAN_v2ta0_ARLOCK (v2ta0_ARLOCK),
    .TRAN_v2ta0_ARCACHE (v2ta0_ARCACHE),
    .TRAN_v2ta0_ARPROT (v2ta0_ARPROT),
    .TRAN_v2ta0_ARQOS (v2ta0_ARQOS),
    .TRAN_v2ta0_ARREGION (v2ta0_ARREGION),
    .TRAN_v2ta0_ARUSER (v2ta0_ARUSER),
    .TRAN_v2ta0_RVALID (v2ta0_RVALID),
    .TRAN_v2ta0_RREADY (v2ta0_RREADY),
    .TRAN_v2ta0_RDATA (v2ta0_RDATA),
    .TRAN_v2ta0_RLAST (v2ta0_RLAST),
    .TRAN_v2ta0_RID (v2ta0_RID),
    .TRAN_v2ta0_RUSER (v2ta0_RUSER),
    .TRAN_v2ta0_RRESP (v2ta0_RRESP),
    .TRAN_v2ta0_BVALID (v2ta0_BVALID),
    .TRAN_v2ta0_BREADY (v2ta0_BREADY),
    .TRAN_v2ta0_BRESP (v2ta0_BRESP),
    .TRAN_v2ta0_BID (v2ta0_BID),
    .TRAN_v2ta0_BUSER (v2ta0_BUSER),
    .ready (AESL_axi_master_v2ta0_ready),
    .done  (AESL_axi_master_v2ta0_done)
);
assign    AESL_axi_master_v2ta0_ready    =   ready;
assign    AESL_axi_master_v2ta0_done    =   AESL_done_delay;

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
    .TRAN_control_interrupt (control_INTERRUPT),
    .TRAN_control_write_data_finish(control_write_data_finish),
    .TRAN_control_ready_out (AESL_ready),
    .TRAN_control_ready_in (AESL_slave_ready),
    .TRAN_control_done_out (AESL_slave_output_done),
    .TRAN_control_idle_out (AESL_idle),
    .TRAN_control_write_start_in     (AESL_slave_write_start_in),
    .TRAN_control_write_start_finish (AESL_slave_write_start_finish),
    .TRAN_control_transaction_done_in (AESL_done_delay),
    .TRAN_control_start_in  (AESL_slave_start)
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


reg end_v2tu0;
reg [31:0] size_v2tu0;
reg [31:0] size_v2tu0_backup;
reg end_v2tu1;
reg [31:0] size_v2tu1;
reg [31:0] size_v2tu1_backup;
reg end_v2tu2;
reg [31:0] size_v2tu2;
reg [31:0] size_v2tu2_backup;
reg end_v2tu3;
reg [31:0] size_v2tu3;
reg [31:0] size_v2tu3_backup;
reg end_v2tu4;
reg [31:0] size_v2tu4;
reg [31:0] size_v2tu4_backup;
reg end_v2tb0;
reg [31:0] size_v2tb0;
reg [31:0] size_v2tb0_backup;
reg end_v2tb1;
reg [31:0] size_v2tb1;
reg [31:0] size_v2tb1_backup;
reg end_v2tb2;
reg [31:0] size_v2tb2;
reg [31:0] size_v2tb2_backup;
reg end_v2tx0;
reg [31:0] size_v2tx0;
reg [31:0] size_v2tx0_backup;
reg end_v2tx1;
reg [31:0] size_v2tx1;
reg [31:0] size_v2tx1_backup;
reg end_v2ta0;
reg [31:0] size_v2ta0;
reg [31:0] size_v2ta0_backup;
reg end_u_col_ptr;
reg [31:0] size_u_col_ptr;
reg [31:0] size_u_col_ptr_backup;
reg end_u_row_idx;
reg [31:0] size_u_row_idx;
reg [31:0] size_u_row_idx_backup;
reg end_u_csr_val;
reg [31:0] size_u_csr_val;
reg [31:0] size_u_csr_val_backup;
reg end_u_csc_to_csr;
reg [31:0] size_u_csc_to_csr;
reg [31:0] size_u_csc_to_csr_backup;
reg end_u_diag_pos;
reg [31:0] size_u_diag_pos;
reg [31:0] size_u_diag_pos_backup;
reg end_b_ptr;
reg [31:0] size_b_ptr;
reg [31:0] size_b_ptr_backup;
reg end_b_idx;
reg [31:0] size_b_idx;
reg [31:0] size_b_idx_backup;
reg end_b_val;
reg [31:0] size_b_val;
reg [31:0] size_b_val_backup;
reg end_x_ptr;
reg [31:0] size_x_ptr;
reg [31:0] size_x_ptr_backup;
reg end_x_idx;
reg [31:0] size_x_idx;
reg [31:0] size_x_idx_backup;
reg end_x_val;
reg [31:0] size_x_val;
reg [31:0] size_x_val_backup;
reg end_active_rows;
reg [31:0] size_active_rows;
reg [31:0] size_active_rows_backup;
reg end_active_count;
reg [31:0] size_active_count;
reg [31:0] size_active_count_backup;
reg end_n;
reg [31:0] size_n;
reg [31:0] size_n_backup;
reg end_pivot_eps;
reg [31:0] size_pivot_eps;
reg [31:0] size_pivot_eps_backup;
reg end_v2tx2;
reg [31:0] size_v2tx2;
reg [31:0] size_v2tx2_backup;
reg end_status;
reg [31:0] size_status;
reg [31:0] size_status_backup;
reg end_muladds;
reg [31:0] size_muladds;
reg [31:0] size_muladds_backup;
reg end_divisions;
reg [31:0] size_divisions;
reg [31:0] size_divisions_backup;

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

reg dump_tvout_finish_v2tx2;

initial begin : dump_tvout_runtime_sign_v2tx2
    integer fp;
    dump_tvout_finish_v2tx2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_v2tx2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_v2tx2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_v2tx2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_v2tx2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_v2tx2 = 1;
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
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(~rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
