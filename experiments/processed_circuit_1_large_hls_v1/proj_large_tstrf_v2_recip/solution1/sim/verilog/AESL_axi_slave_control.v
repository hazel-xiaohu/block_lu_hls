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
    TRAN_control_idle_out,
    TRAN_control_ready_out,
    TRAN_control_ready_in,
    TRAN_control_done_out,
    TRAN_control_write_start_in   ,
    TRAN_control_write_start_finish,
    TRAN_control_interrupt,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_u_col_ptr "../tv/cdatafile/c.large_tstrf_v2.autotvin_u_col_ptr.dat"
`define TV_IN_u_row_idx "../tv/cdatafile/c.large_tstrf_v2.autotvin_u_row_idx.dat"
`define TV_IN_u_csr_val "../tv/cdatafile/c.large_tstrf_v2.autotvin_u_csr_val.dat"
`define TV_IN_u_csc_to_csr "../tv/cdatafile/c.large_tstrf_v2.autotvin_u_csc_to_csr.dat"
`define TV_IN_u_diag_pos "../tv/cdatafile/c.large_tstrf_v2.autotvin_u_diag_pos.dat"
`define TV_IN_b_ptr "../tv/cdatafile/c.large_tstrf_v2.autotvin_b_ptr.dat"
`define TV_IN_b_idx "../tv/cdatafile/c.large_tstrf_v2.autotvin_b_idx.dat"
`define TV_IN_b_val "../tv/cdatafile/c.large_tstrf_v2.autotvin_b_val.dat"
`define TV_IN_x_ptr "../tv/cdatafile/c.large_tstrf_v2.autotvin_x_ptr.dat"
`define TV_IN_x_idx "../tv/cdatafile/c.large_tstrf_v2.autotvin_x_idx.dat"
`define TV_IN_x_val "../tv/cdatafile/c.large_tstrf_v2.autotvin_x_val.dat"
`define TV_IN_active_rows "../tv/cdatafile/c.large_tstrf_v2.autotvin_active_rows.dat"
parameter ADDR_WIDTH = 8;
parameter DATA_WIDTH = 32;
parameter u_col_ptr_DEPTH = 1;
reg [31 : 0] u_col_ptr_OPERATE_DEPTH = 0;
parameter u_col_ptr_c_bitwidth = 64;
parameter u_row_idx_DEPTH = 1;
reg [31 : 0] u_row_idx_OPERATE_DEPTH = 0;
parameter u_row_idx_c_bitwidth = 64;
parameter u_csr_val_DEPTH = 1;
reg [31 : 0] u_csr_val_OPERATE_DEPTH = 0;
parameter u_csr_val_c_bitwidth = 64;
parameter u_csc_to_csr_DEPTH = 1;
reg [31 : 0] u_csc_to_csr_OPERATE_DEPTH = 0;
parameter u_csc_to_csr_c_bitwidth = 64;
parameter u_diag_pos_DEPTH = 1;
reg [31 : 0] u_diag_pos_OPERATE_DEPTH = 0;
parameter u_diag_pos_c_bitwidth = 64;
parameter b_ptr_DEPTH = 1;
reg [31 : 0] b_ptr_OPERATE_DEPTH = 0;
parameter b_ptr_c_bitwidth = 64;
parameter b_idx_DEPTH = 1;
reg [31 : 0] b_idx_OPERATE_DEPTH = 0;
parameter b_idx_c_bitwidth = 64;
parameter b_val_DEPTH = 1;
reg [31 : 0] b_val_OPERATE_DEPTH = 0;
parameter b_val_c_bitwidth = 64;
parameter x_ptr_DEPTH = 1;
reg [31 : 0] x_ptr_OPERATE_DEPTH = 0;
parameter x_ptr_c_bitwidth = 64;
parameter x_idx_DEPTH = 1;
reg [31 : 0] x_idx_OPERATE_DEPTH = 0;
parameter x_idx_c_bitwidth = 64;
parameter x_val_DEPTH = 1;
reg [31 : 0] x_val_OPERATE_DEPTH = 0;
parameter x_val_c_bitwidth = 64;
parameter active_rows_DEPTH = 1;
reg [31 : 0] active_rows_OPERATE_DEPTH = 0;
parameter active_rows_c_bitwidth = 64;
parameter START_ADDR = 0;
parameter large_tstrf_v2_continue_addr = 0;
parameter large_tstrf_v2_auto_start_addr = 0;
parameter u_col_ptr_data_in_addr = 16;
parameter u_row_idx_data_in_addr = 28;
parameter u_csr_val_data_in_addr = 40;
parameter u_csc_to_csr_data_in_addr = 52;
parameter u_diag_pos_data_in_addr = 64;
parameter b_ptr_data_in_addr = 76;
parameter b_idx_data_in_addr = 88;
parameter b_val_data_in_addr = 100;
parameter x_ptr_data_in_addr = 112;
parameter x_idx_data_in_addr = 124;
parameter x_val_data_in_addr = 136;
parameter active_rows_data_in_addr = 148;
parameter work_data_in_addr = 160;
parameter STATUS_ADDR = 0;

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
output    TRAN_control_done_out;
output    TRAN_control_ready_out;
input     TRAN_control_ready_in;
output    TRAN_control_idle_out;
input  TRAN_control_write_start_in   ;
output TRAN_control_write_start_finish;
input     TRAN_control_interrupt;
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
reg [u_col_ptr_c_bitwidth - 1 : 0] mem_u_col_ptr [u_col_ptr_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_u_col_ptr [ (u_col_ptr_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * u_col_ptr_DEPTH -1 : 0] = '{default : 'hz};
reg u_col_ptr_write_data_finish;
reg [u_row_idx_c_bitwidth - 1 : 0] mem_u_row_idx [u_row_idx_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_u_row_idx [ (u_row_idx_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * u_row_idx_DEPTH -1 : 0] = '{default : 'hz};
reg u_row_idx_write_data_finish;
reg [u_csr_val_c_bitwidth - 1 : 0] mem_u_csr_val [u_csr_val_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_u_csr_val [ (u_csr_val_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * u_csr_val_DEPTH -1 : 0] = '{default : 'hz};
reg u_csr_val_write_data_finish;
reg [u_csc_to_csr_c_bitwidth - 1 : 0] mem_u_csc_to_csr [u_csc_to_csr_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_u_csc_to_csr [ (u_csc_to_csr_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * u_csc_to_csr_DEPTH -1 : 0] = '{default : 'hz};
reg u_csc_to_csr_write_data_finish;
reg [u_diag_pos_c_bitwidth - 1 : 0] mem_u_diag_pos [u_diag_pos_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_u_diag_pos [ (u_diag_pos_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * u_diag_pos_DEPTH -1 : 0] = '{default : 'hz};
reg u_diag_pos_write_data_finish;
reg [b_ptr_c_bitwidth - 1 : 0] mem_b_ptr [b_ptr_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_b_ptr [ (b_ptr_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * b_ptr_DEPTH -1 : 0] = '{default : 'hz};
reg b_ptr_write_data_finish;
reg [b_idx_c_bitwidth - 1 : 0] mem_b_idx [b_idx_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_b_idx [ (b_idx_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * b_idx_DEPTH -1 : 0] = '{default : 'hz};
reg b_idx_write_data_finish;
reg [b_val_c_bitwidth - 1 : 0] mem_b_val [b_val_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_b_val [ (b_val_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * b_val_DEPTH -1 : 0] = '{default : 'hz};
reg b_val_write_data_finish;
reg [x_ptr_c_bitwidth - 1 : 0] mem_x_ptr [x_ptr_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_x_ptr [ (x_ptr_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * x_ptr_DEPTH -1 : 0] = '{default : 'hz};
reg x_ptr_write_data_finish;
reg [x_idx_c_bitwidth - 1 : 0] mem_x_idx [x_idx_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_x_idx [ (x_idx_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * x_idx_DEPTH -1 : 0] = '{default : 'hz};
reg x_idx_write_data_finish;
reg [x_val_c_bitwidth - 1 : 0] mem_x_val [x_val_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_x_val [ (x_val_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * x_val_DEPTH -1 : 0] = '{default : 'hz};
reg x_val_write_data_finish;
reg [active_rows_c_bitwidth - 1 : 0] mem_active_rows [active_rows_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_active_rows [ (active_rows_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * active_rows_DEPTH -1 : 0] = '{default : 'hz};
reg active_rows_write_data_finish;
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
//write u_col_ptr reg
reg [31 : 0] write_u_col_ptr_count = 0;
reg write_u_col_ptr_run_flag = 0;
reg write_one_u_col_ptr_data_done = 0;
//write u_row_idx reg
reg [31 : 0] write_u_row_idx_count = 0;
reg write_u_row_idx_run_flag = 0;
reg write_one_u_row_idx_data_done = 0;
//write u_csr_val reg
reg [31 : 0] write_u_csr_val_count = 0;
reg write_u_csr_val_run_flag = 0;
reg write_one_u_csr_val_data_done = 0;
//write u_csc_to_csr reg
reg [31 : 0] write_u_csc_to_csr_count = 0;
reg write_u_csc_to_csr_run_flag = 0;
reg write_one_u_csc_to_csr_data_done = 0;
//write u_diag_pos reg
reg [31 : 0] write_u_diag_pos_count = 0;
reg write_u_diag_pos_run_flag = 0;
reg write_one_u_diag_pos_data_done = 0;
//write b_ptr reg
reg [31 : 0] write_b_ptr_count = 0;
reg write_b_ptr_run_flag = 0;
reg write_one_b_ptr_data_done = 0;
//write b_idx reg
reg [31 : 0] write_b_idx_count = 0;
reg write_b_idx_run_flag = 0;
reg write_one_b_idx_data_done = 0;
//write b_val reg
reg [31 : 0] write_b_val_count = 0;
reg write_b_val_run_flag = 0;
reg write_one_b_val_data_done = 0;
//write x_ptr reg
reg [31 : 0] write_x_ptr_count = 0;
reg write_x_ptr_run_flag = 0;
reg write_one_x_ptr_data_done = 0;
//write x_idx reg
reg [31 : 0] write_x_idx_count = 0;
reg write_x_idx_run_flag = 0;
reg write_one_x_idx_data_done = 0;
//write x_val reg
reg [31 : 0] write_x_val_count = 0;
reg write_x_val_run_flag = 0;
reg write_one_x_val_data_done = 0;
//write active_rows reg
reg [31 : 0] write_active_rows_count = 0;
reg write_active_rows_run_flag = 0;
reg write_one_active_rows_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

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
assign TRAN_control_write_start_finish = AESL_write_start_finish;
assign TRAN_control_done_out = AESL_done_index_reg;
assign TRAN_control_ready_out = AESL_ready_out_index_reg;
assign TRAN_control_idle_out = AESL_idle_index_reg;
assign TRAN_control_write_data_finish = 1 & u_col_ptr_write_data_finish & u_row_idx_write_data_finish & u_csr_val_write_data_finish & u_csc_to_csr_write_data_finish & u_diag_pos_write_data_finish & b_ptr_write_data_finish & b_idx_write_data_finish & b_val_write_data_finish & x_ptr_write_data_finish & x_idx_write_data_finish & x_val_write_data_finish & active_rows_write_data_finish;
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish or process_8_finish or process_9_finish or process_10_finish or process_11_finish or process_12_finish or process_13_finish ) begin
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
        u_col_ptr_write_data_finish <= 0;
        write_u_col_ptr_run_flag <= 0; 
        write_u_col_ptr_count = 0;
        count_operate_depth_by_bitwidth_and_depth (u_col_ptr_c_bitwidth, u_col_ptr_DEPTH, u_col_ptr_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            u_col_ptr_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_u_col_ptr_run_flag <= 1; 
            write_u_col_ptr_count = 0;
        end
        if (write_one_u_col_ptr_data_done === 1) begin
            write_u_col_ptr_count = write_u_col_ptr_count + 1;
            if (write_u_col_ptr_count == u_col_ptr_OPERATE_DEPTH) begin
                write_u_col_ptr_run_flag <= 0; 
                u_col_ptr_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_u_col_ptr
    integer write_u_col_ptr_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] u_col_ptr_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = u_col_ptr_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_u_col_ptr_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write u_col_ptr data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (u_col_ptr_c_bitwidth < 32) begin
                        u_col_ptr_data_tmp_reg = mem_u_col_ptr[write_u_col_ptr_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < u_col_ptr_c_bitwidth) begin
                                u_col_ptr_data_tmp_reg[j] = mem_u_col_ptr[write_u_col_ptr_count][i*32 + j];
                            end
                            else begin
                                u_col_ptr_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_u_col_ptr[write_u_col_ptr_count * four_byte_num  + i]!==u_col_ptr_data_tmp_reg) begin
                    write (u_col_ptr_data_in_addr + write_u_col_ptr_count * four_byte_num * 4 + i * 4, u_col_ptr_data_tmp_reg, write_u_col_ptr_resp);
                    image_mem_u_col_ptr[write_u_col_ptr_count * four_byte_num + i]=u_col_ptr_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_u_col_ptr_data_done <= 1;
                @(posedge clk);
                write_one_u_col_ptr_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        u_row_idx_write_data_finish <= 0;
        write_u_row_idx_run_flag <= 0; 
        write_u_row_idx_count = 0;
        count_operate_depth_by_bitwidth_and_depth (u_row_idx_c_bitwidth, u_row_idx_DEPTH, u_row_idx_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            u_row_idx_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_u_row_idx_run_flag <= 1; 
            write_u_row_idx_count = 0;
        end
        if (write_one_u_row_idx_data_done === 1) begin
            write_u_row_idx_count = write_u_row_idx_count + 1;
            if (write_u_row_idx_count == u_row_idx_OPERATE_DEPTH) begin
                write_u_row_idx_run_flag <= 0; 
                u_row_idx_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_u_row_idx
    integer write_u_row_idx_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] u_row_idx_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = u_row_idx_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_u_row_idx_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write u_row_idx data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (u_row_idx_c_bitwidth < 32) begin
                        u_row_idx_data_tmp_reg = mem_u_row_idx[write_u_row_idx_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < u_row_idx_c_bitwidth) begin
                                u_row_idx_data_tmp_reg[j] = mem_u_row_idx[write_u_row_idx_count][i*32 + j];
                            end
                            else begin
                                u_row_idx_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_u_row_idx[write_u_row_idx_count * four_byte_num  + i]!==u_row_idx_data_tmp_reg) begin
                    write (u_row_idx_data_in_addr + write_u_row_idx_count * four_byte_num * 4 + i * 4, u_row_idx_data_tmp_reg, write_u_row_idx_resp);
                    image_mem_u_row_idx[write_u_row_idx_count * four_byte_num + i]=u_row_idx_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_u_row_idx_data_done <= 1;
                @(posedge clk);
                write_one_u_row_idx_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        u_csr_val_write_data_finish <= 0;
        write_u_csr_val_run_flag <= 0; 
        write_u_csr_val_count = 0;
        count_operate_depth_by_bitwidth_and_depth (u_csr_val_c_bitwidth, u_csr_val_DEPTH, u_csr_val_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            u_csr_val_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_u_csr_val_run_flag <= 1; 
            write_u_csr_val_count = 0;
        end
        if (write_one_u_csr_val_data_done === 1) begin
            write_u_csr_val_count = write_u_csr_val_count + 1;
            if (write_u_csr_val_count == u_csr_val_OPERATE_DEPTH) begin
                write_u_csr_val_run_flag <= 0; 
                u_csr_val_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_u_csr_val
    integer write_u_csr_val_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] u_csr_val_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = u_csr_val_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_u_csr_val_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write u_csr_val data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (u_csr_val_c_bitwidth < 32) begin
                        u_csr_val_data_tmp_reg = mem_u_csr_val[write_u_csr_val_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < u_csr_val_c_bitwidth) begin
                                u_csr_val_data_tmp_reg[j] = mem_u_csr_val[write_u_csr_val_count][i*32 + j];
                            end
                            else begin
                                u_csr_val_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_u_csr_val[write_u_csr_val_count * four_byte_num  + i]!==u_csr_val_data_tmp_reg) begin
                    write (u_csr_val_data_in_addr + write_u_csr_val_count * four_byte_num * 4 + i * 4, u_csr_val_data_tmp_reg, write_u_csr_val_resp);
                    image_mem_u_csr_val[write_u_csr_val_count * four_byte_num + i]=u_csr_val_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_u_csr_val_data_done <= 1;
                @(posedge clk);
                write_one_u_csr_val_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        u_csc_to_csr_write_data_finish <= 0;
        write_u_csc_to_csr_run_flag <= 0; 
        write_u_csc_to_csr_count = 0;
        count_operate_depth_by_bitwidth_and_depth (u_csc_to_csr_c_bitwidth, u_csc_to_csr_DEPTH, u_csc_to_csr_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            u_csc_to_csr_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_u_csc_to_csr_run_flag <= 1; 
            write_u_csc_to_csr_count = 0;
        end
        if (write_one_u_csc_to_csr_data_done === 1) begin
            write_u_csc_to_csr_count = write_u_csc_to_csr_count + 1;
            if (write_u_csc_to_csr_count == u_csc_to_csr_OPERATE_DEPTH) begin
                write_u_csc_to_csr_run_flag <= 0; 
                u_csc_to_csr_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_u_csc_to_csr
    integer write_u_csc_to_csr_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] u_csc_to_csr_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = u_csc_to_csr_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_u_csc_to_csr_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write u_csc_to_csr data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (u_csc_to_csr_c_bitwidth < 32) begin
                        u_csc_to_csr_data_tmp_reg = mem_u_csc_to_csr[write_u_csc_to_csr_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < u_csc_to_csr_c_bitwidth) begin
                                u_csc_to_csr_data_tmp_reg[j] = mem_u_csc_to_csr[write_u_csc_to_csr_count][i*32 + j];
                            end
                            else begin
                                u_csc_to_csr_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_u_csc_to_csr[write_u_csc_to_csr_count * four_byte_num  + i]!==u_csc_to_csr_data_tmp_reg) begin
                    write (u_csc_to_csr_data_in_addr + write_u_csc_to_csr_count * four_byte_num * 4 + i * 4, u_csc_to_csr_data_tmp_reg, write_u_csc_to_csr_resp);
                    image_mem_u_csc_to_csr[write_u_csc_to_csr_count * four_byte_num + i]=u_csc_to_csr_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_u_csc_to_csr_data_done <= 1;
                @(posedge clk);
                write_one_u_csc_to_csr_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        u_diag_pos_write_data_finish <= 0;
        write_u_diag_pos_run_flag <= 0; 
        write_u_diag_pos_count = 0;
        count_operate_depth_by_bitwidth_and_depth (u_diag_pos_c_bitwidth, u_diag_pos_DEPTH, u_diag_pos_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            u_diag_pos_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_u_diag_pos_run_flag <= 1; 
            write_u_diag_pos_count = 0;
        end
        if (write_one_u_diag_pos_data_done === 1) begin
            write_u_diag_pos_count = write_u_diag_pos_count + 1;
            if (write_u_diag_pos_count == u_diag_pos_OPERATE_DEPTH) begin
                write_u_diag_pos_run_flag <= 0; 
                u_diag_pos_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_u_diag_pos
    integer write_u_diag_pos_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] u_diag_pos_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = u_diag_pos_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_u_diag_pos_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write u_diag_pos data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (u_diag_pos_c_bitwidth < 32) begin
                        u_diag_pos_data_tmp_reg = mem_u_diag_pos[write_u_diag_pos_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < u_diag_pos_c_bitwidth) begin
                                u_diag_pos_data_tmp_reg[j] = mem_u_diag_pos[write_u_diag_pos_count][i*32 + j];
                            end
                            else begin
                                u_diag_pos_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_u_diag_pos[write_u_diag_pos_count * four_byte_num  + i]!==u_diag_pos_data_tmp_reg) begin
                    write (u_diag_pos_data_in_addr + write_u_diag_pos_count * four_byte_num * 4 + i * 4, u_diag_pos_data_tmp_reg, write_u_diag_pos_resp);
                    image_mem_u_diag_pos[write_u_diag_pos_count * four_byte_num + i]=u_diag_pos_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_u_diag_pos_data_done <= 1;
                @(posedge clk);
                write_one_u_diag_pos_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        b_ptr_write_data_finish <= 0;
        write_b_ptr_run_flag <= 0; 
        write_b_ptr_count = 0;
        count_operate_depth_by_bitwidth_and_depth (b_ptr_c_bitwidth, b_ptr_DEPTH, b_ptr_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            b_ptr_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_b_ptr_run_flag <= 1; 
            write_b_ptr_count = 0;
        end
        if (write_one_b_ptr_data_done === 1) begin
            write_b_ptr_count = write_b_ptr_count + 1;
            if (write_b_ptr_count == b_ptr_OPERATE_DEPTH) begin
                write_b_ptr_run_flag <= 0; 
                b_ptr_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_b_ptr
    integer write_b_ptr_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] b_ptr_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = b_ptr_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_b_ptr_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write b_ptr data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (b_ptr_c_bitwidth < 32) begin
                        b_ptr_data_tmp_reg = mem_b_ptr[write_b_ptr_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < b_ptr_c_bitwidth) begin
                                b_ptr_data_tmp_reg[j] = mem_b_ptr[write_b_ptr_count][i*32 + j];
                            end
                            else begin
                                b_ptr_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_b_ptr[write_b_ptr_count * four_byte_num  + i]!==b_ptr_data_tmp_reg) begin
                    write (b_ptr_data_in_addr + write_b_ptr_count * four_byte_num * 4 + i * 4, b_ptr_data_tmp_reg, write_b_ptr_resp);
                    image_mem_b_ptr[write_b_ptr_count * four_byte_num + i]=b_ptr_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_b_ptr_data_done <= 1;
                @(posedge clk);
                write_one_b_ptr_data_done <= 0;
            end   
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        b_idx_write_data_finish <= 0;
        write_b_idx_run_flag <= 0; 
        write_b_idx_count = 0;
        count_operate_depth_by_bitwidth_and_depth (b_idx_c_bitwidth, b_idx_DEPTH, b_idx_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            b_idx_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_b_idx_run_flag <= 1; 
            write_b_idx_count = 0;
        end
        if (write_one_b_idx_data_done === 1) begin
            write_b_idx_count = write_b_idx_count + 1;
            if (write_b_idx_count == b_idx_OPERATE_DEPTH) begin
                write_b_idx_run_flag <= 0; 
                b_idx_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_b_idx
    integer write_b_idx_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] b_idx_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = b_idx_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_7_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_b_idx_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write b_idx data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (b_idx_c_bitwidth < 32) begin
                        b_idx_data_tmp_reg = mem_b_idx[write_b_idx_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < b_idx_c_bitwidth) begin
                                b_idx_data_tmp_reg[j] = mem_b_idx[write_b_idx_count][i*32 + j];
                            end
                            else begin
                                b_idx_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_b_idx[write_b_idx_count * four_byte_num  + i]!==b_idx_data_tmp_reg) begin
                    write (b_idx_data_in_addr + write_b_idx_count * four_byte_num * 4 + i * 4, b_idx_data_tmp_reg, write_b_idx_resp);
                    image_mem_b_idx[write_b_idx_count * four_byte_num + i]=b_idx_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_b_idx_data_done <= 1;
                @(posedge clk);
                write_one_b_idx_data_done <= 0;
            end   
            process_7_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        b_val_write_data_finish <= 0;
        write_b_val_run_flag <= 0; 
        write_b_val_count = 0;
        count_operate_depth_by_bitwidth_and_depth (b_val_c_bitwidth, b_val_DEPTH, b_val_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            b_val_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_b_val_run_flag <= 1; 
            write_b_val_count = 0;
        end
        if (write_one_b_val_data_done === 1) begin
            write_b_val_count = write_b_val_count + 1;
            if (write_b_val_count == b_val_OPERATE_DEPTH) begin
                write_b_val_run_flag <= 0; 
                b_val_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_b_val
    integer write_b_val_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] b_val_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = b_val_c_bitwidth;
    process_num = 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_8_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_b_val_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write b_val data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (b_val_c_bitwidth < 32) begin
                        b_val_data_tmp_reg = mem_b_val[write_b_val_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < b_val_c_bitwidth) begin
                                b_val_data_tmp_reg[j] = mem_b_val[write_b_val_count][i*32 + j];
                            end
                            else begin
                                b_val_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_b_val[write_b_val_count * four_byte_num  + i]!==b_val_data_tmp_reg) begin
                    write (b_val_data_in_addr + write_b_val_count * four_byte_num * 4 + i * 4, b_val_data_tmp_reg, write_b_val_resp);
                    image_mem_b_val[write_b_val_count * four_byte_num + i]=b_val_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_b_val_data_done <= 1;
                @(posedge clk);
                write_one_b_val_data_done <= 0;
            end   
            process_8_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        x_ptr_write_data_finish <= 0;
        write_x_ptr_run_flag <= 0; 
        write_x_ptr_count = 0;
        count_operate_depth_by_bitwidth_and_depth (x_ptr_c_bitwidth, x_ptr_DEPTH, x_ptr_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            x_ptr_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_x_ptr_run_flag <= 1; 
            write_x_ptr_count = 0;
        end
        if (write_one_x_ptr_data_done === 1) begin
            write_x_ptr_count = write_x_ptr_count + 1;
            if (write_x_ptr_count == x_ptr_OPERATE_DEPTH) begin
                write_x_ptr_run_flag <= 0; 
                x_ptr_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_x_ptr
    integer write_x_ptr_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] x_ptr_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = x_ptr_c_bitwidth;
    process_num = 9;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_9_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_x_ptr_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write x_ptr data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (x_ptr_c_bitwidth < 32) begin
                        x_ptr_data_tmp_reg = mem_x_ptr[write_x_ptr_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < x_ptr_c_bitwidth) begin
                                x_ptr_data_tmp_reg[j] = mem_x_ptr[write_x_ptr_count][i*32 + j];
                            end
                            else begin
                                x_ptr_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_x_ptr[write_x_ptr_count * four_byte_num  + i]!==x_ptr_data_tmp_reg) begin
                    write (x_ptr_data_in_addr + write_x_ptr_count * four_byte_num * 4 + i * 4, x_ptr_data_tmp_reg, write_x_ptr_resp);
                    image_mem_x_ptr[write_x_ptr_count * four_byte_num + i]=x_ptr_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_x_ptr_data_done <= 1;
                @(posedge clk);
                write_one_x_ptr_data_done <= 0;
            end   
            process_9_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        x_idx_write_data_finish <= 0;
        write_x_idx_run_flag <= 0; 
        write_x_idx_count = 0;
        count_operate_depth_by_bitwidth_and_depth (x_idx_c_bitwidth, x_idx_DEPTH, x_idx_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            x_idx_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_x_idx_run_flag <= 1; 
            write_x_idx_count = 0;
        end
        if (write_one_x_idx_data_done === 1) begin
            write_x_idx_count = write_x_idx_count + 1;
            if (write_x_idx_count == x_idx_OPERATE_DEPTH) begin
                write_x_idx_run_flag <= 0; 
                x_idx_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_x_idx
    integer write_x_idx_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] x_idx_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = x_idx_c_bitwidth;
    process_num = 10;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_10_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_x_idx_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write x_idx data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (x_idx_c_bitwidth < 32) begin
                        x_idx_data_tmp_reg = mem_x_idx[write_x_idx_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < x_idx_c_bitwidth) begin
                                x_idx_data_tmp_reg[j] = mem_x_idx[write_x_idx_count][i*32 + j];
                            end
                            else begin
                                x_idx_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_x_idx[write_x_idx_count * four_byte_num  + i]!==x_idx_data_tmp_reg) begin
                    write (x_idx_data_in_addr + write_x_idx_count * four_byte_num * 4 + i * 4, x_idx_data_tmp_reg, write_x_idx_resp);
                    image_mem_x_idx[write_x_idx_count * four_byte_num + i]=x_idx_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_x_idx_data_done <= 1;
                @(posedge clk);
                write_one_x_idx_data_done <= 0;
            end   
            process_10_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        x_val_write_data_finish <= 0;
        write_x_val_run_flag <= 0; 
        write_x_val_count = 0;
        count_operate_depth_by_bitwidth_and_depth (x_val_c_bitwidth, x_val_DEPTH, x_val_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            x_val_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_x_val_run_flag <= 1; 
            write_x_val_count = 0;
        end
        if (write_one_x_val_data_done === 1) begin
            write_x_val_count = write_x_val_count + 1;
            if (write_x_val_count == x_val_OPERATE_DEPTH) begin
                write_x_val_run_flag <= 0; 
                x_val_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_x_val
    integer write_x_val_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] x_val_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = x_val_c_bitwidth;
    process_num = 11;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_11_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_x_val_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write x_val data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (x_val_c_bitwidth < 32) begin
                        x_val_data_tmp_reg = mem_x_val[write_x_val_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < x_val_c_bitwidth) begin
                                x_val_data_tmp_reg[j] = mem_x_val[write_x_val_count][i*32 + j];
                            end
                            else begin
                                x_val_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_x_val[write_x_val_count * four_byte_num  + i]!==x_val_data_tmp_reg) begin
                    write (x_val_data_in_addr + write_x_val_count * four_byte_num * 4 + i * 4, x_val_data_tmp_reg, write_x_val_resp);
                    image_mem_x_val[write_x_val_count * four_byte_num + i]=x_val_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_x_val_data_done <= 1;
                @(posedge clk);
                write_one_x_val_data_done <= 0;
            end   
            process_11_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        active_rows_write_data_finish <= 0;
        write_active_rows_run_flag <= 0; 
        write_active_rows_count = 0;
        count_operate_depth_by_bitwidth_and_depth (active_rows_c_bitwidth, active_rows_DEPTH, active_rows_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            active_rows_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_active_rows_run_flag <= 1; 
            write_active_rows_count = 0;
        end
        if (write_one_active_rows_data_done === 1) begin
            write_active_rows_count = write_active_rows_count + 1;
            if (write_active_rows_count == active_rows_OPERATE_DEPTH) begin
                write_active_rows_run_flag <= 0; 
                active_rows_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_active_rows
    integer write_active_rows_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] active_rows_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = active_rows_c_bitwidth;
    process_num = 12;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_12_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_active_rows_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write active_rows data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (active_rows_c_bitwidth < 32) begin
                        active_rows_data_tmp_reg = mem_active_rows[write_active_rows_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < active_rows_c_bitwidth) begin
                                active_rows_data_tmp_reg[j] = mem_active_rows[write_active_rows_count][i*32 + j];
                            end
                            else begin
                                active_rows_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_active_rows[write_active_rows_count * four_byte_num  + i]!==active_rows_data_tmp_reg) begin
                    write (active_rows_data_in_addr + write_active_rows_count * four_byte_num * 4 + i * 4, active_rows_data_tmp_reg, write_active_rows_resp);
                    image_mem_active_rows[write_active_rows_count * four_byte_num + i]=active_rows_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_active_rows_data_done <= 1;
                @(posedge clk);
                write_one_active_rows_data_done <= 0;
            end   
            process_12_finish <= 1;
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
        else if (TRAN_control_write_start_in === 1) begin
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
    process_num = 13;
    while (1) begin
        process_13_finish = 0;
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
            process_13_finish <= 1;
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
initial begin : read_u_col_ptr_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [u_col_ptr_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (u_col_ptr_c_bitwidth , factor);
  fp = $fopen(`TV_IN_u_col_ptr ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_u_col_ptr); 
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
      for(i = 0; i < u_col_ptr_DEPTH; i = i + 1) begin 
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
                  mem_u_col_ptr [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_u_col_ptr [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_u_col_ptr [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_u_col_ptr [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_u_col_ptr [i/factor] = tmp_cache_mem;
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
 
task write_binary_u_col_ptr;
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
initial begin : read_u_row_idx_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [u_row_idx_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (u_row_idx_c_bitwidth , factor);
  fp = $fopen(`TV_IN_u_row_idx ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_u_row_idx); 
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
      for(i = 0; i < u_row_idx_DEPTH; i = i + 1) begin 
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
                  mem_u_row_idx [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_u_row_idx [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_u_row_idx [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_u_row_idx [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_u_row_idx [i/factor] = tmp_cache_mem;
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
 
task write_binary_u_row_idx;
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
initial begin : read_u_csr_val_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [u_csr_val_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (u_csr_val_c_bitwidth , factor);
  fp = $fopen(`TV_IN_u_csr_val ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_u_csr_val); 
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
      for(i = 0; i < u_csr_val_DEPTH; i = i + 1) begin 
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
                  mem_u_csr_val [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_u_csr_val [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_u_csr_val [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_u_csr_val [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_u_csr_val [i/factor] = tmp_cache_mem;
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
 
task write_binary_u_csr_val;
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
initial begin : read_u_csc_to_csr_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [u_csc_to_csr_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (u_csc_to_csr_c_bitwidth , factor);
  fp = $fopen(`TV_IN_u_csc_to_csr ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_u_csc_to_csr); 
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
      for(i = 0; i < u_csc_to_csr_DEPTH; i = i + 1) begin 
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
                  mem_u_csc_to_csr [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_u_csc_to_csr [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_u_csc_to_csr [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_u_csc_to_csr [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_u_csc_to_csr [i/factor] = tmp_cache_mem;
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
 
task write_binary_u_csc_to_csr;
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
initial begin : read_u_diag_pos_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [u_diag_pos_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (u_diag_pos_c_bitwidth , factor);
  fp = $fopen(`TV_IN_u_diag_pos ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_u_diag_pos); 
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
      for(i = 0; i < u_diag_pos_DEPTH; i = i + 1) begin 
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
                  mem_u_diag_pos [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_u_diag_pos [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_u_diag_pos [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_u_diag_pos [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_u_diag_pos [i/factor] = tmp_cache_mem;
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
 
task write_binary_u_diag_pos;
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
initial begin : read_b_ptr_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [b_ptr_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (b_ptr_c_bitwidth , factor);
  fp = $fopen(`TV_IN_b_ptr ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_b_ptr); 
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
      for(i = 0; i < b_ptr_DEPTH; i = i + 1) begin 
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
                  mem_b_ptr [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_b_ptr [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_b_ptr [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_b_ptr [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_b_ptr [i/factor] = tmp_cache_mem;
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
 
task write_binary_b_ptr;
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
initial begin : read_b_idx_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [b_idx_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (b_idx_c_bitwidth , factor);
  fp = $fopen(`TV_IN_b_idx ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_b_idx); 
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
      for(i = 0; i < b_idx_DEPTH; i = i + 1) begin 
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
                  mem_b_idx [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_b_idx [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_b_idx [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_b_idx [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_b_idx [i/factor] = tmp_cache_mem;
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
 
task write_binary_b_idx;
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
initial begin : read_b_val_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [b_val_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (b_val_c_bitwidth , factor);
  fp = $fopen(`TV_IN_b_val ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_b_val); 
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
      for(i = 0; i < b_val_DEPTH; i = i + 1) begin 
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
                  mem_b_val [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_b_val [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_b_val [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_b_val [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_b_val [i/factor] = tmp_cache_mem;
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
 
task write_binary_b_val;
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
initial begin : read_x_ptr_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [x_ptr_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (x_ptr_c_bitwidth , factor);
  fp = $fopen(`TV_IN_x_ptr ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_x_ptr); 
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
      for(i = 0; i < x_ptr_DEPTH; i = i + 1) begin 
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
                  mem_x_ptr [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_x_ptr [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_x_ptr [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_x_ptr [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_x_ptr [i/factor] = tmp_cache_mem;
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
 
task write_binary_x_ptr;
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
initial begin : read_x_idx_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [x_idx_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (x_idx_c_bitwidth , factor);
  fp = $fopen(`TV_IN_x_idx ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_x_idx); 
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
      for(i = 0; i < x_idx_DEPTH; i = i + 1) begin 
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
                  mem_x_idx [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_x_idx [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_x_idx [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_x_idx [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_x_idx [i/factor] = tmp_cache_mem;
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
 
task write_binary_x_idx;
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
initial begin : read_x_val_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [x_val_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (x_val_c_bitwidth , factor);
  fp = $fopen(`TV_IN_x_val ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_x_val); 
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
      for(i = 0; i < x_val_DEPTH; i = i + 1) begin 
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
                  mem_x_val [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_x_val [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_x_val [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_x_val [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_x_val [i/factor] = tmp_cache_mem;
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
 
task write_binary_x_val;
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
initial begin : read_active_rows_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [active_rows_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (active_rows_c_bitwidth , factor);
  fp = $fopen(`TV_IN_active_rows ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_active_rows); 
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
      for(i = 0; i < active_rows_DEPTH; i = i + 1) begin 
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
                  mem_active_rows [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_active_rows [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_active_rows [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_active_rows [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_active_rows [i/factor] = tmp_cache_mem;
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
 
task write_binary_active_rows;
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
