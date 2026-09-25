// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSPARSE_LU_SHARED_H
#define XSPARSE_LU_SHARED_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xsparse_lu_shared_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
} XSparse_lu_shared_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
    u32 IsReady;
} XSparse_lu_shared;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSparse_lu_shared_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSparse_lu_shared_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSparse_lu_shared_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSparse_lu_shared_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XSparse_lu_shared_Initialize(XSparse_lu_shared *InstancePtr, UINTPTR BaseAddress);
XSparse_lu_shared_Config* XSparse_lu_shared_LookupConfig(UINTPTR BaseAddress);
#else
int XSparse_lu_shared_Initialize(XSparse_lu_shared *InstancePtr, u16 DeviceId);
XSparse_lu_shared_Config* XSparse_lu_shared_LookupConfig(u16 DeviceId);
#endif
int XSparse_lu_shared_CfgInitialize(XSparse_lu_shared *InstancePtr, XSparse_lu_shared_Config *ConfigPtr);
#else
int XSparse_lu_shared_Initialize(XSparse_lu_shared *InstancePtr, const char* InstanceName);
int XSparse_lu_shared_Release(XSparse_lu_shared *InstancePtr);
#endif

void XSparse_lu_shared_Start(XSparse_lu_shared *InstancePtr);
u32 XSparse_lu_shared_IsDone(XSparse_lu_shared *InstancePtr);
u32 XSparse_lu_shared_IsIdle(XSparse_lu_shared *InstancePtr);
u32 XSparse_lu_shared_IsReady(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_EnableAutoRestart(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_DisableAutoRestart(XSparse_lu_shared *InstancePtr);

void XSparse_lu_shared_Set_operation(XSparse_lu_shared *InstancePtr, u32 Data);
u32 XSparse_lu_shared_Get_operation(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_n(XSparse_lu_shared *InstancePtr, u32 Data);
u32 XSparse_lu_shared_Get_n(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_a_nnz(XSparse_lu_shared *InstancePtr, u32 Data);
u32 XSparse_lu_shared_Get_a_nnz(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_l_nnz(XSparse_lu_shared *InstancePtr, u32 Data);
u32 XSparse_lu_shared_Get_l_nnz(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_u_nnz(XSparse_lu_shared *InstancePtr, u32 Data);
u32 XSparse_lu_shared_Get_u_nnz(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_x_rows(XSparse_lu_shared *InstancePtr, u32 Data);
u32 XSparse_lu_shared_Get_x_rows(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_x_cols(XSparse_lu_shared *InstancePtr, u32 Data);
u32 XSparse_lu_shared_Get_x_cols(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_x_nnz(XSparse_lu_shared *InstancePtr, u32 Data);
u32 XSparse_lu_shared_Get_x_nnz(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_pivot_eps(XSparse_lu_shared *InstancePtr, u32 Data);
u32 XSparse_lu_shared_Get_pivot_eps(XSparse_lu_shared *InstancePtr);
u32 XSparse_lu_shared_Get_status(XSparse_lu_shared *InstancePtr);
u32 XSparse_lu_shared_Get_status_vld(XSparse_lu_shared *InstancePtr);
u32 XSparse_lu_shared_Get_failed_row(XSparse_lu_shared *InstancePtr);
u32 XSparse_lu_shared_Get_failed_row_vld(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_A_rcsr(XSparse_lu_shared *InstancePtr, u64 Data);
u64 XSparse_lu_shared_Get_A_rcsr(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_A_cid(XSparse_lu_shared *InstancePtr, u64 Data);
u64 XSparse_lu_shared_Get_A_cid(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_A_val_r(XSparse_lu_shared *InstancePtr, u64 Data);
u64 XSparse_lu_shared_Get_A_val_r(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_L_rcsr(XSparse_lu_shared *InstancePtr, u64 Data);
u64 XSparse_lu_shared_Get_L_rcsr(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_L_cid(XSparse_lu_shared *InstancePtr, u64 Data);
u64 XSparse_lu_shared_Get_L_cid(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_L_val_r(XSparse_lu_shared *InstancePtr, u64 Data);
u64 XSparse_lu_shared_Get_L_val_r(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_U_rcsr(XSparse_lu_shared *InstancePtr, u64 Data);
u64 XSparse_lu_shared_Get_U_rcsr(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_U_cid(XSparse_lu_shared *InstancePtr, u64 Data);
u64 XSparse_lu_shared_Get_U_cid(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_U_val_r(XSparse_lu_shared *InstancePtr, u64 Data);
u64 XSparse_lu_shared_Get_U_val_r(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_X_rcsr(XSparse_lu_shared *InstancePtr, u64 Data);
u64 XSparse_lu_shared_Get_X_rcsr(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_X_cid(XSparse_lu_shared *InstancePtr, u64 Data);
u64 XSparse_lu_shared_Get_X_cid(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_Set_X_val_r(XSparse_lu_shared *InstancePtr, u64 Data);
u64 XSparse_lu_shared_Get_X_val_r(XSparse_lu_shared *InstancePtr);

void XSparse_lu_shared_InterruptGlobalEnable(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_InterruptGlobalDisable(XSparse_lu_shared *InstancePtr);
void XSparse_lu_shared_InterruptEnable(XSparse_lu_shared *InstancePtr, u32 Mask);
void XSparse_lu_shared_InterruptDisable(XSparse_lu_shared *InstancePtr, u32 Mask);
void XSparse_lu_shared_InterruptClear(XSparse_lu_shared *InstancePtr, u32 Mask);
u32 XSparse_lu_shared_InterruptGetEnabled(XSparse_lu_shared *InstancePtr);
u32 XSparse_lu_shared_InterruptGetStatus(XSparse_lu_shared *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
