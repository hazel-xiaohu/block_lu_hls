// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsparse_lu_shared.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSparse_lu_shared_CfgInitialize(XSparse_lu_shared *InstancePtr, XSparse_lu_shared_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSparse_lu_shared_Start(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSparse_lu_shared_IsDone(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSparse_lu_shared_IsIdle(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSparse_lu_shared_IsReady(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSparse_lu_shared_EnableAutoRestart(XSparse_lu_shared *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSparse_lu_shared_DisableAutoRestart(XSparse_lu_shared *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_AP_CTRL, 0);
}

void XSparse_lu_shared_Set_operation(XSparse_lu_shared *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_OPERATION_DATA, Data);
}

u32 XSparse_lu_shared_Get_operation(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_OPERATION_DATA);
    return Data;
}

void XSparse_lu_shared_Set_n(XSparse_lu_shared *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_N_DATA, Data);
}

u32 XSparse_lu_shared_Get_n(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_N_DATA);
    return Data;
}

void XSparse_lu_shared_Set_a_nnz(XSparse_lu_shared *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_A_NNZ_DATA, Data);
}

u32 XSparse_lu_shared_Get_a_nnz(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_A_NNZ_DATA);
    return Data;
}

void XSparse_lu_shared_Set_l_nnz(XSparse_lu_shared *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_L_NNZ_DATA, Data);
}

u32 XSparse_lu_shared_Get_l_nnz(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_L_NNZ_DATA);
    return Data;
}

void XSparse_lu_shared_Set_u_nnz(XSparse_lu_shared *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_U_NNZ_DATA, Data);
}

u32 XSparse_lu_shared_Get_u_nnz(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_U_NNZ_DATA);
    return Data;
}

void XSparse_lu_shared_Set_x_rows(XSparse_lu_shared *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_X_ROWS_DATA, Data);
}

u32 XSparse_lu_shared_Get_x_rows(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_X_ROWS_DATA);
    return Data;
}

void XSparse_lu_shared_Set_x_cols(XSparse_lu_shared *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_X_COLS_DATA, Data);
}

u32 XSparse_lu_shared_Get_x_cols(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_X_COLS_DATA);
    return Data;
}

void XSparse_lu_shared_Set_x_nnz(XSparse_lu_shared *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_X_NNZ_DATA, Data);
}

u32 XSparse_lu_shared_Get_x_nnz(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_X_NNZ_DATA);
    return Data;
}

void XSparse_lu_shared_Set_pivot_eps(XSparse_lu_shared *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_PIVOT_EPS_DATA, Data);
}

u32 XSparse_lu_shared_Get_pivot_eps(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_PIVOT_EPS_DATA);
    return Data;
}

u32 XSparse_lu_shared_Get_status(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_STATUS_DATA);
    return Data;
}

u32 XSparse_lu_shared_Get_status_vld(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_STATUS_CTRL);
    return Data & 0x1;
}

u32 XSparse_lu_shared_Get_failed_row(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_FAILED_ROW_DATA);
    return Data;
}

u32 XSparse_lu_shared_Get_failed_row_vld(XSparse_lu_shared *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_FAILED_ROW_CTRL);
    return Data & 0x1;
}

void XSparse_lu_shared_Set_A_rcsr(XSparse_lu_shared *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_RCSR_DATA, (u32)(Data));
    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_RCSR_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_lu_shared_Get_A_rcsr(XSparse_lu_shared *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_RCSR_DATA);
    Data += (u64)XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_RCSR_DATA + 4) << 32;
    return Data;
}

void XSparse_lu_shared_Set_A_cid(XSparse_lu_shared *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_CID_DATA, (u32)(Data));
    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_CID_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_lu_shared_Get_A_cid(XSparse_lu_shared *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_CID_DATA);
    Data += (u64)XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_CID_DATA + 4) << 32;
    return Data;
}

void XSparse_lu_shared_Set_A_val_r(XSparse_lu_shared *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_VAL_R_DATA, (u32)(Data));
    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_VAL_R_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_lu_shared_Get_A_val_r(XSparse_lu_shared *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_VAL_R_DATA);
    Data += (u64)XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_A_VAL_R_DATA + 4) << 32;
    return Data;
}

void XSparse_lu_shared_Set_L_rcsr(XSparse_lu_shared *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_RCSR_DATA, (u32)(Data));
    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_RCSR_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_lu_shared_Get_L_rcsr(XSparse_lu_shared *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_RCSR_DATA);
    Data += (u64)XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_RCSR_DATA + 4) << 32;
    return Data;
}

void XSparse_lu_shared_Set_L_cid(XSparse_lu_shared *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_CID_DATA, (u32)(Data));
    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_CID_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_lu_shared_Get_L_cid(XSparse_lu_shared *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_CID_DATA);
    Data += (u64)XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_CID_DATA + 4) << 32;
    return Data;
}

void XSparse_lu_shared_Set_L_val_r(XSparse_lu_shared *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_VAL_R_DATA, (u32)(Data));
    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_VAL_R_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_lu_shared_Get_L_val_r(XSparse_lu_shared *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_VAL_R_DATA);
    Data += (u64)XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_L_VAL_R_DATA + 4) << 32;
    return Data;
}

void XSparse_lu_shared_Set_U_rcsr(XSparse_lu_shared *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_RCSR_DATA, (u32)(Data));
    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_RCSR_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_lu_shared_Get_U_rcsr(XSparse_lu_shared *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_RCSR_DATA);
    Data += (u64)XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_RCSR_DATA + 4) << 32;
    return Data;
}

void XSparse_lu_shared_Set_U_cid(XSparse_lu_shared *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_CID_DATA, (u32)(Data));
    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_CID_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_lu_shared_Get_U_cid(XSparse_lu_shared *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_CID_DATA);
    Data += (u64)XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_CID_DATA + 4) << 32;
    return Data;
}

void XSparse_lu_shared_Set_U_val_r(XSparse_lu_shared *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_VAL_R_DATA, (u32)(Data));
    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_VAL_R_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_lu_shared_Get_U_val_r(XSparse_lu_shared *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_VAL_R_DATA);
    Data += (u64)XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_U_VAL_R_DATA + 4) << 32;
    return Data;
}

void XSparse_lu_shared_Set_X_rcsr(XSparse_lu_shared *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_RCSR_DATA, (u32)(Data));
    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_RCSR_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_lu_shared_Get_X_rcsr(XSparse_lu_shared *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_RCSR_DATA);
    Data += (u64)XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_RCSR_DATA + 4) << 32;
    return Data;
}

void XSparse_lu_shared_Set_X_cid(XSparse_lu_shared *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_CID_DATA, (u32)(Data));
    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_CID_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_lu_shared_Get_X_cid(XSparse_lu_shared *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_CID_DATA);
    Data += (u64)XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_CID_DATA + 4) << 32;
    return Data;
}

void XSparse_lu_shared_Set_X_val_r(XSparse_lu_shared *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_VAL_R_DATA, (u32)(Data));
    XSparse_lu_shared_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_VAL_R_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_lu_shared_Get_X_val_r(XSparse_lu_shared *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_VAL_R_DATA);
    Data += (u64)XSparse_lu_shared_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_LU_SHARED_CONTROL_R_ADDR_X_VAL_R_DATA + 4) << 32;
    return Data;
}

void XSparse_lu_shared_InterruptGlobalEnable(XSparse_lu_shared *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_GIE, 1);
}

void XSparse_lu_shared_InterruptGlobalDisable(XSparse_lu_shared *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_GIE, 0);
}

void XSparse_lu_shared_InterruptEnable(XSparse_lu_shared *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_IER);
    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_IER, Register | Mask);
}

void XSparse_lu_shared_InterruptDisable(XSparse_lu_shared *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_IER);
    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSparse_lu_shared_InterruptClear(XSparse_lu_shared *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_lu_shared_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_ISR, Mask);
}

u32 XSparse_lu_shared_InterruptGetEnabled(XSparse_lu_shared *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_IER);
}

u32 XSparse_lu_shared_InterruptGetStatus(XSparse_lu_shared *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSparse_lu_shared_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_LU_SHARED_CONTROL_ADDR_ISR);
}

