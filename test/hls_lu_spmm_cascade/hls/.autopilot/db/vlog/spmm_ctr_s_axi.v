// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
(* DowngradeIPIdentifiedWarnings="yes" *) module spmm_ctr_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 10,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [31:0]                   arnum,
    output wire [31:0]                   atnum,
    output wire [31:0]                   brnum,
    output wire [31:0]                   btnum,
    output wire [31:0]                   B_rcsr_base,
    output wire [31:0]                   B_val_base,
    output wire [31:0]                   B_cid_base,
    input  wire [31:0]                   r1acc,
    input  wire                          r1acc_ap_vld,
    input  wire [31:0]                   r1hit,
    input  wire                          r1hit_ap_vld,
    input  wire [31:0]                   r2acc,
    input  wire                          r2acc_ap_vld,
    input  wire [31:0]                   r2hit,
    input  wire                          r2hit_ap_vld,
    input  wire [31:0]                   r3acc,
    input  wire                          r3acc_ap_vld,
    input  wire [31:0]                   r3hit,
    input  wire                          r3hit_ap_vld,
    input  wire [31:0]                   r4acc,
    input  wire                          r4acc_ap_vld,
    input  wire [31:0]                   r4hit,
    input  wire                          r4hit_ap_vld,
    output wire [31:0]                   r5acc,
    output wire [31:0]                   r5hit,
    output wire [31:0]                   r6acc,
    output wire [31:0]                   r6hit,
    output wire [31:0]                   r7acc,
    output wire [31:0]                   r7hit,
    output wire [31:0]                   r8acc,
    output wire [31:0]                   r8hit,
    input  wire [31:0]                   vc1acc,
    input  wire                          vc1acc_ap_vld,
    input  wire [31:0]                   vc1hit,
    input  wire                          vc1hit_ap_vld,
    input  wire [31:0]                   vc2acc,
    input  wire                          vc2acc_ap_vld,
    input  wire [31:0]                   vc2hit,
    input  wire                          vc2hit_ap_vld,
    input  wire [31:0]                   vc3acc,
    input  wire                          vc3acc_ap_vld,
    input  wire [31:0]                   vc3hit,
    input  wire                          vc3hit_ap_vld,
    input  wire [31:0]                   vc4acc,
    input  wire                          vc4acc_ap_vld,
    input  wire [31:0]                   vc4hit,
    input  wire                          vc4hit_ap_vld,
    output wire [31:0]                   vc5acc,
    output wire [31:0]                   vc5hit,
    output wire [31:0]                   vc6acc,
    output wire [31:0]                   vc6hit,
    output wire [31:0]                   vc7acc,
    output wire [31:0]                   vc7hit,
    output wire [31:0]                   vc8acc,
    output wire [31:0]                   vc8hit,
    input  wire [31:0]                   fnum,
    input  wire                          fnum_ap_vld,
    input  wire [31:0]                   workload_counter1,
    input  wire                          workload_counter1_ap_vld,
    input  wire [31:0]                   workload_counter2,
    input  wire                          workload_counter2_ap_vld,
    input  wire [31:0]                   workload_counter3,
    input  wire                          workload_counter3_ap_vld,
    input  wire [31:0]                   workload_counter4,
    input  wire                          workload_counter4_ap_vld,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_hs
//
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 7  - auto_restart (Read/Write)
//         bit 9  - interrupt (Read)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (Read/TOW)
//         bit 1 - ap_ready (Read/TOW)
//         others - reserved
// 0x010 : Data signal of arnum
//         bit 31~0 - arnum[31:0] (Read/Write)
// 0x014 : reserved
// 0x018 : Data signal of atnum
//         bit 31~0 - atnum[31:0] (Read/Write)
// 0x01c : reserved
// 0x020 : Data signal of brnum
//         bit 31~0 - brnum[31:0] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of btnum
//         bit 31~0 - btnum[31:0] (Read/Write)
// 0x02c : reserved
// 0x030 : Data signal of B_rcsr_base
//         bit 31~0 - B_rcsr_base[31:0] (Read/Write)
// 0x034 : reserved
// 0x038 : Data signal of B_val_base
//         bit 31~0 - B_val_base[31:0] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of B_cid_base
//         bit 31~0 - B_cid_base[31:0] (Read/Write)
// 0x044 : reserved
// 0x048 : Data signal of r1acc
//         bit 31~0 - r1acc[31:0] (Read)
// 0x04c : Control signal of r1acc
//         bit 0  - r1acc_ap_vld (Read/COR)
//         others - reserved
// 0x058 : Data signal of r1hit
//         bit 31~0 - r1hit[31:0] (Read)
// 0x05c : Control signal of r1hit
//         bit 0  - r1hit_ap_vld (Read/COR)
//         others - reserved
// 0x068 : Data signal of r2acc
//         bit 31~0 - r2acc[31:0] (Read)
// 0x06c : Control signal of r2acc
//         bit 0  - r2acc_ap_vld (Read/COR)
//         others - reserved
// 0x078 : Data signal of r2hit
//         bit 31~0 - r2hit[31:0] (Read)
// 0x07c : Control signal of r2hit
//         bit 0  - r2hit_ap_vld (Read/COR)
//         others - reserved
// 0x088 : Data signal of r3acc
//         bit 31~0 - r3acc[31:0] (Read)
// 0x08c : Control signal of r3acc
//         bit 0  - r3acc_ap_vld (Read/COR)
//         others - reserved
// 0x098 : Data signal of r3hit
//         bit 31~0 - r3hit[31:0] (Read)
// 0x09c : Control signal of r3hit
//         bit 0  - r3hit_ap_vld (Read/COR)
//         others - reserved
// 0x0a8 : Data signal of r4acc
//         bit 31~0 - r4acc[31:0] (Read)
// 0x0ac : Control signal of r4acc
//         bit 0  - r4acc_ap_vld (Read/COR)
//         others - reserved
// 0x0b8 : Data signal of r4hit
//         bit 31~0 - r4hit[31:0] (Read)
// 0x0bc : Control signal of r4hit
//         bit 0  - r4hit_ap_vld (Read/COR)
//         others - reserved
// 0x0c8 : Data signal of r5acc
//         bit 31~0 - r5acc[31:0] (Read/Write)
// 0x0cc : reserved
// 0x0d0 : Data signal of r5hit
//         bit 31~0 - r5hit[31:0] (Read/Write)
// 0x0d4 : reserved
// 0x0d8 : Data signal of r6acc
//         bit 31~0 - r6acc[31:0] (Read/Write)
// 0x0dc : reserved
// 0x0e0 : Data signal of r6hit
//         bit 31~0 - r6hit[31:0] (Read/Write)
// 0x0e4 : reserved
// 0x0e8 : Data signal of r7acc
//         bit 31~0 - r7acc[31:0] (Read/Write)
// 0x0ec : reserved
// 0x0f0 : Data signal of r7hit
//         bit 31~0 - r7hit[31:0] (Read/Write)
// 0x0f4 : reserved
// 0x0f8 : Data signal of r8acc
//         bit 31~0 - r8acc[31:0] (Read/Write)
// 0x0fc : reserved
// 0x100 : Data signal of r8hit
//         bit 31~0 - r8hit[31:0] (Read/Write)
// 0x104 : reserved
// 0x108 : Data signal of vc1acc
//         bit 31~0 - vc1acc[31:0] (Read)
// 0x10c : Control signal of vc1acc
//         bit 0  - vc1acc_ap_vld (Read/COR)
//         others - reserved
// 0x118 : Data signal of vc1hit
//         bit 31~0 - vc1hit[31:0] (Read)
// 0x11c : Control signal of vc1hit
//         bit 0  - vc1hit_ap_vld (Read/COR)
//         others - reserved
// 0x128 : Data signal of vc2acc
//         bit 31~0 - vc2acc[31:0] (Read)
// 0x12c : Control signal of vc2acc
//         bit 0  - vc2acc_ap_vld (Read/COR)
//         others - reserved
// 0x138 : Data signal of vc2hit
//         bit 31~0 - vc2hit[31:0] (Read)
// 0x13c : Control signal of vc2hit
//         bit 0  - vc2hit_ap_vld (Read/COR)
//         others - reserved
// 0x148 : Data signal of vc3acc
//         bit 31~0 - vc3acc[31:0] (Read)
// 0x14c : Control signal of vc3acc
//         bit 0  - vc3acc_ap_vld (Read/COR)
//         others - reserved
// 0x158 : Data signal of vc3hit
//         bit 31~0 - vc3hit[31:0] (Read)
// 0x15c : Control signal of vc3hit
//         bit 0  - vc3hit_ap_vld (Read/COR)
//         others - reserved
// 0x168 : Data signal of vc4acc
//         bit 31~0 - vc4acc[31:0] (Read)
// 0x16c : Control signal of vc4acc
//         bit 0  - vc4acc_ap_vld (Read/COR)
//         others - reserved
// 0x178 : Data signal of vc4hit
//         bit 31~0 - vc4hit[31:0] (Read)
// 0x17c : Control signal of vc4hit
//         bit 0  - vc4hit_ap_vld (Read/COR)
//         others - reserved
// 0x188 : Data signal of vc5acc
//         bit 31~0 - vc5acc[31:0] (Read/Write)
// 0x18c : reserved
// 0x190 : Data signal of vc5hit
//         bit 31~0 - vc5hit[31:0] (Read/Write)
// 0x194 : reserved
// 0x198 : Data signal of vc6acc
//         bit 31~0 - vc6acc[31:0] (Read/Write)
// 0x19c : reserved
// 0x1a0 : Data signal of vc6hit
//         bit 31~0 - vc6hit[31:0] (Read/Write)
// 0x1a4 : reserved
// 0x1a8 : Data signal of vc7acc
//         bit 31~0 - vc7acc[31:0] (Read/Write)
// 0x1ac : reserved
// 0x1b0 : Data signal of vc7hit
//         bit 31~0 - vc7hit[31:0] (Read/Write)
// 0x1b4 : reserved
// 0x1b8 : Data signal of vc8acc
//         bit 31~0 - vc8acc[31:0] (Read/Write)
// 0x1bc : reserved
// 0x1c0 : Data signal of vc8hit
//         bit 31~0 - vc8hit[31:0] (Read/Write)
// 0x1c4 : reserved
// 0x1c8 : Data signal of fnum
//         bit 31~0 - fnum[31:0] (Read)
// 0x1cc : Control signal of fnum
//         bit 0  - fnum_ap_vld (Read/COR)
//         others - reserved
// 0x1d8 : Data signal of workload_counter1
//         bit 31~0 - workload_counter1[31:0] (Read)
// 0x1dc : Control signal of workload_counter1
//         bit 0  - workload_counter1_ap_vld (Read/COR)
//         others - reserved
// 0x1e8 : Data signal of workload_counter2
//         bit 31~0 - workload_counter2[31:0] (Read)
// 0x1ec : Control signal of workload_counter2
//         bit 0  - workload_counter2_ap_vld (Read/COR)
//         others - reserved
// 0x1f8 : Data signal of workload_counter3
//         bit 31~0 - workload_counter3[31:0] (Read)
// 0x1fc : Control signal of workload_counter3
//         bit 0  - workload_counter3_ap_vld (Read/COR)
//         others - reserved
// 0x208 : Data signal of workload_counter4
//         bit 31~0 - workload_counter4[31:0] (Read)
// 0x20c : Control signal of workload_counter4
//         bit 0  - workload_counter4_ap_vld (Read/COR)
//         others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                  = 10'h000,
    ADDR_GIE                      = 10'h004,
    ADDR_IER                      = 10'h008,
    ADDR_ISR                      = 10'h00c,
    ADDR_ARNUM_DATA_0             = 10'h010,
    ADDR_ARNUM_CTRL               = 10'h014,
    ADDR_ATNUM_DATA_0             = 10'h018,
    ADDR_ATNUM_CTRL               = 10'h01c,
    ADDR_BRNUM_DATA_0             = 10'h020,
    ADDR_BRNUM_CTRL               = 10'h024,
    ADDR_BTNUM_DATA_0             = 10'h028,
    ADDR_BTNUM_CTRL               = 10'h02c,
    ADDR_B_RCSR_BASE_DATA_0       = 10'h030,
    ADDR_B_RCSR_BASE_CTRL         = 10'h034,
    ADDR_B_VAL_BASE_DATA_0        = 10'h038,
    ADDR_B_VAL_BASE_CTRL          = 10'h03c,
    ADDR_B_CID_BASE_DATA_0        = 10'h040,
    ADDR_B_CID_BASE_CTRL          = 10'h044,
    ADDR_R1ACC_DATA_0             = 10'h048,
    ADDR_R1ACC_CTRL               = 10'h04c,
    ADDR_R1HIT_DATA_0             = 10'h058,
    ADDR_R1HIT_CTRL               = 10'h05c,
    ADDR_R2ACC_DATA_0             = 10'h068,
    ADDR_R2ACC_CTRL               = 10'h06c,
    ADDR_R2HIT_DATA_0             = 10'h078,
    ADDR_R2HIT_CTRL               = 10'h07c,
    ADDR_R3ACC_DATA_0             = 10'h088,
    ADDR_R3ACC_CTRL               = 10'h08c,
    ADDR_R3HIT_DATA_0             = 10'h098,
    ADDR_R3HIT_CTRL               = 10'h09c,
    ADDR_R4ACC_DATA_0             = 10'h0a8,
    ADDR_R4ACC_CTRL               = 10'h0ac,
    ADDR_R4HIT_DATA_0             = 10'h0b8,
    ADDR_R4HIT_CTRL               = 10'h0bc,
    ADDR_R5ACC_DATA_0             = 10'h0c8,
    ADDR_R5ACC_CTRL               = 10'h0cc,
    ADDR_R5HIT_DATA_0             = 10'h0d0,
    ADDR_R5HIT_CTRL               = 10'h0d4,
    ADDR_R6ACC_DATA_0             = 10'h0d8,
    ADDR_R6ACC_CTRL               = 10'h0dc,
    ADDR_R6HIT_DATA_0             = 10'h0e0,
    ADDR_R6HIT_CTRL               = 10'h0e4,
    ADDR_R7ACC_DATA_0             = 10'h0e8,
    ADDR_R7ACC_CTRL               = 10'h0ec,
    ADDR_R7HIT_DATA_0             = 10'h0f0,
    ADDR_R7HIT_CTRL               = 10'h0f4,
    ADDR_R8ACC_DATA_0             = 10'h0f8,
    ADDR_R8ACC_CTRL               = 10'h0fc,
    ADDR_R8HIT_DATA_0             = 10'h100,
    ADDR_R8HIT_CTRL               = 10'h104,
    ADDR_VC1ACC_DATA_0            = 10'h108,
    ADDR_VC1ACC_CTRL              = 10'h10c,
    ADDR_VC1HIT_DATA_0            = 10'h118,
    ADDR_VC1HIT_CTRL              = 10'h11c,
    ADDR_VC2ACC_DATA_0            = 10'h128,
    ADDR_VC2ACC_CTRL              = 10'h12c,
    ADDR_VC2HIT_DATA_0            = 10'h138,
    ADDR_VC2HIT_CTRL              = 10'h13c,
    ADDR_VC3ACC_DATA_0            = 10'h148,
    ADDR_VC3ACC_CTRL              = 10'h14c,
    ADDR_VC3HIT_DATA_0            = 10'h158,
    ADDR_VC3HIT_CTRL              = 10'h15c,
    ADDR_VC4ACC_DATA_0            = 10'h168,
    ADDR_VC4ACC_CTRL              = 10'h16c,
    ADDR_VC4HIT_DATA_0            = 10'h178,
    ADDR_VC4HIT_CTRL              = 10'h17c,
    ADDR_VC5ACC_DATA_0            = 10'h188,
    ADDR_VC5ACC_CTRL              = 10'h18c,
    ADDR_VC5HIT_DATA_0            = 10'h190,
    ADDR_VC5HIT_CTRL              = 10'h194,
    ADDR_VC6ACC_DATA_0            = 10'h198,
    ADDR_VC6ACC_CTRL              = 10'h19c,
    ADDR_VC6HIT_DATA_0            = 10'h1a0,
    ADDR_VC6HIT_CTRL              = 10'h1a4,
    ADDR_VC7ACC_DATA_0            = 10'h1a8,
    ADDR_VC7ACC_CTRL              = 10'h1ac,
    ADDR_VC7HIT_DATA_0            = 10'h1b0,
    ADDR_VC7HIT_CTRL              = 10'h1b4,
    ADDR_VC8ACC_DATA_0            = 10'h1b8,
    ADDR_VC8ACC_CTRL              = 10'h1bc,
    ADDR_VC8HIT_DATA_0            = 10'h1c0,
    ADDR_VC8HIT_CTRL              = 10'h1c4,
    ADDR_FNUM_DATA_0              = 10'h1c8,
    ADDR_FNUM_CTRL                = 10'h1cc,
    ADDR_WORKLOAD_COUNTER1_DATA_0 = 10'h1d8,
    ADDR_WORKLOAD_COUNTER1_CTRL   = 10'h1dc,
    ADDR_WORKLOAD_COUNTER2_DATA_0 = 10'h1e8,
    ADDR_WORKLOAD_COUNTER2_CTRL   = 10'h1ec,
    ADDR_WORKLOAD_COUNTER3_DATA_0 = 10'h1f8,
    ADDR_WORKLOAD_COUNTER3_CTRL   = 10'h1fc,
    ADDR_WORKLOAD_COUNTER4_DATA_0 = 10'h208,
    ADDR_WORKLOAD_COUNTER4_CTRL   = 10'h20c,
    WRIDLE                        = 2'd0,
    WRDATA                        = 2'd1,
    WRRESP                        = 2'd2,
    WRRESET                       = 2'd3,
    RDIDLE                        = 2'd0,
    RDDATA                        = 2'd1,
    RDRESET                       = 2'd2,
    ADDR_BITS                = 10;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle = 1'b0;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [31:0]                   int_arnum = 'b0;
    reg  [31:0]                   int_atnum = 'b0;
    reg  [31:0]                   int_brnum = 'b0;
    reg  [31:0]                   int_btnum = 'b0;
    reg  [31:0]                   int_B_rcsr_base = 'b0;
    reg  [31:0]                   int_B_val_base = 'b0;
    reg  [31:0]                   int_B_cid_base = 'b0;
    reg                           int_r1acc_ap_vld;
    reg  [31:0]                   int_r1acc = 'b0;
    reg                           int_r1hit_ap_vld;
    reg  [31:0]                   int_r1hit = 'b0;
    reg                           int_r2acc_ap_vld;
    reg  [31:0]                   int_r2acc = 'b0;
    reg                           int_r2hit_ap_vld;
    reg  [31:0]                   int_r2hit = 'b0;
    reg                           int_r3acc_ap_vld;
    reg  [31:0]                   int_r3acc = 'b0;
    reg                           int_r3hit_ap_vld;
    reg  [31:0]                   int_r3hit = 'b0;
    reg                           int_r4acc_ap_vld;
    reg  [31:0]                   int_r4acc = 'b0;
    reg                           int_r4hit_ap_vld;
    reg  [31:0]                   int_r4hit = 'b0;
    reg  [31:0]                   int_r5acc = 'b0;
    reg  [31:0]                   int_r5hit = 'b0;
    reg  [31:0]                   int_r6acc = 'b0;
    reg  [31:0]                   int_r6hit = 'b0;
    reg  [31:0]                   int_r7acc = 'b0;
    reg  [31:0]                   int_r7hit = 'b0;
    reg  [31:0]                   int_r8acc = 'b0;
    reg  [31:0]                   int_r8hit = 'b0;
    reg                           int_vc1acc_ap_vld;
    reg  [31:0]                   int_vc1acc = 'b0;
    reg                           int_vc1hit_ap_vld;
    reg  [31:0]                   int_vc1hit = 'b0;
    reg                           int_vc2acc_ap_vld;
    reg  [31:0]                   int_vc2acc = 'b0;
    reg                           int_vc2hit_ap_vld;
    reg  [31:0]                   int_vc2hit = 'b0;
    reg                           int_vc3acc_ap_vld;
    reg  [31:0]                   int_vc3acc = 'b0;
    reg                           int_vc3hit_ap_vld;
    reg  [31:0]                   int_vc3hit = 'b0;
    reg                           int_vc4acc_ap_vld;
    reg  [31:0]                   int_vc4acc = 'b0;
    reg                           int_vc4hit_ap_vld;
    reg  [31:0]                   int_vc4hit = 'b0;
    reg  [31:0]                   int_vc5acc = 'b0;
    reg  [31:0]                   int_vc5hit = 'b0;
    reg  [31:0]                   int_vc6acc = 'b0;
    reg  [31:0]                   int_vc6hit = 'b0;
    reg  [31:0]                   int_vc7acc = 'b0;
    reg  [31:0]                   int_vc7hit = 'b0;
    reg  [31:0]                   int_vc8acc = 'b0;
    reg  [31:0]                   int_vc8hit = 'b0;
    reg                           int_fnum_ap_vld;
    reg  [31:0]                   int_fnum = 'b0;
    reg                           int_workload_counter1_ap_vld;
    reg  [31:0]                   int_workload_counter1 = 'b0;
    reg                           int_workload_counter2_ap_vld;
    reg  [31:0]                   int_workload_counter2 = 'b0;
    reg                           int_workload_counter3_ap_vld;
    reg  [31:0]                   int_workload_counter3 = 'b0;
    reg                           int_workload_counter4_ap_vld;
    reg  [31:0]                   int_workload_counter4 = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BVALID  = (wstate == WRRESP);
assign BRESP   = 2'b00;  // OKAY
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY & BVALID)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= {AWADDR[ADDR_BITS-1:2], {2{1'b0}}};
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_ARNUM_DATA_0: begin
                    rdata <= int_arnum[31:0];
                end
                ADDR_ATNUM_DATA_0: begin
                    rdata <= int_atnum[31:0];
                end
                ADDR_BRNUM_DATA_0: begin
                    rdata <= int_brnum[31:0];
                end
                ADDR_BTNUM_DATA_0: begin
                    rdata <= int_btnum[31:0];
                end
                ADDR_B_RCSR_BASE_DATA_0: begin
                    rdata <= int_B_rcsr_base[31:0];
                end
                ADDR_B_VAL_BASE_DATA_0: begin
                    rdata <= int_B_val_base[31:0];
                end
                ADDR_B_CID_BASE_DATA_0: begin
                    rdata <= int_B_cid_base[31:0];
                end
                ADDR_R1ACC_DATA_0: begin
                    rdata <= int_r1acc[31:0];
                end
                ADDR_R1ACC_CTRL: begin
                    rdata[0] <= int_r1acc_ap_vld;
                end
                ADDR_R1HIT_DATA_0: begin
                    rdata <= int_r1hit[31:0];
                end
                ADDR_R1HIT_CTRL: begin
                    rdata[0] <= int_r1hit_ap_vld;
                end
                ADDR_R2ACC_DATA_0: begin
                    rdata <= int_r2acc[31:0];
                end
                ADDR_R2ACC_CTRL: begin
                    rdata[0] <= int_r2acc_ap_vld;
                end
                ADDR_R2HIT_DATA_0: begin
                    rdata <= int_r2hit[31:0];
                end
                ADDR_R2HIT_CTRL: begin
                    rdata[0] <= int_r2hit_ap_vld;
                end
                ADDR_R3ACC_DATA_0: begin
                    rdata <= int_r3acc[31:0];
                end
                ADDR_R3ACC_CTRL: begin
                    rdata[0] <= int_r3acc_ap_vld;
                end
                ADDR_R3HIT_DATA_0: begin
                    rdata <= int_r3hit[31:0];
                end
                ADDR_R3HIT_CTRL: begin
                    rdata[0] <= int_r3hit_ap_vld;
                end
                ADDR_R4ACC_DATA_0: begin
                    rdata <= int_r4acc[31:0];
                end
                ADDR_R4ACC_CTRL: begin
                    rdata[0] <= int_r4acc_ap_vld;
                end
                ADDR_R4HIT_DATA_0: begin
                    rdata <= int_r4hit[31:0];
                end
                ADDR_R4HIT_CTRL: begin
                    rdata[0] <= int_r4hit_ap_vld;
                end
                ADDR_R5ACC_DATA_0: begin
                    rdata <= int_r5acc[31:0];
                end
                ADDR_R5HIT_DATA_0: begin
                    rdata <= int_r5hit[31:0];
                end
                ADDR_R6ACC_DATA_0: begin
                    rdata <= int_r6acc[31:0];
                end
                ADDR_R6HIT_DATA_0: begin
                    rdata <= int_r6hit[31:0];
                end
                ADDR_R7ACC_DATA_0: begin
                    rdata <= int_r7acc[31:0];
                end
                ADDR_R7HIT_DATA_0: begin
                    rdata <= int_r7hit[31:0];
                end
                ADDR_R8ACC_DATA_0: begin
                    rdata <= int_r8acc[31:0];
                end
                ADDR_R8HIT_DATA_0: begin
                    rdata <= int_r8hit[31:0];
                end
                ADDR_VC1ACC_DATA_0: begin
                    rdata <= int_vc1acc[31:0];
                end
                ADDR_VC1ACC_CTRL: begin
                    rdata[0] <= int_vc1acc_ap_vld;
                end
                ADDR_VC1HIT_DATA_0: begin
                    rdata <= int_vc1hit[31:0];
                end
                ADDR_VC1HIT_CTRL: begin
                    rdata[0] <= int_vc1hit_ap_vld;
                end
                ADDR_VC2ACC_DATA_0: begin
                    rdata <= int_vc2acc[31:0];
                end
                ADDR_VC2ACC_CTRL: begin
                    rdata[0] <= int_vc2acc_ap_vld;
                end
                ADDR_VC2HIT_DATA_0: begin
                    rdata <= int_vc2hit[31:0];
                end
                ADDR_VC2HIT_CTRL: begin
                    rdata[0] <= int_vc2hit_ap_vld;
                end
                ADDR_VC3ACC_DATA_0: begin
                    rdata <= int_vc3acc[31:0];
                end
                ADDR_VC3ACC_CTRL: begin
                    rdata[0] <= int_vc3acc_ap_vld;
                end
                ADDR_VC3HIT_DATA_0: begin
                    rdata <= int_vc3hit[31:0];
                end
                ADDR_VC3HIT_CTRL: begin
                    rdata[0] <= int_vc3hit_ap_vld;
                end
                ADDR_VC4ACC_DATA_0: begin
                    rdata <= int_vc4acc[31:0];
                end
                ADDR_VC4ACC_CTRL: begin
                    rdata[0] <= int_vc4acc_ap_vld;
                end
                ADDR_VC4HIT_DATA_0: begin
                    rdata <= int_vc4hit[31:0];
                end
                ADDR_VC4HIT_CTRL: begin
                    rdata[0] <= int_vc4hit_ap_vld;
                end
                ADDR_VC5ACC_DATA_0: begin
                    rdata <= int_vc5acc[31:0];
                end
                ADDR_VC5HIT_DATA_0: begin
                    rdata <= int_vc5hit[31:0];
                end
                ADDR_VC6ACC_DATA_0: begin
                    rdata <= int_vc6acc[31:0];
                end
                ADDR_VC6HIT_DATA_0: begin
                    rdata <= int_vc6hit[31:0];
                end
                ADDR_VC7ACC_DATA_0: begin
                    rdata <= int_vc7acc[31:0];
                end
                ADDR_VC7HIT_DATA_0: begin
                    rdata <= int_vc7hit[31:0];
                end
                ADDR_VC8ACC_DATA_0: begin
                    rdata <= int_vc8acc[31:0];
                end
                ADDR_VC8HIT_DATA_0: begin
                    rdata <= int_vc8hit[31:0];
                end
                ADDR_FNUM_DATA_0: begin
                    rdata <= int_fnum[31:0];
                end
                ADDR_FNUM_CTRL: begin
                    rdata[0] <= int_fnum_ap_vld;
                end
                ADDR_WORKLOAD_COUNTER1_DATA_0: begin
                    rdata <= int_workload_counter1[31:0];
                end
                ADDR_WORKLOAD_COUNTER1_CTRL: begin
                    rdata[0] <= int_workload_counter1_ap_vld;
                end
                ADDR_WORKLOAD_COUNTER2_DATA_0: begin
                    rdata <= int_workload_counter2[31:0];
                end
                ADDR_WORKLOAD_COUNTER2_CTRL: begin
                    rdata[0] <= int_workload_counter2_ap_vld;
                end
                ADDR_WORKLOAD_COUNTER3_DATA_0: begin
                    rdata <= int_workload_counter3[31:0];
                end
                ADDR_WORKLOAD_COUNTER3_CTRL: begin
                    rdata[0] <= int_workload_counter3_ap_vld;
                end
                ADDR_WORKLOAD_COUNTER4_DATA_0: begin
                    rdata <= int_workload_counter4[31:0];
                end
                ADDR_WORKLOAD_COUNTER4_CTRL: begin
                    rdata[0] <= int_workload_counter4_ap_vld;
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_interrupt;
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign arnum             = int_arnum;
assign atnum             = int_atnum;
assign brnum             = int_brnum;
assign btnum             = int_btnum;
assign B_rcsr_base       = int_B_rcsr_base;
assign B_val_base        = int_B_val_base;
assign B_cid_base        = int_B_cid_base;
assign r5acc             = int_r5acc;
assign r5hit             = int_r5hit;
assign r6acc             = int_r6acc;
assign r6hit             = int_r6hit;
assign r7acc             = int_r7acc;
assign r7hit             = int_r7hit;
assign r8acc             = int_r8acc;
assign r8hit             = int_r8hit;
assign vc5acc            = int_vc5acc;
assign vc5hit            = int_vc5hit;
assign vc6acc            = int_vc6acc;
assign vc6hit            = int_vc6hit;
assign vc7acc            = int_vc7acc;
assign vc7hit            = int_vc7hit;
assign vc8acc            = int_vc8acc;
assign vc8hit            = int_vc8hit;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <= WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_arnum[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_arnum[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ARNUM_DATA_0)
            int_arnum[31:0] <= (WDATA[31:0] & wmask) | (int_arnum[31:0] & ~wmask);
    end
end

// int_atnum[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_atnum[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ATNUM_DATA_0)
            int_atnum[31:0] <= (WDATA[31:0] & wmask) | (int_atnum[31:0] & ~wmask);
    end
end

// int_brnum[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_brnum[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BRNUM_DATA_0)
            int_brnum[31:0] <= (WDATA[31:0] & wmask) | (int_brnum[31:0] & ~wmask);
    end
end

// int_btnum[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_btnum[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_BTNUM_DATA_0)
            int_btnum[31:0] <= (WDATA[31:0] & wmask) | (int_btnum[31:0] & ~wmask);
    end
end

// int_B_rcsr_base[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_rcsr_base[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_RCSR_BASE_DATA_0)
            int_B_rcsr_base[31:0] <= (WDATA[31:0] & wmask) | (int_B_rcsr_base[31:0] & ~wmask);
    end
end

// int_B_val_base[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val_base[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL_BASE_DATA_0)
            int_B_val_base[31:0] <= (WDATA[31:0] & wmask) | (int_B_val_base[31:0] & ~wmask);
    end
end

// int_B_cid_base[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid_base[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID_BASE_DATA_0)
            int_B_cid_base[31:0] <= (WDATA[31:0] & wmask) | (int_B_cid_base[31:0] & ~wmask);
    end
end

// int_r1acc
always @(posedge ACLK) begin
    if (ARESET)
        int_r1acc <= 0;
    else if (ACLK_EN) begin
        if (r1acc_ap_vld)
            int_r1acc <= r1acc;
    end
end

// int_r1acc_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_r1acc_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (r1acc_ap_vld)
            int_r1acc_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_R1ACC_CTRL)
            int_r1acc_ap_vld <= 1'b0; // clear on read
    end
end

// int_r1hit
always @(posedge ACLK) begin
    if (ARESET)
        int_r1hit <= 0;
    else if (ACLK_EN) begin
        if (r1hit_ap_vld)
            int_r1hit <= r1hit;
    end
end

// int_r1hit_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_r1hit_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (r1hit_ap_vld)
            int_r1hit_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_R1HIT_CTRL)
            int_r1hit_ap_vld <= 1'b0; // clear on read
    end
end

// int_r2acc
always @(posedge ACLK) begin
    if (ARESET)
        int_r2acc <= 0;
    else if (ACLK_EN) begin
        if (r2acc_ap_vld)
            int_r2acc <= r2acc;
    end
end

// int_r2acc_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_r2acc_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (r2acc_ap_vld)
            int_r2acc_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_R2ACC_CTRL)
            int_r2acc_ap_vld <= 1'b0; // clear on read
    end
end

// int_r2hit
always @(posedge ACLK) begin
    if (ARESET)
        int_r2hit <= 0;
    else if (ACLK_EN) begin
        if (r2hit_ap_vld)
            int_r2hit <= r2hit;
    end
end

// int_r2hit_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_r2hit_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (r2hit_ap_vld)
            int_r2hit_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_R2HIT_CTRL)
            int_r2hit_ap_vld <= 1'b0; // clear on read
    end
end

// int_r3acc
always @(posedge ACLK) begin
    if (ARESET)
        int_r3acc <= 0;
    else if (ACLK_EN) begin
        if (r3acc_ap_vld)
            int_r3acc <= r3acc;
    end
end

// int_r3acc_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_r3acc_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (r3acc_ap_vld)
            int_r3acc_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_R3ACC_CTRL)
            int_r3acc_ap_vld <= 1'b0; // clear on read
    end
end

// int_r3hit
always @(posedge ACLK) begin
    if (ARESET)
        int_r3hit <= 0;
    else if (ACLK_EN) begin
        if (r3hit_ap_vld)
            int_r3hit <= r3hit;
    end
end

// int_r3hit_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_r3hit_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (r3hit_ap_vld)
            int_r3hit_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_R3HIT_CTRL)
            int_r3hit_ap_vld <= 1'b0; // clear on read
    end
end

// int_r4acc
always @(posedge ACLK) begin
    if (ARESET)
        int_r4acc <= 0;
    else if (ACLK_EN) begin
        if (r4acc_ap_vld)
            int_r4acc <= r4acc;
    end
end

// int_r4acc_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_r4acc_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (r4acc_ap_vld)
            int_r4acc_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_R4ACC_CTRL)
            int_r4acc_ap_vld <= 1'b0; // clear on read
    end
end

// int_r4hit
always @(posedge ACLK) begin
    if (ARESET)
        int_r4hit <= 0;
    else if (ACLK_EN) begin
        if (r4hit_ap_vld)
            int_r4hit <= r4hit;
    end
end

// int_r4hit_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_r4hit_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (r4hit_ap_vld)
            int_r4hit_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_R4HIT_CTRL)
            int_r4hit_ap_vld <= 1'b0; // clear on read
    end
end

// int_r5acc[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r5acc[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R5ACC_DATA_0)
            int_r5acc[31:0] <= (WDATA[31:0] & wmask) | (int_r5acc[31:0] & ~wmask);
    end
end

// int_r5hit[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r5hit[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R5HIT_DATA_0)
            int_r5hit[31:0] <= (WDATA[31:0] & wmask) | (int_r5hit[31:0] & ~wmask);
    end
end

// int_r6acc[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r6acc[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R6ACC_DATA_0)
            int_r6acc[31:0] <= (WDATA[31:0] & wmask) | (int_r6acc[31:0] & ~wmask);
    end
end

// int_r6hit[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r6hit[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R6HIT_DATA_0)
            int_r6hit[31:0] <= (WDATA[31:0] & wmask) | (int_r6hit[31:0] & ~wmask);
    end
end

// int_r7acc[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r7acc[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R7ACC_DATA_0)
            int_r7acc[31:0] <= (WDATA[31:0] & wmask) | (int_r7acc[31:0] & ~wmask);
    end
end

// int_r7hit[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r7hit[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R7HIT_DATA_0)
            int_r7hit[31:0] <= (WDATA[31:0] & wmask) | (int_r7hit[31:0] & ~wmask);
    end
end

// int_r8acc[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r8acc[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R8ACC_DATA_0)
            int_r8acc[31:0] <= (WDATA[31:0] & wmask) | (int_r8acc[31:0] & ~wmask);
    end
end

// int_r8hit[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r8hit[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R8HIT_DATA_0)
            int_r8hit[31:0] <= (WDATA[31:0] & wmask) | (int_r8hit[31:0] & ~wmask);
    end
end

// int_vc1acc
always @(posedge ACLK) begin
    if (ARESET)
        int_vc1acc <= 0;
    else if (ACLK_EN) begin
        if (vc1acc_ap_vld)
            int_vc1acc <= vc1acc;
    end
end

// int_vc1acc_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vc1acc_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vc1acc_ap_vld)
            int_vc1acc_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VC1ACC_CTRL)
            int_vc1acc_ap_vld <= 1'b0; // clear on read
    end
end

// int_vc1hit
always @(posedge ACLK) begin
    if (ARESET)
        int_vc1hit <= 0;
    else if (ACLK_EN) begin
        if (vc1hit_ap_vld)
            int_vc1hit <= vc1hit;
    end
end

// int_vc1hit_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vc1hit_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vc1hit_ap_vld)
            int_vc1hit_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VC1HIT_CTRL)
            int_vc1hit_ap_vld <= 1'b0; // clear on read
    end
end

// int_vc2acc
always @(posedge ACLK) begin
    if (ARESET)
        int_vc2acc <= 0;
    else if (ACLK_EN) begin
        if (vc2acc_ap_vld)
            int_vc2acc <= vc2acc;
    end
end

// int_vc2acc_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vc2acc_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vc2acc_ap_vld)
            int_vc2acc_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VC2ACC_CTRL)
            int_vc2acc_ap_vld <= 1'b0; // clear on read
    end
end

// int_vc2hit
always @(posedge ACLK) begin
    if (ARESET)
        int_vc2hit <= 0;
    else if (ACLK_EN) begin
        if (vc2hit_ap_vld)
            int_vc2hit <= vc2hit;
    end
end

// int_vc2hit_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vc2hit_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vc2hit_ap_vld)
            int_vc2hit_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VC2HIT_CTRL)
            int_vc2hit_ap_vld <= 1'b0; // clear on read
    end
end

// int_vc3acc
always @(posedge ACLK) begin
    if (ARESET)
        int_vc3acc <= 0;
    else if (ACLK_EN) begin
        if (vc3acc_ap_vld)
            int_vc3acc <= vc3acc;
    end
end

// int_vc3acc_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vc3acc_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vc3acc_ap_vld)
            int_vc3acc_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VC3ACC_CTRL)
            int_vc3acc_ap_vld <= 1'b0; // clear on read
    end
end

// int_vc3hit
always @(posedge ACLK) begin
    if (ARESET)
        int_vc3hit <= 0;
    else if (ACLK_EN) begin
        if (vc3hit_ap_vld)
            int_vc3hit <= vc3hit;
    end
end

// int_vc3hit_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vc3hit_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vc3hit_ap_vld)
            int_vc3hit_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VC3HIT_CTRL)
            int_vc3hit_ap_vld <= 1'b0; // clear on read
    end
end

// int_vc4acc
always @(posedge ACLK) begin
    if (ARESET)
        int_vc4acc <= 0;
    else if (ACLK_EN) begin
        if (vc4acc_ap_vld)
            int_vc4acc <= vc4acc;
    end
end

// int_vc4acc_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vc4acc_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vc4acc_ap_vld)
            int_vc4acc_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VC4ACC_CTRL)
            int_vc4acc_ap_vld <= 1'b0; // clear on read
    end
end

// int_vc4hit
always @(posedge ACLK) begin
    if (ARESET)
        int_vc4hit <= 0;
    else if (ACLK_EN) begin
        if (vc4hit_ap_vld)
            int_vc4hit <= vc4hit;
    end
end

// int_vc4hit_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_vc4hit_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (vc4hit_ap_vld)
            int_vc4hit_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_VC4HIT_CTRL)
            int_vc4hit_ap_vld <= 1'b0; // clear on read
    end
end

// int_vc5acc[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vc5acc[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VC5ACC_DATA_0)
            int_vc5acc[31:0] <= (WDATA[31:0] & wmask) | (int_vc5acc[31:0] & ~wmask);
    end
end

// int_vc5hit[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vc5hit[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VC5HIT_DATA_0)
            int_vc5hit[31:0] <= (WDATA[31:0] & wmask) | (int_vc5hit[31:0] & ~wmask);
    end
end

// int_vc6acc[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vc6acc[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VC6ACC_DATA_0)
            int_vc6acc[31:0] <= (WDATA[31:0] & wmask) | (int_vc6acc[31:0] & ~wmask);
    end
end

// int_vc6hit[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vc6hit[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VC6HIT_DATA_0)
            int_vc6hit[31:0] <= (WDATA[31:0] & wmask) | (int_vc6hit[31:0] & ~wmask);
    end
end

// int_vc7acc[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vc7acc[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VC7ACC_DATA_0)
            int_vc7acc[31:0] <= (WDATA[31:0] & wmask) | (int_vc7acc[31:0] & ~wmask);
    end
end

// int_vc7hit[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vc7hit[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VC7HIT_DATA_0)
            int_vc7hit[31:0] <= (WDATA[31:0] & wmask) | (int_vc7hit[31:0] & ~wmask);
    end
end

// int_vc8acc[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vc8acc[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VC8ACC_DATA_0)
            int_vc8acc[31:0] <= (WDATA[31:0] & wmask) | (int_vc8acc[31:0] & ~wmask);
    end
end

// int_vc8hit[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vc8hit[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VC8HIT_DATA_0)
            int_vc8hit[31:0] <= (WDATA[31:0] & wmask) | (int_vc8hit[31:0] & ~wmask);
    end
end

// int_fnum
always @(posedge ACLK) begin
    if (ARESET)
        int_fnum <= 0;
    else if (ACLK_EN) begin
        if (fnum_ap_vld)
            int_fnum <= fnum;
    end
end

// int_fnum_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_fnum_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (fnum_ap_vld)
            int_fnum_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_FNUM_CTRL)
            int_fnum_ap_vld <= 1'b0; // clear on read
    end
end

// int_workload_counter1
always @(posedge ACLK) begin
    if (ARESET)
        int_workload_counter1 <= 0;
    else if (ACLK_EN) begin
        if (workload_counter1_ap_vld)
            int_workload_counter1 <= workload_counter1;
    end
end

// int_workload_counter1_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_workload_counter1_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (workload_counter1_ap_vld)
            int_workload_counter1_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_WORKLOAD_COUNTER1_CTRL)
            int_workload_counter1_ap_vld <= 1'b0; // clear on read
    end
end

// int_workload_counter2
always @(posedge ACLK) begin
    if (ARESET)
        int_workload_counter2 <= 0;
    else if (ACLK_EN) begin
        if (workload_counter2_ap_vld)
            int_workload_counter2 <= workload_counter2;
    end
end

// int_workload_counter2_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_workload_counter2_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (workload_counter2_ap_vld)
            int_workload_counter2_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_WORKLOAD_COUNTER2_CTRL)
            int_workload_counter2_ap_vld <= 1'b0; // clear on read
    end
end

// int_workload_counter3
always @(posedge ACLK) begin
    if (ARESET)
        int_workload_counter3 <= 0;
    else if (ACLK_EN) begin
        if (workload_counter3_ap_vld)
            int_workload_counter3 <= workload_counter3;
    end
end

// int_workload_counter3_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_workload_counter3_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (workload_counter3_ap_vld)
            int_workload_counter3_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_WORKLOAD_COUNTER3_CTRL)
            int_workload_counter3_ap_vld <= 1'b0; // clear on read
    end
end

// int_workload_counter4
always @(posedge ACLK) begin
    if (ARESET)
        int_workload_counter4 <= 0;
    else if (ACLK_EN) begin
        if (workload_counter4_ap_vld)
            int_workload_counter4 <= workload_counter4;
    end
end

// int_workload_counter4_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_workload_counter4_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (workload_counter4_ap_vld)
            int_workload_counter4_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_WORKLOAD_COUNTER4_CTRL)
            int_workload_counter4_ap_vld <= 1'b0; // clear on read
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
