// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xlarge_tstrf_v2.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XLarge_tstrf_v2_CfgInitialize(XLarge_tstrf_v2 *InstancePtr, XLarge_tstrf_v2_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XLarge_tstrf_v2_Start(XLarge_tstrf_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_AP_CTRL) & 0x80;
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XLarge_tstrf_v2_IsDone(XLarge_tstrf_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XLarge_tstrf_v2_IsIdle(XLarge_tstrf_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XLarge_tstrf_v2_IsReady(XLarge_tstrf_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XLarge_tstrf_v2_EnableAutoRestart(XLarge_tstrf_v2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XLarge_tstrf_v2_DisableAutoRestart(XLarge_tstrf_v2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_AP_CTRL, 0);
}

void XLarge_tstrf_v2_Set_u_col_ptr(XLarge_tstrf_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_COL_PTR_DATA, (u32)(Data));
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_COL_PTR_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_tstrf_v2_Get_u_col_ptr(XLarge_tstrf_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_COL_PTR_DATA);
    Data += (u64)XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_COL_PTR_DATA + 4) << 32;
    return Data;
}

void XLarge_tstrf_v2_Set_u_row_idx(XLarge_tstrf_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_ROW_IDX_DATA, (u32)(Data));
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_ROW_IDX_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_tstrf_v2_Get_u_row_idx(XLarge_tstrf_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_ROW_IDX_DATA);
    Data += (u64)XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_ROW_IDX_DATA + 4) << 32;
    return Data;
}

void XLarge_tstrf_v2_Set_u_csr_val(XLarge_tstrf_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_CSR_VAL_DATA, (u32)(Data));
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_CSR_VAL_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_tstrf_v2_Get_u_csr_val(XLarge_tstrf_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_CSR_VAL_DATA);
    Data += (u64)XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_CSR_VAL_DATA + 4) << 32;
    return Data;
}

void XLarge_tstrf_v2_Set_u_csc_to_csr(XLarge_tstrf_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_CSC_TO_CSR_DATA, (u32)(Data));
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_CSC_TO_CSR_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_tstrf_v2_Get_u_csc_to_csr(XLarge_tstrf_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_CSC_TO_CSR_DATA);
    Data += (u64)XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_CSC_TO_CSR_DATA + 4) << 32;
    return Data;
}

void XLarge_tstrf_v2_Set_u_diag_pos(XLarge_tstrf_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_DIAG_POS_DATA, (u32)(Data));
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_DIAG_POS_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_tstrf_v2_Get_u_diag_pos(XLarge_tstrf_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_DIAG_POS_DATA);
    Data += (u64)XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_U_DIAG_POS_DATA + 4) << 32;
    return Data;
}

void XLarge_tstrf_v2_Set_b_ptr(XLarge_tstrf_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_B_PTR_DATA, (u32)(Data));
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_B_PTR_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_tstrf_v2_Get_b_ptr(XLarge_tstrf_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_B_PTR_DATA);
    Data += (u64)XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_B_PTR_DATA + 4) << 32;
    return Data;
}

void XLarge_tstrf_v2_Set_b_idx(XLarge_tstrf_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_B_IDX_DATA, (u32)(Data));
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_B_IDX_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_tstrf_v2_Get_b_idx(XLarge_tstrf_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_B_IDX_DATA);
    Data += (u64)XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_B_IDX_DATA + 4) << 32;
    return Data;
}

void XLarge_tstrf_v2_Set_b_val(XLarge_tstrf_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_B_VAL_DATA, (u32)(Data));
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_B_VAL_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_tstrf_v2_Get_b_val(XLarge_tstrf_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_B_VAL_DATA);
    Data += (u64)XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_B_VAL_DATA + 4) << 32;
    return Data;
}

void XLarge_tstrf_v2_Set_x_ptr(XLarge_tstrf_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_X_PTR_DATA, (u32)(Data));
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_X_PTR_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_tstrf_v2_Get_x_ptr(XLarge_tstrf_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_X_PTR_DATA);
    Data += (u64)XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_X_PTR_DATA + 4) << 32;
    return Data;
}

void XLarge_tstrf_v2_Set_x_idx(XLarge_tstrf_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_X_IDX_DATA, (u32)(Data));
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_X_IDX_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_tstrf_v2_Get_x_idx(XLarge_tstrf_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_X_IDX_DATA);
    Data += (u64)XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_X_IDX_DATA + 4) << 32;
    return Data;
}

void XLarge_tstrf_v2_Set_x_val(XLarge_tstrf_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_X_VAL_DATA, (u32)(Data));
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_X_VAL_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_tstrf_v2_Get_x_val(XLarge_tstrf_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_X_VAL_DATA);
    Data += (u64)XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_X_VAL_DATA + 4) << 32;
    return Data;
}

void XLarge_tstrf_v2_Set_active_rows(XLarge_tstrf_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_ACTIVE_ROWS_DATA, (u32)(Data));
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_ACTIVE_ROWS_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_tstrf_v2_Get_active_rows(XLarge_tstrf_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_ACTIVE_ROWS_DATA);
    Data += (u64)XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_ACTIVE_ROWS_DATA + 4) << 32;
    return Data;
}

void XLarge_tstrf_v2_Set_work(XLarge_tstrf_v2 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_WORK_DATA, (u32)(Data));
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_WORK_DATA + 4, (u32)(Data >> 32));
}

u64 XLarge_tstrf_v2_Get_work(XLarge_tstrf_v2 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_WORK_DATA);
    Data += (u64)XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_WORK_DATA + 4) << 32;
    return Data;
}

void XLarge_tstrf_v2_InterruptGlobalEnable(XLarge_tstrf_v2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_GIE, 1);
}

void XLarge_tstrf_v2_InterruptGlobalDisable(XLarge_tstrf_v2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_GIE, 0);
}

void XLarge_tstrf_v2_InterruptEnable(XLarge_tstrf_v2 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_IER);
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_IER, Register | Mask);
}

void XLarge_tstrf_v2_InterruptDisable(XLarge_tstrf_v2 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_IER);
    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_IER, Register & (~Mask));
}

void XLarge_tstrf_v2_InterruptClear(XLarge_tstrf_v2 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XLarge_tstrf_v2_WriteReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_ISR, Mask);
}

u32 XLarge_tstrf_v2_InterruptGetEnabled(XLarge_tstrf_v2 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_IER);
}

u32 XLarge_tstrf_v2_InterruptGetStatus(XLarge_tstrf_v2 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XLarge_tstrf_v2_ReadReg(InstancePtr->Control_BaseAddress, XLARGE_TSTRF_V2_CONTROL_ADDR_ISR);
}

