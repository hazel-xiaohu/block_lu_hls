// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      large_gessm_v2
`define AUTOTB_DUT_INST AESL_inst_large_gessm_v2
`define AUTOTB_TOP      apatb_large_gessm_v2_top
`define AUTOTB_LAT_RESULT_FILE "large_gessm_v2.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "large_gessm_v2.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_large_gessm_v2_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 2.50

`define AESL_DEPTH_v2gl0 1
`define AESL_DEPTH_v2gl1 1
`define AESL_DEPTH_v2gl2 1
`define AESL_DEPTH_v2gb0 1
`define AESL_DEPTH_v2gb1 1
`define AESL_DEPTH_v2gb2 1
`define AESL_DEPTH_v2gx0 1
`define AESL_DEPTH_v2gx1 1
`define AESL_DEPTH_v2gx2 1
`define AESL_DEPTH_v2gx3 1
`define AESL_DEPTH_v2gx4 1
`define AESL_DEPTH_v2ga0 1
`define AESL_DEPTH_v2gw0 1
`define AESL_DEPTH_l_ptr 1
`define AESL_DEPTH_l_idx 1
`define AESL_DEPTH_l_val 1
`define AESL_DEPTH_b_ptr 1
`define AESL_DEPTH_b_idx 1
`define AESL_DEPTH_b_val 1
`define AESL_DEPTH_x_ptr 1
`define AESL_DEPTH_x_idx 1
`define AESL_DEPTH_x_val_csc 1
`define AESL_DEPTH_x_csc_to_csr 1
`define AESL_DEPTH_x_val_csr 1
`define AESL_DEPTH_active_cols 1
`define AESL_DEPTH_active_count 1
`define AESL_DEPTH_work 1
`define AESL_DEPTH_n 1
`define AESL_DEPTH_status 1
`define AESL_DEPTH_muladds 1
`define AUTOTB_TVIN_v2gl0  "../tv/cdatafile/c.large_gessm_v2.autotvin_v2gl0.dat"
`define AUTOTB_TVIN_v2gl1  "../tv/cdatafile/c.large_gessm_v2.autotvin_v2gl1.dat"
`define AUTOTB_TVIN_v2gl2  "../tv/cdatafile/c.large_gessm_v2.autotvin_v2gl2.dat"
`define AUTOTB_TVIN_v2gb0  "../tv/cdatafile/c.large_gessm_v2.autotvin_v2gb0.dat"
`define AUTOTB_TVIN_v2gb1  "../tv/cdatafile/c.large_gessm_v2.autotvin_v2gb1.dat"
`define AUTOTB_TVIN_v2gb2  "../tv/cdatafile/c.large_gessm_v2.autotvin_v2gb2.dat"
`define AUTOTB_TVIN_v2gx0  "../tv/cdatafile/c.large_gessm_v2.autotvin_v2gx0.dat"
`define AUTOTB_TVIN_v2gx1  "../tv/cdatafile/c.large_gessm_v2.autotvin_v2gx1.dat"
`define AUTOTB_TVIN_v2gx3  "../tv/cdatafile/c.large_gessm_v2.autotvin_v2gx3.dat"
`define AUTOTB_TVIN_v2ga0  "../tv/cdatafile/c.large_gessm_v2.autotvin_v2ga0.dat"
`define AUTOTB_TVIN_l_ptr  "../tv/cdatafile/c.large_gessm_v2.autotvin_l_ptr.dat"
`define AUTOTB_TVIN_l_idx  "../tv/cdatafile/c.large_gessm_v2.autotvin_l_idx.dat"
`define AUTOTB_TVIN_l_val  "../tv/cdatafile/c.large_gessm_v2.autotvin_l_val.dat"
`define AUTOTB_TVIN_b_ptr  "../tv/cdatafile/c.large_gessm_v2.autotvin_b_ptr.dat"
`define AUTOTB_TVIN_b_idx  "../tv/cdatafile/c.large_gessm_v2.autotvin_b_idx.dat"
`define AUTOTB_TVIN_b_val  "../tv/cdatafile/c.large_gessm_v2.autotvin_b_val.dat"
`define AUTOTB_TVIN_x_ptr  "../tv/cdatafile/c.large_gessm_v2.autotvin_x_ptr.dat"
`define AUTOTB_TVIN_x_idx  "../tv/cdatafile/c.large_gessm_v2.autotvin_x_idx.dat"
`define AUTOTB_TVIN_x_val_csc  "../tv/cdatafile/c.large_gessm_v2.autotvin_x_val_csc.dat"
`define AUTOTB_TVIN_x_csc_to_csr  "../tv/cdatafile/c.large_gessm_v2.autotvin_x_csc_to_csr.dat"
`define AUTOTB_TVIN_x_val_csr  "../tv/cdatafile/c.large_gessm_v2.autotvin_x_val_csr.dat"
`define AUTOTB_TVIN_active_cols  "../tv/cdatafile/c.large_gessm_v2.autotvin_active_cols.dat"
`define AUTOTB_TVIN_active_count  "../tv/cdatafile/c.large_gessm_v2.autotvin_active_count.dat"
`define AUTOTB_TVIN_n  "../tv/cdatafile/c.large_gessm_v2.autotvin_n.dat"
`define AUTOTB_TVIN_v2gl0_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_v2gl0.dat"
`define AUTOTB_TVIN_v2gl1_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_v2gl1.dat"
`define AUTOTB_TVIN_v2gl2_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_v2gl2.dat"
`define AUTOTB_TVIN_v2gb0_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_v2gb0.dat"
`define AUTOTB_TVIN_v2gb1_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_v2gb1.dat"
`define AUTOTB_TVIN_v2gb2_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_v2gb2.dat"
`define AUTOTB_TVIN_v2gx0_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_v2gx0.dat"
`define AUTOTB_TVIN_v2gx1_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_v2gx1.dat"
`define AUTOTB_TVIN_v2gx3_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_v2gx3.dat"
`define AUTOTB_TVIN_v2ga0_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_v2ga0.dat"
`define AUTOTB_TVIN_l_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_l_ptr.dat"
`define AUTOTB_TVIN_l_idx_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_l_idx.dat"
`define AUTOTB_TVIN_l_val_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_l_val.dat"
`define AUTOTB_TVIN_b_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_b_ptr.dat"
`define AUTOTB_TVIN_b_idx_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_b_idx.dat"
`define AUTOTB_TVIN_b_val_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_b_val.dat"
`define AUTOTB_TVIN_x_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_x_ptr.dat"
`define AUTOTB_TVIN_x_idx_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_x_idx.dat"
`define AUTOTB_TVIN_x_val_csc_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_x_val_csc.dat"
`define AUTOTB_TVIN_x_csc_to_csr_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_x_csc_to_csr.dat"
`define AUTOTB_TVIN_x_val_csr_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_x_val_csr.dat"
`define AUTOTB_TVIN_active_cols_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_active_cols.dat"
`define AUTOTB_TVIN_active_count_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_active_count.dat"
`define AUTOTB_TVIN_n_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvin_n.dat"
`define AUTOTB_TVOUT_v2gx2  "../tv/cdatafile/c.large_gessm_v2.autotvout_v2gx2.dat"
`define AUTOTB_TVOUT_v2gx4  "../tv/cdatafile/c.large_gessm_v2.autotvout_v2gx4.dat"
`define AUTOTB_TVOUT_status  "../tv/cdatafile/c.large_gessm_v2.autotvout_status.dat"
`define AUTOTB_TVOUT_muladds  "../tv/cdatafile/c.large_gessm_v2.autotvout_muladds.dat"
`define AUTOTB_TVOUT_v2gx2_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvout_v2gx2.dat"
`define AUTOTB_TVOUT_v2gx4_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvout_v2gx4.dat"
`define AUTOTB_TVOUT_status_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvout_status.dat"
`define AUTOTB_TVOUT_muladds_out_wrapc  "../tv/rtldatafile/rtl.large_gessm_v2.autotvout_muladds.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_active_cols = 1;
parameter LENGTH_active_count = 1;
parameter LENGTH_b_idx = 1;
parameter LENGTH_b_ptr = 1;
parameter LENGTH_b_val = 1;
parameter LENGTH_l_idx = 1;
parameter LENGTH_l_ptr = 1;
parameter LENGTH_l_val = 1;
parameter LENGTH_muladds = 1;
parameter LENGTH_n = 1;
parameter LENGTH_status = 1;
parameter LENGTH_v2ga0 = 2624;
parameter LENGTH_v2gb0 = 2625;
parameter LENGTH_v2gb1 = 8192;
parameter LENGTH_v2gb2 = 8192;
parameter LENGTH_v2gl0 = 2625;
parameter LENGTH_v2gl1 = 8192;
parameter LENGTH_v2gl2 = 8192;
parameter LENGTH_v2gw0 = 2624;
parameter LENGTH_v2gx0 = 2625;
parameter LENGTH_v2gx1 = 8192;
parameter LENGTH_v2gx2 = 8192;
parameter LENGTH_v2gx3 = 8192;
parameter LENGTH_v2gx4 = 8192;
parameter LENGTH_work = 1;
parameter LENGTH_x_csc_to_csr = 1;
parameter LENGTH_x_idx = 1;
parameter LENGTH_x_ptr = 1;
parameter LENGTH_x_val_csc = 1;
parameter LENGTH_x_val_csr = 1;

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
wire  v2gl0_AWVALID;
wire  v2gl0_AWREADY;
wire [63 : 0] v2gl0_AWADDR;
wire [0 : 0] v2gl0_AWID;
wire [7 : 0] v2gl0_AWLEN;
wire [2 : 0] v2gl0_AWSIZE;
wire [1 : 0] v2gl0_AWBURST;
wire [1 : 0] v2gl0_AWLOCK;
wire [3 : 0] v2gl0_AWCACHE;
wire [2 : 0] v2gl0_AWPROT;
wire [3 : 0] v2gl0_AWQOS;
wire [3 : 0] v2gl0_AWREGION;
wire [0 : 0] v2gl0_AWUSER;
wire  v2gl0_WVALID;
wire  v2gl0_WREADY;
wire [31 : 0] v2gl0_WDATA;
wire [3 : 0] v2gl0_WSTRB;
wire  v2gl0_WLAST;
wire [0 : 0] v2gl0_WID;
wire [0 : 0] v2gl0_WUSER;
wire  v2gl0_ARVALID;
wire  v2gl0_ARREADY;
wire [63 : 0] v2gl0_ARADDR;
wire [0 : 0] v2gl0_ARID;
wire [7 : 0] v2gl0_ARLEN;
wire [2 : 0] v2gl0_ARSIZE;
wire [1 : 0] v2gl0_ARBURST;
wire [1 : 0] v2gl0_ARLOCK;
wire [3 : 0] v2gl0_ARCACHE;
wire [2 : 0] v2gl0_ARPROT;
wire [3 : 0] v2gl0_ARQOS;
wire [3 : 0] v2gl0_ARREGION;
wire [0 : 0] v2gl0_ARUSER;
wire  v2gl0_RVALID;
wire  v2gl0_RREADY;
wire [31 : 0] v2gl0_RDATA;
wire  v2gl0_RLAST;
wire [0 : 0] v2gl0_RID;
wire [0 : 0] v2gl0_RUSER;
wire [1 : 0] v2gl0_RRESP;
wire  v2gl0_BVALID;
wire  v2gl0_BREADY;
wire [1 : 0] v2gl0_BRESP;
wire [0 : 0] v2gl0_BID;
wire [0 : 0] v2gl0_BUSER;
wire  v2gl1_AWVALID;
wire  v2gl1_AWREADY;
wire [63 : 0] v2gl1_AWADDR;
wire [0 : 0] v2gl1_AWID;
wire [7 : 0] v2gl1_AWLEN;
wire [2 : 0] v2gl1_AWSIZE;
wire [1 : 0] v2gl1_AWBURST;
wire [1 : 0] v2gl1_AWLOCK;
wire [3 : 0] v2gl1_AWCACHE;
wire [2 : 0] v2gl1_AWPROT;
wire [3 : 0] v2gl1_AWQOS;
wire [3 : 0] v2gl1_AWREGION;
wire [0 : 0] v2gl1_AWUSER;
wire  v2gl1_WVALID;
wire  v2gl1_WREADY;
wire [31 : 0] v2gl1_WDATA;
wire [3 : 0] v2gl1_WSTRB;
wire  v2gl1_WLAST;
wire [0 : 0] v2gl1_WID;
wire [0 : 0] v2gl1_WUSER;
wire  v2gl1_ARVALID;
wire  v2gl1_ARREADY;
wire [63 : 0] v2gl1_ARADDR;
wire [0 : 0] v2gl1_ARID;
wire [7 : 0] v2gl1_ARLEN;
wire [2 : 0] v2gl1_ARSIZE;
wire [1 : 0] v2gl1_ARBURST;
wire [1 : 0] v2gl1_ARLOCK;
wire [3 : 0] v2gl1_ARCACHE;
wire [2 : 0] v2gl1_ARPROT;
wire [3 : 0] v2gl1_ARQOS;
wire [3 : 0] v2gl1_ARREGION;
wire [0 : 0] v2gl1_ARUSER;
wire  v2gl1_RVALID;
wire  v2gl1_RREADY;
wire [31 : 0] v2gl1_RDATA;
wire  v2gl1_RLAST;
wire [0 : 0] v2gl1_RID;
wire [0 : 0] v2gl1_RUSER;
wire [1 : 0] v2gl1_RRESP;
wire  v2gl1_BVALID;
wire  v2gl1_BREADY;
wire [1 : 0] v2gl1_BRESP;
wire [0 : 0] v2gl1_BID;
wire [0 : 0] v2gl1_BUSER;
wire  v2gl2_AWVALID;
wire  v2gl2_AWREADY;
wire [63 : 0] v2gl2_AWADDR;
wire [0 : 0] v2gl2_AWID;
wire [7 : 0] v2gl2_AWLEN;
wire [2 : 0] v2gl2_AWSIZE;
wire [1 : 0] v2gl2_AWBURST;
wire [1 : 0] v2gl2_AWLOCK;
wire [3 : 0] v2gl2_AWCACHE;
wire [2 : 0] v2gl2_AWPROT;
wire [3 : 0] v2gl2_AWQOS;
wire [3 : 0] v2gl2_AWREGION;
wire [0 : 0] v2gl2_AWUSER;
wire  v2gl2_WVALID;
wire  v2gl2_WREADY;
wire [31 : 0] v2gl2_WDATA;
wire [3 : 0] v2gl2_WSTRB;
wire  v2gl2_WLAST;
wire [0 : 0] v2gl2_WID;
wire [0 : 0] v2gl2_WUSER;
wire  v2gl2_ARVALID;
wire  v2gl2_ARREADY;
wire [63 : 0] v2gl2_ARADDR;
wire [0 : 0] v2gl2_ARID;
wire [7 : 0] v2gl2_ARLEN;
wire [2 : 0] v2gl2_ARSIZE;
wire [1 : 0] v2gl2_ARBURST;
wire [1 : 0] v2gl2_ARLOCK;
wire [3 : 0] v2gl2_ARCACHE;
wire [2 : 0] v2gl2_ARPROT;
wire [3 : 0] v2gl2_ARQOS;
wire [3 : 0] v2gl2_ARREGION;
wire [0 : 0] v2gl2_ARUSER;
wire  v2gl2_RVALID;
wire  v2gl2_RREADY;
wire [31 : 0] v2gl2_RDATA;
wire  v2gl2_RLAST;
wire [0 : 0] v2gl2_RID;
wire [0 : 0] v2gl2_RUSER;
wire [1 : 0] v2gl2_RRESP;
wire  v2gl2_BVALID;
wire  v2gl2_BREADY;
wire [1 : 0] v2gl2_BRESP;
wire [0 : 0] v2gl2_BID;
wire [0 : 0] v2gl2_BUSER;
wire  v2gb0_AWVALID;
wire  v2gb0_AWREADY;
wire [63 : 0] v2gb0_AWADDR;
wire [0 : 0] v2gb0_AWID;
wire [7 : 0] v2gb0_AWLEN;
wire [2 : 0] v2gb0_AWSIZE;
wire [1 : 0] v2gb0_AWBURST;
wire [1 : 0] v2gb0_AWLOCK;
wire [3 : 0] v2gb0_AWCACHE;
wire [2 : 0] v2gb0_AWPROT;
wire [3 : 0] v2gb0_AWQOS;
wire [3 : 0] v2gb0_AWREGION;
wire [0 : 0] v2gb0_AWUSER;
wire  v2gb0_WVALID;
wire  v2gb0_WREADY;
wire [31 : 0] v2gb0_WDATA;
wire [3 : 0] v2gb0_WSTRB;
wire  v2gb0_WLAST;
wire [0 : 0] v2gb0_WID;
wire [0 : 0] v2gb0_WUSER;
wire  v2gb0_ARVALID;
wire  v2gb0_ARREADY;
wire [63 : 0] v2gb0_ARADDR;
wire [0 : 0] v2gb0_ARID;
wire [7 : 0] v2gb0_ARLEN;
wire [2 : 0] v2gb0_ARSIZE;
wire [1 : 0] v2gb0_ARBURST;
wire [1 : 0] v2gb0_ARLOCK;
wire [3 : 0] v2gb0_ARCACHE;
wire [2 : 0] v2gb0_ARPROT;
wire [3 : 0] v2gb0_ARQOS;
wire [3 : 0] v2gb0_ARREGION;
wire [0 : 0] v2gb0_ARUSER;
wire  v2gb0_RVALID;
wire  v2gb0_RREADY;
wire [31 : 0] v2gb0_RDATA;
wire  v2gb0_RLAST;
wire [0 : 0] v2gb0_RID;
wire [0 : 0] v2gb0_RUSER;
wire [1 : 0] v2gb0_RRESP;
wire  v2gb0_BVALID;
wire  v2gb0_BREADY;
wire [1 : 0] v2gb0_BRESP;
wire [0 : 0] v2gb0_BID;
wire [0 : 0] v2gb0_BUSER;
wire  v2gb1_AWVALID;
wire  v2gb1_AWREADY;
wire [63 : 0] v2gb1_AWADDR;
wire [0 : 0] v2gb1_AWID;
wire [7 : 0] v2gb1_AWLEN;
wire [2 : 0] v2gb1_AWSIZE;
wire [1 : 0] v2gb1_AWBURST;
wire [1 : 0] v2gb1_AWLOCK;
wire [3 : 0] v2gb1_AWCACHE;
wire [2 : 0] v2gb1_AWPROT;
wire [3 : 0] v2gb1_AWQOS;
wire [3 : 0] v2gb1_AWREGION;
wire [0 : 0] v2gb1_AWUSER;
wire  v2gb1_WVALID;
wire  v2gb1_WREADY;
wire [31 : 0] v2gb1_WDATA;
wire [3 : 0] v2gb1_WSTRB;
wire  v2gb1_WLAST;
wire [0 : 0] v2gb1_WID;
wire [0 : 0] v2gb1_WUSER;
wire  v2gb1_ARVALID;
wire  v2gb1_ARREADY;
wire [63 : 0] v2gb1_ARADDR;
wire [0 : 0] v2gb1_ARID;
wire [7 : 0] v2gb1_ARLEN;
wire [2 : 0] v2gb1_ARSIZE;
wire [1 : 0] v2gb1_ARBURST;
wire [1 : 0] v2gb1_ARLOCK;
wire [3 : 0] v2gb1_ARCACHE;
wire [2 : 0] v2gb1_ARPROT;
wire [3 : 0] v2gb1_ARQOS;
wire [3 : 0] v2gb1_ARREGION;
wire [0 : 0] v2gb1_ARUSER;
wire  v2gb1_RVALID;
wire  v2gb1_RREADY;
wire [31 : 0] v2gb1_RDATA;
wire  v2gb1_RLAST;
wire [0 : 0] v2gb1_RID;
wire [0 : 0] v2gb1_RUSER;
wire [1 : 0] v2gb1_RRESP;
wire  v2gb1_BVALID;
wire  v2gb1_BREADY;
wire [1 : 0] v2gb1_BRESP;
wire [0 : 0] v2gb1_BID;
wire [0 : 0] v2gb1_BUSER;
wire  v2gb2_AWVALID;
wire  v2gb2_AWREADY;
wire [63 : 0] v2gb2_AWADDR;
wire [0 : 0] v2gb2_AWID;
wire [7 : 0] v2gb2_AWLEN;
wire [2 : 0] v2gb2_AWSIZE;
wire [1 : 0] v2gb2_AWBURST;
wire [1 : 0] v2gb2_AWLOCK;
wire [3 : 0] v2gb2_AWCACHE;
wire [2 : 0] v2gb2_AWPROT;
wire [3 : 0] v2gb2_AWQOS;
wire [3 : 0] v2gb2_AWREGION;
wire [0 : 0] v2gb2_AWUSER;
wire  v2gb2_WVALID;
wire  v2gb2_WREADY;
wire [31 : 0] v2gb2_WDATA;
wire [3 : 0] v2gb2_WSTRB;
wire  v2gb2_WLAST;
wire [0 : 0] v2gb2_WID;
wire [0 : 0] v2gb2_WUSER;
wire  v2gb2_ARVALID;
wire  v2gb2_ARREADY;
wire [63 : 0] v2gb2_ARADDR;
wire [0 : 0] v2gb2_ARID;
wire [7 : 0] v2gb2_ARLEN;
wire [2 : 0] v2gb2_ARSIZE;
wire [1 : 0] v2gb2_ARBURST;
wire [1 : 0] v2gb2_ARLOCK;
wire [3 : 0] v2gb2_ARCACHE;
wire [2 : 0] v2gb2_ARPROT;
wire [3 : 0] v2gb2_ARQOS;
wire [3 : 0] v2gb2_ARREGION;
wire [0 : 0] v2gb2_ARUSER;
wire  v2gb2_RVALID;
wire  v2gb2_RREADY;
wire [31 : 0] v2gb2_RDATA;
wire  v2gb2_RLAST;
wire [0 : 0] v2gb2_RID;
wire [0 : 0] v2gb2_RUSER;
wire [1 : 0] v2gb2_RRESP;
wire  v2gb2_BVALID;
wire  v2gb2_BREADY;
wire [1 : 0] v2gb2_BRESP;
wire [0 : 0] v2gb2_BID;
wire [0 : 0] v2gb2_BUSER;
wire  v2gx0_AWVALID;
wire  v2gx0_AWREADY;
wire [63 : 0] v2gx0_AWADDR;
wire [0 : 0] v2gx0_AWID;
wire [7 : 0] v2gx0_AWLEN;
wire [2 : 0] v2gx0_AWSIZE;
wire [1 : 0] v2gx0_AWBURST;
wire [1 : 0] v2gx0_AWLOCK;
wire [3 : 0] v2gx0_AWCACHE;
wire [2 : 0] v2gx0_AWPROT;
wire [3 : 0] v2gx0_AWQOS;
wire [3 : 0] v2gx0_AWREGION;
wire [0 : 0] v2gx0_AWUSER;
wire  v2gx0_WVALID;
wire  v2gx0_WREADY;
wire [31 : 0] v2gx0_WDATA;
wire [3 : 0] v2gx0_WSTRB;
wire  v2gx0_WLAST;
wire [0 : 0] v2gx0_WID;
wire [0 : 0] v2gx0_WUSER;
wire  v2gx0_ARVALID;
wire  v2gx0_ARREADY;
wire [63 : 0] v2gx0_ARADDR;
wire [0 : 0] v2gx0_ARID;
wire [7 : 0] v2gx0_ARLEN;
wire [2 : 0] v2gx0_ARSIZE;
wire [1 : 0] v2gx0_ARBURST;
wire [1 : 0] v2gx0_ARLOCK;
wire [3 : 0] v2gx0_ARCACHE;
wire [2 : 0] v2gx0_ARPROT;
wire [3 : 0] v2gx0_ARQOS;
wire [3 : 0] v2gx0_ARREGION;
wire [0 : 0] v2gx0_ARUSER;
wire  v2gx0_RVALID;
wire  v2gx0_RREADY;
wire [31 : 0] v2gx0_RDATA;
wire  v2gx0_RLAST;
wire [0 : 0] v2gx0_RID;
wire [0 : 0] v2gx0_RUSER;
wire [1 : 0] v2gx0_RRESP;
wire  v2gx0_BVALID;
wire  v2gx0_BREADY;
wire [1 : 0] v2gx0_BRESP;
wire [0 : 0] v2gx0_BID;
wire [0 : 0] v2gx0_BUSER;
wire  v2gx1_AWVALID;
wire  v2gx1_AWREADY;
wire [63 : 0] v2gx1_AWADDR;
wire [0 : 0] v2gx1_AWID;
wire [7 : 0] v2gx1_AWLEN;
wire [2 : 0] v2gx1_AWSIZE;
wire [1 : 0] v2gx1_AWBURST;
wire [1 : 0] v2gx1_AWLOCK;
wire [3 : 0] v2gx1_AWCACHE;
wire [2 : 0] v2gx1_AWPROT;
wire [3 : 0] v2gx1_AWQOS;
wire [3 : 0] v2gx1_AWREGION;
wire [0 : 0] v2gx1_AWUSER;
wire  v2gx1_WVALID;
wire  v2gx1_WREADY;
wire [31 : 0] v2gx1_WDATA;
wire [3 : 0] v2gx1_WSTRB;
wire  v2gx1_WLAST;
wire [0 : 0] v2gx1_WID;
wire [0 : 0] v2gx1_WUSER;
wire  v2gx1_ARVALID;
wire  v2gx1_ARREADY;
wire [63 : 0] v2gx1_ARADDR;
wire [0 : 0] v2gx1_ARID;
wire [7 : 0] v2gx1_ARLEN;
wire [2 : 0] v2gx1_ARSIZE;
wire [1 : 0] v2gx1_ARBURST;
wire [1 : 0] v2gx1_ARLOCK;
wire [3 : 0] v2gx1_ARCACHE;
wire [2 : 0] v2gx1_ARPROT;
wire [3 : 0] v2gx1_ARQOS;
wire [3 : 0] v2gx1_ARREGION;
wire [0 : 0] v2gx1_ARUSER;
wire  v2gx1_RVALID;
wire  v2gx1_RREADY;
wire [31 : 0] v2gx1_RDATA;
wire  v2gx1_RLAST;
wire [0 : 0] v2gx1_RID;
wire [0 : 0] v2gx1_RUSER;
wire [1 : 0] v2gx1_RRESP;
wire  v2gx1_BVALID;
wire  v2gx1_BREADY;
wire [1 : 0] v2gx1_BRESP;
wire [0 : 0] v2gx1_BID;
wire [0 : 0] v2gx1_BUSER;
wire  v2gx2_AWVALID;
wire  v2gx2_AWREADY;
wire [63 : 0] v2gx2_AWADDR;
wire [0 : 0] v2gx2_AWID;
wire [7 : 0] v2gx2_AWLEN;
wire [2 : 0] v2gx2_AWSIZE;
wire [1 : 0] v2gx2_AWBURST;
wire [1 : 0] v2gx2_AWLOCK;
wire [3 : 0] v2gx2_AWCACHE;
wire [2 : 0] v2gx2_AWPROT;
wire [3 : 0] v2gx2_AWQOS;
wire [3 : 0] v2gx2_AWREGION;
wire [0 : 0] v2gx2_AWUSER;
wire  v2gx2_WVALID;
wire  v2gx2_WREADY;
wire [31 : 0] v2gx2_WDATA;
wire [3 : 0] v2gx2_WSTRB;
wire  v2gx2_WLAST;
wire [0 : 0] v2gx2_WID;
wire [0 : 0] v2gx2_WUSER;
wire  v2gx2_ARVALID;
wire  v2gx2_ARREADY;
wire [63 : 0] v2gx2_ARADDR;
wire [0 : 0] v2gx2_ARID;
wire [7 : 0] v2gx2_ARLEN;
wire [2 : 0] v2gx2_ARSIZE;
wire [1 : 0] v2gx2_ARBURST;
wire [1 : 0] v2gx2_ARLOCK;
wire [3 : 0] v2gx2_ARCACHE;
wire [2 : 0] v2gx2_ARPROT;
wire [3 : 0] v2gx2_ARQOS;
wire [3 : 0] v2gx2_ARREGION;
wire [0 : 0] v2gx2_ARUSER;
wire  v2gx2_RVALID;
wire  v2gx2_RREADY;
wire [31 : 0] v2gx2_RDATA;
wire  v2gx2_RLAST;
wire [0 : 0] v2gx2_RID;
wire [0 : 0] v2gx2_RUSER;
wire [1 : 0] v2gx2_RRESP;
wire  v2gx2_BVALID;
wire  v2gx2_BREADY;
wire [1 : 0] v2gx2_BRESP;
wire [0 : 0] v2gx2_BID;
wire [0 : 0] v2gx2_BUSER;
wire  v2gx3_AWVALID;
wire  v2gx3_AWREADY;
wire [63 : 0] v2gx3_AWADDR;
wire [0 : 0] v2gx3_AWID;
wire [7 : 0] v2gx3_AWLEN;
wire [2 : 0] v2gx3_AWSIZE;
wire [1 : 0] v2gx3_AWBURST;
wire [1 : 0] v2gx3_AWLOCK;
wire [3 : 0] v2gx3_AWCACHE;
wire [2 : 0] v2gx3_AWPROT;
wire [3 : 0] v2gx3_AWQOS;
wire [3 : 0] v2gx3_AWREGION;
wire [0 : 0] v2gx3_AWUSER;
wire  v2gx3_WVALID;
wire  v2gx3_WREADY;
wire [31 : 0] v2gx3_WDATA;
wire [3 : 0] v2gx3_WSTRB;
wire  v2gx3_WLAST;
wire [0 : 0] v2gx3_WID;
wire [0 : 0] v2gx3_WUSER;
wire  v2gx3_ARVALID;
wire  v2gx3_ARREADY;
wire [63 : 0] v2gx3_ARADDR;
wire [0 : 0] v2gx3_ARID;
wire [7 : 0] v2gx3_ARLEN;
wire [2 : 0] v2gx3_ARSIZE;
wire [1 : 0] v2gx3_ARBURST;
wire [1 : 0] v2gx3_ARLOCK;
wire [3 : 0] v2gx3_ARCACHE;
wire [2 : 0] v2gx3_ARPROT;
wire [3 : 0] v2gx3_ARQOS;
wire [3 : 0] v2gx3_ARREGION;
wire [0 : 0] v2gx3_ARUSER;
wire  v2gx3_RVALID;
wire  v2gx3_RREADY;
wire [31 : 0] v2gx3_RDATA;
wire  v2gx3_RLAST;
wire [0 : 0] v2gx3_RID;
wire [0 : 0] v2gx3_RUSER;
wire [1 : 0] v2gx3_RRESP;
wire  v2gx3_BVALID;
wire  v2gx3_BREADY;
wire [1 : 0] v2gx3_BRESP;
wire [0 : 0] v2gx3_BID;
wire [0 : 0] v2gx3_BUSER;
wire  v2gx4_AWVALID;
wire  v2gx4_AWREADY;
wire [63 : 0] v2gx4_AWADDR;
wire [0 : 0] v2gx4_AWID;
wire [7 : 0] v2gx4_AWLEN;
wire [2 : 0] v2gx4_AWSIZE;
wire [1 : 0] v2gx4_AWBURST;
wire [1 : 0] v2gx4_AWLOCK;
wire [3 : 0] v2gx4_AWCACHE;
wire [2 : 0] v2gx4_AWPROT;
wire [3 : 0] v2gx4_AWQOS;
wire [3 : 0] v2gx4_AWREGION;
wire [0 : 0] v2gx4_AWUSER;
wire  v2gx4_WVALID;
wire  v2gx4_WREADY;
wire [31 : 0] v2gx4_WDATA;
wire [3 : 0] v2gx4_WSTRB;
wire  v2gx4_WLAST;
wire [0 : 0] v2gx4_WID;
wire [0 : 0] v2gx4_WUSER;
wire  v2gx4_ARVALID;
wire  v2gx4_ARREADY;
wire [63 : 0] v2gx4_ARADDR;
wire [0 : 0] v2gx4_ARID;
wire [7 : 0] v2gx4_ARLEN;
wire [2 : 0] v2gx4_ARSIZE;
wire [1 : 0] v2gx4_ARBURST;
wire [1 : 0] v2gx4_ARLOCK;
wire [3 : 0] v2gx4_ARCACHE;
wire [2 : 0] v2gx4_ARPROT;
wire [3 : 0] v2gx4_ARQOS;
wire [3 : 0] v2gx4_ARREGION;
wire [0 : 0] v2gx4_ARUSER;
wire  v2gx4_RVALID;
wire  v2gx4_RREADY;
wire [31 : 0] v2gx4_RDATA;
wire  v2gx4_RLAST;
wire [0 : 0] v2gx4_RID;
wire [0 : 0] v2gx4_RUSER;
wire [1 : 0] v2gx4_RRESP;
wire  v2gx4_BVALID;
wire  v2gx4_BREADY;
wire [1 : 0] v2gx4_BRESP;
wire [0 : 0] v2gx4_BID;
wire [0 : 0] v2gx4_BUSER;
wire  v2ga0_AWVALID;
wire  v2ga0_AWREADY;
wire [63 : 0] v2ga0_AWADDR;
wire [0 : 0] v2ga0_AWID;
wire [7 : 0] v2ga0_AWLEN;
wire [2 : 0] v2ga0_AWSIZE;
wire [1 : 0] v2ga0_AWBURST;
wire [1 : 0] v2ga0_AWLOCK;
wire [3 : 0] v2ga0_AWCACHE;
wire [2 : 0] v2ga0_AWPROT;
wire [3 : 0] v2ga0_AWQOS;
wire [3 : 0] v2ga0_AWREGION;
wire [0 : 0] v2ga0_AWUSER;
wire  v2ga0_WVALID;
wire  v2ga0_WREADY;
wire [31 : 0] v2ga0_WDATA;
wire [3 : 0] v2ga0_WSTRB;
wire  v2ga0_WLAST;
wire [0 : 0] v2ga0_WID;
wire [0 : 0] v2ga0_WUSER;
wire  v2ga0_ARVALID;
wire  v2ga0_ARREADY;
wire [63 : 0] v2ga0_ARADDR;
wire [0 : 0] v2ga0_ARID;
wire [7 : 0] v2ga0_ARLEN;
wire [2 : 0] v2ga0_ARSIZE;
wire [1 : 0] v2ga0_ARBURST;
wire [1 : 0] v2ga0_ARLOCK;
wire [3 : 0] v2ga0_ARCACHE;
wire [2 : 0] v2ga0_ARPROT;
wire [3 : 0] v2ga0_ARQOS;
wire [3 : 0] v2ga0_ARREGION;
wire [0 : 0] v2ga0_ARUSER;
wire  v2ga0_RVALID;
wire  v2ga0_RREADY;
wire [31 : 0] v2ga0_RDATA;
wire  v2ga0_RLAST;
wire [0 : 0] v2ga0_RID;
wire [0 : 0] v2ga0_RUSER;
wire [1 : 0] v2ga0_RRESP;
wire  v2ga0_BVALID;
wire  v2ga0_BREADY;
wire [1 : 0] v2ga0_BRESP;
wire [0 : 0] v2ga0_BID;
wire [0 : 0] v2ga0_BUSER;
wire  m_axi_v2gw0_AWVALID;
wire  m_axi_v2gw0_AWREADY;
wire [63 : 0] m_axi_v2gw0_AWADDR;
wire [0 : 0] m_axi_v2gw0_AWID;
wire [7 : 0] m_axi_v2gw0_AWLEN;
wire [2 : 0] m_axi_v2gw0_AWSIZE;
wire [1 : 0] m_axi_v2gw0_AWBURST;
wire [1 : 0] m_axi_v2gw0_AWLOCK;
wire [3 : 0] m_axi_v2gw0_AWCACHE;
wire [2 : 0] m_axi_v2gw0_AWPROT;
wire [3 : 0] m_axi_v2gw0_AWQOS;
wire [3 : 0] m_axi_v2gw0_AWREGION;
wire [0 : 0] m_axi_v2gw0_AWUSER;
wire  m_axi_v2gw0_WVALID;
wire  m_axi_v2gw0_WREADY;
wire [31 : 0] m_axi_v2gw0_WDATA;
wire [3 : 0] m_axi_v2gw0_WSTRB;
wire  m_axi_v2gw0_WLAST;
wire [0 : 0] m_axi_v2gw0_WID;
wire [0 : 0] m_axi_v2gw0_WUSER;
wire  m_axi_v2gw0_ARVALID;
wire  m_axi_v2gw0_ARREADY;
wire [63 : 0] m_axi_v2gw0_ARADDR;
wire [0 : 0] m_axi_v2gw0_ARID;
wire [7 : 0] m_axi_v2gw0_ARLEN;
wire [2 : 0] m_axi_v2gw0_ARSIZE;
wire [1 : 0] m_axi_v2gw0_ARBURST;
wire [1 : 0] m_axi_v2gw0_ARLOCK;
wire [3 : 0] m_axi_v2gw0_ARCACHE;
wire [2 : 0] m_axi_v2gw0_ARPROT;
wire [3 : 0] m_axi_v2gw0_ARQOS;
wire [3 : 0] m_axi_v2gw0_ARREGION;
wire [0 : 0] m_axi_v2gw0_ARUSER;
wire  m_axi_v2gw0_RVALID;
wire  m_axi_v2gw0_RREADY;
wire [31 : 0] m_axi_v2gw0_RDATA;
wire  m_axi_v2gw0_RLAST;
wire [0 : 0] m_axi_v2gw0_RID;
wire [0 : 0] m_axi_v2gw0_RUSER;
wire [1 : 0] m_axi_v2gw0_RRESP;
wire  m_axi_v2gw0_BVALID;
wire  m_axi_v2gw0_BREADY;
wire [1 : 0] m_axi_v2gw0_BRESP;
wire [0 : 0] m_axi_v2gw0_BID;
wire [0 : 0] m_axi_v2gw0_BUSER;
wire [31 : 0] active_count;
wire [31 : 0] n;
wire [31 : 0] status;
wire  status_ap_vld;
wire [63 : 0] muladds;
wire  muladds_ap_vld;
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
    .m_axi_v2gl0_AWVALID(v2gl0_AWVALID),
    .m_axi_v2gl0_AWREADY(v2gl0_AWREADY),
    .m_axi_v2gl0_AWADDR(v2gl0_AWADDR),
    .m_axi_v2gl0_AWID(v2gl0_AWID),
    .m_axi_v2gl0_AWLEN(v2gl0_AWLEN),
    .m_axi_v2gl0_AWSIZE(v2gl0_AWSIZE),
    .m_axi_v2gl0_AWBURST(v2gl0_AWBURST),
    .m_axi_v2gl0_AWLOCK(v2gl0_AWLOCK),
    .m_axi_v2gl0_AWCACHE(v2gl0_AWCACHE),
    .m_axi_v2gl0_AWPROT(v2gl0_AWPROT),
    .m_axi_v2gl0_AWQOS(v2gl0_AWQOS),
    .m_axi_v2gl0_AWREGION(v2gl0_AWREGION),
    .m_axi_v2gl0_AWUSER(v2gl0_AWUSER),
    .m_axi_v2gl0_WVALID(v2gl0_WVALID),
    .m_axi_v2gl0_WREADY(v2gl0_WREADY),
    .m_axi_v2gl0_WDATA(v2gl0_WDATA),
    .m_axi_v2gl0_WSTRB(v2gl0_WSTRB),
    .m_axi_v2gl0_WLAST(v2gl0_WLAST),
    .m_axi_v2gl0_WID(v2gl0_WID),
    .m_axi_v2gl0_WUSER(v2gl0_WUSER),
    .m_axi_v2gl0_ARVALID(v2gl0_ARVALID),
    .m_axi_v2gl0_ARREADY(v2gl0_ARREADY),
    .m_axi_v2gl0_ARADDR(v2gl0_ARADDR),
    .m_axi_v2gl0_ARID(v2gl0_ARID),
    .m_axi_v2gl0_ARLEN(v2gl0_ARLEN),
    .m_axi_v2gl0_ARSIZE(v2gl0_ARSIZE),
    .m_axi_v2gl0_ARBURST(v2gl0_ARBURST),
    .m_axi_v2gl0_ARLOCK(v2gl0_ARLOCK),
    .m_axi_v2gl0_ARCACHE(v2gl0_ARCACHE),
    .m_axi_v2gl0_ARPROT(v2gl0_ARPROT),
    .m_axi_v2gl0_ARQOS(v2gl0_ARQOS),
    .m_axi_v2gl0_ARREGION(v2gl0_ARREGION),
    .m_axi_v2gl0_ARUSER(v2gl0_ARUSER),
    .m_axi_v2gl0_RVALID(v2gl0_RVALID),
    .m_axi_v2gl0_RREADY(v2gl0_RREADY),
    .m_axi_v2gl0_RDATA(v2gl0_RDATA),
    .m_axi_v2gl0_RLAST(v2gl0_RLAST),
    .m_axi_v2gl0_RID(v2gl0_RID),
    .m_axi_v2gl0_RUSER(v2gl0_RUSER),
    .m_axi_v2gl0_RRESP(v2gl0_RRESP),
    .m_axi_v2gl0_BVALID(v2gl0_BVALID),
    .m_axi_v2gl0_BREADY(v2gl0_BREADY),
    .m_axi_v2gl0_BRESP(v2gl0_BRESP),
    .m_axi_v2gl0_BID(v2gl0_BID),
    .m_axi_v2gl0_BUSER(v2gl0_BUSER),
    .m_axi_v2gl1_AWVALID(v2gl1_AWVALID),
    .m_axi_v2gl1_AWREADY(v2gl1_AWREADY),
    .m_axi_v2gl1_AWADDR(v2gl1_AWADDR),
    .m_axi_v2gl1_AWID(v2gl1_AWID),
    .m_axi_v2gl1_AWLEN(v2gl1_AWLEN),
    .m_axi_v2gl1_AWSIZE(v2gl1_AWSIZE),
    .m_axi_v2gl1_AWBURST(v2gl1_AWBURST),
    .m_axi_v2gl1_AWLOCK(v2gl1_AWLOCK),
    .m_axi_v2gl1_AWCACHE(v2gl1_AWCACHE),
    .m_axi_v2gl1_AWPROT(v2gl1_AWPROT),
    .m_axi_v2gl1_AWQOS(v2gl1_AWQOS),
    .m_axi_v2gl1_AWREGION(v2gl1_AWREGION),
    .m_axi_v2gl1_AWUSER(v2gl1_AWUSER),
    .m_axi_v2gl1_WVALID(v2gl1_WVALID),
    .m_axi_v2gl1_WREADY(v2gl1_WREADY),
    .m_axi_v2gl1_WDATA(v2gl1_WDATA),
    .m_axi_v2gl1_WSTRB(v2gl1_WSTRB),
    .m_axi_v2gl1_WLAST(v2gl1_WLAST),
    .m_axi_v2gl1_WID(v2gl1_WID),
    .m_axi_v2gl1_WUSER(v2gl1_WUSER),
    .m_axi_v2gl1_ARVALID(v2gl1_ARVALID),
    .m_axi_v2gl1_ARREADY(v2gl1_ARREADY),
    .m_axi_v2gl1_ARADDR(v2gl1_ARADDR),
    .m_axi_v2gl1_ARID(v2gl1_ARID),
    .m_axi_v2gl1_ARLEN(v2gl1_ARLEN),
    .m_axi_v2gl1_ARSIZE(v2gl1_ARSIZE),
    .m_axi_v2gl1_ARBURST(v2gl1_ARBURST),
    .m_axi_v2gl1_ARLOCK(v2gl1_ARLOCK),
    .m_axi_v2gl1_ARCACHE(v2gl1_ARCACHE),
    .m_axi_v2gl1_ARPROT(v2gl1_ARPROT),
    .m_axi_v2gl1_ARQOS(v2gl1_ARQOS),
    .m_axi_v2gl1_ARREGION(v2gl1_ARREGION),
    .m_axi_v2gl1_ARUSER(v2gl1_ARUSER),
    .m_axi_v2gl1_RVALID(v2gl1_RVALID),
    .m_axi_v2gl1_RREADY(v2gl1_RREADY),
    .m_axi_v2gl1_RDATA(v2gl1_RDATA),
    .m_axi_v2gl1_RLAST(v2gl1_RLAST),
    .m_axi_v2gl1_RID(v2gl1_RID),
    .m_axi_v2gl1_RUSER(v2gl1_RUSER),
    .m_axi_v2gl1_RRESP(v2gl1_RRESP),
    .m_axi_v2gl1_BVALID(v2gl1_BVALID),
    .m_axi_v2gl1_BREADY(v2gl1_BREADY),
    .m_axi_v2gl1_BRESP(v2gl1_BRESP),
    .m_axi_v2gl1_BID(v2gl1_BID),
    .m_axi_v2gl1_BUSER(v2gl1_BUSER),
    .m_axi_v2gl2_AWVALID(v2gl2_AWVALID),
    .m_axi_v2gl2_AWREADY(v2gl2_AWREADY),
    .m_axi_v2gl2_AWADDR(v2gl2_AWADDR),
    .m_axi_v2gl2_AWID(v2gl2_AWID),
    .m_axi_v2gl2_AWLEN(v2gl2_AWLEN),
    .m_axi_v2gl2_AWSIZE(v2gl2_AWSIZE),
    .m_axi_v2gl2_AWBURST(v2gl2_AWBURST),
    .m_axi_v2gl2_AWLOCK(v2gl2_AWLOCK),
    .m_axi_v2gl2_AWCACHE(v2gl2_AWCACHE),
    .m_axi_v2gl2_AWPROT(v2gl2_AWPROT),
    .m_axi_v2gl2_AWQOS(v2gl2_AWQOS),
    .m_axi_v2gl2_AWREGION(v2gl2_AWREGION),
    .m_axi_v2gl2_AWUSER(v2gl2_AWUSER),
    .m_axi_v2gl2_WVALID(v2gl2_WVALID),
    .m_axi_v2gl2_WREADY(v2gl2_WREADY),
    .m_axi_v2gl2_WDATA(v2gl2_WDATA),
    .m_axi_v2gl2_WSTRB(v2gl2_WSTRB),
    .m_axi_v2gl2_WLAST(v2gl2_WLAST),
    .m_axi_v2gl2_WID(v2gl2_WID),
    .m_axi_v2gl2_WUSER(v2gl2_WUSER),
    .m_axi_v2gl2_ARVALID(v2gl2_ARVALID),
    .m_axi_v2gl2_ARREADY(v2gl2_ARREADY),
    .m_axi_v2gl2_ARADDR(v2gl2_ARADDR),
    .m_axi_v2gl2_ARID(v2gl2_ARID),
    .m_axi_v2gl2_ARLEN(v2gl2_ARLEN),
    .m_axi_v2gl2_ARSIZE(v2gl2_ARSIZE),
    .m_axi_v2gl2_ARBURST(v2gl2_ARBURST),
    .m_axi_v2gl2_ARLOCK(v2gl2_ARLOCK),
    .m_axi_v2gl2_ARCACHE(v2gl2_ARCACHE),
    .m_axi_v2gl2_ARPROT(v2gl2_ARPROT),
    .m_axi_v2gl2_ARQOS(v2gl2_ARQOS),
    .m_axi_v2gl2_ARREGION(v2gl2_ARREGION),
    .m_axi_v2gl2_ARUSER(v2gl2_ARUSER),
    .m_axi_v2gl2_RVALID(v2gl2_RVALID),
    .m_axi_v2gl2_RREADY(v2gl2_RREADY),
    .m_axi_v2gl2_RDATA(v2gl2_RDATA),
    .m_axi_v2gl2_RLAST(v2gl2_RLAST),
    .m_axi_v2gl2_RID(v2gl2_RID),
    .m_axi_v2gl2_RUSER(v2gl2_RUSER),
    .m_axi_v2gl2_RRESP(v2gl2_RRESP),
    .m_axi_v2gl2_BVALID(v2gl2_BVALID),
    .m_axi_v2gl2_BREADY(v2gl2_BREADY),
    .m_axi_v2gl2_BRESP(v2gl2_BRESP),
    .m_axi_v2gl2_BID(v2gl2_BID),
    .m_axi_v2gl2_BUSER(v2gl2_BUSER),
    .m_axi_v2gb0_AWVALID(v2gb0_AWVALID),
    .m_axi_v2gb0_AWREADY(v2gb0_AWREADY),
    .m_axi_v2gb0_AWADDR(v2gb0_AWADDR),
    .m_axi_v2gb0_AWID(v2gb0_AWID),
    .m_axi_v2gb0_AWLEN(v2gb0_AWLEN),
    .m_axi_v2gb0_AWSIZE(v2gb0_AWSIZE),
    .m_axi_v2gb0_AWBURST(v2gb0_AWBURST),
    .m_axi_v2gb0_AWLOCK(v2gb0_AWLOCK),
    .m_axi_v2gb0_AWCACHE(v2gb0_AWCACHE),
    .m_axi_v2gb0_AWPROT(v2gb0_AWPROT),
    .m_axi_v2gb0_AWQOS(v2gb0_AWQOS),
    .m_axi_v2gb0_AWREGION(v2gb0_AWREGION),
    .m_axi_v2gb0_AWUSER(v2gb0_AWUSER),
    .m_axi_v2gb0_WVALID(v2gb0_WVALID),
    .m_axi_v2gb0_WREADY(v2gb0_WREADY),
    .m_axi_v2gb0_WDATA(v2gb0_WDATA),
    .m_axi_v2gb0_WSTRB(v2gb0_WSTRB),
    .m_axi_v2gb0_WLAST(v2gb0_WLAST),
    .m_axi_v2gb0_WID(v2gb0_WID),
    .m_axi_v2gb0_WUSER(v2gb0_WUSER),
    .m_axi_v2gb0_ARVALID(v2gb0_ARVALID),
    .m_axi_v2gb0_ARREADY(v2gb0_ARREADY),
    .m_axi_v2gb0_ARADDR(v2gb0_ARADDR),
    .m_axi_v2gb0_ARID(v2gb0_ARID),
    .m_axi_v2gb0_ARLEN(v2gb0_ARLEN),
    .m_axi_v2gb0_ARSIZE(v2gb0_ARSIZE),
    .m_axi_v2gb0_ARBURST(v2gb0_ARBURST),
    .m_axi_v2gb0_ARLOCK(v2gb0_ARLOCK),
    .m_axi_v2gb0_ARCACHE(v2gb0_ARCACHE),
    .m_axi_v2gb0_ARPROT(v2gb0_ARPROT),
    .m_axi_v2gb0_ARQOS(v2gb0_ARQOS),
    .m_axi_v2gb0_ARREGION(v2gb0_ARREGION),
    .m_axi_v2gb0_ARUSER(v2gb0_ARUSER),
    .m_axi_v2gb0_RVALID(v2gb0_RVALID),
    .m_axi_v2gb0_RREADY(v2gb0_RREADY),
    .m_axi_v2gb0_RDATA(v2gb0_RDATA),
    .m_axi_v2gb0_RLAST(v2gb0_RLAST),
    .m_axi_v2gb0_RID(v2gb0_RID),
    .m_axi_v2gb0_RUSER(v2gb0_RUSER),
    .m_axi_v2gb0_RRESP(v2gb0_RRESP),
    .m_axi_v2gb0_BVALID(v2gb0_BVALID),
    .m_axi_v2gb0_BREADY(v2gb0_BREADY),
    .m_axi_v2gb0_BRESP(v2gb0_BRESP),
    .m_axi_v2gb0_BID(v2gb0_BID),
    .m_axi_v2gb0_BUSER(v2gb0_BUSER),
    .m_axi_v2gb1_AWVALID(v2gb1_AWVALID),
    .m_axi_v2gb1_AWREADY(v2gb1_AWREADY),
    .m_axi_v2gb1_AWADDR(v2gb1_AWADDR),
    .m_axi_v2gb1_AWID(v2gb1_AWID),
    .m_axi_v2gb1_AWLEN(v2gb1_AWLEN),
    .m_axi_v2gb1_AWSIZE(v2gb1_AWSIZE),
    .m_axi_v2gb1_AWBURST(v2gb1_AWBURST),
    .m_axi_v2gb1_AWLOCK(v2gb1_AWLOCK),
    .m_axi_v2gb1_AWCACHE(v2gb1_AWCACHE),
    .m_axi_v2gb1_AWPROT(v2gb1_AWPROT),
    .m_axi_v2gb1_AWQOS(v2gb1_AWQOS),
    .m_axi_v2gb1_AWREGION(v2gb1_AWREGION),
    .m_axi_v2gb1_AWUSER(v2gb1_AWUSER),
    .m_axi_v2gb1_WVALID(v2gb1_WVALID),
    .m_axi_v2gb1_WREADY(v2gb1_WREADY),
    .m_axi_v2gb1_WDATA(v2gb1_WDATA),
    .m_axi_v2gb1_WSTRB(v2gb1_WSTRB),
    .m_axi_v2gb1_WLAST(v2gb1_WLAST),
    .m_axi_v2gb1_WID(v2gb1_WID),
    .m_axi_v2gb1_WUSER(v2gb1_WUSER),
    .m_axi_v2gb1_ARVALID(v2gb1_ARVALID),
    .m_axi_v2gb1_ARREADY(v2gb1_ARREADY),
    .m_axi_v2gb1_ARADDR(v2gb1_ARADDR),
    .m_axi_v2gb1_ARID(v2gb1_ARID),
    .m_axi_v2gb1_ARLEN(v2gb1_ARLEN),
    .m_axi_v2gb1_ARSIZE(v2gb1_ARSIZE),
    .m_axi_v2gb1_ARBURST(v2gb1_ARBURST),
    .m_axi_v2gb1_ARLOCK(v2gb1_ARLOCK),
    .m_axi_v2gb1_ARCACHE(v2gb1_ARCACHE),
    .m_axi_v2gb1_ARPROT(v2gb1_ARPROT),
    .m_axi_v2gb1_ARQOS(v2gb1_ARQOS),
    .m_axi_v2gb1_ARREGION(v2gb1_ARREGION),
    .m_axi_v2gb1_ARUSER(v2gb1_ARUSER),
    .m_axi_v2gb1_RVALID(v2gb1_RVALID),
    .m_axi_v2gb1_RREADY(v2gb1_RREADY),
    .m_axi_v2gb1_RDATA(v2gb1_RDATA),
    .m_axi_v2gb1_RLAST(v2gb1_RLAST),
    .m_axi_v2gb1_RID(v2gb1_RID),
    .m_axi_v2gb1_RUSER(v2gb1_RUSER),
    .m_axi_v2gb1_RRESP(v2gb1_RRESP),
    .m_axi_v2gb1_BVALID(v2gb1_BVALID),
    .m_axi_v2gb1_BREADY(v2gb1_BREADY),
    .m_axi_v2gb1_BRESP(v2gb1_BRESP),
    .m_axi_v2gb1_BID(v2gb1_BID),
    .m_axi_v2gb1_BUSER(v2gb1_BUSER),
    .m_axi_v2gb2_AWVALID(v2gb2_AWVALID),
    .m_axi_v2gb2_AWREADY(v2gb2_AWREADY),
    .m_axi_v2gb2_AWADDR(v2gb2_AWADDR),
    .m_axi_v2gb2_AWID(v2gb2_AWID),
    .m_axi_v2gb2_AWLEN(v2gb2_AWLEN),
    .m_axi_v2gb2_AWSIZE(v2gb2_AWSIZE),
    .m_axi_v2gb2_AWBURST(v2gb2_AWBURST),
    .m_axi_v2gb2_AWLOCK(v2gb2_AWLOCK),
    .m_axi_v2gb2_AWCACHE(v2gb2_AWCACHE),
    .m_axi_v2gb2_AWPROT(v2gb2_AWPROT),
    .m_axi_v2gb2_AWQOS(v2gb2_AWQOS),
    .m_axi_v2gb2_AWREGION(v2gb2_AWREGION),
    .m_axi_v2gb2_AWUSER(v2gb2_AWUSER),
    .m_axi_v2gb2_WVALID(v2gb2_WVALID),
    .m_axi_v2gb2_WREADY(v2gb2_WREADY),
    .m_axi_v2gb2_WDATA(v2gb2_WDATA),
    .m_axi_v2gb2_WSTRB(v2gb2_WSTRB),
    .m_axi_v2gb2_WLAST(v2gb2_WLAST),
    .m_axi_v2gb2_WID(v2gb2_WID),
    .m_axi_v2gb2_WUSER(v2gb2_WUSER),
    .m_axi_v2gb2_ARVALID(v2gb2_ARVALID),
    .m_axi_v2gb2_ARREADY(v2gb2_ARREADY),
    .m_axi_v2gb2_ARADDR(v2gb2_ARADDR),
    .m_axi_v2gb2_ARID(v2gb2_ARID),
    .m_axi_v2gb2_ARLEN(v2gb2_ARLEN),
    .m_axi_v2gb2_ARSIZE(v2gb2_ARSIZE),
    .m_axi_v2gb2_ARBURST(v2gb2_ARBURST),
    .m_axi_v2gb2_ARLOCK(v2gb2_ARLOCK),
    .m_axi_v2gb2_ARCACHE(v2gb2_ARCACHE),
    .m_axi_v2gb2_ARPROT(v2gb2_ARPROT),
    .m_axi_v2gb2_ARQOS(v2gb2_ARQOS),
    .m_axi_v2gb2_ARREGION(v2gb2_ARREGION),
    .m_axi_v2gb2_ARUSER(v2gb2_ARUSER),
    .m_axi_v2gb2_RVALID(v2gb2_RVALID),
    .m_axi_v2gb2_RREADY(v2gb2_RREADY),
    .m_axi_v2gb2_RDATA(v2gb2_RDATA),
    .m_axi_v2gb2_RLAST(v2gb2_RLAST),
    .m_axi_v2gb2_RID(v2gb2_RID),
    .m_axi_v2gb2_RUSER(v2gb2_RUSER),
    .m_axi_v2gb2_RRESP(v2gb2_RRESP),
    .m_axi_v2gb2_BVALID(v2gb2_BVALID),
    .m_axi_v2gb2_BREADY(v2gb2_BREADY),
    .m_axi_v2gb2_BRESP(v2gb2_BRESP),
    .m_axi_v2gb2_BID(v2gb2_BID),
    .m_axi_v2gb2_BUSER(v2gb2_BUSER),
    .m_axi_v2gx0_AWVALID(v2gx0_AWVALID),
    .m_axi_v2gx0_AWREADY(v2gx0_AWREADY),
    .m_axi_v2gx0_AWADDR(v2gx0_AWADDR),
    .m_axi_v2gx0_AWID(v2gx0_AWID),
    .m_axi_v2gx0_AWLEN(v2gx0_AWLEN),
    .m_axi_v2gx0_AWSIZE(v2gx0_AWSIZE),
    .m_axi_v2gx0_AWBURST(v2gx0_AWBURST),
    .m_axi_v2gx0_AWLOCK(v2gx0_AWLOCK),
    .m_axi_v2gx0_AWCACHE(v2gx0_AWCACHE),
    .m_axi_v2gx0_AWPROT(v2gx0_AWPROT),
    .m_axi_v2gx0_AWQOS(v2gx0_AWQOS),
    .m_axi_v2gx0_AWREGION(v2gx0_AWREGION),
    .m_axi_v2gx0_AWUSER(v2gx0_AWUSER),
    .m_axi_v2gx0_WVALID(v2gx0_WVALID),
    .m_axi_v2gx0_WREADY(v2gx0_WREADY),
    .m_axi_v2gx0_WDATA(v2gx0_WDATA),
    .m_axi_v2gx0_WSTRB(v2gx0_WSTRB),
    .m_axi_v2gx0_WLAST(v2gx0_WLAST),
    .m_axi_v2gx0_WID(v2gx0_WID),
    .m_axi_v2gx0_WUSER(v2gx0_WUSER),
    .m_axi_v2gx0_ARVALID(v2gx0_ARVALID),
    .m_axi_v2gx0_ARREADY(v2gx0_ARREADY),
    .m_axi_v2gx0_ARADDR(v2gx0_ARADDR),
    .m_axi_v2gx0_ARID(v2gx0_ARID),
    .m_axi_v2gx0_ARLEN(v2gx0_ARLEN),
    .m_axi_v2gx0_ARSIZE(v2gx0_ARSIZE),
    .m_axi_v2gx0_ARBURST(v2gx0_ARBURST),
    .m_axi_v2gx0_ARLOCK(v2gx0_ARLOCK),
    .m_axi_v2gx0_ARCACHE(v2gx0_ARCACHE),
    .m_axi_v2gx0_ARPROT(v2gx0_ARPROT),
    .m_axi_v2gx0_ARQOS(v2gx0_ARQOS),
    .m_axi_v2gx0_ARREGION(v2gx0_ARREGION),
    .m_axi_v2gx0_ARUSER(v2gx0_ARUSER),
    .m_axi_v2gx0_RVALID(v2gx0_RVALID),
    .m_axi_v2gx0_RREADY(v2gx0_RREADY),
    .m_axi_v2gx0_RDATA(v2gx0_RDATA),
    .m_axi_v2gx0_RLAST(v2gx0_RLAST),
    .m_axi_v2gx0_RID(v2gx0_RID),
    .m_axi_v2gx0_RUSER(v2gx0_RUSER),
    .m_axi_v2gx0_RRESP(v2gx0_RRESP),
    .m_axi_v2gx0_BVALID(v2gx0_BVALID),
    .m_axi_v2gx0_BREADY(v2gx0_BREADY),
    .m_axi_v2gx0_BRESP(v2gx0_BRESP),
    .m_axi_v2gx0_BID(v2gx0_BID),
    .m_axi_v2gx0_BUSER(v2gx0_BUSER),
    .m_axi_v2gx1_AWVALID(v2gx1_AWVALID),
    .m_axi_v2gx1_AWREADY(v2gx1_AWREADY),
    .m_axi_v2gx1_AWADDR(v2gx1_AWADDR),
    .m_axi_v2gx1_AWID(v2gx1_AWID),
    .m_axi_v2gx1_AWLEN(v2gx1_AWLEN),
    .m_axi_v2gx1_AWSIZE(v2gx1_AWSIZE),
    .m_axi_v2gx1_AWBURST(v2gx1_AWBURST),
    .m_axi_v2gx1_AWLOCK(v2gx1_AWLOCK),
    .m_axi_v2gx1_AWCACHE(v2gx1_AWCACHE),
    .m_axi_v2gx1_AWPROT(v2gx1_AWPROT),
    .m_axi_v2gx1_AWQOS(v2gx1_AWQOS),
    .m_axi_v2gx1_AWREGION(v2gx1_AWREGION),
    .m_axi_v2gx1_AWUSER(v2gx1_AWUSER),
    .m_axi_v2gx1_WVALID(v2gx1_WVALID),
    .m_axi_v2gx1_WREADY(v2gx1_WREADY),
    .m_axi_v2gx1_WDATA(v2gx1_WDATA),
    .m_axi_v2gx1_WSTRB(v2gx1_WSTRB),
    .m_axi_v2gx1_WLAST(v2gx1_WLAST),
    .m_axi_v2gx1_WID(v2gx1_WID),
    .m_axi_v2gx1_WUSER(v2gx1_WUSER),
    .m_axi_v2gx1_ARVALID(v2gx1_ARVALID),
    .m_axi_v2gx1_ARREADY(v2gx1_ARREADY),
    .m_axi_v2gx1_ARADDR(v2gx1_ARADDR),
    .m_axi_v2gx1_ARID(v2gx1_ARID),
    .m_axi_v2gx1_ARLEN(v2gx1_ARLEN),
    .m_axi_v2gx1_ARSIZE(v2gx1_ARSIZE),
    .m_axi_v2gx1_ARBURST(v2gx1_ARBURST),
    .m_axi_v2gx1_ARLOCK(v2gx1_ARLOCK),
    .m_axi_v2gx1_ARCACHE(v2gx1_ARCACHE),
    .m_axi_v2gx1_ARPROT(v2gx1_ARPROT),
    .m_axi_v2gx1_ARQOS(v2gx1_ARQOS),
    .m_axi_v2gx1_ARREGION(v2gx1_ARREGION),
    .m_axi_v2gx1_ARUSER(v2gx1_ARUSER),
    .m_axi_v2gx1_RVALID(v2gx1_RVALID),
    .m_axi_v2gx1_RREADY(v2gx1_RREADY),
    .m_axi_v2gx1_RDATA(v2gx1_RDATA),
    .m_axi_v2gx1_RLAST(v2gx1_RLAST),
    .m_axi_v2gx1_RID(v2gx1_RID),
    .m_axi_v2gx1_RUSER(v2gx1_RUSER),
    .m_axi_v2gx1_RRESP(v2gx1_RRESP),
    .m_axi_v2gx1_BVALID(v2gx1_BVALID),
    .m_axi_v2gx1_BREADY(v2gx1_BREADY),
    .m_axi_v2gx1_BRESP(v2gx1_BRESP),
    .m_axi_v2gx1_BID(v2gx1_BID),
    .m_axi_v2gx1_BUSER(v2gx1_BUSER),
    .m_axi_v2gx2_AWVALID(v2gx2_AWVALID),
    .m_axi_v2gx2_AWREADY(v2gx2_AWREADY),
    .m_axi_v2gx2_AWADDR(v2gx2_AWADDR),
    .m_axi_v2gx2_AWID(v2gx2_AWID),
    .m_axi_v2gx2_AWLEN(v2gx2_AWLEN),
    .m_axi_v2gx2_AWSIZE(v2gx2_AWSIZE),
    .m_axi_v2gx2_AWBURST(v2gx2_AWBURST),
    .m_axi_v2gx2_AWLOCK(v2gx2_AWLOCK),
    .m_axi_v2gx2_AWCACHE(v2gx2_AWCACHE),
    .m_axi_v2gx2_AWPROT(v2gx2_AWPROT),
    .m_axi_v2gx2_AWQOS(v2gx2_AWQOS),
    .m_axi_v2gx2_AWREGION(v2gx2_AWREGION),
    .m_axi_v2gx2_AWUSER(v2gx2_AWUSER),
    .m_axi_v2gx2_WVALID(v2gx2_WVALID),
    .m_axi_v2gx2_WREADY(v2gx2_WREADY),
    .m_axi_v2gx2_WDATA(v2gx2_WDATA),
    .m_axi_v2gx2_WSTRB(v2gx2_WSTRB),
    .m_axi_v2gx2_WLAST(v2gx2_WLAST),
    .m_axi_v2gx2_WID(v2gx2_WID),
    .m_axi_v2gx2_WUSER(v2gx2_WUSER),
    .m_axi_v2gx2_ARVALID(v2gx2_ARVALID),
    .m_axi_v2gx2_ARREADY(v2gx2_ARREADY),
    .m_axi_v2gx2_ARADDR(v2gx2_ARADDR),
    .m_axi_v2gx2_ARID(v2gx2_ARID),
    .m_axi_v2gx2_ARLEN(v2gx2_ARLEN),
    .m_axi_v2gx2_ARSIZE(v2gx2_ARSIZE),
    .m_axi_v2gx2_ARBURST(v2gx2_ARBURST),
    .m_axi_v2gx2_ARLOCK(v2gx2_ARLOCK),
    .m_axi_v2gx2_ARCACHE(v2gx2_ARCACHE),
    .m_axi_v2gx2_ARPROT(v2gx2_ARPROT),
    .m_axi_v2gx2_ARQOS(v2gx2_ARQOS),
    .m_axi_v2gx2_ARREGION(v2gx2_ARREGION),
    .m_axi_v2gx2_ARUSER(v2gx2_ARUSER),
    .m_axi_v2gx2_RVALID(v2gx2_RVALID),
    .m_axi_v2gx2_RREADY(v2gx2_RREADY),
    .m_axi_v2gx2_RDATA(v2gx2_RDATA),
    .m_axi_v2gx2_RLAST(v2gx2_RLAST),
    .m_axi_v2gx2_RID(v2gx2_RID),
    .m_axi_v2gx2_RUSER(v2gx2_RUSER),
    .m_axi_v2gx2_RRESP(v2gx2_RRESP),
    .m_axi_v2gx2_BVALID(v2gx2_BVALID),
    .m_axi_v2gx2_BREADY(v2gx2_BREADY),
    .m_axi_v2gx2_BRESP(v2gx2_BRESP),
    .m_axi_v2gx2_BID(v2gx2_BID),
    .m_axi_v2gx2_BUSER(v2gx2_BUSER),
    .m_axi_v2gx3_AWVALID(v2gx3_AWVALID),
    .m_axi_v2gx3_AWREADY(v2gx3_AWREADY),
    .m_axi_v2gx3_AWADDR(v2gx3_AWADDR),
    .m_axi_v2gx3_AWID(v2gx3_AWID),
    .m_axi_v2gx3_AWLEN(v2gx3_AWLEN),
    .m_axi_v2gx3_AWSIZE(v2gx3_AWSIZE),
    .m_axi_v2gx3_AWBURST(v2gx3_AWBURST),
    .m_axi_v2gx3_AWLOCK(v2gx3_AWLOCK),
    .m_axi_v2gx3_AWCACHE(v2gx3_AWCACHE),
    .m_axi_v2gx3_AWPROT(v2gx3_AWPROT),
    .m_axi_v2gx3_AWQOS(v2gx3_AWQOS),
    .m_axi_v2gx3_AWREGION(v2gx3_AWREGION),
    .m_axi_v2gx3_AWUSER(v2gx3_AWUSER),
    .m_axi_v2gx3_WVALID(v2gx3_WVALID),
    .m_axi_v2gx3_WREADY(v2gx3_WREADY),
    .m_axi_v2gx3_WDATA(v2gx3_WDATA),
    .m_axi_v2gx3_WSTRB(v2gx3_WSTRB),
    .m_axi_v2gx3_WLAST(v2gx3_WLAST),
    .m_axi_v2gx3_WID(v2gx3_WID),
    .m_axi_v2gx3_WUSER(v2gx3_WUSER),
    .m_axi_v2gx3_ARVALID(v2gx3_ARVALID),
    .m_axi_v2gx3_ARREADY(v2gx3_ARREADY),
    .m_axi_v2gx3_ARADDR(v2gx3_ARADDR),
    .m_axi_v2gx3_ARID(v2gx3_ARID),
    .m_axi_v2gx3_ARLEN(v2gx3_ARLEN),
    .m_axi_v2gx3_ARSIZE(v2gx3_ARSIZE),
    .m_axi_v2gx3_ARBURST(v2gx3_ARBURST),
    .m_axi_v2gx3_ARLOCK(v2gx3_ARLOCK),
    .m_axi_v2gx3_ARCACHE(v2gx3_ARCACHE),
    .m_axi_v2gx3_ARPROT(v2gx3_ARPROT),
    .m_axi_v2gx3_ARQOS(v2gx3_ARQOS),
    .m_axi_v2gx3_ARREGION(v2gx3_ARREGION),
    .m_axi_v2gx3_ARUSER(v2gx3_ARUSER),
    .m_axi_v2gx3_RVALID(v2gx3_RVALID),
    .m_axi_v2gx3_RREADY(v2gx3_RREADY),
    .m_axi_v2gx3_RDATA(v2gx3_RDATA),
    .m_axi_v2gx3_RLAST(v2gx3_RLAST),
    .m_axi_v2gx3_RID(v2gx3_RID),
    .m_axi_v2gx3_RUSER(v2gx3_RUSER),
    .m_axi_v2gx3_RRESP(v2gx3_RRESP),
    .m_axi_v2gx3_BVALID(v2gx3_BVALID),
    .m_axi_v2gx3_BREADY(v2gx3_BREADY),
    .m_axi_v2gx3_BRESP(v2gx3_BRESP),
    .m_axi_v2gx3_BID(v2gx3_BID),
    .m_axi_v2gx3_BUSER(v2gx3_BUSER),
    .m_axi_v2gx4_AWVALID(v2gx4_AWVALID),
    .m_axi_v2gx4_AWREADY(v2gx4_AWREADY),
    .m_axi_v2gx4_AWADDR(v2gx4_AWADDR),
    .m_axi_v2gx4_AWID(v2gx4_AWID),
    .m_axi_v2gx4_AWLEN(v2gx4_AWLEN),
    .m_axi_v2gx4_AWSIZE(v2gx4_AWSIZE),
    .m_axi_v2gx4_AWBURST(v2gx4_AWBURST),
    .m_axi_v2gx4_AWLOCK(v2gx4_AWLOCK),
    .m_axi_v2gx4_AWCACHE(v2gx4_AWCACHE),
    .m_axi_v2gx4_AWPROT(v2gx4_AWPROT),
    .m_axi_v2gx4_AWQOS(v2gx4_AWQOS),
    .m_axi_v2gx4_AWREGION(v2gx4_AWREGION),
    .m_axi_v2gx4_AWUSER(v2gx4_AWUSER),
    .m_axi_v2gx4_WVALID(v2gx4_WVALID),
    .m_axi_v2gx4_WREADY(v2gx4_WREADY),
    .m_axi_v2gx4_WDATA(v2gx4_WDATA),
    .m_axi_v2gx4_WSTRB(v2gx4_WSTRB),
    .m_axi_v2gx4_WLAST(v2gx4_WLAST),
    .m_axi_v2gx4_WID(v2gx4_WID),
    .m_axi_v2gx4_WUSER(v2gx4_WUSER),
    .m_axi_v2gx4_ARVALID(v2gx4_ARVALID),
    .m_axi_v2gx4_ARREADY(v2gx4_ARREADY),
    .m_axi_v2gx4_ARADDR(v2gx4_ARADDR),
    .m_axi_v2gx4_ARID(v2gx4_ARID),
    .m_axi_v2gx4_ARLEN(v2gx4_ARLEN),
    .m_axi_v2gx4_ARSIZE(v2gx4_ARSIZE),
    .m_axi_v2gx4_ARBURST(v2gx4_ARBURST),
    .m_axi_v2gx4_ARLOCK(v2gx4_ARLOCK),
    .m_axi_v2gx4_ARCACHE(v2gx4_ARCACHE),
    .m_axi_v2gx4_ARPROT(v2gx4_ARPROT),
    .m_axi_v2gx4_ARQOS(v2gx4_ARQOS),
    .m_axi_v2gx4_ARREGION(v2gx4_ARREGION),
    .m_axi_v2gx4_ARUSER(v2gx4_ARUSER),
    .m_axi_v2gx4_RVALID(v2gx4_RVALID),
    .m_axi_v2gx4_RREADY(v2gx4_RREADY),
    .m_axi_v2gx4_RDATA(v2gx4_RDATA),
    .m_axi_v2gx4_RLAST(v2gx4_RLAST),
    .m_axi_v2gx4_RID(v2gx4_RID),
    .m_axi_v2gx4_RUSER(v2gx4_RUSER),
    .m_axi_v2gx4_RRESP(v2gx4_RRESP),
    .m_axi_v2gx4_BVALID(v2gx4_BVALID),
    .m_axi_v2gx4_BREADY(v2gx4_BREADY),
    .m_axi_v2gx4_BRESP(v2gx4_BRESP),
    .m_axi_v2gx4_BID(v2gx4_BID),
    .m_axi_v2gx4_BUSER(v2gx4_BUSER),
    .m_axi_v2ga0_AWVALID(v2ga0_AWVALID),
    .m_axi_v2ga0_AWREADY(v2ga0_AWREADY),
    .m_axi_v2ga0_AWADDR(v2ga0_AWADDR),
    .m_axi_v2ga0_AWID(v2ga0_AWID),
    .m_axi_v2ga0_AWLEN(v2ga0_AWLEN),
    .m_axi_v2ga0_AWSIZE(v2ga0_AWSIZE),
    .m_axi_v2ga0_AWBURST(v2ga0_AWBURST),
    .m_axi_v2ga0_AWLOCK(v2ga0_AWLOCK),
    .m_axi_v2ga0_AWCACHE(v2ga0_AWCACHE),
    .m_axi_v2ga0_AWPROT(v2ga0_AWPROT),
    .m_axi_v2ga0_AWQOS(v2ga0_AWQOS),
    .m_axi_v2ga0_AWREGION(v2ga0_AWREGION),
    .m_axi_v2ga0_AWUSER(v2ga0_AWUSER),
    .m_axi_v2ga0_WVALID(v2ga0_WVALID),
    .m_axi_v2ga0_WREADY(v2ga0_WREADY),
    .m_axi_v2ga0_WDATA(v2ga0_WDATA),
    .m_axi_v2ga0_WSTRB(v2ga0_WSTRB),
    .m_axi_v2ga0_WLAST(v2ga0_WLAST),
    .m_axi_v2ga0_WID(v2ga0_WID),
    .m_axi_v2ga0_WUSER(v2ga0_WUSER),
    .m_axi_v2ga0_ARVALID(v2ga0_ARVALID),
    .m_axi_v2ga0_ARREADY(v2ga0_ARREADY),
    .m_axi_v2ga0_ARADDR(v2ga0_ARADDR),
    .m_axi_v2ga0_ARID(v2ga0_ARID),
    .m_axi_v2ga0_ARLEN(v2ga0_ARLEN),
    .m_axi_v2ga0_ARSIZE(v2ga0_ARSIZE),
    .m_axi_v2ga0_ARBURST(v2ga0_ARBURST),
    .m_axi_v2ga0_ARLOCK(v2ga0_ARLOCK),
    .m_axi_v2ga0_ARCACHE(v2ga0_ARCACHE),
    .m_axi_v2ga0_ARPROT(v2ga0_ARPROT),
    .m_axi_v2ga0_ARQOS(v2ga0_ARQOS),
    .m_axi_v2ga0_ARREGION(v2ga0_ARREGION),
    .m_axi_v2ga0_ARUSER(v2ga0_ARUSER),
    .m_axi_v2ga0_RVALID(v2ga0_RVALID),
    .m_axi_v2ga0_RREADY(v2ga0_RREADY),
    .m_axi_v2ga0_RDATA(v2ga0_RDATA),
    .m_axi_v2ga0_RLAST(v2ga0_RLAST),
    .m_axi_v2ga0_RID(v2ga0_RID),
    .m_axi_v2ga0_RUSER(v2ga0_RUSER),
    .m_axi_v2ga0_RRESP(v2ga0_RRESP),
    .m_axi_v2ga0_BVALID(v2ga0_BVALID),
    .m_axi_v2ga0_BREADY(v2ga0_BREADY),
    .m_axi_v2ga0_BRESP(v2ga0_BRESP),
    .m_axi_v2ga0_BID(v2ga0_BID),
    .m_axi_v2ga0_BUSER(v2ga0_BUSER),
    .m_axi_v2gw0_AWVALID(m_axi_v2gw0_AWVALID),
    .m_axi_v2gw0_AWREADY(m_axi_v2gw0_AWREADY),
    .m_axi_v2gw0_AWADDR(m_axi_v2gw0_AWADDR),
    .m_axi_v2gw0_AWID(m_axi_v2gw0_AWID),
    .m_axi_v2gw0_AWLEN(m_axi_v2gw0_AWLEN),
    .m_axi_v2gw0_AWSIZE(m_axi_v2gw0_AWSIZE),
    .m_axi_v2gw0_AWBURST(m_axi_v2gw0_AWBURST),
    .m_axi_v2gw0_AWLOCK(m_axi_v2gw0_AWLOCK),
    .m_axi_v2gw0_AWCACHE(m_axi_v2gw0_AWCACHE),
    .m_axi_v2gw0_AWPROT(m_axi_v2gw0_AWPROT),
    .m_axi_v2gw0_AWQOS(m_axi_v2gw0_AWQOS),
    .m_axi_v2gw0_AWREGION(m_axi_v2gw0_AWREGION),
    .m_axi_v2gw0_AWUSER(m_axi_v2gw0_AWUSER),
    .m_axi_v2gw0_WVALID(m_axi_v2gw0_WVALID),
    .m_axi_v2gw0_WREADY(m_axi_v2gw0_WREADY),
    .m_axi_v2gw0_WDATA(m_axi_v2gw0_WDATA),
    .m_axi_v2gw0_WSTRB(m_axi_v2gw0_WSTRB),
    .m_axi_v2gw0_WLAST(m_axi_v2gw0_WLAST),
    .m_axi_v2gw0_WID(m_axi_v2gw0_WID),
    .m_axi_v2gw0_WUSER(m_axi_v2gw0_WUSER),
    .m_axi_v2gw0_ARVALID(m_axi_v2gw0_ARVALID),
    .m_axi_v2gw0_ARREADY(m_axi_v2gw0_ARREADY),
    .m_axi_v2gw0_ARADDR(m_axi_v2gw0_ARADDR),
    .m_axi_v2gw0_ARID(m_axi_v2gw0_ARID),
    .m_axi_v2gw0_ARLEN(m_axi_v2gw0_ARLEN),
    .m_axi_v2gw0_ARSIZE(m_axi_v2gw0_ARSIZE),
    .m_axi_v2gw0_ARBURST(m_axi_v2gw0_ARBURST),
    .m_axi_v2gw0_ARLOCK(m_axi_v2gw0_ARLOCK),
    .m_axi_v2gw0_ARCACHE(m_axi_v2gw0_ARCACHE),
    .m_axi_v2gw0_ARPROT(m_axi_v2gw0_ARPROT),
    .m_axi_v2gw0_ARQOS(m_axi_v2gw0_ARQOS),
    .m_axi_v2gw0_ARREGION(m_axi_v2gw0_ARREGION),
    .m_axi_v2gw0_ARUSER(m_axi_v2gw0_ARUSER),
    .m_axi_v2gw0_RVALID(m_axi_v2gw0_RVALID),
    .m_axi_v2gw0_RREADY(m_axi_v2gw0_RREADY),
    .m_axi_v2gw0_RDATA(m_axi_v2gw0_RDATA),
    .m_axi_v2gw0_RLAST(m_axi_v2gw0_RLAST),
    .m_axi_v2gw0_RID(m_axi_v2gw0_RID),
    .m_axi_v2gw0_RUSER(m_axi_v2gw0_RUSER),
    .m_axi_v2gw0_RRESP(m_axi_v2gw0_RRESP),
    .m_axi_v2gw0_BVALID(m_axi_v2gw0_BVALID),
    .m_axi_v2gw0_BREADY(m_axi_v2gw0_BREADY),
    .m_axi_v2gw0_BRESP(m_axi_v2gw0_BRESP),
    .m_axi_v2gw0_BID(m_axi_v2gw0_BID),
    .m_axi_v2gw0_BUSER(m_axi_v2gw0_BUSER),
    .active_count(active_count),
    .n(n),
    .status(status),
    .status_ap_vld(status_ap_vld),
    .muladds(muladds),
    .muladds_ap_vld(muladds_ap_vld));

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


wire    AESL_axi_master_v2gl0_ready;
wire    AESL_axi_master_v2gl0_done;
AESL_axi_master_v2gl0 AESL_AXI_MASTER_v2gl0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2gl0_AWVALID (v2gl0_AWVALID),
    .TRAN_v2gl0_AWREADY (v2gl0_AWREADY),
    .TRAN_v2gl0_AWADDR (v2gl0_AWADDR),
    .TRAN_v2gl0_AWID (v2gl0_AWID),
    .TRAN_v2gl0_AWLEN (v2gl0_AWLEN),
    .TRAN_v2gl0_AWSIZE (v2gl0_AWSIZE),
    .TRAN_v2gl0_AWBURST (v2gl0_AWBURST),
    .TRAN_v2gl0_AWLOCK (v2gl0_AWLOCK),
    .TRAN_v2gl0_AWCACHE (v2gl0_AWCACHE),
    .TRAN_v2gl0_AWPROT (v2gl0_AWPROT),
    .TRAN_v2gl0_AWQOS (v2gl0_AWQOS),
    .TRAN_v2gl0_AWREGION (v2gl0_AWREGION),
    .TRAN_v2gl0_AWUSER (v2gl0_AWUSER),
    .TRAN_v2gl0_WVALID (v2gl0_WVALID),
    .TRAN_v2gl0_WREADY (v2gl0_WREADY),
    .TRAN_v2gl0_WDATA (v2gl0_WDATA),
    .TRAN_v2gl0_WSTRB (v2gl0_WSTRB),
    .TRAN_v2gl0_WLAST (v2gl0_WLAST),
    .TRAN_v2gl0_WID (v2gl0_WID),
    .TRAN_v2gl0_WUSER (v2gl0_WUSER),
    .TRAN_v2gl0_ARVALID (v2gl0_ARVALID),
    .TRAN_v2gl0_ARREADY (v2gl0_ARREADY),
    .TRAN_v2gl0_ARADDR (v2gl0_ARADDR),
    .TRAN_v2gl0_ARID (v2gl0_ARID),
    .TRAN_v2gl0_ARLEN (v2gl0_ARLEN),
    .TRAN_v2gl0_ARSIZE (v2gl0_ARSIZE),
    .TRAN_v2gl0_ARBURST (v2gl0_ARBURST),
    .TRAN_v2gl0_ARLOCK (v2gl0_ARLOCK),
    .TRAN_v2gl0_ARCACHE (v2gl0_ARCACHE),
    .TRAN_v2gl0_ARPROT (v2gl0_ARPROT),
    .TRAN_v2gl0_ARQOS (v2gl0_ARQOS),
    .TRAN_v2gl0_ARREGION (v2gl0_ARREGION),
    .TRAN_v2gl0_ARUSER (v2gl0_ARUSER),
    .TRAN_v2gl0_RVALID (v2gl0_RVALID),
    .TRAN_v2gl0_RREADY (v2gl0_RREADY),
    .TRAN_v2gl0_RDATA (v2gl0_RDATA),
    .TRAN_v2gl0_RLAST (v2gl0_RLAST),
    .TRAN_v2gl0_RID (v2gl0_RID),
    .TRAN_v2gl0_RUSER (v2gl0_RUSER),
    .TRAN_v2gl0_RRESP (v2gl0_RRESP),
    .TRAN_v2gl0_BVALID (v2gl0_BVALID),
    .TRAN_v2gl0_BREADY (v2gl0_BREADY),
    .TRAN_v2gl0_BRESP (v2gl0_BRESP),
    .TRAN_v2gl0_BID (v2gl0_BID),
    .TRAN_v2gl0_BUSER (v2gl0_BUSER),
    .ready (AESL_axi_master_v2gl0_ready),
    .done  (AESL_axi_master_v2gl0_done)
);
assign    AESL_axi_master_v2gl0_ready    =   ready;
assign    AESL_axi_master_v2gl0_done    =   AESL_done_delay;
wire    AESL_axi_master_v2gl1_ready;
wire    AESL_axi_master_v2gl1_done;
AESL_axi_master_v2gl1 AESL_AXI_MASTER_v2gl1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2gl1_AWVALID (v2gl1_AWVALID),
    .TRAN_v2gl1_AWREADY (v2gl1_AWREADY),
    .TRAN_v2gl1_AWADDR (v2gl1_AWADDR),
    .TRAN_v2gl1_AWID (v2gl1_AWID),
    .TRAN_v2gl1_AWLEN (v2gl1_AWLEN),
    .TRAN_v2gl1_AWSIZE (v2gl1_AWSIZE),
    .TRAN_v2gl1_AWBURST (v2gl1_AWBURST),
    .TRAN_v2gl1_AWLOCK (v2gl1_AWLOCK),
    .TRAN_v2gl1_AWCACHE (v2gl1_AWCACHE),
    .TRAN_v2gl1_AWPROT (v2gl1_AWPROT),
    .TRAN_v2gl1_AWQOS (v2gl1_AWQOS),
    .TRAN_v2gl1_AWREGION (v2gl1_AWREGION),
    .TRAN_v2gl1_AWUSER (v2gl1_AWUSER),
    .TRAN_v2gl1_WVALID (v2gl1_WVALID),
    .TRAN_v2gl1_WREADY (v2gl1_WREADY),
    .TRAN_v2gl1_WDATA (v2gl1_WDATA),
    .TRAN_v2gl1_WSTRB (v2gl1_WSTRB),
    .TRAN_v2gl1_WLAST (v2gl1_WLAST),
    .TRAN_v2gl1_WID (v2gl1_WID),
    .TRAN_v2gl1_WUSER (v2gl1_WUSER),
    .TRAN_v2gl1_ARVALID (v2gl1_ARVALID),
    .TRAN_v2gl1_ARREADY (v2gl1_ARREADY),
    .TRAN_v2gl1_ARADDR (v2gl1_ARADDR),
    .TRAN_v2gl1_ARID (v2gl1_ARID),
    .TRAN_v2gl1_ARLEN (v2gl1_ARLEN),
    .TRAN_v2gl1_ARSIZE (v2gl1_ARSIZE),
    .TRAN_v2gl1_ARBURST (v2gl1_ARBURST),
    .TRAN_v2gl1_ARLOCK (v2gl1_ARLOCK),
    .TRAN_v2gl1_ARCACHE (v2gl1_ARCACHE),
    .TRAN_v2gl1_ARPROT (v2gl1_ARPROT),
    .TRAN_v2gl1_ARQOS (v2gl1_ARQOS),
    .TRAN_v2gl1_ARREGION (v2gl1_ARREGION),
    .TRAN_v2gl1_ARUSER (v2gl1_ARUSER),
    .TRAN_v2gl1_RVALID (v2gl1_RVALID),
    .TRAN_v2gl1_RREADY (v2gl1_RREADY),
    .TRAN_v2gl1_RDATA (v2gl1_RDATA),
    .TRAN_v2gl1_RLAST (v2gl1_RLAST),
    .TRAN_v2gl1_RID (v2gl1_RID),
    .TRAN_v2gl1_RUSER (v2gl1_RUSER),
    .TRAN_v2gl1_RRESP (v2gl1_RRESP),
    .TRAN_v2gl1_BVALID (v2gl1_BVALID),
    .TRAN_v2gl1_BREADY (v2gl1_BREADY),
    .TRAN_v2gl1_BRESP (v2gl1_BRESP),
    .TRAN_v2gl1_BID (v2gl1_BID),
    .TRAN_v2gl1_BUSER (v2gl1_BUSER),
    .ready (AESL_axi_master_v2gl1_ready),
    .done  (AESL_axi_master_v2gl1_done)
);
assign    AESL_axi_master_v2gl1_ready    =   ready;
assign    AESL_axi_master_v2gl1_done    =   AESL_done_delay;
wire    AESL_axi_master_v2gl2_ready;
wire    AESL_axi_master_v2gl2_done;
AESL_axi_master_v2gl2 AESL_AXI_MASTER_v2gl2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2gl2_AWVALID (v2gl2_AWVALID),
    .TRAN_v2gl2_AWREADY (v2gl2_AWREADY),
    .TRAN_v2gl2_AWADDR (v2gl2_AWADDR),
    .TRAN_v2gl2_AWID (v2gl2_AWID),
    .TRAN_v2gl2_AWLEN (v2gl2_AWLEN),
    .TRAN_v2gl2_AWSIZE (v2gl2_AWSIZE),
    .TRAN_v2gl2_AWBURST (v2gl2_AWBURST),
    .TRAN_v2gl2_AWLOCK (v2gl2_AWLOCK),
    .TRAN_v2gl2_AWCACHE (v2gl2_AWCACHE),
    .TRAN_v2gl2_AWPROT (v2gl2_AWPROT),
    .TRAN_v2gl2_AWQOS (v2gl2_AWQOS),
    .TRAN_v2gl2_AWREGION (v2gl2_AWREGION),
    .TRAN_v2gl2_AWUSER (v2gl2_AWUSER),
    .TRAN_v2gl2_WVALID (v2gl2_WVALID),
    .TRAN_v2gl2_WREADY (v2gl2_WREADY),
    .TRAN_v2gl2_WDATA (v2gl2_WDATA),
    .TRAN_v2gl2_WSTRB (v2gl2_WSTRB),
    .TRAN_v2gl2_WLAST (v2gl2_WLAST),
    .TRAN_v2gl2_WID (v2gl2_WID),
    .TRAN_v2gl2_WUSER (v2gl2_WUSER),
    .TRAN_v2gl2_ARVALID (v2gl2_ARVALID),
    .TRAN_v2gl2_ARREADY (v2gl2_ARREADY),
    .TRAN_v2gl2_ARADDR (v2gl2_ARADDR),
    .TRAN_v2gl2_ARID (v2gl2_ARID),
    .TRAN_v2gl2_ARLEN (v2gl2_ARLEN),
    .TRAN_v2gl2_ARSIZE (v2gl2_ARSIZE),
    .TRAN_v2gl2_ARBURST (v2gl2_ARBURST),
    .TRAN_v2gl2_ARLOCK (v2gl2_ARLOCK),
    .TRAN_v2gl2_ARCACHE (v2gl2_ARCACHE),
    .TRAN_v2gl2_ARPROT (v2gl2_ARPROT),
    .TRAN_v2gl2_ARQOS (v2gl2_ARQOS),
    .TRAN_v2gl2_ARREGION (v2gl2_ARREGION),
    .TRAN_v2gl2_ARUSER (v2gl2_ARUSER),
    .TRAN_v2gl2_RVALID (v2gl2_RVALID),
    .TRAN_v2gl2_RREADY (v2gl2_RREADY),
    .TRAN_v2gl2_RDATA (v2gl2_RDATA),
    .TRAN_v2gl2_RLAST (v2gl2_RLAST),
    .TRAN_v2gl2_RID (v2gl2_RID),
    .TRAN_v2gl2_RUSER (v2gl2_RUSER),
    .TRAN_v2gl2_RRESP (v2gl2_RRESP),
    .TRAN_v2gl2_BVALID (v2gl2_BVALID),
    .TRAN_v2gl2_BREADY (v2gl2_BREADY),
    .TRAN_v2gl2_BRESP (v2gl2_BRESP),
    .TRAN_v2gl2_BID (v2gl2_BID),
    .TRAN_v2gl2_BUSER (v2gl2_BUSER),
    .ready (AESL_axi_master_v2gl2_ready),
    .done  (AESL_axi_master_v2gl2_done)
);
assign    AESL_axi_master_v2gl2_ready    =   ready;
assign    AESL_axi_master_v2gl2_done    =   AESL_done_delay;
wire    AESL_axi_master_v2gb0_ready;
wire    AESL_axi_master_v2gb0_done;
AESL_axi_master_v2gb0 AESL_AXI_MASTER_v2gb0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2gb0_AWVALID (v2gb0_AWVALID),
    .TRAN_v2gb0_AWREADY (v2gb0_AWREADY),
    .TRAN_v2gb0_AWADDR (v2gb0_AWADDR),
    .TRAN_v2gb0_AWID (v2gb0_AWID),
    .TRAN_v2gb0_AWLEN (v2gb0_AWLEN),
    .TRAN_v2gb0_AWSIZE (v2gb0_AWSIZE),
    .TRAN_v2gb0_AWBURST (v2gb0_AWBURST),
    .TRAN_v2gb0_AWLOCK (v2gb0_AWLOCK),
    .TRAN_v2gb0_AWCACHE (v2gb0_AWCACHE),
    .TRAN_v2gb0_AWPROT (v2gb0_AWPROT),
    .TRAN_v2gb0_AWQOS (v2gb0_AWQOS),
    .TRAN_v2gb0_AWREGION (v2gb0_AWREGION),
    .TRAN_v2gb0_AWUSER (v2gb0_AWUSER),
    .TRAN_v2gb0_WVALID (v2gb0_WVALID),
    .TRAN_v2gb0_WREADY (v2gb0_WREADY),
    .TRAN_v2gb0_WDATA (v2gb0_WDATA),
    .TRAN_v2gb0_WSTRB (v2gb0_WSTRB),
    .TRAN_v2gb0_WLAST (v2gb0_WLAST),
    .TRAN_v2gb0_WID (v2gb0_WID),
    .TRAN_v2gb0_WUSER (v2gb0_WUSER),
    .TRAN_v2gb0_ARVALID (v2gb0_ARVALID),
    .TRAN_v2gb0_ARREADY (v2gb0_ARREADY),
    .TRAN_v2gb0_ARADDR (v2gb0_ARADDR),
    .TRAN_v2gb0_ARID (v2gb0_ARID),
    .TRAN_v2gb0_ARLEN (v2gb0_ARLEN),
    .TRAN_v2gb0_ARSIZE (v2gb0_ARSIZE),
    .TRAN_v2gb0_ARBURST (v2gb0_ARBURST),
    .TRAN_v2gb0_ARLOCK (v2gb0_ARLOCK),
    .TRAN_v2gb0_ARCACHE (v2gb0_ARCACHE),
    .TRAN_v2gb0_ARPROT (v2gb0_ARPROT),
    .TRAN_v2gb0_ARQOS (v2gb0_ARQOS),
    .TRAN_v2gb0_ARREGION (v2gb0_ARREGION),
    .TRAN_v2gb0_ARUSER (v2gb0_ARUSER),
    .TRAN_v2gb0_RVALID (v2gb0_RVALID),
    .TRAN_v2gb0_RREADY (v2gb0_RREADY),
    .TRAN_v2gb0_RDATA (v2gb0_RDATA),
    .TRAN_v2gb0_RLAST (v2gb0_RLAST),
    .TRAN_v2gb0_RID (v2gb0_RID),
    .TRAN_v2gb0_RUSER (v2gb0_RUSER),
    .TRAN_v2gb0_RRESP (v2gb0_RRESP),
    .TRAN_v2gb0_BVALID (v2gb0_BVALID),
    .TRAN_v2gb0_BREADY (v2gb0_BREADY),
    .TRAN_v2gb0_BRESP (v2gb0_BRESP),
    .TRAN_v2gb0_BID (v2gb0_BID),
    .TRAN_v2gb0_BUSER (v2gb0_BUSER),
    .ready (AESL_axi_master_v2gb0_ready),
    .done  (AESL_axi_master_v2gb0_done)
);
assign    AESL_axi_master_v2gb0_ready    =   ready;
assign    AESL_axi_master_v2gb0_done    =   AESL_done_delay;
wire    AESL_axi_master_v2gb1_ready;
wire    AESL_axi_master_v2gb1_done;
AESL_axi_master_v2gb1 AESL_AXI_MASTER_v2gb1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2gb1_AWVALID (v2gb1_AWVALID),
    .TRAN_v2gb1_AWREADY (v2gb1_AWREADY),
    .TRAN_v2gb1_AWADDR (v2gb1_AWADDR),
    .TRAN_v2gb1_AWID (v2gb1_AWID),
    .TRAN_v2gb1_AWLEN (v2gb1_AWLEN),
    .TRAN_v2gb1_AWSIZE (v2gb1_AWSIZE),
    .TRAN_v2gb1_AWBURST (v2gb1_AWBURST),
    .TRAN_v2gb1_AWLOCK (v2gb1_AWLOCK),
    .TRAN_v2gb1_AWCACHE (v2gb1_AWCACHE),
    .TRAN_v2gb1_AWPROT (v2gb1_AWPROT),
    .TRAN_v2gb1_AWQOS (v2gb1_AWQOS),
    .TRAN_v2gb1_AWREGION (v2gb1_AWREGION),
    .TRAN_v2gb1_AWUSER (v2gb1_AWUSER),
    .TRAN_v2gb1_WVALID (v2gb1_WVALID),
    .TRAN_v2gb1_WREADY (v2gb1_WREADY),
    .TRAN_v2gb1_WDATA (v2gb1_WDATA),
    .TRAN_v2gb1_WSTRB (v2gb1_WSTRB),
    .TRAN_v2gb1_WLAST (v2gb1_WLAST),
    .TRAN_v2gb1_WID (v2gb1_WID),
    .TRAN_v2gb1_WUSER (v2gb1_WUSER),
    .TRAN_v2gb1_ARVALID (v2gb1_ARVALID),
    .TRAN_v2gb1_ARREADY (v2gb1_ARREADY),
    .TRAN_v2gb1_ARADDR (v2gb1_ARADDR),
    .TRAN_v2gb1_ARID (v2gb1_ARID),
    .TRAN_v2gb1_ARLEN (v2gb1_ARLEN),
    .TRAN_v2gb1_ARSIZE (v2gb1_ARSIZE),
    .TRAN_v2gb1_ARBURST (v2gb1_ARBURST),
    .TRAN_v2gb1_ARLOCK (v2gb1_ARLOCK),
    .TRAN_v2gb1_ARCACHE (v2gb1_ARCACHE),
    .TRAN_v2gb1_ARPROT (v2gb1_ARPROT),
    .TRAN_v2gb1_ARQOS (v2gb1_ARQOS),
    .TRAN_v2gb1_ARREGION (v2gb1_ARREGION),
    .TRAN_v2gb1_ARUSER (v2gb1_ARUSER),
    .TRAN_v2gb1_RVALID (v2gb1_RVALID),
    .TRAN_v2gb1_RREADY (v2gb1_RREADY),
    .TRAN_v2gb1_RDATA (v2gb1_RDATA),
    .TRAN_v2gb1_RLAST (v2gb1_RLAST),
    .TRAN_v2gb1_RID (v2gb1_RID),
    .TRAN_v2gb1_RUSER (v2gb1_RUSER),
    .TRAN_v2gb1_RRESP (v2gb1_RRESP),
    .TRAN_v2gb1_BVALID (v2gb1_BVALID),
    .TRAN_v2gb1_BREADY (v2gb1_BREADY),
    .TRAN_v2gb1_BRESP (v2gb1_BRESP),
    .TRAN_v2gb1_BID (v2gb1_BID),
    .TRAN_v2gb1_BUSER (v2gb1_BUSER),
    .ready (AESL_axi_master_v2gb1_ready),
    .done  (AESL_axi_master_v2gb1_done)
);
assign    AESL_axi_master_v2gb1_ready    =   ready;
assign    AESL_axi_master_v2gb1_done    =   AESL_done_delay;
wire    AESL_axi_master_v2gb2_ready;
wire    AESL_axi_master_v2gb2_done;
AESL_axi_master_v2gb2 AESL_AXI_MASTER_v2gb2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2gb2_AWVALID (v2gb2_AWVALID),
    .TRAN_v2gb2_AWREADY (v2gb2_AWREADY),
    .TRAN_v2gb2_AWADDR (v2gb2_AWADDR),
    .TRAN_v2gb2_AWID (v2gb2_AWID),
    .TRAN_v2gb2_AWLEN (v2gb2_AWLEN),
    .TRAN_v2gb2_AWSIZE (v2gb2_AWSIZE),
    .TRAN_v2gb2_AWBURST (v2gb2_AWBURST),
    .TRAN_v2gb2_AWLOCK (v2gb2_AWLOCK),
    .TRAN_v2gb2_AWCACHE (v2gb2_AWCACHE),
    .TRAN_v2gb2_AWPROT (v2gb2_AWPROT),
    .TRAN_v2gb2_AWQOS (v2gb2_AWQOS),
    .TRAN_v2gb2_AWREGION (v2gb2_AWREGION),
    .TRAN_v2gb2_AWUSER (v2gb2_AWUSER),
    .TRAN_v2gb2_WVALID (v2gb2_WVALID),
    .TRAN_v2gb2_WREADY (v2gb2_WREADY),
    .TRAN_v2gb2_WDATA (v2gb2_WDATA),
    .TRAN_v2gb2_WSTRB (v2gb2_WSTRB),
    .TRAN_v2gb2_WLAST (v2gb2_WLAST),
    .TRAN_v2gb2_WID (v2gb2_WID),
    .TRAN_v2gb2_WUSER (v2gb2_WUSER),
    .TRAN_v2gb2_ARVALID (v2gb2_ARVALID),
    .TRAN_v2gb2_ARREADY (v2gb2_ARREADY),
    .TRAN_v2gb2_ARADDR (v2gb2_ARADDR),
    .TRAN_v2gb2_ARID (v2gb2_ARID),
    .TRAN_v2gb2_ARLEN (v2gb2_ARLEN),
    .TRAN_v2gb2_ARSIZE (v2gb2_ARSIZE),
    .TRAN_v2gb2_ARBURST (v2gb2_ARBURST),
    .TRAN_v2gb2_ARLOCK (v2gb2_ARLOCK),
    .TRAN_v2gb2_ARCACHE (v2gb2_ARCACHE),
    .TRAN_v2gb2_ARPROT (v2gb2_ARPROT),
    .TRAN_v2gb2_ARQOS (v2gb2_ARQOS),
    .TRAN_v2gb2_ARREGION (v2gb2_ARREGION),
    .TRAN_v2gb2_ARUSER (v2gb2_ARUSER),
    .TRAN_v2gb2_RVALID (v2gb2_RVALID),
    .TRAN_v2gb2_RREADY (v2gb2_RREADY),
    .TRAN_v2gb2_RDATA (v2gb2_RDATA),
    .TRAN_v2gb2_RLAST (v2gb2_RLAST),
    .TRAN_v2gb2_RID (v2gb2_RID),
    .TRAN_v2gb2_RUSER (v2gb2_RUSER),
    .TRAN_v2gb2_RRESP (v2gb2_RRESP),
    .TRAN_v2gb2_BVALID (v2gb2_BVALID),
    .TRAN_v2gb2_BREADY (v2gb2_BREADY),
    .TRAN_v2gb2_BRESP (v2gb2_BRESP),
    .TRAN_v2gb2_BID (v2gb2_BID),
    .TRAN_v2gb2_BUSER (v2gb2_BUSER),
    .ready (AESL_axi_master_v2gb2_ready),
    .done  (AESL_axi_master_v2gb2_done)
);
assign    AESL_axi_master_v2gb2_ready    =   ready;
assign    AESL_axi_master_v2gb2_done    =   AESL_done_delay;
wire    AESL_axi_master_v2gx0_ready;
wire    AESL_axi_master_v2gx0_done;
AESL_axi_master_v2gx0 AESL_AXI_MASTER_v2gx0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2gx0_AWVALID (v2gx0_AWVALID),
    .TRAN_v2gx0_AWREADY (v2gx0_AWREADY),
    .TRAN_v2gx0_AWADDR (v2gx0_AWADDR),
    .TRAN_v2gx0_AWID (v2gx0_AWID),
    .TRAN_v2gx0_AWLEN (v2gx0_AWLEN),
    .TRAN_v2gx0_AWSIZE (v2gx0_AWSIZE),
    .TRAN_v2gx0_AWBURST (v2gx0_AWBURST),
    .TRAN_v2gx0_AWLOCK (v2gx0_AWLOCK),
    .TRAN_v2gx0_AWCACHE (v2gx0_AWCACHE),
    .TRAN_v2gx0_AWPROT (v2gx0_AWPROT),
    .TRAN_v2gx0_AWQOS (v2gx0_AWQOS),
    .TRAN_v2gx0_AWREGION (v2gx0_AWREGION),
    .TRAN_v2gx0_AWUSER (v2gx0_AWUSER),
    .TRAN_v2gx0_WVALID (v2gx0_WVALID),
    .TRAN_v2gx0_WREADY (v2gx0_WREADY),
    .TRAN_v2gx0_WDATA (v2gx0_WDATA),
    .TRAN_v2gx0_WSTRB (v2gx0_WSTRB),
    .TRAN_v2gx0_WLAST (v2gx0_WLAST),
    .TRAN_v2gx0_WID (v2gx0_WID),
    .TRAN_v2gx0_WUSER (v2gx0_WUSER),
    .TRAN_v2gx0_ARVALID (v2gx0_ARVALID),
    .TRAN_v2gx0_ARREADY (v2gx0_ARREADY),
    .TRAN_v2gx0_ARADDR (v2gx0_ARADDR),
    .TRAN_v2gx0_ARID (v2gx0_ARID),
    .TRAN_v2gx0_ARLEN (v2gx0_ARLEN),
    .TRAN_v2gx0_ARSIZE (v2gx0_ARSIZE),
    .TRAN_v2gx0_ARBURST (v2gx0_ARBURST),
    .TRAN_v2gx0_ARLOCK (v2gx0_ARLOCK),
    .TRAN_v2gx0_ARCACHE (v2gx0_ARCACHE),
    .TRAN_v2gx0_ARPROT (v2gx0_ARPROT),
    .TRAN_v2gx0_ARQOS (v2gx0_ARQOS),
    .TRAN_v2gx0_ARREGION (v2gx0_ARREGION),
    .TRAN_v2gx0_ARUSER (v2gx0_ARUSER),
    .TRAN_v2gx0_RVALID (v2gx0_RVALID),
    .TRAN_v2gx0_RREADY (v2gx0_RREADY),
    .TRAN_v2gx0_RDATA (v2gx0_RDATA),
    .TRAN_v2gx0_RLAST (v2gx0_RLAST),
    .TRAN_v2gx0_RID (v2gx0_RID),
    .TRAN_v2gx0_RUSER (v2gx0_RUSER),
    .TRAN_v2gx0_RRESP (v2gx0_RRESP),
    .TRAN_v2gx0_BVALID (v2gx0_BVALID),
    .TRAN_v2gx0_BREADY (v2gx0_BREADY),
    .TRAN_v2gx0_BRESP (v2gx0_BRESP),
    .TRAN_v2gx0_BID (v2gx0_BID),
    .TRAN_v2gx0_BUSER (v2gx0_BUSER),
    .ready (AESL_axi_master_v2gx0_ready),
    .done  (AESL_axi_master_v2gx0_done)
);
assign    AESL_axi_master_v2gx0_ready    =   ready;
assign    AESL_axi_master_v2gx0_done    =   AESL_done_delay;
wire    AESL_axi_master_v2gx1_ready;
wire    AESL_axi_master_v2gx1_done;
AESL_axi_master_v2gx1 AESL_AXI_MASTER_v2gx1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2gx1_AWVALID (v2gx1_AWVALID),
    .TRAN_v2gx1_AWREADY (v2gx1_AWREADY),
    .TRAN_v2gx1_AWADDR (v2gx1_AWADDR),
    .TRAN_v2gx1_AWID (v2gx1_AWID),
    .TRAN_v2gx1_AWLEN (v2gx1_AWLEN),
    .TRAN_v2gx1_AWSIZE (v2gx1_AWSIZE),
    .TRAN_v2gx1_AWBURST (v2gx1_AWBURST),
    .TRAN_v2gx1_AWLOCK (v2gx1_AWLOCK),
    .TRAN_v2gx1_AWCACHE (v2gx1_AWCACHE),
    .TRAN_v2gx1_AWPROT (v2gx1_AWPROT),
    .TRAN_v2gx1_AWQOS (v2gx1_AWQOS),
    .TRAN_v2gx1_AWREGION (v2gx1_AWREGION),
    .TRAN_v2gx1_AWUSER (v2gx1_AWUSER),
    .TRAN_v2gx1_WVALID (v2gx1_WVALID),
    .TRAN_v2gx1_WREADY (v2gx1_WREADY),
    .TRAN_v2gx1_WDATA (v2gx1_WDATA),
    .TRAN_v2gx1_WSTRB (v2gx1_WSTRB),
    .TRAN_v2gx1_WLAST (v2gx1_WLAST),
    .TRAN_v2gx1_WID (v2gx1_WID),
    .TRAN_v2gx1_WUSER (v2gx1_WUSER),
    .TRAN_v2gx1_ARVALID (v2gx1_ARVALID),
    .TRAN_v2gx1_ARREADY (v2gx1_ARREADY),
    .TRAN_v2gx1_ARADDR (v2gx1_ARADDR),
    .TRAN_v2gx1_ARID (v2gx1_ARID),
    .TRAN_v2gx1_ARLEN (v2gx1_ARLEN),
    .TRAN_v2gx1_ARSIZE (v2gx1_ARSIZE),
    .TRAN_v2gx1_ARBURST (v2gx1_ARBURST),
    .TRAN_v2gx1_ARLOCK (v2gx1_ARLOCK),
    .TRAN_v2gx1_ARCACHE (v2gx1_ARCACHE),
    .TRAN_v2gx1_ARPROT (v2gx1_ARPROT),
    .TRAN_v2gx1_ARQOS (v2gx1_ARQOS),
    .TRAN_v2gx1_ARREGION (v2gx1_ARREGION),
    .TRAN_v2gx1_ARUSER (v2gx1_ARUSER),
    .TRAN_v2gx1_RVALID (v2gx1_RVALID),
    .TRAN_v2gx1_RREADY (v2gx1_RREADY),
    .TRAN_v2gx1_RDATA (v2gx1_RDATA),
    .TRAN_v2gx1_RLAST (v2gx1_RLAST),
    .TRAN_v2gx1_RID (v2gx1_RID),
    .TRAN_v2gx1_RUSER (v2gx1_RUSER),
    .TRAN_v2gx1_RRESP (v2gx1_RRESP),
    .TRAN_v2gx1_BVALID (v2gx1_BVALID),
    .TRAN_v2gx1_BREADY (v2gx1_BREADY),
    .TRAN_v2gx1_BRESP (v2gx1_BRESP),
    .TRAN_v2gx1_BID (v2gx1_BID),
    .TRAN_v2gx1_BUSER (v2gx1_BUSER),
    .ready (AESL_axi_master_v2gx1_ready),
    .done  (AESL_axi_master_v2gx1_done)
);
assign    AESL_axi_master_v2gx1_ready    =   ready;
assign    AESL_axi_master_v2gx1_done    =   AESL_done_delay;
wire    AESL_axi_master_v2gx2_ready;
wire    AESL_axi_master_v2gx2_done;
AESL_axi_master_v2gx2 AESL_AXI_MASTER_v2gx2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2gx2_AWVALID (v2gx2_AWVALID),
    .TRAN_v2gx2_AWREADY (v2gx2_AWREADY),
    .TRAN_v2gx2_AWADDR (v2gx2_AWADDR),
    .TRAN_v2gx2_AWID (v2gx2_AWID),
    .TRAN_v2gx2_AWLEN (v2gx2_AWLEN),
    .TRAN_v2gx2_AWSIZE (v2gx2_AWSIZE),
    .TRAN_v2gx2_AWBURST (v2gx2_AWBURST),
    .TRAN_v2gx2_AWLOCK (v2gx2_AWLOCK),
    .TRAN_v2gx2_AWCACHE (v2gx2_AWCACHE),
    .TRAN_v2gx2_AWPROT (v2gx2_AWPROT),
    .TRAN_v2gx2_AWQOS (v2gx2_AWQOS),
    .TRAN_v2gx2_AWREGION (v2gx2_AWREGION),
    .TRAN_v2gx2_AWUSER (v2gx2_AWUSER),
    .TRAN_v2gx2_WVALID (v2gx2_WVALID),
    .TRAN_v2gx2_WREADY (v2gx2_WREADY),
    .TRAN_v2gx2_WDATA (v2gx2_WDATA),
    .TRAN_v2gx2_WSTRB (v2gx2_WSTRB),
    .TRAN_v2gx2_WLAST (v2gx2_WLAST),
    .TRAN_v2gx2_WID (v2gx2_WID),
    .TRAN_v2gx2_WUSER (v2gx2_WUSER),
    .TRAN_v2gx2_ARVALID (v2gx2_ARVALID),
    .TRAN_v2gx2_ARREADY (v2gx2_ARREADY),
    .TRAN_v2gx2_ARADDR (v2gx2_ARADDR),
    .TRAN_v2gx2_ARID (v2gx2_ARID),
    .TRAN_v2gx2_ARLEN (v2gx2_ARLEN),
    .TRAN_v2gx2_ARSIZE (v2gx2_ARSIZE),
    .TRAN_v2gx2_ARBURST (v2gx2_ARBURST),
    .TRAN_v2gx2_ARLOCK (v2gx2_ARLOCK),
    .TRAN_v2gx2_ARCACHE (v2gx2_ARCACHE),
    .TRAN_v2gx2_ARPROT (v2gx2_ARPROT),
    .TRAN_v2gx2_ARQOS (v2gx2_ARQOS),
    .TRAN_v2gx2_ARREGION (v2gx2_ARREGION),
    .TRAN_v2gx2_ARUSER (v2gx2_ARUSER),
    .TRAN_v2gx2_RVALID (v2gx2_RVALID),
    .TRAN_v2gx2_RREADY (v2gx2_RREADY),
    .TRAN_v2gx2_RDATA (v2gx2_RDATA),
    .TRAN_v2gx2_RLAST (v2gx2_RLAST),
    .TRAN_v2gx2_RID (v2gx2_RID),
    .TRAN_v2gx2_RUSER (v2gx2_RUSER),
    .TRAN_v2gx2_RRESP (v2gx2_RRESP),
    .TRAN_v2gx2_BVALID (v2gx2_BVALID),
    .TRAN_v2gx2_BREADY (v2gx2_BREADY),
    .TRAN_v2gx2_BRESP (v2gx2_BRESP),
    .TRAN_v2gx2_BID (v2gx2_BID),
    .TRAN_v2gx2_BUSER (v2gx2_BUSER),
    .ready (AESL_axi_master_v2gx2_ready),
    .done  (AESL_axi_master_v2gx2_done)
);
assign    AESL_axi_master_v2gx2_ready    =   ready;
assign    AESL_axi_master_v2gx2_done    =   AESL_done_delay;
wire    AESL_axi_master_v2gx3_ready;
wire    AESL_axi_master_v2gx3_done;
AESL_axi_master_v2gx3 AESL_AXI_MASTER_v2gx3(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2gx3_AWVALID (v2gx3_AWVALID),
    .TRAN_v2gx3_AWREADY (v2gx3_AWREADY),
    .TRAN_v2gx3_AWADDR (v2gx3_AWADDR),
    .TRAN_v2gx3_AWID (v2gx3_AWID),
    .TRAN_v2gx3_AWLEN (v2gx3_AWLEN),
    .TRAN_v2gx3_AWSIZE (v2gx3_AWSIZE),
    .TRAN_v2gx3_AWBURST (v2gx3_AWBURST),
    .TRAN_v2gx3_AWLOCK (v2gx3_AWLOCK),
    .TRAN_v2gx3_AWCACHE (v2gx3_AWCACHE),
    .TRAN_v2gx3_AWPROT (v2gx3_AWPROT),
    .TRAN_v2gx3_AWQOS (v2gx3_AWQOS),
    .TRAN_v2gx3_AWREGION (v2gx3_AWREGION),
    .TRAN_v2gx3_AWUSER (v2gx3_AWUSER),
    .TRAN_v2gx3_WVALID (v2gx3_WVALID),
    .TRAN_v2gx3_WREADY (v2gx3_WREADY),
    .TRAN_v2gx3_WDATA (v2gx3_WDATA),
    .TRAN_v2gx3_WSTRB (v2gx3_WSTRB),
    .TRAN_v2gx3_WLAST (v2gx3_WLAST),
    .TRAN_v2gx3_WID (v2gx3_WID),
    .TRAN_v2gx3_WUSER (v2gx3_WUSER),
    .TRAN_v2gx3_ARVALID (v2gx3_ARVALID),
    .TRAN_v2gx3_ARREADY (v2gx3_ARREADY),
    .TRAN_v2gx3_ARADDR (v2gx3_ARADDR),
    .TRAN_v2gx3_ARID (v2gx3_ARID),
    .TRAN_v2gx3_ARLEN (v2gx3_ARLEN),
    .TRAN_v2gx3_ARSIZE (v2gx3_ARSIZE),
    .TRAN_v2gx3_ARBURST (v2gx3_ARBURST),
    .TRAN_v2gx3_ARLOCK (v2gx3_ARLOCK),
    .TRAN_v2gx3_ARCACHE (v2gx3_ARCACHE),
    .TRAN_v2gx3_ARPROT (v2gx3_ARPROT),
    .TRAN_v2gx3_ARQOS (v2gx3_ARQOS),
    .TRAN_v2gx3_ARREGION (v2gx3_ARREGION),
    .TRAN_v2gx3_ARUSER (v2gx3_ARUSER),
    .TRAN_v2gx3_RVALID (v2gx3_RVALID),
    .TRAN_v2gx3_RREADY (v2gx3_RREADY),
    .TRAN_v2gx3_RDATA (v2gx3_RDATA),
    .TRAN_v2gx3_RLAST (v2gx3_RLAST),
    .TRAN_v2gx3_RID (v2gx3_RID),
    .TRAN_v2gx3_RUSER (v2gx3_RUSER),
    .TRAN_v2gx3_RRESP (v2gx3_RRESP),
    .TRAN_v2gx3_BVALID (v2gx3_BVALID),
    .TRAN_v2gx3_BREADY (v2gx3_BREADY),
    .TRAN_v2gx3_BRESP (v2gx3_BRESP),
    .TRAN_v2gx3_BID (v2gx3_BID),
    .TRAN_v2gx3_BUSER (v2gx3_BUSER),
    .ready (AESL_axi_master_v2gx3_ready),
    .done  (AESL_axi_master_v2gx3_done)
);
assign    AESL_axi_master_v2gx3_ready    =   ready;
assign    AESL_axi_master_v2gx3_done    =   AESL_done_delay;
wire    AESL_axi_master_v2gx4_ready;
wire    AESL_axi_master_v2gx4_done;
AESL_axi_master_v2gx4 AESL_AXI_MASTER_v2gx4(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2gx4_AWVALID (v2gx4_AWVALID),
    .TRAN_v2gx4_AWREADY (v2gx4_AWREADY),
    .TRAN_v2gx4_AWADDR (v2gx4_AWADDR),
    .TRAN_v2gx4_AWID (v2gx4_AWID),
    .TRAN_v2gx4_AWLEN (v2gx4_AWLEN),
    .TRAN_v2gx4_AWSIZE (v2gx4_AWSIZE),
    .TRAN_v2gx4_AWBURST (v2gx4_AWBURST),
    .TRAN_v2gx4_AWLOCK (v2gx4_AWLOCK),
    .TRAN_v2gx4_AWCACHE (v2gx4_AWCACHE),
    .TRAN_v2gx4_AWPROT (v2gx4_AWPROT),
    .TRAN_v2gx4_AWQOS (v2gx4_AWQOS),
    .TRAN_v2gx4_AWREGION (v2gx4_AWREGION),
    .TRAN_v2gx4_AWUSER (v2gx4_AWUSER),
    .TRAN_v2gx4_WVALID (v2gx4_WVALID),
    .TRAN_v2gx4_WREADY (v2gx4_WREADY),
    .TRAN_v2gx4_WDATA (v2gx4_WDATA),
    .TRAN_v2gx4_WSTRB (v2gx4_WSTRB),
    .TRAN_v2gx4_WLAST (v2gx4_WLAST),
    .TRAN_v2gx4_WID (v2gx4_WID),
    .TRAN_v2gx4_WUSER (v2gx4_WUSER),
    .TRAN_v2gx4_ARVALID (v2gx4_ARVALID),
    .TRAN_v2gx4_ARREADY (v2gx4_ARREADY),
    .TRAN_v2gx4_ARADDR (v2gx4_ARADDR),
    .TRAN_v2gx4_ARID (v2gx4_ARID),
    .TRAN_v2gx4_ARLEN (v2gx4_ARLEN),
    .TRAN_v2gx4_ARSIZE (v2gx4_ARSIZE),
    .TRAN_v2gx4_ARBURST (v2gx4_ARBURST),
    .TRAN_v2gx4_ARLOCK (v2gx4_ARLOCK),
    .TRAN_v2gx4_ARCACHE (v2gx4_ARCACHE),
    .TRAN_v2gx4_ARPROT (v2gx4_ARPROT),
    .TRAN_v2gx4_ARQOS (v2gx4_ARQOS),
    .TRAN_v2gx4_ARREGION (v2gx4_ARREGION),
    .TRAN_v2gx4_ARUSER (v2gx4_ARUSER),
    .TRAN_v2gx4_RVALID (v2gx4_RVALID),
    .TRAN_v2gx4_RREADY (v2gx4_RREADY),
    .TRAN_v2gx4_RDATA (v2gx4_RDATA),
    .TRAN_v2gx4_RLAST (v2gx4_RLAST),
    .TRAN_v2gx4_RID (v2gx4_RID),
    .TRAN_v2gx4_RUSER (v2gx4_RUSER),
    .TRAN_v2gx4_RRESP (v2gx4_RRESP),
    .TRAN_v2gx4_BVALID (v2gx4_BVALID),
    .TRAN_v2gx4_BREADY (v2gx4_BREADY),
    .TRAN_v2gx4_BRESP (v2gx4_BRESP),
    .TRAN_v2gx4_BID (v2gx4_BID),
    .TRAN_v2gx4_BUSER (v2gx4_BUSER),
    .ready (AESL_axi_master_v2gx4_ready),
    .done  (AESL_axi_master_v2gx4_done)
);
assign    AESL_axi_master_v2gx4_ready    =   ready;
assign    AESL_axi_master_v2gx4_done    =   AESL_done_delay;
wire    AESL_axi_master_v2ga0_ready;
wire    AESL_axi_master_v2ga0_done;
AESL_axi_master_v2ga0 AESL_AXI_MASTER_v2ga0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_v2ga0_AWVALID (v2ga0_AWVALID),
    .TRAN_v2ga0_AWREADY (v2ga0_AWREADY),
    .TRAN_v2ga0_AWADDR (v2ga0_AWADDR),
    .TRAN_v2ga0_AWID (v2ga0_AWID),
    .TRAN_v2ga0_AWLEN (v2ga0_AWLEN),
    .TRAN_v2ga0_AWSIZE (v2ga0_AWSIZE),
    .TRAN_v2ga0_AWBURST (v2ga0_AWBURST),
    .TRAN_v2ga0_AWLOCK (v2ga0_AWLOCK),
    .TRAN_v2ga0_AWCACHE (v2ga0_AWCACHE),
    .TRAN_v2ga0_AWPROT (v2ga0_AWPROT),
    .TRAN_v2ga0_AWQOS (v2ga0_AWQOS),
    .TRAN_v2ga0_AWREGION (v2ga0_AWREGION),
    .TRAN_v2ga0_AWUSER (v2ga0_AWUSER),
    .TRAN_v2ga0_WVALID (v2ga0_WVALID),
    .TRAN_v2ga0_WREADY (v2ga0_WREADY),
    .TRAN_v2ga0_WDATA (v2ga0_WDATA),
    .TRAN_v2ga0_WSTRB (v2ga0_WSTRB),
    .TRAN_v2ga0_WLAST (v2ga0_WLAST),
    .TRAN_v2ga0_WID (v2ga0_WID),
    .TRAN_v2ga0_WUSER (v2ga0_WUSER),
    .TRAN_v2ga0_ARVALID (v2ga0_ARVALID),
    .TRAN_v2ga0_ARREADY (v2ga0_ARREADY),
    .TRAN_v2ga0_ARADDR (v2ga0_ARADDR),
    .TRAN_v2ga0_ARID (v2ga0_ARID),
    .TRAN_v2ga0_ARLEN (v2ga0_ARLEN),
    .TRAN_v2ga0_ARSIZE (v2ga0_ARSIZE),
    .TRAN_v2ga0_ARBURST (v2ga0_ARBURST),
    .TRAN_v2ga0_ARLOCK (v2ga0_ARLOCK),
    .TRAN_v2ga0_ARCACHE (v2ga0_ARCACHE),
    .TRAN_v2ga0_ARPROT (v2ga0_ARPROT),
    .TRAN_v2ga0_ARQOS (v2ga0_ARQOS),
    .TRAN_v2ga0_ARREGION (v2ga0_ARREGION),
    .TRAN_v2ga0_ARUSER (v2ga0_ARUSER),
    .TRAN_v2ga0_RVALID (v2ga0_RVALID),
    .TRAN_v2ga0_RREADY (v2ga0_RREADY),
    .TRAN_v2ga0_RDATA (v2ga0_RDATA),
    .TRAN_v2ga0_RLAST (v2ga0_RLAST),
    .TRAN_v2ga0_RID (v2ga0_RID),
    .TRAN_v2ga0_RUSER (v2ga0_RUSER),
    .TRAN_v2ga0_RRESP (v2ga0_RRESP),
    .TRAN_v2ga0_BVALID (v2ga0_BVALID),
    .TRAN_v2ga0_BREADY (v2ga0_BREADY),
    .TRAN_v2ga0_BRESP (v2ga0_BRESP),
    .TRAN_v2ga0_BID (v2ga0_BID),
    .TRAN_v2ga0_BUSER (v2ga0_BUSER),
    .ready (AESL_axi_master_v2ga0_ready),
    .done  (AESL_axi_master_v2ga0_done)
);
assign    AESL_axi_master_v2ga0_ready    =   ready;
assign    AESL_axi_master_v2ga0_done    =   AESL_done_delay;

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


reg end_v2gl0;
reg [31:0] size_v2gl0;
reg [31:0] size_v2gl0_backup;
reg end_v2gl1;
reg [31:0] size_v2gl1;
reg [31:0] size_v2gl1_backup;
reg end_v2gl2;
reg [31:0] size_v2gl2;
reg [31:0] size_v2gl2_backup;
reg end_v2gb0;
reg [31:0] size_v2gb0;
reg [31:0] size_v2gb0_backup;
reg end_v2gb1;
reg [31:0] size_v2gb1;
reg [31:0] size_v2gb1_backup;
reg end_v2gb2;
reg [31:0] size_v2gb2;
reg [31:0] size_v2gb2_backup;
reg end_v2gx0;
reg [31:0] size_v2gx0;
reg [31:0] size_v2gx0_backup;
reg end_v2gx1;
reg [31:0] size_v2gx1;
reg [31:0] size_v2gx1_backup;
reg end_v2gx3;
reg [31:0] size_v2gx3;
reg [31:0] size_v2gx3_backup;
reg end_v2ga0;
reg [31:0] size_v2ga0;
reg [31:0] size_v2ga0_backup;
reg end_l_ptr;
reg [31:0] size_l_ptr;
reg [31:0] size_l_ptr_backup;
reg end_l_idx;
reg [31:0] size_l_idx;
reg [31:0] size_l_idx_backup;
reg end_l_val;
reg [31:0] size_l_val;
reg [31:0] size_l_val_backup;
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
reg end_x_val_csc;
reg [31:0] size_x_val_csc;
reg [31:0] size_x_val_csc_backup;
reg end_x_csc_to_csr;
reg [31:0] size_x_csc_to_csr;
reg [31:0] size_x_csc_to_csr_backup;
reg end_x_val_csr;
reg [31:0] size_x_val_csr;
reg [31:0] size_x_val_csr_backup;
reg end_active_cols;
reg [31:0] size_active_cols;
reg [31:0] size_active_cols_backup;
reg end_active_count;
reg [31:0] size_active_count;
reg [31:0] size_active_count_backup;
reg end_n;
reg [31:0] size_n;
reg [31:0] size_n_backup;
reg end_v2gx2;
reg [31:0] size_v2gx2;
reg [31:0] size_v2gx2_backup;
reg end_v2gx4;
reg [31:0] size_v2gx4;
reg [31:0] size_v2gx4_backup;
reg end_status;
reg [31:0] size_status;
reg [31:0] size_status_backup;
reg end_muladds;
reg [31:0] size_muladds;
reg [31:0] size_muladds_backup;

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

reg dump_tvout_finish_v2gx2;

initial begin : dump_tvout_runtime_sign_v2gx2
    integer fp;
    dump_tvout_finish_v2gx2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_v2gx2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_v2gx2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_v2gx2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_v2gx2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_v2gx2 = 1;
end


reg dump_tvout_finish_v2gx4;

initial begin : dump_tvout_runtime_sign_v2gx4
    integer fp;
    dump_tvout_finish_v2gx4 = 0;
    fp = $fopen(`AUTOTB_TVOUT_v2gx4_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_v2gx4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_v2gx4_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_v2gx4_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_v2gx4 = 1;
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
