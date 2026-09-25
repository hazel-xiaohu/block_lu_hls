// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_control (
    clk,
    reset,
    TRAN_s_axi_control_AWADDR,
    TRAN_s_axi_control_AWVALID,
    TRAN_s_axi_control_AWREADY,
    TRAN_s_axi_control_WVALID,
    TRAN_s_axi_control_WREADY,
    TRAN_s_axi_control_WDATA,
    TRAN_s_axi_control_WSTRB,
    TRAN_s_axi_control_ARADDR,
    TRAN_s_axi_control_ARVALID,
    TRAN_s_axi_control_ARREADY,
    TRAN_s_axi_control_RVALID,
    TRAN_s_axi_control_RREADY,
    TRAN_s_axi_control_RDATA,
    TRAN_s_axi_control_RRESP,
    TRAN_s_axi_control_BVALID,
    TRAN_s_axi_control_BREADY,
    TRAN_s_axi_control_BRESP,
    TRAN_control_write_data_finish,
    TRAN_control_start_in,
    TRAN_control_idle_in,
    TRAN_control_ready_in,
    TRAN_control_done_in,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_A_rcsr "../tv/cdatafile/c.spmm.autotvin_A_rcsr.dat"
`define TV_IN_A_cid "../tv/cdatafile/c.spmm.autotvin_A_cid.dat"
`define TV_IN_A_val "../tv/cdatafile/c.spmm.autotvin_A_val.dat"
`define TV_IN_B_rcsr1 "../tv/cdatafile/c.spmm.autotvin_B_rcsr1.dat"
`define TV_IN_B_rcsr2 "../tv/cdatafile/c.spmm.autotvin_B_rcsr2.dat"
`define TV_IN_B_rcsr3 "../tv/cdatafile/c.spmm.autotvin_B_rcsr3.dat"
`define TV_IN_B_rcsr4 "../tv/cdatafile/c.spmm.autotvin_B_rcsr4.dat"
`define TV_IN_B_val1 "../tv/cdatafile/c.spmm.autotvin_B_val1.dat"
`define TV_IN_B_cid1 "../tv/cdatafile/c.spmm.autotvin_B_cid1.dat"
`define TV_IN_B_val2 "../tv/cdatafile/c.spmm.autotvin_B_val2.dat"
`define TV_IN_B_cid2 "../tv/cdatafile/c.spmm.autotvin_B_cid2.dat"
`define TV_IN_B_val3 "../tv/cdatafile/c.spmm.autotvin_B_val3.dat"
`define TV_IN_B_cid3 "../tv/cdatafile/c.spmm.autotvin_B_cid3.dat"
`define TV_IN_B_val4 "../tv/cdatafile/c.spmm.autotvin_B_val4.dat"
`define TV_IN_B_cid4 "../tv/cdatafile/c.spmm.autotvin_B_cid4.dat"
`define TV_IN_B_val_port1 "../tv/cdatafile/c.spmm.autotvin_B_val_port1.dat"
`define TV_IN_B_cid_port1 "../tv/cdatafile/c.spmm.autotvin_B_cid_port1.dat"
`define TV_IN_B_val_port2 "../tv/cdatafile/c.spmm.autotvin_B_val_port2.dat"
`define TV_IN_B_cid_port2 "../tv/cdatafile/c.spmm.autotvin_B_cid_port2.dat"
`define TV_IN_B_val_port3 "../tv/cdatafile/c.spmm.autotvin_B_val_port3.dat"
`define TV_IN_B_cid_port3 "../tv/cdatafile/c.spmm.autotvin_B_cid_port3.dat"
`define TV_IN_B_val_port4 "../tv/cdatafile/c.spmm.autotvin_B_val_port4.dat"
`define TV_IN_B_cid_port4 "../tv/cdatafile/c.spmm.autotvin_B_cid_port4.dat"
`define TV_IN_C_rcsr "../tv/cdatafile/c.spmm.autotvin_C_rcsr.dat"
`define TV_IN_C_cid "../tv/cdatafile/c.spmm.autotvin_C_cid.dat"
`define TV_IN_C_val "../tv/cdatafile/c.spmm.autotvin_C_val.dat"
parameter ADDR_WIDTH = 9;
parameter DATA_WIDTH = 32;
parameter A_rcsr_DEPTH = 1;
reg [31 : 0] A_rcsr_OPERATE_DEPTH = 0;
parameter A_rcsr_c_bitwidth = 64;
parameter A_cid_DEPTH = 1;
reg [31 : 0] A_cid_OPERATE_DEPTH = 0;
parameter A_cid_c_bitwidth = 64;
parameter A_val_DEPTH = 1;
reg [31 : 0] A_val_OPERATE_DEPTH = 0;
parameter A_val_c_bitwidth = 64;
parameter B_rcsr1_DEPTH = 1;
reg [31 : 0] B_rcsr1_OPERATE_DEPTH = 0;
parameter B_rcsr1_c_bitwidth = 64;
parameter B_rcsr2_DEPTH = 1;
reg [31 : 0] B_rcsr2_OPERATE_DEPTH = 0;
parameter B_rcsr2_c_bitwidth = 64;
parameter B_rcsr3_DEPTH = 1;
reg [31 : 0] B_rcsr3_OPERATE_DEPTH = 0;
parameter B_rcsr3_c_bitwidth = 64;
parameter B_rcsr4_DEPTH = 1;
reg [31 : 0] B_rcsr4_OPERATE_DEPTH = 0;
parameter B_rcsr4_c_bitwidth = 64;
parameter B_val1_DEPTH = 1;
reg [31 : 0] B_val1_OPERATE_DEPTH = 0;
parameter B_val1_c_bitwidth = 64;
parameter B_cid1_DEPTH = 1;
reg [31 : 0] B_cid1_OPERATE_DEPTH = 0;
parameter B_cid1_c_bitwidth = 64;
parameter B_val2_DEPTH = 1;
reg [31 : 0] B_val2_OPERATE_DEPTH = 0;
parameter B_val2_c_bitwidth = 64;
parameter B_cid2_DEPTH = 1;
reg [31 : 0] B_cid2_OPERATE_DEPTH = 0;
parameter B_cid2_c_bitwidth = 64;
parameter B_val3_DEPTH = 1;
reg [31 : 0] B_val3_OPERATE_DEPTH = 0;
parameter B_val3_c_bitwidth = 64;
parameter B_cid3_DEPTH = 1;
reg [31 : 0] B_cid3_OPERATE_DEPTH = 0;
parameter B_cid3_c_bitwidth = 64;
parameter B_val4_DEPTH = 1;
reg [31 : 0] B_val4_OPERATE_DEPTH = 0;
parameter B_val4_c_bitwidth = 64;
parameter B_cid4_DEPTH = 1;
reg [31 : 0] B_cid4_OPERATE_DEPTH = 0;
parameter B_cid4_c_bitwidth = 64;
parameter B_val_port1_DEPTH = 1;
reg [31 : 0] B_val_port1_OPERATE_DEPTH = 0;
parameter B_val_port1_c_bitwidth = 64;
parameter B_cid_port1_DEPTH = 1;
reg [31 : 0] B_cid_port1_OPERATE_DEPTH = 0;
parameter B_cid_port1_c_bitwidth = 64;
parameter B_val_port2_DEPTH = 1;
reg [31 : 0] B_val_port2_OPERATE_DEPTH = 0;
parameter B_val_port2_c_bitwidth = 64;
parameter B_cid_port2_DEPTH = 1;
reg [31 : 0] B_cid_port2_OPERATE_DEPTH = 0;
parameter B_cid_port2_c_bitwidth = 64;
parameter B_val_port3_DEPTH = 1;
reg [31 : 0] B_val_port3_OPERATE_DEPTH = 0;
parameter B_val_port3_c_bitwidth = 64;
parameter B_cid_port3_DEPTH = 1;
reg [31 : 0] B_cid_port3_OPERATE_DEPTH = 0;
parameter B_cid_port3_c_bitwidth = 64;
parameter B_val_port4_DEPTH = 1;
reg [31 : 0] B_val_port4_OPERATE_DEPTH = 0;
parameter B_val_port4_c_bitwidth = 64;
parameter B_cid_port4_DEPTH = 1;
reg [31 : 0] B_cid_port4_OPERATE_DEPTH = 0;
parameter B_cid_port4_c_bitwidth = 64;
parameter C_rcsr_DEPTH = 1;
reg [31 : 0] C_rcsr_OPERATE_DEPTH = 0;
parameter C_rcsr_c_bitwidth = 64;
parameter C_cid_DEPTH = 1;
reg [31 : 0] C_cid_OPERATE_DEPTH = 0;
parameter C_cid_c_bitwidth = 64;
parameter C_val_DEPTH = 1;
reg [31 : 0] C_val_OPERATE_DEPTH = 0;
parameter C_val_c_bitwidth = 64;
parameter A_rcsr_data_in_addr = 16;
parameter A_cid_data_in_addr = 28;
parameter A_val_data_in_addr = 40;
parameter B_rcsr1_data_in_addr = 52;
parameter B_rcsr2_data_in_addr = 64;
parameter B_rcsr3_data_in_addr = 76;
parameter B_rcsr4_data_in_addr = 88;
parameter B_val1_data_in_addr = 100;
parameter B_cid1_data_in_addr = 112;
parameter B_val2_data_in_addr = 124;
parameter B_cid2_data_in_addr = 136;
parameter B_val3_data_in_addr = 148;
parameter B_cid3_data_in_addr = 160;
parameter B_val4_data_in_addr = 172;
parameter B_cid4_data_in_addr = 184;
parameter B_val_port1_data_in_addr = 196;
parameter B_cid_port1_data_in_addr = 208;
parameter B_val_port2_data_in_addr = 220;
parameter B_cid_port2_data_in_addr = 232;
parameter B_val_port3_data_in_addr = 244;
parameter B_cid_port3_data_in_addr = 256;
parameter B_val_port4_data_in_addr = 268;
parameter B_cid_port4_data_in_addr = 280;
parameter C_rcsr_data_in_addr = 292;
parameter C_cid_data_in_addr = 304;
parameter C_val_data_in_addr = 316;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_AWADDR;
output  TRAN_s_axi_control_AWVALID;
input  TRAN_s_axi_control_AWREADY;
output  TRAN_s_axi_control_WVALID;
input  TRAN_s_axi_control_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_control_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_ARADDR;
output  TRAN_s_axi_control_ARVALID;
input  TRAN_s_axi_control_ARREADY;
input  TRAN_s_axi_control_RVALID;
output  TRAN_s_axi_control_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_RDATA;
input [2 - 1 : 0] TRAN_s_axi_control_RRESP;
input  TRAN_s_axi_control_BVALID;
output  TRAN_s_axi_control_BREADY;
input [2 - 1 : 0] TRAN_s_axi_control_BRESP;
output TRAN_control_write_data_finish;
input     clk;
input     reset;
input     TRAN_control_start_in;
input     TRAN_control_done_in;
input     TRAN_control_ready_in;
input     TRAN_control_idle_in;
input     TRAN_control_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [A_rcsr_c_bitwidth - 1 : 0] mem_A_rcsr [A_rcsr_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_A_rcsr [ (A_rcsr_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * A_rcsr_DEPTH -1 : 0] = '{default : 'hz};
reg A_rcsr_write_data_finish;
reg [A_cid_c_bitwidth - 1 : 0] mem_A_cid [A_cid_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_A_cid [ (A_cid_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * A_cid_DEPTH -1 : 0] = '{default : 'hz};
reg A_cid_write_data_finish;
reg [A_val_c_bitwidth - 1 : 0] mem_A_val [A_val_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_A_val [ (A_val_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * A_val_DEPTH -1 : 0] = '{default : 'hz};
reg A_val_write_data_finish;
reg [B_rcsr1_c_bitwidth - 1 : 0] mem_B_rcsr1 [B_rcsr1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_rcsr1 [ (B_rcsr1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_rcsr1_DEPTH -1 : 0] = '{default : 'hz};
reg B_rcsr1_write_data_finish;
reg [B_rcsr2_c_bitwidth - 1 : 0] mem_B_rcsr2 [B_rcsr2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_rcsr2 [ (B_rcsr2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_rcsr2_DEPTH -1 : 0] = '{default : 'hz};
reg B_rcsr2_write_data_finish;
reg [B_rcsr3_c_bitwidth - 1 : 0] mem_B_rcsr3 [B_rcsr3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_rcsr3 [ (B_rcsr3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_rcsr3_DEPTH -1 : 0] = '{default : 'hz};
reg B_rcsr3_write_data_finish;
reg [B_rcsr4_c_bitwidth - 1 : 0] mem_B_rcsr4 [B_rcsr4_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_rcsr4 [ (B_rcsr4_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_rcsr4_DEPTH -1 : 0] = '{default : 'hz};
reg B_rcsr4_write_data_finish;
reg [B_val1_c_bitwidth - 1 : 0] mem_B_val1 [B_val1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_val1 [ (B_val1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_val1_DEPTH -1 : 0] = '{default : 'hz};
reg B_val1_write_data_finish;
reg [B_cid1_c_bitwidth - 1 : 0] mem_B_cid1 [B_cid1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_cid1 [ (B_cid1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_cid1_DEPTH -1 : 0] = '{default : 'hz};
reg B_cid1_write_data_finish;
reg [B_val2_c_bitwidth - 1 : 0] mem_B_val2 [B_val2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_val2 [ (B_val2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_val2_DEPTH -1 : 0] = '{default : 'hz};
reg B_val2_write_data_finish;
reg [B_cid2_c_bitwidth - 1 : 0] mem_B_cid2 [B_cid2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_cid2 [ (B_cid2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_cid2_DEPTH -1 : 0] = '{default : 'hz};
reg B_cid2_write_data_finish;
reg [B_val3_c_bitwidth - 1 : 0] mem_B_val3 [B_val3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_val3 [ (B_val3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_val3_DEPTH -1 : 0] = '{default : 'hz};
reg B_val3_write_data_finish;
reg [B_cid3_c_bitwidth - 1 : 0] mem_B_cid3 [B_cid3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_cid3 [ (B_cid3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_cid3_DEPTH -1 : 0] = '{default : 'hz};
reg B_cid3_write_data_finish;
reg [B_val4_c_bitwidth - 1 : 0] mem_B_val4 [B_val4_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_val4 [ (B_val4_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_val4_DEPTH -1 : 0] = '{default : 'hz};
reg B_val4_write_data_finish;
reg [B_cid4_c_bitwidth - 1 : 0] mem_B_cid4 [B_cid4_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_cid4 [ (B_cid4_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_cid4_DEPTH -1 : 0] = '{default : 'hz};
reg B_cid4_write_data_finish;
reg [B_val_port1_c_bitwidth - 1 : 0] mem_B_val_port1 [B_val_port1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_val_port1 [ (B_val_port1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_val_port1_DEPTH -1 : 0] = '{default : 'hz};
reg B_val_port1_write_data_finish;
reg [B_cid_port1_c_bitwidth - 1 : 0] mem_B_cid_port1 [B_cid_port1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_cid_port1 [ (B_cid_port1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_cid_port1_DEPTH -1 : 0] = '{default : 'hz};
reg B_cid_port1_write_data_finish;
reg [B_val_port2_c_bitwidth - 1 : 0] mem_B_val_port2 [B_val_port2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_val_port2 [ (B_val_port2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_val_port2_DEPTH -1 : 0] = '{default : 'hz};
reg B_val_port2_write_data_finish;
reg [B_cid_port2_c_bitwidth - 1 : 0] mem_B_cid_port2 [B_cid_port2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_cid_port2 [ (B_cid_port2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_cid_port2_DEPTH -1 : 0] = '{default : 'hz};
reg B_cid_port2_write_data_finish;
reg [B_val_port3_c_bitwidth - 1 : 0] mem_B_val_port3 [B_val_port3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_val_port3 [ (B_val_port3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_val_port3_DEPTH -1 : 0] = '{default : 'hz};
reg B_val_port3_write_data_finish;
reg [B_cid_port3_c_bitwidth - 1 : 0] mem_B_cid_port3 [B_cid_port3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_cid_port3 [ (B_cid_port3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_cid_port3_DEPTH -1 : 0] = '{default : 'hz};
reg B_cid_port3_write_data_finish;
reg [B_val_port4_c_bitwidth - 1 : 0] mem_B_val_port4 [B_val_port4_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_val_port4 [ (B_val_port4_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_val_port4_DEPTH -1 : 0] = '{default : 'hz};
reg B_val_port4_write_data_finish;
reg [B_cid_port4_c_bitwidth - 1 : 0] mem_B_cid_port4 [B_cid_port4_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_cid_port4 [ (B_cid_port4_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_cid_port4_DEPTH -1 : 0] = '{default : 'hz};
reg B_cid_port4_write_data_finish;
reg [C_rcsr_c_bitwidth - 1 : 0] mem_C_rcsr [C_rcsr_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_C_rcsr [ (C_rcsr_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * C_rcsr_DEPTH -1 : 0] = '{default : 'hz};
reg C_rcsr_write_data_finish;
reg [C_cid_c_bitwidth - 1 : 0] mem_C_cid [C_cid_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_C_cid [ (C_cid_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * C_cid_DEPTH -1 : 0] = '{default : 'hz};
reg C_cid_write_data_finish;
reg [C_val_c_bitwidth - 1 : 0] mem_C_val [C_val_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_C_val [ (C_val_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * C_val_DEPTH -1 : 0] = '{default : 'hz};
reg C_val_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
reg process_8_finish = 0;
reg process_9_finish = 0;
reg process_10_finish = 0;
reg process_11_finish = 0;
reg process_12_finish = 0;
reg process_13_finish = 0;
reg process_14_finish = 0;
reg process_15_finish = 0;
reg process_16_finish = 0;
reg process_17_finish = 0;
reg process_18_finish = 0;
reg process_19_finish = 0;
reg process_20_finish = 0;
reg process_21_finish = 0;
reg process_22_finish = 0;
reg process_23_finish = 0;
reg process_24_finish = 0;
reg process_25_finish = 0;
//write A_rcsr reg
reg [31 : 0] write_A_rcsr_count = 0;
reg write_A_rcsr_run_flag = 0;
reg write_one_A_rcsr_data_done = 0;
//write A_cid reg
reg [31 : 0] write_A_cid_count = 0;
reg write_A_cid_run_flag = 0;
reg write_one_A_cid_data_done = 0;
//write A_val reg
reg [31 : 0] write_A_val_count = 0;
reg write_A_val_run_flag = 0;
reg write_one_A_val_data_done = 0;
//write B_rcsr1 reg
reg [31 : 0] write_B_rcsr1_count = 0;
reg write_B_rcsr1_run_flag = 0;
reg write_one_B_rcsr1_data_done = 0;
//write B_rcsr2 reg
reg [31 : 0] write_B_rcsr2_count = 0;
reg write_B_rcsr2_run_flag = 0;
reg write_one_B_rcsr2_data_done = 0;
//write B_rcsr3 reg
reg [31 : 0] write_B_rcsr3_count = 0;
reg write_B_rcsr3_run_flag = 0;
reg write_one_B_rcsr3_data_done = 0;
//write B_rcsr4 reg
reg [31 : 0] write_B_rcsr4_count = 0;
reg write_B_rcsr4_run_flag = 0;
reg write_one_B_rcsr4_data_done = 0;
//write B_val1 reg
reg [31 : 0] write_B_val1_count = 0;
reg write_B_val1_run_flag = 0;
reg write_one_B_val1_data_done = 0;
//write B_cid1 reg
reg [31 : 0] write_B_cid1_count = 0;
reg write_B_cid1_run_flag = 0;
reg write_one_B_cid1_data_done = 0;
//write B_val2 reg
reg [31 : 0] write_B_val2_count = 0;
reg write_B_val2_run_flag = 0;
reg write_one_B_val2_data_done = 0;
//write B_cid2 reg
reg [31 : 0] write_B_cid2_count = 0;
reg write_B_cid2_run_flag = 0;
reg write_one_B_cid2_data_done = 0;
//write B_val3 reg
reg [31 : 0] write_B_val3_count = 0;
reg write_B_val3_run_flag = 0;
reg write_one_B_val3_data_done = 0;
//write B_cid3 reg
reg [31 : 0] write_B_cid3_count = 0;
reg write_B_cid3_run_flag = 0;
reg write_one_B_cid3_data_done = 0;
//write B_val4 reg
reg [31 : 0] write_B_val4_count = 0;
reg write_B_val4_run_flag = 0;
reg write_one_B_val4_data_done = 0;
//write B_cid4 reg
reg [31 : 0] write_B_cid4_count = 0;
reg write_B_cid4_run_flag = 0;
reg write_one_B_cid4_data_done = 0;
//write B_val_port1 reg
reg [31 : 0] write_B_val_port1_count = 0;
reg write_B_val_port1_run_flag = 0;
reg write_one_B_val_port1_data_done = 0;
//write B_cid_port1 reg
reg [31 : 0] write_B_cid_port1_count = 0;
reg write_B_cid_port1_run_flag = 0;
reg write_one_B_cid_port1_data_done = 0;
//write B_val_port2 reg
reg [31 : 0] write_B_val_port2_count = 0;
reg write_B_val_port2_run_flag = 0;
reg write_one_B_val_port2_data_done = 0;
//write B_cid_port2 reg
reg [31 : 0] write_B_cid_port2_count = 0;
reg write_B_cid_port2_run_flag = 0;
reg write_one_B_cid_port2_data_done = 0;
//write B_val_port3 reg
reg [31 : 0] write_B_val_port3_count = 0;
reg write_B_val_port3_run_flag = 0;
reg write_one_B_val_port3_data_done = 0;
//write B_cid_port3 reg
reg [31 : 0] write_B_cid_port3_count = 0;
reg write_B_cid_port3_run_flag = 0;
reg write_one_B_cid_port3_data_done = 0;
//write B_val_port4 reg
reg [31 : 0] write_B_val_port4_count = 0;
reg write_B_val_port4_run_flag = 0;
reg write_one_B_val_port4_data_done = 0;
//write B_cid_port4 reg
reg [31 : 0] write_B_cid_port4_count = 0;
reg write_B_cid_port4_run_flag = 0;
reg write_one_B_cid_port4_data_done = 0;
//write C_rcsr reg
reg [31 : 0] write_C_rcsr_count = 0;
reg write_C_rcsr_run_flag = 0;
reg write_one_C_rcsr_data_done = 0;
//write C_cid reg
reg [31 : 0] write_C_cid_count = 0;
reg write_C_cid_run_flag = 0;
reg write_one_C_cid_data_done = 0;
//write C_val reg
reg [31 : 0] write_C_val_count = 0;
reg write_C_val_run_flag = 0;
reg write_one_C_val_data_done = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_control_AWADDR = AWADDR_reg;
assign TRAN_s_axi_control_AWVALID = AWVALID_reg;
assign TRAN_s_axi_control_WVALID = WVALID_reg;
assign TRAN_s_axi_control_WDATA = WDATA_reg;
assign TRAN_s_axi_control_WSTRB = WSTRB_reg;
assign TRAN_s_axi_control_ARADDR = ARADDR_reg;
assign TRAN_s_axi_control_ARVALID = ARVALID_reg;
assign TRAN_s_axi_control_RREADY = RREADY_reg;
assign TRAN_s_axi_control_BREADY = BREADY_reg;
assign TRAN_control_write_data_finish = 1 & A_rcsr_write_data_finish & A_cid_write_data_finish & A_val_write_data_finish & B_rcsr1_write_data_finish & B_rcsr2_write_data_finish & B_rcsr3_write_data_finish & B_rcsr4_write_data_finish & B_val1_write_data_finish & B_cid1_write_data_finish & B_val2_write_data_finish & B_cid2_write_data_finish & B_val3_write_data_finish & B_cid3_write_data_finish & B_val4_write_data_finish & B_cid4_write_data_finish & B_val_port1_write_data_finish & B_cid_port1_write_data_finish & B_val_port2_write_data_finish & B_cid_port2_write_data_finish & B_val_port3_write_data_finish & B_cid_port3_write_data_finish & B_val_port4_write_data_finish & B_cid_port4_write_data_finish & C_rcsr_write_data_finish & C_cid_write_data_finish & C_val_write_data_finish;
always @(TRAN_control_done_in) 
begin
    AESL_done_index_reg <= TRAN_control_done_in;
end
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish or process_8_finish or process_9_finish or process_10_finish or process_11_finish or process_12_finish or process_13_finish or process_14_finish or process_15_finish or process_16_finish or process_17_finish or process_18_finish or process_19_finish or process_20_finish or process_21_finish or process_22_finish or process_23_finish or process_24_finish or process_25_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 8 && process_8_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 9 && process_9_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 10 && process_10_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 11 && process_11_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 12 && process_12_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 13 && process_13_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 14 && process_14_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 15 && process_15_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 16 && process_16_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 17 && process_17_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 18 && process_18_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 19 && process_19_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 20 && process_20_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 21 && process_21_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 22 && process_22_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 23 && process_23_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 24 && process_24_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 25 && process_25_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 1024; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_control_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_control_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_control_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_control_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_control_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_control_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_control_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_control_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        A_rcsr_write_data_finish <= 0;
        write_A_rcsr_run_flag <= 0; 
        write_A_rcsr_count = 0;
        count_operate_depth_by_bitwidth_and_depth (A_rcsr_c_bitwidth, A_rcsr_DEPTH, A_rcsr_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            A_rcsr_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_A_rcsr_run_flag <= 1; 
            write_A_rcsr_count = 0;
        end
        if (write_one_A_rcsr_data_done === 1) begin
            write_A_rcsr_count = write_A_rcsr_count + 1;
            if (write_A_rcsr_count == A_rcsr_OPERATE_DEPTH) begin
                write_A_rcsr_run_flag <= 0; 
                A_rcsr_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_A_rcsr
    integer write_A_rcsr_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] A_rcsr_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_rcsr_c_bitwidth;
    process_num = 0;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_0_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_A_rcsr_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write A_rcsr data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (A_rcsr_c_bitwidth < 32) begin
                        A_rcsr_data_tmp_reg = mem_A_rcsr[write_A_rcsr_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < A_rcsr_c_bitwidth) begin
                                A_rcsr_data_tmp_reg[j] = mem_A_rcsr[write_A_rcsr_count][i*32 + j];
                            end
                            else begin
                                A_rcsr_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_A_rcsr[write_A_rcsr_count * four_byte_num  + i]!==A_rcsr_data_tmp_reg) begin
                    write (A_rcsr_data_in_addr + write_A_rcsr_count * four_byte_num * 4 + i * 4, A_rcsr_data_tmp_reg, write_A_rcsr_resp);
                    image_mem_A_rcsr[write_A_rcsr_count * four_byte_num + i]=A_rcsr_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_A_rcsr_data_done <= 1;
                @(posedge clk);
                write_one_A_rcsr_data_done <= 0;
            end   
            process_0_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        A_cid_write_data_finish <= 0;
        write_A_cid_run_flag <= 0; 
        write_A_cid_count = 0;
        count_operate_depth_by_bitwidth_and_depth (A_cid_c_bitwidth, A_cid_DEPTH, A_cid_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            A_cid_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_A_cid_run_flag <= 1; 
            write_A_cid_count = 0;
        end
        if (write_one_A_cid_data_done === 1) begin
            write_A_cid_count = write_A_cid_count + 1;
            if (write_A_cid_count == A_cid_OPERATE_DEPTH) begin
                write_A_cid_run_flag <= 0; 
                A_cid_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_A_cid
    integer write_A_cid_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] A_cid_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_cid_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_A_cid_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write A_cid data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (A_cid_c_bitwidth < 32) begin
                        A_cid_data_tmp_reg = mem_A_cid[write_A_cid_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < A_cid_c_bitwidth) begin
                                A_cid_data_tmp_reg[j] = mem_A_cid[write_A_cid_count][i*32 + j];
                            end
                            else begin
                                A_cid_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_A_cid[write_A_cid_count * four_byte_num  + i]!==A_cid_data_tmp_reg) begin
                    write (A_cid_data_in_addr + write_A_cid_count * four_byte_num * 4 + i * 4, A_cid_data_tmp_reg, write_A_cid_resp);
                    image_mem_A_cid[write_A_cid_count * four_byte_num + i]=A_cid_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_A_cid_data_done <= 1;
                @(posedge clk);
                write_one_A_cid_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        A_val_write_data_finish <= 0;
        write_A_val_run_flag <= 0; 
        write_A_val_count = 0;
        count_operate_depth_by_bitwidth_and_depth (A_val_c_bitwidth, A_val_DEPTH, A_val_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            A_val_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_A_val_run_flag <= 1; 
            write_A_val_count = 0;
        end
        if (write_one_A_val_data_done === 1) begin
            write_A_val_count = write_A_val_count + 1;
            if (write_A_val_count == A_val_OPERATE_DEPTH) begin
                write_A_val_run_flag <= 0; 
                A_val_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_A_val
    integer write_A_val_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] A_val_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = A_val_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_A_val_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write A_val data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (A_val_c_bitwidth < 32) begin
                        A_val_data_tmp_reg = mem_A_val[write_A_val_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < A_val_c_bitwidth) begin
                                A_val_data_tmp_reg[j] = mem_A_val[write_A_val_count][i*32 + j];
                            end
                            else begin
                                A_val_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_A_val[write_A_val_count * four_byte_num  + i]!==A_val_data_tmp_reg) begin
                    write (A_val_data_in_addr + write_A_val_count * four_byte_num * 4 + i * 4, A_val_data_tmp_reg, write_A_val_resp);
                    image_mem_A_val[write_A_val_count * four_byte_num + i]=A_val_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_A_val_data_done <= 1;
                @(posedge clk);
                write_one_A_val_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_rcsr1_write_data_finish <= 0;
        write_B_rcsr1_run_flag <= 0; 
        write_B_rcsr1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_rcsr1_c_bitwidth, B_rcsr1_DEPTH, B_rcsr1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_rcsr1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_rcsr1_run_flag <= 1; 
            write_B_rcsr1_count = 0;
        end
        if (write_one_B_rcsr1_data_done === 1) begin
            write_B_rcsr1_count = write_B_rcsr1_count + 1;
            if (write_B_rcsr1_count == B_rcsr1_OPERATE_DEPTH) begin
                write_B_rcsr1_run_flag <= 0; 
                B_rcsr1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_rcsr1
    integer write_B_rcsr1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_rcsr1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_rcsr1_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_rcsr1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_rcsr1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_rcsr1_c_bitwidth < 32) begin
                        B_rcsr1_data_tmp_reg = mem_B_rcsr1[write_B_rcsr1_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_rcsr1_c_bitwidth) begin
                                B_rcsr1_data_tmp_reg[j] = mem_B_rcsr1[write_B_rcsr1_count][i*32 + j];
                            end
                            else begin
                                B_rcsr1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_rcsr1[write_B_rcsr1_count * four_byte_num  + i]!==B_rcsr1_data_tmp_reg) begin
                    write (B_rcsr1_data_in_addr + write_B_rcsr1_count * four_byte_num * 4 + i * 4, B_rcsr1_data_tmp_reg, write_B_rcsr1_resp);
                    image_mem_B_rcsr1[write_B_rcsr1_count * four_byte_num + i]=B_rcsr1_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_rcsr1_data_done <= 1;
                @(posedge clk);
                write_one_B_rcsr1_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_rcsr2_write_data_finish <= 0;
        write_B_rcsr2_run_flag <= 0; 
        write_B_rcsr2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_rcsr2_c_bitwidth, B_rcsr2_DEPTH, B_rcsr2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_rcsr2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_rcsr2_run_flag <= 1; 
            write_B_rcsr2_count = 0;
        end
        if (write_one_B_rcsr2_data_done === 1) begin
            write_B_rcsr2_count = write_B_rcsr2_count + 1;
            if (write_B_rcsr2_count == B_rcsr2_OPERATE_DEPTH) begin
                write_B_rcsr2_run_flag <= 0; 
                B_rcsr2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_rcsr2
    integer write_B_rcsr2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_rcsr2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_rcsr2_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_rcsr2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_rcsr2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_rcsr2_c_bitwidth < 32) begin
                        B_rcsr2_data_tmp_reg = mem_B_rcsr2[write_B_rcsr2_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_rcsr2_c_bitwidth) begin
                                B_rcsr2_data_tmp_reg[j] = mem_B_rcsr2[write_B_rcsr2_count][i*32 + j];
                            end
                            else begin
                                B_rcsr2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_rcsr2[write_B_rcsr2_count * four_byte_num  + i]!==B_rcsr2_data_tmp_reg) begin
                    write (B_rcsr2_data_in_addr + write_B_rcsr2_count * four_byte_num * 4 + i * 4, B_rcsr2_data_tmp_reg, write_B_rcsr2_resp);
                    image_mem_B_rcsr2[write_B_rcsr2_count * four_byte_num + i]=B_rcsr2_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_rcsr2_data_done <= 1;
                @(posedge clk);
                write_one_B_rcsr2_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_rcsr3_write_data_finish <= 0;
        write_B_rcsr3_run_flag <= 0; 
        write_B_rcsr3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_rcsr3_c_bitwidth, B_rcsr3_DEPTH, B_rcsr3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_rcsr3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_rcsr3_run_flag <= 1; 
            write_B_rcsr3_count = 0;
        end
        if (write_one_B_rcsr3_data_done === 1) begin
            write_B_rcsr3_count = write_B_rcsr3_count + 1;
            if (write_B_rcsr3_count == B_rcsr3_OPERATE_DEPTH) begin
                write_B_rcsr3_run_flag <= 0; 
                B_rcsr3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_rcsr3
    integer write_B_rcsr3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_rcsr3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_rcsr3_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_rcsr3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_rcsr3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_rcsr3_c_bitwidth < 32) begin
                        B_rcsr3_data_tmp_reg = mem_B_rcsr3[write_B_rcsr3_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_rcsr3_c_bitwidth) begin
                                B_rcsr3_data_tmp_reg[j] = mem_B_rcsr3[write_B_rcsr3_count][i*32 + j];
                            end
                            else begin
                                B_rcsr3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_rcsr3[write_B_rcsr3_count * four_byte_num  + i]!==B_rcsr3_data_tmp_reg) begin
                    write (B_rcsr3_data_in_addr + write_B_rcsr3_count * four_byte_num * 4 + i * 4, B_rcsr3_data_tmp_reg, write_B_rcsr3_resp);
                    image_mem_B_rcsr3[write_B_rcsr3_count * four_byte_num + i]=B_rcsr3_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_rcsr3_data_done <= 1;
                @(posedge clk);
                write_one_B_rcsr3_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_rcsr4_write_data_finish <= 0;
        write_B_rcsr4_run_flag <= 0; 
        write_B_rcsr4_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_rcsr4_c_bitwidth, B_rcsr4_DEPTH, B_rcsr4_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_rcsr4_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_rcsr4_run_flag <= 1; 
            write_B_rcsr4_count = 0;
        end
        if (write_one_B_rcsr4_data_done === 1) begin
            write_B_rcsr4_count = write_B_rcsr4_count + 1;
            if (write_B_rcsr4_count == B_rcsr4_OPERATE_DEPTH) begin
                write_B_rcsr4_run_flag <= 0; 
                B_rcsr4_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_rcsr4
    integer write_B_rcsr4_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_rcsr4_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_rcsr4_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_rcsr4_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_rcsr4 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_rcsr4_c_bitwidth < 32) begin
                        B_rcsr4_data_tmp_reg = mem_B_rcsr4[write_B_rcsr4_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_rcsr4_c_bitwidth) begin
                                B_rcsr4_data_tmp_reg[j] = mem_B_rcsr4[write_B_rcsr4_count][i*32 + j];
                            end
                            else begin
                                B_rcsr4_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_rcsr4[write_B_rcsr4_count * four_byte_num  + i]!==B_rcsr4_data_tmp_reg) begin
                    write (B_rcsr4_data_in_addr + write_B_rcsr4_count * four_byte_num * 4 + i * 4, B_rcsr4_data_tmp_reg, write_B_rcsr4_resp);
                    image_mem_B_rcsr4[write_B_rcsr4_count * four_byte_num + i]=B_rcsr4_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_rcsr4_data_done <= 1;
                @(posedge clk);
                write_one_B_rcsr4_data_done <= 0;
            end   
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_val1_write_data_finish <= 0;
        write_B_val1_run_flag <= 0; 
        write_B_val1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_val1_c_bitwidth, B_val1_DEPTH, B_val1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_val1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_val1_run_flag <= 1; 
            write_B_val1_count = 0;
        end
        if (write_one_B_val1_data_done === 1) begin
            write_B_val1_count = write_B_val1_count + 1;
            if (write_B_val1_count == B_val1_OPERATE_DEPTH) begin
                write_B_val1_run_flag <= 0; 
                B_val1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_val1
    integer write_B_val1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_val1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_val1_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_7_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_val1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_val1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_val1_c_bitwidth < 32) begin
                        B_val1_data_tmp_reg = mem_B_val1[write_B_val1_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_val1_c_bitwidth) begin
                                B_val1_data_tmp_reg[j] = mem_B_val1[write_B_val1_count][i*32 + j];
                            end
                            else begin
                                B_val1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_val1[write_B_val1_count * four_byte_num  + i]!==B_val1_data_tmp_reg) begin
                    write (B_val1_data_in_addr + write_B_val1_count * four_byte_num * 4 + i * 4, B_val1_data_tmp_reg, write_B_val1_resp);
                    image_mem_B_val1[write_B_val1_count * four_byte_num + i]=B_val1_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_val1_data_done <= 1;
                @(posedge clk);
                write_one_B_val1_data_done <= 0;
            end   
            process_7_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_cid1_write_data_finish <= 0;
        write_B_cid1_run_flag <= 0; 
        write_B_cid1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_cid1_c_bitwidth, B_cid1_DEPTH, B_cid1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_cid1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_cid1_run_flag <= 1; 
            write_B_cid1_count = 0;
        end
        if (write_one_B_cid1_data_done === 1) begin
            write_B_cid1_count = write_B_cid1_count + 1;
            if (write_B_cid1_count == B_cid1_OPERATE_DEPTH) begin
                write_B_cid1_run_flag <= 0; 
                B_cid1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_cid1
    integer write_B_cid1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_cid1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_cid1_c_bitwidth;
    process_num = 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_8_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_cid1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_cid1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_cid1_c_bitwidth < 32) begin
                        B_cid1_data_tmp_reg = mem_B_cid1[write_B_cid1_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_cid1_c_bitwidth) begin
                                B_cid1_data_tmp_reg[j] = mem_B_cid1[write_B_cid1_count][i*32 + j];
                            end
                            else begin
                                B_cid1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_cid1[write_B_cid1_count * four_byte_num  + i]!==B_cid1_data_tmp_reg) begin
                    write (B_cid1_data_in_addr + write_B_cid1_count * four_byte_num * 4 + i * 4, B_cid1_data_tmp_reg, write_B_cid1_resp);
                    image_mem_B_cid1[write_B_cid1_count * four_byte_num + i]=B_cid1_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_cid1_data_done <= 1;
                @(posedge clk);
                write_one_B_cid1_data_done <= 0;
            end   
            process_8_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_val2_write_data_finish <= 0;
        write_B_val2_run_flag <= 0; 
        write_B_val2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_val2_c_bitwidth, B_val2_DEPTH, B_val2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_val2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_val2_run_flag <= 1; 
            write_B_val2_count = 0;
        end
        if (write_one_B_val2_data_done === 1) begin
            write_B_val2_count = write_B_val2_count + 1;
            if (write_B_val2_count == B_val2_OPERATE_DEPTH) begin
                write_B_val2_run_flag <= 0; 
                B_val2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_val2
    integer write_B_val2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_val2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_val2_c_bitwidth;
    process_num = 9;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_9_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_val2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_val2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_val2_c_bitwidth < 32) begin
                        B_val2_data_tmp_reg = mem_B_val2[write_B_val2_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_val2_c_bitwidth) begin
                                B_val2_data_tmp_reg[j] = mem_B_val2[write_B_val2_count][i*32 + j];
                            end
                            else begin
                                B_val2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_val2[write_B_val2_count * four_byte_num  + i]!==B_val2_data_tmp_reg) begin
                    write (B_val2_data_in_addr + write_B_val2_count * four_byte_num * 4 + i * 4, B_val2_data_tmp_reg, write_B_val2_resp);
                    image_mem_B_val2[write_B_val2_count * four_byte_num + i]=B_val2_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_val2_data_done <= 1;
                @(posedge clk);
                write_one_B_val2_data_done <= 0;
            end   
            process_9_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_cid2_write_data_finish <= 0;
        write_B_cid2_run_flag <= 0; 
        write_B_cid2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_cid2_c_bitwidth, B_cid2_DEPTH, B_cid2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_cid2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_cid2_run_flag <= 1; 
            write_B_cid2_count = 0;
        end
        if (write_one_B_cid2_data_done === 1) begin
            write_B_cid2_count = write_B_cid2_count + 1;
            if (write_B_cid2_count == B_cid2_OPERATE_DEPTH) begin
                write_B_cid2_run_flag <= 0; 
                B_cid2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_cid2
    integer write_B_cid2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_cid2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_cid2_c_bitwidth;
    process_num = 10;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_10_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_cid2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_cid2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_cid2_c_bitwidth < 32) begin
                        B_cid2_data_tmp_reg = mem_B_cid2[write_B_cid2_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_cid2_c_bitwidth) begin
                                B_cid2_data_tmp_reg[j] = mem_B_cid2[write_B_cid2_count][i*32 + j];
                            end
                            else begin
                                B_cid2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_cid2[write_B_cid2_count * four_byte_num  + i]!==B_cid2_data_tmp_reg) begin
                    write (B_cid2_data_in_addr + write_B_cid2_count * four_byte_num * 4 + i * 4, B_cid2_data_tmp_reg, write_B_cid2_resp);
                    image_mem_B_cid2[write_B_cid2_count * four_byte_num + i]=B_cid2_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_cid2_data_done <= 1;
                @(posedge clk);
                write_one_B_cid2_data_done <= 0;
            end   
            process_10_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_val3_write_data_finish <= 0;
        write_B_val3_run_flag <= 0; 
        write_B_val3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_val3_c_bitwidth, B_val3_DEPTH, B_val3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_val3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_val3_run_flag <= 1; 
            write_B_val3_count = 0;
        end
        if (write_one_B_val3_data_done === 1) begin
            write_B_val3_count = write_B_val3_count + 1;
            if (write_B_val3_count == B_val3_OPERATE_DEPTH) begin
                write_B_val3_run_flag <= 0; 
                B_val3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_val3
    integer write_B_val3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_val3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_val3_c_bitwidth;
    process_num = 11;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_11_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_val3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_val3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_val3_c_bitwidth < 32) begin
                        B_val3_data_tmp_reg = mem_B_val3[write_B_val3_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_val3_c_bitwidth) begin
                                B_val3_data_tmp_reg[j] = mem_B_val3[write_B_val3_count][i*32 + j];
                            end
                            else begin
                                B_val3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_val3[write_B_val3_count * four_byte_num  + i]!==B_val3_data_tmp_reg) begin
                    write (B_val3_data_in_addr + write_B_val3_count * four_byte_num * 4 + i * 4, B_val3_data_tmp_reg, write_B_val3_resp);
                    image_mem_B_val3[write_B_val3_count * four_byte_num + i]=B_val3_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_val3_data_done <= 1;
                @(posedge clk);
                write_one_B_val3_data_done <= 0;
            end   
            process_11_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_cid3_write_data_finish <= 0;
        write_B_cid3_run_flag <= 0; 
        write_B_cid3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_cid3_c_bitwidth, B_cid3_DEPTH, B_cid3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_cid3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_cid3_run_flag <= 1; 
            write_B_cid3_count = 0;
        end
        if (write_one_B_cid3_data_done === 1) begin
            write_B_cid3_count = write_B_cid3_count + 1;
            if (write_B_cid3_count == B_cid3_OPERATE_DEPTH) begin
                write_B_cid3_run_flag <= 0; 
                B_cid3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_cid3
    integer write_B_cid3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_cid3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_cid3_c_bitwidth;
    process_num = 12;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_12_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_cid3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_cid3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_cid3_c_bitwidth < 32) begin
                        B_cid3_data_tmp_reg = mem_B_cid3[write_B_cid3_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_cid3_c_bitwidth) begin
                                B_cid3_data_tmp_reg[j] = mem_B_cid3[write_B_cid3_count][i*32 + j];
                            end
                            else begin
                                B_cid3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_cid3[write_B_cid3_count * four_byte_num  + i]!==B_cid3_data_tmp_reg) begin
                    write (B_cid3_data_in_addr + write_B_cid3_count * four_byte_num * 4 + i * 4, B_cid3_data_tmp_reg, write_B_cid3_resp);
                    image_mem_B_cid3[write_B_cid3_count * four_byte_num + i]=B_cid3_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_cid3_data_done <= 1;
                @(posedge clk);
                write_one_B_cid3_data_done <= 0;
            end   
            process_12_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_val4_write_data_finish <= 0;
        write_B_val4_run_flag <= 0; 
        write_B_val4_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_val4_c_bitwidth, B_val4_DEPTH, B_val4_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_val4_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_val4_run_flag <= 1; 
            write_B_val4_count = 0;
        end
        if (write_one_B_val4_data_done === 1) begin
            write_B_val4_count = write_B_val4_count + 1;
            if (write_B_val4_count == B_val4_OPERATE_DEPTH) begin
                write_B_val4_run_flag <= 0; 
                B_val4_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_val4
    integer write_B_val4_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_val4_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_val4_c_bitwidth;
    process_num = 13;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_13_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_val4_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_val4 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_val4_c_bitwidth < 32) begin
                        B_val4_data_tmp_reg = mem_B_val4[write_B_val4_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_val4_c_bitwidth) begin
                                B_val4_data_tmp_reg[j] = mem_B_val4[write_B_val4_count][i*32 + j];
                            end
                            else begin
                                B_val4_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_val4[write_B_val4_count * four_byte_num  + i]!==B_val4_data_tmp_reg) begin
                    write (B_val4_data_in_addr + write_B_val4_count * four_byte_num * 4 + i * 4, B_val4_data_tmp_reg, write_B_val4_resp);
                    image_mem_B_val4[write_B_val4_count * four_byte_num + i]=B_val4_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_val4_data_done <= 1;
                @(posedge clk);
                write_one_B_val4_data_done <= 0;
            end   
            process_13_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_cid4_write_data_finish <= 0;
        write_B_cid4_run_flag <= 0; 
        write_B_cid4_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_cid4_c_bitwidth, B_cid4_DEPTH, B_cid4_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_cid4_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_cid4_run_flag <= 1; 
            write_B_cid4_count = 0;
        end
        if (write_one_B_cid4_data_done === 1) begin
            write_B_cid4_count = write_B_cid4_count + 1;
            if (write_B_cid4_count == B_cid4_OPERATE_DEPTH) begin
                write_B_cid4_run_flag <= 0; 
                B_cid4_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_cid4
    integer write_B_cid4_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_cid4_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_cid4_c_bitwidth;
    process_num = 14;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_14_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_cid4_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_cid4 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_cid4_c_bitwidth < 32) begin
                        B_cid4_data_tmp_reg = mem_B_cid4[write_B_cid4_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_cid4_c_bitwidth) begin
                                B_cid4_data_tmp_reg[j] = mem_B_cid4[write_B_cid4_count][i*32 + j];
                            end
                            else begin
                                B_cid4_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_cid4[write_B_cid4_count * four_byte_num  + i]!==B_cid4_data_tmp_reg) begin
                    write (B_cid4_data_in_addr + write_B_cid4_count * four_byte_num * 4 + i * 4, B_cid4_data_tmp_reg, write_B_cid4_resp);
                    image_mem_B_cid4[write_B_cid4_count * four_byte_num + i]=B_cid4_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_cid4_data_done <= 1;
                @(posedge clk);
                write_one_B_cid4_data_done <= 0;
            end   
            process_14_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_val_port1_write_data_finish <= 0;
        write_B_val_port1_run_flag <= 0; 
        write_B_val_port1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_val_port1_c_bitwidth, B_val_port1_DEPTH, B_val_port1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_val_port1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_val_port1_run_flag <= 1; 
            write_B_val_port1_count = 0;
        end
        if (write_one_B_val_port1_data_done === 1) begin
            write_B_val_port1_count = write_B_val_port1_count + 1;
            if (write_B_val_port1_count == B_val_port1_OPERATE_DEPTH) begin
                write_B_val_port1_run_flag <= 0; 
                B_val_port1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_val_port1
    integer write_B_val_port1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_val_port1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_val_port1_c_bitwidth;
    process_num = 15;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_15_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_val_port1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_val_port1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_val_port1_c_bitwidth < 32) begin
                        B_val_port1_data_tmp_reg = mem_B_val_port1[write_B_val_port1_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_val_port1_c_bitwidth) begin
                                B_val_port1_data_tmp_reg[j] = mem_B_val_port1[write_B_val_port1_count][i*32 + j];
                            end
                            else begin
                                B_val_port1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_val_port1[write_B_val_port1_count * four_byte_num  + i]!==B_val_port1_data_tmp_reg) begin
                    write (B_val_port1_data_in_addr + write_B_val_port1_count * four_byte_num * 4 + i * 4, B_val_port1_data_tmp_reg, write_B_val_port1_resp);
                    image_mem_B_val_port1[write_B_val_port1_count * four_byte_num + i]=B_val_port1_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_val_port1_data_done <= 1;
                @(posedge clk);
                write_one_B_val_port1_data_done <= 0;
            end   
            process_15_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_cid_port1_write_data_finish <= 0;
        write_B_cid_port1_run_flag <= 0; 
        write_B_cid_port1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_cid_port1_c_bitwidth, B_cid_port1_DEPTH, B_cid_port1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_cid_port1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_cid_port1_run_flag <= 1; 
            write_B_cid_port1_count = 0;
        end
        if (write_one_B_cid_port1_data_done === 1) begin
            write_B_cid_port1_count = write_B_cid_port1_count + 1;
            if (write_B_cid_port1_count == B_cid_port1_OPERATE_DEPTH) begin
                write_B_cid_port1_run_flag <= 0; 
                B_cid_port1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_cid_port1
    integer write_B_cid_port1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_cid_port1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_cid_port1_c_bitwidth;
    process_num = 16;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_16_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_cid_port1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_cid_port1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_cid_port1_c_bitwidth < 32) begin
                        B_cid_port1_data_tmp_reg = mem_B_cid_port1[write_B_cid_port1_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_cid_port1_c_bitwidth) begin
                                B_cid_port1_data_tmp_reg[j] = mem_B_cid_port1[write_B_cid_port1_count][i*32 + j];
                            end
                            else begin
                                B_cid_port1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_cid_port1[write_B_cid_port1_count * four_byte_num  + i]!==B_cid_port1_data_tmp_reg) begin
                    write (B_cid_port1_data_in_addr + write_B_cid_port1_count * four_byte_num * 4 + i * 4, B_cid_port1_data_tmp_reg, write_B_cid_port1_resp);
                    image_mem_B_cid_port1[write_B_cid_port1_count * four_byte_num + i]=B_cid_port1_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_cid_port1_data_done <= 1;
                @(posedge clk);
                write_one_B_cid_port1_data_done <= 0;
            end   
            process_16_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_val_port2_write_data_finish <= 0;
        write_B_val_port2_run_flag <= 0; 
        write_B_val_port2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_val_port2_c_bitwidth, B_val_port2_DEPTH, B_val_port2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_val_port2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_val_port2_run_flag <= 1; 
            write_B_val_port2_count = 0;
        end
        if (write_one_B_val_port2_data_done === 1) begin
            write_B_val_port2_count = write_B_val_port2_count + 1;
            if (write_B_val_port2_count == B_val_port2_OPERATE_DEPTH) begin
                write_B_val_port2_run_flag <= 0; 
                B_val_port2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_val_port2
    integer write_B_val_port2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_val_port2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_val_port2_c_bitwidth;
    process_num = 17;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_17_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_val_port2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_val_port2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_val_port2_c_bitwidth < 32) begin
                        B_val_port2_data_tmp_reg = mem_B_val_port2[write_B_val_port2_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_val_port2_c_bitwidth) begin
                                B_val_port2_data_tmp_reg[j] = mem_B_val_port2[write_B_val_port2_count][i*32 + j];
                            end
                            else begin
                                B_val_port2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_val_port2[write_B_val_port2_count * four_byte_num  + i]!==B_val_port2_data_tmp_reg) begin
                    write (B_val_port2_data_in_addr + write_B_val_port2_count * four_byte_num * 4 + i * 4, B_val_port2_data_tmp_reg, write_B_val_port2_resp);
                    image_mem_B_val_port2[write_B_val_port2_count * four_byte_num + i]=B_val_port2_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_val_port2_data_done <= 1;
                @(posedge clk);
                write_one_B_val_port2_data_done <= 0;
            end   
            process_17_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_cid_port2_write_data_finish <= 0;
        write_B_cid_port2_run_flag <= 0; 
        write_B_cid_port2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_cid_port2_c_bitwidth, B_cid_port2_DEPTH, B_cid_port2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_cid_port2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_cid_port2_run_flag <= 1; 
            write_B_cid_port2_count = 0;
        end
        if (write_one_B_cid_port2_data_done === 1) begin
            write_B_cid_port2_count = write_B_cid_port2_count + 1;
            if (write_B_cid_port2_count == B_cid_port2_OPERATE_DEPTH) begin
                write_B_cid_port2_run_flag <= 0; 
                B_cid_port2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_cid_port2
    integer write_B_cid_port2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_cid_port2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_cid_port2_c_bitwidth;
    process_num = 18;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_18_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_cid_port2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_cid_port2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_cid_port2_c_bitwidth < 32) begin
                        B_cid_port2_data_tmp_reg = mem_B_cid_port2[write_B_cid_port2_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_cid_port2_c_bitwidth) begin
                                B_cid_port2_data_tmp_reg[j] = mem_B_cid_port2[write_B_cid_port2_count][i*32 + j];
                            end
                            else begin
                                B_cid_port2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_cid_port2[write_B_cid_port2_count * four_byte_num  + i]!==B_cid_port2_data_tmp_reg) begin
                    write (B_cid_port2_data_in_addr + write_B_cid_port2_count * four_byte_num * 4 + i * 4, B_cid_port2_data_tmp_reg, write_B_cid_port2_resp);
                    image_mem_B_cid_port2[write_B_cid_port2_count * four_byte_num + i]=B_cid_port2_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_cid_port2_data_done <= 1;
                @(posedge clk);
                write_one_B_cid_port2_data_done <= 0;
            end   
            process_18_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_val_port3_write_data_finish <= 0;
        write_B_val_port3_run_flag <= 0; 
        write_B_val_port3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_val_port3_c_bitwidth, B_val_port3_DEPTH, B_val_port3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_val_port3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_val_port3_run_flag <= 1; 
            write_B_val_port3_count = 0;
        end
        if (write_one_B_val_port3_data_done === 1) begin
            write_B_val_port3_count = write_B_val_port3_count + 1;
            if (write_B_val_port3_count == B_val_port3_OPERATE_DEPTH) begin
                write_B_val_port3_run_flag <= 0; 
                B_val_port3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_val_port3
    integer write_B_val_port3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_val_port3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_val_port3_c_bitwidth;
    process_num = 19;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_19_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_val_port3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_val_port3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_val_port3_c_bitwidth < 32) begin
                        B_val_port3_data_tmp_reg = mem_B_val_port3[write_B_val_port3_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_val_port3_c_bitwidth) begin
                                B_val_port3_data_tmp_reg[j] = mem_B_val_port3[write_B_val_port3_count][i*32 + j];
                            end
                            else begin
                                B_val_port3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_val_port3[write_B_val_port3_count * four_byte_num  + i]!==B_val_port3_data_tmp_reg) begin
                    write (B_val_port3_data_in_addr + write_B_val_port3_count * four_byte_num * 4 + i * 4, B_val_port3_data_tmp_reg, write_B_val_port3_resp);
                    image_mem_B_val_port3[write_B_val_port3_count * four_byte_num + i]=B_val_port3_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_val_port3_data_done <= 1;
                @(posedge clk);
                write_one_B_val_port3_data_done <= 0;
            end   
            process_19_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_cid_port3_write_data_finish <= 0;
        write_B_cid_port3_run_flag <= 0; 
        write_B_cid_port3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_cid_port3_c_bitwidth, B_cid_port3_DEPTH, B_cid_port3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_cid_port3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_cid_port3_run_flag <= 1; 
            write_B_cid_port3_count = 0;
        end
        if (write_one_B_cid_port3_data_done === 1) begin
            write_B_cid_port3_count = write_B_cid_port3_count + 1;
            if (write_B_cid_port3_count == B_cid_port3_OPERATE_DEPTH) begin
                write_B_cid_port3_run_flag <= 0; 
                B_cid_port3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_cid_port3
    integer write_B_cid_port3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_cid_port3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_cid_port3_c_bitwidth;
    process_num = 20;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_20_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_cid_port3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_cid_port3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_cid_port3_c_bitwidth < 32) begin
                        B_cid_port3_data_tmp_reg = mem_B_cid_port3[write_B_cid_port3_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_cid_port3_c_bitwidth) begin
                                B_cid_port3_data_tmp_reg[j] = mem_B_cid_port3[write_B_cid_port3_count][i*32 + j];
                            end
                            else begin
                                B_cid_port3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_cid_port3[write_B_cid_port3_count * four_byte_num  + i]!==B_cid_port3_data_tmp_reg) begin
                    write (B_cid_port3_data_in_addr + write_B_cid_port3_count * four_byte_num * 4 + i * 4, B_cid_port3_data_tmp_reg, write_B_cid_port3_resp);
                    image_mem_B_cid_port3[write_B_cid_port3_count * four_byte_num + i]=B_cid_port3_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_cid_port3_data_done <= 1;
                @(posedge clk);
                write_one_B_cid_port3_data_done <= 0;
            end   
            process_20_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_val_port4_write_data_finish <= 0;
        write_B_val_port4_run_flag <= 0; 
        write_B_val_port4_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_val_port4_c_bitwidth, B_val_port4_DEPTH, B_val_port4_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_val_port4_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_val_port4_run_flag <= 1; 
            write_B_val_port4_count = 0;
        end
        if (write_one_B_val_port4_data_done === 1) begin
            write_B_val_port4_count = write_B_val_port4_count + 1;
            if (write_B_val_port4_count == B_val_port4_OPERATE_DEPTH) begin
                write_B_val_port4_run_flag <= 0; 
                B_val_port4_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_val_port4
    integer write_B_val_port4_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_val_port4_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_val_port4_c_bitwidth;
    process_num = 21;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_21_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_val_port4_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_val_port4 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_val_port4_c_bitwidth < 32) begin
                        B_val_port4_data_tmp_reg = mem_B_val_port4[write_B_val_port4_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_val_port4_c_bitwidth) begin
                                B_val_port4_data_tmp_reg[j] = mem_B_val_port4[write_B_val_port4_count][i*32 + j];
                            end
                            else begin
                                B_val_port4_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_val_port4[write_B_val_port4_count * four_byte_num  + i]!==B_val_port4_data_tmp_reg) begin
                    write (B_val_port4_data_in_addr + write_B_val_port4_count * four_byte_num * 4 + i * 4, B_val_port4_data_tmp_reg, write_B_val_port4_resp);
                    image_mem_B_val_port4[write_B_val_port4_count * four_byte_num + i]=B_val_port4_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_val_port4_data_done <= 1;
                @(posedge clk);
                write_one_B_val_port4_data_done <= 0;
            end   
            process_21_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_cid_port4_write_data_finish <= 0;
        write_B_cid_port4_run_flag <= 0; 
        write_B_cid_port4_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_cid_port4_c_bitwidth, B_cid_port4_DEPTH, B_cid_port4_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            B_cid_port4_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_cid_port4_run_flag <= 1; 
            write_B_cid_port4_count = 0;
        end
        if (write_one_B_cid_port4_data_done === 1) begin
            write_B_cid_port4_count = write_B_cid_port4_count + 1;
            if (write_B_cid_port4_count == B_cid_port4_OPERATE_DEPTH) begin
                write_B_cid_port4_run_flag <= 0; 
                B_cid_port4_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_cid_port4
    integer write_B_cid_port4_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_cid_port4_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_cid_port4_c_bitwidth;
    process_num = 22;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_22_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_cid_port4_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_cid_port4 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_cid_port4_c_bitwidth < 32) begin
                        B_cid_port4_data_tmp_reg = mem_B_cid_port4[write_B_cid_port4_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_cid_port4_c_bitwidth) begin
                                B_cid_port4_data_tmp_reg[j] = mem_B_cid_port4[write_B_cid_port4_count][i*32 + j];
                            end
                            else begin
                                B_cid_port4_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_cid_port4[write_B_cid_port4_count * four_byte_num  + i]!==B_cid_port4_data_tmp_reg) begin
                    write (B_cid_port4_data_in_addr + write_B_cid_port4_count * four_byte_num * 4 + i * 4, B_cid_port4_data_tmp_reg, write_B_cid_port4_resp);
                    image_mem_B_cid_port4[write_B_cid_port4_count * four_byte_num + i]=B_cid_port4_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_cid_port4_data_done <= 1;
                @(posedge clk);
                write_one_B_cid_port4_data_done <= 0;
            end   
            process_22_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        C_rcsr_write_data_finish <= 0;
        write_C_rcsr_run_flag <= 0; 
        write_C_rcsr_count = 0;
        count_operate_depth_by_bitwidth_and_depth (C_rcsr_c_bitwidth, C_rcsr_DEPTH, C_rcsr_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            C_rcsr_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_C_rcsr_run_flag <= 1; 
            write_C_rcsr_count = 0;
        end
        if (write_one_C_rcsr_data_done === 1) begin
            write_C_rcsr_count = write_C_rcsr_count + 1;
            if (write_C_rcsr_count == C_rcsr_OPERATE_DEPTH) begin
                write_C_rcsr_run_flag <= 0; 
                C_rcsr_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_C_rcsr
    integer write_C_rcsr_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] C_rcsr_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = C_rcsr_c_bitwidth;
    process_num = 23;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_23_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_C_rcsr_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write C_rcsr data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (C_rcsr_c_bitwidth < 32) begin
                        C_rcsr_data_tmp_reg = mem_C_rcsr[write_C_rcsr_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < C_rcsr_c_bitwidth) begin
                                C_rcsr_data_tmp_reg[j] = mem_C_rcsr[write_C_rcsr_count][i*32 + j];
                            end
                            else begin
                                C_rcsr_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_C_rcsr[write_C_rcsr_count * four_byte_num  + i]!==C_rcsr_data_tmp_reg) begin
                    write (C_rcsr_data_in_addr + write_C_rcsr_count * four_byte_num * 4 + i * 4, C_rcsr_data_tmp_reg, write_C_rcsr_resp);
                    image_mem_C_rcsr[write_C_rcsr_count * four_byte_num + i]=C_rcsr_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_C_rcsr_data_done <= 1;
                @(posedge clk);
                write_one_C_rcsr_data_done <= 0;
            end   
            process_23_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        C_cid_write_data_finish <= 0;
        write_C_cid_run_flag <= 0; 
        write_C_cid_count = 0;
        count_operate_depth_by_bitwidth_and_depth (C_cid_c_bitwidth, C_cid_DEPTH, C_cid_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            C_cid_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_C_cid_run_flag <= 1; 
            write_C_cid_count = 0;
        end
        if (write_one_C_cid_data_done === 1) begin
            write_C_cid_count = write_C_cid_count + 1;
            if (write_C_cid_count == C_cid_OPERATE_DEPTH) begin
                write_C_cid_run_flag <= 0; 
                C_cid_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_C_cid
    integer write_C_cid_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] C_cid_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = C_cid_c_bitwidth;
    process_num = 24;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_24_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_C_cid_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write C_cid data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (C_cid_c_bitwidth < 32) begin
                        C_cid_data_tmp_reg = mem_C_cid[write_C_cid_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < C_cid_c_bitwidth) begin
                                C_cid_data_tmp_reg[j] = mem_C_cid[write_C_cid_count][i*32 + j];
                            end
                            else begin
                                C_cid_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_C_cid[write_C_cid_count * four_byte_num  + i]!==C_cid_data_tmp_reg) begin
                    write (C_cid_data_in_addr + write_C_cid_count * four_byte_num * 4 + i * 4, C_cid_data_tmp_reg, write_C_cid_resp);
                    image_mem_C_cid[write_C_cid_count * four_byte_num + i]=C_cid_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_C_cid_data_done <= 1;
                @(posedge clk);
                write_one_C_cid_data_done <= 0;
            end   
            process_24_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        C_val_write_data_finish <= 0;
        write_C_val_run_flag <= 0; 
        write_C_val_count = 0;
        count_operate_depth_by_bitwidth_and_depth (C_val_c_bitwidth, C_val_DEPTH, C_val_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            C_val_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_C_val_run_flag <= 1; 
            write_C_val_count = 0;
        end
        if (write_one_C_val_data_done === 1) begin
            write_C_val_count = write_C_val_count + 1;
            if (write_C_val_count == C_val_OPERATE_DEPTH) begin
                write_C_val_run_flag <= 0; 
                C_val_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_C_val
    integer write_C_val_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] C_val_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = C_val_c_bitwidth;
    process_num = 25;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_25_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_C_val_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write C_val data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (C_val_c_bitwidth < 32) begin
                        C_val_data_tmp_reg = mem_C_val[write_C_val_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < C_val_c_bitwidth) begin
                                C_val_data_tmp_reg[j] = mem_C_val[write_C_val_count][i*32 + j];
                            end
                            else begin
                                C_val_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_C_val[write_C_val_count * four_byte_num  + i]!==C_val_data_tmp_reg) begin
                    write (C_val_data_in_addr + write_C_val_count * four_byte_num * 4 + i * 4, C_val_data_tmp_reg, write_C_val_resp);
                    image_mem_C_val[write_C_val_count * four_byte_num + i]=C_val_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_C_val_data_done <= 1;
                @(posedge clk);
                write_one_C_val_data_done <= 0;
            end   
            process_25_finish <= 1;
        end
        @(posedge clk);
    end    
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_A_rcsr_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [A_rcsr_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (A_rcsr_c_bitwidth , factor);
  fp = $fopen(`TV_IN_A_rcsr ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_A_rcsr); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < A_rcsr_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_A_rcsr [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_A_rcsr [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_A_rcsr [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_A_rcsr [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_A_rcsr [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_A_rcsr;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_A_cid_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [A_cid_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (A_cid_c_bitwidth , factor);
  fp = $fopen(`TV_IN_A_cid ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_A_cid); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < A_cid_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_A_cid [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_A_cid [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_A_cid [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_A_cid [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_A_cid [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_A_cid;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_A_val_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [A_val_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (A_val_c_bitwidth , factor);
  fp = $fopen(`TV_IN_A_val ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_A_val); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < A_val_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_A_val [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_A_val [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_A_val [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_A_val [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_A_val [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_A_val;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_rcsr1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_rcsr1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_rcsr1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_rcsr1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_rcsr1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_rcsr1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_rcsr1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_rcsr1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_rcsr1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_rcsr1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_rcsr1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_rcsr1;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_rcsr2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_rcsr2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_rcsr2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_rcsr2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_rcsr2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_rcsr2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_rcsr2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_rcsr2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_rcsr2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_rcsr2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_rcsr2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_rcsr2;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_rcsr3_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_rcsr3_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_rcsr3_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_rcsr3 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_rcsr3); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_rcsr3_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_rcsr3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_rcsr3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_rcsr3 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_rcsr3 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_rcsr3 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_rcsr3;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_rcsr4_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_rcsr4_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_rcsr4_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_rcsr4 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_rcsr4); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_rcsr4_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_rcsr4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_rcsr4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_rcsr4 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_rcsr4 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_rcsr4 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_rcsr4;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_val1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_val1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_val1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_val1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_val1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_val1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_val1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_val1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_val1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_val1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_val1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_val1;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_cid1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_cid1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_cid1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_cid1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_cid1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_cid1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_cid1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_cid1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_cid1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_cid1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_cid1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_cid1;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_val2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_val2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_val2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_val2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_val2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_val2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_val2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_val2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_val2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_val2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_val2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_val2;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_cid2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_cid2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_cid2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_cid2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_cid2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_cid2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_cid2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_cid2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_cid2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_cid2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_cid2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_cid2;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_val3_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_val3_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_val3_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_val3 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_val3); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_val3_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_val3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_val3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_val3 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_val3 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_val3 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_val3;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_cid3_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_cid3_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_cid3_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_cid3 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_cid3); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_cid3_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_cid3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_cid3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_cid3 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_cid3 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_cid3 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_cid3;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_val4_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_val4_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_val4_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_val4 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_val4); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_val4_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_val4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_val4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_val4 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_val4 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_val4 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_val4;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_cid4_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_cid4_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_cid4_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_cid4 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_cid4); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_cid4_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_cid4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_cid4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_cid4 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_cid4 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_cid4 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_cid4;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_val_port1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_val_port1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_val_port1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_val_port1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_val_port1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_val_port1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_val_port1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_val_port1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_val_port1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_val_port1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_val_port1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_val_port1;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_cid_port1_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_cid_port1_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_cid_port1_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_cid_port1 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_cid_port1); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_cid_port1_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_cid_port1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_cid_port1 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_cid_port1 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_cid_port1 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_cid_port1 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_cid_port1;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_val_port2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_val_port2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_val_port2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_val_port2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_val_port2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_val_port2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_val_port2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_val_port2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_val_port2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_val_port2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_val_port2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_val_port2;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_cid_port2_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_cid_port2_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_cid_port2_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_cid_port2 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_cid_port2); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_cid_port2_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_cid_port2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_cid_port2 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_cid_port2 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_cid_port2 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_cid_port2 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_cid_port2;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_val_port3_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_val_port3_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_val_port3_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_val_port3 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_val_port3); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_val_port3_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_val_port3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_val_port3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_val_port3 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_val_port3 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_val_port3 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_val_port3;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_cid_port3_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_cid_port3_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_cid_port3_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_cid_port3 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_cid_port3); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_cid_port3_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_cid_port3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_cid_port3 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_cid_port3 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_cid_port3 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_cid_port3 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_cid_port3;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_val_port4_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_val_port4_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_val_port4_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_val_port4 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_val_port4); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_val_port4_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_val_port4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_val_port4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_val_port4 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_val_port4 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_val_port4 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_val_port4;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_B_cid_port4_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [B_cid_port4_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_cid_port4_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_cid_port4 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_cid_port4); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < B_cid_port4_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_B_cid_port4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_cid_port4 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_cid_port4 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_cid_port4 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_cid_port4 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_B_cid_port4;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_C_rcsr_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [C_rcsr_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (C_rcsr_c_bitwidth , factor);
  fp = $fopen(`TV_IN_C_rcsr ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_C_rcsr); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < C_rcsr_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_C_rcsr [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_C_rcsr [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_C_rcsr [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_C_rcsr [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_C_rcsr [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_C_rcsr;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_C_cid_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [C_cid_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (C_cid_c_bitwidth , factor);
  fp = $fopen(`TV_IN_C_cid ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_C_cid); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < C_cid_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_C_cid [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_C_cid [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_C_cid [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_C_cid [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_C_cid [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_C_cid;
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
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_C_val_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [C_val_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (C_val_c_bitwidth , factor);
  fp = $fopen(`TV_IN_C_val ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_C_val); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < C_val_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_C_val [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_C_val [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_C_val [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_C_val [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_C_val [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_C_val;
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
endmodule
