// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_ctr (
    clk,
    reset,
    TRAN_s_axi_ctr_AWADDR,
    TRAN_s_axi_ctr_AWVALID,
    TRAN_s_axi_ctr_AWREADY,
    TRAN_s_axi_ctr_WVALID,
    TRAN_s_axi_ctr_WREADY,
    TRAN_s_axi_ctr_WDATA,
    TRAN_s_axi_ctr_WSTRB,
    TRAN_s_axi_ctr_ARADDR,
    TRAN_s_axi_ctr_ARVALID,
    TRAN_s_axi_ctr_ARREADY,
    TRAN_s_axi_ctr_RVALID,
    TRAN_s_axi_ctr_RREADY,
    TRAN_s_axi_ctr_RDATA,
    TRAN_s_axi_ctr_RRESP,
    TRAN_s_axi_ctr_BVALID,
    TRAN_s_axi_ctr_BREADY,
    TRAN_s_axi_ctr_BRESP,
    TRAN_ctr_write_data_finish,
    TRAN_ctr_read_data_finish,
    TRAN_ctr_start_in,
    TRAN_ctr_idle_out,
    TRAN_ctr_ready_out,
    TRAN_ctr_ready_in,
    TRAN_ctr_done_out,
    TRAN_ctr_write_start_in   ,
    TRAN_ctr_write_start_finish,
    TRAN_ctr_interrupt,
    TRAN_ctr_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_arnum "../tv/cdatafile/c.spmm.autotvin_arnum.dat"
`define TV_IN_brnum "../tv/cdatafile/c.spmm.autotvin_brnum.dat"
`define TV_IN_B_rcsr_base "../tv/cdatafile/c.spmm.autotvin_B_rcsr_base.dat"
`define TV_IN_B_val_base "../tv/cdatafile/c.spmm.autotvin_B_val_base.dat"
`define TV_IN_B_cid_base "../tv/cdatafile/c.spmm.autotvin_B_cid_base.dat"
`define TV_OUT_r1acc "../tv/rtldatafile/rtl.spmm.autotvout_r1acc.dat"
`define TV_OUT_r1hit "../tv/rtldatafile/rtl.spmm.autotvout_r1hit.dat"
`define TV_OUT_r2acc "../tv/rtldatafile/rtl.spmm.autotvout_r2acc.dat"
`define TV_OUT_r2hit "../tv/rtldatafile/rtl.spmm.autotvout_r2hit.dat"
`define TV_OUT_r3acc "../tv/rtldatafile/rtl.spmm.autotvout_r3acc.dat"
`define TV_OUT_r3hit "../tv/rtldatafile/rtl.spmm.autotvout_r3hit.dat"
`define TV_OUT_r4acc "../tv/rtldatafile/rtl.spmm.autotvout_r4acc.dat"
`define TV_OUT_r4hit "../tv/rtldatafile/rtl.spmm.autotvout_r4hit.dat"
`define TV_OUT_vc1acc "../tv/rtldatafile/rtl.spmm.autotvout_vc1acc.dat"
`define TV_OUT_vc1hit "../tv/rtldatafile/rtl.spmm.autotvout_vc1hit.dat"
`define TV_OUT_vc2acc "../tv/rtldatafile/rtl.spmm.autotvout_vc2acc.dat"
`define TV_OUT_vc2hit "../tv/rtldatafile/rtl.spmm.autotvout_vc2hit.dat"
`define TV_OUT_vc3acc "../tv/rtldatafile/rtl.spmm.autotvout_vc3acc.dat"
`define TV_OUT_vc3hit "../tv/rtldatafile/rtl.spmm.autotvout_vc3hit.dat"
`define TV_OUT_vc4acc "../tv/rtldatafile/rtl.spmm.autotvout_vc4acc.dat"
`define TV_OUT_vc4hit "../tv/rtldatafile/rtl.spmm.autotvout_vc4hit.dat"
`define TV_OUT_fnum "../tv/rtldatafile/rtl.spmm.autotvout_fnum.dat"
`define TV_OUT_workload_counter1 "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter1.dat"
`define TV_OUT_workload_counter2 "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter2.dat"
`define TV_OUT_workload_counter3 "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter3.dat"
`define TV_OUT_workload_counter4 "../tv/rtldatafile/rtl.spmm.autotvout_workload_counter4.dat"
parameter ADDR_WIDTH = 10;
parameter DATA_WIDTH = 32;
parameter arnum_DEPTH = 1;
reg [31 : 0] arnum_OPERATE_DEPTH = 0;
parameter arnum_c_bitwidth = 32;
parameter brnum_DEPTH = 1;
reg [31 : 0] brnum_OPERATE_DEPTH = 0;
parameter brnum_c_bitwidth = 32;
parameter B_rcsr_base_DEPTH = 1;
reg [31 : 0] B_rcsr_base_OPERATE_DEPTH = 0;
parameter B_rcsr_base_c_bitwidth = 32;
parameter B_val_base_DEPTH = 1;
reg [31 : 0] B_val_base_OPERATE_DEPTH = 0;
parameter B_val_base_c_bitwidth = 32;
parameter B_cid_base_DEPTH = 1;
reg [31 : 0] B_cid_base_OPERATE_DEPTH = 0;
parameter B_cid_base_c_bitwidth = 32;
parameter r1acc_DEPTH = 1;
reg [31 : 0] r1acc_OPERATE_DEPTH = 0;
parameter r1acc_c_bitwidth = 32;
parameter r1hit_DEPTH = 1;
reg [31 : 0] r1hit_OPERATE_DEPTH = 0;
parameter r1hit_c_bitwidth = 32;
parameter r2acc_DEPTH = 1;
reg [31 : 0] r2acc_OPERATE_DEPTH = 0;
parameter r2acc_c_bitwidth = 32;
parameter r2hit_DEPTH = 1;
reg [31 : 0] r2hit_OPERATE_DEPTH = 0;
parameter r2hit_c_bitwidth = 32;
parameter r3acc_DEPTH = 1;
reg [31 : 0] r3acc_OPERATE_DEPTH = 0;
parameter r3acc_c_bitwidth = 32;
parameter r3hit_DEPTH = 1;
reg [31 : 0] r3hit_OPERATE_DEPTH = 0;
parameter r3hit_c_bitwidth = 32;
parameter r4acc_DEPTH = 1;
reg [31 : 0] r4acc_OPERATE_DEPTH = 0;
parameter r4acc_c_bitwidth = 32;
parameter r4hit_DEPTH = 1;
reg [31 : 0] r4hit_OPERATE_DEPTH = 0;
parameter r4hit_c_bitwidth = 32;
parameter vc1acc_DEPTH = 1;
reg [31 : 0] vc1acc_OPERATE_DEPTH = 0;
parameter vc1acc_c_bitwidth = 32;
parameter vc1hit_DEPTH = 1;
reg [31 : 0] vc1hit_OPERATE_DEPTH = 0;
parameter vc1hit_c_bitwidth = 32;
parameter vc2acc_DEPTH = 1;
reg [31 : 0] vc2acc_OPERATE_DEPTH = 0;
parameter vc2acc_c_bitwidth = 32;
parameter vc2hit_DEPTH = 1;
reg [31 : 0] vc2hit_OPERATE_DEPTH = 0;
parameter vc2hit_c_bitwidth = 32;
parameter vc3acc_DEPTH = 1;
reg [31 : 0] vc3acc_OPERATE_DEPTH = 0;
parameter vc3acc_c_bitwidth = 32;
parameter vc3hit_DEPTH = 1;
reg [31 : 0] vc3hit_OPERATE_DEPTH = 0;
parameter vc3hit_c_bitwidth = 32;
parameter vc4acc_DEPTH = 1;
reg [31 : 0] vc4acc_OPERATE_DEPTH = 0;
parameter vc4acc_c_bitwidth = 32;
parameter vc4hit_DEPTH = 1;
reg [31 : 0] vc4hit_OPERATE_DEPTH = 0;
parameter vc4hit_c_bitwidth = 32;
parameter fnum_DEPTH = 1;
reg [31 : 0] fnum_OPERATE_DEPTH = 0;
parameter fnum_c_bitwidth = 32;
parameter workload_counter1_DEPTH = 1;
reg [31 : 0] workload_counter1_OPERATE_DEPTH = 0;
parameter workload_counter1_c_bitwidth = 32;
parameter workload_counter2_DEPTH = 1;
reg [31 : 0] workload_counter2_OPERATE_DEPTH = 0;
parameter workload_counter2_c_bitwidth = 32;
parameter workload_counter3_DEPTH = 1;
reg [31 : 0] workload_counter3_OPERATE_DEPTH = 0;
parameter workload_counter3_c_bitwidth = 32;
parameter workload_counter4_DEPTH = 1;
reg [31 : 0] workload_counter4_OPERATE_DEPTH = 0;
parameter workload_counter4_c_bitwidth = 32;
parameter START_ADDR = 0;
parameter spmm_continue_addr = 0;
parameter spmm_auto_start_addr = 0;
parameter arnum_data_in_addr = 16;
parameter atnum_data_in_addr = 24;
parameter brnum_data_in_addr = 32;
parameter btnum_data_in_addr = 40;
parameter B_rcsr_base_data_in_addr = 48;
parameter B_val_base_data_in_addr = 56;
parameter B_cid_base_data_in_addr = 64;
parameter r5acc_data_in_addr = 200;
parameter r5hit_data_in_addr = 208;
parameter r6acc_data_in_addr = 216;
parameter r6hit_data_in_addr = 224;
parameter r7acc_data_in_addr = 232;
parameter r7hit_data_in_addr = 240;
parameter r8acc_data_in_addr = 248;
parameter r8hit_data_in_addr = 256;
parameter vc5acc_data_in_addr = 392;
parameter vc5hit_data_in_addr = 400;
parameter vc6acc_data_in_addr = 408;
parameter vc6hit_data_in_addr = 416;
parameter vc7acc_data_in_addr = 424;
parameter vc7hit_data_in_addr = 432;
parameter vc8acc_data_in_addr = 440;
parameter vc8hit_data_in_addr = 448;
parameter r1acc_data_out_addr = 72;
parameter r1acc_valid_out_addr = 76;
parameter r1hit_data_out_addr = 88;
parameter r1hit_valid_out_addr = 92;
parameter r2acc_data_out_addr = 104;
parameter r2acc_valid_out_addr = 108;
parameter r2hit_data_out_addr = 120;
parameter r2hit_valid_out_addr = 124;
parameter r3acc_data_out_addr = 136;
parameter r3acc_valid_out_addr = 140;
parameter r3hit_data_out_addr = 152;
parameter r3hit_valid_out_addr = 156;
parameter r4acc_data_out_addr = 168;
parameter r4acc_valid_out_addr = 172;
parameter r4hit_data_out_addr = 184;
parameter r4hit_valid_out_addr = 188;
parameter vc1acc_data_out_addr = 264;
parameter vc1acc_valid_out_addr = 268;
parameter vc1hit_data_out_addr = 280;
parameter vc1hit_valid_out_addr = 284;
parameter vc2acc_data_out_addr = 296;
parameter vc2acc_valid_out_addr = 300;
parameter vc2hit_data_out_addr = 312;
parameter vc2hit_valid_out_addr = 316;
parameter vc3acc_data_out_addr = 328;
parameter vc3acc_valid_out_addr = 332;
parameter vc3hit_data_out_addr = 344;
parameter vc3hit_valid_out_addr = 348;
parameter vc4acc_data_out_addr = 360;
parameter vc4acc_valid_out_addr = 364;
parameter vc4hit_data_out_addr = 376;
parameter vc4hit_valid_out_addr = 380;
parameter fnum_data_out_addr = 456;
parameter fnum_valid_out_addr = 460;
parameter workload_counter1_data_out_addr = 472;
parameter workload_counter1_valid_out_addr = 476;
parameter workload_counter2_data_out_addr = 488;
parameter workload_counter2_valid_out_addr = 492;
parameter workload_counter3_data_out_addr = 504;
parameter workload_counter3_valid_out_addr = 508;
parameter workload_counter4_data_out_addr = 520;
parameter workload_counter4_valid_out_addr = 524;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_ctr_AWADDR;
output  TRAN_s_axi_ctr_AWVALID;
input  TRAN_s_axi_ctr_AWREADY;
output  TRAN_s_axi_ctr_WVALID;
input  TRAN_s_axi_ctr_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_ctr_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_ctr_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_ctr_ARADDR;
output  TRAN_s_axi_ctr_ARVALID;
input  TRAN_s_axi_ctr_ARREADY;
input  TRAN_s_axi_ctr_RVALID;
output  TRAN_s_axi_ctr_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_ctr_RDATA;
input [2 - 1 : 0] TRAN_s_axi_ctr_RRESP;
input  TRAN_s_axi_ctr_BVALID;
output  TRAN_s_axi_ctr_BREADY;
input [2 - 1 : 0] TRAN_s_axi_ctr_BRESP;
output TRAN_ctr_write_data_finish;
output TRAN_ctr_read_data_finish;
input     clk;
input     reset;
input     TRAN_ctr_start_in;
output    TRAN_ctr_done_out;
output    TRAN_ctr_ready_out;
input     TRAN_ctr_ready_in;
output    TRAN_ctr_idle_out;
input  TRAN_ctr_write_start_in   ;
output TRAN_ctr_write_start_finish;
input     TRAN_ctr_interrupt;
input     TRAN_ctr_transaction_done_in;

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
reg [DATA_WIDTH - 1 : 0] mem_arnum [arnum_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_arnum [ (arnum_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * arnum_DEPTH -1 : 0] = '{default : 'hz};
reg arnum_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_brnum [brnum_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_brnum [ (brnum_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * brnum_DEPTH -1 : 0] = '{default : 'hz};
reg brnum_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_B_rcsr_base [B_rcsr_base_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_rcsr_base [ (B_rcsr_base_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_rcsr_base_DEPTH -1 : 0] = '{default : 'hz};
reg B_rcsr_base_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_B_val_base [B_val_base_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_val_base [ (B_val_base_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_val_base_DEPTH -1 : 0] = '{default : 'hz};
reg B_val_base_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_B_cid_base [B_cid_base_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_B_cid_base [ (B_cid_base_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * B_cid_base_DEPTH -1 : 0] = '{default : 'hz};
reg B_cid_base_write_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_r1acc [r1acc_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_r1acc [ (r1acc_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * r1acc_DEPTH -1 : 0] = '{default : 'hz};
reg r1acc_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_r1hit [r1hit_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_r1hit [ (r1hit_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * r1hit_DEPTH -1 : 0] = '{default : 'hz};
reg r1hit_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_r2acc [r2acc_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_r2acc [ (r2acc_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * r2acc_DEPTH -1 : 0] = '{default : 'hz};
reg r2acc_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_r2hit [r2hit_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_r2hit [ (r2hit_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * r2hit_DEPTH -1 : 0] = '{default : 'hz};
reg r2hit_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_r3acc [r3acc_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_r3acc [ (r3acc_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * r3acc_DEPTH -1 : 0] = '{default : 'hz};
reg r3acc_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_r3hit [r3hit_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_r3hit [ (r3hit_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * r3hit_DEPTH -1 : 0] = '{default : 'hz};
reg r3hit_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_r4acc [r4acc_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_r4acc [ (r4acc_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * r4acc_DEPTH -1 : 0] = '{default : 'hz};
reg r4acc_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_r4hit [r4hit_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_r4hit [ (r4hit_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * r4hit_DEPTH -1 : 0] = '{default : 'hz};
reg r4hit_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_vc1acc [vc1acc_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_vc1acc [ (vc1acc_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * vc1acc_DEPTH -1 : 0] = '{default : 'hz};
reg vc1acc_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_vc1hit [vc1hit_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_vc1hit [ (vc1hit_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * vc1hit_DEPTH -1 : 0] = '{default : 'hz};
reg vc1hit_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_vc2acc [vc2acc_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_vc2acc [ (vc2acc_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * vc2acc_DEPTH -1 : 0] = '{default : 'hz};
reg vc2acc_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_vc2hit [vc2hit_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_vc2hit [ (vc2hit_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * vc2hit_DEPTH -1 : 0] = '{default : 'hz};
reg vc2hit_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_vc3acc [vc3acc_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_vc3acc [ (vc3acc_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * vc3acc_DEPTH -1 : 0] = '{default : 'hz};
reg vc3acc_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_vc3hit [vc3hit_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_vc3hit [ (vc3hit_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * vc3hit_DEPTH -1 : 0] = '{default : 'hz};
reg vc3hit_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_vc4acc [vc4acc_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_vc4acc [ (vc4acc_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * vc4acc_DEPTH -1 : 0] = '{default : 'hz};
reg vc4acc_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_vc4hit [vc4hit_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_vc4hit [ (vc4hit_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * vc4hit_DEPTH -1 : 0] = '{default : 'hz};
reg vc4hit_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_fnum [fnum_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_fnum [ (fnum_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * fnum_DEPTH -1 : 0] = '{default : 'hz};
reg fnum_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_workload_counter1 [workload_counter1_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_workload_counter1 [ (workload_counter1_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * workload_counter1_DEPTH -1 : 0] = '{default : 'hz};
reg workload_counter1_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_workload_counter2 [workload_counter2_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_workload_counter2 [ (workload_counter2_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * workload_counter2_DEPTH -1 : 0] = '{default : 'hz};
reg workload_counter2_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_workload_counter3 [workload_counter3_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_workload_counter3 [ (workload_counter3_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * workload_counter3_DEPTH -1 : 0] = '{default : 'hz};
reg workload_counter3_read_data_finish;
reg [DATA_WIDTH - 1 : 0] mem_workload_counter4 [workload_counter4_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_workload_counter4 [ (workload_counter4_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * workload_counter4_DEPTH -1 : 0] = '{default : 'hz};
reg workload_counter4_read_data_finish;
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
reg process_26_finish = 0;
reg process_27_finish = 0;
//write arnum reg
reg [31 : 0] write_arnum_count = 0;
reg write_arnum_run_flag = 0;
reg write_one_arnum_data_done = 0;
//write brnum reg
reg [31 : 0] write_brnum_count = 0;
reg write_brnum_run_flag = 0;
reg write_one_brnum_data_done = 0;
//write B_rcsr_base reg
reg [31 : 0] write_B_rcsr_base_count = 0;
reg write_B_rcsr_base_run_flag = 0;
reg write_one_B_rcsr_base_data_done = 0;
//write B_val_base reg
reg [31 : 0] write_B_val_base_count = 0;
reg write_B_val_base_run_flag = 0;
reg write_one_B_val_base_data_done = 0;
//write B_cid_base reg
reg [31 : 0] write_B_cid_base_count = 0;
reg write_B_cid_base_run_flag = 0;
reg write_one_B_cid_base_data_done = 0;
//read r1acc reg
reg [31 : 0] read_r1acc_count = 0;
reg read_r1acc_run_flag = 0;
reg read_one_r1acc_data_done = 0;
//read r1hit reg
reg [31 : 0] read_r1hit_count = 0;
reg read_r1hit_run_flag = 0;
reg read_one_r1hit_data_done = 0;
//read r2acc reg
reg [31 : 0] read_r2acc_count = 0;
reg read_r2acc_run_flag = 0;
reg read_one_r2acc_data_done = 0;
//read r2hit reg
reg [31 : 0] read_r2hit_count = 0;
reg read_r2hit_run_flag = 0;
reg read_one_r2hit_data_done = 0;
//read r3acc reg
reg [31 : 0] read_r3acc_count = 0;
reg read_r3acc_run_flag = 0;
reg read_one_r3acc_data_done = 0;
//read r3hit reg
reg [31 : 0] read_r3hit_count = 0;
reg read_r3hit_run_flag = 0;
reg read_one_r3hit_data_done = 0;
//read r4acc reg
reg [31 : 0] read_r4acc_count = 0;
reg read_r4acc_run_flag = 0;
reg read_one_r4acc_data_done = 0;
//read r4hit reg
reg [31 : 0] read_r4hit_count = 0;
reg read_r4hit_run_flag = 0;
reg read_one_r4hit_data_done = 0;
//read vc1acc reg
reg [31 : 0] read_vc1acc_count = 0;
reg read_vc1acc_run_flag = 0;
reg read_one_vc1acc_data_done = 0;
//read vc1hit reg
reg [31 : 0] read_vc1hit_count = 0;
reg read_vc1hit_run_flag = 0;
reg read_one_vc1hit_data_done = 0;
//read vc2acc reg
reg [31 : 0] read_vc2acc_count = 0;
reg read_vc2acc_run_flag = 0;
reg read_one_vc2acc_data_done = 0;
//read vc2hit reg
reg [31 : 0] read_vc2hit_count = 0;
reg read_vc2hit_run_flag = 0;
reg read_one_vc2hit_data_done = 0;
//read vc3acc reg
reg [31 : 0] read_vc3acc_count = 0;
reg read_vc3acc_run_flag = 0;
reg read_one_vc3acc_data_done = 0;
//read vc3hit reg
reg [31 : 0] read_vc3hit_count = 0;
reg read_vc3hit_run_flag = 0;
reg read_one_vc3hit_data_done = 0;
//read vc4acc reg
reg [31 : 0] read_vc4acc_count = 0;
reg read_vc4acc_run_flag = 0;
reg read_one_vc4acc_data_done = 0;
//read vc4hit reg
reg [31 : 0] read_vc4hit_count = 0;
reg read_vc4hit_run_flag = 0;
reg read_one_vc4hit_data_done = 0;
//read fnum reg
reg [31 : 0] read_fnum_count = 0;
reg read_fnum_run_flag = 0;
reg read_one_fnum_data_done = 0;
//read workload_counter1 reg
reg [31 : 0] read_workload_counter1_count = 0;
reg read_workload_counter1_run_flag = 0;
reg read_one_workload_counter1_data_done = 0;
//read workload_counter2 reg
reg [31 : 0] read_workload_counter2_count = 0;
reg read_workload_counter2_run_flag = 0;
reg read_one_workload_counter2_data_done = 0;
//read workload_counter3 reg
reg [31 : 0] read_workload_counter3_count = 0;
reg read_workload_counter3_run_flag = 0;
reg read_one_workload_counter3_data_done = 0;
//read workload_counter4 reg
reg [31 : 0] read_workload_counter4_count = 0;
reg read_workload_counter4_run_flag = 0;
reg read_one_workload_counter4_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_ctr_AWADDR = AWADDR_reg;
assign TRAN_s_axi_ctr_AWVALID = AWVALID_reg;
assign TRAN_s_axi_ctr_WVALID = WVALID_reg;
assign TRAN_s_axi_ctr_WDATA = WDATA_reg;
assign TRAN_s_axi_ctr_WSTRB = WSTRB_reg;
assign TRAN_s_axi_ctr_ARADDR = ARADDR_reg;
assign TRAN_s_axi_ctr_ARVALID = ARVALID_reg;
assign TRAN_s_axi_ctr_RREADY = RREADY_reg;
assign TRAN_s_axi_ctr_BREADY = BREADY_reg;
assign TRAN_ctr_write_start_finish = AESL_write_start_finish;
assign TRAN_ctr_done_out = AESL_done_index_reg;
assign TRAN_ctr_ready_out = AESL_ready_out_index_reg;
assign TRAN_ctr_idle_out = AESL_idle_index_reg;
assign TRAN_ctr_read_data_finish = 1 & r1acc_read_data_finish & r1hit_read_data_finish & r2acc_read_data_finish & r2hit_read_data_finish & r3acc_read_data_finish & r3hit_read_data_finish & r4acc_read_data_finish & r4hit_read_data_finish & vc1acc_read_data_finish & vc1hit_read_data_finish & vc2acc_read_data_finish & vc2hit_read_data_finish & vc3acc_read_data_finish & vc3hit_read_data_finish & vc4acc_read_data_finish & vc4hit_read_data_finish & fnum_read_data_finish & workload_counter1_read_data_finish & workload_counter2_read_data_finish & workload_counter3_read_data_finish & workload_counter4_read_data_finish;
assign TRAN_ctr_write_data_finish = 1 & arnum_write_data_finish & brnum_write_data_finish & B_rcsr_base_write_data_finish & B_val_base_write_data_finish & B_cid_base_write_data_finish;
always @(TRAN_ctr_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_ctr_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish or process_8_finish or process_9_finish or process_10_finish or process_11_finish or process_12_finish or process_13_finish or process_14_finish or process_15_finish or process_16_finish or process_17_finish or process_18_finish or process_19_finish or process_20_finish or process_21_finish or process_22_finish or process_23_finish or process_24_finish or process_25_finish or process_26_finish or process_27_finish ) begin
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
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 26 && process_26_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 27 && process_27_finish == 1) begin
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
            aw_flag = TRAN_s_axi_ctr_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_ctr_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_ctr_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_ctr_BRESP === 2'b00) begin
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
    while (TRAN_s_axi_ctr_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_ctr_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_ctr_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_ctr_RRESP === 2'b00 ) begin
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

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        arnum_write_data_finish <= 0;
        write_arnum_run_flag <= 0; 
        write_arnum_count = 0;
        count_operate_depth_by_bitwidth_and_depth (arnum_c_bitwidth, arnum_DEPTH, arnum_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_ctr_start_in === 1) begin
            arnum_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_arnum_run_flag <= 1; 
            write_arnum_count = 0;
        end
        if (write_one_arnum_data_done === 1) begin
            write_arnum_count = write_arnum_count + 1;
            if (write_arnum_count == arnum_OPERATE_DEPTH) begin
                write_arnum_run_flag <= 0; 
                arnum_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_arnum
    integer write_arnum_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] arnum_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = arnum_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_arnum_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write arnum data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (arnum_c_bitwidth < 32) begin
                        arnum_data_tmp_reg = mem_arnum[write_arnum_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < arnum_c_bitwidth) begin
                                arnum_data_tmp_reg[j] = mem_arnum[write_arnum_count][i*32 + j];
                            end
                            else begin
                                arnum_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_arnum[write_arnum_count * four_byte_num  + i]!==arnum_data_tmp_reg) begin
                    write (arnum_data_in_addr + write_arnum_count * four_byte_num * 4 + i * 4, arnum_data_tmp_reg, write_arnum_resp);
                    image_mem_arnum[write_arnum_count * four_byte_num + i]=arnum_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_arnum_data_done <= 1;
                @(posedge clk);
                write_one_arnum_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        brnum_write_data_finish <= 0;
        write_brnum_run_flag <= 0; 
        write_brnum_count = 0;
        count_operate_depth_by_bitwidth_and_depth (brnum_c_bitwidth, brnum_DEPTH, brnum_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_ctr_start_in === 1) begin
            brnum_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_brnum_run_flag <= 1; 
            write_brnum_count = 0;
        end
        if (write_one_brnum_data_done === 1) begin
            write_brnum_count = write_brnum_count + 1;
            if (write_brnum_count == brnum_OPERATE_DEPTH) begin
                write_brnum_run_flag <= 0; 
                brnum_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_brnum
    integer write_brnum_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] brnum_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = brnum_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_brnum_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write brnum data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (brnum_c_bitwidth < 32) begin
                        brnum_data_tmp_reg = mem_brnum[write_brnum_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < brnum_c_bitwidth) begin
                                brnum_data_tmp_reg[j] = mem_brnum[write_brnum_count][i*32 + j];
                            end
                            else begin
                                brnum_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_brnum[write_brnum_count * four_byte_num  + i]!==brnum_data_tmp_reg) begin
                    write (brnum_data_in_addr + write_brnum_count * four_byte_num * 4 + i * 4, brnum_data_tmp_reg, write_brnum_resp);
                    image_mem_brnum[write_brnum_count * four_byte_num + i]=brnum_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_brnum_data_done <= 1;
                @(posedge clk);
                write_one_brnum_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_rcsr_base_write_data_finish <= 0;
        write_B_rcsr_base_run_flag <= 0; 
        write_B_rcsr_base_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_rcsr_base_c_bitwidth, B_rcsr_base_DEPTH, B_rcsr_base_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_ctr_start_in === 1) begin
            B_rcsr_base_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_rcsr_base_run_flag <= 1; 
            write_B_rcsr_base_count = 0;
        end
        if (write_one_B_rcsr_base_data_done === 1) begin
            write_B_rcsr_base_count = write_B_rcsr_base_count + 1;
            if (write_B_rcsr_base_count == B_rcsr_base_OPERATE_DEPTH) begin
                write_B_rcsr_base_run_flag <= 0; 
                B_rcsr_base_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_rcsr_base
    integer write_B_rcsr_base_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_rcsr_base_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_rcsr_base_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_rcsr_base_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_rcsr_base data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_rcsr_base_c_bitwidth < 32) begin
                        B_rcsr_base_data_tmp_reg = mem_B_rcsr_base[write_B_rcsr_base_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_rcsr_base_c_bitwidth) begin
                                B_rcsr_base_data_tmp_reg[j] = mem_B_rcsr_base[write_B_rcsr_base_count][i*32 + j];
                            end
                            else begin
                                B_rcsr_base_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_rcsr_base[write_B_rcsr_base_count * four_byte_num  + i]!==B_rcsr_base_data_tmp_reg) begin
                    write (B_rcsr_base_data_in_addr + write_B_rcsr_base_count * four_byte_num * 4 + i * 4, B_rcsr_base_data_tmp_reg, write_B_rcsr_base_resp);
                    image_mem_B_rcsr_base[write_B_rcsr_base_count * four_byte_num + i]=B_rcsr_base_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_rcsr_base_data_done <= 1;
                @(posedge clk);
                write_one_B_rcsr_base_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_val_base_write_data_finish <= 0;
        write_B_val_base_run_flag <= 0; 
        write_B_val_base_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_val_base_c_bitwidth, B_val_base_DEPTH, B_val_base_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_ctr_start_in === 1) begin
            B_val_base_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_val_base_run_flag <= 1; 
            write_B_val_base_count = 0;
        end
        if (write_one_B_val_base_data_done === 1) begin
            write_B_val_base_count = write_B_val_base_count + 1;
            if (write_B_val_base_count == B_val_base_OPERATE_DEPTH) begin
                write_B_val_base_run_flag <= 0; 
                B_val_base_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_val_base
    integer write_B_val_base_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_val_base_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_val_base_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_val_base_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_val_base data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_val_base_c_bitwidth < 32) begin
                        B_val_base_data_tmp_reg = mem_B_val_base[write_B_val_base_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_val_base_c_bitwidth) begin
                                B_val_base_data_tmp_reg[j] = mem_B_val_base[write_B_val_base_count][i*32 + j];
                            end
                            else begin
                                B_val_base_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_val_base[write_B_val_base_count * four_byte_num  + i]!==B_val_base_data_tmp_reg) begin
                    write (B_val_base_data_in_addr + write_B_val_base_count * four_byte_num * 4 + i * 4, B_val_base_data_tmp_reg, write_B_val_base_resp);
                    image_mem_B_val_base[write_B_val_base_count * four_byte_num + i]=B_val_base_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_val_base_data_done <= 1;
                @(posedge clk);
                write_one_B_val_base_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        B_cid_base_write_data_finish <= 0;
        write_B_cid_base_run_flag <= 0; 
        write_B_cid_base_count = 0;
        count_operate_depth_by_bitwidth_and_depth (B_cid_base_c_bitwidth, B_cid_base_DEPTH, B_cid_base_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_ctr_start_in === 1) begin
            B_cid_base_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_B_cid_base_run_flag <= 1; 
            write_B_cid_base_count = 0;
        end
        if (write_one_B_cid_base_data_done === 1) begin
            write_B_cid_base_count = write_B_cid_base_count + 1;
            if (write_B_cid_base_count == B_cid_base_OPERATE_DEPTH) begin
                write_B_cid_base_run_flag <= 0; 
                B_cid_base_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_B_cid_base
    integer write_B_cid_base_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] B_cid_base_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = B_cid_base_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_B_cid_base_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write B_cid_base data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (B_cid_base_c_bitwidth < 32) begin
                        B_cid_base_data_tmp_reg = mem_B_cid_base[write_B_cid_base_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < B_cid_base_c_bitwidth) begin
                                B_cid_base_data_tmp_reg[j] = mem_B_cid_base[write_B_cid_base_count][i*32 + j];
                            end
                            else begin
                                B_cid_base_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_B_cid_base[write_B_cid_base_count * four_byte_num  + i]!==B_cid_base_data_tmp_reg) begin
                    write (B_cid_base_data_in_addr + write_B_cid_base_count * four_byte_num * 4 + i * 4, B_cid_base_data_tmp_reg, write_B_cid_base_resp);
                    image_mem_B_cid_base[write_B_cid_base_count * four_byte_num + i]=B_cid_base_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_B_cid_base_data_done <= 1;
                @(posedge clk);
                write_one_B_cid_base_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_ctr_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 6;
    while (1) begin
        process_6_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_6_finish <= 1;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        r1acc_read_data_finish <= 0;
        read_r1acc_run_flag <= 0; 
        read_r1acc_count = 0;
        count_operate_depth_by_bitwidth_and_depth (r1acc_c_bitwidth, r1acc_DEPTH, r1acc_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_r1acc_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            r1acc_read_data_finish <= 0;
            read_r1acc_count = 0; 
        end
        if (read_one_r1acc_data_done === 1) begin
            read_r1acc_count = read_r1acc_count + 1;
            if (read_r1acc_count == r1acc_OPERATE_DEPTH) begin
                read_r1acc_run_flag <= 0; 
                r1acc_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_r1acc
    integer read_r1acc_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = r1acc_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_7_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_r1acc_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read r1acc vld
                read (r1acc_valid_out_addr, RDATA_reg, read_r1acc_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read r1acc data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (r1acc_data_out_addr + read_r1acc_count * four_byte_num * 4 + i * 4, RDATA_reg, read_r1acc_resp);
                        if (r1acc_c_bitwidth < 32) begin
                            mem_r1acc[read_r1acc_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < r1acc_c_bitwidth) begin
                                    mem_r1acc[read_r1acc_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_r1acc_data_done <= 1;
                    @(posedge clk);
                    read_one_r1acc_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_7_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        r1hit_read_data_finish <= 0;
        read_r1hit_run_flag <= 0; 
        read_r1hit_count = 0;
        count_operate_depth_by_bitwidth_and_depth (r1hit_c_bitwidth, r1hit_DEPTH, r1hit_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_r1hit_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            r1hit_read_data_finish <= 0;
            read_r1hit_count = 0; 
        end
        if (read_one_r1hit_data_done === 1) begin
            read_r1hit_count = read_r1hit_count + 1;
            if (read_r1hit_count == r1hit_OPERATE_DEPTH) begin
                read_r1hit_run_flag <= 0; 
                r1hit_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_r1hit
    integer read_r1hit_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = r1hit_c_bitwidth;
    process_num = 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_8_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_r1hit_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read r1hit vld
                read (r1hit_valid_out_addr, RDATA_reg, read_r1hit_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read r1hit data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (r1hit_data_out_addr + read_r1hit_count * four_byte_num * 4 + i * 4, RDATA_reg, read_r1hit_resp);
                        if (r1hit_c_bitwidth < 32) begin
                            mem_r1hit[read_r1hit_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < r1hit_c_bitwidth) begin
                                    mem_r1hit[read_r1hit_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_r1hit_data_done <= 1;
                    @(posedge clk);
                    read_one_r1hit_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_8_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        r2acc_read_data_finish <= 0;
        read_r2acc_run_flag <= 0; 
        read_r2acc_count = 0;
        count_operate_depth_by_bitwidth_and_depth (r2acc_c_bitwidth, r2acc_DEPTH, r2acc_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_r2acc_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            r2acc_read_data_finish <= 0;
            read_r2acc_count = 0; 
        end
        if (read_one_r2acc_data_done === 1) begin
            read_r2acc_count = read_r2acc_count + 1;
            if (read_r2acc_count == r2acc_OPERATE_DEPTH) begin
                read_r2acc_run_flag <= 0; 
                r2acc_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_r2acc
    integer read_r2acc_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = r2acc_c_bitwidth;
    process_num = 9;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_9_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_r2acc_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read r2acc vld
                read (r2acc_valid_out_addr, RDATA_reg, read_r2acc_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read r2acc data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (r2acc_data_out_addr + read_r2acc_count * four_byte_num * 4 + i * 4, RDATA_reg, read_r2acc_resp);
                        if (r2acc_c_bitwidth < 32) begin
                            mem_r2acc[read_r2acc_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < r2acc_c_bitwidth) begin
                                    mem_r2acc[read_r2acc_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_r2acc_data_done <= 1;
                    @(posedge clk);
                    read_one_r2acc_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_9_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        r2hit_read_data_finish <= 0;
        read_r2hit_run_flag <= 0; 
        read_r2hit_count = 0;
        count_operate_depth_by_bitwidth_and_depth (r2hit_c_bitwidth, r2hit_DEPTH, r2hit_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_r2hit_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            r2hit_read_data_finish <= 0;
            read_r2hit_count = 0; 
        end
        if (read_one_r2hit_data_done === 1) begin
            read_r2hit_count = read_r2hit_count + 1;
            if (read_r2hit_count == r2hit_OPERATE_DEPTH) begin
                read_r2hit_run_flag <= 0; 
                r2hit_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_r2hit
    integer read_r2hit_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = r2hit_c_bitwidth;
    process_num = 10;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_10_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_r2hit_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read r2hit vld
                read (r2hit_valid_out_addr, RDATA_reg, read_r2hit_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read r2hit data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (r2hit_data_out_addr + read_r2hit_count * four_byte_num * 4 + i * 4, RDATA_reg, read_r2hit_resp);
                        if (r2hit_c_bitwidth < 32) begin
                            mem_r2hit[read_r2hit_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < r2hit_c_bitwidth) begin
                                    mem_r2hit[read_r2hit_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_r2hit_data_done <= 1;
                    @(posedge clk);
                    read_one_r2hit_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_10_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        r3acc_read_data_finish <= 0;
        read_r3acc_run_flag <= 0; 
        read_r3acc_count = 0;
        count_operate_depth_by_bitwidth_and_depth (r3acc_c_bitwidth, r3acc_DEPTH, r3acc_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_r3acc_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            r3acc_read_data_finish <= 0;
            read_r3acc_count = 0; 
        end
        if (read_one_r3acc_data_done === 1) begin
            read_r3acc_count = read_r3acc_count + 1;
            if (read_r3acc_count == r3acc_OPERATE_DEPTH) begin
                read_r3acc_run_flag <= 0; 
                r3acc_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_r3acc
    integer read_r3acc_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = r3acc_c_bitwidth;
    process_num = 11;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_11_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_r3acc_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read r3acc vld
                read (r3acc_valid_out_addr, RDATA_reg, read_r3acc_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read r3acc data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (r3acc_data_out_addr + read_r3acc_count * four_byte_num * 4 + i * 4, RDATA_reg, read_r3acc_resp);
                        if (r3acc_c_bitwidth < 32) begin
                            mem_r3acc[read_r3acc_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < r3acc_c_bitwidth) begin
                                    mem_r3acc[read_r3acc_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_r3acc_data_done <= 1;
                    @(posedge clk);
                    read_one_r3acc_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_11_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        r3hit_read_data_finish <= 0;
        read_r3hit_run_flag <= 0; 
        read_r3hit_count = 0;
        count_operate_depth_by_bitwidth_and_depth (r3hit_c_bitwidth, r3hit_DEPTH, r3hit_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_r3hit_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            r3hit_read_data_finish <= 0;
            read_r3hit_count = 0; 
        end
        if (read_one_r3hit_data_done === 1) begin
            read_r3hit_count = read_r3hit_count + 1;
            if (read_r3hit_count == r3hit_OPERATE_DEPTH) begin
                read_r3hit_run_flag <= 0; 
                r3hit_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_r3hit
    integer read_r3hit_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = r3hit_c_bitwidth;
    process_num = 12;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_12_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_r3hit_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read r3hit vld
                read (r3hit_valid_out_addr, RDATA_reg, read_r3hit_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read r3hit data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (r3hit_data_out_addr + read_r3hit_count * four_byte_num * 4 + i * 4, RDATA_reg, read_r3hit_resp);
                        if (r3hit_c_bitwidth < 32) begin
                            mem_r3hit[read_r3hit_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < r3hit_c_bitwidth) begin
                                    mem_r3hit[read_r3hit_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_r3hit_data_done <= 1;
                    @(posedge clk);
                    read_one_r3hit_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_12_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        r4acc_read_data_finish <= 0;
        read_r4acc_run_flag <= 0; 
        read_r4acc_count = 0;
        count_operate_depth_by_bitwidth_and_depth (r4acc_c_bitwidth, r4acc_DEPTH, r4acc_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_r4acc_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            r4acc_read_data_finish <= 0;
            read_r4acc_count = 0; 
        end
        if (read_one_r4acc_data_done === 1) begin
            read_r4acc_count = read_r4acc_count + 1;
            if (read_r4acc_count == r4acc_OPERATE_DEPTH) begin
                read_r4acc_run_flag <= 0; 
                r4acc_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_r4acc
    integer read_r4acc_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = r4acc_c_bitwidth;
    process_num = 13;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_13_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_r4acc_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read r4acc vld
                read (r4acc_valid_out_addr, RDATA_reg, read_r4acc_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read r4acc data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (r4acc_data_out_addr + read_r4acc_count * four_byte_num * 4 + i * 4, RDATA_reg, read_r4acc_resp);
                        if (r4acc_c_bitwidth < 32) begin
                            mem_r4acc[read_r4acc_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < r4acc_c_bitwidth) begin
                                    mem_r4acc[read_r4acc_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_r4acc_data_done <= 1;
                    @(posedge clk);
                    read_one_r4acc_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_13_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        r4hit_read_data_finish <= 0;
        read_r4hit_run_flag <= 0; 
        read_r4hit_count = 0;
        count_operate_depth_by_bitwidth_and_depth (r4hit_c_bitwidth, r4hit_DEPTH, r4hit_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_r4hit_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            r4hit_read_data_finish <= 0;
            read_r4hit_count = 0; 
        end
        if (read_one_r4hit_data_done === 1) begin
            read_r4hit_count = read_r4hit_count + 1;
            if (read_r4hit_count == r4hit_OPERATE_DEPTH) begin
                read_r4hit_run_flag <= 0; 
                r4hit_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_r4hit
    integer read_r4hit_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = r4hit_c_bitwidth;
    process_num = 14;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_14_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_r4hit_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read r4hit vld
                read (r4hit_valid_out_addr, RDATA_reg, read_r4hit_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read r4hit data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (r4hit_data_out_addr + read_r4hit_count * four_byte_num * 4 + i * 4, RDATA_reg, read_r4hit_resp);
                        if (r4hit_c_bitwidth < 32) begin
                            mem_r4hit[read_r4hit_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < r4hit_c_bitwidth) begin
                                    mem_r4hit[read_r4hit_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_r4hit_data_done <= 1;
                    @(posedge clk);
                    read_one_r4hit_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_14_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        vc1acc_read_data_finish <= 0;
        read_vc1acc_run_flag <= 0; 
        read_vc1acc_count = 0;
        count_operate_depth_by_bitwidth_and_depth (vc1acc_c_bitwidth, vc1acc_DEPTH, vc1acc_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_vc1acc_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            vc1acc_read_data_finish <= 0;
            read_vc1acc_count = 0; 
        end
        if (read_one_vc1acc_data_done === 1) begin
            read_vc1acc_count = read_vc1acc_count + 1;
            if (read_vc1acc_count == vc1acc_OPERATE_DEPTH) begin
                read_vc1acc_run_flag <= 0; 
                vc1acc_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_vc1acc
    integer read_vc1acc_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = vc1acc_c_bitwidth;
    process_num = 15;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_15_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_vc1acc_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read vc1acc vld
                read (vc1acc_valid_out_addr, RDATA_reg, read_vc1acc_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read vc1acc data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (vc1acc_data_out_addr + read_vc1acc_count * four_byte_num * 4 + i * 4, RDATA_reg, read_vc1acc_resp);
                        if (vc1acc_c_bitwidth < 32) begin
                            mem_vc1acc[read_vc1acc_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < vc1acc_c_bitwidth) begin
                                    mem_vc1acc[read_vc1acc_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_vc1acc_data_done <= 1;
                    @(posedge clk);
                    read_one_vc1acc_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_15_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        vc1hit_read_data_finish <= 0;
        read_vc1hit_run_flag <= 0; 
        read_vc1hit_count = 0;
        count_operate_depth_by_bitwidth_and_depth (vc1hit_c_bitwidth, vc1hit_DEPTH, vc1hit_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_vc1hit_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            vc1hit_read_data_finish <= 0;
            read_vc1hit_count = 0; 
        end
        if (read_one_vc1hit_data_done === 1) begin
            read_vc1hit_count = read_vc1hit_count + 1;
            if (read_vc1hit_count == vc1hit_OPERATE_DEPTH) begin
                read_vc1hit_run_flag <= 0; 
                vc1hit_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_vc1hit
    integer read_vc1hit_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = vc1hit_c_bitwidth;
    process_num = 16;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_16_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_vc1hit_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read vc1hit vld
                read (vc1hit_valid_out_addr, RDATA_reg, read_vc1hit_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read vc1hit data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (vc1hit_data_out_addr + read_vc1hit_count * four_byte_num * 4 + i * 4, RDATA_reg, read_vc1hit_resp);
                        if (vc1hit_c_bitwidth < 32) begin
                            mem_vc1hit[read_vc1hit_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < vc1hit_c_bitwidth) begin
                                    mem_vc1hit[read_vc1hit_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_vc1hit_data_done <= 1;
                    @(posedge clk);
                    read_one_vc1hit_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_16_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        vc2acc_read_data_finish <= 0;
        read_vc2acc_run_flag <= 0; 
        read_vc2acc_count = 0;
        count_operate_depth_by_bitwidth_and_depth (vc2acc_c_bitwidth, vc2acc_DEPTH, vc2acc_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_vc2acc_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            vc2acc_read_data_finish <= 0;
            read_vc2acc_count = 0; 
        end
        if (read_one_vc2acc_data_done === 1) begin
            read_vc2acc_count = read_vc2acc_count + 1;
            if (read_vc2acc_count == vc2acc_OPERATE_DEPTH) begin
                read_vc2acc_run_flag <= 0; 
                vc2acc_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_vc2acc
    integer read_vc2acc_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = vc2acc_c_bitwidth;
    process_num = 17;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_17_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_vc2acc_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read vc2acc vld
                read (vc2acc_valid_out_addr, RDATA_reg, read_vc2acc_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read vc2acc data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (vc2acc_data_out_addr + read_vc2acc_count * four_byte_num * 4 + i * 4, RDATA_reg, read_vc2acc_resp);
                        if (vc2acc_c_bitwidth < 32) begin
                            mem_vc2acc[read_vc2acc_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < vc2acc_c_bitwidth) begin
                                    mem_vc2acc[read_vc2acc_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_vc2acc_data_done <= 1;
                    @(posedge clk);
                    read_one_vc2acc_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_17_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        vc2hit_read_data_finish <= 0;
        read_vc2hit_run_flag <= 0; 
        read_vc2hit_count = 0;
        count_operate_depth_by_bitwidth_and_depth (vc2hit_c_bitwidth, vc2hit_DEPTH, vc2hit_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_vc2hit_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            vc2hit_read_data_finish <= 0;
            read_vc2hit_count = 0; 
        end
        if (read_one_vc2hit_data_done === 1) begin
            read_vc2hit_count = read_vc2hit_count + 1;
            if (read_vc2hit_count == vc2hit_OPERATE_DEPTH) begin
                read_vc2hit_run_flag <= 0; 
                vc2hit_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_vc2hit
    integer read_vc2hit_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = vc2hit_c_bitwidth;
    process_num = 18;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_18_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_vc2hit_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read vc2hit vld
                read (vc2hit_valid_out_addr, RDATA_reg, read_vc2hit_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read vc2hit data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (vc2hit_data_out_addr + read_vc2hit_count * four_byte_num * 4 + i * 4, RDATA_reg, read_vc2hit_resp);
                        if (vc2hit_c_bitwidth < 32) begin
                            mem_vc2hit[read_vc2hit_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < vc2hit_c_bitwidth) begin
                                    mem_vc2hit[read_vc2hit_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_vc2hit_data_done <= 1;
                    @(posedge clk);
                    read_one_vc2hit_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_18_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        vc3acc_read_data_finish <= 0;
        read_vc3acc_run_flag <= 0; 
        read_vc3acc_count = 0;
        count_operate_depth_by_bitwidth_and_depth (vc3acc_c_bitwidth, vc3acc_DEPTH, vc3acc_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_vc3acc_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            vc3acc_read_data_finish <= 0;
            read_vc3acc_count = 0; 
        end
        if (read_one_vc3acc_data_done === 1) begin
            read_vc3acc_count = read_vc3acc_count + 1;
            if (read_vc3acc_count == vc3acc_OPERATE_DEPTH) begin
                read_vc3acc_run_flag <= 0; 
                vc3acc_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_vc3acc
    integer read_vc3acc_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = vc3acc_c_bitwidth;
    process_num = 19;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_19_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_vc3acc_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read vc3acc vld
                read (vc3acc_valid_out_addr, RDATA_reg, read_vc3acc_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read vc3acc data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (vc3acc_data_out_addr + read_vc3acc_count * four_byte_num * 4 + i * 4, RDATA_reg, read_vc3acc_resp);
                        if (vc3acc_c_bitwidth < 32) begin
                            mem_vc3acc[read_vc3acc_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < vc3acc_c_bitwidth) begin
                                    mem_vc3acc[read_vc3acc_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_vc3acc_data_done <= 1;
                    @(posedge clk);
                    read_one_vc3acc_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_19_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        vc3hit_read_data_finish <= 0;
        read_vc3hit_run_flag <= 0; 
        read_vc3hit_count = 0;
        count_operate_depth_by_bitwidth_and_depth (vc3hit_c_bitwidth, vc3hit_DEPTH, vc3hit_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_vc3hit_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            vc3hit_read_data_finish <= 0;
            read_vc3hit_count = 0; 
        end
        if (read_one_vc3hit_data_done === 1) begin
            read_vc3hit_count = read_vc3hit_count + 1;
            if (read_vc3hit_count == vc3hit_OPERATE_DEPTH) begin
                read_vc3hit_run_flag <= 0; 
                vc3hit_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_vc3hit
    integer read_vc3hit_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = vc3hit_c_bitwidth;
    process_num = 20;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_20_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_vc3hit_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read vc3hit vld
                read (vc3hit_valid_out_addr, RDATA_reg, read_vc3hit_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read vc3hit data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (vc3hit_data_out_addr + read_vc3hit_count * four_byte_num * 4 + i * 4, RDATA_reg, read_vc3hit_resp);
                        if (vc3hit_c_bitwidth < 32) begin
                            mem_vc3hit[read_vc3hit_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < vc3hit_c_bitwidth) begin
                                    mem_vc3hit[read_vc3hit_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_vc3hit_data_done <= 1;
                    @(posedge clk);
                    read_one_vc3hit_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_20_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        vc4acc_read_data_finish <= 0;
        read_vc4acc_run_flag <= 0; 
        read_vc4acc_count = 0;
        count_operate_depth_by_bitwidth_and_depth (vc4acc_c_bitwidth, vc4acc_DEPTH, vc4acc_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_vc4acc_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            vc4acc_read_data_finish <= 0;
            read_vc4acc_count = 0; 
        end
        if (read_one_vc4acc_data_done === 1) begin
            read_vc4acc_count = read_vc4acc_count + 1;
            if (read_vc4acc_count == vc4acc_OPERATE_DEPTH) begin
                read_vc4acc_run_flag <= 0; 
                vc4acc_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_vc4acc
    integer read_vc4acc_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = vc4acc_c_bitwidth;
    process_num = 21;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_21_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_vc4acc_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read vc4acc vld
                read (vc4acc_valid_out_addr, RDATA_reg, read_vc4acc_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read vc4acc data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (vc4acc_data_out_addr + read_vc4acc_count * four_byte_num * 4 + i * 4, RDATA_reg, read_vc4acc_resp);
                        if (vc4acc_c_bitwidth < 32) begin
                            mem_vc4acc[read_vc4acc_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < vc4acc_c_bitwidth) begin
                                    mem_vc4acc[read_vc4acc_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_vc4acc_data_done <= 1;
                    @(posedge clk);
                    read_one_vc4acc_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_21_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        vc4hit_read_data_finish <= 0;
        read_vc4hit_run_flag <= 0; 
        read_vc4hit_count = 0;
        count_operate_depth_by_bitwidth_and_depth (vc4hit_c_bitwidth, vc4hit_DEPTH, vc4hit_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_vc4hit_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            vc4hit_read_data_finish <= 0;
            read_vc4hit_count = 0; 
        end
        if (read_one_vc4hit_data_done === 1) begin
            read_vc4hit_count = read_vc4hit_count + 1;
            if (read_vc4hit_count == vc4hit_OPERATE_DEPTH) begin
                read_vc4hit_run_flag <= 0; 
                vc4hit_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_vc4hit
    integer read_vc4hit_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = vc4hit_c_bitwidth;
    process_num = 22;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_22_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_vc4hit_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read vc4hit vld
                read (vc4hit_valid_out_addr, RDATA_reg, read_vc4hit_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read vc4hit data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (vc4hit_data_out_addr + read_vc4hit_count * four_byte_num * 4 + i * 4, RDATA_reg, read_vc4hit_resp);
                        if (vc4hit_c_bitwidth < 32) begin
                            mem_vc4hit[read_vc4hit_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < vc4hit_c_bitwidth) begin
                                    mem_vc4hit[read_vc4hit_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_vc4hit_data_done <= 1;
                    @(posedge clk);
                    read_one_vc4hit_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_22_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        fnum_read_data_finish <= 0;
        read_fnum_run_flag <= 0; 
        read_fnum_count = 0;
        count_operate_depth_by_bitwidth_and_depth (fnum_c_bitwidth, fnum_DEPTH, fnum_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_fnum_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            fnum_read_data_finish <= 0;
            read_fnum_count = 0; 
        end
        if (read_one_fnum_data_done === 1) begin
            read_fnum_count = read_fnum_count + 1;
            if (read_fnum_count == fnum_OPERATE_DEPTH) begin
                read_fnum_run_flag <= 0; 
                fnum_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_fnum
    integer read_fnum_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = fnum_c_bitwidth;
    process_num = 23;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_23_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_fnum_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read fnum vld
                read (fnum_valid_out_addr, RDATA_reg, read_fnum_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read fnum data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (fnum_data_out_addr + read_fnum_count * four_byte_num * 4 + i * 4, RDATA_reg, read_fnum_resp);
                        if (fnum_c_bitwidth < 32) begin
                            mem_fnum[read_fnum_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < fnum_c_bitwidth) begin
                                    mem_fnum[read_fnum_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_fnum_data_done <= 1;
                    @(posedge clk);
                    read_one_fnum_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_23_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        workload_counter1_read_data_finish <= 0;
        read_workload_counter1_run_flag <= 0; 
        read_workload_counter1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (workload_counter1_c_bitwidth, workload_counter1_DEPTH, workload_counter1_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_workload_counter1_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            workload_counter1_read_data_finish <= 0;
            read_workload_counter1_count = 0; 
        end
        if (read_one_workload_counter1_data_done === 1) begin
            read_workload_counter1_count = read_workload_counter1_count + 1;
            if (read_workload_counter1_count == workload_counter1_OPERATE_DEPTH) begin
                read_workload_counter1_run_flag <= 0; 
                workload_counter1_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_workload_counter1
    integer read_workload_counter1_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = workload_counter1_c_bitwidth;
    process_num = 24;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_24_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_workload_counter1_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read workload_counter1 vld
                read (workload_counter1_valid_out_addr, RDATA_reg, read_workload_counter1_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read workload_counter1 data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (workload_counter1_data_out_addr + read_workload_counter1_count * four_byte_num * 4 + i * 4, RDATA_reg, read_workload_counter1_resp);
                        if (workload_counter1_c_bitwidth < 32) begin
                            mem_workload_counter1[read_workload_counter1_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < workload_counter1_c_bitwidth) begin
                                    mem_workload_counter1[read_workload_counter1_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_workload_counter1_data_done <= 1;
                    @(posedge clk);
                    read_one_workload_counter1_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_24_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        workload_counter2_read_data_finish <= 0;
        read_workload_counter2_run_flag <= 0; 
        read_workload_counter2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (workload_counter2_c_bitwidth, workload_counter2_DEPTH, workload_counter2_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_workload_counter2_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            workload_counter2_read_data_finish <= 0;
            read_workload_counter2_count = 0; 
        end
        if (read_one_workload_counter2_data_done === 1) begin
            read_workload_counter2_count = read_workload_counter2_count + 1;
            if (read_workload_counter2_count == workload_counter2_OPERATE_DEPTH) begin
                read_workload_counter2_run_flag <= 0; 
                workload_counter2_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_workload_counter2
    integer read_workload_counter2_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = workload_counter2_c_bitwidth;
    process_num = 25;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_25_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_workload_counter2_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read workload_counter2 vld
                read (workload_counter2_valid_out_addr, RDATA_reg, read_workload_counter2_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read workload_counter2 data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (workload_counter2_data_out_addr + read_workload_counter2_count * four_byte_num * 4 + i * 4, RDATA_reg, read_workload_counter2_resp);
                        if (workload_counter2_c_bitwidth < 32) begin
                            mem_workload_counter2[read_workload_counter2_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < workload_counter2_c_bitwidth) begin
                                    mem_workload_counter2[read_workload_counter2_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_workload_counter2_data_done <= 1;
                    @(posedge clk);
                    read_one_workload_counter2_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_25_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        workload_counter3_read_data_finish <= 0;
        read_workload_counter3_run_flag <= 0; 
        read_workload_counter3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (workload_counter3_c_bitwidth, workload_counter3_DEPTH, workload_counter3_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_workload_counter3_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            workload_counter3_read_data_finish <= 0;
            read_workload_counter3_count = 0; 
        end
        if (read_one_workload_counter3_data_done === 1) begin
            read_workload_counter3_count = read_workload_counter3_count + 1;
            if (read_workload_counter3_count == workload_counter3_OPERATE_DEPTH) begin
                read_workload_counter3_run_flag <= 0; 
                workload_counter3_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_workload_counter3
    integer read_workload_counter3_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = workload_counter3_c_bitwidth;
    process_num = 26;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_26_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_workload_counter3_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read workload_counter3 vld
                read (workload_counter3_valid_out_addr, RDATA_reg, read_workload_counter3_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read workload_counter3 data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (workload_counter3_data_out_addr + read_workload_counter3_count * four_byte_num * 4 + i * 4, RDATA_reg, read_workload_counter3_resp);
                        if (workload_counter3_c_bitwidth < 32) begin
                            mem_workload_counter3[read_workload_counter3_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < workload_counter3_c_bitwidth) begin
                                    mem_workload_counter3[read_workload_counter3_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_workload_counter3_data_done <= 1;
                    @(posedge clk);
                    read_one_workload_counter3_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_26_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        workload_counter4_read_data_finish <= 0;
        read_workload_counter4_run_flag <= 0; 
        read_workload_counter4_count = 0;
        count_operate_depth_by_bitwidth_and_depth (workload_counter4_c_bitwidth, workload_counter4_DEPTH, workload_counter4_OPERATE_DEPTH);
    end
    else begin
        if (AESL_done_index_reg === 1) begin
            read_workload_counter4_run_flag = 1; 
        end
        if (TRAN_ctr_transaction_done_in === 1) begin
            workload_counter4_read_data_finish <= 0;
            read_workload_counter4_count = 0; 
        end
        if (read_one_workload_counter4_data_done === 1) begin
            read_workload_counter4_count = read_workload_counter4_count + 1;
            if (read_workload_counter4_count == workload_counter4_OPERATE_DEPTH) begin
                read_workload_counter4_run_flag <= 0; 
                workload_counter4_read_data_finish <= 1;
            end
        end
    end
end

initial begin : read_workload_counter4
    integer read_workload_counter4_resp;
    integer process_num;
    integer get_vld;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;

    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = workload_counter4_c_bitwidth;
    process_num = 27;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_27_finish <= 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (read_workload_counter4_run_flag === 1) begin
                process_busy = 1;
                get_vld = 0;
                //read workload_counter4 vld
                read (workload_counter4_valid_out_addr, RDATA_reg, read_workload_counter4_resp);
                if (RDATA_reg[0 : 0] == 1) begin
                    get_vld = 1;
                end
                if (get_vld == 1) begin
                    //read workload_counter4 data 
                    for (i = 0 ; i < four_byte_num ; i = i+1) begin
                        read (workload_counter4_data_out_addr + read_workload_counter4_count * four_byte_num * 4 + i * 4, RDATA_reg, read_workload_counter4_resp);
                        if (workload_counter4_c_bitwidth < 32) begin
                            mem_workload_counter4[read_workload_counter4_count] <= RDATA_reg;
                        end
                        else begin
                            for (j=0 ; j < 32 ; j = j + 1) begin
                                if (i*32 + j < workload_counter4_c_bitwidth) begin
                                    mem_workload_counter4[read_workload_counter4_count][i*32 + j] <= RDATA_reg[j];
                                end
                            end
                        end
                    end
                    
                    read_one_workload_counter4_data_done <= 1;
                    @(posedge clk);
                    read_one_workload_counter4_data_done <= 0;
                end    
                process_busy = 0;
            end    
            process_27_finish <= 1;
        end
        @(posedge clk);
    end    
end
//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [127 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_arnum_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [arnum_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (arnum_c_bitwidth , factor);
  fp = $fopen(`TV_IN_arnum ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_arnum); 
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
      for(i = 0; i < arnum_DEPTH; i = i + 1) begin 
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
                  mem_arnum [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_arnum [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_arnum [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_arnum [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_arnum [i/factor] = tmp_cache_mem;
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
 
task write_binary_arnum;
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
initial begin : read_brnum_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [brnum_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (brnum_c_bitwidth , factor);
  fp = $fopen(`TV_IN_brnum ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_brnum); 
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
      for(i = 0; i < brnum_DEPTH; i = i + 1) begin 
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
                  mem_brnum [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_brnum [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_brnum [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_brnum [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_brnum [i/factor] = tmp_cache_mem;
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
 
task write_binary_brnum;
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
initial begin : read_B_rcsr_base_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [B_rcsr_base_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_rcsr_base_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_rcsr_base ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_rcsr_base); 
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
      for(i = 0; i < B_rcsr_base_DEPTH; i = i + 1) begin 
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
                  mem_B_rcsr_base [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_rcsr_base [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_rcsr_base [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_rcsr_base [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_rcsr_base [i/factor] = tmp_cache_mem;
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
 
task write_binary_B_rcsr_base;
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
initial begin : read_B_val_base_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [B_val_base_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_val_base_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_val_base ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_val_base); 
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
      for(i = 0; i < B_val_base_DEPTH; i = i + 1) begin 
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
                  mem_B_val_base [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_val_base [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_val_base [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_val_base [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_val_base [i/factor] = tmp_cache_mem;
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
 
task write_binary_B_val_base;
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
initial begin : read_B_cid_base_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [B_cid_base_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (B_cid_base_c_bitwidth , factor);
  fp = $fopen(`TV_IN_B_cid_base ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_B_cid_base); 
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
      for(i = 0; i < B_cid_base_DEPTH; i = i + 1) begin 
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
                  mem_B_cid_base [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_B_cid_base [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_B_cid_base [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_B_cid_base [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_B_cid_base [i/factor] = tmp_cache_mem;
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
 
task write_binary_B_cid_base;
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
task write_binary_r1acc;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_r1acc_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [r1acc_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (r1acc_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (r1acc_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_r1acc, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_r1acc); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (r1acc_DEPTH - r1acc_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r1acc[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r1acc[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_r1acc[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_r1acc[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r1acc[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r1acc[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r1acc[i]);
          end
      end 
      if (factor == 4) begin
          if ((r1acc_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_r1acc[r1acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r1acc[r1acc_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_r1acc[r1acc_DEPTH / factor][23:16]);
          end
          if ((r1acc_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r1acc[r1acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r1acc[r1acc_DEPTH / factor][15:8]);
          end
          if ((r1acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r1acc[r1acc_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((r1acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r1acc[r1acc_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_r1hit;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_r1hit_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [r1hit_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (r1hit_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (r1hit_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_r1hit, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_r1hit); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (r1hit_DEPTH - r1hit_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r1hit[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r1hit[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_r1hit[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_r1hit[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r1hit[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r1hit[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r1hit[i]);
          end
      end 
      if (factor == 4) begin
          if ((r1hit_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_r1hit[r1hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r1hit[r1hit_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_r1hit[r1hit_DEPTH / factor][23:16]);
          end
          if ((r1hit_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r1hit[r1hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r1hit[r1hit_DEPTH / factor][15:8]);
          end
          if ((r1hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r1hit[r1hit_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((r1hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r1hit[r1hit_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_r2acc;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_r2acc_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [r2acc_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (r2acc_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (r2acc_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_r2acc, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_r2acc); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (r2acc_DEPTH - r2acc_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r2acc[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r2acc[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_r2acc[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_r2acc[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r2acc[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r2acc[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r2acc[i]);
          end
      end 
      if (factor == 4) begin
          if ((r2acc_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_r2acc[r2acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r2acc[r2acc_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_r2acc[r2acc_DEPTH / factor][23:16]);
          end
          if ((r2acc_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r2acc[r2acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r2acc[r2acc_DEPTH / factor][15:8]);
          end
          if ((r2acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r2acc[r2acc_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((r2acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r2acc[r2acc_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_r2hit;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_r2hit_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [r2hit_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (r2hit_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (r2hit_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_r2hit, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_r2hit); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (r2hit_DEPTH - r2hit_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r2hit[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r2hit[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_r2hit[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_r2hit[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r2hit[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r2hit[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r2hit[i]);
          end
      end 
      if (factor == 4) begin
          if ((r2hit_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_r2hit[r2hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r2hit[r2hit_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_r2hit[r2hit_DEPTH / factor][23:16]);
          end
          if ((r2hit_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r2hit[r2hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r2hit[r2hit_DEPTH / factor][15:8]);
          end
          if ((r2hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r2hit[r2hit_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((r2hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r2hit[r2hit_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_r3acc;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_r3acc_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [r3acc_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (r3acc_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (r3acc_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_r3acc, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_r3acc); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (r3acc_DEPTH - r3acc_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r3acc[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r3acc[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_r3acc[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_r3acc[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r3acc[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r3acc[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r3acc[i]);
          end
      end 
      if (factor == 4) begin
          if ((r3acc_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_r3acc[r3acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r3acc[r3acc_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_r3acc[r3acc_DEPTH / factor][23:16]);
          end
          if ((r3acc_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r3acc[r3acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r3acc[r3acc_DEPTH / factor][15:8]);
          end
          if ((r3acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r3acc[r3acc_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((r3acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r3acc[r3acc_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_r3hit;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_r3hit_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [r3hit_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (r3hit_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (r3hit_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_r3hit, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_r3hit); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (r3hit_DEPTH - r3hit_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r3hit[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r3hit[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_r3hit[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_r3hit[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r3hit[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r3hit[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r3hit[i]);
          end
      end 
      if (factor == 4) begin
          if ((r3hit_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_r3hit[r3hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r3hit[r3hit_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_r3hit[r3hit_DEPTH / factor][23:16]);
          end
          if ((r3hit_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r3hit[r3hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r3hit[r3hit_DEPTH / factor][15:8]);
          end
          if ((r3hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r3hit[r3hit_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((r3hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r3hit[r3hit_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_r4acc;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_r4acc_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [r4acc_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (r4acc_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (r4acc_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_r4acc, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_r4acc); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (r4acc_DEPTH - r4acc_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r4acc[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r4acc[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_r4acc[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_r4acc[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r4acc[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r4acc[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r4acc[i]);
          end
      end 
      if (factor == 4) begin
          if ((r4acc_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_r4acc[r4acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r4acc[r4acc_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_r4acc[r4acc_DEPTH / factor][23:16]);
          end
          if ((r4acc_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r4acc[r4acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r4acc[r4acc_DEPTH / factor][15:8]);
          end
          if ((r4acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r4acc[r4acc_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((r4acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r4acc[r4acc_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_r4hit;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_r4hit_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [r4hit_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (r4hit_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (r4hit_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_r4hit, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_r4hit); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (r4hit_DEPTH - r4hit_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r4hit[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r4hit[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_r4hit[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_r4hit[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_r4hit[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_r4hit[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r4hit[i]);
          end
      end 
      if (factor == 4) begin
          if ((r4hit_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_r4hit[r4hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r4hit[r4hit_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_r4hit[r4hit_DEPTH / factor][23:16]);
          end
          if ((r4hit_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_r4hit[r4hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_r4hit[r4hit_DEPTH / factor][15:8]);
          end
          if ((r4hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r4hit[r4hit_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((r4hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_r4hit[r4hit_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_vc1acc;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_vc1acc_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [vc1acc_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (vc1acc_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (vc1acc_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_vc1acc, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_vc1acc); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (vc1acc_DEPTH - vc1acc_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc1acc[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc1acc[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_vc1acc[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_vc1acc[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc1acc[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc1acc[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc1acc[i]);
          end
      end 
      if (factor == 4) begin
          if ((vc1acc_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_vc1acc[vc1acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc1acc[vc1acc_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_vc1acc[vc1acc_DEPTH / factor][23:16]);
          end
          if ((vc1acc_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc1acc[vc1acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc1acc[vc1acc_DEPTH / factor][15:8]);
          end
          if ((vc1acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc1acc[vc1acc_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((vc1acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc1acc[vc1acc_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_vc1hit;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_vc1hit_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [vc1hit_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (vc1hit_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (vc1hit_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_vc1hit, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_vc1hit); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (vc1hit_DEPTH - vc1hit_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc1hit[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc1hit[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_vc1hit[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_vc1hit[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc1hit[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc1hit[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc1hit[i]);
          end
      end 
      if (factor == 4) begin
          if ((vc1hit_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_vc1hit[vc1hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc1hit[vc1hit_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_vc1hit[vc1hit_DEPTH / factor][23:16]);
          end
          if ((vc1hit_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc1hit[vc1hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc1hit[vc1hit_DEPTH / factor][15:8]);
          end
          if ((vc1hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc1hit[vc1hit_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((vc1hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc1hit[vc1hit_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_vc2acc;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_vc2acc_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [vc2acc_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (vc2acc_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (vc2acc_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_vc2acc, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_vc2acc); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (vc2acc_DEPTH - vc2acc_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc2acc[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc2acc[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_vc2acc[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_vc2acc[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc2acc[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc2acc[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc2acc[i]);
          end
      end 
      if (factor == 4) begin
          if ((vc2acc_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_vc2acc[vc2acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc2acc[vc2acc_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_vc2acc[vc2acc_DEPTH / factor][23:16]);
          end
          if ((vc2acc_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc2acc[vc2acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc2acc[vc2acc_DEPTH / factor][15:8]);
          end
          if ((vc2acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc2acc[vc2acc_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((vc2acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc2acc[vc2acc_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_vc2hit;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_vc2hit_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [vc2hit_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (vc2hit_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (vc2hit_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_vc2hit, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_vc2hit); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (vc2hit_DEPTH - vc2hit_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc2hit[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc2hit[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_vc2hit[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_vc2hit[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc2hit[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc2hit[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc2hit[i]);
          end
      end 
      if (factor == 4) begin
          if ((vc2hit_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_vc2hit[vc2hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc2hit[vc2hit_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_vc2hit[vc2hit_DEPTH / factor][23:16]);
          end
          if ((vc2hit_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc2hit[vc2hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc2hit[vc2hit_DEPTH / factor][15:8]);
          end
          if ((vc2hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc2hit[vc2hit_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((vc2hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc2hit[vc2hit_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_vc3acc;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_vc3acc_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [vc3acc_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (vc3acc_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (vc3acc_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_vc3acc, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_vc3acc); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (vc3acc_DEPTH - vc3acc_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc3acc[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc3acc[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_vc3acc[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_vc3acc[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc3acc[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc3acc[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc3acc[i]);
          end
      end 
      if (factor == 4) begin
          if ((vc3acc_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_vc3acc[vc3acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc3acc[vc3acc_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_vc3acc[vc3acc_DEPTH / factor][23:16]);
          end
          if ((vc3acc_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc3acc[vc3acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc3acc[vc3acc_DEPTH / factor][15:8]);
          end
          if ((vc3acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc3acc[vc3acc_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((vc3acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc3acc[vc3acc_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_vc3hit;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_vc3hit_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [vc3hit_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (vc3hit_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (vc3hit_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_vc3hit, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_vc3hit); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (vc3hit_DEPTH - vc3hit_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc3hit[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc3hit[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_vc3hit[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_vc3hit[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc3hit[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc3hit[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc3hit[i]);
          end
      end 
      if (factor == 4) begin
          if ((vc3hit_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_vc3hit[vc3hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc3hit[vc3hit_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_vc3hit[vc3hit_DEPTH / factor][23:16]);
          end
          if ((vc3hit_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc3hit[vc3hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc3hit[vc3hit_DEPTH / factor][15:8]);
          end
          if ((vc3hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc3hit[vc3hit_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((vc3hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc3hit[vc3hit_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_vc4acc;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_vc4acc_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [vc4acc_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (vc4acc_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (vc4acc_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_vc4acc, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_vc4acc); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (vc4acc_DEPTH - vc4acc_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc4acc[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc4acc[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_vc4acc[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_vc4acc[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc4acc[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc4acc[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc4acc[i]);
          end
      end 
      if (factor == 4) begin
          if ((vc4acc_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_vc4acc[vc4acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc4acc[vc4acc_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_vc4acc[vc4acc_DEPTH / factor][23:16]);
          end
          if ((vc4acc_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc4acc[vc4acc_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc4acc[vc4acc_DEPTH / factor][15:8]);
          end
          if ((vc4acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc4acc[vc4acc_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((vc4acc_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc4acc[vc4acc_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_vc4hit;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_vc4hit_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [vc4hit_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (vc4hit_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (vc4hit_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_vc4hit, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_vc4hit); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (vc4hit_DEPTH - vc4hit_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc4hit[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc4hit[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_vc4hit[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_vc4hit[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_vc4hit[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_vc4hit[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc4hit[i]);
          end
      end 
      if (factor == 4) begin
          if ((vc4hit_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_vc4hit[vc4hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc4hit[vc4hit_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_vc4hit[vc4hit_DEPTH / factor][23:16]);
          end
          if ((vc4hit_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_vc4hit[vc4hit_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_vc4hit[vc4hit_DEPTH / factor][15:8]);
          end
          if ((vc4hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc4hit[vc4hit_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((vc4hit_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_vc4hit[vc4hit_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_fnum;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_fnum_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [fnum_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (fnum_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (fnum_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_fnum, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_fnum); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (fnum_DEPTH - fnum_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_fnum[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_fnum[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_fnum[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_fnum[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_fnum[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_fnum[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_fnum[i]);
          end
      end 
      if (factor == 4) begin
          if ((fnum_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_fnum[fnum_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_fnum[fnum_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_fnum[fnum_DEPTH / factor][23:16]);
          end
          if ((fnum_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_fnum[fnum_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_fnum[fnum_DEPTH / factor][15:8]);
          end
          if ((fnum_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_fnum[fnum_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((fnum_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_fnum[fnum_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_workload_counter1;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_workload_counter1_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [workload_counter1_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (workload_counter1_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (workload_counter1_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_workload_counter1, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_workload_counter1); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (workload_counter1_DEPTH - workload_counter1_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_workload_counter1[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_workload_counter1[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_workload_counter1[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_workload_counter1[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_workload_counter1[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_workload_counter1[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_workload_counter1[i]);
          end
      end 
      if (factor == 4) begin
          if ((workload_counter1_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_workload_counter1[workload_counter1_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_workload_counter1[workload_counter1_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_workload_counter1[workload_counter1_DEPTH / factor][23:16]);
          end
          if ((workload_counter1_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_workload_counter1[workload_counter1_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_workload_counter1[workload_counter1_DEPTH / factor][15:8]);
          end
          if ((workload_counter1_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_workload_counter1[workload_counter1_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((workload_counter1_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_workload_counter1[workload_counter1_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_workload_counter2;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_workload_counter2_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [workload_counter2_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (workload_counter2_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (workload_counter2_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_workload_counter2, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_workload_counter2); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (workload_counter2_DEPTH - workload_counter2_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_workload_counter2[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_workload_counter2[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_workload_counter2[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_workload_counter2[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_workload_counter2[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_workload_counter2[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_workload_counter2[i]);
          end
      end 
      if (factor == 4) begin
          if ((workload_counter2_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_workload_counter2[workload_counter2_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_workload_counter2[workload_counter2_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_workload_counter2[workload_counter2_DEPTH / factor][23:16]);
          end
          if ((workload_counter2_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_workload_counter2[workload_counter2_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_workload_counter2[workload_counter2_DEPTH / factor][15:8]);
          end
          if ((workload_counter2_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_workload_counter2[workload_counter2_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((workload_counter2_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_workload_counter2[workload_counter2_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_workload_counter3;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_workload_counter3_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [workload_counter3_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (workload_counter3_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (workload_counter3_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_workload_counter3, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_workload_counter3); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (workload_counter3_DEPTH - workload_counter3_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_workload_counter3[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_workload_counter3[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_workload_counter3[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_workload_counter3[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_workload_counter3[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_workload_counter3[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_workload_counter3[i]);
          end
      end 
      if (factor == 4) begin
          if ((workload_counter3_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_workload_counter3[workload_counter3_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_workload_counter3[workload_counter3_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_workload_counter3[workload_counter3_DEPTH / factor][23:16]);
          end
          if ((workload_counter3_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_workload_counter3[workload_counter3_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_workload_counter3[workload_counter3_DEPTH / factor][15:8]);
          end
          if ((workload_counter3_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_workload_counter3[workload_counter3_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((workload_counter3_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_workload_counter3[workload_counter3_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
task write_binary_workload_counter4;
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
//------------------------Write file----------------------- 
 
// Write data to file 
 
initial begin : write_workload_counter4_file_proc 
  integer fp; 
  integer factor; 
  integer transaction_idx; 
  reg [workload_counter4_c_bitwidth - 1 : 0] tmp_cache_mem; 
  reg [ 100*8 : 1] str;
  reg [63:0] bin_data;
  integer i; 
  transaction_idx = 0; 
  count_seperate_factor_by_bitwidth (workload_counter4_c_bitwidth , factor);
  while(1) begin 
      @(posedge clk);
      while (workload_counter4_read_data_finish !== 1 || TRAN_ctr_transaction_done_in === 1) begin
          @(posedge clk);
      end
      # 0.1;
      fp = $fopen(`TV_OUT_workload_counter4, "a"); 
      if(fp == 0) begin       // Failed to open file 
          $display("Failed to open file \"%s\"!", `TV_OUT_workload_counter4); 
          $finish; 
      end 
      $fdisplay(fp, "[[transaction]] %d", transaction_idx);
      for (i = 0; i < (workload_counter4_DEPTH - workload_counter4_DEPTH % factor); i = i + 1) begin
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_workload_counter4[i/factor][7:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_workload_counter4[i/factor][15:8];
              end
              if (i%factor == 2) begin
                  tmp_cache_mem = mem_workload_counter4[i/factor][23:16];
              end
              if (i%factor == 3) begin
                  tmp_cache_mem = mem_workload_counter4[i/factor][31:24];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem = mem_workload_counter4[i/factor][15:0];
              end
              if (i%factor == 1) begin
                  tmp_cache_mem = mem_workload_counter4[i/factor][31:16];
              end
              $fdisplay(fp,"0x%x",tmp_cache_mem);
          end
          if (factor == 1) begin
              $fdisplay(fp,"0x%x",mem_workload_counter4[i]);
          end
      end 
      if (factor == 4) begin
          if ((workload_counter4_DEPTH - 1) % factor == 2) begin
              $fdisplay(fp,"0x%x",mem_workload_counter4[workload_counter4_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_workload_counter4[workload_counter4_DEPTH / factor][15:8]);
              $fdisplay(fp,"0x%x",mem_workload_counter4[workload_counter4_DEPTH / factor][23:16]);
          end
          if ((workload_counter4_DEPTH - 1) % factor == 1) begin
              $fdisplay(fp,"0x%x",mem_workload_counter4[workload_counter4_DEPTH / factor][7:0]);
              $fdisplay(fp,"0x%x",mem_workload_counter4[workload_counter4_DEPTH / factor][15:8]);
          end
          if ((workload_counter4_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_workload_counter4[workload_counter4_DEPTH / factor][7:0]);
          end
      end
      if (factor == 2) begin
          if ((workload_counter4_DEPTH - 1) % factor == 0) begin
              $fdisplay(fp,"0x%x",mem_workload_counter4[workload_counter4_DEPTH / factor][15:0]);
          end
      end
      $fdisplay(fp, "[[/transaction]]");
      transaction_idx = transaction_idx + 1;
      $fclose(fp); 
      while (TRAN_ctr_start_in !== 1) begin
          @(posedge clk);
      end
  end 
end 
 
endmodule
