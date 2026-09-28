// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      large_ssssm
`define AUTOTB_DUT_INST AESL_inst_large_ssssm
`define AUTOTB_TOP      apatb_large_ssssm_top
`define AUTOTB_LAT_RESULT_FILE "large_ssssm.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "large_ssssm.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_large_ssssm_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 2.50

`define AESL_DEPTH_sa0 1
`define AESL_DEPTH_sa1 1
`define AESL_DEPTH_sa2 1
`define AESL_DEPTH_sl0 1
`define AESL_DEPTH_sl1 1
`define AESL_DEPTH_sl2 1
`define AESL_DEPTH_su0 1
`define AESL_DEPTH_su1 1
`define AESL_DEPTH_su2 1
`define AESL_DEPTH_ss0 1
`define AESL_DEPTH_ss1 1
`define AESL_DEPTH_ss2 1
`define AESL_DEPTH_sw0 1
`define AESL_DEPTH_sw1 1
`define AESL_DEPTH_a_ptr 1
`define AESL_DEPTH_a_idx 1
`define AESL_DEPTH_a_val 1
`define AESL_DEPTH_l_ptr 1
`define AESL_DEPTH_l_idx 1
`define AESL_DEPTH_l_val 1
`define AESL_DEPTH_u_ptr 1
`define AESL_DEPTH_u_idx 1
`define AESL_DEPTH_u_val 1
`define AESL_DEPTH_s_ptr 1
`define AESL_DEPTH_s_idx 1
`define AESL_DEPTH_s_val 1
`define AESL_DEPTH_work 1
`define AESL_DEPTH_mark 1
`define AESL_DEPTH_rows 1
`define AESL_DEPTH_status 1
`define AESL_DEPTH_muladds 1
`define AUTOTB_TVIN_sa0  "../tv/cdatafile/c.large_ssssm.autotvin_sa0.dat"
`define AUTOTB_TVIN_sa1  "../tv/cdatafile/c.large_ssssm.autotvin_sa1.dat"
`define AUTOTB_TVIN_sa2  "../tv/cdatafile/c.large_ssssm.autotvin_sa2.dat"
`define AUTOTB_TVIN_sl0  "../tv/cdatafile/c.large_ssssm.autotvin_sl0.dat"
`define AUTOTB_TVIN_sl1  "../tv/cdatafile/c.large_ssssm.autotvin_sl1.dat"
`define AUTOTB_TVIN_sl2  "../tv/cdatafile/c.large_ssssm.autotvin_sl2.dat"
`define AUTOTB_TVIN_su0  "../tv/cdatafile/c.large_ssssm.autotvin_su0.dat"
`define AUTOTB_TVIN_su1  "../tv/cdatafile/c.large_ssssm.autotvin_su1.dat"
`define AUTOTB_TVIN_su2  "../tv/cdatafile/c.large_ssssm.autotvin_su2.dat"
`define AUTOTB_TVIN_ss0  "../tv/cdatafile/c.large_ssssm.autotvin_ss0.dat"
`define AUTOTB_TVIN_ss1  "../tv/cdatafile/c.large_ssssm.autotvin_ss1.dat"
`define AUTOTB_TVIN_sw0  "../tv/cdatafile/c.large_ssssm.autotvin_sw0.dat"
`define AUTOTB_TVIN_sw1  "../tv/cdatafile/c.large_ssssm.autotvin_sw1.dat"
`define AUTOTB_TVIN_a_ptr  "../tv/cdatafile/c.large_ssssm.autotvin_a_ptr.dat"
`define AUTOTB_TVIN_a_idx  "../tv/cdatafile/c.large_ssssm.autotvin_a_idx.dat"
`define AUTOTB_TVIN_a_val  "../tv/cdatafile/c.large_ssssm.autotvin_a_val.dat"
`define AUTOTB_TVIN_l_ptr  "../tv/cdatafile/c.large_ssssm.autotvin_l_ptr.dat"
`define AUTOTB_TVIN_l_idx  "../tv/cdatafile/c.large_ssssm.autotvin_l_idx.dat"
`define AUTOTB_TVIN_l_val  "../tv/cdatafile/c.large_ssssm.autotvin_l_val.dat"
`define AUTOTB_TVIN_u_ptr  "../tv/cdatafile/c.large_ssssm.autotvin_u_ptr.dat"
`define AUTOTB_TVIN_u_idx  "../tv/cdatafile/c.large_ssssm.autotvin_u_idx.dat"
`define AUTOTB_TVIN_u_val  "../tv/cdatafile/c.large_ssssm.autotvin_u_val.dat"
`define AUTOTB_TVIN_s_ptr  "../tv/cdatafile/c.large_ssssm.autotvin_s_ptr.dat"
`define AUTOTB_TVIN_s_idx  "../tv/cdatafile/c.large_ssssm.autotvin_s_idx.dat"
`define AUTOTB_TVIN_s_val  "../tv/cdatafile/c.large_ssssm.autotvin_s_val.dat"
`define AUTOTB_TVIN_work  "../tv/cdatafile/c.large_ssssm.autotvin_work.dat"
`define AUTOTB_TVIN_mark  "../tv/cdatafile/c.large_ssssm.autotvin_mark.dat"
`define AUTOTB_TVIN_rows  "../tv/cdatafile/c.large_ssssm.autotvin_rows.dat"
`define AUTOTB_TVIN_sa0_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_sa0.dat"
`define AUTOTB_TVIN_sa1_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_sa1.dat"
`define AUTOTB_TVIN_sa2_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_sa2.dat"
`define AUTOTB_TVIN_sl0_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_sl0.dat"
`define AUTOTB_TVIN_sl1_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_sl1.dat"
`define AUTOTB_TVIN_sl2_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_sl2.dat"
`define AUTOTB_TVIN_su0_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_su0.dat"
`define AUTOTB_TVIN_su1_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_su1.dat"
`define AUTOTB_TVIN_su2_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_su2.dat"
`define AUTOTB_TVIN_ss0_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_ss0.dat"
`define AUTOTB_TVIN_ss1_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_ss1.dat"
`define AUTOTB_TVIN_sw0_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_sw0.dat"
`define AUTOTB_TVIN_sw1_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_sw1.dat"
`define AUTOTB_TVIN_a_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_a_ptr.dat"
`define AUTOTB_TVIN_a_idx_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_a_idx.dat"
`define AUTOTB_TVIN_a_val_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_a_val.dat"
`define AUTOTB_TVIN_l_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_l_ptr.dat"
`define AUTOTB_TVIN_l_idx_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_l_idx.dat"
`define AUTOTB_TVIN_l_val_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_l_val.dat"
`define AUTOTB_TVIN_u_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_u_ptr.dat"
`define AUTOTB_TVIN_u_idx_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_u_idx.dat"
`define AUTOTB_TVIN_u_val_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_u_val.dat"
`define AUTOTB_TVIN_s_ptr_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_s_ptr.dat"
`define AUTOTB_TVIN_s_idx_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_s_idx.dat"
`define AUTOTB_TVIN_s_val_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_s_val.dat"
`define AUTOTB_TVIN_work_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_work.dat"
`define AUTOTB_TVIN_mark_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_mark.dat"
`define AUTOTB_TVIN_rows_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvin_rows.dat"
`define AUTOTB_TVOUT_ss2  "../tv/cdatafile/c.large_ssssm.autotvout_ss2.dat"
`define AUTOTB_TVOUT_sw0  "../tv/cdatafile/c.large_ssssm.autotvout_sw0.dat"
`define AUTOTB_TVOUT_sw1  "../tv/cdatafile/c.large_ssssm.autotvout_sw1.dat"
`define AUTOTB_TVOUT_status  "../tv/cdatafile/c.large_ssssm.autotvout_status.dat"
`define AUTOTB_TVOUT_muladds  "../tv/cdatafile/c.large_ssssm.autotvout_muladds.dat"
`define AUTOTB_TVOUT_ss2_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvout_ss2.dat"
`define AUTOTB_TVOUT_sw0_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvout_sw0.dat"
`define AUTOTB_TVOUT_sw1_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvout_sw1.dat"
`define AUTOTB_TVOUT_status_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvout_status.dat"
`define AUTOTB_TVOUT_muladds_out_wrapc  "../tv/rtldatafile/rtl.large_ssssm.autotvout_muladds.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_a_idx = 1;
parameter LENGTH_a_ptr = 1;
parameter LENGTH_a_val = 1;
parameter LENGTH_l_idx = 1;
parameter LENGTH_l_ptr = 1;
parameter LENGTH_l_val = 1;
parameter LENGTH_mark = 1;
parameter LENGTH_muladds = 1;
parameter LENGTH_rows = 1;
parameter LENGTH_s_idx = 1;
parameter LENGTH_s_ptr = 1;
parameter LENGTH_s_val = 1;
parameter LENGTH_sa0 = 1313;
parameter LENGTH_sa1 = 24512;
parameter LENGTH_sa2 = 24512;
parameter LENGTH_sl0 = 1313;
parameter LENGTH_sl1 = 7030;
parameter LENGTH_sl2 = 7030;
parameter LENGTH_ss0 = 1313;
parameter LENGTH_ss1 = 24512;
parameter LENGTH_ss2 = 24512;
parameter LENGTH_status = 1;
parameter LENGTH_su0 = 1313;
parameter LENGTH_su1 = 6997;
parameter LENGTH_su2 = 6997;
parameter LENGTH_sw0 = 1312;
parameter LENGTH_sw1 = 1312;
parameter LENGTH_u_idx = 1;
parameter LENGTH_u_ptr = 1;
parameter LENGTH_u_val = 1;
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
wire  sa0_AWVALID;
wire  sa0_AWREADY;
wire [63 : 0] sa0_AWADDR;
wire [0 : 0] sa0_AWID;
wire [7 : 0] sa0_AWLEN;
wire [2 : 0] sa0_AWSIZE;
wire [1 : 0] sa0_AWBURST;
wire [1 : 0] sa0_AWLOCK;
wire [3 : 0] sa0_AWCACHE;
wire [2 : 0] sa0_AWPROT;
wire [3 : 0] sa0_AWQOS;
wire [3 : 0] sa0_AWREGION;
wire [0 : 0] sa0_AWUSER;
wire  sa0_WVALID;
wire  sa0_WREADY;
wire [31 : 0] sa0_WDATA;
wire [3 : 0] sa0_WSTRB;
wire  sa0_WLAST;
wire [0 : 0] sa0_WID;
wire [0 : 0] sa0_WUSER;
wire  sa0_ARVALID;
wire  sa0_ARREADY;
wire [63 : 0] sa0_ARADDR;
wire [0 : 0] sa0_ARID;
wire [7 : 0] sa0_ARLEN;
wire [2 : 0] sa0_ARSIZE;
wire [1 : 0] sa0_ARBURST;
wire [1 : 0] sa0_ARLOCK;
wire [3 : 0] sa0_ARCACHE;
wire [2 : 0] sa0_ARPROT;
wire [3 : 0] sa0_ARQOS;
wire [3 : 0] sa0_ARREGION;
wire [0 : 0] sa0_ARUSER;
wire  sa0_RVALID;
wire  sa0_RREADY;
wire [31 : 0] sa0_RDATA;
wire  sa0_RLAST;
wire [0 : 0] sa0_RID;
wire [0 : 0] sa0_RUSER;
wire [1 : 0] sa0_RRESP;
wire  sa0_BVALID;
wire  sa0_BREADY;
wire [1 : 0] sa0_BRESP;
wire [0 : 0] sa0_BID;
wire [0 : 0] sa0_BUSER;
wire  sa1_AWVALID;
wire  sa1_AWREADY;
wire [63 : 0] sa1_AWADDR;
wire [0 : 0] sa1_AWID;
wire [7 : 0] sa1_AWLEN;
wire [2 : 0] sa1_AWSIZE;
wire [1 : 0] sa1_AWBURST;
wire [1 : 0] sa1_AWLOCK;
wire [3 : 0] sa1_AWCACHE;
wire [2 : 0] sa1_AWPROT;
wire [3 : 0] sa1_AWQOS;
wire [3 : 0] sa1_AWREGION;
wire [0 : 0] sa1_AWUSER;
wire  sa1_WVALID;
wire  sa1_WREADY;
wire [31 : 0] sa1_WDATA;
wire [3 : 0] sa1_WSTRB;
wire  sa1_WLAST;
wire [0 : 0] sa1_WID;
wire [0 : 0] sa1_WUSER;
wire  sa1_ARVALID;
wire  sa1_ARREADY;
wire [63 : 0] sa1_ARADDR;
wire [0 : 0] sa1_ARID;
wire [7 : 0] sa1_ARLEN;
wire [2 : 0] sa1_ARSIZE;
wire [1 : 0] sa1_ARBURST;
wire [1 : 0] sa1_ARLOCK;
wire [3 : 0] sa1_ARCACHE;
wire [2 : 0] sa1_ARPROT;
wire [3 : 0] sa1_ARQOS;
wire [3 : 0] sa1_ARREGION;
wire [0 : 0] sa1_ARUSER;
wire  sa1_RVALID;
wire  sa1_RREADY;
wire [31 : 0] sa1_RDATA;
wire  sa1_RLAST;
wire [0 : 0] sa1_RID;
wire [0 : 0] sa1_RUSER;
wire [1 : 0] sa1_RRESP;
wire  sa1_BVALID;
wire  sa1_BREADY;
wire [1 : 0] sa1_BRESP;
wire [0 : 0] sa1_BID;
wire [0 : 0] sa1_BUSER;
wire  sa2_AWVALID;
wire  sa2_AWREADY;
wire [63 : 0] sa2_AWADDR;
wire [0 : 0] sa2_AWID;
wire [7 : 0] sa2_AWLEN;
wire [2 : 0] sa2_AWSIZE;
wire [1 : 0] sa2_AWBURST;
wire [1 : 0] sa2_AWLOCK;
wire [3 : 0] sa2_AWCACHE;
wire [2 : 0] sa2_AWPROT;
wire [3 : 0] sa2_AWQOS;
wire [3 : 0] sa2_AWREGION;
wire [0 : 0] sa2_AWUSER;
wire  sa2_WVALID;
wire  sa2_WREADY;
wire [31 : 0] sa2_WDATA;
wire [3 : 0] sa2_WSTRB;
wire  sa2_WLAST;
wire [0 : 0] sa2_WID;
wire [0 : 0] sa2_WUSER;
wire  sa2_ARVALID;
wire  sa2_ARREADY;
wire [63 : 0] sa2_ARADDR;
wire [0 : 0] sa2_ARID;
wire [7 : 0] sa2_ARLEN;
wire [2 : 0] sa2_ARSIZE;
wire [1 : 0] sa2_ARBURST;
wire [1 : 0] sa2_ARLOCK;
wire [3 : 0] sa2_ARCACHE;
wire [2 : 0] sa2_ARPROT;
wire [3 : 0] sa2_ARQOS;
wire [3 : 0] sa2_ARREGION;
wire [0 : 0] sa2_ARUSER;
wire  sa2_RVALID;
wire  sa2_RREADY;
wire [31 : 0] sa2_RDATA;
wire  sa2_RLAST;
wire [0 : 0] sa2_RID;
wire [0 : 0] sa2_RUSER;
wire [1 : 0] sa2_RRESP;
wire  sa2_BVALID;
wire  sa2_BREADY;
wire [1 : 0] sa2_BRESP;
wire [0 : 0] sa2_BID;
wire [0 : 0] sa2_BUSER;
wire  sl0_AWVALID;
wire  sl0_AWREADY;
wire [63 : 0] sl0_AWADDR;
wire [0 : 0] sl0_AWID;
wire [7 : 0] sl0_AWLEN;
wire [2 : 0] sl0_AWSIZE;
wire [1 : 0] sl0_AWBURST;
wire [1 : 0] sl0_AWLOCK;
wire [3 : 0] sl0_AWCACHE;
wire [2 : 0] sl0_AWPROT;
wire [3 : 0] sl0_AWQOS;
wire [3 : 0] sl0_AWREGION;
wire [0 : 0] sl0_AWUSER;
wire  sl0_WVALID;
wire  sl0_WREADY;
wire [31 : 0] sl0_WDATA;
wire [3 : 0] sl0_WSTRB;
wire  sl0_WLAST;
wire [0 : 0] sl0_WID;
wire [0 : 0] sl0_WUSER;
wire  sl0_ARVALID;
wire  sl0_ARREADY;
wire [63 : 0] sl0_ARADDR;
wire [0 : 0] sl0_ARID;
wire [7 : 0] sl0_ARLEN;
wire [2 : 0] sl0_ARSIZE;
wire [1 : 0] sl0_ARBURST;
wire [1 : 0] sl0_ARLOCK;
wire [3 : 0] sl0_ARCACHE;
wire [2 : 0] sl0_ARPROT;
wire [3 : 0] sl0_ARQOS;
wire [3 : 0] sl0_ARREGION;
wire [0 : 0] sl0_ARUSER;
wire  sl0_RVALID;
wire  sl0_RREADY;
wire [31 : 0] sl0_RDATA;
wire  sl0_RLAST;
wire [0 : 0] sl0_RID;
wire [0 : 0] sl0_RUSER;
wire [1 : 0] sl0_RRESP;
wire  sl0_BVALID;
wire  sl0_BREADY;
wire [1 : 0] sl0_BRESP;
wire [0 : 0] sl0_BID;
wire [0 : 0] sl0_BUSER;
wire  sl1_AWVALID;
wire  sl1_AWREADY;
wire [63 : 0] sl1_AWADDR;
wire [0 : 0] sl1_AWID;
wire [7 : 0] sl1_AWLEN;
wire [2 : 0] sl1_AWSIZE;
wire [1 : 0] sl1_AWBURST;
wire [1 : 0] sl1_AWLOCK;
wire [3 : 0] sl1_AWCACHE;
wire [2 : 0] sl1_AWPROT;
wire [3 : 0] sl1_AWQOS;
wire [3 : 0] sl1_AWREGION;
wire [0 : 0] sl1_AWUSER;
wire  sl1_WVALID;
wire  sl1_WREADY;
wire [31 : 0] sl1_WDATA;
wire [3 : 0] sl1_WSTRB;
wire  sl1_WLAST;
wire [0 : 0] sl1_WID;
wire [0 : 0] sl1_WUSER;
wire  sl1_ARVALID;
wire  sl1_ARREADY;
wire [63 : 0] sl1_ARADDR;
wire [0 : 0] sl1_ARID;
wire [7 : 0] sl1_ARLEN;
wire [2 : 0] sl1_ARSIZE;
wire [1 : 0] sl1_ARBURST;
wire [1 : 0] sl1_ARLOCK;
wire [3 : 0] sl1_ARCACHE;
wire [2 : 0] sl1_ARPROT;
wire [3 : 0] sl1_ARQOS;
wire [3 : 0] sl1_ARREGION;
wire [0 : 0] sl1_ARUSER;
wire  sl1_RVALID;
wire  sl1_RREADY;
wire [31 : 0] sl1_RDATA;
wire  sl1_RLAST;
wire [0 : 0] sl1_RID;
wire [0 : 0] sl1_RUSER;
wire [1 : 0] sl1_RRESP;
wire  sl1_BVALID;
wire  sl1_BREADY;
wire [1 : 0] sl1_BRESP;
wire [0 : 0] sl1_BID;
wire [0 : 0] sl1_BUSER;
wire  sl2_AWVALID;
wire  sl2_AWREADY;
wire [63 : 0] sl2_AWADDR;
wire [0 : 0] sl2_AWID;
wire [7 : 0] sl2_AWLEN;
wire [2 : 0] sl2_AWSIZE;
wire [1 : 0] sl2_AWBURST;
wire [1 : 0] sl2_AWLOCK;
wire [3 : 0] sl2_AWCACHE;
wire [2 : 0] sl2_AWPROT;
wire [3 : 0] sl2_AWQOS;
wire [3 : 0] sl2_AWREGION;
wire [0 : 0] sl2_AWUSER;
wire  sl2_WVALID;
wire  sl2_WREADY;
wire [31 : 0] sl2_WDATA;
wire [3 : 0] sl2_WSTRB;
wire  sl2_WLAST;
wire [0 : 0] sl2_WID;
wire [0 : 0] sl2_WUSER;
wire  sl2_ARVALID;
wire  sl2_ARREADY;
wire [63 : 0] sl2_ARADDR;
wire [0 : 0] sl2_ARID;
wire [7 : 0] sl2_ARLEN;
wire [2 : 0] sl2_ARSIZE;
wire [1 : 0] sl2_ARBURST;
wire [1 : 0] sl2_ARLOCK;
wire [3 : 0] sl2_ARCACHE;
wire [2 : 0] sl2_ARPROT;
wire [3 : 0] sl2_ARQOS;
wire [3 : 0] sl2_ARREGION;
wire [0 : 0] sl2_ARUSER;
wire  sl2_RVALID;
wire  sl2_RREADY;
wire [31 : 0] sl2_RDATA;
wire  sl2_RLAST;
wire [0 : 0] sl2_RID;
wire [0 : 0] sl2_RUSER;
wire [1 : 0] sl2_RRESP;
wire  sl2_BVALID;
wire  sl2_BREADY;
wire [1 : 0] sl2_BRESP;
wire [0 : 0] sl2_BID;
wire [0 : 0] sl2_BUSER;
wire  su0_AWVALID;
wire  su0_AWREADY;
wire [63 : 0] su0_AWADDR;
wire [0 : 0] su0_AWID;
wire [7 : 0] su0_AWLEN;
wire [2 : 0] su0_AWSIZE;
wire [1 : 0] su0_AWBURST;
wire [1 : 0] su0_AWLOCK;
wire [3 : 0] su0_AWCACHE;
wire [2 : 0] su0_AWPROT;
wire [3 : 0] su0_AWQOS;
wire [3 : 0] su0_AWREGION;
wire [0 : 0] su0_AWUSER;
wire  su0_WVALID;
wire  su0_WREADY;
wire [31 : 0] su0_WDATA;
wire [3 : 0] su0_WSTRB;
wire  su0_WLAST;
wire [0 : 0] su0_WID;
wire [0 : 0] su0_WUSER;
wire  su0_ARVALID;
wire  su0_ARREADY;
wire [63 : 0] su0_ARADDR;
wire [0 : 0] su0_ARID;
wire [7 : 0] su0_ARLEN;
wire [2 : 0] su0_ARSIZE;
wire [1 : 0] su0_ARBURST;
wire [1 : 0] su0_ARLOCK;
wire [3 : 0] su0_ARCACHE;
wire [2 : 0] su0_ARPROT;
wire [3 : 0] su0_ARQOS;
wire [3 : 0] su0_ARREGION;
wire [0 : 0] su0_ARUSER;
wire  su0_RVALID;
wire  su0_RREADY;
wire [31 : 0] su0_RDATA;
wire  su0_RLAST;
wire [0 : 0] su0_RID;
wire [0 : 0] su0_RUSER;
wire [1 : 0] su0_RRESP;
wire  su0_BVALID;
wire  su0_BREADY;
wire [1 : 0] su0_BRESP;
wire [0 : 0] su0_BID;
wire [0 : 0] su0_BUSER;
wire  su1_AWVALID;
wire  su1_AWREADY;
wire [63 : 0] su1_AWADDR;
wire [0 : 0] su1_AWID;
wire [7 : 0] su1_AWLEN;
wire [2 : 0] su1_AWSIZE;
wire [1 : 0] su1_AWBURST;
wire [1 : 0] su1_AWLOCK;
wire [3 : 0] su1_AWCACHE;
wire [2 : 0] su1_AWPROT;
wire [3 : 0] su1_AWQOS;
wire [3 : 0] su1_AWREGION;
wire [0 : 0] su1_AWUSER;
wire  su1_WVALID;
wire  su1_WREADY;
wire [31 : 0] su1_WDATA;
wire [3 : 0] su1_WSTRB;
wire  su1_WLAST;
wire [0 : 0] su1_WID;
wire [0 : 0] su1_WUSER;
wire  su1_ARVALID;
wire  su1_ARREADY;
wire [63 : 0] su1_ARADDR;
wire [0 : 0] su1_ARID;
wire [7 : 0] su1_ARLEN;
wire [2 : 0] su1_ARSIZE;
wire [1 : 0] su1_ARBURST;
wire [1 : 0] su1_ARLOCK;
wire [3 : 0] su1_ARCACHE;
wire [2 : 0] su1_ARPROT;
wire [3 : 0] su1_ARQOS;
wire [3 : 0] su1_ARREGION;
wire [0 : 0] su1_ARUSER;
wire  su1_RVALID;
wire  su1_RREADY;
wire [31 : 0] su1_RDATA;
wire  su1_RLAST;
wire [0 : 0] su1_RID;
wire [0 : 0] su1_RUSER;
wire [1 : 0] su1_RRESP;
wire  su1_BVALID;
wire  su1_BREADY;
wire [1 : 0] su1_BRESP;
wire [0 : 0] su1_BID;
wire [0 : 0] su1_BUSER;
wire  su2_AWVALID;
wire  su2_AWREADY;
wire [63 : 0] su2_AWADDR;
wire [0 : 0] su2_AWID;
wire [7 : 0] su2_AWLEN;
wire [2 : 0] su2_AWSIZE;
wire [1 : 0] su2_AWBURST;
wire [1 : 0] su2_AWLOCK;
wire [3 : 0] su2_AWCACHE;
wire [2 : 0] su2_AWPROT;
wire [3 : 0] su2_AWQOS;
wire [3 : 0] su2_AWREGION;
wire [0 : 0] su2_AWUSER;
wire  su2_WVALID;
wire  su2_WREADY;
wire [31 : 0] su2_WDATA;
wire [3 : 0] su2_WSTRB;
wire  su2_WLAST;
wire [0 : 0] su2_WID;
wire [0 : 0] su2_WUSER;
wire  su2_ARVALID;
wire  su2_ARREADY;
wire [63 : 0] su2_ARADDR;
wire [0 : 0] su2_ARID;
wire [7 : 0] su2_ARLEN;
wire [2 : 0] su2_ARSIZE;
wire [1 : 0] su2_ARBURST;
wire [1 : 0] su2_ARLOCK;
wire [3 : 0] su2_ARCACHE;
wire [2 : 0] su2_ARPROT;
wire [3 : 0] su2_ARQOS;
wire [3 : 0] su2_ARREGION;
wire [0 : 0] su2_ARUSER;
wire  su2_RVALID;
wire  su2_RREADY;
wire [31 : 0] su2_RDATA;
wire  su2_RLAST;
wire [0 : 0] su2_RID;
wire [0 : 0] su2_RUSER;
wire [1 : 0] su2_RRESP;
wire  su2_BVALID;
wire  su2_BREADY;
wire [1 : 0] su2_BRESP;
wire [0 : 0] su2_BID;
wire [0 : 0] su2_BUSER;
wire  ss0_AWVALID;
wire  ss0_AWREADY;
wire [63 : 0] ss0_AWADDR;
wire [0 : 0] ss0_AWID;
wire [7 : 0] ss0_AWLEN;
wire [2 : 0] ss0_AWSIZE;
wire [1 : 0] ss0_AWBURST;
wire [1 : 0] ss0_AWLOCK;
wire [3 : 0] ss0_AWCACHE;
wire [2 : 0] ss0_AWPROT;
wire [3 : 0] ss0_AWQOS;
wire [3 : 0] ss0_AWREGION;
wire [0 : 0] ss0_AWUSER;
wire  ss0_WVALID;
wire  ss0_WREADY;
wire [31 : 0] ss0_WDATA;
wire [3 : 0] ss0_WSTRB;
wire  ss0_WLAST;
wire [0 : 0] ss0_WID;
wire [0 : 0] ss0_WUSER;
wire  ss0_ARVALID;
wire  ss0_ARREADY;
wire [63 : 0] ss0_ARADDR;
wire [0 : 0] ss0_ARID;
wire [7 : 0] ss0_ARLEN;
wire [2 : 0] ss0_ARSIZE;
wire [1 : 0] ss0_ARBURST;
wire [1 : 0] ss0_ARLOCK;
wire [3 : 0] ss0_ARCACHE;
wire [2 : 0] ss0_ARPROT;
wire [3 : 0] ss0_ARQOS;
wire [3 : 0] ss0_ARREGION;
wire [0 : 0] ss0_ARUSER;
wire  ss0_RVALID;
wire  ss0_RREADY;
wire [31 : 0] ss0_RDATA;
wire  ss0_RLAST;
wire [0 : 0] ss0_RID;
wire [0 : 0] ss0_RUSER;
wire [1 : 0] ss0_RRESP;
wire  ss0_BVALID;
wire  ss0_BREADY;
wire [1 : 0] ss0_BRESP;
wire [0 : 0] ss0_BID;
wire [0 : 0] ss0_BUSER;
wire  ss1_AWVALID;
wire  ss1_AWREADY;
wire [63 : 0] ss1_AWADDR;
wire [0 : 0] ss1_AWID;
wire [7 : 0] ss1_AWLEN;
wire [2 : 0] ss1_AWSIZE;
wire [1 : 0] ss1_AWBURST;
wire [1 : 0] ss1_AWLOCK;
wire [3 : 0] ss1_AWCACHE;
wire [2 : 0] ss1_AWPROT;
wire [3 : 0] ss1_AWQOS;
wire [3 : 0] ss1_AWREGION;
wire [0 : 0] ss1_AWUSER;
wire  ss1_WVALID;
wire  ss1_WREADY;
wire [31 : 0] ss1_WDATA;
wire [3 : 0] ss1_WSTRB;
wire  ss1_WLAST;
wire [0 : 0] ss1_WID;
wire [0 : 0] ss1_WUSER;
wire  ss1_ARVALID;
wire  ss1_ARREADY;
wire [63 : 0] ss1_ARADDR;
wire [0 : 0] ss1_ARID;
wire [7 : 0] ss1_ARLEN;
wire [2 : 0] ss1_ARSIZE;
wire [1 : 0] ss1_ARBURST;
wire [1 : 0] ss1_ARLOCK;
wire [3 : 0] ss1_ARCACHE;
wire [2 : 0] ss1_ARPROT;
wire [3 : 0] ss1_ARQOS;
wire [3 : 0] ss1_ARREGION;
wire [0 : 0] ss1_ARUSER;
wire  ss1_RVALID;
wire  ss1_RREADY;
wire [31 : 0] ss1_RDATA;
wire  ss1_RLAST;
wire [0 : 0] ss1_RID;
wire [0 : 0] ss1_RUSER;
wire [1 : 0] ss1_RRESP;
wire  ss1_BVALID;
wire  ss1_BREADY;
wire [1 : 0] ss1_BRESP;
wire [0 : 0] ss1_BID;
wire [0 : 0] ss1_BUSER;
wire  ss2_AWVALID;
wire  ss2_AWREADY;
wire [63 : 0] ss2_AWADDR;
wire [0 : 0] ss2_AWID;
wire [7 : 0] ss2_AWLEN;
wire [2 : 0] ss2_AWSIZE;
wire [1 : 0] ss2_AWBURST;
wire [1 : 0] ss2_AWLOCK;
wire [3 : 0] ss2_AWCACHE;
wire [2 : 0] ss2_AWPROT;
wire [3 : 0] ss2_AWQOS;
wire [3 : 0] ss2_AWREGION;
wire [0 : 0] ss2_AWUSER;
wire  ss2_WVALID;
wire  ss2_WREADY;
wire [31 : 0] ss2_WDATA;
wire [3 : 0] ss2_WSTRB;
wire  ss2_WLAST;
wire [0 : 0] ss2_WID;
wire [0 : 0] ss2_WUSER;
wire  ss2_ARVALID;
wire  ss2_ARREADY;
wire [63 : 0] ss2_ARADDR;
wire [0 : 0] ss2_ARID;
wire [7 : 0] ss2_ARLEN;
wire [2 : 0] ss2_ARSIZE;
wire [1 : 0] ss2_ARBURST;
wire [1 : 0] ss2_ARLOCK;
wire [3 : 0] ss2_ARCACHE;
wire [2 : 0] ss2_ARPROT;
wire [3 : 0] ss2_ARQOS;
wire [3 : 0] ss2_ARREGION;
wire [0 : 0] ss2_ARUSER;
wire  ss2_RVALID;
wire  ss2_RREADY;
wire [31 : 0] ss2_RDATA;
wire  ss2_RLAST;
wire [0 : 0] ss2_RID;
wire [0 : 0] ss2_RUSER;
wire [1 : 0] ss2_RRESP;
wire  ss2_BVALID;
wire  ss2_BREADY;
wire [1 : 0] ss2_BRESP;
wire [0 : 0] ss2_BID;
wire [0 : 0] ss2_BUSER;
wire  sw0_AWVALID;
wire  sw0_AWREADY;
wire [63 : 0] sw0_AWADDR;
wire [0 : 0] sw0_AWID;
wire [7 : 0] sw0_AWLEN;
wire [2 : 0] sw0_AWSIZE;
wire [1 : 0] sw0_AWBURST;
wire [1 : 0] sw0_AWLOCK;
wire [3 : 0] sw0_AWCACHE;
wire [2 : 0] sw0_AWPROT;
wire [3 : 0] sw0_AWQOS;
wire [3 : 0] sw0_AWREGION;
wire [0 : 0] sw0_AWUSER;
wire  sw0_WVALID;
wire  sw0_WREADY;
wire [31 : 0] sw0_WDATA;
wire [3 : 0] sw0_WSTRB;
wire  sw0_WLAST;
wire [0 : 0] sw0_WID;
wire [0 : 0] sw0_WUSER;
wire  sw0_ARVALID;
wire  sw0_ARREADY;
wire [63 : 0] sw0_ARADDR;
wire [0 : 0] sw0_ARID;
wire [7 : 0] sw0_ARLEN;
wire [2 : 0] sw0_ARSIZE;
wire [1 : 0] sw0_ARBURST;
wire [1 : 0] sw0_ARLOCK;
wire [3 : 0] sw0_ARCACHE;
wire [2 : 0] sw0_ARPROT;
wire [3 : 0] sw0_ARQOS;
wire [3 : 0] sw0_ARREGION;
wire [0 : 0] sw0_ARUSER;
wire  sw0_RVALID;
wire  sw0_RREADY;
wire [31 : 0] sw0_RDATA;
wire  sw0_RLAST;
wire [0 : 0] sw0_RID;
wire [0 : 0] sw0_RUSER;
wire [1 : 0] sw0_RRESP;
wire  sw0_BVALID;
wire  sw0_BREADY;
wire [1 : 0] sw0_BRESP;
wire [0 : 0] sw0_BID;
wire [0 : 0] sw0_BUSER;
wire  sw1_AWVALID;
wire  sw1_AWREADY;
wire [63 : 0] sw1_AWADDR;
wire [0 : 0] sw1_AWID;
wire [7 : 0] sw1_AWLEN;
wire [2 : 0] sw1_AWSIZE;
wire [1 : 0] sw1_AWBURST;
wire [1 : 0] sw1_AWLOCK;
wire [3 : 0] sw1_AWCACHE;
wire [2 : 0] sw1_AWPROT;
wire [3 : 0] sw1_AWQOS;
wire [3 : 0] sw1_AWREGION;
wire [0 : 0] sw1_AWUSER;
wire  sw1_WVALID;
wire  sw1_WREADY;
wire [31 : 0] sw1_WDATA;
wire [3 : 0] sw1_WSTRB;
wire  sw1_WLAST;
wire [0 : 0] sw1_WID;
wire [0 : 0] sw1_WUSER;
wire  sw1_ARVALID;
wire  sw1_ARREADY;
wire [63 : 0] sw1_ARADDR;
wire [0 : 0] sw1_ARID;
wire [7 : 0] sw1_ARLEN;
wire [2 : 0] sw1_ARSIZE;
wire [1 : 0] sw1_ARBURST;
wire [1 : 0] sw1_ARLOCK;
wire [3 : 0] sw1_ARCACHE;
wire [2 : 0] sw1_ARPROT;
wire [3 : 0] sw1_ARQOS;
wire [3 : 0] sw1_ARREGION;
wire [0 : 0] sw1_ARUSER;
wire  sw1_RVALID;
wire  sw1_RREADY;
wire [31 : 0] sw1_RDATA;
wire  sw1_RLAST;
wire [0 : 0] sw1_RID;
wire [0 : 0] sw1_RUSER;
wire [1 : 0] sw1_RRESP;
wire  sw1_BVALID;
wire  sw1_BREADY;
wire [1 : 0] sw1_BRESP;
wire [0 : 0] sw1_BID;
wire [0 : 0] sw1_BUSER;
wire [31 : 0] rows;
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
    .m_axi_sa0_AWVALID(sa0_AWVALID),
    .m_axi_sa0_AWREADY(sa0_AWREADY),
    .m_axi_sa0_AWADDR(sa0_AWADDR),
    .m_axi_sa0_AWID(sa0_AWID),
    .m_axi_sa0_AWLEN(sa0_AWLEN),
    .m_axi_sa0_AWSIZE(sa0_AWSIZE),
    .m_axi_sa0_AWBURST(sa0_AWBURST),
    .m_axi_sa0_AWLOCK(sa0_AWLOCK),
    .m_axi_sa0_AWCACHE(sa0_AWCACHE),
    .m_axi_sa0_AWPROT(sa0_AWPROT),
    .m_axi_sa0_AWQOS(sa0_AWQOS),
    .m_axi_sa0_AWREGION(sa0_AWREGION),
    .m_axi_sa0_AWUSER(sa0_AWUSER),
    .m_axi_sa0_WVALID(sa0_WVALID),
    .m_axi_sa0_WREADY(sa0_WREADY),
    .m_axi_sa0_WDATA(sa0_WDATA),
    .m_axi_sa0_WSTRB(sa0_WSTRB),
    .m_axi_sa0_WLAST(sa0_WLAST),
    .m_axi_sa0_WID(sa0_WID),
    .m_axi_sa0_WUSER(sa0_WUSER),
    .m_axi_sa0_ARVALID(sa0_ARVALID),
    .m_axi_sa0_ARREADY(sa0_ARREADY),
    .m_axi_sa0_ARADDR(sa0_ARADDR),
    .m_axi_sa0_ARID(sa0_ARID),
    .m_axi_sa0_ARLEN(sa0_ARLEN),
    .m_axi_sa0_ARSIZE(sa0_ARSIZE),
    .m_axi_sa0_ARBURST(sa0_ARBURST),
    .m_axi_sa0_ARLOCK(sa0_ARLOCK),
    .m_axi_sa0_ARCACHE(sa0_ARCACHE),
    .m_axi_sa0_ARPROT(sa0_ARPROT),
    .m_axi_sa0_ARQOS(sa0_ARQOS),
    .m_axi_sa0_ARREGION(sa0_ARREGION),
    .m_axi_sa0_ARUSER(sa0_ARUSER),
    .m_axi_sa0_RVALID(sa0_RVALID),
    .m_axi_sa0_RREADY(sa0_RREADY),
    .m_axi_sa0_RDATA(sa0_RDATA),
    .m_axi_sa0_RLAST(sa0_RLAST),
    .m_axi_sa0_RID(sa0_RID),
    .m_axi_sa0_RUSER(sa0_RUSER),
    .m_axi_sa0_RRESP(sa0_RRESP),
    .m_axi_sa0_BVALID(sa0_BVALID),
    .m_axi_sa0_BREADY(sa0_BREADY),
    .m_axi_sa0_BRESP(sa0_BRESP),
    .m_axi_sa0_BID(sa0_BID),
    .m_axi_sa0_BUSER(sa0_BUSER),
    .m_axi_sa1_AWVALID(sa1_AWVALID),
    .m_axi_sa1_AWREADY(sa1_AWREADY),
    .m_axi_sa1_AWADDR(sa1_AWADDR),
    .m_axi_sa1_AWID(sa1_AWID),
    .m_axi_sa1_AWLEN(sa1_AWLEN),
    .m_axi_sa1_AWSIZE(sa1_AWSIZE),
    .m_axi_sa1_AWBURST(sa1_AWBURST),
    .m_axi_sa1_AWLOCK(sa1_AWLOCK),
    .m_axi_sa1_AWCACHE(sa1_AWCACHE),
    .m_axi_sa1_AWPROT(sa1_AWPROT),
    .m_axi_sa1_AWQOS(sa1_AWQOS),
    .m_axi_sa1_AWREGION(sa1_AWREGION),
    .m_axi_sa1_AWUSER(sa1_AWUSER),
    .m_axi_sa1_WVALID(sa1_WVALID),
    .m_axi_sa1_WREADY(sa1_WREADY),
    .m_axi_sa1_WDATA(sa1_WDATA),
    .m_axi_sa1_WSTRB(sa1_WSTRB),
    .m_axi_sa1_WLAST(sa1_WLAST),
    .m_axi_sa1_WID(sa1_WID),
    .m_axi_sa1_WUSER(sa1_WUSER),
    .m_axi_sa1_ARVALID(sa1_ARVALID),
    .m_axi_sa1_ARREADY(sa1_ARREADY),
    .m_axi_sa1_ARADDR(sa1_ARADDR),
    .m_axi_sa1_ARID(sa1_ARID),
    .m_axi_sa1_ARLEN(sa1_ARLEN),
    .m_axi_sa1_ARSIZE(sa1_ARSIZE),
    .m_axi_sa1_ARBURST(sa1_ARBURST),
    .m_axi_sa1_ARLOCK(sa1_ARLOCK),
    .m_axi_sa1_ARCACHE(sa1_ARCACHE),
    .m_axi_sa1_ARPROT(sa1_ARPROT),
    .m_axi_sa1_ARQOS(sa1_ARQOS),
    .m_axi_sa1_ARREGION(sa1_ARREGION),
    .m_axi_sa1_ARUSER(sa1_ARUSER),
    .m_axi_sa1_RVALID(sa1_RVALID),
    .m_axi_sa1_RREADY(sa1_RREADY),
    .m_axi_sa1_RDATA(sa1_RDATA),
    .m_axi_sa1_RLAST(sa1_RLAST),
    .m_axi_sa1_RID(sa1_RID),
    .m_axi_sa1_RUSER(sa1_RUSER),
    .m_axi_sa1_RRESP(sa1_RRESP),
    .m_axi_sa1_BVALID(sa1_BVALID),
    .m_axi_sa1_BREADY(sa1_BREADY),
    .m_axi_sa1_BRESP(sa1_BRESP),
    .m_axi_sa1_BID(sa1_BID),
    .m_axi_sa1_BUSER(sa1_BUSER),
    .m_axi_sa2_AWVALID(sa2_AWVALID),
    .m_axi_sa2_AWREADY(sa2_AWREADY),
    .m_axi_sa2_AWADDR(sa2_AWADDR),
    .m_axi_sa2_AWID(sa2_AWID),
    .m_axi_sa2_AWLEN(sa2_AWLEN),
    .m_axi_sa2_AWSIZE(sa2_AWSIZE),
    .m_axi_sa2_AWBURST(sa2_AWBURST),
    .m_axi_sa2_AWLOCK(sa2_AWLOCK),
    .m_axi_sa2_AWCACHE(sa2_AWCACHE),
    .m_axi_sa2_AWPROT(sa2_AWPROT),
    .m_axi_sa2_AWQOS(sa2_AWQOS),
    .m_axi_sa2_AWREGION(sa2_AWREGION),
    .m_axi_sa2_AWUSER(sa2_AWUSER),
    .m_axi_sa2_WVALID(sa2_WVALID),
    .m_axi_sa2_WREADY(sa2_WREADY),
    .m_axi_sa2_WDATA(sa2_WDATA),
    .m_axi_sa2_WSTRB(sa2_WSTRB),
    .m_axi_sa2_WLAST(sa2_WLAST),
    .m_axi_sa2_WID(sa2_WID),
    .m_axi_sa2_WUSER(sa2_WUSER),
    .m_axi_sa2_ARVALID(sa2_ARVALID),
    .m_axi_sa2_ARREADY(sa2_ARREADY),
    .m_axi_sa2_ARADDR(sa2_ARADDR),
    .m_axi_sa2_ARID(sa2_ARID),
    .m_axi_sa2_ARLEN(sa2_ARLEN),
    .m_axi_sa2_ARSIZE(sa2_ARSIZE),
    .m_axi_sa2_ARBURST(sa2_ARBURST),
    .m_axi_sa2_ARLOCK(sa2_ARLOCK),
    .m_axi_sa2_ARCACHE(sa2_ARCACHE),
    .m_axi_sa2_ARPROT(sa2_ARPROT),
    .m_axi_sa2_ARQOS(sa2_ARQOS),
    .m_axi_sa2_ARREGION(sa2_ARREGION),
    .m_axi_sa2_ARUSER(sa2_ARUSER),
    .m_axi_sa2_RVALID(sa2_RVALID),
    .m_axi_sa2_RREADY(sa2_RREADY),
    .m_axi_sa2_RDATA(sa2_RDATA),
    .m_axi_sa2_RLAST(sa2_RLAST),
    .m_axi_sa2_RID(sa2_RID),
    .m_axi_sa2_RUSER(sa2_RUSER),
    .m_axi_sa2_RRESP(sa2_RRESP),
    .m_axi_sa2_BVALID(sa2_BVALID),
    .m_axi_sa2_BREADY(sa2_BREADY),
    .m_axi_sa2_BRESP(sa2_BRESP),
    .m_axi_sa2_BID(sa2_BID),
    .m_axi_sa2_BUSER(sa2_BUSER),
    .m_axi_sl0_AWVALID(sl0_AWVALID),
    .m_axi_sl0_AWREADY(sl0_AWREADY),
    .m_axi_sl0_AWADDR(sl0_AWADDR),
    .m_axi_sl0_AWID(sl0_AWID),
    .m_axi_sl0_AWLEN(sl0_AWLEN),
    .m_axi_sl0_AWSIZE(sl0_AWSIZE),
    .m_axi_sl0_AWBURST(sl0_AWBURST),
    .m_axi_sl0_AWLOCK(sl0_AWLOCK),
    .m_axi_sl0_AWCACHE(sl0_AWCACHE),
    .m_axi_sl0_AWPROT(sl0_AWPROT),
    .m_axi_sl0_AWQOS(sl0_AWQOS),
    .m_axi_sl0_AWREGION(sl0_AWREGION),
    .m_axi_sl0_AWUSER(sl0_AWUSER),
    .m_axi_sl0_WVALID(sl0_WVALID),
    .m_axi_sl0_WREADY(sl0_WREADY),
    .m_axi_sl0_WDATA(sl0_WDATA),
    .m_axi_sl0_WSTRB(sl0_WSTRB),
    .m_axi_sl0_WLAST(sl0_WLAST),
    .m_axi_sl0_WID(sl0_WID),
    .m_axi_sl0_WUSER(sl0_WUSER),
    .m_axi_sl0_ARVALID(sl0_ARVALID),
    .m_axi_sl0_ARREADY(sl0_ARREADY),
    .m_axi_sl0_ARADDR(sl0_ARADDR),
    .m_axi_sl0_ARID(sl0_ARID),
    .m_axi_sl0_ARLEN(sl0_ARLEN),
    .m_axi_sl0_ARSIZE(sl0_ARSIZE),
    .m_axi_sl0_ARBURST(sl0_ARBURST),
    .m_axi_sl0_ARLOCK(sl0_ARLOCK),
    .m_axi_sl0_ARCACHE(sl0_ARCACHE),
    .m_axi_sl0_ARPROT(sl0_ARPROT),
    .m_axi_sl0_ARQOS(sl0_ARQOS),
    .m_axi_sl0_ARREGION(sl0_ARREGION),
    .m_axi_sl0_ARUSER(sl0_ARUSER),
    .m_axi_sl0_RVALID(sl0_RVALID),
    .m_axi_sl0_RREADY(sl0_RREADY),
    .m_axi_sl0_RDATA(sl0_RDATA),
    .m_axi_sl0_RLAST(sl0_RLAST),
    .m_axi_sl0_RID(sl0_RID),
    .m_axi_sl0_RUSER(sl0_RUSER),
    .m_axi_sl0_RRESP(sl0_RRESP),
    .m_axi_sl0_BVALID(sl0_BVALID),
    .m_axi_sl0_BREADY(sl0_BREADY),
    .m_axi_sl0_BRESP(sl0_BRESP),
    .m_axi_sl0_BID(sl0_BID),
    .m_axi_sl0_BUSER(sl0_BUSER),
    .m_axi_sl1_AWVALID(sl1_AWVALID),
    .m_axi_sl1_AWREADY(sl1_AWREADY),
    .m_axi_sl1_AWADDR(sl1_AWADDR),
    .m_axi_sl1_AWID(sl1_AWID),
    .m_axi_sl1_AWLEN(sl1_AWLEN),
    .m_axi_sl1_AWSIZE(sl1_AWSIZE),
    .m_axi_sl1_AWBURST(sl1_AWBURST),
    .m_axi_sl1_AWLOCK(sl1_AWLOCK),
    .m_axi_sl1_AWCACHE(sl1_AWCACHE),
    .m_axi_sl1_AWPROT(sl1_AWPROT),
    .m_axi_sl1_AWQOS(sl1_AWQOS),
    .m_axi_sl1_AWREGION(sl1_AWREGION),
    .m_axi_sl1_AWUSER(sl1_AWUSER),
    .m_axi_sl1_WVALID(sl1_WVALID),
    .m_axi_sl1_WREADY(sl1_WREADY),
    .m_axi_sl1_WDATA(sl1_WDATA),
    .m_axi_sl1_WSTRB(sl1_WSTRB),
    .m_axi_sl1_WLAST(sl1_WLAST),
    .m_axi_sl1_WID(sl1_WID),
    .m_axi_sl1_WUSER(sl1_WUSER),
    .m_axi_sl1_ARVALID(sl1_ARVALID),
    .m_axi_sl1_ARREADY(sl1_ARREADY),
    .m_axi_sl1_ARADDR(sl1_ARADDR),
    .m_axi_sl1_ARID(sl1_ARID),
    .m_axi_sl1_ARLEN(sl1_ARLEN),
    .m_axi_sl1_ARSIZE(sl1_ARSIZE),
    .m_axi_sl1_ARBURST(sl1_ARBURST),
    .m_axi_sl1_ARLOCK(sl1_ARLOCK),
    .m_axi_sl1_ARCACHE(sl1_ARCACHE),
    .m_axi_sl1_ARPROT(sl1_ARPROT),
    .m_axi_sl1_ARQOS(sl1_ARQOS),
    .m_axi_sl1_ARREGION(sl1_ARREGION),
    .m_axi_sl1_ARUSER(sl1_ARUSER),
    .m_axi_sl1_RVALID(sl1_RVALID),
    .m_axi_sl1_RREADY(sl1_RREADY),
    .m_axi_sl1_RDATA(sl1_RDATA),
    .m_axi_sl1_RLAST(sl1_RLAST),
    .m_axi_sl1_RID(sl1_RID),
    .m_axi_sl1_RUSER(sl1_RUSER),
    .m_axi_sl1_RRESP(sl1_RRESP),
    .m_axi_sl1_BVALID(sl1_BVALID),
    .m_axi_sl1_BREADY(sl1_BREADY),
    .m_axi_sl1_BRESP(sl1_BRESP),
    .m_axi_sl1_BID(sl1_BID),
    .m_axi_sl1_BUSER(sl1_BUSER),
    .m_axi_sl2_AWVALID(sl2_AWVALID),
    .m_axi_sl2_AWREADY(sl2_AWREADY),
    .m_axi_sl2_AWADDR(sl2_AWADDR),
    .m_axi_sl2_AWID(sl2_AWID),
    .m_axi_sl2_AWLEN(sl2_AWLEN),
    .m_axi_sl2_AWSIZE(sl2_AWSIZE),
    .m_axi_sl2_AWBURST(sl2_AWBURST),
    .m_axi_sl2_AWLOCK(sl2_AWLOCK),
    .m_axi_sl2_AWCACHE(sl2_AWCACHE),
    .m_axi_sl2_AWPROT(sl2_AWPROT),
    .m_axi_sl2_AWQOS(sl2_AWQOS),
    .m_axi_sl2_AWREGION(sl2_AWREGION),
    .m_axi_sl2_AWUSER(sl2_AWUSER),
    .m_axi_sl2_WVALID(sl2_WVALID),
    .m_axi_sl2_WREADY(sl2_WREADY),
    .m_axi_sl2_WDATA(sl2_WDATA),
    .m_axi_sl2_WSTRB(sl2_WSTRB),
    .m_axi_sl2_WLAST(sl2_WLAST),
    .m_axi_sl2_WID(sl2_WID),
    .m_axi_sl2_WUSER(sl2_WUSER),
    .m_axi_sl2_ARVALID(sl2_ARVALID),
    .m_axi_sl2_ARREADY(sl2_ARREADY),
    .m_axi_sl2_ARADDR(sl2_ARADDR),
    .m_axi_sl2_ARID(sl2_ARID),
    .m_axi_sl2_ARLEN(sl2_ARLEN),
    .m_axi_sl2_ARSIZE(sl2_ARSIZE),
    .m_axi_sl2_ARBURST(sl2_ARBURST),
    .m_axi_sl2_ARLOCK(sl2_ARLOCK),
    .m_axi_sl2_ARCACHE(sl2_ARCACHE),
    .m_axi_sl2_ARPROT(sl2_ARPROT),
    .m_axi_sl2_ARQOS(sl2_ARQOS),
    .m_axi_sl2_ARREGION(sl2_ARREGION),
    .m_axi_sl2_ARUSER(sl2_ARUSER),
    .m_axi_sl2_RVALID(sl2_RVALID),
    .m_axi_sl2_RREADY(sl2_RREADY),
    .m_axi_sl2_RDATA(sl2_RDATA),
    .m_axi_sl2_RLAST(sl2_RLAST),
    .m_axi_sl2_RID(sl2_RID),
    .m_axi_sl2_RUSER(sl2_RUSER),
    .m_axi_sl2_RRESP(sl2_RRESP),
    .m_axi_sl2_BVALID(sl2_BVALID),
    .m_axi_sl2_BREADY(sl2_BREADY),
    .m_axi_sl2_BRESP(sl2_BRESP),
    .m_axi_sl2_BID(sl2_BID),
    .m_axi_sl2_BUSER(sl2_BUSER),
    .m_axi_su0_AWVALID(su0_AWVALID),
    .m_axi_su0_AWREADY(su0_AWREADY),
    .m_axi_su0_AWADDR(su0_AWADDR),
    .m_axi_su0_AWID(su0_AWID),
    .m_axi_su0_AWLEN(su0_AWLEN),
    .m_axi_su0_AWSIZE(su0_AWSIZE),
    .m_axi_su0_AWBURST(su0_AWBURST),
    .m_axi_su0_AWLOCK(su0_AWLOCK),
    .m_axi_su0_AWCACHE(su0_AWCACHE),
    .m_axi_su0_AWPROT(su0_AWPROT),
    .m_axi_su0_AWQOS(su0_AWQOS),
    .m_axi_su0_AWREGION(su0_AWREGION),
    .m_axi_su0_AWUSER(su0_AWUSER),
    .m_axi_su0_WVALID(su0_WVALID),
    .m_axi_su0_WREADY(su0_WREADY),
    .m_axi_su0_WDATA(su0_WDATA),
    .m_axi_su0_WSTRB(su0_WSTRB),
    .m_axi_su0_WLAST(su0_WLAST),
    .m_axi_su0_WID(su0_WID),
    .m_axi_su0_WUSER(su0_WUSER),
    .m_axi_su0_ARVALID(su0_ARVALID),
    .m_axi_su0_ARREADY(su0_ARREADY),
    .m_axi_su0_ARADDR(su0_ARADDR),
    .m_axi_su0_ARID(su0_ARID),
    .m_axi_su0_ARLEN(su0_ARLEN),
    .m_axi_su0_ARSIZE(su0_ARSIZE),
    .m_axi_su0_ARBURST(su0_ARBURST),
    .m_axi_su0_ARLOCK(su0_ARLOCK),
    .m_axi_su0_ARCACHE(su0_ARCACHE),
    .m_axi_su0_ARPROT(su0_ARPROT),
    .m_axi_su0_ARQOS(su0_ARQOS),
    .m_axi_su0_ARREGION(su0_ARREGION),
    .m_axi_su0_ARUSER(su0_ARUSER),
    .m_axi_su0_RVALID(su0_RVALID),
    .m_axi_su0_RREADY(su0_RREADY),
    .m_axi_su0_RDATA(su0_RDATA),
    .m_axi_su0_RLAST(su0_RLAST),
    .m_axi_su0_RID(su0_RID),
    .m_axi_su0_RUSER(su0_RUSER),
    .m_axi_su0_RRESP(su0_RRESP),
    .m_axi_su0_BVALID(su0_BVALID),
    .m_axi_su0_BREADY(su0_BREADY),
    .m_axi_su0_BRESP(su0_BRESP),
    .m_axi_su0_BID(su0_BID),
    .m_axi_su0_BUSER(su0_BUSER),
    .m_axi_su1_AWVALID(su1_AWVALID),
    .m_axi_su1_AWREADY(su1_AWREADY),
    .m_axi_su1_AWADDR(su1_AWADDR),
    .m_axi_su1_AWID(su1_AWID),
    .m_axi_su1_AWLEN(su1_AWLEN),
    .m_axi_su1_AWSIZE(su1_AWSIZE),
    .m_axi_su1_AWBURST(su1_AWBURST),
    .m_axi_su1_AWLOCK(su1_AWLOCK),
    .m_axi_su1_AWCACHE(su1_AWCACHE),
    .m_axi_su1_AWPROT(su1_AWPROT),
    .m_axi_su1_AWQOS(su1_AWQOS),
    .m_axi_su1_AWREGION(su1_AWREGION),
    .m_axi_su1_AWUSER(su1_AWUSER),
    .m_axi_su1_WVALID(su1_WVALID),
    .m_axi_su1_WREADY(su1_WREADY),
    .m_axi_su1_WDATA(su1_WDATA),
    .m_axi_su1_WSTRB(su1_WSTRB),
    .m_axi_su1_WLAST(su1_WLAST),
    .m_axi_su1_WID(su1_WID),
    .m_axi_su1_WUSER(su1_WUSER),
    .m_axi_su1_ARVALID(su1_ARVALID),
    .m_axi_su1_ARREADY(su1_ARREADY),
    .m_axi_su1_ARADDR(su1_ARADDR),
    .m_axi_su1_ARID(su1_ARID),
    .m_axi_su1_ARLEN(su1_ARLEN),
    .m_axi_su1_ARSIZE(su1_ARSIZE),
    .m_axi_su1_ARBURST(su1_ARBURST),
    .m_axi_su1_ARLOCK(su1_ARLOCK),
    .m_axi_su1_ARCACHE(su1_ARCACHE),
    .m_axi_su1_ARPROT(su1_ARPROT),
    .m_axi_su1_ARQOS(su1_ARQOS),
    .m_axi_su1_ARREGION(su1_ARREGION),
    .m_axi_su1_ARUSER(su1_ARUSER),
    .m_axi_su1_RVALID(su1_RVALID),
    .m_axi_su1_RREADY(su1_RREADY),
    .m_axi_su1_RDATA(su1_RDATA),
    .m_axi_su1_RLAST(su1_RLAST),
    .m_axi_su1_RID(su1_RID),
    .m_axi_su1_RUSER(su1_RUSER),
    .m_axi_su1_RRESP(su1_RRESP),
    .m_axi_su1_BVALID(su1_BVALID),
    .m_axi_su1_BREADY(su1_BREADY),
    .m_axi_su1_BRESP(su1_BRESP),
    .m_axi_su1_BID(su1_BID),
    .m_axi_su1_BUSER(su1_BUSER),
    .m_axi_su2_AWVALID(su2_AWVALID),
    .m_axi_su2_AWREADY(su2_AWREADY),
    .m_axi_su2_AWADDR(su2_AWADDR),
    .m_axi_su2_AWID(su2_AWID),
    .m_axi_su2_AWLEN(su2_AWLEN),
    .m_axi_su2_AWSIZE(su2_AWSIZE),
    .m_axi_su2_AWBURST(su2_AWBURST),
    .m_axi_su2_AWLOCK(su2_AWLOCK),
    .m_axi_su2_AWCACHE(su2_AWCACHE),
    .m_axi_su2_AWPROT(su2_AWPROT),
    .m_axi_su2_AWQOS(su2_AWQOS),
    .m_axi_su2_AWREGION(su2_AWREGION),
    .m_axi_su2_AWUSER(su2_AWUSER),
    .m_axi_su2_WVALID(su2_WVALID),
    .m_axi_su2_WREADY(su2_WREADY),
    .m_axi_su2_WDATA(su2_WDATA),
    .m_axi_su2_WSTRB(su2_WSTRB),
    .m_axi_su2_WLAST(su2_WLAST),
    .m_axi_su2_WID(su2_WID),
    .m_axi_su2_WUSER(su2_WUSER),
    .m_axi_su2_ARVALID(su2_ARVALID),
    .m_axi_su2_ARREADY(su2_ARREADY),
    .m_axi_su2_ARADDR(su2_ARADDR),
    .m_axi_su2_ARID(su2_ARID),
    .m_axi_su2_ARLEN(su2_ARLEN),
    .m_axi_su2_ARSIZE(su2_ARSIZE),
    .m_axi_su2_ARBURST(su2_ARBURST),
    .m_axi_su2_ARLOCK(su2_ARLOCK),
    .m_axi_su2_ARCACHE(su2_ARCACHE),
    .m_axi_su2_ARPROT(su2_ARPROT),
    .m_axi_su2_ARQOS(su2_ARQOS),
    .m_axi_su2_ARREGION(su2_ARREGION),
    .m_axi_su2_ARUSER(su2_ARUSER),
    .m_axi_su2_RVALID(su2_RVALID),
    .m_axi_su2_RREADY(su2_RREADY),
    .m_axi_su2_RDATA(su2_RDATA),
    .m_axi_su2_RLAST(su2_RLAST),
    .m_axi_su2_RID(su2_RID),
    .m_axi_su2_RUSER(su2_RUSER),
    .m_axi_su2_RRESP(su2_RRESP),
    .m_axi_su2_BVALID(su2_BVALID),
    .m_axi_su2_BREADY(su2_BREADY),
    .m_axi_su2_BRESP(su2_BRESP),
    .m_axi_su2_BID(su2_BID),
    .m_axi_su2_BUSER(su2_BUSER),
    .m_axi_ss0_AWVALID(ss0_AWVALID),
    .m_axi_ss0_AWREADY(ss0_AWREADY),
    .m_axi_ss0_AWADDR(ss0_AWADDR),
    .m_axi_ss0_AWID(ss0_AWID),
    .m_axi_ss0_AWLEN(ss0_AWLEN),
    .m_axi_ss0_AWSIZE(ss0_AWSIZE),
    .m_axi_ss0_AWBURST(ss0_AWBURST),
    .m_axi_ss0_AWLOCK(ss0_AWLOCK),
    .m_axi_ss0_AWCACHE(ss0_AWCACHE),
    .m_axi_ss0_AWPROT(ss0_AWPROT),
    .m_axi_ss0_AWQOS(ss0_AWQOS),
    .m_axi_ss0_AWREGION(ss0_AWREGION),
    .m_axi_ss0_AWUSER(ss0_AWUSER),
    .m_axi_ss0_WVALID(ss0_WVALID),
    .m_axi_ss0_WREADY(ss0_WREADY),
    .m_axi_ss0_WDATA(ss0_WDATA),
    .m_axi_ss0_WSTRB(ss0_WSTRB),
    .m_axi_ss0_WLAST(ss0_WLAST),
    .m_axi_ss0_WID(ss0_WID),
    .m_axi_ss0_WUSER(ss0_WUSER),
    .m_axi_ss0_ARVALID(ss0_ARVALID),
    .m_axi_ss0_ARREADY(ss0_ARREADY),
    .m_axi_ss0_ARADDR(ss0_ARADDR),
    .m_axi_ss0_ARID(ss0_ARID),
    .m_axi_ss0_ARLEN(ss0_ARLEN),
    .m_axi_ss0_ARSIZE(ss0_ARSIZE),
    .m_axi_ss0_ARBURST(ss0_ARBURST),
    .m_axi_ss0_ARLOCK(ss0_ARLOCK),
    .m_axi_ss0_ARCACHE(ss0_ARCACHE),
    .m_axi_ss0_ARPROT(ss0_ARPROT),
    .m_axi_ss0_ARQOS(ss0_ARQOS),
    .m_axi_ss0_ARREGION(ss0_ARREGION),
    .m_axi_ss0_ARUSER(ss0_ARUSER),
    .m_axi_ss0_RVALID(ss0_RVALID),
    .m_axi_ss0_RREADY(ss0_RREADY),
    .m_axi_ss0_RDATA(ss0_RDATA),
    .m_axi_ss0_RLAST(ss0_RLAST),
    .m_axi_ss0_RID(ss0_RID),
    .m_axi_ss0_RUSER(ss0_RUSER),
    .m_axi_ss0_RRESP(ss0_RRESP),
    .m_axi_ss0_BVALID(ss0_BVALID),
    .m_axi_ss0_BREADY(ss0_BREADY),
    .m_axi_ss0_BRESP(ss0_BRESP),
    .m_axi_ss0_BID(ss0_BID),
    .m_axi_ss0_BUSER(ss0_BUSER),
    .m_axi_ss1_AWVALID(ss1_AWVALID),
    .m_axi_ss1_AWREADY(ss1_AWREADY),
    .m_axi_ss1_AWADDR(ss1_AWADDR),
    .m_axi_ss1_AWID(ss1_AWID),
    .m_axi_ss1_AWLEN(ss1_AWLEN),
    .m_axi_ss1_AWSIZE(ss1_AWSIZE),
    .m_axi_ss1_AWBURST(ss1_AWBURST),
    .m_axi_ss1_AWLOCK(ss1_AWLOCK),
    .m_axi_ss1_AWCACHE(ss1_AWCACHE),
    .m_axi_ss1_AWPROT(ss1_AWPROT),
    .m_axi_ss1_AWQOS(ss1_AWQOS),
    .m_axi_ss1_AWREGION(ss1_AWREGION),
    .m_axi_ss1_AWUSER(ss1_AWUSER),
    .m_axi_ss1_WVALID(ss1_WVALID),
    .m_axi_ss1_WREADY(ss1_WREADY),
    .m_axi_ss1_WDATA(ss1_WDATA),
    .m_axi_ss1_WSTRB(ss1_WSTRB),
    .m_axi_ss1_WLAST(ss1_WLAST),
    .m_axi_ss1_WID(ss1_WID),
    .m_axi_ss1_WUSER(ss1_WUSER),
    .m_axi_ss1_ARVALID(ss1_ARVALID),
    .m_axi_ss1_ARREADY(ss1_ARREADY),
    .m_axi_ss1_ARADDR(ss1_ARADDR),
    .m_axi_ss1_ARID(ss1_ARID),
    .m_axi_ss1_ARLEN(ss1_ARLEN),
    .m_axi_ss1_ARSIZE(ss1_ARSIZE),
    .m_axi_ss1_ARBURST(ss1_ARBURST),
    .m_axi_ss1_ARLOCK(ss1_ARLOCK),
    .m_axi_ss1_ARCACHE(ss1_ARCACHE),
    .m_axi_ss1_ARPROT(ss1_ARPROT),
    .m_axi_ss1_ARQOS(ss1_ARQOS),
    .m_axi_ss1_ARREGION(ss1_ARREGION),
    .m_axi_ss1_ARUSER(ss1_ARUSER),
    .m_axi_ss1_RVALID(ss1_RVALID),
    .m_axi_ss1_RREADY(ss1_RREADY),
    .m_axi_ss1_RDATA(ss1_RDATA),
    .m_axi_ss1_RLAST(ss1_RLAST),
    .m_axi_ss1_RID(ss1_RID),
    .m_axi_ss1_RUSER(ss1_RUSER),
    .m_axi_ss1_RRESP(ss1_RRESP),
    .m_axi_ss1_BVALID(ss1_BVALID),
    .m_axi_ss1_BREADY(ss1_BREADY),
    .m_axi_ss1_BRESP(ss1_BRESP),
    .m_axi_ss1_BID(ss1_BID),
    .m_axi_ss1_BUSER(ss1_BUSER),
    .m_axi_ss2_AWVALID(ss2_AWVALID),
    .m_axi_ss2_AWREADY(ss2_AWREADY),
    .m_axi_ss2_AWADDR(ss2_AWADDR),
    .m_axi_ss2_AWID(ss2_AWID),
    .m_axi_ss2_AWLEN(ss2_AWLEN),
    .m_axi_ss2_AWSIZE(ss2_AWSIZE),
    .m_axi_ss2_AWBURST(ss2_AWBURST),
    .m_axi_ss2_AWLOCK(ss2_AWLOCK),
    .m_axi_ss2_AWCACHE(ss2_AWCACHE),
    .m_axi_ss2_AWPROT(ss2_AWPROT),
    .m_axi_ss2_AWQOS(ss2_AWQOS),
    .m_axi_ss2_AWREGION(ss2_AWREGION),
    .m_axi_ss2_AWUSER(ss2_AWUSER),
    .m_axi_ss2_WVALID(ss2_WVALID),
    .m_axi_ss2_WREADY(ss2_WREADY),
    .m_axi_ss2_WDATA(ss2_WDATA),
    .m_axi_ss2_WSTRB(ss2_WSTRB),
    .m_axi_ss2_WLAST(ss2_WLAST),
    .m_axi_ss2_WID(ss2_WID),
    .m_axi_ss2_WUSER(ss2_WUSER),
    .m_axi_ss2_ARVALID(ss2_ARVALID),
    .m_axi_ss2_ARREADY(ss2_ARREADY),
    .m_axi_ss2_ARADDR(ss2_ARADDR),
    .m_axi_ss2_ARID(ss2_ARID),
    .m_axi_ss2_ARLEN(ss2_ARLEN),
    .m_axi_ss2_ARSIZE(ss2_ARSIZE),
    .m_axi_ss2_ARBURST(ss2_ARBURST),
    .m_axi_ss2_ARLOCK(ss2_ARLOCK),
    .m_axi_ss2_ARCACHE(ss2_ARCACHE),
    .m_axi_ss2_ARPROT(ss2_ARPROT),
    .m_axi_ss2_ARQOS(ss2_ARQOS),
    .m_axi_ss2_ARREGION(ss2_ARREGION),
    .m_axi_ss2_ARUSER(ss2_ARUSER),
    .m_axi_ss2_RVALID(ss2_RVALID),
    .m_axi_ss2_RREADY(ss2_RREADY),
    .m_axi_ss2_RDATA(ss2_RDATA),
    .m_axi_ss2_RLAST(ss2_RLAST),
    .m_axi_ss2_RID(ss2_RID),
    .m_axi_ss2_RUSER(ss2_RUSER),
    .m_axi_ss2_RRESP(ss2_RRESP),
    .m_axi_ss2_BVALID(ss2_BVALID),
    .m_axi_ss2_BREADY(ss2_BREADY),
    .m_axi_ss2_BRESP(ss2_BRESP),
    .m_axi_ss2_BID(ss2_BID),
    .m_axi_ss2_BUSER(ss2_BUSER),
    .m_axi_sw0_AWVALID(sw0_AWVALID),
    .m_axi_sw0_AWREADY(sw0_AWREADY),
    .m_axi_sw0_AWADDR(sw0_AWADDR),
    .m_axi_sw0_AWID(sw0_AWID),
    .m_axi_sw0_AWLEN(sw0_AWLEN),
    .m_axi_sw0_AWSIZE(sw0_AWSIZE),
    .m_axi_sw0_AWBURST(sw0_AWBURST),
    .m_axi_sw0_AWLOCK(sw0_AWLOCK),
    .m_axi_sw0_AWCACHE(sw0_AWCACHE),
    .m_axi_sw0_AWPROT(sw0_AWPROT),
    .m_axi_sw0_AWQOS(sw0_AWQOS),
    .m_axi_sw0_AWREGION(sw0_AWREGION),
    .m_axi_sw0_AWUSER(sw0_AWUSER),
    .m_axi_sw0_WVALID(sw0_WVALID),
    .m_axi_sw0_WREADY(sw0_WREADY),
    .m_axi_sw0_WDATA(sw0_WDATA),
    .m_axi_sw0_WSTRB(sw0_WSTRB),
    .m_axi_sw0_WLAST(sw0_WLAST),
    .m_axi_sw0_WID(sw0_WID),
    .m_axi_sw0_WUSER(sw0_WUSER),
    .m_axi_sw0_ARVALID(sw0_ARVALID),
    .m_axi_sw0_ARREADY(sw0_ARREADY),
    .m_axi_sw0_ARADDR(sw0_ARADDR),
    .m_axi_sw0_ARID(sw0_ARID),
    .m_axi_sw0_ARLEN(sw0_ARLEN),
    .m_axi_sw0_ARSIZE(sw0_ARSIZE),
    .m_axi_sw0_ARBURST(sw0_ARBURST),
    .m_axi_sw0_ARLOCK(sw0_ARLOCK),
    .m_axi_sw0_ARCACHE(sw0_ARCACHE),
    .m_axi_sw0_ARPROT(sw0_ARPROT),
    .m_axi_sw0_ARQOS(sw0_ARQOS),
    .m_axi_sw0_ARREGION(sw0_ARREGION),
    .m_axi_sw0_ARUSER(sw0_ARUSER),
    .m_axi_sw0_RVALID(sw0_RVALID),
    .m_axi_sw0_RREADY(sw0_RREADY),
    .m_axi_sw0_RDATA(sw0_RDATA),
    .m_axi_sw0_RLAST(sw0_RLAST),
    .m_axi_sw0_RID(sw0_RID),
    .m_axi_sw0_RUSER(sw0_RUSER),
    .m_axi_sw0_RRESP(sw0_RRESP),
    .m_axi_sw0_BVALID(sw0_BVALID),
    .m_axi_sw0_BREADY(sw0_BREADY),
    .m_axi_sw0_BRESP(sw0_BRESP),
    .m_axi_sw0_BID(sw0_BID),
    .m_axi_sw0_BUSER(sw0_BUSER),
    .m_axi_sw1_AWVALID(sw1_AWVALID),
    .m_axi_sw1_AWREADY(sw1_AWREADY),
    .m_axi_sw1_AWADDR(sw1_AWADDR),
    .m_axi_sw1_AWID(sw1_AWID),
    .m_axi_sw1_AWLEN(sw1_AWLEN),
    .m_axi_sw1_AWSIZE(sw1_AWSIZE),
    .m_axi_sw1_AWBURST(sw1_AWBURST),
    .m_axi_sw1_AWLOCK(sw1_AWLOCK),
    .m_axi_sw1_AWCACHE(sw1_AWCACHE),
    .m_axi_sw1_AWPROT(sw1_AWPROT),
    .m_axi_sw1_AWQOS(sw1_AWQOS),
    .m_axi_sw1_AWREGION(sw1_AWREGION),
    .m_axi_sw1_AWUSER(sw1_AWUSER),
    .m_axi_sw1_WVALID(sw1_WVALID),
    .m_axi_sw1_WREADY(sw1_WREADY),
    .m_axi_sw1_WDATA(sw1_WDATA),
    .m_axi_sw1_WSTRB(sw1_WSTRB),
    .m_axi_sw1_WLAST(sw1_WLAST),
    .m_axi_sw1_WID(sw1_WID),
    .m_axi_sw1_WUSER(sw1_WUSER),
    .m_axi_sw1_ARVALID(sw1_ARVALID),
    .m_axi_sw1_ARREADY(sw1_ARREADY),
    .m_axi_sw1_ARADDR(sw1_ARADDR),
    .m_axi_sw1_ARID(sw1_ARID),
    .m_axi_sw1_ARLEN(sw1_ARLEN),
    .m_axi_sw1_ARSIZE(sw1_ARSIZE),
    .m_axi_sw1_ARBURST(sw1_ARBURST),
    .m_axi_sw1_ARLOCK(sw1_ARLOCK),
    .m_axi_sw1_ARCACHE(sw1_ARCACHE),
    .m_axi_sw1_ARPROT(sw1_ARPROT),
    .m_axi_sw1_ARQOS(sw1_ARQOS),
    .m_axi_sw1_ARREGION(sw1_ARREGION),
    .m_axi_sw1_ARUSER(sw1_ARUSER),
    .m_axi_sw1_RVALID(sw1_RVALID),
    .m_axi_sw1_RREADY(sw1_RREADY),
    .m_axi_sw1_RDATA(sw1_RDATA),
    .m_axi_sw1_RLAST(sw1_RLAST),
    .m_axi_sw1_RID(sw1_RID),
    .m_axi_sw1_RUSER(sw1_RUSER),
    .m_axi_sw1_RRESP(sw1_RRESP),
    .m_axi_sw1_BVALID(sw1_BVALID),
    .m_axi_sw1_BREADY(sw1_BREADY),
    .m_axi_sw1_BRESP(sw1_BRESP),
    .m_axi_sw1_BID(sw1_BID),
    .m_axi_sw1_BUSER(sw1_BUSER),
    .rows(rows),
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




























// The signal of port rows
reg [31: 0] AESL_REG_rows = 0;
assign rows = AESL_REG_rows;
initial begin : read_file_process_rows
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
    fp = $fopen(`AUTOTB_TVIN_rows,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_rows);
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
            ret = $sscanf(token, "0x%x", AESL_REG_rows);
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


wire    AESL_axi_master_sa0_ready;
wire    AESL_axi_master_sa0_done;
AESL_axi_master_sa0 AESL_AXI_MASTER_sa0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_sa0_AWVALID (sa0_AWVALID),
    .TRAN_sa0_AWREADY (sa0_AWREADY),
    .TRAN_sa0_AWADDR (sa0_AWADDR),
    .TRAN_sa0_AWID (sa0_AWID),
    .TRAN_sa0_AWLEN (sa0_AWLEN),
    .TRAN_sa0_AWSIZE (sa0_AWSIZE),
    .TRAN_sa0_AWBURST (sa0_AWBURST),
    .TRAN_sa0_AWLOCK (sa0_AWLOCK),
    .TRAN_sa0_AWCACHE (sa0_AWCACHE),
    .TRAN_sa0_AWPROT (sa0_AWPROT),
    .TRAN_sa0_AWQOS (sa0_AWQOS),
    .TRAN_sa0_AWREGION (sa0_AWREGION),
    .TRAN_sa0_AWUSER (sa0_AWUSER),
    .TRAN_sa0_WVALID (sa0_WVALID),
    .TRAN_sa0_WREADY (sa0_WREADY),
    .TRAN_sa0_WDATA (sa0_WDATA),
    .TRAN_sa0_WSTRB (sa0_WSTRB),
    .TRAN_sa0_WLAST (sa0_WLAST),
    .TRAN_sa0_WID (sa0_WID),
    .TRAN_sa0_WUSER (sa0_WUSER),
    .TRAN_sa0_ARVALID (sa0_ARVALID),
    .TRAN_sa0_ARREADY (sa0_ARREADY),
    .TRAN_sa0_ARADDR (sa0_ARADDR),
    .TRAN_sa0_ARID (sa0_ARID),
    .TRAN_sa0_ARLEN (sa0_ARLEN),
    .TRAN_sa0_ARSIZE (sa0_ARSIZE),
    .TRAN_sa0_ARBURST (sa0_ARBURST),
    .TRAN_sa0_ARLOCK (sa0_ARLOCK),
    .TRAN_sa0_ARCACHE (sa0_ARCACHE),
    .TRAN_sa0_ARPROT (sa0_ARPROT),
    .TRAN_sa0_ARQOS (sa0_ARQOS),
    .TRAN_sa0_ARREGION (sa0_ARREGION),
    .TRAN_sa0_ARUSER (sa0_ARUSER),
    .TRAN_sa0_RVALID (sa0_RVALID),
    .TRAN_sa0_RREADY (sa0_RREADY),
    .TRAN_sa0_RDATA (sa0_RDATA),
    .TRAN_sa0_RLAST (sa0_RLAST),
    .TRAN_sa0_RID (sa0_RID),
    .TRAN_sa0_RUSER (sa0_RUSER),
    .TRAN_sa0_RRESP (sa0_RRESP),
    .TRAN_sa0_BVALID (sa0_BVALID),
    .TRAN_sa0_BREADY (sa0_BREADY),
    .TRAN_sa0_BRESP (sa0_BRESP),
    .TRAN_sa0_BID (sa0_BID),
    .TRAN_sa0_BUSER (sa0_BUSER),
    .ready (AESL_axi_master_sa0_ready),
    .done  (AESL_axi_master_sa0_done)
);
assign    AESL_axi_master_sa0_ready    =   ready;
assign    AESL_axi_master_sa0_done    =   AESL_done_delay;
wire    AESL_axi_master_sa1_ready;
wire    AESL_axi_master_sa1_done;
AESL_axi_master_sa1 AESL_AXI_MASTER_sa1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_sa1_AWVALID (sa1_AWVALID),
    .TRAN_sa1_AWREADY (sa1_AWREADY),
    .TRAN_sa1_AWADDR (sa1_AWADDR),
    .TRAN_sa1_AWID (sa1_AWID),
    .TRAN_sa1_AWLEN (sa1_AWLEN),
    .TRAN_sa1_AWSIZE (sa1_AWSIZE),
    .TRAN_sa1_AWBURST (sa1_AWBURST),
    .TRAN_sa1_AWLOCK (sa1_AWLOCK),
    .TRAN_sa1_AWCACHE (sa1_AWCACHE),
    .TRAN_sa1_AWPROT (sa1_AWPROT),
    .TRAN_sa1_AWQOS (sa1_AWQOS),
    .TRAN_sa1_AWREGION (sa1_AWREGION),
    .TRAN_sa1_AWUSER (sa1_AWUSER),
    .TRAN_sa1_WVALID (sa1_WVALID),
    .TRAN_sa1_WREADY (sa1_WREADY),
    .TRAN_sa1_WDATA (sa1_WDATA),
    .TRAN_sa1_WSTRB (sa1_WSTRB),
    .TRAN_sa1_WLAST (sa1_WLAST),
    .TRAN_sa1_WID (sa1_WID),
    .TRAN_sa1_WUSER (sa1_WUSER),
    .TRAN_sa1_ARVALID (sa1_ARVALID),
    .TRAN_sa1_ARREADY (sa1_ARREADY),
    .TRAN_sa1_ARADDR (sa1_ARADDR),
    .TRAN_sa1_ARID (sa1_ARID),
    .TRAN_sa1_ARLEN (sa1_ARLEN),
    .TRAN_sa1_ARSIZE (sa1_ARSIZE),
    .TRAN_sa1_ARBURST (sa1_ARBURST),
    .TRAN_sa1_ARLOCK (sa1_ARLOCK),
    .TRAN_sa1_ARCACHE (sa1_ARCACHE),
    .TRAN_sa1_ARPROT (sa1_ARPROT),
    .TRAN_sa1_ARQOS (sa1_ARQOS),
    .TRAN_sa1_ARREGION (sa1_ARREGION),
    .TRAN_sa1_ARUSER (sa1_ARUSER),
    .TRAN_sa1_RVALID (sa1_RVALID),
    .TRAN_sa1_RREADY (sa1_RREADY),
    .TRAN_sa1_RDATA (sa1_RDATA),
    .TRAN_sa1_RLAST (sa1_RLAST),
    .TRAN_sa1_RID (sa1_RID),
    .TRAN_sa1_RUSER (sa1_RUSER),
    .TRAN_sa1_RRESP (sa1_RRESP),
    .TRAN_sa1_BVALID (sa1_BVALID),
    .TRAN_sa1_BREADY (sa1_BREADY),
    .TRAN_sa1_BRESP (sa1_BRESP),
    .TRAN_sa1_BID (sa1_BID),
    .TRAN_sa1_BUSER (sa1_BUSER),
    .ready (AESL_axi_master_sa1_ready),
    .done  (AESL_axi_master_sa1_done)
);
assign    AESL_axi_master_sa1_ready    =   ready;
assign    AESL_axi_master_sa1_done    =   AESL_done_delay;
wire    AESL_axi_master_sa2_ready;
wire    AESL_axi_master_sa2_done;
AESL_axi_master_sa2 AESL_AXI_MASTER_sa2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_sa2_AWVALID (sa2_AWVALID),
    .TRAN_sa2_AWREADY (sa2_AWREADY),
    .TRAN_sa2_AWADDR (sa2_AWADDR),
    .TRAN_sa2_AWID (sa2_AWID),
    .TRAN_sa2_AWLEN (sa2_AWLEN),
    .TRAN_sa2_AWSIZE (sa2_AWSIZE),
    .TRAN_sa2_AWBURST (sa2_AWBURST),
    .TRAN_sa2_AWLOCK (sa2_AWLOCK),
    .TRAN_sa2_AWCACHE (sa2_AWCACHE),
    .TRAN_sa2_AWPROT (sa2_AWPROT),
    .TRAN_sa2_AWQOS (sa2_AWQOS),
    .TRAN_sa2_AWREGION (sa2_AWREGION),
    .TRAN_sa2_AWUSER (sa2_AWUSER),
    .TRAN_sa2_WVALID (sa2_WVALID),
    .TRAN_sa2_WREADY (sa2_WREADY),
    .TRAN_sa2_WDATA (sa2_WDATA),
    .TRAN_sa2_WSTRB (sa2_WSTRB),
    .TRAN_sa2_WLAST (sa2_WLAST),
    .TRAN_sa2_WID (sa2_WID),
    .TRAN_sa2_WUSER (sa2_WUSER),
    .TRAN_sa2_ARVALID (sa2_ARVALID),
    .TRAN_sa2_ARREADY (sa2_ARREADY),
    .TRAN_sa2_ARADDR (sa2_ARADDR),
    .TRAN_sa2_ARID (sa2_ARID),
    .TRAN_sa2_ARLEN (sa2_ARLEN),
    .TRAN_sa2_ARSIZE (sa2_ARSIZE),
    .TRAN_sa2_ARBURST (sa2_ARBURST),
    .TRAN_sa2_ARLOCK (sa2_ARLOCK),
    .TRAN_sa2_ARCACHE (sa2_ARCACHE),
    .TRAN_sa2_ARPROT (sa2_ARPROT),
    .TRAN_sa2_ARQOS (sa2_ARQOS),
    .TRAN_sa2_ARREGION (sa2_ARREGION),
    .TRAN_sa2_ARUSER (sa2_ARUSER),
    .TRAN_sa2_RVALID (sa2_RVALID),
    .TRAN_sa2_RREADY (sa2_RREADY),
    .TRAN_sa2_RDATA (sa2_RDATA),
    .TRAN_sa2_RLAST (sa2_RLAST),
    .TRAN_sa2_RID (sa2_RID),
    .TRAN_sa2_RUSER (sa2_RUSER),
    .TRAN_sa2_RRESP (sa2_RRESP),
    .TRAN_sa2_BVALID (sa2_BVALID),
    .TRAN_sa2_BREADY (sa2_BREADY),
    .TRAN_sa2_BRESP (sa2_BRESP),
    .TRAN_sa2_BID (sa2_BID),
    .TRAN_sa2_BUSER (sa2_BUSER),
    .ready (AESL_axi_master_sa2_ready),
    .done  (AESL_axi_master_sa2_done)
);
assign    AESL_axi_master_sa2_ready    =   ready;
assign    AESL_axi_master_sa2_done    =   AESL_done_delay;
wire    AESL_axi_master_sl0_ready;
wire    AESL_axi_master_sl0_done;
AESL_axi_master_sl0 AESL_AXI_MASTER_sl0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_sl0_AWVALID (sl0_AWVALID),
    .TRAN_sl0_AWREADY (sl0_AWREADY),
    .TRAN_sl0_AWADDR (sl0_AWADDR),
    .TRAN_sl0_AWID (sl0_AWID),
    .TRAN_sl0_AWLEN (sl0_AWLEN),
    .TRAN_sl0_AWSIZE (sl0_AWSIZE),
    .TRAN_sl0_AWBURST (sl0_AWBURST),
    .TRAN_sl0_AWLOCK (sl0_AWLOCK),
    .TRAN_sl0_AWCACHE (sl0_AWCACHE),
    .TRAN_sl0_AWPROT (sl0_AWPROT),
    .TRAN_sl0_AWQOS (sl0_AWQOS),
    .TRAN_sl0_AWREGION (sl0_AWREGION),
    .TRAN_sl0_AWUSER (sl0_AWUSER),
    .TRAN_sl0_WVALID (sl0_WVALID),
    .TRAN_sl0_WREADY (sl0_WREADY),
    .TRAN_sl0_WDATA (sl0_WDATA),
    .TRAN_sl0_WSTRB (sl0_WSTRB),
    .TRAN_sl0_WLAST (sl0_WLAST),
    .TRAN_sl0_WID (sl0_WID),
    .TRAN_sl0_WUSER (sl0_WUSER),
    .TRAN_sl0_ARVALID (sl0_ARVALID),
    .TRAN_sl0_ARREADY (sl0_ARREADY),
    .TRAN_sl0_ARADDR (sl0_ARADDR),
    .TRAN_sl0_ARID (sl0_ARID),
    .TRAN_sl0_ARLEN (sl0_ARLEN),
    .TRAN_sl0_ARSIZE (sl0_ARSIZE),
    .TRAN_sl0_ARBURST (sl0_ARBURST),
    .TRAN_sl0_ARLOCK (sl0_ARLOCK),
    .TRAN_sl0_ARCACHE (sl0_ARCACHE),
    .TRAN_sl0_ARPROT (sl0_ARPROT),
    .TRAN_sl0_ARQOS (sl0_ARQOS),
    .TRAN_sl0_ARREGION (sl0_ARREGION),
    .TRAN_sl0_ARUSER (sl0_ARUSER),
    .TRAN_sl0_RVALID (sl0_RVALID),
    .TRAN_sl0_RREADY (sl0_RREADY),
    .TRAN_sl0_RDATA (sl0_RDATA),
    .TRAN_sl0_RLAST (sl0_RLAST),
    .TRAN_sl0_RID (sl0_RID),
    .TRAN_sl0_RUSER (sl0_RUSER),
    .TRAN_sl0_RRESP (sl0_RRESP),
    .TRAN_sl0_BVALID (sl0_BVALID),
    .TRAN_sl0_BREADY (sl0_BREADY),
    .TRAN_sl0_BRESP (sl0_BRESP),
    .TRAN_sl0_BID (sl0_BID),
    .TRAN_sl0_BUSER (sl0_BUSER),
    .ready (AESL_axi_master_sl0_ready),
    .done  (AESL_axi_master_sl0_done)
);
assign    AESL_axi_master_sl0_ready    =   ready;
assign    AESL_axi_master_sl0_done    =   AESL_done_delay;
wire    AESL_axi_master_sl1_ready;
wire    AESL_axi_master_sl1_done;
AESL_axi_master_sl1 AESL_AXI_MASTER_sl1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_sl1_AWVALID (sl1_AWVALID),
    .TRAN_sl1_AWREADY (sl1_AWREADY),
    .TRAN_sl1_AWADDR (sl1_AWADDR),
    .TRAN_sl1_AWID (sl1_AWID),
    .TRAN_sl1_AWLEN (sl1_AWLEN),
    .TRAN_sl1_AWSIZE (sl1_AWSIZE),
    .TRAN_sl1_AWBURST (sl1_AWBURST),
    .TRAN_sl1_AWLOCK (sl1_AWLOCK),
    .TRAN_sl1_AWCACHE (sl1_AWCACHE),
    .TRAN_sl1_AWPROT (sl1_AWPROT),
    .TRAN_sl1_AWQOS (sl1_AWQOS),
    .TRAN_sl1_AWREGION (sl1_AWREGION),
    .TRAN_sl1_AWUSER (sl1_AWUSER),
    .TRAN_sl1_WVALID (sl1_WVALID),
    .TRAN_sl1_WREADY (sl1_WREADY),
    .TRAN_sl1_WDATA (sl1_WDATA),
    .TRAN_sl1_WSTRB (sl1_WSTRB),
    .TRAN_sl1_WLAST (sl1_WLAST),
    .TRAN_sl1_WID (sl1_WID),
    .TRAN_sl1_WUSER (sl1_WUSER),
    .TRAN_sl1_ARVALID (sl1_ARVALID),
    .TRAN_sl1_ARREADY (sl1_ARREADY),
    .TRAN_sl1_ARADDR (sl1_ARADDR),
    .TRAN_sl1_ARID (sl1_ARID),
    .TRAN_sl1_ARLEN (sl1_ARLEN),
    .TRAN_sl1_ARSIZE (sl1_ARSIZE),
    .TRAN_sl1_ARBURST (sl1_ARBURST),
    .TRAN_sl1_ARLOCK (sl1_ARLOCK),
    .TRAN_sl1_ARCACHE (sl1_ARCACHE),
    .TRAN_sl1_ARPROT (sl1_ARPROT),
    .TRAN_sl1_ARQOS (sl1_ARQOS),
    .TRAN_sl1_ARREGION (sl1_ARREGION),
    .TRAN_sl1_ARUSER (sl1_ARUSER),
    .TRAN_sl1_RVALID (sl1_RVALID),
    .TRAN_sl1_RREADY (sl1_RREADY),
    .TRAN_sl1_RDATA (sl1_RDATA),
    .TRAN_sl1_RLAST (sl1_RLAST),
    .TRAN_sl1_RID (sl1_RID),
    .TRAN_sl1_RUSER (sl1_RUSER),
    .TRAN_sl1_RRESP (sl1_RRESP),
    .TRAN_sl1_BVALID (sl1_BVALID),
    .TRAN_sl1_BREADY (sl1_BREADY),
    .TRAN_sl1_BRESP (sl1_BRESP),
    .TRAN_sl1_BID (sl1_BID),
    .TRAN_sl1_BUSER (sl1_BUSER),
    .ready (AESL_axi_master_sl1_ready),
    .done  (AESL_axi_master_sl1_done)
);
assign    AESL_axi_master_sl1_ready    =   ready;
assign    AESL_axi_master_sl1_done    =   AESL_done_delay;
wire    AESL_axi_master_sl2_ready;
wire    AESL_axi_master_sl2_done;
AESL_axi_master_sl2 AESL_AXI_MASTER_sl2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_sl2_AWVALID (sl2_AWVALID),
    .TRAN_sl2_AWREADY (sl2_AWREADY),
    .TRAN_sl2_AWADDR (sl2_AWADDR),
    .TRAN_sl2_AWID (sl2_AWID),
    .TRAN_sl2_AWLEN (sl2_AWLEN),
    .TRAN_sl2_AWSIZE (sl2_AWSIZE),
    .TRAN_sl2_AWBURST (sl2_AWBURST),
    .TRAN_sl2_AWLOCK (sl2_AWLOCK),
    .TRAN_sl2_AWCACHE (sl2_AWCACHE),
    .TRAN_sl2_AWPROT (sl2_AWPROT),
    .TRAN_sl2_AWQOS (sl2_AWQOS),
    .TRAN_sl2_AWREGION (sl2_AWREGION),
    .TRAN_sl2_AWUSER (sl2_AWUSER),
    .TRAN_sl2_WVALID (sl2_WVALID),
    .TRAN_sl2_WREADY (sl2_WREADY),
    .TRAN_sl2_WDATA (sl2_WDATA),
    .TRAN_sl2_WSTRB (sl2_WSTRB),
    .TRAN_sl2_WLAST (sl2_WLAST),
    .TRAN_sl2_WID (sl2_WID),
    .TRAN_sl2_WUSER (sl2_WUSER),
    .TRAN_sl2_ARVALID (sl2_ARVALID),
    .TRAN_sl2_ARREADY (sl2_ARREADY),
    .TRAN_sl2_ARADDR (sl2_ARADDR),
    .TRAN_sl2_ARID (sl2_ARID),
    .TRAN_sl2_ARLEN (sl2_ARLEN),
    .TRAN_sl2_ARSIZE (sl2_ARSIZE),
    .TRAN_sl2_ARBURST (sl2_ARBURST),
    .TRAN_sl2_ARLOCK (sl2_ARLOCK),
    .TRAN_sl2_ARCACHE (sl2_ARCACHE),
    .TRAN_sl2_ARPROT (sl2_ARPROT),
    .TRAN_sl2_ARQOS (sl2_ARQOS),
    .TRAN_sl2_ARREGION (sl2_ARREGION),
    .TRAN_sl2_ARUSER (sl2_ARUSER),
    .TRAN_sl2_RVALID (sl2_RVALID),
    .TRAN_sl2_RREADY (sl2_RREADY),
    .TRAN_sl2_RDATA (sl2_RDATA),
    .TRAN_sl2_RLAST (sl2_RLAST),
    .TRAN_sl2_RID (sl2_RID),
    .TRAN_sl2_RUSER (sl2_RUSER),
    .TRAN_sl2_RRESP (sl2_RRESP),
    .TRAN_sl2_BVALID (sl2_BVALID),
    .TRAN_sl2_BREADY (sl2_BREADY),
    .TRAN_sl2_BRESP (sl2_BRESP),
    .TRAN_sl2_BID (sl2_BID),
    .TRAN_sl2_BUSER (sl2_BUSER),
    .ready (AESL_axi_master_sl2_ready),
    .done  (AESL_axi_master_sl2_done)
);
assign    AESL_axi_master_sl2_ready    =   ready;
assign    AESL_axi_master_sl2_done    =   AESL_done_delay;
wire    AESL_axi_master_su0_ready;
wire    AESL_axi_master_su0_done;
AESL_axi_master_su0 AESL_AXI_MASTER_su0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_su0_AWVALID (su0_AWVALID),
    .TRAN_su0_AWREADY (su0_AWREADY),
    .TRAN_su0_AWADDR (su0_AWADDR),
    .TRAN_su0_AWID (su0_AWID),
    .TRAN_su0_AWLEN (su0_AWLEN),
    .TRAN_su0_AWSIZE (su0_AWSIZE),
    .TRAN_su0_AWBURST (su0_AWBURST),
    .TRAN_su0_AWLOCK (su0_AWLOCK),
    .TRAN_su0_AWCACHE (su0_AWCACHE),
    .TRAN_su0_AWPROT (su0_AWPROT),
    .TRAN_su0_AWQOS (su0_AWQOS),
    .TRAN_su0_AWREGION (su0_AWREGION),
    .TRAN_su0_AWUSER (su0_AWUSER),
    .TRAN_su0_WVALID (su0_WVALID),
    .TRAN_su0_WREADY (su0_WREADY),
    .TRAN_su0_WDATA (su0_WDATA),
    .TRAN_su0_WSTRB (su0_WSTRB),
    .TRAN_su0_WLAST (su0_WLAST),
    .TRAN_su0_WID (su0_WID),
    .TRAN_su0_WUSER (su0_WUSER),
    .TRAN_su0_ARVALID (su0_ARVALID),
    .TRAN_su0_ARREADY (su0_ARREADY),
    .TRAN_su0_ARADDR (su0_ARADDR),
    .TRAN_su0_ARID (su0_ARID),
    .TRAN_su0_ARLEN (su0_ARLEN),
    .TRAN_su0_ARSIZE (su0_ARSIZE),
    .TRAN_su0_ARBURST (su0_ARBURST),
    .TRAN_su0_ARLOCK (su0_ARLOCK),
    .TRAN_su0_ARCACHE (su0_ARCACHE),
    .TRAN_su0_ARPROT (su0_ARPROT),
    .TRAN_su0_ARQOS (su0_ARQOS),
    .TRAN_su0_ARREGION (su0_ARREGION),
    .TRAN_su0_ARUSER (su0_ARUSER),
    .TRAN_su0_RVALID (su0_RVALID),
    .TRAN_su0_RREADY (su0_RREADY),
    .TRAN_su0_RDATA (su0_RDATA),
    .TRAN_su0_RLAST (su0_RLAST),
    .TRAN_su0_RID (su0_RID),
    .TRAN_su0_RUSER (su0_RUSER),
    .TRAN_su0_RRESP (su0_RRESP),
    .TRAN_su0_BVALID (su0_BVALID),
    .TRAN_su0_BREADY (su0_BREADY),
    .TRAN_su0_BRESP (su0_BRESP),
    .TRAN_su0_BID (su0_BID),
    .TRAN_su0_BUSER (su0_BUSER),
    .ready (AESL_axi_master_su0_ready),
    .done  (AESL_axi_master_su0_done)
);
assign    AESL_axi_master_su0_ready    =   ready;
assign    AESL_axi_master_su0_done    =   AESL_done_delay;
wire    AESL_axi_master_su1_ready;
wire    AESL_axi_master_su1_done;
AESL_axi_master_su1 AESL_AXI_MASTER_su1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_su1_AWVALID (su1_AWVALID),
    .TRAN_su1_AWREADY (su1_AWREADY),
    .TRAN_su1_AWADDR (su1_AWADDR),
    .TRAN_su1_AWID (su1_AWID),
    .TRAN_su1_AWLEN (su1_AWLEN),
    .TRAN_su1_AWSIZE (su1_AWSIZE),
    .TRAN_su1_AWBURST (su1_AWBURST),
    .TRAN_su1_AWLOCK (su1_AWLOCK),
    .TRAN_su1_AWCACHE (su1_AWCACHE),
    .TRAN_su1_AWPROT (su1_AWPROT),
    .TRAN_su1_AWQOS (su1_AWQOS),
    .TRAN_su1_AWREGION (su1_AWREGION),
    .TRAN_su1_AWUSER (su1_AWUSER),
    .TRAN_su1_WVALID (su1_WVALID),
    .TRAN_su1_WREADY (su1_WREADY),
    .TRAN_su1_WDATA (su1_WDATA),
    .TRAN_su1_WSTRB (su1_WSTRB),
    .TRAN_su1_WLAST (su1_WLAST),
    .TRAN_su1_WID (su1_WID),
    .TRAN_su1_WUSER (su1_WUSER),
    .TRAN_su1_ARVALID (su1_ARVALID),
    .TRAN_su1_ARREADY (su1_ARREADY),
    .TRAN_su1_ARADDR (su1_ARADDR),
    .TRAN_su1_ARID (su1_ARID),
    .TRAN_su1_ARLEN (su1_ARLEN),
    .TRAN_su1_ARSIZE (su1_ARSIZE),
    .TRAN_su1_ARBURST (su1_ARBURST),
    .TRAN_su1_ARLOCK (su1_ARLOCK),
    .TRAN_su1_ARCACHE (su1_ARCACHE),
    .TRAN_su1_ARPROT (su1_ARPROT),
    .TRAN_su1_ARQOS (su1_ARQOS),
    .TRAN_su1_ARREGION (su1_ARREGION),
    .TRAN_su1_ARUSER (su1_ARUSER),
    .TRAN_su1_RVALID (su1_RVALID),
    .TRAN_su1_RREADY (su1_RREADY),
    .TRAN_su1_RDATA (su1_RDATA),
    .TRAN_su1_RLAST (su1_RLAST),
    .TRAN_su1_RID (su1_RID),
    .TRAN_su1_RUSER (su1_RUSER),
    .TRAN_su1_RRESP (su1_RRESP),
    .TRAN_su1_BVALID (su1_BVALID),
    .TRAN_su1_BREADY (su1_BREADY),
    .TRAN_su1_BRESP (su1_BRESP),
    .TRAN_su1_BID (su1_BID),
    .TRAN_su1_BUSER (su1_BUSER),
    .ready (AESL_axi_master_su1_ready),
    .done  (AESL_axi_master_su1_done)
);
assign    AESL_axi_master_su1_ready    =   ready;
assign    AESL_axi_master_su1_done    =   AESL_done_delay;
wire    AESL_axi_master_su2_ready;
wire    AESL_axi_master_su2_done;
AESL_axi_master_su2 AESL_AXI_MASTER_su2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_su2_AWVALID (su2_AWVALID),
    .TRAN_su2_AWREADY (su2_AWREADY),
    .TRAN_su2_AWADDR (su2_AWADDR),
    .TRAN_su2_AWID (su2_AWID),
    .TRAN_su2_AWLEN (su2_AWLEN),
    .TRAN_su2_AWSIZE (su2_AWSIZE),
    .TRAN_su2_AWBURST (su2_AWBURST),
    .TRAN_su2_AWLOCK (su2_AWLOCK),
    .TRAN_su2_AWCACHE (su2_AWCACHE),
    .TRAN_su2_AWPROT (su2_AWPROT),
    .TRAN_su2_AWQOS (su2_AWQOS),
    .TRAN_su2_AWREGION (su2_AWREGION),
    .TRAN_su2_AWUSER (su2_AWUSER),
    .TRAN_su2_WVALID (su2_WVALID),
    .TRAN_su2_WREADY (su2_WREADY),
    .TRAN_su2_WDATA (su2_WDATA),
    .TRAN_su2_WSTRB (su2_WSTRB),
    .TRAN_su2_WLAST (su2_WLAST),
    .TRAN_su2_WID (su2_WID),
    .TRAN_su2_WUSER (su2_WUSER),
    .TRAN_su2_ARVALID (su2_ARVALID),
    .TRAN_su2_ARREADY (su2_ARREADY),
    .TRAN_su2_ARADDR (su2_ARADDR),
    .TRAN_su2_ARID (su2_ARID),
    .TRAN_su2_ARLEN (su2_ARLEN),
    .TRAN_su2_ARSIZE (su2_ARSIZE),
    .TRAN_su2_ARBURST (su2_ARBURST),
    .TRAN_su2_ARLOCK (su2_ARLOCK),
    .TRAN_su2_ARCACHE (su2_ARCACHE),
    .TRAN_su2_ARPROT (su2_ARPROT),
    .TRAN_su2_ARQOS (su2_ARQOS),
    .TRAN_su2_ARREGION (su2_ARREGION),
    .TRAN_su2_ARUSER (su2_ARUSER),
    .TRAN_su2_RVALID (su2_RVALID),
    .TRAN_su2_RREADY (su2_RREADY),
    .TRAN_su2_RDATA (su2_RDATA),
    .TRAN_su2_RLAST (su2_RLAST),
    .TRAN_su2_RID (su2_RID),
    .TRAN_su2_RUSER (su2_RUSER),
    .TRAN_su2_RRESP (su2_RRESP),
    .TRAN_su2_BVALID (su2_BVALID),
    .TRAN_su2_BREADY (su2_BREADY),
    .TRAN_su2_BRESP (su2_BRESP),
    .TRAN_su2_BID (su2_BID),
    .TRAN_su2_BUSER (su2_BUSER),
    .ready (AESL_axi_master_su2_ready),
    .done  (AESL_axi_master_su2_done)
);
assign    AESL_axi_master_su2_ready    =   ready;
assign    AESL_axi_master_su2_done    =   AESL_done_delay;
wire    AESL_axi_master_ss0_ready;
wire    AESL_axi_master_ss0_done;
AESL_axi_master_ss0 AESL_AXI_MASTER_ss0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_ss0_AWVALID (ss0_AWVALID),
    .TRAN_ss0_AWREADY (ss0_AWREADY),
    .TRAN_ss0_AWADDR (ss0_AWADDR),
    .TRAN_ss0_AWID (ss0_AWID),
    .TRAN_ss0_AWLEN (ss0_AWLEN),
    .TRAN_ss0_AWSIZE (ss0_AWSIZE),
    .TRAN_ss0_AWBURST (ss0_AWBURST),
    .TRAN_ss0_AWLOCK (ss0_AWLOCK),
    .TRAN_ss0_AWCACHE (ss0_AWCACHE),
    .TRAN_ss0_AWPROT (ss0_AWPROT),
    .TRAN_ss0_AWQOS (ss0_AWQOS),
    .TRAN_ss0_AWREGION (ss0_AWREGION),
    .TRAN_ss0_AWUSER (ss0_AWUSER),
    .TRAN_ss0_WVALID (ss0_WVALID),
    .TRAN_ss0_WREADY (ss0_WREADY),
    .TRAN_ss0_WDATA (ss0_WDATA),
    .TRAN_ss0_WSTRB (ss0_WSTRB),
    .TRAN_ss0_WLAST (ss0_WLAST),
    .TRAN_ss0_WID (ss0_WID),
    .TRAN_ss0_WUSER (ss0_WUSER),
    .TRAN_ss0_ARVALID (ss0_ARVALID),
    .TRAN_ss0_ARREADY (ss0_ARREADY),
    .TRAN_ss0_ARADDR (ss0_ARADDR),
    .TRAN_ss0_ARID (ss0_ARID),
    .TRAN_ss0_ARLEN (ss0_ARLEN),
    .TRAN_ss0_ARSIZE (ss0_ARSIZE),
    .TRAN_ss0_ARBURST (ss0_ARBURST),
    .TRAN_ss0_ARLOCK (ss0_ARLOCK),
    .TRAN_ss0_ARCACHE (ss0_ARCACHE),
    .TRAN_ss0_ARPROT (ss0_ARPROT),
    .TRAN_ss0_ARQOS (ss0_ARQOS),
    .TRAN_ss0_ARREGION (ss0_ARREGION),
    .TRAN_ss0_ARUSER (ss0_ARUSER),
    .TRAN_ss0_RVALID (ss0_RVALID),
    .TRAN_ss0_RREADY (ss0_RREADY),
    .TRAN_ss0_RDATA (ss0_RDATA),
    .TRAN_ss0_RLAST (ss0_RLAST),
    .TRAN_ss0_RID (ss0_RID),
    .TRAN_ss0_RUSER (ss0_RUSER),
    .TRAN_ss0_RRESP (ss0_RRESP),
    .TRAN_ss0_BVALID (ss0_BVALID),
    .TRAN_ss0_BREADY (ss0_BREADY),
    .TRAN_ss0_BRESP (ss0_BRESP),
    .TRAN_ss0_BID (ss0_BID),
    .TRAN_ss0_BUSER (ss0_BUSER),
    .ready (AESL_axi_master_ss0_ready),
    .done  (AESL_axi_master_ss0_done)
);
assign    AESL_axi_master_ss0_ready    =   ready;
assign    AESL_axi_master_ss0_done    =   AESL_done_delay;
wire    AESL_axi_master_ss1_ready;
wire    AESL_axi_master_ss1_done;
AESL_axi_master_ss1 AESL_AXI_MASTER_ss1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_ss1_AWVALID (ss1_AWVALID),
    .TRAN_ss1_AWREADY (ss1_AWREADY),
    .TRAN_ss1_AWADDR (ss1_AWADDR),
    .TRAN_ss1_AWID (ss1_AWID),
    .TRAN_ss1_AWLEN (ss1_AWLEN),
    .TRAN_ss1_AWSIZE (ss1_AWSIZE),
    .TRAN_ss1_AWBURST (ss1_AWBURST),
    .TRAN_ss1_AWLOCK (ss1_AWLOCK),
    .TRAN_ss1_AWCACHE (ss1_AWCACHE),
    .TRAN_ss1_AWPROT (ss1_AWPROT),
    .TRAN_ss1_AWQOS (ss1_AWQOS),
    .TRAN_ss1_AWREGION (ss1_AWREGION),
    .TRAN_ss1_AWUSER (ss1_AWUSER),
    .TRAN_ss1_WVALID (ss1_WVALID),
    .TRAN_ss1_WREADY (ss1_WREADY),
    .TRAN_ss1_WDATA (ss1_WDATA),
    .TRAN_ss1_WSTRB (ss1_WSTRB),
    .TRAN_ss1_WLAST (ss1_WLAST),
    .TRAN_ss1_WID (ss1_WID),
    .TRAN_ss1_WUSER (ss1_WUSER),
    .TRAN_ss1_ARVALID (ss1_ARVALID),
    .TRAN_ss1_ARREADY (ss1_ARREADY),
    .TRAN_ss1_ARADDR (ss1_ARADDR),
    .TRAN_ss1_ARID (ss1_ARID),
    .TRAN_ss1_ARLEN (ss1_ARLEN),
    .TRAN_ss1_ARSIZE (ss1_ARSIZE),
    .TRAN_ss1_ARBURST (ss1_ARBURST),
    .TRAN_ss1_ARLOCK (ss1_ARLOCK),
    .TRAN_ss1_ARCACHE (ss1_ARCACHE),
    .TRAN_ss1_ARPROT (ss1_ARPROT),
    .TRAN_ss1_ARQOS (ss1_ARQOS),
    .TRAN_ss1_ARREGION (ss1_ARREGION),
    .TRAN_ss1_ARUSER (ss1_ARUSER),
    .TRAN_ss1_RVALID (ss1_RVALID),
    .TRAN_ss1_RREADY (ss1_RREADY),
    .TRAN_ss1_RDATA (ss1_RDATA),
    .TRAN_ss1_RLAST (ss1_RLAST),
    .TRAN_ss1_RID (ss1_RID),
    .TRAN_ss1_RUSER (ss1_RUSER),
    .TRAN_ss1_RRESP (ss1_RRESP),
    .TRAN_ss1_BVALID (ss1_BVALID),
    .TRAN_ss1_BREADY (ss1_BREADY),
    .TRAN_ss1_BRESP (ss1_BRESP),
    .TRAN_ss1_BID (ss1_BID),
    .TRAN_ss1_BUSER (ss1_BUSER),
    .ready (AESL_axi_master_ss1_ready),
    .done  (AESL_axi_master_ss1_done)
);
assign    AESL_axi_master_ss1_ready    =   ready;
assign    AESL_axi_master_ss1_done    =   AESL_done_delay;
wire    AESL_axi_master_ss2_ready;
wire    AESL_axi_master_ss2_done;
AESL_axi_master_ss2 AESL_AXI_MASTER_ss2(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_ss2_AWVALID (ss2_AWVALID),
    .TRAN_ss2_AWREADY (ss2_AWREADY),
    .TRAN_ss2_AWADDR (ss2_AWADDR),
    .TRAN_ss2_AWID (ss2_AWID),
    .TRAN_ss2_AWLEN (ss2_AWLEN),
    .TRAN_ss2_AWSIZE (ss2_AWSIZE),
    .TRAN_ss2_AWBURST (ss2_AWBURST),
    .TRAN_ss2_AWLOCK (ss2_AWLOCK),
    .TRAN_ss2_AWCACHE (ss2_AWCACHE),
    .TRAN_ss2_AWPROT (ss2_AWPROT),
    .TRAN_ss2_AWQOS (ss2_AWQOS),
    .TRAN_ss2_AWREGION (ss2_AWREGION),
    .TRAN_ss2_AWUSER (ss2_AWUSER),
    .TRAN_ss2_WVALID (ss2_WVALID),
    .TRAN_ss2_WREADY (ss2_WREADY),
    .TRAN_ss2_WDATA (ss2_WDATA),
    .TRAN_ss2_WSTRB (ss2_WSTRB),
    .TRAN_ss2_WLAST (ss2_WLAST),
    .TRAN_ss2_WID (ss2_WID),
    .TRAN_ss2_WUSER (ss2_WUSER),
    .TRAN_ss2_ARVALID (ss2_ARVALID),
    .TRAN_ss2_ARREADY (ss2_ARREADY),
    .TRAN_ss2_ARADDR (ss2_ARADDR),
    .TRAN_ss2_ARID (ss2_ARID),
    .TRAN_ss2_ARLEN (ss2_ARLEN),
    .TRAN_ss2_ARSIZE (ss2_ARSIZE),
    .TRAN_ss2_ARBURST (ss2_ARBURST),
    .TRAN_ss2_ARLOCK (ss2_ARLOCK),
    .TRAN_ss2_ARCACHE (ss2_ARCACHE),
    .TRAN_ss2_ARPROT (ss2_ARPROT),
    .TRAN_ss2_ARQOS (ss2_ARQOS),
    .TRAN_ss2_ARREGION (ss2_ARREGION),
    .TRAN_ss2_ARUSER (ss2_ARUSER),
    .TRAN_ss2_RVALID (ss2_RVALID),
    .TRAN_ss2_RREADY (ss2_RREADY),
    .TRAN_ss2_RDATA (ss2_RDATA),
    .TRAN_ss2_RLAST (ss2_RLAST),
    .TRAN_ss2_RID (ss2_RID),
    .TRAN_ss2_RUSER (ss2_RUSER),
    .TRAN_ss2_RRESP (ss2_RRESP),
    .TRAN_ss2_BVALID (ss2_BVALID),
    .TRAN_ss2_BREADY (ss2_BREADY),
    .TRAN_ss2_BRESP (ss2_BRESP),
    .TRAN_ss2_BID (ss2_BID),
    .TRAN_ss2_BUSER (ss2_BUSER),
    .ready (AESL_axi_master_ss2_ready),
    .done  (AESL_axi_master_ss2_done)
);
assign    AESL_axi_master_ss2_ready    =   ready;
assign    AESL_axi_master_ss2_done    =   AESL_done_delay;
wire    AESL_axi_master_sw0_ready;
wire    AESL_axi_master_sw0_done;
AESL_axi_master_sw0 AESL_AXI_MASTER_sw0(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_sw0_AWVALID (sw0_AWVALID),
    .TRAN_sw0_AWREADY (sw0_AWREADY),
    .TRAN_sw0_AWADDR (sw0_AWADDR),
    .TRAN_sw0_AWID (sw0_AWID),
    .TRAN_sw0_AWLEN (sw0_AWLEN),
    .TRAN_sw0_AWSIZE (sw0_AWSIZE),
    .TRAN_sw0_AWBURST (sw0_AWBURST),
    .TRAN_sw0_AWLOCK (sw0_AWLOCK),
    .TRAN_sw0_AWCACHE (sw0_AWCACHE),
    .TRAN_sw0_AWPROT (sw0_AWPROT),
    .TRAN_sw0_AWQOS (sw0_AWQOS),
    .TRAN_sw0_AWREGION (sw0_AWREGION),
    .TRAN_sw0_AWUSER (sw0_AWUSER),
    .TRAN_sw0_WVALID (sw0_WVALID),
    .TRAN_sw0_WREADY (sw0_WREADY),
    .TRAN_sw0_WDATA (sw0_WDATA),
    .TRAN_sw0_WSTRB (sw0_WSTRB),
    .TRAN_sw0_WLAST (sw0_WLAST),
    .TRAN_sw0_WID (sw0_WID),
    .TRAN_sw0_WUSER (sw0_WUSER),
    .TRAN_sw0_ARVALID (sw0_ARVALID),
    .TRAN_sw0_ARREADY (sw0_ARREADY),
    .TRAN_sw0_ARADDR (sw0_ARADDR),
    .TRAN_sw0_ARID (sw0_ARID),
    .TRAN_sw0_ARLEN (sw0_ARLEN),
    .TRAN_sw0_ARSIZE (sw0_ARSIZE),
    .TRAN_sw0_ARBURST (sw0_ARBURST),
    .TRAN_sw0_ARLOCK (sw0_ARLOCK),
    .TRAN_sw0_ARCACHE (sw0_ARCACHE),
    .TRAN_sw0_ARPROT (sw0_ARPROT),
    .TRAN_sw0_ARQOS (sw0_ARQOS),
    .TRAN_sw0_ARREGION (sw0_ARREGION),
    .TRAN_sw0_ARUSER (sw0_ARUSER),
    .TRAN_sw0_RVALID (sw0_RVALID),
    .TRAN_sw0_RREADY (sw0_RREADY),
    .TRAN_sw0_RDATA (sw0_RDATA),
    .TRAN_sw0_RLAST (sw0_RLAST),
    .TRAN_sw0_RID (sw0_RID),
    .TRAN_sw0_RUSER (sw0_RUSER),
    .TRAN_sw0_RRESP (sw0_RRESP),
    .TRAN_sw0_BVALID (sw0_BVALID),
    .TRAN_sw0_BREADY (sw0_BREADY),
    .TRAN_sw0_BRESP (sw0_BRESP),
    .TRAN_sw0_BID (sw0_BID),
    .TRAN_sw0_BUSER (sw0_BUSER),
    .ready (AESL_axi_master_sw0_ready),
    .done  (AESL_axi_master_sw0_done)
);
assign    AESL_axi_master_sw0_ready    =   ready;
assign    AESL_axi_master_sw0_done    =   AESL_done_delay;
wire    AESL_axi_master_sw1_ready;
wire    AESL_axi_master_sw1_done;
AESL_axi_master_sw1 AESL_AXI_MASTER_sw1(
    .clk   (AESL_clock),
    .reset (AESL_reset),
    .TRAN_sw1_AWVALID (sw1_AWVALID),
    .TRAN_sw1_AWREADY (sw1_AWREADY),
    .TRAN_sw1_AWADDR (sw1_AWADDR),
    .TRAN_sw1_AWID (sw1_AWID),
    .TRAN_sw1_AWLEN (sw1_AWLEN),
    .TRAN_sw1_AWSIZE (sw1_AWSIZE),
    .TRAN_sw1_AWBURST (sw1_AWBURST),
    .TRAN_sw1_AWLOCK (sw1_AWLOCK),
    .TRAN_sw1_AWCACHE (sw1_AWCACHE),
    .TRAN_sw1_AWPROT (sw1_AWPROT),
    .TRAN_sw1_AWQOS (sw1_AWQOS),
    .TRAN_sw1_AWREGION (sw1_AWREGION),
    .TRAN_sw1_AWUSER (sw1_AWUSER),
    .TRAN_sw1_WVALID (sw1_WVALID),
    .TRAN_sw1_WREADY (sw1_WREADY),
    .TRAN_sw1_WDATA (sw1_WDATA),
    .TRAN_sw1_WSTRB (sw1_WSTRB),
    .TRAN_sw1_WLAST (sw1_WLAST),
    .TRAN_sw1_WID (sw1_WID),
    .TRAN_sw1_WUSER (sw1_WUSER),
    .TRAN_sw1_ARVALID (sw1_ARVALID),
    .TRAN_sw1_ARREADY (sw1_ARREADY),
    .TRAN_sw1_ARADDR (sw1_ARADDR),
    .TRAN_sw1_ARID (sw1_ARID),
    .TRAN_sw1_ARLEN (sw1_ARLEN),
    .TRAN_sw1_ARSIZE (sw1_ARSIZE),
    .TRAN_sw1_ARBURST (sw1_ARBURST),
    .TRAN_sw1_ARLOCK (sw1_ARLOCK),
    .TRAN_sw1_ARCACHE (sw1_ARCACHE),
    .TRAN_sw1_ARPROT (sw1_ARPROT),
    .TRAN_sw1_ARQOS (sw1_ARQOS),
    .TRAN_sw1_ARREGION (sw1_ARREGION),
    .TRAN_sw1_ARUSER (sw1_ARUSER),
    .TRAN_sw1_RVALID (sw1_RVALID),
    .TRAN_sw1_RREADY (sw1_RREADY),
    .TRAN_sw1_RDATA (sw1_RDATA),
    .TRAN_sw1_RLAST (sw1_RLAST),
    .TRAN_sw1_RID (sw1_RID),
    .TRAN_sw1_RUSER (sw1_RUSER),
    .TRAN_sw1_RRESP (sw1_RRESP),
    .TRAN_sw1_BVALID (sw1_BVALID),
    .TRAN_sw1_BREADY (sw1_BREADY),
    .TRAN_sw1_BRESP (sw1_BRESP),
    .TRAN_sw1_BID (sw1_BID),
    .TRAN_sw1_BUSER (sw1_BUSER),
    .ready (AESL_axi_master_sw1_ready),
    .done  (AESL_axi_master_sw1_done)
);
assign    AESL_axi_master_sw1_ready    =   ready;
assign    AESL_axi_master_sw1_done    =   AESL_done_delay;

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


reg end_sa0;
reg [31:0] size_sa0;
reg [31:0] size_sa0_backup;
reg end_sa1;
reg [31:0] size_sa1;
reg [31:0] size_sa1_backup;
reg end_sa2;
reg [31:0] size_sa2;
reg [31:0] size_sa2_backup;
reg end_sl0;
reg [31:0] size_sl0;
reg [31:0] size_sl0_backup;
reg end_sl1;
reg [31:0] size_sl1;
reg [31:0] size_sl1_backup;
reg end_sl2;
reg [31:0] size_sl2;
reg [31:0] size_sl2_backup;
reg end_su0;
reg [31:0] size_su0;
reg [31:0] size_su0_backup;
reg end_su1;
reg [31:0] size_su1;
reg [31:0] size_su1_backup;
reg end_su2;
reg [31:0] size_su2;
reg [31:0] size_su2_backup;
reg end_ss0;
reg [31:0] size_ss0;
reg [31:0] size_ss0_backup;
reg end_ss1;
reg [31:0] size_ss1;
reg [31:0] size_ss1_backup;
reg end_sw0;
reg [31:0] size_sw0;
reg [31:0] size_sw0_backup;
reg end_sw1;
reg [31:0] size_sw1;
reg [31:0] size_sw1_backup;
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
reg end_s_ptr;
reg [31:0] size_s_ptr;
reg [31:0] size_s_ptr_backup;
reg end_s_idx;
reg [31:0] size_s_idx;
reg [31:0] size_s_idx_backup;
reg end_s_val;
reg [31:0] size_s_val;
reg [31:0] size_s_val_backup;
reg end_work;
reg [31:0] size_work;
reg [31:0] size_work_backup;
reg end_mark;
reg [31:0] size_mark;
reg [31:0] size_mark_backup;
reg end_rows;
reg [31:0] size_rows;
reg [31:0] size_rows_backup;
reg end_ss2;
reg [31:0] size_ss2;
reg [31:0] size_ss2_backup;
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

reg dump_tvout_finish_ss2;

initial begin : dump_tvout_runtime_sign_ss2
    integer fp;
    dump_tvout_finish_ss2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_ss2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ss2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_ss2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_ss2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_ss2 = 1;
end


reg dump_tvout_finish_sw0;

initial begin : dump_tvout_runtime_sign_sw0
    integer fp;
    dump_tvout_finish_sw0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_sw0_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_sw0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_sw0_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_sw0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_sw0 = 1;
end


reg dump_tvout_finish_sw1;

initial begin : dump_tvout_runtime_sign_sw1
    integer fp;
    dump_tvout_finish_sw1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_sw1_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_sw1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_sw1_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_sw1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_sw1 = 1;
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
