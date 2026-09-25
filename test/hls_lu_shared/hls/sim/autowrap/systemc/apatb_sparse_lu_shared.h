// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

extern "C" void AESL_WRAP_sparse_lu_shared (
int operation,
volatile void* A_rcsr,
volatile void* A_cid,
volatile void* A_val_r,
volatile void* L_rcsr,
volatile void* L_cid,
volatile void* L_val_r,
volatile void* U_rcsr,
volatile void* U_cid,
volatile void* U_val_r,
volatile void* X_rcsr,
volatile void* X_cid,
volatile void* X_val_r,
int n,
int a_nnz,
int l_nnz,
int u_nnz,
int x_rows,
int x_cols,
int x_nnz,
float pivot_eps,
volatile void* status,
volatile void* failed_row);
