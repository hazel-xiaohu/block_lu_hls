// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of u_col_ptr
//        bit 31~0 - u_col_ptr[31:0] (Read/Write)
// 0x14 : Data signal of u_col_ptr
//        bit 31~0 - u_col_ptr[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of u_row_idx
//        bit 31~0 - u_row_idx[31:0] (Read/Write)
// 0x20 : Data signal of u_row_idx
//        bit 31~0 - u_row_idx[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of u_csr_val
//        bit 31~0 - u_csr_val[31:0] (Read/Write)
// 0x2c : Data signal of u_csr_val
//        bit 31~0 - u_csr_val[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of u_csc_to_csr
//        bit 31~0 - u_csc_to_csr[31:0] (Read/Write)
// 0x38 : Data signal of u_csc_to_csr
//        bit 31~0 - u_csc_to_csr[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of u_diag_pos
//        bit 31~0 - u_diag_pos[31:0] (Read/Write)
// 0x44 : Data signal of u_diag_pos
//        bit 31~0 - u_diag_pos[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of b_ptr
//        bit 31~0 - b_ptr[31:0] (Read/Write)
// 0x50 : Data signal of b_ptr
//        bit 31~0 - b_ptr[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of b_idx
//        bit 31~0 - b_idx[31:0] (Read/Write)
// 0x5c : Data signal of b_idx
//        bit 31~0 - b_idx[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of b_val
//        bit 31~0 - b_val[31:0] (Read/Write)
// 0x68 : Data signal of b_val
//        bit 31~0 - b_val[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of x_ptr
//        bit 31~0 - x_ptr[31:0] (Read/Write)
// 0x74 : Data signal of x_ptr
//        bit 31~0 - x_ptr[63:32] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of x_idx
//        bit 31~0 - x_idx[31:0] (Read/Write)
// 0x80 : Data signal of x_idx
//        bit 31~0 - x_idx[63:32] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of x_val
//        bit 31~0 - x_val[31:0] (Read/Write)
// 0x8c : Data signal of x_val
//        bit 31~0 - x_val[63:32] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of active_rows
//        bit 31~0 - active_rows[31:0] (Read/Write)
// 0x98 : Data signal of active_rows
//        bit 31~0 - active_rows[63:32] (Read/Write)
// 0x9c : reserved
// 0xa0 : Data signal of work
//        bit 31~0 - work[31:0] (Read/Write)
// 0xa4 : Data signal of work
//        bit 31~0 - work[63:32] (Read/Write)
// 0xa8 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XLARGE_TSTRF_V2_CONTROL_ADDR_AP_CTRL           0x00
#define XLARGE_TSTRF_V2_CONTROL_ADDR_GIE               0x04
#define XLARGE_TSTRF_V2_CONTROL_ADDR_IER               0x08
#define XLARGE_TSTRF_V2_CONTROL_ADDR_ISR               0x0c
#define XLARGE_TSTRF_V2_CONTROL_ADDR_U_COL_PTR_DATA    0x10
#define XLARGE_TSTRF_V2_CONTROL_BITS_U_COL_PTR_DATA    64
#define XLARGE_TSTRF_V2_CONTROL_ADDR_U_ROW_IDX_DATA    0x1c
#define XLARGE_TSTRF_V2_CONTROL_BITS_U_ROW_IDX_DATA    64
#define XLARGE_TSTRF_V2_CONTROL_ADDR_U_CSR_VAL_DATA    0x28
#define XLARGE_TSTRF_V2_CONTROL_BITS_U_CSR_VAL_DATA    64
#define XLARGE_TSTRF_V2_CONTROL_ADDR_U_CSC_TO_CSR_DATA 0x34
#define XLARGE_TSTRF_V2_CONTROL_BITS_U_CSC_TO_CSR_DATA 64
#define XLARGE_TSTRF_V2_CONTROL_ADDR_U_DIAG_POS_DATA   0x40
#define XLARGE_TSTRF_V2_CONTROL_BITS_U_DIAG_POS_DATA   64
#define XLARGE_TSTRF_V2_CONTROL_ADDR_B_PTR_DATA        0x4c
#define XLARGE_TSTRF_V2_CONTROL_BITS_B_PTR_DATA        64
#define XLARGE_TSTRF_V2_CONTROL_ADDR_B_IDX_DATA        0x58
#define XLARGE_TSTRF_V2_CONTROL_BITS_B_IDX_DATA        64
#define XLARGE_TSTRF_V2_CONTROL_ADDR_B_VAL_DATA        0x64
#define XLARGE_TSTRF_V2_CONTROL_BITS_B_VAL_DATA        64
#define XLARGE_TSTRF_V2_CONTROL_ADDR_X_PTR_DATA        0x70
#define XLARGE_TSTRF_V2_CONTROL_BITS_X_PTR_DATA        64
#define XLARGE_TSTRF_V2_CONTROL_ADDR_X_IDX_DATA        0x7c
#define XLARGE_TSTRF_V2_CONTROL_BITS_X_IDX_DATA        64
#define XLARGE_TSTRF_V2_CONTROL_ADDR_X_VAL_DATA        0x88
#define XLARGE_TSTRF_V2_CONTROL_BITS_X_VAL_DATA        64
#define XLARGE_TSTRF_V2_CONTROL_ADDR_ACTIVE_ROWS_DATA  0x94
#define XLARGE_TSTRF_V2_CONTROL_BITS_ACTIVE_ROWS_DATA  64
#define XLARGE_TSTRF_V2_CONTROL_ADDR_WORK_DATA         0xa0
#define XLARGE_TSTRF_V2_CONTROL_BITS_WORK_DATA         64

