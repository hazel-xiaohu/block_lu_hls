// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_large_getrf (
volatile void* a_ptr,
volatile void* a_idx,
volatile void* a_val,
volatile void* l_ptr,
volatile void* l_idx,
volatile void* l_val,
volatile void* u_ptr,
volatile void* u_idx,
volatile void* u_val,
volatile void* u_diag_pos,
volatile void* work,
volatile void* mark,
int n,
float pivot_eps,
volatile void* status,
volatile void* muladds,
volatile void* divisions);
