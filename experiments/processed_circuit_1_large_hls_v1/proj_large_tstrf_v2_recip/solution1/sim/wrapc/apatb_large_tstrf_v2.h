// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_large_tstrf_v2 (
volatile void* u_col_ptr,
volatile void* u_row_idx,
volatile void* u_csr_val,
volatile void* u_csc_to_csr,
volatile void* u_diag_pos,
volatile void* b_ptr,
volatile void* b_idx,
volatile void* b_val,
volatile void* x_ptr,
volatile void* x_idx,
volatile void* x_val,
volatile void* active_rows,
int active_count,
volatile void* work,
int n,
float pivot_eps,
volatile void* status,
volatile void* muladds,
volatile void* divisions);
