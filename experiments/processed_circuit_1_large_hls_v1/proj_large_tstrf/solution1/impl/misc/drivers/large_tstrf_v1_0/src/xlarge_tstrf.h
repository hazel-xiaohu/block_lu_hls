// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XLARGE_TSTRF_H
#define XLARGE_TSTRF_H

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
#include "xlarge_tstrf_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XLarge_tstrf_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XLarge_tstrf;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XLarge_tstrf_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XLarge_tstrf_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XLarge_tstrf_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XLarge_tstrf_ReadReg(BaseAddress, RegOffset) \
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
int XLarge_tstrf_Initialize(XLarge_tstrf *InstancePtr, u16 DeviceId);
XLarge_tstrf_Config* XLarge_tstrf_LookupConfig(u16 DeviceId);
int XLarge_tstrf_CfgInitialize(XLarge_tstrf *InstancePtr, XLarge_tstrf_Config *ConfigPtr);
#else
int XLarge_tstrf_Initialize(XLarge_tstrf *InstancePtr, const char* InstanceName);
int XLarge_tstrf_Release(XLarge_tstrf *InstancePtr);
#endif

void XLarge_tstrf_Start(XLarge_tstrf *InstancePtr);
u32 XLarge_tstrf_IsDone(XLarge_tstrf *InstancePtr);
u32 XLarge_tstrf_IsIdle(XLarge_tstrf *InstancePtr);
u32 XLarge_tstrf_IsReady(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_EnableAutoRestart(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_DisableAutoRestart(XLarge_tstrf *InstancePtr);

void XLarge_tstrf_Set_u_col_ptr(XLarge_tstrf *InstancePtr, u64 Data);
u64 XLarge_tstrf_Get_u_col_ptr(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_Set_u_row_idx(XLarge_tstrf *InstancePtr, u64 Data);
u64 XLarge_tstrf_Get_u_row_idx(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_Set_u_csr_val(XLarge_tstrf *InstancePtr, u64 Data);
u64 XLarge_tstrf_Get_u_csr_val(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_Set_u_csc_to_csr(XLarge_tstrf *InstancePtr, u64 Data);
u64 XLarge_tstrf_Get_u_csc_to_csr(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_Set_u_diag_pos(XLarge_tstrf *InstancePtr, u64 Data);
u64 XLarge_tstrf_Get_u_diag_pos(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_Set_b_ptr(XLarge_tstrf *InstancePtr, u64 Data);
u64 XLarge_tstrf_Get_b_ptr(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_Set_b_idx(XLarge_tstrf *InstancePtr, u64 Data);
u64 XLarge_tstrf_Get_b_idx(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_Set_b_val(XLarge_tstrf *InstancePtr, u64 Data);
u64 XLarge_tstrf_Get_b_val(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_Set_x_ptr(XLarge_tstrf *InstancePtr, u64 Data);
u64 XLarge_tstrf_Get_x_ptr(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_Set_x_idx(XLarge_tstrf *InstancePtr, u64 Data);
u64 XLarge_tstrf_Get_x_idx(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_Set_x_val(XLarge_tstrf *InstancePtr, u64 Data);
u64 XLarge_tstrf_Get_x_val(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_Set_active_rows(XLarge_tstrf *InstancePtr, u64 Data);
u64 XLarge_tstrf_Get_active_rows(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_Set_work(XLarge_tstrf *InstancePtr, u64 Data);
u64 XLarge_tstrf_Get_work(XLarge_tstrf *InstancePtr);

void XLarge_tstrf_InterruptGlobalEnable(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_InterruptGlobalDisable(XLarge_tstrf *InstancePtr);
void XLarge_tstrf_InterruptEnable(XLarge_tstrf *InstancePtr, u32 Mask);
void XLarge_tstrf_InterruptDisable(XLarge_tstrf *InstancePtr, u32 Mask);
void XLarge_tstrf_InterruptClear(XLarge_tstrf *InstancePtr, u32 Mask);
u32 XLarge_tstrf_InterruptGetEnabled(XLarge_tstrf *InstancePtr);
u32 XLarge_tstrf_InterruptGetStatus(XLarge_tstrf *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
