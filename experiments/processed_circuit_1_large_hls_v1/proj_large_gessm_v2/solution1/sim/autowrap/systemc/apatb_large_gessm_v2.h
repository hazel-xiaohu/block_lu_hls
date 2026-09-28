// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_large_gessm_v2 (
volatile void* l_ptr,
volatile void* l_idx,
volatile void* l_val,
volatile void* b_ptr,
volatile void* b_idx,
volatile void* b_val,
volatile void* x_ptr,
volatile void* x_idx,
volatile void* x_val_csc,
volatile void* x_csc_to_csr,
volatile void* x_val_csr,
volatile void* active_cols,
int active_count,
volatile void* work,
int n,
volatile void* status,
volatile void* muladds);
