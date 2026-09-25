// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
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
// 0x10 : Data signal of operation
//        bit 31~0 - operation[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of n
//        bit 31~0 - n[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of a_nnz
//        bit 31~0 - a_nnz[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of l_nnz
//        bit 31~0 - l_nnz[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of u_nnz
//        bit 31~0 - u_nnz[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of x_rows
//        bit 31~0 - x_rows[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of x_cols
//        bit 31~0 - x_cols[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of x_nnz
//        bit 31~0 - x_nnz[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of pivot_eps
//        bit 31~0 - pivot_eps[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of status
//        bit 31~0 - status[31:0] (Read)
// 0x5c : Control signal of status
//        bit 0  - status_ap_vld (Read/COR)
//        others - reserved
// 0x68 : Data signal of failed_row
//        bit 31~0 - failed_row[31:0] (Read)
// 0x6c : Control signal of failed_row
//        bit 0  - failed_row_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSPARSE_LU_SHARED_CONTROL_ADDR_AP_CTRL         0x00
#define XSPARSE_LU_SHARED_CONTROL_ADDR_GIE             0x04
#define XSPARSE_LU_SHARED_CONTROL_ADDR_IER             0x08
#define XSPARSE_LU_SHARED_CONTROL_ADDR_ISR             0x0c
#define XSPARSE_LU_SHARED_CONTROL_ADDR_OPERATION_DATA  0x10
#define XSPARSE_LU_SHARED_CONTROL_BITS_OPERATION_DATA  32
#define XSPARSE_LU_SHARED_CONTROL_ADDR_N_DATA          0x18
#define XSPARSE_LU_SHARED_CONTROL_BITS_N_DATA          32
#define XSPARSE_LU_SHARED_CONTROL_ADDR_A_NNZ_DATA      0x20
#define XSPARSE_LU_SHARED_CONTROL_BITS_A_NNZ_DATA      32
#define XSPARSE_LU_SHARED_CONTROL_ADDR_L_NNZ_DATA      0x28
#define XSPARSE_LU_SHARED_CONTROL_BITS_L_NNZ_DATA      32
#define XSPARSE_LU_SHARED_CONTROL_ADDR_U_NNZ_DATA      0x30
#define XSPARSE_LU_SHARED_CONTROL_BITS_U_NNZ_DATA      32
#define XSPARSE_LU_SHARED_CONTROL_ADDR_X_ROWS_DATA     0x38
#define XSPARSE_LU_SHARED_CONTROL_BITS_X_ROWS_DATA     32
#define XSPARSE_LU_SHARED_CONTROL_ADDR_X_COLS_DATA     0x40
#define XSPARSE_LU_SHARED_CONTROL_BITS_X_COLS_DATA     32
#define XSPARSE_LU_SHARED_CONTROL_ADDR_X_NNZ_DATA      0x48
#define XSPARSE_LU_SHARED_CONTROL_BITS_X_NNZ_DATA      32
#define XSPARSE_LU_SHARED_CONTROL_ADDR_PIVOT_EPS_DATA  0x50
#define XSPARSE_LU_SHARED_CONTROL_BITS_PIVOT_EPS_DATA  32
#define XSPARSE_LU_SHARED_CONTROL_ADDR_STATUS_DATA     0x58
#define XSPARSE_LU_SHARED_CONTROL_BITS_STATUS_DATA     32
#define XSPARSE_LU_SHARED_CONTROL_ADDR_STATUS_CTRL     0x5c
#define XSPARSE_LU_SHARED_CONTROL_ADDR_FAILED_ROW_DATA 0x68
#define XSPARSE_LU_SHARED_CONTROL_BITS_FAILED_ROW_DATA 32
#define XSPARSE_LU_SHARED_CONTROL_ADDR_FAILED_ROW_CTRL 0x6c

// control_r
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
// 0x7c : Data signal of X_rcsr
//        bit 31~0 - X_rcsr[31:0] (Read/Write)
// 0x80 : Data signal of X_rcsr
//        bit 31~0 - X_rcsr[63:32] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of X_cid
//        bit 31~0 - X_cid[31:0] (Read/Write)
// 0x8c : Data signal of X_cid
//        bit 31~0 - X_cid[63:32] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of X_val_r
//        bit 31~0 - X_val_r[31:0] (Read/Write)
// 0x98 : Data signal of X_val_r
//        bit 31~0 - X_val_r[63:32] (Read/Write)
// 0x9c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_RCSR_DATA  0x10
#define XSPARSE_LU_SHARED_CONTROL_R_BITS_A_RCSR_DATA  64
#define XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_CID_DATA   0x1c
#define XSPARSE_LU_SHARED_CONTROL_R_BITS_A_CID_DATA   64
#define XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_VAL_R_DATA 0x28
#define XSPARSE_LU_SHARED_CONTROL_R_BITS_A_VAL_R_DATA 64
#define XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_RCSR_DATA  0x34
#define XSPARSE_LU_SHARED_CONTROL_R_BITS_L_RCSR_DATA  64
#define XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_CID_DATA   0x40
#define XSPARSE_LU_SHARED_CONTROL_R_BITS_L_CID_DATA   64
#define XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_VAL_R_DATA 0x4c
#define XSPARSE_LU_SHARED_CONTROL_R_BITS_L_VAL_R_DATA 64
#define XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_RCSR_DATA  0x58
#define XSPARSE_LU_SHARED_CONTROL_R_BITS_U_RCSR_DATA  64
#define XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_CID_DATA   0x64
#define XSPARSE_LU_SHARED_CONTROL_R_BITS_U_CID_DATA   64
#define XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_VAL_R_DATA 0x70
#define XSPARSE_LU_SHARED_CONTROL_R_BITS_U_VAL_R_DATA 64
#define XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_RCSR_DATA  0x7c
#define XSPARSE_LU_SHARED_CONTROL_R_BITS_X_RCSR_DATA  64
#define XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_CID_DATA   0x88
#define XSPARSE_LU_SHARED_CONTROL_R_BITS_X_CID_DATA   64
#define XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_VAL_R_DATA 0x94
#define XSPARSE_LU_SHARED_CONTROL_R_BITS_X_VAL_R_DATA 64

