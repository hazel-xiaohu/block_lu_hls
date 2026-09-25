// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
(* DowngradeIPIdentifiedWarnings="yes" *) module spmm_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 9,
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
    output wire [63:0]                   A_rcsr,
    output wire [63:0]                   A_cid,
    output wire [63:0]                   A_val,
    output wire [63:0]                   B_rcsr1,
    output wire [63:0]                   B_rcsr2,
    output wire [63:0]                   B_rcsr3,
    output wire [63:0]                   B_rcsr4,
    output wire [63:0]                   B_val1,
    output wire [63:0]                   B_cid1,
    output wire [63:0]                   B_val2,
    output wire [63:0]                   B_cid2,
    output wire [63:0]                   B_val3,
    output wire [63:0]                   B_cid3,
    output wire [63:0]                   B_val4,
    output wire [63:0]                   B_cid4,
    output wire [63:0]                   B_val_port1,
    output wire [63:0]                   B_cid_port1,
    output wire [63:0]                   B_val_port2,
    output wire [63:0]                   B_cid_port2,
    output wire [63:0]                   B_val_port3,
    output wire [63:0]                   B_cid_port3,
    output wire [63:0]                   B_val_port4,
    output wire [63:0]                   B_cid_port4,
    output wire [63:0]                   C_rcsr,
    output wire [63:0]                   C_cid,
    output wire [63:0]                   C_val
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_none
//
// 0x000 : reserved
// 0x004 : reserved
// 0x008 : reserved
// 0x00c : reserved
// 0x010 : Data signal of A_rcsr
//         bit 31~0 - A_rcsr[31:0] (Read/Write)
// 0x014 : Data signal of A_rcsr
//         bit 31~0 - A_rcsr[63:32] (Read/Write)
// 0x018 : reserved
// 0x01c : Data signal of A_cid
//         bit 31~0 - A_cid[31:0] (Read/Write)
// 0x020 : Data signal of A_cid
//         bit 31~0 - A_cid[63:32] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of A_val
//         bit 31~0 - A_val[31:0] (Read/Write)
// 0x02c : Data signal of A_val
//         bit 31~0 - A_val[63:32] (Read/Write)
// 0x030 : reserved
// 0x034 : Data signal of B_rcsr1
//         bit 31~0 - B_rcsr1[31:0] (Read/Write)
// 0x038 : Data signal of B_rcsr1
//         bit 31~0 - B_rcsr1[63:32] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of B_rcsr2
//         bit 31~0 - B_rcsr2[31:0] (Read/Write)
// 0x044 : Data signal of B_rcsr2
//         bit 31~0 - B_rcsr2[63:32] (Read/Write)
// 0x048 : reserved
// 0x04c : Data signal of B_rcsr3
//         bit 31~0 - B_rcsr3[31:0] (Read/Write)
// 0x050 : Data signal of B_rcsr3
//         bit 31~0 - B_rcsr3[63:32] (Read/Write)
// 0x054 : reserved
// 0x058 : Data signal of B_rcsr4
//         bit 31~0 - B_rcsr4[31:0] (Read/Write)
// 0x05c : Data signal of B_rcsr4
//         bit 31~0 - B_rcsr4[63:32] (Read/Write)
// 0x060 : reserved
// 0x064 : Data signal of B_val1
//         bit 31~0 - B_val1[31:0] (Read/Write)
// 0x068 : Data signal of B_val1
//         bit 31~0 - B_val1[63:32] (Read/Write)
// 0x06c : reserved
// 0x070 : Data signal of B_cid1
//         bit 31~0 - B_cid1[31:0] (Read/Write)
// 0x074 : Data signal of B_cid1
//         bit 31~0 - B_cid1[63:32] (Read/Write)
// 0x078 : reserved
// 0x07c : Data signal of B_val2
//         bit 31~0 - B_val2[31:0] (Read/Write)
// 0x080 : Data signal of B_val2
//         bit 31~0 - B_val2[63:32] (Read/Write)
// 0x084 : reserved
// 0x088 : Data signal of B_cid2
//         bit 31~0 - B_cid2[31:0] (Read/Write)
// 0x08c : Data signal of B_cid2
//         bit 31~0 - B_cid2[63:32] (Read/Write)
// 0x090 : reserved
// 0x094 : Data signal of B_val3
//         bit 31~0 - B_val3[31:0] (Read/Write)
// 0x098 : Data signal of B_val3
//         bit 31~0 - B_val3[63:32] (Read/Write)
// 0x09c : reserved
// 0x0a0 : Data signal of B_cid3
//         bit 31~0 - B_cid3[31:0] (Read/Write)
// 0x0a4 : Data signal of B_cid3
//         bit 31~0 - B_cid3[63:32] (Read/Write)
// 0x0a8 : reserved
// 0x0ac : Data signal of B_val4
//         bit 31~0 - B_val4[31:0] (Read/Write)
// 0x0b0 : Data signal of B_val4
//         bit 31~0 - B_val4[63:32] (Read/Write)
// 0x0b4 : reserved
// 0x0b8 : Data signal of B_cid4
//         bit 31~0 - B_cid4[31:0] (Read/Write)
// 0x0bc : Data signal of B_cid4
//         bit 31~0 - B_cid4[63:32] (Read/Write)
// 0x0c0 : reserved
// 0x0c4 : Data signal of B_val_port1
//         bit 31~0 - B_val_port1[31:0] (Read/Write)
// 0x0c8 : Data signal of B_val_port1
//         bit 31~0 - B_val_port1[63:32] (Read/Write)
// 0x0cc : reserved
// 0x0d0 : Data signal of B_cid_port1
//         bit 31~0 - B_cid_port1[31:0] (Read/Write)
// 0x0d4 : Data signal of B_cid_port1
//         bit 31~0 - B_cid_port1[63:32] (Read/Write)
// 0x0d8 : reserved
// 0x0dc : Data signal of B_val_port2
//         bit 31~0 - B_val_port2[31:0] (Read/Write)
// 0x0e0 : Data signal of B_val_port2
//         bit 31~0 - B_val_port2[63:32] (Read/Write)
// 0x0e4 : reserved
// 0x0e8 : Data signal of B_cid_port2
//         bit 31~0 - B_cid_port2[31:0] (Read/Write)
// 0x0ec : Data signal of B_cid_port2
//         bit 31~0 - B_cid_port2[63:32] (Read/Write)
// 0x0f0 : reserved
// 0x0f4 : Data signal of B_val_port3
//         bit 31~0 - B_val_port3[31:0] (Read/Write)
// 0x0f8 : Data signal of B_val_port3
//         bit 31~0 - B_val_port3[63:32] (Read/Write)
// 0x0fc : reserved
// 0x100 : Data signal of B_cid_port3
//         bit 31~0 - B_cid_port3[31:0] (Read/Write)
// 0x104 : Data signal of B_cid_port3
//         bit 31~0 - B_cid_port3[63:32] (Read/Write)
// 0x108 : reserved
// 0x10c : Data signal of B_val_port4
//         bit 31~0 - B_val_port4[31:0] (Read/Write)
// 0x110 : Data signal of B_val_port4
//         bit 31~0 - B_val_port4[63:32] (Read/Write)
// 0x114 : reserved
// 0x118 : Data signal of B_cid_port4
//         bit 31~0 - B_cid_port4[31:0] (Read/Write)
// 0x11c : Data signal of B_cid_port4
//         bit 31~0 - B_cid_port4[63:32] (Read/Write)
// 0x120 : reserved
// 0x124 : Data signal of C_rcsr
//         bit 31~0 - C_rcsr[31:0] (Read/Write)
// 0x128 : Data signal of C_rcsr
//         bit 31~0 - C_rcsr[63:32] (Read/Write)
// 0x12c : reserved
// 0x130 : Data signal of C_cid
//         bit 31~0 - C_cid[31:0] (Read/Write)
// 0x134 : Data signal of C_cid
//         bit 31~0 - C_cid[63:32] (Read/Write)
// 0x138 : reserved
// 0x13c : Data signal of C_val
//         bit 31~0 - C_val[31:0] (Read/Write)
// 0x140 : Data signal of C_val
//         bit 31~0 - C_val[63:32] (Read/Write)
// 0x144 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_A_RCSR_DATA_0      = 9'h010,
    ADDR_A_RCSR_DATA_1      = 9'h014,
    ADDR_A_RCSR_CTRL        = 9'h018,
    ADDR_A_CID_DATA_0       = 9'h01c,
    ADDR_A_CID_DATA_1       = 9'h020,
    ADDR_A_CID_CTRL         = 9'h024,
    ADDR_A_VAL_DATA_0       = 9'h028,
    ADDR_A_VAL_DATA_1       = 9'h02c,
    ADDR_A_VAL_CTRL         = 9'h030,
    ADDR_B_RCSR1_DATA_0     = 9'h034,
    ADDR_B_RCSR1_DATA_1     = 9'h038,
    ADDR_B_RCSR1_CTRL       = 9'h03c,
    ADDR_B_RCSR2_DATA_0     = 9'h040,
    ADDR_B_RCSR2_DATA_1     = 9'h044,
    ADDR_B_RCSR2_CTRL       = 9'h048,
    ADDR_B_RCSR3_DATA_0     = 9'h04c,
    ADDR_B_RCSR3_DATA_1     = 9'h050,
    ADDR_B_RCSR3_CTRL       = 9'h054,
    ADDR_B_RCSR4_DATA_0     = 9'h058,
    ADDR_B_RCSR4_DATA_1     = 9'h05c,
    ADDR_B_RCSR4_CTRL       = 9'h060,
    ADDR_B_VAL1_DATA_0      = 9'h064,
    ADDR_B_VAL1_DATA_1      = 9'h068,
    ADDR_B_VAL1_CTRL        = 9'h06c,
    ADDR_B_CID1_DATA_0      = 9'h070,
    ADDR_B_CID1_DATA_1      = 9'h074,
    ADDR_B_CID1_CTRL        = 9'h078,
    ADDR_B_VAL2_DATA_0      = 9'h07c,
    ADDR_B_VAL2_DATA_1      = 9'h080,
    ADDR_B_VAL2_CTRL        = 9'h084,
    ADDR_B_CID2_DATA_0      = 9'h088,
    ADDR_B_CID2_DATA_1      = 9'h08c,
    ADDR_B_CID2_CTRL        = 9'h090,
    ADDR_B_VAL3_DATA_0      = 9'h094,
    ADDR_B_VAL3_DATA_1      = 9'h098,
    ADDR_B_VAL3_CTRL        = 9'h09c,
    ADDR_B_CID3_DATA_0      = 9'h0a0,
    ADDR_B_CID3_DATA_1      = 9'h0a4,
    ADDR_B_CID3_CTRL        = 9'h0a8,
    ADDR_B_VAL4_DATA_0      = 9'h0ac,
    ADDR_B_VAL4_DATA_1      = 9'h0b0,
    ADDR_B_VAL4_CTRL        = 9'h0b4,
    ADDR_B_CID4_DATA_0      = 9'h0b8,
    ADDR_B_CID4_DATA_1      = 9'h0bc,
    ADDR_B_CID4_CTRL        = 9'h0c0,
    ADDR_B_VAL_PORT1_DATA_0 = 9'h0c4,
    ADDR_B_VAL_PORT1_DATA_1 = 9'h0c8,
    ADDR_B_VAL_PORT1_CTRL   = 9'h0cc,
    ADDR_B_CID_PORT1_DATA_0 = 9'h0d0,
    ADDR_B_CID_PORT1_DATA_1 = 9'h0d4,
    ADDR_B_CID_PORT1_CTRL   = 9'h0d8,
    ADDR_B_VAL_PORT2_DATA_0 = 9'h0dc,
    ADDR_B_VAL_PORT2_DATA_1 = 9'h0e0,
    ADDR_B_VAL_PORT2_CTRL   = 9'h0e4,
    ADDR_B_CID_PORT2_DATA_0 = 9'h0e8,
    ADDR_B_CID_PORT2_DATA_1 = 9'h0ec,
    ADDR_B_CID_PORT2_CTRL   = 9'h0f0,
    ADDR_B_VAL_PORT3_DATA_0 = 9'h0f4,
    ADDR_B_VAL_PORT3_DATA_1 = 9'h0f8,
    ADDR_B_VAL_PORT3_CTRL   = 9'h0fc,
    ADDR_B_CID_PORT3_DATA_0 = 9'h100,
    ADDR_B_CID_PORT3_DATA_1 = 9'h104,
    ADDR_B_CID_PORT3_CTRL   = 9'h108,
    ADDR_B_VAL_PORT4_DATA_0 = 9'h10c,
    ADDR_B_VAL_PORT4_DATA_1 = 9'h110,
    ADDR_B_VAL_PORT4_CTRL   = 9'h114,
    ADDR_B_CID_PORT4_DATA_0 = 9'h118,
    ADDR_B_CID_PORT4_DATA_1 = 9'h11c,
    ADDR_B_CID_PORT4_CTRL   = 9'h120,
    ADDR_C_RCSR_DATA_0      = 9'h124,
    ADDR_C_RCSR_DATA_1      = 9'h128,
    ADDR_C_RCSR_CTRL        = 9'h12c,
    ADDR_C_CID_DATA_0       = 9'h130,
    ADDR_C_CID_DATA_1       = 9'h134,
    ADDR_C_CID_CTRL         = 9'h138,
    ADDR_C_VAL_DATA_0       = 9'h13c,
    ADDR_C_VAL_DATA_1       = 9'h140,
    ADDR_C_VAL_CTRL         = 9'h144,
    WRIDLE                  = 2'd0,
    WRDATA                  = 2'd1,
    WRRESP                  = 2'd2,
    WRRESET                 = 2'd3,
    RDIDLE                  = 2'd0,
    RDDATA                  = 2'd1,
    RDRESET                 = 2'd2,
    ADDR_BITS                = 9;

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
    reg  [63:0]                   int_A_rcsr = 'b0;
    reg  [63:0]                   int_A_cid = 'b0;
    reg  [63:0]                   int_A_val = 'b0;
    reg  [63:0]                   int_B_rcsr1 = 'b0;
    reg  [63:0]                   int_B_rcsr2 = 'b0;
    reg  [63:0]                   int_B_rcsr3 = 'b0;
    reg  [63:0]                   int_B_rcsr4 = 'b0;
    reg  [63:0]                   int_B_val1 = 'b0;
    reg  [63:0]                   int_B_cid1 = 'b0;
    reg  [63:0]                   int_B_val2 = 'b0;
    reg  [63:0]                   int_B_cid2 = 'b0;
    reg  [63:0]                   int_B_val3 = 'b0;
    reg  [63:0]                   int_B_cid3 = 'b0;
    reg  [63:0]                   int_B_val4 = 'b0;
    reg  [63:0]                   int_B_cid4 = 'b0;
    reg  [63:0]                   int_B_val_port1 = 'b0;
    reg  [63:0]                   int_B_cid_port1 = 'b0;
    reg  [63:0]                   int_B_val_port2 = 'b0;
    reg  [63:0]                   int_B_cid_port2 = 'b0;
    reg  [63:0]                   int_B_val_port3 = 'b0;
    reg  [63:0]                   int_B_cid_port3 = 'b0;
    reg  [63:0]                   int_B_val_port4 = 'b0;
    reg  [63:0]                   int_B_cid_port4 = 'b0;
    reg  [63:0]                   int_C_rcsr = 'b0;
    reg  [63:0]                   int_C_cid = 'b0;
    reg  [63:0]                   int_C_val = 'b0;

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
                ADDR_A_RCSR_DATA_0: begin
                    rdata <= int_A_rcsr[31:0];
                end
                ADDR_A_RCSR_DATA_1: begin
                    rdata <= int_A_rcsr[63:32];
                end
                ADDR_A_CID_DATA_0: begin
                    rdata <= int_A_cid[31:0];
                end
                ADDR_A_CID_DATA_1: begin
                    rdata <= int_A_cid[63:32];
                end
                ADDR_A_VAL_DATA_0: begin
                    rdata <= int_A_val[31:0];
                end
                ADDR_A_VAL_DATA_1: begin
                    rdata <= int_A_val[63:32];
                end
                ADDR_B_RCSR1_DATA_0: begin
                    rdata <= int_B_rcsr1[31:0];
                end
                ADDR_B_RCSR1_DATA_1: begin
                    rdata <= int_B_rcsr1[63:32];
                end
                ADDR_B_RCSR2_DATA_0: begin
                    rdata <= int_B_rcsr2[31:0];
                end
                ADDR_B_RCSR2_DATA_1: begin
                    rdata <= int_B_rcsr2[63:32];
                end
                ADDR_B_RCSR3_DATA_0: begin
                    rdata <= int_B_rcsr3[31:0];
                end
                ADDR_B_RCSR3_DATA_1: begin
                    rdata <= int_B_rcsr3[63:32];
                end
                ADDR_B_RCSR4_DATA_0: begin
                    rdata <= int_B_rcsr4[31:0];
                end
                ADDR_B_RCSR4_DATA_1: begin
                    rdata <= int_B_rcsr4[63:32];
                end
                ADDR_B_VAL1_DATA_0: begin
                    rdata <= int_B_val1[31:0];
                end
                ADDR_B_VAL1_DATA_1: begin
                    rdata <= int_B_val1[63:32];
                end
                ADDR_B_CID1_DATA_0: begin
                    rdata <= int_B_cid1[31:0];
                end
                ADDR_B_CID1_DATA_1: begin
                    rdata <= int_B_cid1[63:32];
                end
                ADDR_B_VAL2_DATA_0: begin
                    rdata <= int_B_val2[31:0];
                end
                ADDR_B_VAL2_DATA_1: begin
                    rdata <= int_B_val2[63:32];
                end
                ADDR_B_CID2_DATA_0: begin
                    rdata <= int_B_cid2[31:0];
                end
                ADDR_B_CID2_DATA_1: begin
                    rdata <= int_B_cid2[63:32];
                end
                ADDR_B_VAL3_DATA_0: begin
                    rdata <= int_B_val3[31:0];
                end
                ADDR_B_VAL3_DATA_1: begin
                    rdata <= int_B_val3[63:32];
                end
                ADDR_B_CID3_DATA_0: begin
                    rdata <= int_B_cid3[31:0];
                end
                ADDR_B_CID3_DATA_1: begin
                    rdata <= int_B_cid3[63:32];
                end
                ADDR_B_VAL4_DATA_0: begin
                    rdata <= int_B_val4[31:0];
                end
                ADDR_B_VAL4_DATA_1: begin
                    rdata <= int_B_val4[63:32];
                end
                ADDR_B_CID4_DATA_0: begin
                    rdata <= int_B_cid4[31:0];
                end
                ADDR_B_CID4_DATA_1: begin
                    rdata <= int_B_cid4[63:32];
                end
                ADDR_B_VAL_PORT1_DATA_0: begin
                    rdata <= int_B_val_port1[31:0];
                end
                ADDR_B_VAL_PORT1_DATA_1: begin
                    rdata <= int_B_val_port1[63:32];
                end
                ADDR_B_CID_PORT1_DATA_0: begin
                    rdata <= int_B_cid_port1[31:0];
                end
                ADDR_B_CID_PORT1_DATA_1: begin
                    rdata <= int_B_cid_port1[63:32];
                end
                ADDR_B_VAL_PORT2_DATA_0: begin
                    rdata <= int_B_val_port2[31:0];
                end
                ADDR_B_VAL_PORT2_DATA_1: begin
                    rdata <= int_B_val_port2[63:32];
                end
                ADDR_B_CID_PORT2_DATA_0: begin
                    rdata <= int_B_cid_port2[31:0];
                end
                ADDR_B_CID_PORT2_DATA_1: begin
                    rdata <= int_B_cid_port2[63:32];
                end
                ADDR_B_VAL_PORT3_DATA_0: begin
                    rdata <= int_B_val_port3[31:0];
                end
                ADDR_B_VAL_PORT3_DATA_1: begin
                    rdata <= int_B_val_port3[63:32];
                end
                ADDR_B_CID_PORT3_DATA_0: begin
                    rdata <= int_B_cid_port3[31:0];
                end
                ADDR_B_CID_PORT3_DATA_1: begin
                    rdata <= int_B_cid_port3[63:32];
                end
                ADDR_B_VAL_PORT4_DATA_0: begin
                    rdata <= int_B_val_port4[31:0];
                end
                ADDR_B_VAL_PORT4_DATA_1: begin
                    rdata <= int_B_val_port4[63:32];
                end
                ADDR_B_CID_PORT4_DATA_0: begin
                    rdata <= int_B_cid_port4[31:0];
                end
                ADDR_B_CID_PORT4_DATA_1: begin
                    rdata <= int_B_cid_port4[63:32];
                end
                ADDR_C_RCSR_DATA_0: begin
                    rdata <= int_C_rcsr[31:0];
                end
                ADDR_C_RCSR_DATA_1: begin
                    rdata <= int_C_rcsr[63:32];
                end
                ADDR_C_CID_DATA_0: begin
                    rdata <= int_C_cid[31:0];
                end
                ADDR_C_CID_DATA_1: begin
                    rdata <= int_C_cid[63:32];
                end
                ADDR_C_VAL_DATA_0: begin
                    rdata <= int_C_val[31:0];
                end
                ADDR_C_VAL_DATA_1: begin
                    rdata <= int_C_val[63:32];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign A_rcsr      = int_A_rcsr;
assign A_cid       = int_A_cid;
assign A_val       = int_A_val;
assign B_rcsr1     = int_B_rcsr1;
assign B_rcsr2     = int_B_rcsr2;
assign B_rcsr3     = int_B_rcsr3;
assign B_rcsr4     = int_B_rcsr4;
assign B_val1      = int_B_val1;
assign B_cid1      = int_B_cid1;
assign B_val2      = int_B_val2;
assign B_cid2      = int_B_cid2;
assign B_val3      = int_B_val3;
assign B_cid3      = int_B_cid3;
assign B_val4      = int_B_val4;
assign B_cid4      = int_B_cid4;
assign B_val_port1 = int_B_val_port1;
assign B_cid_port1 = int_B_cid_port1;
assign B_val_port2 = int_B_val_port2;
assign B_cid_port2 = int_B_cid_port2;
assign B_val_port3 = int_B_val_port3;
assign B_cid_port3 = int_B_cid_port3;
assign B_val_port4 = int_B_val_port4;
assign B_cid_port4 = int_B_cid_port4;
assign C_rcsr      = int_C_rcsr;
assign C_cid       = int_C_cid;
assign C_val       = int_C_val;
// int_A_rcsr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_rcsr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_RCSR_DATA_0)
            int_A_rcsr[31:0] <= (WDATA[31:0] & wmask) | (int_A_rcsr[31:0] & ~wmask);
    end
end

// int_A_rcsr[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_rcsr[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_RCSR_DATA_1)
            int_A_rcsr[63:32] <= (WDATA[31:0] & wmask) | (int_A_rcsr[63:32] & ~wmask);
    end
end

// int_A_cid[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_cid[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_CID_DATA_0)
            int_A_cid[31:0] <= (WDATA[31:0] & wmask) | (int_A_cid[31:0] & ~wmask);
    end
end

// int_A_cid[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_cid[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_CID_DATA_1)
            int_A_cid[63:32] <= (WDATA[31:0] & wmask) | (int_A_cid[63:32] & ~wmask);
    end
end

// int_A_val[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_val[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_VAL_DATA_0)
            int_A_val[31:0] <= (WDATA[31:0] & wmask) | (int_A_val[31:0] & ~wmask);
    end
end

// int_A_val[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_val[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_VAL_DATA_1)
            int_A_val[63:32] <= (WDATA[31:0] & wmask) | (int_A_val[63:32] & ~wmask);
    end
end

// int_B_rcsr1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_rcsr1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_RCSR1_DATA_0)
            int_B_rcsr1[31:0] <= (WDATA[31:0] & wmask) | (int_B_rcsr1[31:0] & ~wmask);
    end
end

// int_B_rcsr1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_rcsr1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_RCSR1_DATA_1)
            int_B_rcsr1[63:32] <= (WDATA[31:0] & wmask) | (int_B_rcsr1[63:32] & ~wmask);
    end
end

// int_B_rcsr2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_rcsr2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_RCSR2_DATA_0)
            int_B_rcsr2[31:0] <= (WDATA[31:0] & wmask) | (int_B_rcsr2[31:0] & ~wmask);
    end
end

// int_B_rcsr2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_rcsr2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_RCSR2_DATA_1)
            int_B_rcsr2[63:32] <= (WDATA[31:0] & wmask) | (int_B_rcsr2[63:32] & ~wmask);
    end
end

// int_B_rcsr3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_rcsr3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_RCSR3_DATA_0)
            int_B_rcsr3[31:0] <= (WDATA[31:0] & wmask) | (int_B_rcsr3[31:0] & ~wmask);
    end
end

// int_B_rcsr3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_rcsr3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_RCSR3_DATA_1)
            int_B_rcsr3[63:32] <= (WDATA[31:0] & wmask) | (int_B_rcsr3[63:32] & ~wmask);
    end
end

// int_B_rcsr4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_rcsr4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_RCSR4_DATA_0)
            int_B_rcsr4[31:0] <= (WDATA[31:0] & wmask) | (int_B_rcsr4[31:0] & ~wmask);
    end
end

// int_B_rcsr4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_rcsr4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_RCSR4_DATA_1)
            int_B_rcsr4[63:32] <= (WDATA[31:0] & wmask) | (int_B_rcsr4[63:32] & ~wmask);
    end
end

// int_B_val1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL1_DATA_0)
            int_B_val1[31:0] <= (WDATA[31:0] & wmask) | (int_B_val1[31:0] & ~wmask);
    end
end

// int_B_val1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL1_DATA_1)
            int_B_val1[63:32] <= (WDATA[31:0] & wmask) | (int_B_val1[63:32] & ~wmask);
    end
end

// int_B_cid1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID1_DATA_0)
            int_B_cid1[31:0] <= (WDATA[31:0] & wmask) | (int_B_cid1[31:0] & ~wmask);
    end
end

// int_B_cid1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID1_DATA_1)
            int_B_cid1[63:32] <= (WDATA[31:0] & wmask) | (int_B_cid1[63:32] & ~wmask);
    end
end

// int_B_val2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL2_DATA_0)
            int_B_val2[31:0] <= (WDATA[31:0] & wmask) | (int_B_val2[31:0] & ~wmask);
    end
end

// int_B_val2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL2_DATA_1)
            int_B_val2[63:32] <= (WDATA[31:0] & wmask) | (int_B_val2[63:32] & ~wmask);
    end
end

// int_B_cid2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID2_DATA_0)
            int_B_cid2[31:0] <= (WDATA[31:0] & wmask) | (int_B_cid2[31:0] & ~wmask);
    end
end

// int_B_cid2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID2_DATA_1)
            int_B_cid2[63:32] <= (WDATA[31:0] & wmask) | (int_B_cid2[63:32] & ~wmask);
    end
end

// int_B_val3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL3_DATA_0)
            int_B_val3[31:0] <= (WDATA[31:0] & wmask) | (int_B_val3[31:0] & ~wmask);
    end
end

// int_B_val3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL3_DATA_1)
            int_B_val3[63:32] <= (WDATA[31:0] & wmask) | (int_B_val3[63:32] & ~wmask);
    end
end

// int_B_cid3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID3_DATA_0)
            int_B_cid3[31:0] <= (WDATA[31:0] & wmask) | (int_B_cid3[31:0] & ~wmask);
    end
end

// int_B_cid3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID3_DATA_1)
            int_B_cid3[63:32] <= (WDATA[31:0] & wmask) | (int_B_cid3[63:32] & ~wmask);
    end
end

// int_B_val4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL4_DATA_0)
            int_B_val4[31:0] <= (WDATA[31:0] & wmask) | (int_B_val4[31:0] & ~wmask);
    end
end

// int_B_val4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL4_DATA_1)
            int_B_val4[63:32] <= (WDATA[31:0] & wmask) | (int_B_val4[63:32] & ~wmask);
    end
end

// int_B_cid4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID4_DATA_0)
            int_B_cid4[31:0] <= (WDATA[31:0] & wmask) | (int_B_cid4[31:0] & ~wmask);
    end
end

// int_B_cid4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID4_DATA_1)
            int_B_cid4[63:32] <= (WDATA[31:0] & wmask) | (int_B_cid4[63:32] & ~wmask);
    end
end

// int_B_val_port1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val_port1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL_PORT1_DATA_0)
            int_B_val_port1[31:0] <= (WDATA[31:0] & wmask) | (int_B_val_port1[31:0] & ~wmask);
    end
end

// int_B_val_port1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val_port1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL_PORT1_DATA_1)
            int_B_val_port1[63:32] <= (WDATA[31:0] & wmask) | (int_B_val_port1[63:32] & ~wmask);
    end
end

// int_B_cid_port1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid_port1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID_PORT1_DATA_0)
            int_B_cid_port1[31:0] <= (WDATA[31:0] & wmask) | (int_B_cid_port1[31:0] & ~wmask);
    end
end

// int_B_cid_port1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid_port1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID_PORT1_DATA_1)
            int_B_cid_port1[63:32] <= (WDATA[31:0] & wmask) | (int_B_cid_port1[63:32] & ~wmask);
    end
end

// int_B_val_port2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val_port2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL_PORT2_DATA_0)
            int_B_val_port2[31:0] <= (WDATA[31:0] & wmask) | (int_B_val_port2[31:0] & ~wmask);
    end
end

// int_B_val_port2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val_port2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL_PORT2_DATA_1)
            int_B_val_port2[63:32] <= (WDATA[31:0] & wmask) | (int_B_val_port2[63:32] & ~wmask);
    end
end

// int_B_cid_port2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid_port2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID_PORT2_DATA_0)
            int_B_cid_port2[31:0] <= (WDATA[31:0] & wmask) | (int_B_cid_port2[31:0] & ~wmask);
    end
end

// int_B_cid_port2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid_port2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID_PORT2_DATA_1)
            int_B_cid_port2[63:32] <= (WDATA[31:0] & wmask) | (int_B_cid_port2[63:32] & ~wmask);
    end
end

// int_B_val_port3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val_port3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL_PORT3_DATA_0)
            int_B_val_port3[31:0] <= (WDATA[31:0] & wmask) | (int_B_val_port3[31:0] & ~wmask);
    end
end

// int_B_val_port3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val_port3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL_PORT3_DATA_1)
            int_B_val_port3[63:32] <= (WDATA[31:0] & wmask) | (int_B_val_port3[63:32] & ~wmask);
    end
end

// int_B_cid_port3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid_port3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID_PORT3_DATA_0)
            int_B_cid_port3[31:0] <= (WDATA[31:0] & wmask) | (int_B_cid_port3[31:0] & ~wmask);
    end
end

// int_B_cid_port3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid_port3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID_PORT3_DATA_1)
            int_B_cid_port3[63:32] <= (WDATA[31:0] & wmask) | (int_B_cid_port3[63:32] & ~wmask);
    end
end

// int_B_val_port4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val_port4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL_PORT4_DATA_0)
            int_B_val_port4[31:0] <= (WDATA[31:0] & wmask) | (int_B_val_port4[31:0] & ~wmask);
    end
end

// int_B_val_port4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_val_port4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_VAL_PORT4_DATA_1)
            int_B_val_port4[63:32] <= (WDATA[31:0] & wmask) | (int_B_val_port4[63:32] & ~wmask);
    end
end

// int_B_cid_port4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid_port4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID_PORT4_DATA_0)
            int_B_cid_port4[31:0] <= (WDATA[31:0] & wmask) | (int_B_cid_port4[31:0] & ~wmask);
    end
end

// int_B_cid_port4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_B_cid_port4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_B_CID_PORT4_DATA_1)
            int_B_cid_port4[63:32] <= (WDATA[31:0] & wmask) | (int_B_cid_port4[63:32] & ~wmask);
    end
end

// int_C_rcsr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_C_rcsr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_RCSR_DATA_0)
            int_C_rcsr[31:0] <= (WDATA[31:0] & wmask) | (int_C_rcsr[31:0] & ~wmask);
    end
end

// int_C_rcsr[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_C_rcsr[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_RCSR_DATA_1)
            int_C_rcsr[63:32] <= (WDATA[31:0] & wmask) | (int_C_rcsr[63:32] & ~wmask);
    end
end

// int_C_cid[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_C_cid[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_CID_DATA_0)
            int_C_cid[31:0] <= (WDATA[31:0] & wmask) | (int_C_cid[31:0] & ~wmask);
    end
end

// int_C_cid[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_C_cid[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_CID_DATA_1)
            int_C_cid[63:32] <= (WDATA[31:0] & wmask) | (int_C_cid[63:32] & ~wmask);
    end
end

// int_C_val[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_C_val[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_VAL_DATA_0)
            int_C_val[31:0] <= (WDATA[31:0] & wmask) | (int_C_val[31:0] & ~wmask);
    end
end

// int_C_val[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_C_val[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_VAL_DATA_1)
            int_C_val[63:32] <= (WDATA[31:0] & wmask) | (int_C_val[63:32] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
