// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      large_getrf
`define AUTOTB_DUT_INST AESL_inst_large_getrf
`define AUTOTB_TOP      apatb_large_getrf_top
`define AUTOTB_LAT_RESULT_FILE "large_getrf.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "large_getrf.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_large_getrf_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 2.50

`define AESL_DEPTH_a0 1
`define AESL_DEPTH_a1 1
`define AESL_DEPTH_a2 1
`define AESL_DEPTH_l0 1
`define AESL_DEPTH_l1 1
`define AESL_DEPTH_l2 1
`define AESL_DEPTH_u0 1
`define AESL_DEPTH_u1 1
`define AESL_DEPTH_u2 1
`define AESL_DEPTH_u3 1
`define AESL_DEPTH_w0 1
`define AESL_DEPTH_w1 1
`define AESL_DEPTH_a_ptr 1
`define AESL_DEPTH_a_idx 1
`define AESL_DEPTH_a_val 1
`define AESL_DEPTH_l_ptr 1
`define AESL_DEPTH_l_idx 1
`define AESL_DEPTH_l_val 1
`define AESL_DEPTH_u_ptr 1
`define AESL_DEPTH_u_idx 1
`define AESL_DEPTH_u_val 1
`define AESL_DEPTH_u_diag_pos 1
`define AESL_DEPTH_work 1
`define AESL_DEPTH_mark 1
`define AESL_DEPTH_n 1
`define AESL_DEPTH_pivot_eps 1
`define AESL_DEPTH_status 1
`define AESL_DEPTH_muladds 1
`define AESL_DEPTH_divisions 1
`define AUTOTB_TVIN_a0  "../tv/cdatafile/c.large_getrf.autotvin_a0.dat"
`define AUTOTB_TVIN_a1  "../tv/cdatafile/c.large_getrf.autotvin_a1.dat"
`define AUTOTB_TVIN_a2  "../tv/cdatafile/c.large_getrf.autotvin_a2.dat"
`define AUTOTB_TVIN_l0  "../tv/cdatafile/c.large_getrf.autotvin_l0.dat"
`define AUTOTB_TVIN_l1  "../tv/cdatafile/c.large_getrf.autotvin_l1.dat"
`define AUTOTB_TVIN_u0  "../tv/cdatafile/c.large_getrf.autotvin_u0.dat"
`define AUTOTB_TVIN_u1  "../tv/cdatafile/c.large_getrf.autotvin_u1.dat"
`define AUTOTB_TVIN_u2  "../tv/cdatafile/c.large_getrf.autotvin_u2.dat"
`define AUTOTB_TVIN_u3  "../tv/cdatafile/c.large_getrf.autotvin_u3.dat"
`define AUTOTB_TVIN_w0  "../tv/cdatafile/c.large_getrf.autotvin_w0.dat"
`define AUTOTB_TVIN_w1  "../tv/cdatafile/c.large_getrf.autotvin_w1.dat"
`define AUTOTB_TVIN_a_ptr  "../tv/cdatafile/c.large_getrf.autotvin_a_ptr.dat"
`define AUTOTB_TVIN_a_idx  "../tv/cdatafile/c.large_getrf.autotvin_a_idx.dat"
`define AUTOTB_TVIN_a_val  "../tv/cdatafile/c.large_getrf.autotvin_a_val.dat"
`define AUTOTB_TVIN_l_ptr  "../tv/cdatafile/c.large_getrf.autotvin_l_ptr.dat"
`define AUTOTB_TVIN_l_idx  "../tv/cdatafile/c.large_getrf.autotvin_l_idx.dat"
`define AUTOTB_TVIN_l_val  "../tv/cdatafile/c.large_getrf.autotvin_l_val.dat"
`define AUTOTB_TVIN_u_ptr  "../tv/cdatafile/c.large_getrf.autotvin_u_ptr.dat"
`define AUTOTB_TVIN_u_idx  "../tv/cdatafile/c.large_getrf.autotvin_u_idx.dat"
`define AUTOTB_TVIN_u_val  "../tv/cdatafile/c.large_getrf.autotvin_u_val.dat"
`define AUTOTB_TVIN_u_diag_pos  "../tv/cdatafile/c.large_getrf.autotvin_u_diag_pos.dat"
`define AUTOTB_TVIN_work  "../tv/cdatafile/c.large_getrf.autotvin_work.dat"
`define AUTOTB_TVIN_mark  "../tv/cdatafile/c.large_getrf.autotvin_mark.dat"
`define AUTOTB_TVIN_n  "../tv/cdatafile/c.large_getrf.autotvin_n.dat"
`define AUTOTB_TVIN_pivot_eps  "../tv/cdatafile/c.large_getrf.autotvin_pivot_eps.dat"
`define AUTOTB_TVIN_a0_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_a0.dat"
`define AUTOTB_TVIN_a1_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_a1.dat"
`define AUTOTB_TVIN_a2_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_a2.dat"
`define AUTOTB_TVIN_l0_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_l0.dat"
`define AUTOTB_TVIN_l1_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_l1.dat"
`define AUTOTB_TVIN_u0_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_u0.dat"
`define AUTOTB_TVIN_u1_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_u1.dat"
`define AUTOTB_TVIN_u2_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_u2.dat"
`define AUTOTB_TVIN_u3_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_u3.dat"
`define AUTOTB_TVIN_w0_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_w0.dat"
`define AUTOTB_TVIN_w1_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_w1.dat"
`define AUTOTB_TVIN_a_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_a_ptr.dat"
`define AUTOTB_TVIN_a_idx_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_a_idx.dat"
`define AUTOTB_TVIN_a_val_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_a_val.dat"
`define AUTOTB_TVIN_l_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_l_ptr.dat"
`define AUTOTB_TVIN_l_idx_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_l_idx.dat"
`define AUTOTB_TVIN_l_val_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_l_val.dat"
`define AUTOTB_TVIN_u_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_u_ptr.dat"
`define AUTOTB_TVIN_u_idx_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_u_idx.dat"
`define AUTOTB_TVIN_u_val_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_u_val.dat"
`define AUTOTB_TVIN_u_diag_pos_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_u_diag_pos.dat"
`define AUTOTB_TVIN_work_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_work.dat"
`define AUTOTB_TVIN_mark_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_mark.dat"
`define AUTOTB_TVIN_n_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_n.dat"
`define AUTOTB_TVIN_pivot_eps_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvin_pivot_eps.dat"
`define AUTOTB_TVOUT_l2  "../tv/cdatafile/c.large_getrf.autotvout_l2.dat"
`define AUTOTB_TVOUT_u2  "../tv/cdatafile/c.large_getrf.autotvout_u2.dat"
`define AUTOTB_TVOUT_w0  "../tv/cdatafile/c.large_getrf.autotvout_w0.dat"
`define AUTOTB_TVOUT_w1  "../tv/cdatafile/c.large_getrf.autotvout_w1.dat"
`define AUTOTB_TVOUT_status  "../tv/cdatafile/c.large_getrf.autotvout_status.dat"
`define AUTOTB_TVOUT_muladds  "../tv/cdatafile/c.large_getrf.autotvout_muladds.dat"
`define AUTOTB_TVOUT_divisions  "../tv/cdatafile/c.large_getrf.autotvout_divisions.dat"
`define AUTOTB_TVOUT_l2_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvout_l2.dat"
`define AUTOTB_TVOUT_u2_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvout_u2.dat"
`define AUTOTB_TVOUT_w0_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvout_w0.dat"
`define AUTOTB_TVOUT_w1_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvout_w1.dat"
`define AUTOTB_TVOUT_status_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvout_status.dat"
`define AUTOTB_TVOUT_muladds_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvout_muladds.dat"
`define AUTOTB_TVOUT_divisions_out_wrapc  "../tv/rtldatafile/rtl.large_getrf.autotvout_divisions.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_a0 = 10975;
parameter LENGTH_a1 = 428650;
parameter LENGTH_a2 = 428650;
parameter LENGTH_a_idx = 1;
parameter LENGTH_a_ptr = 1;
parameter LENGTH_a_val = 1;
parameter LENGTH_divisions = 1;
parameter LENGTH_l0 = 10975;
parameter LENGTH_l1 = 1596240;
parameter LENGTH_l2 = 1596240;
parameter LENGTH_l_idx = 1;
parameter LENGTH_l_ptr = 1;
parameter LENGTH_l_val = 1;
parameter LENGTH_mark = 1;
parameter LENGTH_muladds = 1;
parameter LENGTH_n = 1;
parameter LENGTH_pivot_eps = 1;
parameter LENGTH_status = 1;
parameter LENGTH_u0 = 10975;
parameter LENGTH_u1 = 1596240;
parameter LENGTH_u2 = 1596240;
parameter LENGTH_u3 = 10974;
parameter LENGTH_u_diag_pos = 1;
parameter LENGTH_u_idx = 1;
parameter LENGTH_u_ptr = 1;
parameter LENGTH_u_val = 1;
parameter LENGTH_w0 = 10974;
parameter LENGTH_w1 = 10974;
parameter LENGTH_work = 1;

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
wire  a0_AWVALID;
wire  a0_AWREADY;
wire [63 : 0] a0_AWADDR;
wire [0 : 0] a0_AWID;
wire [7 : 0] a0_AWLEN;
wire [2 : 0] a0_AWSIZE;
wire [1 : 0] a0_AWBURST;
wire [1 : 0] a0_AWLOCK;
wire [3 : 0] a0_AWCACHE;
wire [2 : 0] a0_AWPROT;
wire [3 : 0] a0_AWQOS;
wire [3 : 0] a0_AWREGION;
wire [0 : 0] a0_AWUSER;
wire  a0_WVALID;
wire  a0_WREADY;
wire [31 : 0] a0_WDATA;
wire [3 : 0] a0_WSTRB;
wire  a0_WLAST;
wire [0 : 0] a0_WID;
wire [0 : 0] a0_WUSER;
wire  a0_ARVALID;
wire  a0_ARREADY;
wire [63 : 0] a0_ARADDR;
wire [0 : 0] a0_ARID;
wire [7 : 0] a0_ARLEN;
wire [2 : 0] a0_ARSIZE;
wire [1 : 0] a0_ARBURST;
wire [1 : 0] a0_ARLOCK;
wire [3 : 0] a0_ARCACHE;
wire [2 : 0] a0_ARPROT;
wire [3 : 0] a0_ARQOS;
wire [3 : 0] a0_ARREGION;
wire [0 : 0] a0_ARUSER;
wire  a0_RVALID;
wire  a0_RREADY;
wire [31 : 0] a0_RDATA;
wire  a0_RLAST;
wire [0 : 0] a0_RID;
wire [0 : 0] a0_RUSER;
wire [1 : 0] a0_RRESP;
wire  a0_BVALID;
wire  a0_BREADY;
wire [1 : 0] a0_BRESP;
wire [0 : 0] a0_BID;
wire [0 : 0] a0_BUSER;
wire  a1_AWVALID;
wire  a1_AWREADY;
wire [63 : 0] a1_AWADDR;
wire [0 : 0] a1_AWID;
wire [7 : 0] a1_AWLEN;
wire [2 : 0] a1_AWSIZE;
wire [1 : 0] a1_AWBURST;
wire [1 : 0] a1_AWLOCK;
wire [3 : 0] a1_AWCACHE;
wire [2 : 0] a1_AWPROT;
wire [3 : 0] a1_AWQOS;
wire [3 : 0] a1_AWREGION;
wire [0 : 0] a1_AWUSER;
wire  a1_WVALID;
wire  a1_WREADY;
wire [31 : 0] a1_WDATA;
wire [3 : 0] a1_WSTRB;
wire  a1_WLAST;
wire [0 : 0] a1_WID;
wire [0 : 0] a1_WUSER;
wire  a1_ARVALID;
wire  a1_ARREADY;
wire [63 : 0] a1_ARADDR;
wire [0 : 0] a1_ARID;
wire [7 : 0] a1_ARLEN;
wire [2 : 0] a1_ARSIZE;
wire [1 : 0] a1_ARBURST;
wire [1 : 0] a1_ARLOCK;
wire [3 : 0] a1_ARCACHE;
wire [2 : 0] a1_ARPROT;
wire [3 : 0] a1_ARQOS;
wire [3 : 0] a1_ARREGION;
wire [0 : 0] a1_ARUSER;
wire  a1_RVALID;
wire  a1_RREADY;
wire [31 : 0] a1_RDATA;
wire  a1_RLAST;
wire [0 : 0] a1_RID;
wire [0 : 0] a1_RUSER;
wire [1 : 0] a1_RRESP;
wire  a1_BVALID;
wire  a1_BREADY;
wire [1 : 0] a1_BRESP;
wire [0 : 0] a1_BID;
wire [0 : 0] a1_BUSER;
wire  a2_AWVALID;
wire  a2_AWREADY;
wire [63 : 0] a2_AWADDR;
wire [0 : 0] a2_AWID;
wire [7 : 0] a2_AWLEN;
wire [2 : 0] a2_AWSIZE;
wire [1 : 0] a2_AWBURST;
wire [1 : 0] a2_AWLOCK;
wire [3 : 0] a2_AWCACHE;
wire [2 : 0] a2_AWPROT;
wire [3 : 0] a2_AWQOS;
wire [3 : 0] a2_AWREGION;
wire [0 : 0] a2_AWUSER;
wire  a2_WVALID;
wire  a2_WREADY;
wire [31 : 0] a2_WDATA;
wire [3 : 0] a2_WSTRB;
wire  a2_WLAST;
wire [0 : 0] a2_WID;
wire [0 : 0] a2_WUSER;
wire  a2_ARVALID;
wire  a2_ARREADY;
wire [63 : 0] a2_ARADDR;
wire [0 : 0] a2_ARID;
wire [7 : 0] a2_ARLEN;
wire [2 : 0] a2_ARSIZE;
wire [1 : 0] a2_ARBURST;
wire [1 : 0] a2_ARLOCK;
wire [3 : 0] a2_ARCACHE;
wire [2 : 0] a2_ARPROT;
wire [3 : 0] a2_ARQOS;
wire [3 : 0] a2_ARREGION;
wire [0 : 0] a2_ARUSER;
wire  a2_RVALID;
wire  a2_RREADY;
wire [31 : 0] a2_RDATA;
wire  a2_RLAST;
wire [0 : 0] a2_RID;
wire [0 : 0] a2_RUSER;
wire [1 : 0] a2_RRESP;
wire  a2_BVALID;
wire  a2_BREADY;
wire [1 : 0] a2_BRESP;
wire [0 : 0] a2_BID;
wire [0 : 0] a2_BUSER;
wire  l0_AWVALID;
wire  l0_AWREADY;
wire [63 : 0] l0_AWADDR;
wire [0 : 0] l0_AWID;
wire [7 : 0] l0_AWLEN;
wire [2 : 0] l0_AWSIZE;
wire [1 : 0] l0_AWBURST;
wire [1 : 0] l0_AWLOCK;
wire [3 : 0] l0_AWCACHE;
wire [2 : 0] l0_AWPROT;
wire [3 : 0] l0_AWQOS;
wire [3 : 0] l0_AWREGION;
wire [0 : 0] l0_AWUSER;
wire  l0_WVALID;
wire  l0_WREADY;
wire [31 : 0] l0_WDATA;
wire [3 : 0] l0_WSTRB;
wire  l0_WLAST;
wire [0 : 0] l0_WID;
wire [0 : 0] l0_WUSER;
wire  l0_ARVALID;
wire  l0_ARREADY;
wire [63 : 0] l0_ARADDR;
wire [0 : 0] l0_ARID;
wire [7 : 0] l0_ARLEN;
wire [2 : 0] l0_ARSIZE;
wire [1 : 0] l0_ARBURST;
wire [1 : 0] l0_ARLOCK;
wire [3 : 0] l0_ARCACHE;
wire [2 : 0] l0_ARPROT;
wire [3 : 0] l0_ARQOS;
wire [3 : 0] l0_ARREGION;
wire [0 : 0] l0_ARUSER;
wire  l0_RVALID;
wire  l0_RREADY;
wire [31 : 0] l0_RDATA;
wire  l0_RLAST;
wire [0 : 0] l0_RID;
wire [0 : 0] l0_RUSER;
wire [1 : 0] l0_RRESP;
wire  l0_BVALID;
wire  l0_BREADY;
wire [1 : 0] l0_BRESP;
wire [0 : 0] l0_BID;
wire [0 : 0] l0_BUSER;
wire  l1_AWVALID;
wire  l1_AWREADY;
wire [63 : 0] l1_AWADDR;
wire [0 : 0] l1_AWID;
wire [7 : 0] l1_AWLEN;
wire [2 : 0] l1_AWSIZE;
wire [1 : 0] l1_AWBURST;
wire [1 : 0] l1_AWLOCK;
wire [3 : 0] l1_AWCACHE;
wire [2 : 0] l1_AWPROT;
wire [3 : 0] l1_AWQOS;
wire [3 : 0] l1_AWREGION;
wire [0 : 0] l1_AWUSER;
wire  l1_WVALID;
wire  l1_WREADY;
wire [31 : 0] l1_WDATA;
wire [3 : 0] l1_WSTRB;
wire  l1_WLAST;
wire [0 : 0] l1_WID;
wire [0 : 0] l1_WUSER;
wire  l1_ARVALID;
wire  l1_ARREADY;
wire [63 : 0] l1_ARADDR;
wire [0 : 0] l1_ARID;
wire [7 : 0] l1_ARLEN;
wire [2 : 0] l1_ARSIZE;
wire [1 : 0] l1_ARBURST;
wire [1 : 0] l1_ARLOCK;
wire [3 : 0] l1_ARCACHE;
wire [2 : 0] l1_ARPROT;
wire [3 : 0] l1_ARQOS;
wire [3 : 0] l1_ARREGION;
wire [0 : 0] l1_ARUSER;
wire  l1_RVALID;
wire  l1_RREADY;
wire [31 : 0] l1_RDATA;
wire  l1_RLAST;
wire [0 : 0] l1_RID;
wire [0 : 0] l1_RUSER;
wire [1 : 0] l1_RRESP;
wire  l1_BVALID;
wire  l1_BREADY;
wire [1 : 0] l1_BRESP;
wire [0 : 0] l1_BID;
wire [0 : 0] l1_BUSER;
wire  l2_AWVALID;
wire  l2_AWREADY;
wire [63 : 0] l2_AWADDR;
wire [0 : 0] l2_AWID;
wire [7 : 0] l2_AWLEN;
wire [2 : 0] l2_AWSIZE;
wire [1 : 0] l2_AWBURST;
wire [1 : 0] l2_AWLOCK;
wire [3 : 0] l2_AWCACHE;
wire [2 : 0] l2_AWPROT;
wire [3 : 0] l2_AWQOS;
wire [3 : 0] l2_AWREGION;
wire [0 : 0] l2_AWUSER;
wire  l2_WVALID;
wire  l2_WREADY;
wire [31 : 0] l2_WDATA;
wire [3 : 0] l2_WSTRB;
wire  l2_WLAST;
wire [0 : 0] l2_WID;
wire [0 : 0] l2_WUSER;
wire  l2_ARVALID;
wire  l2_ARREADY;
wire [63 : 0] l2_ARADDR;
wire [0 : 0] l2_ARID;
wire [7 : 0] l2_ARLEN;
wire [2 : 0] l2_ARSIZE;
wire [1 : 0] l2_ARBURST;
wire [1 : 0] l2_ARLOCK;
wire [3 : 0] l2_ARCACHE;
wire [2 : 0] l2_ARPROT;
wire [3 : 0] l2_ARQOS;
wire [3 : 0] l2_ARREGION;
wire [0 : 0] l2_ARUSER;
wire  l2_RVALID;
wire  l2_RREADY;
wire [31 : 0] l2_RDATA;
wire  l2_RLAST;
wire [0 : 0] l2_RID;
wire [0 : 0] l2_RUSER;
wire [1 : 0] l2_RRESP;
wire  l2_BVALID;
wire  l2_BREADY;
wire [1 : 0] l2_BRESP;
wire [0 : 0] l2_BID;
wire [0 : 0] l2_BUSER;
wire  u0_AWVALID;
wire  u0_AWREADY;
wire [63 : 0] u0_AWADDR;
wire [0 : 0] u0_AWID;
wire [7 : 0] u0_AWLEN;
wire [2 : 0] u0_AWSIZE;
wire [1 : 0] u0_AWBURST;
wire [1 : 0] u0_AWLOCK;
wire [3 : 0] u0_AWCACHE;
wire [2 : 0] u0_AWPROT;
wire [3 : 0] u0_AWQOS;
wire [3 : 0] u0_AWREGION;
wire [0 : 0] u0_AWUSER;
wire  u0_WVALID;
wire  u0_WREADY;
wire [31 : 0] u0_WDATA;
wire [3 : 0] u0_WSTRB;
wire  u0_WLAST;
wire [0 : 0] u0_WID;
wire [0 : 0] u0_WUSER;
wire  u0_ARVALID;
wire  u0_ARREADY;
wire [63 : 0] u0_ARADDR;
wire [0 : 0] u0_ARID;
wire [7 : 0] u0_ARLEN;
wire [2 : 0] u0_ARSIZE;
wire [1 : 0] u0_ARBURST;
wire [1 : 0] u0_ARLOCK;
wire [3 : 0] u0_ARCACHE;
wire [2 : 0] u0_ARPROT;
wire [3 : 0] u0_ARQOS;
wire [3 : 0] u0_ARREGION;
wire [0 : 0] u0_ARUSER;
wire  u0_RVALID;
wire  u0_RREADY;
wire [31 : 0] u0_RDATA;
wire  u0_RLAST;
wire [0 : 0] u0_RID;
wire [0 : 0] u0_RUSER;
wire [1 : 0] u0_RRESP;
wire  u0_BVALID;
wire  u0_BREADY;
wire [1 : 0] u0_BRESP;
wire [0 : 0] u0_BID;
wire [0 : 0] u0_BUSER;
wire  u1_AWVALID;
wire  u1_AWREADY;
wire [63 : 0] u1_AWADDR;
wire [0 : 0] u1_AWID;
wire [7 : 0] u1_AWLEN;
wire [2 : 0] u1_AWSIZE;
wire [1 : 0] u1_AWBURST;
wire [1 : 0] u1_AWLOCK;
wire [3 : 0] u1_AWCACHE;
wire [2 : 0] u1_AWPROT;
wire [3 : 0] u1_AWQOS;
wire [3 : 0] u1_AWREGION;
wire [0 : 0] u1_AWUSER;
wire  u1_WVALID;
wire  u1_WREADY;
wire [31 : 0] u1_WDATA;
wire [3 : 0] u1_WSTRB;
wire  u1_WLAST;
wire [0 : 0] u1_WID;
wire [0 : 0] u1_WUSER;
wire  u1_ARVALID;
wire  u1_ARREADY;
wire [63 : 0] u1_ARADDR;
wire [0 : 0] u1_ARID;
wire [7 : 0] u1_ARLEN;
wire [2 : 0] u1_ARSIZE;
wire [1 : 0] u1_ARBURST;
wire [1 : 0] u1_ARLOCK;
wire [3 : 0] u1_ARCACHE;
wire [2 : 0] u1_ARPROT;
wire [3 : 0] u1_ARQOS;
wire [3 : 0] u1_ARREGION;
wire [0 : 0] u1_ARUSER;
wire  u1_RVALID;
wire  u1_RREADY;
wire [31 : 0] u1_RDATA;
wire  u1_RLAST;
wire [0 : 0] u1_RID;
wire [0 : 0] u1_RUSER;
wire [1 : 0] u1_RRESP;
wire  u1_BVALID;
wire  u1_BREADY;
wire [1 : 0] u1_BRESP;
wire [0 : 0] u1_BID;
wire [0 : 0] u1_BUSER;
wire  u2_AWVALID;
wire  u2_AWREADY;
wire [63 : 0] u2_AWADDR;
wire [0 : 0] u2_AWID;
wire [7 : 0] u2_AWLEN;
wire [2 : 0] u2_AWSIZE;
wire [1 : 0] u2_AWBURST;
wire [1 : 0] u2_AWLOCK;
wire [3 : 0] u2_AWCACHE;
wire [2 : 0] u2_AWPROT;
wire [3 : 0] u2_AWQOS;
wire [3 : 0] u2_AWREGION;
wire [0 : 0] u2_AWUSER;
wire  u2_WVALID;
wire  u2_WREADY;
wire [31 : 0] u2_WDATA;
wire [3 : 0] u2_WSTRB;
wire  u2_WLAST;
wire [0 : 0] u2_WID;
wire [0 : 0] u2_WUSER;
wire  u2_ARVALID;
wire  u2_ARREADY;
wire [63 : 0] u2_ARADDR;
wire [0 : 0] u2_ARID;
wire [7 : 0] u2_ARLEN;
wire [2 : 0] u2_ARSIZE;
wire [1 : 0] u2_ARBURST;
wire [1 : 0] u2_ARLOCK;
wire [3 : 0] u2_ARCACHE;
wire [2 : 0] u2_ARPROT;
wire [3 : 0] u2_ARQOS;
wire [3 : 0] u2_ARREGION;
wire [0 : 0] u2_ARUSER;
wire  u2_RVALID;
wire  u2_RREADY;
wire [31 : 0] u2_RDATA;
wire  u2_RLAST;
wire [0 : 0] u2_RID;
wire [0 : 0] u2_RUSER;
wire [1 : 0] u2_RRESP;
wire  u2_BVALID;
wire  u2_BREADY;
wire [1 : 0] u2_BRESP;
wire [0 : 0] u2_BID;
wire [0 : 0] u2_BUSER;
wire  u3_AWVALID;
wire  u3_AWREADY;
wire [63 : 0] u3_AWADDR;
wire [0 : 0] u3_AWID;
wire [7 : 0] u3_AWLEN;
wire [2 : 0] u3_AWSIZE;
wire [1 : 0] u3_AWBURST;
wire [1 : 0] u3_AWLOCK;
wire [3 : 0] u3_AWCACHE;
wire [2 : 0] u3_AWPROT;
wire [3 : 0] u3_AWQOS;
wire [3 : 0] u3_AWREGION;
wire [0 : 0] u3_AWUSER;
wire  u3_WVALID;
wire  u3_WREADY;
wire [31 : 0] u3_WDATA;
wire [3 : 0] u3_WSTRB;
wire  u3_WLAST;
wire [0 : 0] u3_WID;
wire [0 : 0] u3_WUSER;
wire  u3_ARVALID;
wire  u3_ARREADY;
wire [63 : 0] u3_ARADDR;
wire [0 : 0] u3_ARID;
wire [7 : 0] u3_ARLEN;
wire [2 : 0] u3_ARSIZE;
wire [1 : 0] u3_ARBURST;
wire [1 : 0] u3_ARLOCK;
wire [3 : 0] u3_ARCACHE;
wire [2 : 0] u3_ARPROT;
wire [3 : 0] u3_ARQOS;
wire [3 : 0] u3_ARREGION;
wire [0 : 0] u3_ARUSER;
wire  u3_RVALID;
wire  u3_RREADY;
wire [31 : 0] u3_RDATA;
wire  u3_RLAST;
wire [0 : 0] u3_RID;
wire [0 : 0] u3_RUSER;
wire [1 : 0] u3_RRESP;
wire  u3_BVALID;
wire  u3_BREADY;
wire [1 : 0] u3_BRESP;
wire [0 : 0] u3_BID;
wire [0 : 0] u3_BUSER;
wire  w0_AWVALID;
wire  w0_AWREADY;
wire [63 : 0] w0_AWADDR;
wire [0 : 0] w0_AWID;
wire [7 : 0] w0_AWLEN;
wire [2 : 0] w0_AWSIZE;
wire [1 : 0] w0_AWBURST;
wire [1 : 0] w0_AWLOCK;
wire [3 : 0] w0_AWCACHE;
wire [2 : 0] w0_AWPROT;
wire [3 : 0] w0_AWQOS;
wire [3 : 0] w0_AWREGION;
wire [0 : 0] w0_AWUSER;
wire  w0_WVALID;
wire  w0_WREADY;
wire [31 : 0] w0_WDATA;
wire [3 : 0] w0_WSTRB;
wire  w0_WLAST;
wire [0 : 0] w0_WID;
wire [0 : 0] w0_WUSER;
wire  w0_ARVALID;
wire  w0_ARREADY;
wire [63 : 0] w0_ARADDR;
wire [0 : 0] w0_ARID;
wire [7 : 0] w0_ARLEN;
wire [2 : 0] w0_ARSIZE;
wire [1 : 0] w0_ARBURST;
wire [1 : 0] w0_ARLOCK;
wire [3 : 0] w0_ARCACHE;
wire [2 : 0] w0_ARPROT;
wire [3 : 0] w0_ARQOS;
wire [3 : 0] w0_ARREGION;
wire [0 : 0] w0_ARUSER;
wire  w0_RVALID;
wire  w0_RREADY;
wire [31 : 0] w0_RDATA;
wire  w0_RLAST;
wire [0 : 0] w0_RID;
wire [0 : 0] w0_RUSER;
wire [1 : 0] w0_RRESP;
wire  w0_BVALID;
wire  w0_BREADY;
wire [1 : 0] w0_BRESP;
wire [0 : 0] w0_BID;
wire [0 : 0] w0_BUSER;
wire  w1_AWVALID;
wire  w1_AWREADY;
wire [63 : 0] w1_AWADDR;
wire [0 : 0] w1_AWID;
wire [7 : 0] w1_AWLEN;
wire [2 : 0] w1_AWSIZE;
wire [1 : 0] w1_AWBURST;
wire [1 : 0] w1_AWLOCK;
wire [3 : 0] w1_AWCACHE;
wire [2 : 0] w1_AWPROT;
wire [3 : 0] w1_AWQOS;
wire [3 : 0] w1_AWREGION;
wire [0 : 0] w1_AWUSER;
wire  w1_WVALID;
wire  w1_WREADY;
wire [31 : 0] w1_WDATA;
wire [3 : 0] w1_WSTRB;
wire  w1_WLAST;
wire [0 : 0] w1_WID;
wire [0 : 0] w1_WUSER;
wire  w1_ARVALID;
wire  w1_ARREADY;
wire [63 : 0] w1_ARADDR;
wire [0 : 0] w1_ARID;
wire [7 : 0] w1_ARLEN;
wire [2 : 0] w1_ARSIZE;
wire [1 : 0] w1_ARBURST;
wire [1 : 0] w1_ARLOCK;
wire [3 : 0] w1_ARCACHE;
wire [2 : 0] w1_ARPROT;
wire [3 : 0] w1_ARQOS;
wire [3 : 0] w1_ARREGION;
wire [0 : 0] w1_ARUSER;
wire  w1_RVALID;
wire  w1_RREADY;
wire [31 : 0] w1_RDATA;
wire  w1_RLAST;
wire [0 : 0] w1_RID;
wire [0 : 0] w1_RUSER;
wire [1 : 0] w1_RRESP;
wire  w1_BVALID;
wire  w1_BREADY;
wire [1 : 0] w1_BRESP;
wire [0 : 0] w1_BID;
wire [0 : 0] w1_BUSER;
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
    .m_axi_a0_AWVALID(a0_AWVALID),
    .m_axi_a0_AWREADY(a0_AWREADY),
    .m_axi_a0_AWADDR(a0_AWADDR),
    .m_axi_a0_AWID(a0_AWID),
    .m_axi_a0_AWLEN(a0_AWLEN),
    .m_axi_a0_AWSIZE(a0_AWSIZE),
    .m_axi_a0_AWBURST(a0_AWBURST),
    .m_axi_a0_AWLOCK(a0_AWLOCK),
    .m_axi_a0_AWCACHE(a0_AWCACHE),
    .m_axi_a0_AWPROT(a0_AWPROT),
    .m_axi_a0_AWQOS(a0_AWQOS),
    .m_axi_a0_AWREGION(a0_AWREGION),
    .m_axi_a0_AWUSER(a0_AWUSER),
    .m_axi_a0_WVALID(a0_WVALID),
    .m_axi_a0_WREADY(a0_WREADY),
    .m_axi_a0_WDATA(a0_WDATA),
    .m_axi_a0_WSTRB(a0_WSTRB),
    .m_axi_a0_WLAST(a0_WLAST),
    .m_axi_a0_WID(a0_WID),
    .m_axi_a0_WUSER(a0_WUSER),
    .m_axi_a0_ARVALID(a0_ARVALID),
    .m_axi_a0_ARREADY(a0_ARREADY),
    .m_axi_a0_ARADDR(a0_ARADDR),
    .m_axi_a0_ARID(a0_ARID),
    .m_axi_a0_ARLEN(a0_ARLEN),
    .m_axi_a0_ARSIZE(a0_ARSIZE),
    .m_axi_a0_ARBURST(a0_ARBURST),
    .m_axi_a0_ARLOCK(a0_ARLOCK),
    .m_axi_a0_ARCACHE(a0_ARCACHE),
    .m_axi_a0_ARPROT(a0_ARPROT),
    .m_axi_a0_ARQOS(a0_ARQOS),
    .m_axi_a0_ARREGION(a0_ARREGION),
    .m_axi_a0_ARUSER(a0_ARUSER),
    .m_axi_a0_RVALID(a0_RVALID),
    .m_axi_a0_RREADY(a0_RREADY),
    .m_axi_a0_RDATA(a0_RDATA),
    .m_axi_a0_RLAST(a0_RLAST),
    .m_axi_a0_RID(a0_RID),
    .m_axi_a0_RUSER(a0_RUSER),
    .m_axi_a0_RRESP(a0_RRESP),
    .m_axi_a0_BVALID(a0_BVALID),
    .m_axi_a0_BREADY(a0_BREADY),
    .m_axi_a0_BRESP(a0_BRESP),
    .m_axi_a0_BID(a0_BID),
    .m_axi_a0_BUSER(a0_BUSER),
    .m_axi_a1_AWVALID(a1_AWVALID),
    .m_axi_a1_AWREADY(a1_AWREADY),
    .m_axi_a1_AWADDR(a1_AWADDR),
    .m_axi_a1_AWID(a1_AWID),
    .m_axi_a1_AWLEN(a1_AWLEN),
    .m_axi_a1_AWSIZE(a1_AWSIZE),
    .m_axi_a1_AWBURST(a1_AWBURST),
    .m_axi_a1_AWLOCK(a1_AWLOCK),
    .m_axi_a1_AWCACHE(a1_AWCACHE),
    .m_axi_a1_AWPROT(a1_AWPROT),
    .m_axi_a1_AWQOS(a1_AWQOS),
    .m_axi_a1_AWREGION(a1_AWREGION),
    .m_axi_a1_AWUSER(a1_AWUSER),
    .m_axi_a1_WVALID(a1_WVALID),
    .m_axi_a1_WREADY(a1_WREADY),
    .m_axi_a1_WDATA(a1_WDATA),
    .m_axi_a1_WSTRB(a1_WSTRB),
    .m_axi_a1_WLAST(a1_WLAST),
    .m_axi_a1_WID(a1_WID),
    .m_axi_a1_WUSER(a1_WUSER),
    .m_axi_a1_ARVALID(a1_ARVALID),
    .m_axi_a1_ARREADY(a1_ARREADY),
    .m_axi_a1_ARADDR(a1_ARADDR),
    .m_axi_a1_ARID(a1_ARID),
    .m_axi_a1_ARLEN(a1_ARLEN),
    .m_axi_a1_ARSIZE(a1_ARSIZE),
    .m_axi_a1_ARBURST(a1_ARBURST),
    .m_axi_a1_ARLOCK(a1_ARLOCK),
    .m_axi_a1_ARCACHE(a1_ARCACHE),
    .m_axi_a1_ARPROT(a1_ARPROT),
    .m_axi_a1_ARQOS(a1_ARQOS),
    .m_axi_a1_ARREGION(a1_ARREGION),
    .m_axi_a1_ARUSER(a1_ARUSER),
    .m_axi_a1_RVALID(a1_RVALID),
    .m_axi_a1_RREADY(a1_RREADY),
    .m_axi_a1_RDATA(a1_RDATA),
    .m_axi_a1_RLAST(a1_RLAST),
    .m_axi_a1_RID(a1_RID),
    .m_axi_a1_RUSER(a1_RUSER),
    .m_axi_a1_RRESP(a1_RRESP),
    .m_axi_a1_BVALID(a1_BVALID),
    .m_axi_a1_BREADY(a1_BREADY),
    .m_axi_a1_BRESP(a1_BRESP),
    .m_axi_a1_BID(a1_BID),
    .m_axi_a1_BUSER(a1_BUSER),
    .m_axi_a2_AWVALID(a2_AWVALID),
    .m_axi_a2_AWREADY(a2_AWREADY),
    .m_axi_a2_AWADDR(a2_AWADDR),
    .m_axi_a2_AWID(a2_AWID),
    .m_axi_a2_AWLEN(a2_AWLEN),
    .m_axi_a2_AWSIZE(a2_AWSIZE),
    .m_axi_a2_AWBURST(a2_AWBURST),
    .m_axi_a2_AWLOCK(a2_AWLOCK),
    .m_axi_a2_AWCACHE(a2_AWCACHE),
    .m_axi_a2_AWPROT(a2_AWPROT),
    .m_axi_a2_AWQOS(a2_AWQOS),
    .m_axi_a2_AWREGION(a2_AWREGION),
    .m_axi_a2_AWUSER(a2_AWUSER),
    .m_axi_a2_WVALID(a2_WVALID),
    .m_axi_a2_WREADY(a2_WREADY),
    .m_axi_a2_WDATA(a2_WDATA),
    .m_axi_a2_WSTRB(a2_WSTRB),
    .m_axi_a2_WLAST(a2_WLAST),
    .m_axi_a2_WID(a2_WID),
    .m_axi_a2_WUSER(a2_WUSER),
    .m_axi_a2_ARVALID(a2_ARVALID),
    .m_axi_a2_ARREADY(a2_ARREADY),
    .m_axi_a2_ARADDR(a2_ARADDR),
    .m_axi_a2_ARID(a2_ARID),
    .m_axi_a2_ARLEN(a2_ARLEN),
    .m_axi_a2_ARSIZE(a2_ARSIZE),
    .m_axi_a2_ARBURST(a2_ARBURST),
    .m_axi_a2_ARLOCK(a2_ARLOCK),
    .m_axi_a2_ARCACHE(a2_ARCACHE),
    .m_axi_a2_ARPROT(a2_ARPROT),
    .m_axi_a2_ARQOS(a2_ARQOS),
    .m_axi_a2_ARREGION(a2_ARREGION),
    .m_axi_a2_ARUSER(a2_ARUSER),
    .m_axi_a2_RVALID(a2_RVALID),
    .m_axi_a2_RREADY(a2_RREADY),
    .m_axi_a2_RDATA(a2_RDATA),
    .m_axi_a2_RLAST(a2_RLAST),
    .m_axi_a2_RID(a2_RID),
    .m_axi_a2_RUSER(a2_RUSER),
    .m_axi_a2_RRESP(a2_RRESP),
    .m_axi_a2_BVALID(a2_BVALID),
    .m_axi_a2_BREADY(a2_BREADY),
    .m_axi_a2_BRESP(a2_BRESP),
    .m_axi_a2_BID(a2_BID),
    .m_axi_a2_BUSER(a2_BUSER),
    .m_axi_l0_AWVALID(l0_AWVALID),
    .m_axi_l0_AWREADY(l0_AWREADY),
    .m_axi_l0_AWADDR(l0_AWADDR),
    .m_axi_l0_AWID(l0_AWID),
    .m_axi_l0_AWLEN(l0_AWLEN),
    .m_axi_l0_AWSIZE(l0_AWSIZE),
    .m_axi_l0_AWBURST(l0_AWBURST),
    .m_axi_l0_AWLOCK(l0_AWLOCK),
    .m_axi_l0_AWCACHE(l0_AWCACHE),
    .m_axi_l0_AWPROT(l0_AWPROT),
    .m_axi_l0_AWQOS(l0_AWQOS),
    .m_axi_l0_AWREGION(l0_AWREGION),
    .m_axi_l0_AWUSER(l0_AWUSER),
    .m_axi_l0_WVALID(l0_WVALID),
    .m_axi_l0_WREADY(l0_WREADY),
    .m_axi_l0_WDATA(l0_WDATA),
    .m_axi_l0_WSTRB(l0_WSTRB),
    .m_axi_l0_WLAST(l0_WLAST),
    .m_axi_l0_WID(l0_WID),
    .m_axi_l0_WUSER(l0_WUSER),
    .m_axi_l0_ARVALID(l0_ARVALID),
    .m_axi_l0_ARREADY(l0_ARREADY),
    .m_axi_l0_ARADDR(l0_ARADDR),
    .m_axi_l0_ARID(l0_ARID),
    .m_axi_l0_ARLEN(l0_ARLEN),
    .m_axi_l0_ARSIZE(l0_ARSIZE),
    .m_axi_l0_ARBURST(l0_ARBURST),
    .m_axi_l0_ARLOCK(l0_ARLOCK),
    .m_axi_l0_ARCACHE(l0_ARCACHE),
    .m_axi_l0_ARPROT(l0_ARPROT),
    .m_axi_l0_ARQOS(l0_ARQOS),
    .m_axi_l0_ARREGION(l0_ARREGION),
    .m_axi_l0_ARUSER(l0_ARUSER),
    .m_axi_l0_RVALID(l0_RVALID),
    .m_axi_l0_RREADY(l0_RREADY),
    .m_axi_l0_RDATA(l0_RDATA),
    .m_axi_l0_RLAST(l0_RLAST),
    .m_axi_l0_RID(l0_RID),
    .m_axi_l0_RUSER(l0_RUSER),
    .m_axi_l0_RRESP(l0_RRESP),
    .m_axi_l0_BVALID(l0_BVALID),
    .m_axi_l0_BREADY(l0_BREADY),
    .m_axi_l0_BRESP(l0_BRESP),
    .m_axi_l0_BID(l0_BID),
    .m_axi_l0_BUSER(l0_BUSER),
    .m_axi_l1_AWVALID(l1_AWVALID),
    .m_axi_l1_AWREADY(l1_AWREADY),
    .m_axi_l1_AWADDR(l1_AWADDR),
    .m_axi_l1_AWID(l1_AWID),
    .m_axi_l1_AWLEN(l1_AWLEN),
    .m_axi_l1_AWSIZE(l1_AWSIZE),
    .m_axi_l1_AWBURST(l1_AWBURST),
    .m_axi_l1_AWLOCK(l1_AWLOCK),
    .m_axi_l1_AWCACHE(l1_AWCACHE),
    .m_axi_l1_AWPROT(l1_AWPROT),
    .m_axi_l1_AWQOS(l1_AWQOS),
    .m_axi_l1_AWREGION(l1_AWREGION),
    .m_axi_l1_AWUSER(l1_AWUSER),
    .m_axi_l1_WVALID(l1_WVALID),
    .m_axi_l1_WREADY(l1_WREADY),
    .m_axi_l1_WDATA(l1_WDATA),
    .m_axi_l1_WSTRB(l1_WSTRB),
    .m_axi_l1_WLAST(l1_WLAST),
    .m_axi_l1_WID(l1_WID),
    .m_axi_l1_WUSER(l1_WUSER),
    .m_axi_l1_ARVALID(l1_ARVALID),
    .m_axi_l1_ARREADY(l1_ARREADY),
    .m_axi_l1_ARADDR(l1_ARADDR),
    .m_axi_l1_ARID(l1_ARID),
    .m_axi_l1_ARLEN(l1_ARLEN),
    .m_axi_l1_ARSIZE(l1_ARSIZE),
    .m_axi_l1_ARBURST(l1_ARBURST),
    .m_axi_l1_ARLOCK(l1_ARLOCK),
    .m_axi_l1_ARCACHE(l1_ARCACHE),
    .m_axi_l1_ARPROT(l1_ARPROT),
    .m_axi_l1_ARQOS(l1_ARQOS),
    .m_axi_l1_ARREGION(l1_ARREGION),
    .m_axi_l1_ARUSER(l1_ARUSER),
    .m_axi_l1_RVALID(l1_RVALID),
    .m_axi_l1_RREADY(l1_RREADY),
    .m_axi_l1_RDATA(l1_RDATA),
    .m_axi_l1_RLAST(l1_RLAST),
    .m_axi_l1_RID(l1_RID),
    .m_axi_l1_RUSER(l1_RUSER),
    .m_axi_l1_RRESP(l1_RRESP),
    .m_axi_l1_BVALID(l1_BVALID),
    .m_axi_l1_BREADY(l1_BREADY),
    .m_axi_l1_BRESP(l1_BRESP),
    .m_axi_l1_BID(l1_BID),
    .m_axi_l1_BUSER(l1_BUSER),
    .m_axi_l2_AWVALID(l2_AWVALID),
    .m_axi_l2_AWREADY(l2_AWREADY),
    .m_axi_l2_AWADDR(l2_AWADDR),
    .m_axi_l2_AWID(l2_AWID),
    .m_axi_l2_AWLEN(l2_AWLEN),
    .m_axi_l2_AWSIZE(l2_AWSIZE),
    .m_axi_l2_AWBURST(l2_AWBURST),
    .m_axi_l2_AWLOCK(l2_AWLOCK),
    .m_axi_l2_AWCACHE(l2_AWCACHE),
    .m_axi_l2_AWPROT(l2_AWPROT),
    .m_axi_l2_AWQOS(l2_AWQOS),
    .m_axi_l2_AWREGION(l2_AWREGION),
    .m_axi_l2_AWUSER(l2_AWUSER),
    .m_axi_l2_WVALID(l2_WVALID),
    .m_axi_l2_WREADY(l2_WREADY),
    .m_axi_l2_WDATA(l2_WDATA),
    .m_axi_l2_WSTRB(l2_WSTRB),
    .m_axi_l2_WLAST(l2_WLAST),
    .m_axi_l2_WID(l2_WID),
    .m_axi_l2_WUSER(l2_WUSER),
    .m_axi_l2_ARVALID(l2_ARVALID),
    .m_axi_l2_ARREADY(l2_ARREADY),
    .m_axi_l2_ARADDR(l2_ARADDR),
    .m_axi_l2_ARID(l2_ARID),
    .m_axi_l2_ARLEN(l2_ARLEN),
    .m_axi_l2_ARSIZE(l2_ARSIZE),
    .m_axi_l2_ARBURST(l2_ARBURST),
    .m_axi_l2_ARLOCK(l2_ARLOCK),
    .m_axi_l2_ARCACHE(l2_ARCACHE),
    .m_axi_l2_ARPROT(l2_ARPROT),
    .m_axi_l2_ARQOS(l2_ARQOS),
    .m_axi_l2_ARREGION(l2_ARREGION),
    .m_axi_l2_ARUSER(l2_ARUSER),
    .m_axi_l2_RVALID(l2_RVALID),
    .m_axi_l2_RREADY(l2_RREADY),
    .m_axi_l2_RDATA(l2_RDATA),
    .m_axi_l2_RLAST(l2_RLAST),
    .m_axi_l2_RID(l2_RID),
    .m_axi_l2_RUSER(l2_RUSER),
    .m_axi_l2_RRESP(l2_RRESP),
    .m_axi_l2_BVALID(l2_BVALID),
    .m_axi_l2_BREADY(l2_BREADY),
    .m_axi_l2_BRESP(l2_BRESP),
    .m_axi_l2_BID(l2_BID),
    .m_axi_l2_BUSER(l2_BUSER),
    .m_axi_u0_AWVALID(u0_AWVALID),
    .m_axi_u0_AWREADY(u0_AWREADY),
    .m_axi_u0_AWADDR(u0_AWADDR),
    .m_axi_u0_AWID(u0_AWID),
    .m_axi_u0_AWLEN(u0_AWLEN),
    .m_axi_u0_AWSIZE(u0_AWSIZE),
    .m_axi_u0_AWBURST(u0_AWBURST),
    .m_axi_u0_AWLOCK(u0_AWLOCK),
    .m_axi_u0_AWCACHE(u0_AWCACHE),
    .m_axi_u0_AWPROT(u0_AWPROT),
    .m_axi_u0_AWQOS(u0_AWQOS),
    .m_axi_u0_AWREGION(u0_AWREGION),
    .m_axi_u0_AWUSER(u0_AWUSER),
    .m_axi_u0_WVALID(u0_WVALID),
    .m_axi_u0_WREADY(u0_WREADY),
    .m_axi_u0_WDATA(u0_WDATA),
    .m_axi_u0_WSTRB(u0_WSTRB),
    .m_axi_u0_WLAST(u0_WLAST),
    .m_axi_u0_WID(u0_WID),
    .m_axi_u0_WUSER(u0_WUSER),
    .m_axi_u0_ARVALID(u0_ARVALID),
    .m_axi_u0_ARREADY(u0_ARREADY),
    .m_axi_u0_ARADDR(u0_ARADDR),
    .m_axi_u0_ARID(u0_ARID),
    .m_axi_u0_ARLEN(u0_ARLEN),
    .m_axi_u0_ARSIZE(u0_ARSIZE),
    .m_axi_u0_ARBURST(u0_ARBURST),
    .m_axi_u0_ARLOCK(u0_ARLOCK),
    .m_axi_u0_ARCACHE(u0_ARCACHE),
    .m_axi_u0_ARPROT(u0_ARPROT),
    .m_axi_u0_ARQOS(u0_ARQOS),
    .m_axi_u0_ARREGION(u0_ARREGION),
    .m_axi_u0_ARUSER(u0_ARUSER),
    .m_axi_u0_RVALID(u0_RVALID),
    .m_axi_u0_RREADY(u0_RREADY),
    .m_axi_u0_RDATA(u0_RDATA),
    .m_axi_u0_RLAST(u0_RLAST),
    .m_axi_u0_RID(u0_RID),
    .m_axi_u0_RUSER(u0_RUSER),
    .m_axi_u0_RRESP(u0_RRESP),
    .m_axi_u0_BVALID(u0_BVALID),
    .m_axi_u0_BREADY(u0_BREADY),
    .m_axi_u0_BRESP(u0_BRESP),
    .m_axi_u0_BID(u0_BID),
    .m_axi_u0_BUSER(u0_BUSER),
    .m_axi_u1_AWVALID(u1_AWVALID),
    .m_axi_u1_AWREADY(u1_AWREADY),
    .m_axi_u1_AWADDR(u1_AWADDR),
    .m_axi_u1_AWID(u1_AWID),
    .m_axi_u1_AWLEN(u1_AWLEN),
    .m_axi_u1_AWSIZE(u1_AWSIZE),
    .m_axi_u1_AWBURST(u1_AWBURST),
    .m_axi_u1_AWLOCK(u1_AWLOCK),
    .m_axi_u1_AWCACHE(u1_AWCACHE),
    .m_axi_u1_AWPROT(u1_AWPROT),
    .m_axi_u1_AWQOS(u1_AWQOS),
    .m_axi_u1_AWREGION(u1_AWREGION),
    .m_axi_u1_AWUSER(u1_AWUSER),
    .m_axi_u1_WVALID(u1_WVALID),
    .m_axi_u1_WREADY(u1_WREADY),
    .m_axi_u1_WDATA(u1_WDATA),
    .m_axi_u1_WSTRB(u1_WSTRB),
    .m_axi_u1_WLAST(u1_WLAST),
    .m_axi_u1_WID(u1_WID),
    .m_axi_u1_WUSER(u1_WUSER),
    .m_axi_u1_ARVALID(u1_ARVALID),
    .m_axi_u1_ARREADY(u1_ARREADY),
    .m_axi_u1_ARADDR(u1_ARADDR),
    .m_axi_u1_ARID(u1_ARID),
    .m_axi_u1_ARLEN(u1_ARLEN),
    .m_axi_u1_ARSIZE(u1_ARSIZE),
    .m_axi_u1_ARBURST(u1_ARBURST),
    .m_axi_u1_ARLOCK(u1_ARLOCK),
    .m_axi_u1_ARCACHE(u1_ARCACHE),
    .m_axi_u1_ARPROT(u1_ARPROT),
    .m_axi_u1_ARQOS(u1_ARQOS),
    .m_axi_u1_ARREGION(u1_ARREGION),
    .m_axi_u1_ARUSER(u1_ARUSER),
    .m_axi_u1_RVALID(u1_RVALID),
    .m_axi_u1_RREADY(u1_RREADY),
    .m_axi_u1_RDATA(u1_RDATA),
    .m_axi_u1_RLAST(u1_RLAST),
    .m_axi_u1_RID(u1_RID),
    .m_axi_u1_RUSER(u1_RUSER),
    .m_axi_u1_RRESP(u1_RRESP),
    .m_axi_u1_BVALID(u1_BVALID),
    .m_axi_u1_BREADY(u1_BREADY),
    .m_axi_u1_BRESP(u1_BRESP),
    .m_axi_u1_BID(u1_BID),
    .m_axi_u1_BUSER(u1_BUSER),
    .m_axi_u2_AWVALID(u2_AWVALID),
    .m_axi_u2_AWREADY(u2_AWREADY),
    .m_axi_u2_AWADDR(u2_AWADDR),
    .m_axi_u2_AWID(u2_AWID),
    .m_axi_u2_AWLEN(u2_AWLEN),
    .m_axi_u2_AWSIZE(u2_AWSIZE),
    .m_axi_u2_AWBURST(u2_AWBURST),
    .m_axi_u2_AWLOCK(u2_AWLOCK),
    .m_axi_u2_AWCACHE(u2_AWCACHE),
    .m_axi_u2_AWPROT(u2_AWPROT),
    .m_axi_u2_AWQOS(u2_AWQOS),
    .m_axi_u2_AWREGION(u2_AWREGION),
    .m_axi_u2_AWUSER(u2_AWUSER),
    .m_axi_u2_WVALID(u2_WVALID),
    .m_axi_u2_WREADY(u2_WREADY),
    .m_axi_u2_WDATA(u2_WDATA),
    .m_axi_u2_WSTRB(u2_WSTRB),
    .m_axi_u2_WLAST(u2_WLAST),
    .m_axi_u2_WID(u2_WID),
    .m_axi_u2_WUSER(u2_WUSER),
    .m_axi_u2_ARVALID(u2_ARVALID),
    .m_axi_u2_ARREADY(u2_ARREADY),
    .m_axi_u2_ARADDR(u2_ARADDR),
    .m_axi_u2_ARID(u2_ARID),
    .m_axi_u2_ARLEN(u2_ARLEN),
    .m_axi_u2_ARSIZE(u2_ARSIZE),
    .m_axi_u2_ARBURST(u2_ARBURST),
    .m_axi_u2_ARLOCK(u2_ARLOCK),
    .m_axi_u2_ARCACHE(u2_ARCACHE),
    .m_axi_u2_ARPROT(u2_ARPROT),
    .m_axi_u2_ARQOS(u2_ARQOS),
    .m_axi_u2_ARREGION(u2_ARREGION),
    .m_axi_u2_ARUSER(u2_ARUSER),
    .m_axi_u2_RVALID(u2_RVALID),
    .m_axi_u2_RREADY(u2_RREADY),
    .m_axi_u2_RDATA(u2_RDATA),
    .m_axi_u2_RLAST(u2_RLAST),
    .m_axi_u2_RID(u2_RID),
    .m_axi_u2_RUSER(u2_RUSER),
    .m_axi_u2_RRESP(u2_RRESP),
    .m_axi_u2_BVALID(u2_BVALID),
    .m_axi_u2_BREADY(u2_BREADY),
    .m_axi_u2_BRESP(u2_BRESP),
    .m_axi_u2_BID(u2_BID),
    .m_axi_u2_BUSER(u2_BUSER),
    .m_axi_u3_AWVALID(u3_AWVALID),
    .m_axi_u3_AWREADY(u3_AWREADY),
    .m_axi_u3_AWADDR(u3_AWADDR),
    .m_axi_u3_AWID(u3_AWID),
    .m_axi_u3_AWLEN(u3_AWLEN),
    .m_axi_u3_AWSIZE(u3_AWSIZE),
    .m_axi_u3_AWBURST(u3_AWBURST),
    .m_axi_u3_AWLOCK(u3_AWLOCK),
    .m_axi_u3_AWCACHE(u3_AWCACHE),
    .m_axi_u3_AWPROT(u3_AWPROT),
    .m_axi_u3_AWQOS(u3_AWQOS),
    .m_axi_u3_AWREGION(u3_AWREGION),
    .m_axi_u3_AWUSER(u3_AWUSER),
    .m_axi_u3_WVALID(u3_WVALID),
    .m_axi_u3_WREADY(u3_WREADY),
    .m_axi_u3_WDATA(u3_WDATA),
    .m_axi_u3_WSTRB(u3_WSTRB),
    .m_axi_u3_WLAST(u3_WLAST),
    .m_axi_u3_WID(u3_WID),
    .m_axi_u3_WUSER(u3_WUSER),
    .m_axi_u3_ARVALID(u3_ARVALID),
    .m_axi_u3_ARREADY(u3_ARREADY),
    .m_axi_u3_ARADDR(u3_ARADDR),
    .m_axi_u3_ARID(u3_ARID),
    .m_axi_u3_ARLEN(u3_ARLEN),
    .m_axi_u3_ARSIZE(u3_ARSIZE),
    .m_axi_u3_ARBURST(u3_ARBURST),
    .m_axi_u3_ARLOCK(u3_ARLOCK),
    .m_axi_u3_ARCACHE(u3_ARCACHE),
    .m_axi_u3_ARPROT(u3_ARPROT),
    .m_axi_u3_ARQOS(u3_ARQOS),
    .m_axi_u3_ARREGION(u3_ARREGION),
    .m_axi_u3_ARUSER(u3_ARUSER),
    .m_axi_u3_RVALID(u3_RVALID),
    .m_axi_u3_RREADY(u3_RREADY),
    .m_axi_u3_RDATA(u3_RDATA),
    .m_axi_u3_RLAST(u3_RLAST),
    .m_axi_u3_RID(u3_RID),
    .m_axi_u3_RUSER(u3_RUSER),
    .m_axi_u3_RRESP(u3_RRESP),
    .m_axi_u3_BVALID(u3_BVALID),
    .m_axi_u3_BREADY(u3_BREADY),
    .m_axi_u3_BRESP(u3_BRESP),
    .m_axi_u3_BID(u3_BID),
    .m_axi_u3_BUSER(u3_BUSER),
    .m_axi_w0_AWVALID(w0_AWVALID),
    .m_axi_w0_AWREADY(w0_AWREADY),
    .m_axi_w0_AWADDR(w0_AWADDR),
    .m_axi_w0_AWID(w0_AWID),
    .m_axi_w0_AWLEN(w0_AWLEN),
    .m_axi_w0_AWSIZE(w0_AWSIZE),
    .m_axi_w0_AWBURST(w0_AWBURST),
    .m_axi_w0_AWLOCK(w0_AWLOCK),
    .m_axi_w0_AWCACHE(w0_AWCACHE),
    .m_axi_w0_AWPROT(w0_AWPROT),
    .m_axi_w0_AWQOS(w0_AWQOS),
    .m_axi_w0_AWREGION(w0_AWREGION),
    .m_axi_w0_AWUSER(w0_AWUSER),
    .m_axi_w0_WVALID(w0_WVALID),
    .m_axi_w0_WREADY(w0_WREADY),
    .m_axi_w0_WDATA(w0_WDATA),
    .m_axi_w0_WSTRB(w0_WSTRB),
    .m_axi_w0_WLAST(w0_WLAST),
    .m_axi_w0_WID(w0_WID),
    .m_axi_w0_WUSER(w0_WUSER),
    .m_axi_w0_ARVALID(w0_ARVALID),
    .m_axi_w0_ARREADY(w0_ARREADY),
    .m_axi_w0_ARADDR(w0_ARADDR),
    .m_axi_w0_ARID(w0_ARID),
    .m_axi_w0_ARLEN(w0_ARLEN),
    .m_axi_w0_ARSIZE(w0_ARSIZE),
    .m_axi_w0_ARBURST(w0_ARBURST),
    .m_axi_w0_ARLOCK(w0_ARLOCK),
    .m_axi_w0_ARCACHE(w0_ARCACHE),
    .m_axi_w0_ARPROT(w0_ARPROT),
    .m_axi_w0_ARQOS(w0_ARQOS),
    .m_axi_w0_ARREGION(w0_ARREGION),
    .m_axi_w0_ARUSER(w0_ARUSER),
    .m_axi_w0_RVALID(w0_RVALID),
    .m_axi_w0_RREADY(w0_RREADY),
    .m_axi_w0_RDATA(w0_RDATA),
    .m_axi_w0_RLAST(w0_RLAST),
    .m_axi_w0_RID(w0_RID),
    .m_axi_w0_RUSER(w0_RUSER),
    .m_axi_w0_RRESP(w0_RRESP),
    .m_axi_w0_BVALID(w0_BVALID),
    .m_axi_w0_BREADY(w0_BREADY),
    .m_axi_w0_BRESP(w0_BRESP),
    .m_axi_w0_BID(w0_BID),
    .m_axi_w0_BUSER(w0_BUSER),
    .m_axi_w1_AWVALID(w1_AWVALID),
    .m_axi_w1_AWREADY(w1_AWREADY),
    .m_axi_w1_AWADDR(w1_AWADDR),
    .m_axi_w1_AWID(w1_AWID),
    .m_axi_w1_AWLEN(w1_AWLEN),
    .m_axi_w1_AWSIZE(w1_AWSIZE),
    .m_axi_w1_AWBURST(w1_AWBURST),
    .m_axi_w1_AWLOCK(w1_AWLOCK),
    .m_axi_w1_AWCACHE(w1_AWCACHE),
    .m_axi_w1_AWPROT(w1_AWPROT),
    .m_axi_w1_AWQOS(w1_AWQOS),
    .m_axi_w1_AWREGION(w1_AWREGION),
    .m_axi_w1_AWUSER(w1_AWUSER),
    .m_axi_w1_WVALID(w1_WVALID),
    .m_axi_w1_WREADY(w1_WREADY),
    .m_axi_w1_WDATA(w1_WDATA),
    .m_axi_w1_WSTRB(w1_WSTRB),
    .m_axi_w1_WLAST(w1_WLAST),
    .m_axi_w1_WID(w1_WID),
    .m_axi_w1_WUSER(w1_WUSER),
    .m_axi_w1_ARVALID(w1_ARVALID),
    .m_axi_w1_ARREADY(w1_ARREADY),
    .m_axi_w1_ARADDR(w1_ARADDR),
    .m_axi_w1_ARID(w1_ARID),
    .m_axi_w1_ARLEN(w1_ARLEN),
    .m_axi_w1_ARSIZE(w1_ARSIZE),
    .m_axi_w1_ARBURST(w1_ARBURST),
    .m_axi_w1_ARLOCK(w1_ARLOCK),
    .m_axi_w1_ARCACHE(w1_ARCACHE),
    .m_axi_w1_ARPROT(w1_ARPROT),
    .m_axi_w1_ARQOS(w1_ARQOS),
    .m_axi_w1_ARREGION(w1_ARREGION),
    .m_axi_w1_ARUSER(w1_ARUSER),
    .m_axi_w1_RVALID(w1_RVALID),
    .m_axi_w1_RREADY(w1_RREADY),
    .m_axi_w1_RDATA(w1_RDATA),
    .m_axi_w1_RLAST(w1_RLAST),
    .m_axi_w1_RID(w1_RID),
    .m_axi_w1_RUSER(w1_RUSER),
    .m_axi_w1_RRESP(w1_RRESP),
    .m_axi_w1_BVALID(w1_BVALID),
    .m_axi_w1_BREADY(w1_BREADY),
    .m_axi_w1_BRESP(w1_BRESP),
    .m_axi_w1_BID(w1_BID),
    .m_axi_w1_BUSER(w1_BUSER),
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


wire    AESL_axi_master_a0_ready;
wire    AESL_axi_master_a0_done;
AESL_axi_master_a0 AESL_AXI_MASTER_a0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_a0_AWVALID (a0_AWVALID),
    .TRAN_a0_AWREADY (a0_AWREADY),
    .TRAN_a0_AWADDR (a0_AWADDR),
    .TRAN_a0_AWID (a0_AWID),
    .TRAN_a0_AWLEN (a0_AWLEN),
    .TRAN_a0_AWSIZE (a0_AWSIZE),
    .TRAN_a0_AWBURST (a0_AWBURST),
    .TRAN_a0_AWLOCK (a0_AWLOCK),
    .TRAN_a0_AWCACHE (a0_AWCACHE),
    .TRAN_a0_AWPROT (a0_AWPROT),
    .TRAN_a0_AWQOS (a0_AWQOS),
    .TRAN_a0_AWREGION (a0_AWREGION),
    .TRAN_a0_AWUSER (a0_AWUSER),
    .TRAN_a0_WVALID (a0_WVALID),
    .TRAN_a0_WREADY (a0_WREADY),
    .TRAN_a0_WDATA (a0_WDATA),
    .TRAN_a0_WSTRB (a0_WSTRB),
    .TRAN_a0_WLAST (a0_WLAST),
    .TRAN_a0_WID (a0_WID),
    .TRAN_a0_WUSER (a0_WUSER),
    .TRAN_a0_ARVALID (a0_ARVALID),
    .TRAN_a0_ARREADY (a0_ARREADY),
    .TRAN_a0_ARADDR (a0_ARADDR),
    .TRAN_a0_ARID (a0_ARID),
    .TRAN_a0_ARLEN (a0_ARLEN),
    .TRAN_a0_ARSIZE (a0_ARSIZE),
    .TRAN_a0_ARBURST (a0_ARBURST),
    .TRAN_a0_ARLOCK (a0_ARLOCK),
    .TRAN_a0_ARCACHE (a0_ARCACHE),
    .TRAN_a0_ARPROT (a0_ARPROT),
    .TRAN_a0_ARQOS (a0_ARQOS),
    .TRAN_a0_ARREGION (a0_ARREGION),
    .TRAN_a0_ARUSER (a0_ARUSER),
    .TRAN_a0_RVALID (a0_RVALID),
    .TRAN_a0_RREADY (a0_RREADY),
    .TRAN_a0_RDATA (a0_RDATA),
    .TRAN_a0_RLAST (a0_RLAST),
    .TRAN_a0_RID (a0_RID),
    .TRAN_a0_RUSER (a0_RUSER),
    .TRAN_a0_RRESP (a0_RRESP),
    .TRAN_a0_BVALID (a0_BVALID),
    .TRAN_a0_BREADY (a0_BREADY),
    .TRAN_a0_BRESP (a0_BRESP),
    .TRAN_a0_BID (a0_BID),
    .TRAN_a0_BUSER (a0_BUSER),
    .ready (AESL_axi_master_a0_ready),
    .done  (AESL_axi_master_a0_done)
);
assign    AESL_axi_master_a0_ready    =   ready;
assign    AESL_axi_master_a0_done    =   AESL_done_delay;
wire    AESL_axi_master_a1_ready;
wire    AESL_axi_master_a1_done;
AESL_axi_master_a1 AESL_AXI_MASTER_a1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_a1_AWVALID (a1_AWVALID),
    .TRAN_a1_AWREADY (a1_AWREADY),
    .TRAN_a1_AWADDR (a1_AWADDR),
    .TRAN_a1_AWID (a1_AWID),
    .TRAN_a1_AWLEN (a1_AWLEN),
    .TRAN_a1_AWSIZE (a1_AWSIZE),
    .TRAN_a1_AWBURST (a1_AWBURST),
    .TRAN_a1_AWLOCK (a1_AWLOCK),
    .TRAN_a1_AWCACHE (a1_AWCACHE),
    .TRAN_a1_AWPROT (a1_AWPROT),
    .TRAN_a1_AWQOS (a1_AWQOS),
    .TRAN_a1_AWREGION (a1_AWREGION),
    .TRAN_a1_AWUSER (a1_AWUSER),
    .TRAN_a1_WVALID (a1_WVALID),
    .TRAN_a1_WREADY (a1_WREADY),
    .TRAN_a1_WDATA (a1_WDATA),
    .TRAN_a1_WSTRB (a1_WSTRB),
    .TRAN_a1_WLAST (a1_WLAST),
    .TRAN_a1_WID (a1_WID),
    .TRAN_a1_WUSER (a1_WUSER),
    .TRAN_a1_ARVALID (a1_ARVALID),
    .TRAN_a1_ARREADY (a1_ARREADY),
    .TRAN_a1_ARADDR (a1_ARADDR),
    .TRAN_a1_ARID (a1_ARID),
    .TRAN_a1_ARLEN (a1_ARLEN),
    .TRAN_a1_ARSIZE (a1_ARSIZE),
    .TRAN_a1_ARBURST (a1_ARBURST),
    .TRAN_a1_ARLOCK (a1_ARLOCK),
    .TRAN_a1_ARCACHE (a1_ARCACHE),
    .TRAN_a1_ARPROT (a1_ARPROT),
    .TRAN_a1_ARQOS (a1_ARQOS),
    .TRAN_a1_ARREGION (a1_ARREGION),
    .TRAN_a1_ARUSER (a1_ARUSER),
    .TRAN_a1_RVALID (a1_RVALID),
    .TRAN_a1_RREADY (a1_RREADY),
    .TRAN_a1_RDATA (a1_RDATA),
    .TRAN_a1_RLAST (a1_RLAST),
    .TRAN_a1_RID (a1_RID),
    .TRAN_a1_RUSER (a1_RUSER),
    .TRAN_a1_RRESP (a1_RRESP),
    .TRAN_a1_BVALID (a1_BVALID),
    .TRAN_a1_BREADY (a1_BREADY),
    .TRAN_a1_BRESP (a1_BRESP),
    .TRAN_a1_BID (a1_BID),
    .TRAN_a1_BUSER (a1_BUSER),
    .ready (AESL_axi_master_a1_ready),
    .done  (AESL_axi_master_a1_done)
);
assign    AESL_axi_master_a1_ready    =   ready;
assign    AESL_axi_master_a1_done    =   AESL_done_delay;
wire    AESL_axi_master_a2_ready;
wire    AESL_axi_master_a2_done;
AESL_axi_master_a2 AESL_AXI_MASTER_a2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_a2_AWVALID (a2_AWVALID),
    .TRAN_a2_AWREADY (a2_AWREADY),
    .TRAN_a2_AWADDR (a2_AWADDR),
    .TRAN_a2_AWID (a2_AWID),
    .TRAN_a2_AWLEN (a2_AWLEN),
    .TRAN_a2_AWSIZE (a2_AWSIZE),
    .TRAN_a2_AWBURST (a2_AWBURST),
    .TRAN_a2_AWLOCK (a2_AWLOCK),
    .TRAN_a2_AWCACHE (a2_AWCACHE),
    .TRAN_a2_AWPROT (a2_AWPROT),
    .TRAN_a2_AWQOS (a2_AWQOS),
    .TRAN_a2_AWREGION (a2_AWREGION),
    .TRAN_a2_AWUSER (a2_AWUSER),
    .TRAN_a2_WVALID (a2_WVALID),
    .TRAN_a2_WREADY (a2_WREADY),
    .TRAN_a2_WDATA (a2_WDATA),
    .TRAN_a2_WSTRB (a2_WSTRB),
    .TRAN_a2_WLAST (a2_WLAST),
    .TRAN_a2_WID (a2_WID),
    .TRAN_a2_WUSER (a2_WUSER),
    .TRAN_a2_ARVALID (a2_ARVALID),
    .TRAN_a2_ARREADY (a2_ARREADY),
    .TRAN_a2_ARADDR (a2_ARADDR),
    .TRAN_a2_ARID (a2_ARID),
    .TRAN_a2_ARLEN (a2_ARLEN),
    .TRAN_a2_ARSIZE (a2_ARSIZE),
    .TRAN_a2_ARBURST (a2_ARBURST),
    .TRAN_a2_ARLOCK (a2_ARLOCK),
    .TRAN_a2_ARCACHE (a2_ARCACHE),
    .TRAN_a2_ARPROT (a2_ARPROT),
    .TRAN_a2_ARQOS (a2_ARQOS),
    .TRAN_a2_ARREGION (a2_ARREGION),
    .TRAN_a2_ARUSER (a2_ARUSER),
    .TRAN_a2_RVALID (a2_RVALID),
    .TRAN_a2_RREADY (a2_RREADY),
    .TRAN_a2_RDATA (a2_RDATA),
    .TRAN_a2_RLAST (a2_RLAST),
    .TRAN_a2_RID (a2_RID),
    .TRAN_a2_RUSER (a2_RUSER),
    .TRAN_a2_RRESP (a2_RRESP),
    .TRAN_a2_BVALID (a2_BVALID),
    .TRAN_a2_BREADY (a2_BREADY),
    .TRAN_a2_BRESP (a2_BRESP),
    .TRAN_a2_BID (a2_BID),
    .TRAN_a2_BUSER (a2_BUSER),
    .ready (AESL_axi_master_a2_ready),
    .done  (AESL_axi_master_a2_done)
);
assign    AESL_axi_master_a2_ready    =   ready;
assign    AESL_axi_master_a2_done    =   AESL_done_delay;
wire    AESL_axi_master_l0_ready;
wire    AESL_axi_master_l0_done;
AESL_axi_master_l0 AESL_AXI_MASTER_l0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_l0_AWVALID (l0_AWVALID),
    .TRAN_l0_AWREADY (l0_AWREADY),
    .TRAN_l0_AWADDR (l0_AWADDR),
    .TRAN_l0_AWID (l0_AWID),
    .TRAN_l0_AWLEN (l0_AWLEN),
    .TRAN_l0_AWSIZE (l0_AWSIZE),
    .TRAN_l0_AWBURST (l0_AWBURST),
    .TRAN_l0_AWLOCK (l0_AWLOCK),
    .TRAN_l0_AWCACHE (l0_AWCACHE),
    .TRAN_l0_AWPROT (l0_AWPROT),
    .TRAN_l0_AWQOS (l0_AWQOS),
    .TRAN_l0_AWREGION (l0_AWREGION),
    .TRAN_l0_AWUSER (l0_AWUSER),
    .TRAN_l0_WVALID (l0_WVALID),
    .TRAN_l0_WREADY (l0_WREADY),
    .TRAN_l0_WDATA (l0_WDATA),
    .TRAN_l0_WSTRB (l0_WSTRB),
    .TRAN_l0_WLAST (l0_WLAST),
    .TRAN_l0_WID (l0_WID),
    .TRAN_l0_WUSER (l0_WUSER),
    .TRAN_l0_ARVALID (l0_ARVALID),
    .TRAN_l0_ARREADY (l0_ARREADY),
    .TRAN_l0_ARADDR (l0_ARADDR),
    .TRAN_l0_ARID (l0_ARID),
    .TRAN_l0_ARLEN (l0_ARLEN),
    .TRAN_l0_ARSIZE (l0_ARSIZE),
    .TRAN_l0_ARBURST (l0_ARBURST),
    .TRAN_l0_ARLOCK (l0_ARLOCK),
    .TRAN_l0_ARCACHE (l0_ARCACHE),
    .TRAN_l0_ARPROT (l0_ARPROT),
    .TRAN_l0_ARQOS (l0_ARQOS),
    .TRAN_l0_ARREGION (l0_ARREGION),
    .TRAN_l0_ARUSER (l0_ARUSER),
    .TRAN_l0_RVALID (l0_RVALID),
    .TRAN_l0_RREADY (l0_RREADY),
    .TRAN_l0_RDATA (l0_RDATA),
    .TRAN_l0_RLAST (l0_RLAST),
    .TRAN_l0_RID (l0_RID),
    .TRAN_l0_RUSER (l0_RUSER),
    .TRAN_l0_RRESP (l0_RRESP),
    .TRAN_l0_BVALID (l0_BVALID),
    .TRAN_l0_BREADY (l0_BREADY),
    .TRAN_l0_BRESP (l0_BRESP),
    .TRAN_l0_BID (l0_BID),
    .TRAN_l0_BUSER (l0_BUSER),
    .ready (AESL_axi_master_l0_ready),
    .done  (AESL_axi_master_l0_done)
);
assign    AESL_axi_master_l0_ready    =   ready;
assign    AESL_axi_master_l0_done    =   AESL_done_delay;
wire    AESL_axi_master_l1_ready;
wire    AESL_axi_master_l1_done;
AESL_axi_master_l1 AESL_AXI_MASTER_l1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_l1_AWVALID (l1_AWVALID),
    .TRAN_l1_AWREADY (l1_AWREADY),
    .TRAN_l1_AWADDR (l1_AWADDR),
    .TRAN_l1_AWID (l1_AWID),
    .TRAN_l1_AWLEN (l1_AWLEN),
    .TRAN_l1_AWSIZE (l1_AWSIZE),
    .TRAN_l1_AWBURST (l1_AWBURST),
    .TRAN_l1_AWLOCK (l1_AWLOCK),
    .TRAN_l1_AWCACHE (l1_AWCACHE),
    .TRAN_l1_AWPROT (l1_AWPROT),
    .TRAN_l1_AWQOS (l1_AWQOS),
    .TRAN_l1_AWREGION (l1_AWREGION),
    .TRAN_l1_AWUSER (l1_AWUSER),
    .TRAN_l1_WVALID (l1_WVALID),
    .TRAN_l1_WREADY (l1_WREADY),
    .TRAN_l1_WDATA (l1_WDATA),
    .TRAN_l1_WSTRB (l1_WSTRB),
    .TRAN_l1_WLAST (l1_WLAST),
    .TRAN_l1_WID (l1_WID),
    .TRAN_l1_WUSER (l1_WUSER),
    .TRAN_l1_ARVALID (l1_ARVALID),
    .TRAN_l1_ARREADY (l1_ARREADY),
    .TRAN_l1_ARADDR (l1_ARADDR),
    .TRAN_l1_ARID (l1_ARID),
    .TRAN_l1_ARLEN (l1_ARLEN),
    .TRAN_l1_ARSIZE (l1_ARSIZE),
    .TRAN_l1_ARBURST (l1_ARBURST),
    .TRAN_l1_ARLOCK (l1_ARLOCK),
    .TRAN_l1_ARCACHE (l1_ARCACHE),
    .TRAN_l1_ARPROT (l1_ARPROT),
    .TRAN_l1_ARQOS (l1_ARQOS),
    .TRAN_l1_ARREGION (l1_ARREGION),
    .TRAN_l1_ARUSER (l1_ARUSER),
    .TRAN_l1_RVALID (l1_RVALID),
    .TRAN_l1_RREADY (l1_RREADY),
    .TRAN_l1_RDATA (l1_RDATA),
    .TRAN_l1_RLAST (l1_RLAST),
    .TRAN_l1_RID (l1_RID),
    .TRAN_l1_RUSER (l1_RUSER),
    .TRAN_l1_RRESP (l1_RRESP),
    .TRAN_l1_BVALID (l1_BVALID),
    .TRAN_l1_BREADY (l1_BREADY),
    .TRAN_l1_BRESP (l1_BRESP),
    .TRAN_l1_BID (l1_BID),
    .TRAN_l1_BUSER (l1_BUSER),
    .ready (AESL_axi_master_l1_ready),
    .done  (AESL_axi_master_l1_done)
);
assign    AESL_axi_master_l1_ready    =   ready;
assign    AESL_axi_master_l1_done    =   AESL_done_delay;
wire    AESL_axi_master_l2_ready;
wire    AESL_axi_master_l2_done;
AESL_axi_master_l2 AESL_AXI_MASTER_l2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_l2_AWVALID (l2_AWVALID),
    .TRAN_l2_AWREADY (l2_AWREADY),
    .TRAN_l2_AWADDR (l2_AWADDR),
    .TRAN_l2_AWID (l2_AWID),
    .TRAN_l2_AWLEN (l2_AWLEN),
    .TRAN_l2_AWSIZE (l2_AWSIZE),
    .TRAN_l2_AWBURST (l2_AWBURST),
    .TRAN_l2_AWLOCK (l2_AWLOCK),
    .TRAN_l2_AWCACHE (l2_AWCACHE),
    .TRAN_l2_AWPROT (l2_AWPROT),
    .TRAN_l2_AWQOS (l2_AWQOS),
    .TRAN_l2_AWREGION (l2_AWREGION),
    .TRAN_l2_AWUSER (l2_AWUSER),
    .TRAN_l2_WVALID (l2_WVALID),
    .TRAN_l2_WREADY (l2_WREADY),
    .TRAN_l2_WDATA (l2_WDATA),
    .TRAN_l2_WSTRB (l2_WSTRB),
    .TRAN_l2_WLAST (l2_WLAST),
    .TRAN_l2_WID (l2_WID),
    .TRAN_l2_WUSER (l2_WUSER),
    .TRAN_l2_ARVALID (l2_ARVALID),
    .TRAN_l2_ARREADY (l2_ARREADY),
    .TRAN_l2_ARADDR (l2_ARADDR),
    .TRAN_l2_ARID (l2_ARID),
    .TRAN_l2_ARLEN (l2_ARLEN),
    .TRAN_l2_ARSIZE (l2_ARSIZE),
    .TRAN_l2_ARBURST (l2_ARBURST),
    .TRAN_l2_ARLOCK (l2_ARLOCK),
    .TRAN_l2_ARCACHE (l2_ARCACHE),
    .TRAN_l2_ARPROT (l2_ARPROT),
    .TRAN_l2_ARQOS (l2_ARQOS),
    .TRAN_l2_ARREGION (l2_ARREGION),
    .TRAN_l2_ARUSER (l2_ARUSER),
    .TRAN_l2_RVALID (l2_RVALID),
    .TRAN_l2_RREADY (l2_RREADY),
    .TRAN_l2_RDATA (l2_RDATA),
    .TRAN_l2_RLAST (l2_RLAST),
    .TRAN_l2_RID (l2_RID),
    .TRAN_l2_RUSER (l2_RUSER),
    .TRAN_l2_RRESP (l2_RRESP),
    .TRAN_l2_BVALID (l2_BVALID),
    .TRAN_l2_BREADY (l2_BREADY),
    .TRAN_l2_BRESP (l2_BRESP),
    .TRAN_l2_BID (l2_BID),
    .TRAN_l2_BUSER (l2_BUSER),
    .ready (AESL_axi_master_l2_ready),
    .done  (AESL_axi_master_l2_done)
);
assign    AESL_axi_master_l2_ready    =   ready;
assign    AESL_axi_master_l2_done    =   AESL_done_delay;
wire    AESL_axi_master_u0_ready;
wire    AESL_axi_master_u0_done;
AESL_axi_master_u0 AESL_AXI_MASTER_u0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_u0_AWVALID (u0_AWVALID),
    .TRAN_u0_AWREADY (u0_AWREADY),
    .TRAN_u0_AWADDR (u0_AWADDR),
    .TRAN_u0_AWID (u0_AWID),
    .TRAN_u0_AWLEN (u0_AWLEN),
    .TRAN_u0_AWSIZE (u0_AWSIZE),
    .TRAN_u0_AWBURST (u0_AWBURST),
    .TRAN_u0_AWLOCK (u0_AWLOCK),
    .TRAN_u0_AWCACHE (u0_AWCACHE),
    .TRAN_u0_AWPROT (u0_AWPROT),
    .TRAN_u0_AWQOS (u0_AWQOS),
    .TRAN_u0_AWREGION (u0_AWREGION),
    .TRAN_u0_AWUSER (u0_AWUSER),
    .TRAN_u0_WVALID (u0_WVALID),
    .TRAN_u0_WREADY (u0_WREADY),
    .TRAN_u0_WDATA (u0_WDATA),
    .TRAN_u0_WSTRB (u0_WSTRB),
    .TRAN_u0_WLAST (u0_WLAST),
    .TRAN_u0_WID (u0_WID),
    .TRAN_u0_WUSER (u0_WUSER),
    .TRAN_u0_ARVALID (u0_ARVALID),
    .TRAN_u0_ARREADY (u0_ARREADY),
    .TRAN_u0_ARADDR (u0_ARADDR),
    .TRAN_u0_ARID (u0_ARID),
    .TRAN_u0_ARLEN (u0_ARLEN),
    .TRAN_u0_ARSIZE (u0_ARSIZE),
    .TRAN_u0_ARBURST (u0_ARBURST),
    .TRAN_u0_ARLOCK (u0_ARLOCK),
    .TRAN_u0_ARCACHE (u0_ARCACHE),
    .TRAN_u0_ARPROT (u0_ARPROT),
    .TRAN_u0_ARQOS (u0_ARQOS),
    .TRAN_u0_ARREGION (u0_ARREGION),
    .TRAN_u0_ARUSER (u0_ARUSER),
    .TRAN_u0_RVALID (u0_RVALID),
    .TRAN_u0_RREADY (u0_RREADY),
    .TRAN_u0_RDATA (u0_RDATA),
    .TRAN_u0_RLAST (u0_RLAST),
    .TRAN_u0_RID (u0_RID),
    .TRAN_u0_RUSER (u0_RUSER),
    .TRAN_u0_RRESP (u0_RRESP),
    .TRAN_u0_BVALID (u0_BVALID),
    .TRAN_u0_BREADY (u0_BREADY),
    .TRAN_u0_BRESP (u0_BRESP),
    .TRAN_u0_BID (u0_BID),
    .TRAN_u0_BUSER (u0_BUSER),
    .ready (AESL_axi_master_u0_ready),
    .done  (AESL_axi_master_u0_done)
);
assign    AESL_axi_master_u0_ready    =   ready;
assign    AESL_axi_master_u0_done    =   AESL_done_delay;
wire    AESL_axi_master_u1_ready;
wire    AESL_axi_master_u1_done;
AESL_axi_master_u1 AESL_AXI_MASTER_u1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_u1_AWVALID (u1_AWVALID),
    .TRAN_u1_AWREADY (u1_AWREADY),
    .TRAN_u1_AWADDR (u1_AWADDR),
    .TRAN_u1_AWID (u1_AWID),
    .TRAN_u1_AWLEN (u1_AWLEN),
    .TRAN_u1_AWSIZE (u1_AWSIZE),
    .TRAN_u1_AWBURST (u1_AWBURST),
    .TRAN_u1_AWLOCK (u1_AWLOCK),
    .TRAN_u1_AWCACHE (u1_AWCACHE),
    .TRAN_u1_AWPROT (u1_AWPROT),
    .TRAN_u1_AWQOS (u1_AWQOS),
    .TRAN_u1_AWREGION (u1_AWREGION),
    .TRAN_u1_AWUSER (u1_AWUSER),
    .TRAN_u1_WVALID (u1_WVALID),
    .TRAN_u1_WREADY (u1_WREADY),
    .TRAN_u1_WDATA (u1_WDATA),
    .TRAN_u1_WSTRB (u1_WSTRB),
    .TRAN_u1_WLAST (u1_WLAST),
    .TRAN_u1_WID (u1_WID),
    .TRAN_u1_WUSER (u1_WUSER),
    .TRAN_u1_ARVALID (u1_ARVALID),
    .TRAN_u1_ARREADY (u1_ARREADY),
    .TRAN_u1_ARADDR (u1_ARADDR),
    .TRAN_u1_ARID (u1_ARID),
    .TRAN_u1_ARLEN (u1_ARLEN),
    .TRAN_u1_ARSIZE (u1_ARSIZE),
    .TRAN_u1_ARBURST (u1_ARBURST),
    .TRAN_u1_ARLOCK (u1_ARLOCK),
    .TRAN_u1_ARCACHE (u1_ARCACHE),
    .TRAN_u1_ARPROT (u1_ARPROT),
    .TRAN_u1_ARQOS (u1_ARQOS),
    .TRAN_u1_ARREGION (u1_ARREGION),
    .TRAN_u1_ARUSER (u1_ARUSER),
    .TRAN_u1_RVALID (u1_RVALID),
    .TRAN_u1_RREADY (u1_RREADY),
    .TRAN_u1_RDATA (u1_RDATA),
    .TRAN_u1_RLAST (u1_RLAST),
    .TRAN_u1_RID (u1_RID),
    .TRAN_u1_RUSER (u1_RUSER),
    .TRAN_u1_RRESP (u1_RRESP),
    .TRAN_u1_BVALID (u1_BVALID),
    .TRAN_u1_BREADY (u1_BREADY),
    .TRAN_u1_BRESP (u1_BRESP),
    .TRAN_u1_BID (u1_BID),
    .TRAN_u1_BUSER (u1_BUSER),
    .ready (AESL_axi_master_u1_ready),
    .done  (AESL_axi_master_u1_done)
);
assign    AESL_axi_master_u1_ready    =   ready;
assign    AESL_axi_master_u1_done    =   AESL_done_delay;
wire    AESL_axi_master_u2_ready;
wire    AESL_axi_master_u2_done;
AESL_axi_master_u2 AESL_AXI_MASTER_u2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_u2_AWVALID (u2_AWVALID),
    .TRAN_u2_AWREADY (u2_AWREADY),
    .TRAN_u2_AWADDR (u2_AWADDR),
    .TRAN_u2_AWID (u2_AWID),
    .TRAN_u2_AWLEN (u2_AWLEN),
    .TRAN_u2_AWSIZE (u2_AWSIZE),
    .TRAN_u2_AWBURST (u2_AWBURST),
    .TRAN_u2_AWLOCK (u2_AWLOCK),
    .TRAN_u2_AWCACHE (u2_AWCACHE),
    .TRAN_u2_AWPROT (u2_AWPROT),
    .TRAN_u2_AWQOS (u2_AWQOS),
    .TRAN_u2_AWREGION (u2_AWREGION),
    .TRAN_u2_AWUSER (u2_AWUSER),
    .TRAN_u2_WVALID (u2_WVALID),
    .TRAN_u2_WREADY (u2_WREADY),
    .TRAN_u2_WDATA (u2_WDATA),
    .TRAN_u2_WSTRB (u2_WSTRB),
    .TRAN_u2_WLAST (u2_WLAST),
    .TRAN_u2_WID (u2_WID),
    .TRAN_u2_WUSER (u2_WUSER),
    .TRAN_u2_ARVALID (u2_ARVALID),
    .TRAN_u2_ARREADY (u2_ARREADY),
    .TRAN_u2_ARADDR (u2_ARADDR),
    .TRAN_u2_ARID (u2_ARID),
    .TRAN_u2_ARLEN (u2_ARLEN),
    .TRAN_u2_ARSIZE (u2_ARSIZE),
    .TRAN_u2_ARBURST (u2_ARBURST),
    .TRAN_u2_ARLOCK (u2_ARLOCK),
    .TRAN_u2_ARCACHE (u2_ARCACHE),
    .TRAN_u2_ARPROT (u2_ARPROT),
    .TRAN_u2_ARQOS (u2_ARQOS),
    .TRAN_u2_ARREGION (u2_ARREGION),
    .TRAN_u2_ARUSER (u2_ARUSER),
    .TRAN_u2_RVALID (u2_RVALID),
    .TRAN_u2_RREADY (u2_RREADY),
    .TRAN_u2_RDATA (u2_RDATA),
    .TRAN_u2_RLAST (u2_RLAST),
    .TRAN_u2_RID (u2_RID),
    .TRAN_u2_RUSER (u2_RUSER),
    .TRAN_u2_RRESP (u2_RRESP),
    .TRAN_u2_BVALID (u2_BVALID),
    .TRAN_u2_BREADY (u2_BREADY),
    .TRAN_u2_BRESP (u2_BRESP),
    .TRAN_u2_BID (u2_BID),
    .TRAN_u2_BUSER (u2_BUSER),
    .ready (AESL_axi_master_u2_ready),
    .done  (AESL_axi_master_u2_done)
);
assign    AESL_axi_master_u2_ready    =   ready;
assign    AESL_axi_master_u2_done    =   AESL_done_delay;
wire    AESL_axi_master_u3_ready;
wire    AESL_axi_master_u3_done;
AESL_axi_master_u3 AESL_AXI_MASTER_u3(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_u3_AWVALID (u3_AWVALID),
    .TRAN_u3_AWREADY (u3_AWREADY),
    .TRAN_u3_AWADDR (u3_AWADDR),
    .TRAN_u3_AWID (u3_AWID),
    .TRAN_u3_AWLEN (u3_AWLEN),
    .TRAN_u3_AWSIZE (u3_AWSIZE),
    .TRAN_u3_AWBURST (u3_AWBURST),
    .TRAN_u3_AWLOCK (u3_AWLOCK),
    .TRAN_u3_AWCACHE (u3_AWCACHE),
    .TRAN_u3_AWPROT (u3_AWPROT),
    .TRAN_u3_AWQOS (u3_AWQOS),
    .TRAN_u3_AWREGION (u3_AWREGION),
    .TRAN_u3_AWUSER (u3_AWUSER),
    .TRAN_u3_WVALID (u3_WVALID),
    .TRAN_u3_WREADY (u3_WREADY),
    .TRAN_u3_WDATA (u3_WDATA),
    .TRAN_u3_WSTRB (u3_WSTRB),
    .TRAN_u3_WLAST (u3_WLAST),
    .TRAN_u3_WID (u3_WID),
    .TRAN_u3_WUSER (u3_WUSER),
    .TRAN_u3_ARVALID (u3_ARVALID),
    .TRAN_u3_ARREADY (u3_ARREADY),
    .TRAN_u3_ARADDR (u3_ARADDR),
    .TRAN_u3_ARID (u3_ARID),
    .TRAN_u3_ARLEN (u3_ARLEN),
    .TRAN_u3_ARSIZE (u3_ARSIZE),
    .TRAN_u3_ARBURST (u3_ARBURST),
    .TRAN_u3_ARLOCK (u3_ARLOCK),
    .TRAN_u3_ARCACHE (u3_ARCACHE),
    .TRAN_u3_ARPROT (u3_ARPROT),
    .TRAN_u3_ARQOS (u3_ARQOS),
    .TRAN_u3_ARREGION (u3_ARREGION),
    .TRAN_u3_ARUSER (u3_ARUSER),
    .TRAN_u3_RVALID (u3_RVALID),
    .TRAN_u3_RREADY (u3_RREADY),
    .TRAN_u3_RDATA (u3_RDATA),
    .TRAN_u3_RLAST (u3_RLAST),
    .TRAN_u3_RID (u3_RID),
    .TRAN_u3_RUSER (u3_RUSER),
    .TRAN_u3_RRESP (u3_RRESP),
    .TRAN_u3_BVALID (u3_BVALID),
    .TRAN_u3_BREADY (u3_BREADY),
    .TRAN_u3_BRESP (u3_BRESP),
    .TRAN_u3_BID (u3_BID),
    .TRAN_u3_BUSER (u3_BUSER),
    .ready (AESL_axi_master_u3_ready),
    .done  (AESL_axi_master_u3_done)
);
assign    AESL_axi_master_u3_ready    =   ready;
assign    AESL_axi_master_u3_done    =   AESL_done_delay;
wire    AESL_axi_master_w0_ready;
wire    AESL_axi_master_w0_done;
AESL_axi_master_w0 AESL_AXI_MASTER_w0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_w0_AWVALID (w0_AWVALID),
    .TRAN_w0_AWREADY (w0_AWREADY),
    .TRAN_w0_AWADDR (w0_AWADDR),
    .TRAN_w0_AWID (w0_AWID),
    .TRAN_w0_AWLEN (w0_AWLEN),
    .TRAN_w0_AWSIZE (w0_AWSIZE),
    .TRAN_w0_AWBURST (w0_AWBURST),
    .TRAN_w0_AWLOCK (w0_AWLOCK),
    .TRAN_w0_AWCACHE (w0_AWCACHE),
    .TRAN_w0_AWPROT (w0_AWPROT),
    .TRAN_w0_AWQOS (w0_AWQOS),
    .TRAN_w0_AWREGION (w0_AWREGION),
    .TRAN_w0_AWUSER (w0_AWUSER),
    .TRAN_w0_WVALID (w0_WVALID),
    .TRAN_w0_WREADY (w0_WREADY),
    .TRAN_w0_WDATA (w0_WDATA),
    .TRAN_w0_WSTRB (w0_WSTRB),
    .TRAN_w0_WLAST (w0_WLAST),
    .TRAN_w0_WID (w0_WID),
    .TRAN_w0_WUSER (w0_WUSER),
    .TRAN_w0_ARVALID (w0_ARVALID),
    .TRAN_w0_ARREADY (w0_ARREADY),
    .TRAN_w0_ARADDR (w0_ARADDR),
    .TRAN_w0_ARID (w0_ARID),
    .TRAN_w0_ARLEN (w0_ARLEN),
    .TRAN_w0_ARSIZE (w0_ARSIZE),
    .TRAN_w0_ARBURST (w0_ARBURST),
    .TRAN_w0_ARLOCK (w0_ARLOCK),
    .TRAN_w0_ARCACHE (w0_ARCACHE),
    .TRAN_w0_ARPROT (w0_ARPROT),
    .TRAN_w0_ARQOS (w0_ARQOS),
    .TRAN_w0_ARREGION (w0_ARREGION),
    .TRAN_w0_ARUSER (w0_ARUSER),
    .TRAN_w0_RVALID (w0_RVALID),
    .TRAN_w0_RREADY (w0_RREADY),
    .TRAN_w0_RDATA (w0_RDATA),
    .TRAN_w0_RLAST (w0_RLAST),
    .TRAN_w0_RID (w0_RID),
    .TRAN_w0_RUSER (w0_RUSER),
    .TRAN_w0_RRESP (w0_RRESP),
    .TRAN_w0_BVALID (w0_BVALID),
    .TRAN_w0_BREADY (w0_BREADY),
    .TRAN_w0_BRESP (w0_BRESP),
    .TRAN_w0_BID (w0_BID),
    .TRAN_w0_BUSER (w0_BUSER),
    .ready (AESL_axi_master_w0_ready),
    .done  (AESL_axi_master_w0_done)
);
assign    AESL_axi_master_w0_ready    =   ready;
assign    AESL_axi_master_w0_done    =   AESL_done_delay;
wire    AESL_axi_master_w1_ready;
wire    AESL_axi_master_w1_done;
AESL_axi_master_w1 AESL_AXI_MASTER_w1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_w1_AWVALID (w1_AWVALID),
    .TRAN_w1_AWREADY (w1_AWREADY),
    .TRAN_w1_AWADDR (w1_AWADDR),
    .TRAN_w1_AWID (w1_AWID),
    .TRAN_w1_AWLEN (w1_AWLEN),
    .TRAN_w1_AWSIZE (w1_AWSIZE),
    .TRAN_w1_AWBURST (w1_AWBURST),
    .TRAN_w1_AWLOCK (w1_AWLOCK),
    .TRAN_w1_AWCACHE (w1_AWCACHE),
    .TRAN_w1_AWPROT (w1_AWPROT),
    .TRAN_w1_AWQOS (w1_AWQOS),
    .TRAN_w1_AWREGION (w1_AWREGION),
    .TRAN_w1_AWUSER (w1_AWUSER),
    .TRAN_w1_WVALID (w1_WVALID),
    .TRAN_w1_WREADY (w1_WREADY),
    .TRAN_w1_WDATA (w1_WDATA),
    .TRAN_w1_WSTRB (w1_WSTRB),
    .TRAN_w1_WLAST (w1_WLAST),
    .TRAN_w1_WID (w1_WID),
    .TRAN_w1_WUSER (w1_WUSER),
    .TRAN_w1_ARVALID (w1_ARVALID),
    .TRAN_w1_ARREADY (w1_ARREADY),
    .TRAN_w1_ARADDR (w1_ARADDR),
    .TRAN_w1_ARID (w1_ARID),
    .TRAN_w1_ARLEN (w1_ARLEN),
    .TRAN_w1_ARSIZE (w1_ARSIZE),
    .TRAN_w1_ARBURST (w1_ARBURST),
    .TRAN_w1_ARLOCK (w1_ARLOCK),
    .TRAN_w1_ARCACHE (w1_ARCACHE),
    .TRAN_w1_ARPROT (w1_ARPROT),
    .TRAN_w1_ARQOS (w1_ARQOS),
    .TRAN_w1_ARREGION (w1_ARREGION),
    .TRAN_w1_ARUSER (w1_ARUSER),
    .TRAN_w1_RVALID (w1_RVALID),
    .TRAN_w1_RREADY (w1_RREADY),
    .TRAN_w1_RDATA (w1_RDATA),
    .TRAN_w1_RLAST (w1_RLAST),
    .TRAN_w1_RID (w1_RID),
    .TRAN_w1_RUSER (w1_RUSER),
    .TRAN_w1_RRESP (w1_RRESP),
    .TRAN_w1_BVALID (w1_BVALID),
    .TRAN_w1_BREADY (w1_BREADY),
    .TRAN_w1_BRESP (w1_BRESP),
    .TRAN_w1_BID (w1_BID),
    .TRAN_w1_BUSER (w1_BUSER),
    .ready (AESL_axi_master_w1_ready),
    .done  (AESL_axi_master_w1_done)
);
assign    AESL_axi_master_w1_ready    =   ready;
assign    AESL_axi_master_w1_done    =   AESL_done_delay;

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


reg end_a0;
reg [31:0] size_a0;
reg [31:0] size_a0_backup;
reg end_a1;
reg [31:0] size_a1;
reg [31:0] size_a1_backup;
reg end_a2;
reg [31:0] size_a2;
reg [31:0] size_a2_backup;
reg end_l0;
reg [31:0] size_l0;
reg [31:0] size_l0_backup;
reg end_l1;
reg [31:0] size_l1;
reg [31:0] size_l1_backup;
reg end_u0;
reg [31:0] size_u0;
reg [31:0] size_u0_backup;
reg end_u1;
reg [31:0] size_u1;
reg [31:0] size_u1_backup;
reg end_u2;
reg [31:0] size_u2;
reg [31:0] size_u2_backup;
reg end_u3;
reg [31:0] size_u3;
reg [31:0] size_u3_backup;
reg end_w0;
reg [31:0] size_w0;
reg [31:0] size_w0_backup;
reg end_w1;
reg [31:0] size_w1;
reg [31:0] size_w1_backup;
reg end_a_ptr;
reg [31:0] size_a_ptr;
reg [31:0] size_a_ptr_backup;
reg end_a_idx;
reg [31:0] size_a_idx;
reg [31:0] size_a_idx_backup;
reg end_a_val;
reg [31:0] size_a_val;
reg [31:0] size_a_val_backup;
reg end_l_ptr;
reg [31:0] size_l_ptr;
reg [31:0] size_l_ptr_backup;
reg end_l_idx;
reg [31:0] size_l_idx;
reg [31:0] size_l_idx_backup;
reg end_l_val;
reg [31:0] size_l_val;
reg [31:0] size_l_val_backup;
reg end_u_ptr;
reg [31:0] size_u_ptr;
reg [31:0] size_u_ptr_backup;
reg end_u_idx;
reg [31:0] size_u_idx;
reg [31:0] size_u_idx_backup;
reg end_u_val;
reg [31:0] size_u_val;
reg [31:0] size_u_val_backup;
reg end_u_diag_pos;
reg [31:0] size_u_diag_pos;
reg [31:0] size_u_diag_pos_backup;
reg end_work;
reg [31:0] size_work;
reg [31:0] size_work_backup;
reg end_mark;
reg [31:0] size_mark;
reg [31:0] size_mark_backup;
reg end_n;
reg [31:0] size_n;
reg [31:0] size_n_backup;
reg end_pivot_eps;
reg [31:0] size_pivot_eps;
reg [31:0] size_pivot_eps_backup;
reg end_l2;
reg [31:0] size_l2;
reg [31:0] size_l2_backup;
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

reg dump_tvout_finish_l2;

initial begin : dump_tvout_runtime_sign_l2
    integer fp;
    dump_tvout_finish_l2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_l2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_l2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_l2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_l2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_l2 = 1;
end


reg dump_tvout_finish_u2;

initial begin : dump_tvout_runtime_sign_u2
    integer fp;
    dump_tvout_finish_u2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_u2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_u2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_u2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_u2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_u2 = 1;
end


reg dump_tvout_finish_w0;

initial begin : dump_tvout_runtime_sign_w0
    integer fp;
    dump_tvout_finish_w0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_w0_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_w0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_w0_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_w0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_w0 = 1;
end


reg dump_tvout_finish_w1;

initial begin : dump_tvout_runtime_sign_w1
    integer fp;
    dump_tvout_finish_w1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_w1_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_w1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_w1_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_w1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_w1 = 1;
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
