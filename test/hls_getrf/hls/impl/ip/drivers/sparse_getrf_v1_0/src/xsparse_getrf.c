// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsparse_getrf.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSparse_getrf_CfgInitialize(XSparse_getrf *InstancePtr, XSparse_getrf_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSparse_getrf_Start(XSparse_getrf *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSparse_getrf_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSparse_getrf_IsDone(XSparse_getrf *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSparse_getrf_IsIdle(XSparse_getrf *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSparse_getrf_IsReady(XSparse_getrf *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSparse_getrf_EnableAutoRestart(XSparse_getrf *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSparse_getrf_DisableAutoRestart(XSparse_getrf *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_AP_CTRL, 0);
}

void XSparse_getrf_Set_n(XSparse_getrf *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_N_DATA, Data);
}

u32 XSparse_getrf_Get_n(XSparse_getrf *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_N_DATA);
    return Data;
}

void XSparse_getrf_Set_a_nnz(XSparse_getrf *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_A_NNZ_DATA, Data);
}

u32 XSparse_getrf_Get_a_nnz(XSparse_getrf *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_A_NNZ_DATA);
    return Data;
}

void XSparse_getrf_Set_l_nnz(XSparse_getrf *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_L_NNZ_DATA, Data);
}

u32 XSparse_getrf_Get_l_nnz(XSparse_getrf *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_L_NNZ_DATA);
    return Data;
}

void XSparse_getrf_Set_u_nnz(XSparse_getrf *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_U_NNZ_DATA, Data);
}

u32 XSparse_getrf_Get_u_nnz(XSparse_getrf *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_U_NNZ_DATA);
    return Data;
}

void XSparse_getrf_Set_pivot_eps(XSparse_getrf *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_PIVOT_EPS_DATA, Data);
}

u32 XSparse_getrf_Get_pivot_eps(XSparse_getrf *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_PIVOT_EPS_DATA);
    return Data;
}

u32 XSparse_getrf_Get_status(XSparse_getrf *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_STATUS_DATA);
    return Data;
}

u32 XSparse_getrf_Get_status_vld(XSparse_getrf *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_STATUS_CTRL);
    return Data & 0x1;
}

u32 XSparse_getrf_Get_failed_row(XSparse_getrf *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_FAILED_ROW_DATA);
    return Data;
}

u32 XSparse_getrf_Get_failed_row_vld(XSparse_getrf *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_FAILED_ROW_CTRL);
    return Data & 0x1;
}

void XSparse_getrf_Set_A_rcsr(XSparse_getrf *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_A_RCSR_DATA, (u32)(Data));
    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_A_RCSR_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_getrf_Get_A_rcsr(XSparse_getrf *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_A_RCSR_DATA);
    Data += (u64)XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_A_RCSR_DATA + 4) << 32;
    return Data;
}

void XSparse_getrf_Set_A_cid(XSparse_getrf *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_A_CID_DATA, (u32)(Data));
    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_A_CID_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_getrf_Get_A_cid(XSparse_getrf *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_A_CID_DATA);
    Data += (u64)XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_A_CID_DATA + 4) << 32;
    return Data;
}

void XSparse_getrf_Set_A_val_r(XSparse_getrf *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_A_VAL_R_DATA, (u32)(Data));
    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_A_VAL_R_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_getrf_Get_A_val_r(XSparse_getrf *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_A_VAL_R_DATA);
    Data += (u64)XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_A_VAL_R_DATA + 4) << 32;
    return Data;
}

void XSparse_getrf_Set_L_rcsr(XSparse_getrf *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_L_RCSR_DATA, (u32)(Data));
    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_L_RCSR_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_getrf_Get_L_rcsr(XSparse_getrf *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_L_RCSR_DATA);
    Data += (u64)XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_L_RCSR_DATA + 4) << 32;
    return Data;
}

void XSparse_getrf_Set_L_cid(XSparse_getrf *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_L_CID_DATA, (u32)(Data));
    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_L_CID_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_getrf_Get_L_cid(XSparse_getrf *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_L_CID_DATA);
    Data += (u64)XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_L_CID_DATA + 4) << 32;
    return Data;
}

void XSparse_getrf_Set_L_val_r(XSparse_getrf *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_L_VAL_R_DATA, (u32)(Data));
    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_L_VAL_R_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_getrf_Get_L_val_r(XSparse_getrf *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_L_VAL_R_DATA);
    Data += (u64)XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_L_VAL_R_DATA + 4) << 32;
    return Data;
}

void XSparse_getrf_Set_U_rcsr(XSparse_getrf *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_U_RCSR_DATA, (u32)(Data));
    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_U_RCSR_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_getrf_Get_U_rcsr(XSparse_getrf *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_U_RCSR_DATA);
    Data += (u64)XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_U_RCSR_DATA + 4) << 32;
    return Data;
}

void XSparse_getrf_Set_U_cid(XSparse_getrf *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_U_CID_DATA, (u32)(Data));
    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_U_CID_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_getrf_Get_U_cid(XSparse_getrf *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_U_CID_DATA);
    Data += (u64)XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_U_CID_DATA + 4) << 32;
    return Data;
}

void XSparse_getrf_Set_U_val_r(XSparse_getrf *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_U_VAL_R_DATA, (u32)(Data));
    XSparse_getrf_WriteReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_U_VAL_R_DATA + 4, (u32)(Data >> 32));
}

u64 XSparse_getrf_Get_U_val_r(XSparse_getrf *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_U_VAL_R_DATA);
    Data += (u64)XSparse_getrf_ReadReg(InstancePtr->Control_r_BaseAddress, XSPARSE_GETRF_CONTROL_R_ADDR_U_VAL_R_DATA + 4) << 32;
    return Data;
}

void XSparse_getrf_InterruptGlobalEnable(XSparse_getrf *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_GIE, 1);
}

void XSparse_getrf_InterruptGlobalDisable(XSparse_getrf *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_GIE, 0);
}

void XSparse_getrf_InterruptEnable(XSparse_getrf *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_IER);
    XSparse_getrf_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_IER, Register | Mask);
}

void XSparse_getrf_InterruptDisable(XSparse_getrf *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_IER);
    XSparse_getrf_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSparse_getrf_InterruptClear(XSparse_getrf *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSparse_getrf_WriteReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_ISR, Mask);
}

u32 XSparse_getrf_InterruptGetEnabled(XSparse_getrf *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_IER);
}

u32 XSparse_getrf_InterruptGetStatus(XSparse_getrf *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSparse_getrf_ReadReg(InstancePtr->Control_BaseAddress, XSPARSE_GETRF_CONTROL_ADDR_ISR);
}

