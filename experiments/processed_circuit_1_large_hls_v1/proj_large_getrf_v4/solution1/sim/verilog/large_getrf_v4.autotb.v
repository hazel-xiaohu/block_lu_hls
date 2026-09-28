// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      large_getrf_v4
`define AUTOTB_DUT_INST AESL_inst_large_getrf_v4
`define AUTOTB_TOP      apatb_large_getrf_v4_top
`define AUTOTB_LAT_RESULT_FILE "large_getrf_v4.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "large_getrf_v4.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_large_getrf_v4_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 2.50

`define AESL_DEPTH_v4a0 1
`define AESL_DEPTH_v4a1 1
`define AESL_DEPTH_v4a2 1
`define AESL_DEPTH_v4l0 1
`define AESL_DEPTH_v4l1 1
`define AESL_DEPTH_v4l2 1
`define AESL_DEPTH_v4u0 1
`define AESL_DEPTH_v4u1 1
`define AESL_DEPTH_v4u2 1
`define AESL_DEPTH_v4u3 1
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
`define AESL_DEPTH_n 1
`define AESL_DEPTH_pivot_eps 1
`define AESL_DEPTH_status 1
`define AESL_DEPTH_muladds 1
`define AESL_DEPTH_divisions 1
`define AUTOTB_TVIN_v4a0  "../tv/cdatafile/c.large_getrf_v4.autotvin_v4a0.dat"
`define AUTOTB_TVIN_v4a1  "../tv/cdatafile/c.large_getrf_v4.autotvin_v4a1.dat"
`define AUTOTB_TVIN_v4a2  "../tv/cdatafile/c.large_getrf_v4.autotvin_v4a2.dat"
`define AUTOTB_TVIN_v4l0  "../tv/cdatafile/c.large_getrf_v4.autotvin_v4l0.dat"
`define AUTOTB_TVIN_v4l1  "../tv/cdatafile/c.large_getrf_v4.autotvin_v4l1.dat"
`define AUTOTB_TVIN_v4u0  "../tv/cdatafile/c.large_getrf_v4.autotvin_v4u0.dat"
`define AUTOTB_TVIN_v4u1  "../tv/cdatafile/c.large_getrf_v4.autotvin_v4u1.dat"
`define AUTOTB_TVIN_v4u2  "../tv/cdatafile/c.large_getrf_v4.autotvin_v4u2.dat"
`define AUTOTB_TVIN_v4u3  "../tv/cdatafile/c.large_getrf_v4.autotvin_v4u3.dat"
`define AUTOTB_TVIN_a_ptr  "../tv/cdatafile/c.large_getrf_v4.autotvin_a_ptr.dat"
`define AUTOTB_TVIN_a_idx  "../tv/cdatafile/c.large_getrf_v4.autotvin_a_idx.dat"
`define AUTOTB_TVIN_a_val  "../tv/cdatafile/c.large_getrf_v4.autotvin_a_val.dat"
`define AUTOTB_TVIN_l_ptr  "../tv/cdatafile/c.large_getrf_v4.autotvin_l_ptr.dat"
`define AUTOTB_TVIN_l_idx  "../tv/cdatafile/c.large_getrf_v4.autotvin_l_idx.dat"
`define AUTOTB_TVIN_l_val  "../tv/cdatafile/c.large_getrf_v4.autotvin_l_val.dat"
`define AUTOTB_TVIN_u_ptr  "../tv/cdatafile/c.large_getrf_v4.autotvin_u_ptr.dat"
`define AUTOTB_TVIN_u_idx  "../tv/cdatafile/c.large_getrf_v4.autotvin_u_idx.dat"
`define AUTOTB_TVIN_u_val  "../tv/cdatafile/c.large_getrf_v4.autotvin_u_val.dat"
`define AUTOTB_TVIN_u_diag_pos  "../tv/cdatafile/c.large_getrf_v4.autotvin_u_diag_pos.dat"
`define AUTOTB_TVIN_n  "../tv/cdatafile/c.large_getrf_v4.autotvin_n.dat"
`define AUTOTB_TVIN_pivot_eps  "../tv/cdatafile/c.large_getrf_v4.autotvin_pivot_eps.dat"
`define AUTOTB_TVIN_v4a0_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_v4a0.dat"
`define AUTOTB_TVIN_v4a1_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_v4a1.dat"
`define AUTOTB_TVIN_v4a2_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_v4a2.dat"
`define AUTOTB_TVIN_v4l0_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_v4l0.dat"
`define AUTOTB_TVIN_v4l1_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_v4l1.dat"
`define AUTOTB_TVIN_v4u0_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_v4u0.dat"
`define AUTOTB_TVIN_v4u1_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_v4u1.dat"
`define AUTOTB_TVIN_v4u2_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_v4u2.dat"
`define AUTOTB_TVIN_v4u3_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_v4u3.dat"
`define AUTOTB_TVIN_a_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_a_ptr.dat"
`define AUTOTB_TVIN_a_idx_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_a_idx.dat"
`define AUTOTB_TVIN_a_val_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_a_val.dat"
`define AUTOTB_TVIN_l_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_l_ptr.dat"
`define AUTOTB_TVIN_l_idx_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_l_idx.dat"
`define AUTOTB_TVIN_l_val_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_l_val.dat"
`define AUTOTB_TVIN_u_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_u_ptr.dat"
`define AUTOTB_TVIN_u_idx_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_u_idx.dat"
`define AUTOTB_TVIN_u_val_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_u_val.dat"
`define AUTOTB_TVIN_u_diag_pos_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_u_diag_pos.dat"
`define AUTOTB_TVIN_n_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_n.dat"
`define AUTOTB_TVIN_pivot_eps_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvin_pivot_eps.dat"
`define AUTOTB_TVOUT_v4l2  "../tv/cdatafile/c.large_getrf_v4.autotvout_v4l2.dat"
`define AUTOTB_TVOUT_v4u2  "../tv/cdatafile/c.large_getrf_v4.autotvout_v4u2.dat"
`define AUTOTB_TVOUT_status  "../tv/cdatafile/c.large_getrf_v4.autotvout_status.dat"
`define AUTOTB_TVOUT_muladds  "../tv/cdatafile/c.large_getrf_v4.autotvout_muladds.dat"
`define AUTOTB_TVOUT_divisions  "../tv/cdatafile/c.large_getrf_v4.autotvout_divisions.dat"
`define AUTOTB_TVOUT_v4l2_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_v4l2.dat"
`define AUTOTB_TVOUT_v4u2_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_v4u2.dat"
`define AUTOTB_TVOUT_status_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_status.dat"
`define AUTOTB_TVOUT_muladds_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_muladds.dat"
`define AUTOTB_TVOUT_divisions_out_wrapc  "../tv/rtldatafile/rtl.large_getrf_v4.autotvout_divisions.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_a_idx = 1;
parameter LENGTH_a_ptr = 1;
parameter LENGTH_a_val = 1;
parameter LENGTH_divisions = 1;
parameter LENGTH_l_idx = 1;
parameter LENGTH_l_ptr = 1;
parameter LENGTH_l_val = 1;
parameter LENGTH_muladds = 1;
parameter LENGTH_n = 1;
parameter LENGTH_pivot_eps = 1;
parameter LENGTH_status = 1;
parameter LENGTH_u_diag_pos = 1;
parameter LENGTH_u_idx = 1;
parameter LENGTH_u_ptr = 1;
parameter LENGTH_u_val = 1;
parameter LENGTH_v4a0 = 2625;
parameter LENGTH_v4a1 = 45624;
parameter LENGTH_v4a2 = 45624;
parameter LENGTH_v4l0 = 2625;
parameter LENGTH_v4l1 = 24124;
parameter LENGTH_v4l2 = 24124;
parameter LENGTH_v4u0 = 2625;
parameter LENGTH_v4u1 = 24124;
parameter LENGTH_v4u2 = 24124;
parameter LENGTH_v4u3 = 2624;

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
wire  v4a0_AWVALID;
wire  v4a0_AWREADY;
wire [63 : 0] v4a0_AWADDR;
wire [0 : 0] v4a0_AWID;
wire [7 : 0] v4a0_AWLEN;
wire [2 : 0] v4a0_AWSIZE;
wire [1 : 0] v4a0_AWBURST;
wire [1 : 0] v4a0_AWLOCK;
wire [3 : 0] v4a0_AWCACHE;
wire [2 : 0] v4a0_AWPROT;
wire [3 : 0] v4a0_AWQOS;
wire [3 : 0] v4a0_AWREGION;
wire [0 : 0] v4a0_AWUSER;
wire  v4a0_WVALID;
wire  v4a0_WREADY;
wire [31 : 0] v4a0_WDATA;
wire [3 : 0] v4a0_WSTRB;
wire  v4a0_WLAST;
wire [0 : 0] v4a0_WID;
wire [0 : 0] v4a0_WUSER;
wire  v4a0_ARVALID;
wire  v4a0_ARREADY;
wire [63 : 0] v4a0_ARADDR;
wire [0 : 0] v4a0_ARID;
wire [7 : 0] v4a0_ARLEN;
wire [2 : 0] v4a0_ARSIZE;
wire [1 : 0] v4a0_ARBURST;
wire [1 : 0] v4a0_ARLOCK;
wire [3 : 0] v4a0_ARCACHE;
wire [2 : 0] v4a0_ARPROT;
wire [3 : 0] v4a0_ARQOS;
wire [3 : 0] v4a0_ARREGION;
wire [0 : 0] v4a0_ARUSER;
wire  v4a0_RVALID;
wire  v4a0_RREADY;
wire [31 : 0] v4a0_RDATA;
wire  v4a0_RLAST;
wire [0 : 0] v4a0_RID;
wire [0 : 0] v4a0_RUSER;
wire [1 : 0] v4a0_RRESP;
wire  v4a0_BVALID;
wire  v4a0_BREADY;
wire [1 : 0] v4a0_BRESP;
wire [0 : 0] v4a0_BID;
wire [0 : 0] v4a0_BUSER;
wire  v4a1_AWVALID;
wire  v4a1_AWREADY;
wire [63 : 0] v4a1_AWADDR;
wire [0 : 0] v4a1_AWID;
wire [7 : 0] v4a1_AWLEN;
wire [2 : 0] v4a1_AWSIZE;
wire [1 : 0] v4a1_AWBURST;
wire [1 : 0] v4a1_AWLOCK;
wire [3 : 0] v4a1_AWCACHE;
wire [2 : 0] v4a1_AWPROT;
wire [3 : 0] v4a1_AWQOS;
wire [3 : 0] v4a1_AWREGION;
wire [0 : 0] v4a1_AWUSER;
wire  v4a1_WVALID;
wire  v4a1_WREADY;
wire [31 : 0] v4a1_WDATA;
wire [3 : 0] v4a1_WSTRB;
wire  v4a1_WLAST;
wire [0 : 0] v4a1_WID;
wire [0 : 0] v4a1_WUSER;
wire  v4a1_ARVALID;
wire  v4a1_ARREADY;
wire [63 : 0] v4a1_ARADDR;
wire [0 : 0] v4a1_ARID;
wire [7 : 0] v4a1_ARLEN;
wire [2 : 0] v4a1_ARSIZE;
wire [1 : 0] v4a1_ARBURST;
wire [1 : 0] v4a1_ARLOCK;
wire [3 : 0] v4a1_ARCACHE;
wire [2 : 0] v4a1_ARPROT;
wire [3 : 0] v4a1_ARQOS;
wire [3 : 0] v4a1_ARREGION;
wire [0 : 0] v4a1_ARUSER;
wire  v4a1_RVALID;
wire  v4a1_RREADY;
wire [31 : 0] v4a1_RDATA;
wire  v4a1_RLAST;
wire [0 : 0] v4a1_RID;
wire [0 : 0] v4a1_RUSER;
wire [1 : 0] v4a1_RRESP;
wire  v4a1_BVALID;
wire  v4a1_BREADY;
wire [1 : 0] v4a1_BRESP;
wire [0 : 0] v4a1_BID;
wire [0 : 0] v4a1_BUSER;
wire  v4a2_AWVALID;
wire  v4a2_AWREADY;
wire [63 : 0] v4a2_AWADDR;
wire [0 : 0] v4a2_AWID;
wire [7 : 0] v4a2_AWLEN;
wire [2 : 0] v4a2_AWSIZE;
wire [1 : 0] v4a2_AWBURST;
wire [1 : 0] v4a2_AWLOCK;
wire [3 : 0] v4a2_AWCACHE;
wire [2 : 0] v4a2_AWPROT;
wire [3 : 0] v4a2_AWQOS;
wire [3 : 0] v4a2_AWREGION;
wire [0 : 0] v4a2_AWUSER;
wire  v4a2_WVALID;
wire  v4a2_WREADY;
wire [31 : 0] v4a2_WDATA;
wire [3 : 0] v4a2_WSTRB;
wire  v4a2_WLAST;
wire [0 : 0] v4a2_WID;
wire [0 : 0] v4a2_WUSER;
wire  v4a2_ARVALID;
wire  v4a2_ARREADY;
wire [63 : 0] v4a2_ARADDR;
wire [0 : 0] v4a2_ARID;
wire [7 : 0] v4a2_ARLEN;
wire [2 : 0] v4a2_ARSIZE;
wire [1 : 0] v4a2_ARBURST;
wire [1 : 0] v4a2_ARLOCK;
wire [3 : 0] v4a2_ARCACHE;
wire [2 : 0] v4a2_ARPROT;
wire [3 : 0] v4a2_ARQOS;
wire [3 : 0] v4a2_ARREGION;
wire [0 : 0] v4a2_ARUSER;
wire  v4a2_RVALID;
wire  v4a2_RREADY;
wire [31 : 0] v4a2_RDATA;
wire  v4a2_RLAST;
wire [0 : 0] v4a2_RID;
wire [0 : 0] v4a2_RUSER;
wire [1 : 0] v4a2_RRESP;
wire  v4a2_BVALID;
wire  v4a2_BREADY;
wire [1 : 0] v4a2_BRESP;
wire [0 : 0] v4a2_BID;
wire [0 : 0] v4a2_BUSER;
wire  v4l0_AWVALID;
wire  v4l0_AWREADY;
wire [63 : 0] v4l0_AWADDR;
wire [0 : 0] v4l0_AWID;
wire [7 : 0] v4l0_AWLEN;
wire [2 : 0] v4l0_AWSIZE;
wire [1 : 0] v4l0_AWBURST;
wire [1 : 0] v4l0_AWLOCK;
wire [3 : 0] v4l0_AWCACHE;
wire [2 : 0] v4l0_AWPROT;
wire [3 : 0] v4l0_AWQOS;
wire [3 : 0] v4l0_AWREGION;
wire [0 : 0] v4l0_AWUSER;
wire  v4l0_WVALID;
wire  v4l0_WREADY;
wire [31 : 0] v4l0_WDATA;
wire [3 : 0] v4l0_WSTRB;
wire  v4l0_WLAST;
wire [0 : 0] v4l0_WID;
wire [0 : 0] v4l0_WUSER;
wire  v4l0_ARVALID;
wire  v4l0_ARREADY;
wire [63 : 0] v4l0_ARADDR;
wire [0 : 0] v4l0_ARID;
wire [7 : 0] v4l0_ARLEN;
wire [2 : 0] v4l0_ARSIZE;
wire [1 : 0] v4l0_ARBURST;
wire [1 : 0] v4l0_ARLOCK;
wire [3 : 0] v4l0_ARCACHE;
wire [2 : 0] v4l0_ARPROT;
wire [3 : 0] v4l0_ARQOS;
wire [3 : 0] v4l0_ARREGION;
wire [0 : 0] v4l0_ARUSER;
wire  v4l0_RVALID;
wire  v4l0_RREADY;
wire [31 : 0] v4l0_RDATA;
wire  v4l0_RLAST;
wire [0 : 0] v4l0_RID;
wire [0 : 0] v4l0_RUSER;
wire [1 : 0] v4l0_RRESP;
wire  v4l0_BVALID;
wire  v4l0_BREADY;
wire [1 : 0] v4l0_BRESP;
wire [0 : 0] v4l0_BID;
wire [0 : 0] v4l0_BUSER;
wire  v4l1_AWVALID;
wire  v4l1_AWREADY;
wire [63 : 0] v4l1_AWADDR;
wire [0 : 0] v4l1_AWID;
wire [7 : 0] v4l1_AWLEN;
wire [2 : 0] v4l1_AWSIZE;
wire [1 : 0] v4l1_AWBURST;
wire [1 : 0] v4l1_AWLOCK;
wire [3 : 0] v4l1_AWCACHE;
wire [2 : 0] v4l1_AWPROT;
wire [3 : 0] v4l1_AWQOS;
wire [3 : 0] v4l1_AWREGION;
wire [0 : 0] v4l1_AWUSER;
wire  v4l1_WVALID;
wire  v4l1_WREADY;
wire [31 : 0] v4l1_WDATA;
wire [3 : 0] v4l1_WSTRB;
wire  v4l1_WLAST;
wire [0 : 0] v4l1_WID;
wire [0 : 0] v4l1_WUSER;
wire  v4l1_ARVALID;
wire  v4l1_ARREADY;
wire [63 : 0] v4l1_ARADDR;
wire [0 : 0] v4l1_ARID;
wire [7 : 0] v4l1_ARLEN;
wire [2 : 0] v4l1_ARSIZE;
wire [1 : 0] v4l1_ARBURST;
wire [1 : 0] v4l1_ARLOCK;
wire [3 : 0] v4l1_ARCACHE;
wire [2 : 0] v4l1_ARPROT;
wire [3 : 0] v4l1_ARQOS;
wire [3 : 0] v4l1_ARREGION;
wire [0 : 0] v4l1_ARUSER;
wire  v4l1_RVALID;
wire  v4l1_RREADY;
wire [31 : 0] v4l1_RDATA;
wire  v4l1_RLAST;
wire [0 : 0] v4l1_RID;
wire [0 : 0] v4l1_RUSER;
wire [1 : 0] v4l1_RRESP;
wire  v4l1_BVALID;
wire  v4l1_BREADY;
wire [1 : 0] v4l1_BRESP;
wire [0 : 0] v4l1_BID;
wire [0 : 0] v4l1_BUSER;
wire  v4l2_AWVALID;
wire  v4l2_AWREADY;
wire [63 : 0] v4l2_AWADDR;
wire [0 : 0] v4l2_AWID;
wire [7 : 0] v4l2_AWLEN;
wire [2 : 0] v4l2_AWSIZE;
wire [1 : 0] v4l2_AWBURST;
wire [1 : 0] v4l2_AWLOCK;
wire [3 : 0] v4l2_AWCACHE;
wire [2 : 0] v4l2_AWPROT;
wire [3 : 0] v4l2_AWQOS;
wire [3 : 0] v4l2_AWREGION;
wire [0 : 0] v4l2_AWUSER;
wire  v4l2_WVALID;
wire  v4l2_WREADY;
wire [31 : 0] v4l2_WDATA;
wire [3 : 0] v4l2_WSTRB;
wire  v4l2_WLAST;
wire [0 : 0] v4l2_WID;
wire [0 : 0] v4l2_WUSER;
wire  v4l2_ARVALID;
wire  v4l2_ARREADY;
wire [63 : 0] v4l2_ARADDR;
wire [0 : 0] v4l2_ARID;
wire [7 : 0] v4l2_ARLEN;
wire [2 : 0] v4l2_ARSIZE;
wire [1 : 0] v4l2_ARBURST;
wire [1 : 0] v4l2_ARLOCK;
wire [3 : 0] v4l2_ARCACHE;
wire [2 : 0] v4l2_ARPROT;
wire [3 : 0] v4l2_ARQOS;
wire [3 : 0] v4l2_ARREGION;
wire [0 : 0] v4l2_ARUSER;
wire  v4l2_RVALID;
wire  v4l2_RREADY;
wire [31 : 0] v4l2_RDATA;
wire  v4l2_RLAST;
wire [0 : 0] v4l2_RID;
wire [0 : 0] v4l2_RUSER;
wire [1 : 0] v4l2_RRESP;
wire  v4l2_BVALID;
wire  v4l2_BREADY;
wire [1 : 0] v4l2_BRESP;
wire [0 : 0] v4l2_BID;
wire [0 : 0] v4l2_BUSER;
wire  v4u0_AWVALID;
wire  v4u0_AWREADY;
wire [63 : 0] v4u0_AWADDR;
wire [0 : 0] v4u0_AWID;
wire [7 : 0] v4u0_AWLEN;
wire [2 : 0] v4u0_AWSIZE;
wire [1 : 0] v4u0_AWBURST;
wire [1 : 0] v4u0_AWLOCK;
wire [3 : 0] v4u0_AWCACHE;
wire [2 : 0] v4u0_AWPROT;
wire [3 : 0] v4u0_AWQOS;
wire [3 : 0] v4u0_AWREGION;
wire [0 : 0] v4u0_AWUSER;
wire  v4u0_WVALID;
wire  v4u0_WREADY;
wire [31 : 0] v4u0_WDATA;
wire [3 : 0] v4u0_WSTRB;
wire  v4u0_WLAST;
wire [0 : 0] v4u0_WID;
wire [0 : 0] v4u0_WUSER;
wire  v4u0_ARVALID;
wire  v4u0_ARREADY;
wire [63 : 0] v4u0_ARADDR;
wire [0 : 0] v4u0_ARID;
wire [7 : 0] v4u0_ARLEN;
wire [2 : 0] v4u0_ARSIZE;
wire [1 : 0] v4u0_ARBURST;
wire [1 : 0] v4u0_ARLOCK;
wire [3 : 0] v4u0_ARCACHE;
wire [2 : 0] v4u0_ARPROT;
wire [3 : 0] v4u0_ARQOS;
wire [3 : 0] v4u0_ARREGION;
wire [0 : 0] v4u0_ARUSER;
wire  v4u0_RVALID;
wire  v4u0_RREADY;
wire [31 : 0] v4u0_RDATA;
wire  v4u0_RLAST;
wire [0 : 0] v4u0_RID;
wire [0 : 0] v4u0_RUSER;
wire [1 : 0] v4u0_RRESP;
wire  v4u0_BVALID;
wire  v4u0_BREADY;
wire [1 : 0] v4u0_BRESP;
wire [0 : 0] v4u0_BID;
wire [0 : 0] v4u0_BUSER;
wire  v4u1_AWVALID;
wire  v4u1_AWREADY;
wire [63 : 0] v4u1_AWADDR;
wire [0 : 0] v4u1_AWID;
wire [7 : 0] v4u1_AWLEN;
wire [2 : 0] v4u1_AWSIZE;
wire [1 : 0] v4u1_AWBURST;
wire [1 : 0] v4u1_AWLOCK;
wire [3 : 0] v4u1_AWCACHE;
wire [2 : 0] v4u1_AWPROT;
wire [3 : 0] v4u1_AWQOS;
wire [3 : 0] v4u1_AWREGION;
wire [0 : 0] v4u1_AWUSER;
wire  v4u1_WVALID;
wire  v4u1_WREADY;
wire [31 : 0] v4u1_WDATA;
wire [3 : 0] v4u1_WSTRB;
wire  v4u1_WLAST;
wire [0 : 0] v4u1_WID;
wire [0 : 0] v4u1_WUSER;
wire  v4u1_ARVALID;
wire  v4u1_ARREADY;
wire [63 : 0] v4u1_ARADDR;
wire [0 : 0] v4u1_ARID;
wire [7 : 0] v4u1_ARLEN;
wire [2 : 0] v4u1_ARSIZE;
wire [1 : 0] v4u1_ARBURST;
wire [1 : 0] v4u1_ARLOCK;
wire [3 : 0] v4u1_ARCACHE;
wire [2 : 0] v4u1_ARPROT;
wire [3 : 0] v4u1_ARQOS;
wire [3 : 0] v4u1_ARREGION;
wire [0 : 0] v4u1_ARUSER;
wire  v4u1_RVALID;
wire  v4u1_RREADY;
wire [31 : 0] v4u1_RDATA;
wire  v4u1_RLAST;
wire [0 : 0] v4u1_RID;
wire [0 : 0] v4u1_RUSER;
wire [1 : 0] v4u1_RRESP;
wire  v4u1_BVALID;
wire  v4u1_BREADY;
wire [1 : 0] v4u1_BRESP;
wire [0 : 0] v4u1_BID;
wire [0 : 0] v4u1_BUSER;
wire  v4u2_AWVALID;
wire  v4u2_AWREADY;
wire [63 : 0] v4u2_AWADDR;
wire [0 : 0] v4u2_AWID;
wire [7 : 0] v4u2_AWLEN;
wire [2 : 0] v4u2_AWSIZE;
wire [1 : 0] v4u2_AWBURST;
wire [1 : 0] v4u2_AWLOCK;
wire [3 : 0] v4u2_AWCACHE;
wire [2 : 0] v4u2_AWPROT;
wire [3 : 0] v4u2_AWQOS;
wire [3 : 0] v4u2_AWREGION;
wire [0 : 0] v4u2_AWUSER;
wire  v4u2_WVALID;
wire  v4u2_WREADY;
wire [31 : 0] v4u2_WDATA;
wire [3 : 0] v4u2_WSTRB;
wire  v4u2_WLAST;
wire [0 : 0] v4u2_WID;
wire [0 : 0] v4u2_WUSER;
wire  v4u2_ARVALID;
wire  v4u2_ARREADY;
wire [63 : 0] v4u2_ARADDR;
wire [0 : 0] v4u2_ARID;
wire [7 : 0] v4u2_ARLEN;
wire [2 : 0] v4u2_ARSIZE;
wire [1 : 0] v4u2_ARBURST;
wire [1 : 0] v4u2_ARLOCK;
wire [3 : 0] v4u2_ARCACHE;
wire [2 : 0] v4u2_ARPROT;
wire [3 : 0] v4u2_ARQOS;
wire [3 : 0] v4u2_ARREGION;
wire [0 : 0] v4u2_ARUSER;
wire  v4u2_RVALID;
wire  v4u2_RREADY;
wire [31 : 0] v4u2_RDATA;
wire  v4u2_RLAST;
wire [0 : 0] v4u2_RID;
wire [0 : 0] v4u2_RUSER;
wire [1 : 0] v4u2_RRESP;
wire  v4u2_BVALID;
wire  v4u2_BREADY;
wire [1 : 0] v4u2_BRESP;
wire [0 : 0] v4u2_BID;
wire [0 : 0] v4u2_BUSER;
wire  v4u3_AWVALID;
wire  v4u3_AWREADY;
wire [63 : 0] v4u3_AWADDR;
wire [0 : 0] v4u3_AWID;
wire [7 : 0] v4u3_AWLEN;
wire [2 : 0] v4u3_AWSIZE;
wire [1 : 0] v4u3_AWBURST;
wire [1 : 0] v4u3_AWLOCK;
wire [3 : 0] v4u3_AWCACHE;
wire [2 : 0] v4u3_AWPROT;
wire [3 : 0] v4u3_AWQOS;
wire [3 : 0] v4u3_AWREGION;
wire [0 : 0] v4u3_AWUSER;
wire  v4u3_WVALID;
wire  v4u3_WREADY;
wire [31 : 0] v4u3_WDATA;
wire [3 : 0] v4u3_WSTRB;
wire  v4u3_WLAST;
wire [0 : 0] v4u3_WID;
wire [0 : 0] v4u3_WUSER;
wire  v4u3_ARVALID;
wire  v4u3_ARREADY;
wire [63 : 0] v4u3_ARADDR;
wire [0 : 0] v4u3_ARID;
wire [7 : 0] v4u3_ARLEN;
wire [2 : 0] v4u3_ARSIZE;
wire [1 : 0] v4u3_ARBURST;
wire [1 : 0] v4u3_ARLOCK;
wire [3 : 0] v4u3_ARCACHE;
wire [2 : 0] v4u3_ARPROT;
wire [3 : 0] v4u3_ARQOS;
wire [3 : 0] v4u3_ARREGION;
wire [0 : 0] v4u3_ARUSER;
wire  v4u3_RVALID;
wire  v4u3_RREADY;
wire [31 : 0] v4u3_RDATA;
wire  v4u3_RLAST;
wire [0 : 0] v4u3_RID;
wire [0 : 0] v4u3_RUSER;
wire [1 : 0] v4u3_RRESP;
wire  v4u3_BVALID;
wire  v4u3_BREADY;
wire [1 : 0] v4u3_BRESP;
wire [0 : 0] v4u3_BID;
wire [0 : 0] v4u3_BUSER;
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
    .m_axi_v4a0_AWVALID(v4a0_AWVALID),
    .m_axi_v4a0_AWREADY(v4a0_AWREADY),
    .m_axi_v4a0_AWADDR(v4a0_AWADDR),
    .m_axi_v4a0_AWID(v4a0_AWID),
    .m_axi_v4a0_AWLEN(v4a0_AWLEN),
    .m_axi_v4a0_AWSIZE(v4a0_AWSIZE),
    .m_axi_v4a0_AWBURST(v4a0_AWBURST),
    .m_axi_v4a0_AWLOCK(v4a0_AWLOCK),
    .m_axi_v4a0_AWCACHE(v4a0_AWCACHE),
    .m_axi_v4a0_AWPROT(v4a0_AWPROT),
    .m_axi_v4a0_AWQOS(v4a0_AWQOS),
    .m_axi_v4a0_AWREGION(v4a0_AWREGION),
    .m_axi_v4a0_AWUSER(v4a0_AWUSER),
    .m_axi_v4a0_WVALID(v4a0_WVALID),
    .m_axi_v4a0_WREADY(v4a0_WREADY),
    .m_axi_v4a0_WDATA(v4a0_WDATA),
    .m_axi_v4a0_WSTRB(v4a0_WSTRB),
    .m_axi_v4a0_WLAST(v4a0_WLAST),
    .m_axi_v4a0_WID(v4a0_WID),
    .m_axi_v4a0_WUSER(v4a0_WUSER),
    .m_axi_v4a0_ARVALID(v4a0_ARVALID),
    .m_axi_v4a0_ARREADY(v4a0_ARREADY),
    .m_axi_v4a0_ARADDR(v4a0_ARADDR),
    .m_axi_v4a0_ARID(v4a0_ARID),
    .m_axi_v4a0_ARLEN(v4a0_ARLEN),
    .m_axi_v4a0_ARSIZE(v4a0_ARSIZE),
    .m_axi_v4a0_ARBURST(v4a0_ARBURST),
    .m_axi_v4a0_ARLOCK(v4a0_ARLOCK),
    .m_axi_v4a0_ARCACHE(v4a0_ARCACHE),
    .m_axi_v4a0_ARPROT(v4a0_ARPROT),
    .m_axi_v4a0_ARQOS(v4a0_ARQOS),
    .m_axi_v4a0_ARREGION(v4a0_ARREGION),
    .m_axi_v4a0_ARUSER(v4a0_ARUSER),
    .m_axi_v4a0_RVALID(v4a0_RVALID),
    .m_axi_v4a0_RREADY(v4a0_RREADY),
    .m_axi_v4a0_RDATA(v4a0_RDATA),
    .m_axi_v4a0_RLAST(v4a0_RLAST),
    .m_axi_v4a0_RID(v4a0_RID),
    .m_axi_v4a0_RUSER(v4a0_RUSER),
    .m_axi_v4a0_RRESP(v4a0_RRESP),
    .m_axi_v4a0_BVALID(v4a0_BVALID),
    .m_axi_v4a0_BREADY(v4a0_BREADY),
    .m_axi_v4a0_BRESP(v4a0_BRESP),
    .m_axi_v4a0_BID(v4a0_BID),
    .m_axi_v4a0_BUSER(v4a0_BUSER),
    .m_axi_v4a1_AWVALID(v4a1_AWVALID),
    .m_axi_v4a1_AWREADY(v4a1_AWREADY),
    .m_axi_v4a1_AWADDR(v4a1_AWADDR),
    .m_axi_v4a1_AWID(v4a1_AWID),
    .m_axi_v4a1_AWLEN(v4a1_AWLEN),
    .m_axi_v4a1_AWSIZE(v4a1_AWSIZE),
    .m_axi_v4a1_AWBURST(v4a1_AWBURST),
    .m_axi_v4a1_AWLOCK(v4a1_AWLOCK),
    .m_axi_v4a1_AWCACHE(v4a1_AWCACHE),
    .m_axi_v4a1_AWPROT(v4a1_AWPROT),
    .m_axi_v4a1_AWQOS(v4a1_AWQOS),
    .m_axi_v4a1_AWREGION(v4a1_AWREGION),
    .m_axi_v4a1_AWUSER(v4a1_AWUSER),
    .m_axi_v4a1_WVALID(v4a1_WVALID),
    .m_axi_v4a1_WREADY(v4a1_WREADY),
    .m_axi_v4a1_WDATA(v4a1_WDATA),
    .m_axi_v4a1_WSTRB(v4a1_WSTRB),
    .m_axi_v4a1_WLAST(v4a1_WLAST),
    .m_axi_v4a1_WID(v4a1_WID),
    .m_axi_v4a1_WUSER(v4a1_WUSER),
    .m_axi_v4a1_ARVALID(v4a1_ARVALID),
    .m_axi_v4a1_ARREADY(v4a1_ARREADY),
    .m_axi_v4a1_ARADDR(v4a1_ARADDR),
    .m_axi_v4a1_ARID(v4a1_ARID),
    .m_axi_v4a1_ARLEN(v4a1_ARLEN),
    .m_axi_v4a1_ARSIZE(v4a1_ARSIZE),
    .m_axi_v4a1_ARBURST(v4a1_ARBURST),
    .m_axi_v4a1_ARLOCK(v4a1_ARLOCK),
    .m_axi_v4a1_ARCACHE(v4a1_ARCACHE),
    .m_axi_v4a1_ARPROT(v4a1_ARPROT),
    .m_axi_v4a1_ARQOS(v4a1_ARQOS),
    .m_axi_v4a1_ARREGION(v4a1_ARREGION),
    .m_axi_v4a1_ARUSER(v4a1_ARUSER),
    .m_axi_v4a1_RVALID(v4a1_RVALID),
    .m_axi_v4a1_RREADY(v4a1_RREADY),
    .m_axi_v4a1_RDATA(v4a1_RDATA),
    .m_axi_v4a1_RLAST(v4a1_RLAST),
    .m_axi_v4a1_RID(v4a1_RID),
    .m_axi_v4a1_RUSER(v4a1_RUSER),
    .m_axi_v4a1_RRESP(v4a1_RRESP),
    .m_axi_v4a1_BVALID(v4a1_BVALID),
    .m_axi_v4a1_BREADY(v4a1_BREADY),
    .m_axi_v4a1_BRESP(v4a1_BRESP),
    .m_axi_v4a1_BID(v4a1_BID),
    .m_axi_v4a1_BUSER(v4a1_BUSER),
    .m_axi_v4a2_AWVALID(v4a2_AWVALID),
    .m_axi_v4a2_AWREADY(v4a2_AWREADY),
    .m_axi_v4a2_AWADDR(v4a2_AWADDR),
    .m_axi_v4a2_AWID(v4a2_AWID),
    .m_axi_v4a2_AWLEN(v4a2_AWLEN),
    .m_axi_v4a2_AWSIZE(v4a2_AWSIZE),
    .m_axi_v4a2_AWBURST(v4a2_AWBURST),
    .m_axi_v4a2_AWLOCK(v4a2_AWLOCK),
    .m_axi_v4a2_AWCACHE(v4a2_AWCACHE),
    .m_axi_v4a2_AWPROT(v4a2_AWPROT),
    .m_axi_v4a2_AWQOS(v4a2_AWQOS),
    .m_axi_v4a2_AWREGION(v4a2_AWREGION),
    .m_axi_v4a2_AWUSER(v4a2_AWUSER),
    .m_axi_v4a2_WVALID(v4a2_WVALID),
    .m_axi_v4a2_WREADY(v4a2_WREADY),
    .m_axi_v4a2_WDATA(v4a2_WDATA),
    .m_axi_v4a2_WSTRB(v4a2_WSTRB),
    .m_axi_v4a2_WLAST(v4a2_WLAST),
    .m_axi_v4a2_WID(v4a2_WID),
    .m_axi_v4a2_WUSER(v4a2_WUSER),
    .m_axi_v4a2_ARVALID(v4a2_ARVALID),
    .m_axi_v4a2_ARREADY(v4a2_ARREADY),
    .m_axi_v4a2_ARADDR(v4a2_ARADDR),
    .m_axi_v4a2_ARID(v4a2_ARID),
    .m_axi_v4a2_ARLEN(v4a2_ARLEN),
    .m_axi_v4a2_ARSIZE(v4a2_ARSIZE),
    .m_axi_v4a2_ARBURST(v4a2_ARBURST),
    .m_axi_v4a2_ARLOCK(v4a2_ARLOCK),
    .m_axi_v4a2_ARCACHE(v4a2_ARCACHE),
    .m_axi_v4a2_ARPROT(v4a2_ARPROT),
    .m_axi_v4a2_ARQOS(v4a2_ARQOS),
    .m_axi_v4a2_ARREGION(v4a2_ARREGION),
    .m_axi_v4a2_ARUSER(v4a2_ARUSER),
    .m_axi_v4a2_RVALID(v4a2_RVALID),
    .m_axi_v4a2_RREADY(v4a2_RREADY),
    .m_axi_v4a2_RDATA(v4a2_RDATA),
    .m_axi_v4a2_RLAST(v4a2_RLAST),
    .m_axi_v4a2_RID(v4a2_RID),
    .m_axi_v4a2_RUSER(v4a2_RUSER),
    .m_axi_v4a2_RRESP(v4a2_RRESP),
    .m_axi_v4a2_BVALID(v4a2_BVALID),
    .m_axi_v4a2_BREADY(v4a2_BREADY),
    .m_axi_v4a2_BRESP(v4a2_BRESP),
    .m_axi_v4a2_BID(v4a2_BID),
    .m_axi_v4a2_BUSER(v4a2_BUSER),
    .m_axi_v4l0_AWVALID(v4l0_AWVALID),
    .m_axi_v4l0_AWREADY(v4l0_AWREADY),
    .m_axi_v4l0_AWADDR(v4l0_AWADDR),
    .m_axi_v4l0_AWID(v4l0_AWID),
    .m_axi_v4l0_AWLEN(v4l0_AWLEN),
    .m_axi_v4l0_AWSIZE(v4l0_AWSIZE),
    .m_axi_v4l0_AWBURST(v4l0_AWBURST),
    .m_axi_v4l0_AWLOCK(v4l0_AWLOCK),
    .m_axi_v4l0_AWCACHE(v4l0_AWCACHE),
    .m_axi_v4l0_AWPROT(v4l0_AWPROT),
    .m_axi_v4l0_AWQOS(v4l0_AWQOS),
    .m_axi_v4l0_AWREGION(v4l0_AWREGION),
    .m_axi_v4l0_AWUSER(v4l0_AWUSER),
    .m_axi_v4l0_WVALID(v4l0_WVALID),
    .m_axi_v4l0_WREADY(v4l0_WREADY),
    .m_axi_v4l0_WDATA(v4l0_WDATA),
    .m_axi_v4l0_WSTRB(v4l0_WSTRB),
    .m_axi_v4l0_WLAST(v4l0_WLAST),
    .m_axi_v4l0_WID(v4l0_WID),
    .m_axi_v4l0_WUSER(v4l0_WUSER),
    .m_axi_v4l0_ARVALID(v4l0_ARVALID),
    .m_axi_v4l0_ARREADY(v4l0_ARREADY),
    .m_axi_v4l0_ARADDR(v4l0_ARADDR),
    .m_axi_v4l0_ARID(v4l0_ARID),
    .m_axi_v4l0_ARLEN(v4l0_ARLEN),
    .m_axi_v4l0_ARSIZE(v4l0_ARSIZE),
    .m_axi_v4l0_ARBURST(v4l0_ARBURST),
    .m_axi_v4l0_ARLOCK(v4l0_ARLOCK),
    .m_axi_v4l0_ARCACHE(v4l0_ARCACHE),
    .m_axi_v4l0_ARPROT(v4l0_ARPROT),
    .m_axi_v4l0_ARQOS(v4l0_ARQOS),
    .m_axi_v4l0_ARREGION(v4l0_ARREGION),
    .m_axi_v4l0_ARUSER(v4l0_ARUSER),
    .m_axi_v4l0_RVALID(v4l0_RVALID),
    .m_axi_v4l0_RREADY(v4l0_RREADY),
    .m_axi_v4l0_RDATA(v4l0_RDATA),
    .m_axi_v4l0_RLAST(v4l0_RLAST),
    .m_axi_v4l0_RID(v4l0_RID),
    .m_axi_v4l0_RUSER(v4l0_RUSER),
    .m_axi_v4l0_RRESP(v4l0_RRESP),
    .m_axi_v4l0_BVALID(v4l0_BVALID),
    .m_axi_v4l0_BREADY(v4l0_BREADY),
    .m_axi_v4l0_BRESP(v4l0_BRESP),
    .m_axi_v4l0_BID(v4l0_BID),
    .m_axi_v4l0_BUSER(v4l0_BUSER),
    .m_axi_v4l1_AWVALID(v4l1_AWVALID),
    .m_axi_v4l1_AWREADY(v4l1_AWREADY),
    .m_axi_v4l1_AWADDR(v4l1_AWADDR),
    .m_axi_v4l1_AWID(v4l1_AWID),
    .m_axi_v4l1_AWLEN(v4l1_AWLEN),
    .m_axi_v4l1_AWSIZE(v4l1_AWSIZE),
    .m_axi_v4l1_AWBURST(v4l1_AWBURST),
    .m_axi_v4l1_AWLOCK(v4l1_AWLOCK),
    .m_axi_v4l1_AWCACHE(v4l1_AWCACHE),
    .m_axi_v4l1_AWPROT(v4l1_AWPROT),
    .m_axi_v4l1_AWQOS(v4l1_AWQOS),
    .m_axi_v4l1_AWREGION(v4l1_AWREGION),
    .m_axi_v4l1_AWUSER(v4l1_AWUSER),
    .m_axi_v4l1_WVALID(v4l1_WVALID),
    .m_axi_v4l1_WREADY(v4l1_WREADY),
    .m_axi_v4l1_WDATA(v4l1_WDATA),
    .m_axi_v4l1_WSTRB(v4l1_WSTRB),
    .m_axi_v4l1_WLAST(v4l1_WLAST),
    .m_axi_v4l1_WID(v4l1_WID),
    .m_axi_v4l1_WUSER(v4l1_WUSER),
    .m_axi_v4l1_ARVALID(v4l1_ARVALID),
    .m_axi_v4l1_ARREADY(v4l1_ARREADY),
    .m_axi_v4l1_ARADDR(v4l1_ARADDR),
    .m_axi_v4l1_ARID(v4l1_ARID),
    .m_axi_v4l1_ARLEN(v4l1_ARLEN),
    .m_axi_v4l1_ARSIZE(v4l1_ARSIZE),
    .m_axi_v4l1_ARBURST(v4l1_ARBURST),
    .m_axi_v4l1_ARLOCK(v4l1_ARLOCK),
    .m_axi_v4l1_ARCACHE(v4l1_ARCACHE),
    .m_axi_v4l1_ARPROT(v4l1_ARPROT),
    .m_axi_v4l1_ARQOS(v4l1_ARQOS),
    .m_axi_v4l1_ARREGION(v4l1_ARREGION),
    .m_axi_v4l1_ARUSER(v4l1_ARUSER),
    .m_axi_v4l1_RVALID(v4l1_RVALID),
    .m_axi_v4l1_RREADY(v4l1_RREADY),
    .m_axi_v4l1_RDATA(v4l1_RDATA),
    .m_axi_v4l1_RLAST(v4l1_RLAST),
    .m_axi_v4l1_RID(v4l1_RID),
    .m_axi_v4l1_RUSER(v4l1_RUSER),
    .m_axi_v4l1_RRESP(v4l1_RRESP),
    .m_axi_v4l1_BVALID(v4l1_BVALID),
    .m_axi_v4l1_BREADY(v4l1_BREADY),
    .m_axi_v4l1_BRESP(v4l1_BRESP),
    .m_axi_v4l1_BID(v4l1_BID),
    .m_axi_v4l1_BUSER(v4l1_BUSER),
    .m_axi_v4l2_AWVALID(v4l2_AWVALID),
    .m_axi_v4l2_AWREADY(v4l2_AWREADY),
    .m_axi_v4l2_AWADDR(v4l2_AWADDR),
    .m_axi_v4l2_AWID(v4l2_AWID),
    .m_axi_v4l2_AWLEN(v4l2_AWLEN),
    .m_axi_v4l2_AWSIZE(v4l2_AWSIZE),
    .m_axi_v4l2_AWBURST(v4l2_AWBURST),
    .m_axi_v4l2_AWLOCK(v4l2_AWLOCK),
    .m_axi_v4l2_AWCACHE(v4l2_AWCACHE),
    .m_axi_v4l2_AWPROT(v4l2_AWPROT),
    .m_axi_v4l2_AWQOS(v4l2_AWQOS),
    .m_axi_v4l2_AWREGION(v4l2_AWREGION),
    .m_axi_v4l2_AWUSER(v4l2_AWUSER),
    .m_axi_v4l2_WVALID(v4l2_WVALID),
    .m_axi_v4l2_WREADY(v4l2_WREADY),
    .m_axi_v4l2_WDATA(v4l2_WDATA),
    .m_axi_v4l2_WSTRB(v4l2_WSTRB),
    .m_axi_v4l2_WLAST(v4l2_WLAST),
    .m_axi_v4l2_WID(v4l2_WID),
    .m_axi_v4l2_WUSER(v4l2_WUSER),
    .m_axi_v4l2_ARVALID(v4l2_ARVALID),
    .m_axi_v4l2_ARREADY(v4l2_ARREADY),
    .m_axi_v4l2_ARADDR(v4l2_ARADDR),
    .m_axi_v4l2_ARID(v4l2_ARID),
    .m_axi_v4l2_ARLEN(v4l2_ARLEN),
    .m_axi_v4l2_ARSIZE(v4l2_ARSIZE),
    .m_axi_v4l2_ARBURST(v4l2_ARBURST),
    .m_axi_v4l2_ARLOCK(v4l2_ARLOCK),
    .m_axi_v4l2_ARCACHE(v4l2_ARCACHE),
    .m_axi_v4l2_ARPROT(v4l2_ARPROT),
    .m_axi_v4l2_ARQOS(v4l2_ARQOS),
    .m_axi_v4l2_ARREGION(v4l2_ARREGION),
    .m_axi_v4l2_ARUSER(v4l2_ARUSER),
    .m_axi_v4l2_RVALID(v4l2_RVALID),
    .m_axi_v4l2_RREADY(v4l2_RREADY),
    .m_axi_v4l2_RDATA(v4l2_RDATA),
    .m_axi_v4l2_RLAST(v4l2_RLAST),
    .m_axi_v4l2_RID(v4l2_RID),
    .m_axi_v4l2_RUSER(v4l2_RUSER),
    .m_axi_v4l2_RRESP(v4l2_RRESP),
    .m_axi_v4l2_BVALID(v4l2_BVALID),
    .m_axi_v4l2_BREADY(v4l2_BREADY),
    .m_axi_v4l2_BRESP(v4l2_BRESP),
    .m_axi_v4l2_BID(v4l2_BID),
    .m_axi_v4l2_BUSER(v4l2_BUSER),
    .m_axi_v4u0_AWVALID(v4u0_AWVALID),
    .m_axi_v4u0_AWREADY(v4u0_AWREADY),
    .m_axi_v4u0_AWADDR(v4u0_AWADDR),
    .m_axi_v4u0_AWID(v4u0_AWID),
    .m_axi_v4u0_AWLEN(v4u0_AWLEN),
    .m_axi_v4u0_AWSIZE(v4u0_AWSIZE),
    .m_axi_v4u0_AWBURST(v4u0_AWBURST),
    .m_axi_v4u0_AWLOCK(v4u0_AWLOCK),
    .m_axi_v4u0_AWCACHE(v4u0_AWCACHE),
    .m_axi_v4u0_AWPROT(v4u0_AWPROT),
    .m_axi_v4u0_AWQOS(v4u0_AWQOS),
    .m_axi_v4u0_AWREGION(v4u0_AWREGION),
    .m_axi_v4u0_AWUSER(v4u0_AWUSER),
    .m_axi_v4u0_WVALID(v4u0_WVALID),
    .m_axi_v4u0_WREADY(v4u0_WREADY),
    .m_axi_v4u0_WDATA(v4u0_WDATA),
    .m_axi_v4u0_WSTRB(v4u0_WSTRB),
    .m_axi_v4u0_WLAST(v4u0_WLAST),
    .m_axi_v4u0_WID(v4u0_WID),
    .m_axi_v4u0_WUSER(v4u0_WUSER),
    .m_axi_v4u0_ARVALID(v4u0_ARVALID),
    .m_axi_v4u0_ARREADY(v4u0_ARREADY),
    .m_axi_v4u0_ARADDR(v4u0_ARADDR),
    .m_axi_v4u0_ARID(v4u0_ARID),
    .m_axi_v4u0_ARLEN(v4u0_ARLEN),
    .m_axi_v4u0_ARSIZE(v4u0_ARSIZE),
    .m_axi_v4u0_ARBURST(v4u0_ARBURST),
    .m_axi_v4u0_ARLOCK(v4u0_ARLOCK),
    .m_axi_v4u0_ARCACHE(v4u0_ARCACHE),
    .m_axi_v4u0_ARPROT(v4u0_ARPROT),
    .m_axi_v4u0_ARQOS(v4u0_ARQOS),
    .m_axi_v4u0_ARREGION(v4u0_ARREGION),
    .m_axi_v4u0_ARUSER(v4u0_ARUSER),
    .m_axi_v4u0_RVALID(v4u0_RVALID),
    .m_axi_v4u0_RREADY(v4u0_RREADY),
    .m_axi_v4u0_RDATA(v4u0_RDATA),
    .m_axi_v4u0_RLAST(v4u0_RLAST),
    .m_axi_v4u0_RID(v4u0_RID),
    .m_axi_v4u0_RUSER(v4u0_RUSER),
    .m_axi_v4u0_RRESP(v4u0_RRESP),
    .m_axi_v4u0_BVALID(v4u0_BVALID),
    .m_axi_v4u0_BREADY(v4u0_BREADY),
    .m_axi_v4u0_BRESP(v4u0_BRESP),
    .m_axi_v4u0_BID(v4u0_BID),
    .m_axi_v4u0_BUSER(v4u0_BUSER),
    .m_axi_v4u1_AWVALID(v4u1_AWVALID),
    .m_axi_v4u1_AWREADY(v4u1_AWREADY),
    .m_axi_v4u1_AWADDR(v4u1_AWADDR),
    .m_axi_v4u1_AWID(v4u1_AWID),
    .m_axi_v4u1_AWLEN(v4u1_AWLEN),
    .m_axi_v4u1_AWSIZE(v4u1_AWSIZE),
    .m_axi_v4u1_AWBURST(v4u1_AWBURST),
    .m_axi_v4u1_AWLOCK(v4u1_AWLOCK),
    .m_axi_v4u1_AWCACHE(v4u1_AWCACHE),
    .m_axi_v4u1_AWPROT(v4u1_AWPROT),
    .m_axi_v4u1_AWQOS(v4u1_AWQOS),
    .m_axi_v4u1_AWREGION(v4u1_AWREGION),
    .m_axi_v4u1_AWUSER(v4u1_AWUSER),
    .m_axi_v4u1_WVALID(v4u1_WVALID),
    .m_axi_v4u1_WREADY(v4u1_WREADY),
    .m_axi_v4u1_WDATA(v4u1_WDATA),
    .m_axi_v4u1_WSTRB(v4u1_WSTRB),
    .m_axi_v4u1_WLAST(v4u1_WLAST),
    .m_axi_v4u1_WID(v4u1_WID),
    .m_axi_v4u1_WUSER(v4u1_WUSER),
    .m_axi_v4u1_ARVALID(v4u1_ARVALID),
    .m_axi_v4u1_ARREADY(v4u1_ARREADY),
    .m_axi_v4u1_ARADDR(v4u1_ARADDR),
    .m_axi_v4u1_ARID(v4u1_ARID),
    .m_axi_v4u1_ARLEN(v4u1_ARLEN),
    .m_axi_v4u1_ARSIZE(v4u1_ARSIZE),
    .m_axi_v4u1_ARBURST(v4u1_ARBURST),
    .m_axi_v4u1_ARLOCK(v4u1_ARLOCK),
    .m_axi_v4u1_ARCACHE(v4u1_ARCACHE),
    .m_axi_v4u1_ARPROT(v4u1_ARPROT),
    .m_axi_v4u1_ARQOS(v4u1_ARQOS),
    .m_axi_v4u1_ARREGION(v4u1_ARREGION),
    .m_axi_v4u1_ARUSER(v4u1_ARUSER),
    .m_axi_v4u1_RVALID(v4u1_RVALID),
    .m_axi_v4u1_RREADY(v4u1_RREADY),
    .m_axi_v4u1_RDATA(v4u1_RDATA),
    .m_axi_v4u1_RLAST(v4u1_RLAST),
    .m_axi_v4u1_RID(v4u1_RID),
    .m_axi_v4u1_RUSER(v4u1_RUSER),
    .m_axi_v4u1_RRESP(v4u1_RRESP),
    .m_axi_v4u1_BVALID(v4u1_BVALID),
    .m_axi_v4u1_BREADY(v4u1_BREADY),
    .m_axi_v4u1_BRESP(v4u1_BRESP),
    .m_axi_v4u1_BID(v4u1_BID),
    .m_axi_v4u1_BUSER(v4u1_BUSER),
    .m_axi_v4u2_AWVALID(v4u2_AWVALID),
    .m_axi_v4u2_AWREADY(v4u2_AWREADY),
    .m_axi_v4u2_AWADDR(v4u2_AWADDR),
    .m_axi_v4u2_AWID(v4u2_AWID),
    .m_axi_v4u2_AWLEN(v4u2_AWLEN),
    .m_axi_v4u2_AWSIZE(v4u2_AWSIZE),
    .m_axi_v4u2_AWBURST(v4u2_AWBURST),
    .m_axi_v4u2_AWLOCK(v4u2_AWLOCK),
    .m_axi_v4u2_AWCACHE(v4u2_AWCACHE),
    .m_axi_v4u2_AWPROT(v4u2_AWPROT),
    .m_axi_v4u2_AWQOS(v4u2_AWQOS),
    .m_axi_v4u2_AWREGION(v4u2_AWREGION),
    .m_axi_v4u2_AWUSER(v4u2_AWUSER),
    .m_axi_v4u2_WVALID(v4u2_WVALID),
    .m_axi_v4u2_WREADY(v4u2_WREADY),
    .m_axi_v4u2_WDATA(v4u2_WDATA),
    .m_axi_v4u2_WSTRB(v4u2_WSTRB),
    .m_axi_v4u2_WLAST(v4u2_WLAST),
    .m_axi_v4u2_WID(v4u2_WID),
    .m_axi_v4u2_WUSER(v4u2_WUSER),
    .m_axi_v4u2_ARVALID(v4u2_ARVALID),
    .m_axi_v4u2_ARREADY(v4u2_ARREADY),
    .m_axi_v4u2_ARADDR(v4u2_ARADDR),
    .m_axi_v4u2_ARID(v4u2_ARID),
    .m_axi_v4u2_ARLEN(v4u2_ARLEN),
    .m_axi_v4u2_ARSIZE(v4u2_ARSIZE),
    .m_axi_v4u2_ARBURST(v4u2_ARBURST),
    .m_axi_v4u2_ARLOCK(v4u2_ARLOCK),
    .m_axi_v4u2_ARCACHE(v4u2_ARCACHE),
    .m_axi_v4u2_ARPROT(v4u2_ARPROT),
    .m_axi_v4u2_ARQOS(v4u2_ARQOS),
    .m_axi_v4u2_ARREGION(v4u2_ARREGION),
    .m_axi_v4u2_ARUSER(v4u2_ARUSER),
    .m_axi_v4u2_RVALID(v4u2_RVALID),
    .m_axi_v4u2_RREADY(v4u2_RREADY),
    .m_axi_v4u2_RDATA(v4u2_RDATA),
    .m_axi_v4u2_RLAST(v4u2_RLAST),
    .m_axi_v4u2_RID(v4u2_RID),
    .m_axi_v4u2_RUSER(v4u2_RUSER),
    .m_axi_v4u2_RRESP(v4u2_RRESP),
    .m_axi_v4u2_BVALID(v4u2_BVALID),
    .m_axi_v4u2_BREADY(v4u2_BREADY),
    .m_axi_v4u2_BRESP(v4u2_BRESP),
    .m_axi_v4u2_BID(v4u2_BID),
    .m_axi_v4u2_BUSER(v4u2_BUSER),
    .m_axi_v4u3_AWVALID(v4u3_AWVALID),
    .m_axi_v4u3_AWREADY(v4u3_AWREADY),
    .m_axi_v4u3_AWADDR(v4u3_AWADDR),
    .m_axi_v4u3_AWID(v4u3_AWID),
    .m_axi_v4u3_AWLEN(v4u3_AWLEN),
    .m_axi_v4u3_AWSIZE(v4u3_AWSIZE),
    .m_axi_v4u3_AWBURST(v4u3_AWBURST),
    .m_axi_v4u3_AWLOCK(v4u3_AWLOCK),
    .m_axi_v4u3_AWCACHE(v4u3_AWCACHE),
    .m_axi_v4u3_AWPROT(v4u3_AWPROT),
    .m_axi_v4u3_AWQOS(v4u3_AWQOS),
    .m_axi_v4u3_AWREGION(v4u3_AWREGION),
    .m_axi_v4u3_AWUSER(v4u3_AWUSER),
    .m_axi_v4u3_WVALID(v4u3_WVALID),
    .m_axi_v4u3_WREADY(v4u3_WREADY),
    .m_axi_v4u3_WDATA(v4u3_WDATA),
    .m_axi_v4u3_WSTRB(v4u3_WSTRB),
    .m_axi_v4u3_WLAST(v4u3_WLAST),
    .m_axi_v4u3_WID(v4u3_WID),
    .m_axi_v4u3_WUSER(v4u3_WUSER),
    .m_axi_v4u3_ARVALID(v4u3_ARVALID),
    .m_axi_v4u3_ARREADY(v4u3_ARREADY),
    .m_axi_v4u3_ARADDR(v4u3_ARADDR),
    .m_axi_v4u3_ARID(v4u3_ARID),
    .m_axi_v4u3_ARLEN(v4u3_ARLEN),
    .m_axi_v4u3_ARSIZE(v4u3_ARSIZE),
    .m_axi_v4u3_ARBURST(v4u3_ARBURST),
    .m_axi_v4u3_ARLOCK(v4u3_ARLOCK),
    .m_axi_v4u3_ARCACHE(v4u3_ARCACHE),
    .m_axi_v4u3_ARPROT(v4u3_ARPROT),
    .m_axi_v4u3_ARQOS(v4u3_ARQOS),
    .m_axi_v4u3_ARREGION(v4u3_ARREGION),
    .m_axi_v4u3_ARUSER(v4u3_ARUSER),
    .m_axi_v4u3_RVALID(v4u3_RVALID),
    .m_axi_v4u3_RREADY(v4u3_RREADY),
    .m_axi_v4u3_RDATA(v4u3_RDATA),
    .m_axi_v4u3_RLAST(v4u3_RLAST),
    .m_axi_v4u3_RID(v4u3_RID),
    .m_axi_v4u3_RUSER(v4u3_RUSER),
    .m_axi_v4u3_RRESP(v4u3_RRESP),
    .m_axi_v4u3_BVALID(v4u3_BVALID),
    .m_axi_v4u3_BREADY(v4u3_BREADY),
    .m_axi_v4u3_BRESP(v4u3_BRESP),
    .m_axi_v4u3_BID(v4u3_BID),
    .m_axi_v4u3_BUSER(v4u3_BUSER),
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


wire    AESL_axi_master_v4a0_ready;
wire    AESL_axi_master_v4a0_done;
AESL_axi_master_v4a0 AESL_AXI_MASTER_v4a0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v4a0_AWVALID (v4a0_AWVALID),
    .TRAN_v4a0_AWREADY (v4a0_AWREADY),
    .TRAN_v4a0_AWADDR (v4a0_AWADDR),
    .TRAN_v4a0_AWID (v4a0_AWID),
    .TRAN_v4a0_AWLEN (v4a0_AWLEN),
    .TRAN_v4a0_AWSIZE (v4a0_AWSIZE),
    .TRAN_v4a0_AWBURST (v4a0_AWBURST),
    .TRAN_v4a0_AWLOCK (v4a0_AWLOCK),
    .TRAN_v4a0_AWCACHE (v4a0_AWCACHE),
    .TRAN_v4a0_AWPROT (v4a0_AWPROT),
    .TRAN_v4a0_AWQOS (v4a0_AWQOS),
    .TRAN_v4a0_AWREGION (v4a0_AWREGION),
    .TRAN_v4a0_AWUSER (v4a0_AWUSER),
    .TRAN_v4a0_WVALID (v4a0_WVALID),
    .TRAN_v4a0_WREADY (v4a0_WREADY),
    .TRAN_v4a0_WDATA (v4a0_WDATA),
    .TRAN_v4a0_WSTRB (v4a0_WSTRB),
    .TRAN_v4a0_WLAST (v4a0_WLAST),
    .TRAN_v4a0_WID (v4a0_WID),
    .TRAN_v4a0_WUSER (v4a0_WUSER),
    .TRAN_v4a0_ARVALID (v4a0_ARVALID),
    .TRAN_v4a0_ARREADY (v4a0_ARREADY),
    .TRAN_v4a0_ARADDR (v4a0_ARADDR),
    .TRAN_v4a0_ARID (v4a0_ARID),
    .TRAN_v4a0_ARLEN (v4a0_ARLEN),
    .TRAN_v4a0_ARSIZE (v4a0_ARSIZE),
    .TRAN_v4a0_ARBURST (v4a0_ARBURST),
    .TRAN_v4a0_ARLOCK (v4a0_ARLOCK),
    .TRAN_v4a0_ARCACHE (v4a0_ARCACHE),
    .TRAN_v4a0_ARPROT (v4a0_ARPROT),
    .TRAN_v4a0_ARQOS (v4a0_ARQOS),
    .TRAN_v4a0_ARREGION (v4a0_ARREGION),
    .TRAN_v4a0_ARUSER (v4a0_ARUSER),
    .TRAN_v4a0_RVALID (v4a0_RVALID),
    .TRAN_v4a0_RREADY (v4a0_RREADY),
    .TRAN_v4a0_RDATA (v4a0_RDATA),
    .TRAN_v4a0_RLAST (v4a0_RLAST),
    .TRAN_v4a0_RID (v4a0_RID),
    .TRAN_v4a0_RUSER (v4a0_RUSER),
    .TRAN_v4a0_RRESP (v4a0_RRESP),
    .TRAN_v4a0_BVALID (v4a0_BVALID),
    .TRAN_v4a0_BREADY (v4a0_BREADY),
    .TRAN_v4a0_BRESP (v4a0_BRESP),
    .TRAN_v4a0_BID (v4a0_BID),
    .TRAN_v4a0_BUSER (v4a0_BUSER),
    .ready (AESL_axi_master_v4a0_ready),
    .done  (AESL_axi_master_v4a0_done)
);
assign    AESL_axi_master_v4a0_ready    =   ready;
assign    AESL_axi_master_v4a0_done    =   AESL_done_delay;
wire    AESL_axi_master_v4a1_ready;
wire    AESL_axi_master_v4a1_done;
AESL_axi_master_v4a1 AESL_AXI_MASTER_v4a1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v4a1_AWVALID (v4a1_AWVALID),
    .TRAN_v4a1_AWREADY (v4a1_AWREADY),
    .TRAN_v4a1_AWADDR (v4a1_AWADDR),
    .TRAN_v4a1_AWID (v4a1_AWID),
    .TRAN_v4a1_AWLEN (v4a1_AWLEN),
    .TRAN_v4a1_AWSIZE (v4a1_AWSIZE),
    .TRAN_v4a1_AWBURST (v4a1_AWBURST),
    .TRAN_v4a1_AWLOCK (v4a1_AWLOCK),
    .TRAN_v4a1_AWCACHE (v4a1_AWCACHE),
    .TRAN_v4a1_AWPROT (v4a1_AWPROT),
    .TRAN_v4a1_AWQOS (v4a1_AWQOS),
    .TRAN_v4a1_AWREGION (v4a1_AWREGION),
    .TRAN_v4a1_AWUSER (v4a1_AWUSER),
    .TRAN_v4a1_WVALID (v4a1_WVALID),
    .TRAN_v4a1_WREADY (v4a1_WREADY),
    .TRAN_v4a1_WDATA (v4a1_WDATA),
    .TRAN_v4a1_WSTRB (v4a1_WSTRB),
    .TRAN_v4a1_WLAST (v4a1_WLAST),
    .TRAN_v4a1_WID (v4a1_WID),
    .TRAN_v4a1_WUSER (v4a1_WUSER),
    .TRAN_v4a1_ARVALID (v4a1_ARVALID),
    .TRAN_v4a1_ARREADY (v4a1_ARREADY),
    .TRAN_v4a1_ARADDR (v4a1_ARADDR),
    .TRAN_v4a1_ARID (v4a1_ARID),
    .TRAN_v4a1_ARLEN (v4a1_ARLEN),
    .TRAN_v4a1_ARSIZE (v4a1_ARSIZE),
    .TRAN_v4a1_ARBURST (v4a1_ARBURST),
    .TRAN_v4a1_ARLOCK (v4a1_ARLOCK),
    .TRAN_v4a1_ARCACHE (v4a1_ARCACHE),
    .TRAN_v4a1_ARPROT (v4a1_ARPROT),
    .TRAN_v4a1_ARQOS (v4a1_ARQOS),
    .TRAN_v4a1_ARREGION (v4a1_ARREGION),
    .TRAN_v4a1_ARUSER (v4a1_ARUSER),
    .TRAN_v4a1_RVALID (v4a1_RVALID),
    .TRAN_v4a1_RREADY (v4a1_RREADY),
    .TRAN_v4a1_RDATA (v4a1_RDATA),
    .TRAN_v4a1_RLAST (v4a1_RLAST),
    .TRAN_v4a1_RID (v4a1_RID),
    .TRAN_v4a1_RUSER (v4a1_RUSER),
    .TRAN_v4a1_RRESP (v4a1_RRESP),
    .TRAN_v4a1_BVALID (v4a1_BVALID),
    .TRAN_v4a1_BREADY (v4a1_BREADY),
    .TRAN_v4a1_BRESP (v4a1_BRESP),
    .TRAN_v4a1_BID (v4a1_BID),
    .TRAN_v4a1_BUSER (v4a1_BUSER),
    .ready (AESL_axi_master_v4a1_ready),
    .done  (AESL_axi_master_v4a1_done)
);
assign    AESL_axi_master_v4a1_ready    =   ready;
assign    AESL_axi_master_v4a1_done    =   AESL_done_delay;
wire    AESL_axi_master_v4a2_ready;
wire    AESL_axi_master_v4a2_done;
AESL_axi_master_v4a2 AESL_AXI_MASTER_v4a2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v4a2_AWVALID (v4a2_AWVALID),
    .TRAN_v4a2_AWREADY (v4a2_AWREADY),
    .TRAN_v4a2_AWADDR (v4a2_AWADDR),
    .TRAN_v4a2_AWID (v4a2_AWID),
    .TRAN_v4a2_AWLEN (v4a2_AWLEN),
    .TRAN_v4a2_AWSIZE (v4a2_AWSIZE),
    .TRAN_v4a2_AWBURST (v4a2_AWBURST),
    .TRAN_v4a2_AWLOCK (v4a2_AWLOCK),
    .TRAN_v4a2_AWCACHE (v4a2_AWCACHE),
    .TRAN_v4a2_AWPROT (v4a2_AWPROT),
    .TRAN_v4a2_AWQOS (v4a2_AWQOS),
    .TRAN_v4a2_AWREGION (v4a2_AWREGION),
    .TRAN_v4a2_AWUSER (v4a2_AWUSER),
    .TRAN_v4a2_WVALID (v4a2_WVALID),
    .TRAN_v4a2_WREADY (v4a2_WREADY),
    .TRAN_v4a2_WDATA (v4a2_WDATA),
    .TRAN_v4a2_WSTRB (v4a2_WSTRB),
    .TRAN_v4a2_WLAST (v4a2_WLAST),
    .TRAN_v4a2_WID (v4a2_WID),
    .TRAN_v4a2_WUSER (v4a2_WUSER),
    .TRAN_v4a2_ARVALID (v4a2_ARVALID),
    .TRAN_v4a2_ARREADY (v4a2_ARREADY),
    .TRAN_v4a2_ARADDR (v4a2_ARADDR),
    .TRAN_v4a2_ARID (v4a2_ARID),
    .TRAN_v4a2_ARLEN (v4a2_ARLEN),
    .TRAN_v4a2_ARSIZE (v4a2_ARSIZE),
    .TRAN_v4a2_ARBURST (v4a2_ARBURST),
    .TRAN_v4a2_ARLOCK (v4a2_ARLOCK),
    .TRAN_v4a2_ARCACHE (v4a2_ARCACHE),
    .TRAN_v4a2_ARPROT (v4a2_ARPROT),
    .TRAN_v4a2_ARQOS (v4a2_ARQOS),
    .TRAN_v4a2_ARREGION (v4a2_ARREGION),
    .TRAN_v4a2_ARUSER (v4a2_ARUSER),
    .TRAN_v4a2_RVALID (v4a2_RVALID),
    .TRAN_v4a2_RREADY (v4a2_RREADY),
    .TRAN_v4a2_RDATA (v4a2_RDATA),
    .TRAN_v4a2_RLAST (v4a2_RLAST),
    .TRAN_v4a2_RID (v4a2_RID),
    .TRAN_v4a2_RUSER (v4a2_RUSER),
    .TRAN_v4a2_RRESP (v4a2_RRESP),
    .TRAN_v4a2_BVALID (v4a2_BVALID),
    .TRAN_v4a2_BREADY (v4a2_BREADY),
    .TRAN_v4a2_BRESP (v4a2_BRESP),
    .TRAN_v4a2_BID (v4a2_BID),
    .TRAN_v4a2_BUSER (v4a2_BUSER),
    .ready (AESL_axi_master_v4a2_ready),
    .done  (AESL_axi_master_v4a2_done)
);
assign    AESL_axi_master_v4a2_ready    =   ready;
assign    AESL_axi_master_v4a2_done    =   AESL_done_delay;
wire    AESL_axi_master_v4l0_ready;
wire    AESL_axi_master_v4l0_done;
AESL_axi_master_v4l0 AESL_AXI_MASTER_v4l0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v4l0_AWVALID (v4l0_AWVALID),
    .TRAN_v4l0_AWREADY (v4l0_AWREADY),
    .TRAN_v4l0_AWADDR (v4l0_AWADDR),
    .TRAN_v4l0_AWID (v4l0_AWID),
    .TRAN_v4l0_AWLEN (v4l0_AWLEN),
    .TRAN_v4l0_AWSIZE (v4l0_AWSIZE),
    .TRAN_v4l0_AWBURST (v4l0_AWBURST),
    .TRAN_v4l0_AWLOCK (v4l0_AWLOCK),
    .TRAN_v4l0_AWCACHE (v4l0_AWCACHE),
    .TRAN_v4l0_AWPROT (v4l0_AWPROT),
    .TRAN_v4l0_AWQOS (v4l0_AWQOS),
    .TRAN_v4l0_AWREGION (v4l0_AWREGION),
    .TRAN_v4l0_AWUSER (v4l0_AWUSER),
    .TRAN_v4l0_WVALID (v4l0_WVALID),
    .TRAN_v4l0_WREADY (v4l0_WREADY),
    .TRAN_v4l0_WDATA (v4l0_WDATA),
    .TRAN_v4l0_WSTRB (v4l0_WSTRB),
    .TRAN_v4l0_WLAST (v4l0_WLAST),
    .TRAN_v4l0_WID (v4l0_WID),
    .TRAN_v4l0_WUSER (v4l0_WUSER),
    .TRAN_v4l0_ARVALID (v4l0_ARVALID),
    .TRAN_v4l0_ARREADY (v4l0_ARREADY),
    .TRAN_v4l0_ARADDR (v4l0_ARADDR),
    .TRAN_v4l0_ARID (v4l0_ARID),
    .TRAN_v4l0_ARLEN (v4l0_ARLEN),
    .TRAN_v4l0_ARSIZE (v4l0_ARSIZE),
    .TRAN_v4l0_ARBURST (v4l0_ARBURST),
    .TRAN_v4l0_ARLOCK (v4l0_ARLOCK),
    .TRAN_v4l0_ARCACHE (v4l0_ARCACHE),
    .TRAN_v4l0_ARPROT (v4l0_ARPROT),
    .TRAN_v4l0_ARQOS (v4l0_ARQOS),
    .TRAN_v4l0_ARREGION (v4l0_ARREGION),
    .TRAN_v4l0_ARUSER (v4l0_ARUSER),
    .TRAN_v4l0_RVALID (v4l0_RVALID),
    .TRAN_v4l0_RREADY (v4l0_RREADY),
    .TRAN_v4l0_RDATA (v4l0_RDATA),
    .TRAN_v4l0_RLAST (v4l0_RLAST),
    .TRAN_v4l0_RID (v4l0_RID),
    .TRAN_v4l0_RUSER (v4l0_RUSER),
    .TRAN_v4l0_RRESP (v4l0_RRESP),
    .TRAN_v4l0_BVALID (v4l0_BVALID),
    .TRAN_v4l0_BREADY (v4l0_BREADY),
    .TRAN_v4l0_BRESP (v4l0_BRESP),
    .TRAN_v4l0_BID (v4l0_BID),
    .TRAN_v4l0_BUSER (v4l0_BUSER),
    .ready (AESL_axi_master_v4l0_ready),
    .done  (AESL_axi_master_v4l0_done)
);
assign    AESL_axi_master_v4l0_ready    =   ready;
assign    AESL_axi_master_v4l0_done    =   AESL_done_delay;
wire    AESL_axi_master_v4l1_ready;
wire    AESL_axi_master_v4l1_done;
AESL_axi_master_v4l1 AESL_AXI_MASTER_v4l1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v4l1_AWVALID (v4l1_AWVALID),
    .TRAN_v4l1_AWREADY (v4l1_AWREADY),
    .TRAN_v4l1_AWADDR (v4l1_AWADDR),
    .TRAN_v4l1_AWID (v4l1_AWID),
    .TRAN_v4l1_AWLEN (v4l1_AWLEN),
    .TRAN_v4l1_AWSIZE (v4l1_AWSIZE),
    .TRAN_v4l1_AWBURST (v4l1_AWBURST),
    .TRAN_v4l1_AWLOCK (v4l1_AWLOCK),
    .TRAN_v4l1_AWCACHE (v4l1_AWCACHE),
    .TRAN_v4l1_AWPROT (v4l1_AWPROT),
    .TRAN_v4l1_AWQOS (v4l1_AWQOS),
    .TRAN_v4l1_AWREGION (v4l1_AWREGION),
    .TRAN_v4l1_AWUSER (v4l1_AWUSER),
    .TRAN_v4l1_WVALID (v4l1_WVALID),
    .TRAN_v4l1_WREADY (v4l1_WREADY),
    .TRAN_v4l1_WDATA (v4l1_WDATA),
    .TRAN_v4l1_WSTRB (v4l1_WSTRB),
    .TRAN_v4l1_WLAST (v4l1_WLAST),
    .TRAN_v4l1_WID (v4l1_WID),
    .TRAN_v4l1_WUSER (v4l1_WUSER),
    .TRAN_v4l1_ARVALID (v4l1_ARVALID),
    .TRAN_v4l1_ARREADY (v4l1_ARREADY),
    .TRAN_v4l1_ARADDR (v4l1_ARADDR),
    .TRAN_v4l1_ARID (v4l1_ARID),
    .TRAN_v4l1_ARLEN (v4l1_ARLEN),
    .TRAN_v4l1_ARSIZE (v4l1_ARSIZE),
    .TRAN_v4l1_ARBURST (v4l1_ARBURST),
    .TRAN_v4l1_ARLOCK (v4l1_ARLOCK),
    .TRAN_v4l1_ARCACHE (v4l1_ARCACHE),
    .TRAN_v4l1_ARPROT (v4l1_ARPROT),
    .TRAN_v4l1_ARQOS (v4l1_ARQOS),
    .TRAN_v4l1_ARREGION (v4l1_ARREGION),
    .TRAN_v4l1_ARUSER (v4l1_ARUSER),
    .TRAN_v4l1_RVALID (v4l1_RVALID),
    .TRAN_v4l1_RREADY (v4l1_RREADY),
    .TRAN_v4l1_RDATA (v4l1_RDATA),
    .TRAN_v4l1_RLAST (v4l1_RLAST),
    .TRAN_v4l1_RID (v4l1_RID),
    .TRAN_v4l1_RUSER (v4l1_RUSER),
    .TRAN_v4l1_RRESP (v4l1_RRESP),
    .TRAN_v4l1_BVALID (v4l1_BVALID),
    .TRAN_v4l1_BREADY (v4l1_BREADY),
    .TRAN_v4l1_BRESP (v4l1_BRESP),
    .TRAN_v4l1_BID (v4l1_BID),
    .TRAN_v4l1_BUSER (v4l1_BUSER),
    .ready (AESL_axi_master_v4l1_ready),
    .done  (AESL_axi_master_v4l1_done)
);
assign    AESL_axi_master_v4l1_ready    =   ready;
assign    AESL_axi_master_v4l1_done    =   AESL_done_delay;
wire    AESL_axi_master_v4l2_ready;
wire    AESL_axi_master_v4l2_done;
AESL_axi_master_v4l2 AESL_AXI_MASTER_v4l2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v4l2_AWVALID (v4l2_AWVALID),
    .TRAN_v4l2_AWREADY (v4l2_AWREADY),
    .TRAN_v4l2_AWADDR (v4l2_AWADDR),
    .TRAN_v4l2_AWID (v4l2_AWID),
    .TRAN_v4l2_AWLEN (v4l2_AWLEN),
    .TRAN_v4l2_AWSIZE (v4l2_AWSIZE),
    .TRAN_v4l2_AWBURST (v4l2_AWBURST),
    .TRAN_v4l2_AWLOCK (v4l2_AWLOCK),
    .TRAN_v4l2_AWCACHE (v4l2_AWCACHE),
    .TRAN_v4l2_AWPROT (v4l2_AWPROT),
    .TRAN_v4l2_AWQOS (v4l2_AWQOS),
    .TRAN_v4l2_AWREGION (v4l2_AWREGION),
    .TRAN_v4l2_AWUSER (v4l2_AWUSER),
    .TRAN_v4l2_WVALID (v4l2_WVALID),
    .TRAN_v4l2_WREADY (v4l2_WREADY),
    .TRAN_v4l2_WDATA (v4l2_WDATA),
    .TRAN_v4l2_WSTRB (v4l2_WSTRB),
    .TRAN_v4l2_WLAST (v4l2_WLAST),
    .TRAN_v4l2_WID (v4l2_WID),
    .TRAN_v4l2_WUSER (v4l2_WUSER),
    .TRAN_v4l2_ARVALID (v4l2_ARVALID),
    .TRAN_v4l2_ARREADY (v4l2_ARREADY),
    .TRAN_v4l2_ARADDR (v4l2_ARADDR),
    .TRAN_v4l2_ARID (v4l2_ARID),
    .TRAN_v4l2_ARLEN (v4l2_ARLEN),
    .TRAN_v4l2_ARSIZE (v4l2_ARSIZE),
    .TRAN_v4l2_ARBURST (v4l2_ARBURST),
    .TRAN_v4l2_ARLOCK (v4l2_ARLOCK),
    .TRAN_v4l2_ARCACHE (v4l2_ARCACHE),
    .TRAN_v4l2_ARPROT (v4l2_ARPROT),
    .TRAN_v4l2_ARQOS (v4l2_ARQOS),
    .TRAN_v4l2_ARREGION (v4l2_ARREGION),
    .TRAN_v4l2_ARUSER (v4l2_ARUSER),
    .TRAN_v4l2_RVALID (v4l2_RVALID),
    .TRAN_v4l2_RREADY (v4l2_RREADY),
    .TRAN_v4l2_RDATA (v4l2_RDATA),
    .TRAN_v4l2_RLAST (v4l2_RLAST),
    .TRAN_v4l2_RID (v4l2_RID),
    .TRAN_v4l2_RUSER (v4l2_RUSER),
    .TRAN_v4l2_RRESP (v4l2_RRESP),
    .TRAN_v4l2_BVALID (v4l2_BVALID),
    .TRAN_v4l2_BREADY (v4l2_BREADY),
    .TRAN_v4l2_BRESP (v4l2_BRESP),
    .TRAN_v4l2_BID (v4l2_BID),
    .TRAN_v4l2_BUSER (v4l2_BUSER),
    .ready (AESL_axi_master_v4l2_ready),
    .done  (AESL_axi_master_v4l2_done)
);
assign    AESL_axi_master_v4l2_ready    =   ready;
assign    AESL_axi_master_v4l2_done    =   AESL_done_delay;
wire    AESL_axi_master_v4u0_ready;
wire    AESL_axi_master_v4u0_done;
AESL_axi_master_v4u0 AESL_AXI_MASTER_v4u0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v4u0_AWVALID (v4u0_AWVALID),
    .TRAN_v4u0_AWREADY (v4u0_AWREADY),
    .TRAN_v4u0_AWADDR (v4u0_AWADDR),
    .TRAN_v4u0_AWID (v4u0_AWID),
    .TRAN_v4u0_AWLEN (v4u0_AWLEN),
    .TRAN_v4u0_AWSIZE (v4u0_AWSIZE),
    .TRAN_v4u0_AWBURST (v4u0_AWBURST),
    .TRAN_v4u0_AWLOCK (v4u0_AWLOCK),
    .TRAN_v4u0_AWCACHE (v4u0_AWCACHE),
    .TRAN_v4u0_AWPROT (v4u0_AWPROT),
    .TRAN_v4u0_AWQOS (v4u0_AWQOS),
    .TRAN_v4u0_AWREGION (v4u0_AWREGION),
    .TRAN_v4u0_AWUSER (v4u0_AWUSER),
    .TRAN_v4u0_WVALID (v4u0_WVALID),
    .TRAN_v4u0_WREADY (v4u0_WREADY),
    .TRAN_v4u0_WDATA (v4u0_WDATA),
    .TRAN_v4u0_WSTRB (v4u0_WSTRB),
    .TRAN_v4u0_WLAST (v4u0_WLAST),
    .TRAN_v4u0_WID (v4u0_WID),
    .TRAN_v4u0_WUSER (v4u0_WUSER),
    .TRAN_v4u0_ARVALID (v4u0_ARVALID),
    .TRAN_v4u0_ARREADY (v4u0_ARREADY),
    .TRAN_v4u0_ARADDR (v4u0_ARADDR),
    .TRAN_v4u0_ARID (v4u0_ARID),
    .TRAN_v4u0_ARLEN (v4u0_ARLEN),
    .TRAN_v4u0_ARSIZE (v4u0_ARSIZE),
    .TRAN_v4u0_ARBURST (v4u0_ARBURST),
    .TRAN_v4u0_ARLOCK (v4u0_ARLOCK),
    .TRAN_v4u0_ARCACHE (v4u0_ARCACHE),
    .TRAN_v4u0_ARPROT (v4u0_ARPROT),
    .TRAN_v4u0_ARQOS (v4u0_ARQOS),
    .TRAN_v4u0_ARREGION (v4u0_ARREGION),
    .TRAN_v4u0_ARUSER (v4u0_ARUSER),
    .TRAN_v4u0_RVALID (v4u0_RVALID),
    .TRAN_v4u0_RREADY (v4u0_RREADY),
    .TRAN_v4u0_RDATA (v4u0_RDATA),
    .TRAN_v4u0_RLAST (v4u0_RLAST),
    .TRAN_v4u0_RID (v4u0_RID),
    .TRAN_v4u0_RUSER (v4u0_RUSER),
    .TRAN_v4u0_RRESP (v4u0_RRESP),
    .TRAN_v4u0_BVALID (v4u0_BVALID),
    .TRAN_v4u0_BREADY (v4u0_BREADY),
    .TRAN_v4u0_BRESP (v4u0_BRESP),
    .TRAN_v4u0_BID (v4u0_BID),
    .TRAN_v4u0_BUSER (v4u0_BUSER),
    .ready (AESL_axi_master_v4u0_ready),
    .done  (AESL_axi_master_v4u0_done)
);
assign    AESL_axi_master_v4u0_ready    =   ready;
assign    AESL_axi_master_v4u0_done    =   AESL_done_delay;
wire    AESL_axi_master_v4u1_ready;
wire    AESL_axi_master_v4u1_done;
AESL_axi_master_v4u1 AESL_AXI_MASTER_v4u1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v4u1_AWVALID (v4u1_AWVALID),
    .TRAN_v4u1_AWREADY (v4u1_AWREADY),
    .TRAN_v4u1_AWADDR (v4u1_AWADDR),
    .TRAN_v4u1_AWID (v4u1_AWID),
    .TRAN_v4u1_AWLEN (v4u1_AWLEN),
    .TRAN_v4u1_AWSIZE (v4u1_AWSIZE),
    .TRAN_v4u1_AWBURST (v4u1_AWBURST),
    .TRAN_v4u1_AWLOCK (v4u1_AWLOCK),
    .TRAN_v4u1_AWCACHE (v4u1_AWCACHE),
    .TRAN_v4u1_AWPROT (v4u1_AWPROT),
    .TRAN_v4u1_AWQOS (v4u1_AWQOS),
    .TRAN_v4u1_AWREGION (v4u1_AWREGION),
    .TRAN_v4u1_AWUSER (v4u1_AWUSER),
    .TRAN_v4u1_WVALID (v4u1_WVALID),
    .TRAN_v4u1_WREADY (v4u1_WREADY),
    .TRAN_v4u1_WDATA (v4u1_WDATA),
    .TRAN_v4u1_WSTRB (v4u1_WSTRB),
    .TRAN_v4u1_WLAST (v4u1_WLAST),
    .TRAN_v4u1_WID (v4u1_WID),
    .TRAN_v4u1_WUSER (v4u1_WUSER),
    .TRAN_v4u1_ARVALID (v4u1_ARVALID),
    .TRAN_v4u1_ARREADY (v4u1_ARREADY),
    .TRAN_v4u1_ARADDR (v4u1_ARADDR),
    .TRAN_v4u1_ARID (v4u1_ARID),
    .TRAN_v4u1_ARLEN (v4u1_ARLEN),
    .TRAN_v4u1_ARSIZE (v4u1_ARSIZE),
    .TRAN_v4u1_ARBURST (v4u1_ARBURST),
    .TRAN_v4u1_ARLOCK (v4u1_ARLOCK),
    .TRAN_v4u1_ARCACHE (v4u1_ARCACHE),
    .TRAN_v4u1_ARPROT (v4u1_ARPROT),
    .TRAN_v4u1_ARQOS (v4u1_ARQOS),
    .TRAN_v4u1_ARREGION (v4u1_ARREGION),
    .TRAN_v4u1_ARUSER (v4u1_ARUSER),
    .TRAN_v4u1_RVALID (v4u1_RVALID),
    .TRAN_v4u1_RREADY (v4u1_RREADY),
    .TRAN_v4u1_RDATA (v4u1_RDATA),
    .TRAN_v4u1_RLAST (v4u1_RLAST),
    .TRAN_v4u1_RID (v4u1_RID),
    .TRAN_v4u1_RUSER (v4u1_RUSER),
    .TRAN_v4u1_RRESP (v4u1_RRESP),
    .TRAN_v4u1_BVALID (v4u1_BVALID),
    .TRAN_v4u1_BREADY (v4u1_BREADY),
    .TRAN_v4u1_BRESP (v4u1_BRESP),
    .TRAN_v4u1_BID (v4u1_BID),
    .TRAN_v4u1_BUSER (v4u1_BUSER),
    .ready (AESL_axi_master_v4u1_ready),
    .done  (AESL_axi_master_v4u1_done)
);
assign    AESL_axi_master_v4u1_ready    =   ready;
assign    AESL_axi_master_v4u1_done    =   AESL_done_delay;
wire    AESL_axi_master_v4u2_ready;
wire    AESL_axi_master_v4u2_done;
AESL_axi_master_v4u2 AESL_AXI_MASTER_v4u2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v4u2_AWVALID (v4u2_AWVALID),
    .TRAN_v4u2_AWREADY (v4u2_AWREADY),
    .TRAN_v4u2_AWADDR (v4u2_AWADDR),
    .TRAN_v4u2_AWID (v4u2_AWID),
    .TRAN_v4u2_AWLEN (v4u2_AWLEN),
    .TRAN_v4u2_AWSIZE (v4u2_AWSIZE),
    .TRAN_v4u2_AWBURST (v4u2_AWBURST),
    .TRAN_v4u2_AWLOCK (v4u2_AWLOCK),
    .TRAN_v4u2_AWCACHE (v4u2_AWCACHE),
    .TRAN_v4u2_AWPROT (v4u2_AWPROT),
    .TRAN_v4u2_AWQOS (v4u2_AWQOS),
    .TRAN_v4u2_AWREGION (v4u2_AWREGION),
    .TRAN_v4u2_AWUSER (v4u2_AWUSER),
    .TRAN_v4u2_WVALID (v4u2_WVALID),
    .TRAN_v4u2_WREADY (v4u2_WREADY),
    .TRAN_v4u2_WDATA (v4u2_WDATA),
    .TRAN_v4u2_WSTRB (v4u2_WSTRB),
    .TRAN_v4u2_WLAST (v4u2_WLAST),
    .TRAN_v4u2_WID (v4u2_WID),
    .TRAN_v4u2_WUSER (v4u2_WUSER),
    .TRAN_v4u2_ARVALID (v4u2_ARVALID),
    .TRAN_v4u2_ARREADY (v4u2_ARREADY),
    .TRAN_v4u2_ARADDR (v4u2_ARADDR),
    .TRAN_v4u2_ARID (v4u2_ARID),
    .TRAN_v4u2_ARLEN (v4u2_ARLEN),
    .TRAN_v4u2_ARSIZE (v4u2_ARSIZE),
    .TRAN_v4u2_ARBURST (v4u2_ARBURST),
    .TRAN_v4u2_ARLOCK (v4u2_ARLOCK),
    .TRAN_v4u2_ARCACHE (v4u2_ARCACHE),
    .TRAN_v4u2_ARPROT (v4u2_ARPROT),
    .TRAN_v4u2_ARQOS (v4u2_ARQOS),
    .TRAN_v4u2_ARREGION (v4u2_ARREGION),
    .TRAN_v4u2_ARUSER (v4u2_ARUSER),
    .TRAN_v4u2_RVALID (v4u2_RVALID),
    .TRAN_v4u2_RREADY (v4u2_RREADY),
    .TRAN_v4u2_RDATA (v4u2_RDATA),
    .TRAN_v4u2_RLAST (v4u2_RLAST),
    .TRAN_v4u2_RID (v4u2_RID),
    .TRAN_v4u2_RUSER (v4u2_RUSER),
    .TRAN_v4u2_RRESP (v4u2_RRESP),
    .TRAN_v4u2_BVALID (v4u2_BVALID),
    .TRAN_v4u2_BREADY (v4u2_BREADY),
    .TRAN_v4u2_BRESP (v4u2_BRESP),
    .TRAN_v4u2_BID (v4u2_BID),
    .TRAN_v4u2_BUSER (v4u2_BUSER),
    .ready (AESL_axi_master_v4u2_ready),
    .done  (AESL_axi_master_v4u2_done)
);
assign    AESL_axi_master_v4u2_ready    =   ready;
assign    AESL_axi_master_v4u2_done    =   AESL_done_delay;
wire    AESL_axi_master_v4u3_ready;
wire    AESL_axi_master_v4u3_done;
AESL_axi_master_v4u3 AESL_AXI_MASTER_v4u3(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v4u3_AWVALID (v4u3_AWVALID),
    .TRAN_v4u3_AWREADY (v4u3_AWREADY),
    .TRAN_v4u3_AWADDR (v4u3_AWADDR),
    .TRAN_v4u3_AWID (v4u3_AWID),
    .TRAN_v4u3_AWLEN (v4u3_AWLEN),
    .TRAN_v4u3_AWSIZE (v4u3_AWSIZE),
    .TRAN_v4u3_AWBURST (v4u3_AWBURST),
    .TRAN_v4u3_AWLOCK (v4u3_AWLOCK),
    .TRAN_v4u3_AWCACHE (v4u3_AWCACHE),
    .TRAN_v4u3_AWPROT (v4u3_AWPROT),
    .TRAN_v4u3_AWQOS (v4u3_AWQOS),
    .TRAN_v4u3_AWREGION (v4u3_AWREGION),
    .TRAN_v4u3_AWUSER (v4u3_AWUSER),
    .TRAN_v4u3_WVALID (v4u3_WVALID),
    .TRAN_v4u3_WREADY (v4u3_WREADY),
    .TRAN_v4u3_WDATA (v4u3_WDATA),
    .TRAN_v4u3_WSTRB (v4u3_WSTRB),
    .TRAN_v4u3_WLAST (v4u3_WLAST),
    .TRAN_v4u3_WID (v4u3_WID),
    .TRAN_v4u3_WUSER (v4u3_WUSER),
    .TRAN_v4u3_ARVALID (v4u3_ARVALID),
    .TRAN_v4u3_ARREADY (v4u3_ARREADY),
    .TRAN_v4u3_ARADDR (v4u3_ARADDR),
    .TRAN_v4u3_ARID (v4u3_ARID),
    .TRAN_v4u3_ARLEN (v4u3_ARLEN),
    .TRAN_v4u3_ARSIZE (v4u3_ARSIZE),
    .TRAN_v4u3_ARBURST (v4u3_ARBURST),
    .TRAN_v4u3_ARLOCK (v4u3_ARLOCK),
    .TRAN_v4u3_ARCACHE (v4u3_ARCACHE),
    .TRAN_v4u3_ARPROT (v4u3_ARPROT),
    .TRAN_v4u3_ARQOS (v4u3_ARQOS),
    .TRAN_v4u3_ARREGION (v4u3_ARREGION),
    .TRAN_v4u3_ARUSER (v4u3_ARUSER),
    .TRAN_v4u3_RVALID (v4u3_RVALID),
    .TRAN_v4u3_RREADY (v4u3_RREADY),
    .TRAN_v4u3_RDATA (v4u3_RDATA),
    .TRAN_v4u3_RLAST (v4u3_RLAST),
    .TRAN_v4u3_RID (v4u3_RID),
    .TRAN_v4u3_RUSER (v4u3_RUSER),
    .TRAN_v4u3_RRESP (v4u3_RRESP),
    .TRAN_v4u3_BVALID (v4u3_BVALID),
    .TRAN_v4u3_BREADY (v4u3_BREADY),
    .TRAN_v4u3_BRESP (v4u3_BRESP),
    .TRAN_v4u3_BID (v4u3_BID),
    .TRAN_v4u3_BUSER (v4u3_BUSER),
    .ready (AESL_axi_master_v4u3_ready),
    .done  (AESL_axi_master_v4u3_done)
);
assign    AESL_axi_master_v4u3_ready    =   ready;
assign    AESL_axi_master_v4u3_done    =   AESL_done_delay;

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


reg end_v4a0;
reg [31:0] size_v4a0;
reg [31:0] size_v4a0_backup;
reg end_v4a1;
reg [31:0] size_v4a1;
reg [31:0] size_v4a1_backup;
reg end_v4a2;
reg [31:0] size_v4a2;
reg [31:0] size_v4a2_backup;
reg end_v4l0;
reg [31:0] size_v4l0;
reg [31:0] size_v4l0_backup;
reg end_v4l1;
reg [31:0] size_v4l1;
reg [31:0] size_v4l1_backup;
reg end_v4u0;
reg [31:0] size_v4u0;
reg [31:0] size_v4u0_backup;
reg end_v4u1;
reg [31:0] size_v4u1;
reg [31:0] size_v4u1_backup;
reg end_v4u2;
reg [31:0] size_v4u2;
reg [31:0] size_v4u2_backup;
reg end_v4u3;
reg [31:0] size_v4u3;
reg [31:0] size_v4u3_backup;
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
reg end_n;
reg [31:0] size_n;
reg [31:0] size_n_backup;
reg end_pivot_eps;
reg [31:0] size_pivot_eps;
reg [31:0] size_pivot_eps_backup;
reg end_v4l2;
reg [31:0] size_v4l2;
reg [31:0] size_v4l2_backup;
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

reg dump_tvout_finish_v4l2;

initial begin : dump_tvout_runtime_sign_v4l2
    integer fp;
    dump_tvout_finish_v4l2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_v4l2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_v4l2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_v4l2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_v4l2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_v4l2 = 1;
end


reg dump_tvout_finish_v4u2;

initial begin : dump_tvout_runtime_sign_v4u2
    integer fp;
    dump_tvout_finish_v4u2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_v4u2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_v4u2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_v4u2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_v4u2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_v4u2 = 1;
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
