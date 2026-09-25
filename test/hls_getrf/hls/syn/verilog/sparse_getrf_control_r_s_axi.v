// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
(* DowngradeIPIdentifiedWarnings="yes" *) module sparse_getrf_control_r_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
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
    output wire [63:0]                   A_val_r,
    output wire [63:0]                   L_rcsr,
    output wire [63:0]                   L_cid,
    output wire [63:0]                   L_val_r,
    output wire [63:0]                   U_rcsr,
    output wire [63:0]                   U_cid,
    output wire [63:0]                   U_val_r
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_none
//
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of A_rcsr
//        bit 31~0 - A_rcsr[31:0] (Read/Write)
// 0x14 : Data signal of A_rcsr
//        bit 31~0 - A_rcsr[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of A_cid
//        bit 31~0 - A_cid[31:0] (Read/Write)
// 0x20 : Data signal of A_cid
//        bit 31~0 - A_cid[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of A_val_r
//        bit 31~0 - A_val_r[31:0] (Read/Write)
// 0x2c : Data signal of A_val_r
//        bit 31~0 - A_val_r[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of L_rcsr
//        bit 31~0 - L_rcsr[31:0] (Read/Write)
// 0x38 : Data signal of L_rcsr
//        bit 31~0 - L_rcsr[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of L_cid
//        bit 31~0 - L_cid[31:0] (Read/Write)
// 0x44 : Data signal of L_cid
//        bit 31~0 - L_cid[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of L_val_r
//        bit 31~0 - L_val_r[31:0] (Read/Write)
// 0x50 : Data signal of L_val_r
//        bit 31~0 - L_val_r[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of U_rcsr
//        bit 31~0 - U_rcsr[31:0] (Read/Write)
// 0x5c : Data signal of U_rcsr
//        bit 31~0 - U_rcsr[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of U_cid
//        bit 31~0 - U_cid[31:0] (Read/Write)
// 0x68 : Data signal of U_cid
//        bit 31~0 - U_cid[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of U_val_r
//        bit 31~0 - U_val_r[31:0] (Read/Write)
// 0x74 : Data signal of U_val_r
//        bit 31~0 - U_val_r[63:32] (Read/Write)
// 0x78 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_A_RCSR_DATA_0  = 7'h10,
    ADDR_A_RCSR_DATA_1  = 7'h14,
    ADDR_A_RCSR_CTRL    = 7'h18,
    ADDR_A_CID_DATA_0   = 7'h1c,
    ADDR_A_CID_DATA_1   = 7'h20,
    ADDR_A_CID_CTRL     = 7'h24,
    ADDR_A_VAL_R_DATA_0 = 7'h28,
    ADDR_A_VAL_R_DATA_1 = 7'h2c,
    ADDR_A_VAL_R_CTRL   = 7'h30,
    ADDR_L_RCSR_DATA_0  = 7'h34,
    ADDR_L_RCSR_DATA_1  = 7'h38,
    ADDR_L_RCSR_CTRL    = 7'h3c,
    ADDR_L_CID_DATA_0   = 7'h40,
    ADDR_L_CID_DATA_1   = 7'h44,
    ADDR_L_CID_CTRL     = 7'h48,
    ADDR_L_VAL_R_DATA_0 = 7'h4c,
    ADDR_L_VAL_R_DATA_1 = 7'h50,
    ADDR_L_VAL_R_CTRL   = 7'h54,
    ADDR_U_RCSR_DATA_0  = 7'h58,
    ADDR_U_RCSR_DATA_1  = 7'h5c,
    ADDR_U_RCSR_CTRL    = 7'h60,
    ADDR_U_CID_DATA_0   = 7'h64,
    ADDR_U_CID_DATA_1   = 7'h68,
    ADDR_U_CID_CTRL     = 7'h6c,
    ADDR_U_VAL_R_DATA_0 = 7'h70,
    ADDR_U_VAL_R_DATA_1 = 7'h74,
    ADDR_U_VAL_R_CTRL   = 7'h78,
    WRIDLE              = 2'd0,
    WRDATA              = 2'd1,
    WRRESP              = 2'd2,
    WRRESET             = 2'd3,
    RDIDLE              = 2'd0,
    RDDATA              = 2'd1,
    RDRESET             = 2'd2,
    ADDR_BITS                = 7;

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
    reg  [63:0]                   int_A_val_r = 'b0;
    reg  [63:0]                   int_L_rcsr = 'b0;
    reg  [63:0]                   int_L_cid = 'b0;
    reg  [63:0]                   int_L_val_r = 'b0;
    reg  [63:0]                   int_U_rcsr = 'b0;
    reg  [63:0]                   int_U_cid = 'b0;
    reg  [63:0]                   int_U_val_r = 'b0;

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
                ADDR_A_VAL_R_DATA_0: begin
                    rdata <= int_A_val_r[31:0];
                end
                ADDR_A_VAL_R_DATA_1: begin
                    rdata <= int_A_val_r[63:32];
                end
                ADDR_L_RCSR_DATA_0: begin
                    rdata <= int_L_rcsr[31:0];
                end
                ADDR_L_RCSR_DATA_1: begin
                    rdata <= int_L_rcsr[63:32];
                end
                ADDR_L_CID_DATA_0: begin
                    rdata <= int_L_cid[31:0];
                end
                ADDR_L_CID_DATA_1: begin
                    rdata <= int_L_cid[63:32];
                end
                ADDR_L_VAL_R_DATA_0: begin
                    rdata <= int_L_val_r[31:0];
                end
                ADDR_L_VAL_R_DATA_1: begin
                    rdata <= int_L_val_r[63:32];
                end
                ADDR_U_RCSR_DATA_0: begin
                    rdata <= int_U_rcsr[31:0];
                end
                ADDR_U_RCSR_DATA_1: begin
                    rdata <= int_U_rcsr[63:32];
                end
                ADDR_U_CID_DATA_0: begin
                    rdata <= int_U_cid[31:0];
                end
                ADDR_U_CID_DATA_1: begin
                    rdata <= int_U_cid[63:32];
                end
                ADDR_U_VAL_R_DATA_0: begin
                    rdata <= int_U_val_r[31:0];
                end
                ADDR_U_VAL_R_DATA_1: begin
                    rdata <= int_U_val_r[63:32];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign A_rcsr  = int_A_rcsr;
assign A_cid   = int_A_cid;
assign A_val_r = int_A_val_r;
assign L_rcsr  = int_L_rcsr;
assign L_cid   = int_L_cid;
assign L_val_r = int_L_val_r;
assign U_rcsr  = int_U_rcsr;
assign U_cid   = int_U_cid;
assign U_val_r = int_U_val_r;
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

// int_A_val_r[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_val_r[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_VAL_R_DATA_0)
            int_A_val_r[31:0] <= (WDATA[31:0] & wmask) | (int_A_val_r[31:0] & ~wmask);
    end
end

// int_A_val_r[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_A_val_r[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_A_VAL_R_DATA_1)
            int_A_val_r[63:32] <= (WDATA[31:0] & wmask) | (int_A_val_r[63:32] & ~wmask);
    end
end

// int_L_rcsr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_L_rcsr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_L_RCSR_DATA_0)
            int_L_rcsr[31:0] <= (WDATA[31:0] & wmask) | (int_L_rcsr[31:0] & ~wmask);
    end
end

// int_L_rcsr[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_L_rcsr[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_L_RCSR_DATA_1)
            int_L_rcsr[63:32] <= (WDATA[31:0] & wmask) | (int_L_rcsr[63:32] & ~wmask);
    end
end

// int_L_cid[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_L_cid[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_L_CID_DATA_0)
            int_L_cid[31:0] <= (WDATA[31:0] & wmask) | (int_L_cid[31:0] & ~wmask);
    end
end

// int_L_cid[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_L_cid[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_L_CID_DATA_1)
            int_L_cid[63:32] <= (WDATA[31:0] & wmask) | (int_L_cid[63:32] & ~wmask);
    end
end

// int_L_val_r[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_L_val_r[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_L_VAL_R_DATA_0)
            int_L_val_r[31:0] <= (WDATA[31:0] & wmask) | (int_L_val_r[31:0] & ~wmask);
    end
end

// int_L_val_r[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_L_val_r[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_L_VAL_R_DATA_1)
            int_L_val_r[63:32] <= (WDATA[31:0] & wmask) | (int_L_val_r[63:32] & ~wmask);
    end
end

// int_U_rcsr[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_U_rcsr[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_U_RCSR_DATA_0)
            int_U_rcsr[31:0] <= (WDATA[31:0] & wmask) | (int_U_rcsr[31:0] & ~wmask);
    end
end

// int_U_rcsr[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_U_rcsr[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_U_RCSR_DATA_1)
            int_U_rcsr[63:32] <= (WDATA[31:0] & wmask) | (int_U_rcsr[63:32] & ~wmask);
    end
end

// int_U_cid[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_U_cid[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_U_CID_DATA_0)
            int_U_cid[31:0] <= (WDATA[31:0] & wmask) | (int_U_cid[31:0] & ~wmask);
    end
end

// int_U_cid[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_U_cid[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_U_CID_DATA_1)
            int_U_cid[63:32] <= (WDATA[31:0] & wmask) | (int_U_cid[63:32] & ~wmask);
    end
end

// int_U_val_r[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_U_val_r[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_U_VAL_R_DATA_0)
            int_U_val_r[31:0] <= (WDATA[31:0] & wmask) | (int_U_val_r[31:0] & ~wmask);
    end
end

// int_U_val_r[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_U_val_r[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_U_VAL_R_DATA_1)
            int_U_val_r[63:32] <= (WDATA[31:0] & wmask) | (int_U_val_r[63:32] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
