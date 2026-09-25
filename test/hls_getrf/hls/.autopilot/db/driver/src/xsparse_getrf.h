// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSPARSE_GETRF_H
#define XSPARSE_GETRF_H

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
#include "xsparse_getrf_hw.h"

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
} XSparse_getrf_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Control_r_BaseAddress;
    u32 IsReady;
} XSparse_getrf;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSparse_getrf_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSparse_getrf_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSparse_getrf_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSparse_getrf_ReadReg(BaseAddress, RegOffset) \
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
int XSparse_getrf_Initialize(XSparse_getrf *InstancePtr, UINTPTR BaseAddress);
XSparse_getrf_Config* XSparse_getrf_LookupConfig(UINTPTR BaseAddress);
#else
int XSparse_getrf_Initialize(XSparse_getrf *InstancePtr, u16 DeviceId);
XSparse_getrf_Config* XSparse_getrf_LookupConfig(u16 DeviceId);
#endif
int XSparse_getrf_CfgInitialize(XSparse_getrf *InstancePtr, XSparse_getrf_Config *ConfigPtr);
#else
int XSparse_getrf_Initialize(XSparse_getrf *InstancePtr, const char* InstanceName);
int XSparse_getrf_Release(XSparse_getrf *InstancePtr);
#endif

void XSparse_getrf_Start(XSparse_getrf *InstancePtr);
u32 XSparse_getrf_IsDone(XSparse_getrf *InstancePtr);
u32 XSparse_getrf_IsIdle(XSparse_getrf *InstancePtr);
u32 XSparse_getrf_IsReady(XSparse_getrf *InstancePtr);
void XSparse_getrf_EnableAutoRestart(XSparse_getrf *InstancePtr);
void XSparse_getrf_DisableAutoRestart(XSparse_getrf *InstancePtr);

void XSparse_getrf_Set_n(XSparse_getrf *InstancePtr, u32 Data);
u32 XSparse_getrf_Get_n(XSparse_getrf *InstancePtr);
void XSparse_getrf_Set_a_nnz(XSparse_getrf *InstancePtr, u32 Data);
u32 XSparse_getrf_Get_a_nnz(XSparse_getrf *InstancePtr);
void XSparse_getrf_Set_l_nnz(XSparse_getrf *InstancePtr, u32 Data);
u32 XSparse_getrf_Get_l_nnz(XSparse_getrf *InstancePtr);
void XSparse_getrf_Set_u_nnz(XSparse_getrf *InstancePtr, u32 Data);
u32 XSparse_getrf_Get_u_nnz(XSparse_getrf *InstancePtr);
void XSparse_getrf_Set_pivot_eps(XSparse_getrf *InstancePtr, u32 Data);
u32 XSparse_getrf_Get_pivot_eps(XSparse_getrf *InstancePtr);
u32 XSparse_getrf_Get_status(XSparse_getrf *InstancePtr);
u32 XSparse_getrf_Get_status_vld(XSparse_getrf *InstancePtr);
u32 XSparse_getrf_Get_failed_row(XSparse_getrf *InstancePtr);
u32 XSparse_getrf_Get_failed_row_vld(XSparse_getrf *InstancePtr);
void XSparse_getrf_Set_A_rcsr(XSparse_getrf *InstancePtr, u64 Data);
u64 XSparse_getrf_Get_A_rcsr(XSparse_getrf *InstancePtr);
void XSparse_getrf_Set_A_cid(XSparse_getrf *InstancePtr, u64 Data);
u64 XSparse_getrf_Get_A_cid(XSparse_getrf *InstancePtr);
void XSparse_getrf_Set_A_val_r(XSparse_getrf *InstancePtr, u64 Data);
u64 XSparse_getrf_Get_A_val_r(XSparse_getrf *InstancePtr);
void XSparse_getrf_Set_L_rcsr(XSparse_getrf *InstancePtr, u64 Data);
u64 XSparse_getrf_Get_L_rcsr(XSparse_getrf *InstancePtr);
void XSparse_getrf_Set_L_cid(XSparse_getrf *InstancePtr, u64 Data);
u64 XSparse_getrf_Get_L_cid(XSparse_getrf *InstancePtr);
void XSparse_getrf_Set_L_val_r(XSparse_getrf *InstancePtr, u64 Data);
u64 XSparse_getrf_Get_L_val_r(XSparse_getrf *InstancePtr);
void XSparse_getrf_Set_U_rcsr(XSparse_getrf *InstancePtr, u64 Data);
u64 XSparse_getrf_Get_U_rcsr(XSparse_getrf *InstancePtr);
void XSparse_getrf_Set_U_cid(XSparse_getrf *InstancePtr, u64 Data);
u64 XSparse_getrf_Get_U_cid(XSparse_getrf *InstancePtr);
void XSparse_getrf_Set_U_val_r(XSparse_getrf *InstancePtr, u64 Data);
u64 XSparse_getrf_Get_U_val_r(XSparse_getrf *InstancePtr);

void XSparse_getrf_InterruptGlobalEnable(XSparse_getrf *InstancePtr);
void XSparse_getrf_InterruptGlobalDisable(XSparse_getrf *InstancePtr);
void XSparse_getrf_InterruptEnable(XSparse_getrf *InstancePtr, u32 Mask);
void XSparse_getrf_InterruptDisable(XSparse_getrf *InstancePtr, u32 Mask);
void XSparse_getrf_InterruptClear(XSparse_getrf *InstancePtr, u32 Mask);
u32 XSparse_getrf_InterruptGetEnabled(XSparse_getrf *InstancePtr);
u32 XSparse_getrf_InterruptGetStatus(XSparse_getrf *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
