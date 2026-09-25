// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// ctr
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 7  - auto_restart (Read/Write)
//         bit 9  - interrupt (Read)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (Read/TOW)
//         bit 1 - ap_ready (Read/TOW)
//         others - reserved
// 0x010 : Data signal of arnum
//         bit 31~0 - arnum[31:0] (Read/Write)
// 0x014 : reserved
// 0x018 : Data signal of atnum
//         bit 31~0 - atnum[31:0] (Read/Write)
// 0x01c : reserved
// 0x020 : Data signal of brnum
//         bit 31~0 - brnum[31:0] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of btnum
//         bit 31~0 - btnum[31:0] (Read/Write)
// 0x02c : reserved
// 0x030 : Data signal of B_rcsr_base
//         bit 31~0 - B_rcsr_base[31:0] (Read/Write)
// 0x034 : reserved
// 0x038 : Data signal of B_val_base
//         bit 31~0 - B_val_base[31:0] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of B_cid_base
//         bit 31~0 - B_cid_base[31:0] (Read/Write)
// 0x044 : reserved
// 0x048 : Data signal of r1acc
//         bit 31~0 - r1acc[31:0] (Read)
// 0x04c : Control signal of r1acc
//         bit 0  - r1acc_ap_vld (Read/COR)
//         others - reserved
// 0x058 : Data signal of r1hit
//         bit 31~0 - r1hit[31:0] (Read)
// 0x05c : Control signal of r1hit
//         bit 0  - r1hit_ap_vld (Read/COR)
//         others - reserved
// 0x068 : Data signal of r2acc
//         bit 31~0 - r2acc[31:0] (Read)
// 0x06c : Control signal of r2acc
//         bit 0  - r2acc_ap_vld (Read/COR)
//         others - reserved
// 0x078 : Data signal of r2hit
//         bit 31~0 - r2hit[31:0] (Read)
// 0x07c : Control signal of r2hit
//         bit 0  - r2hit_ap_vld (Read/COR)
//         others - reserved
// 0x088 : Data signal of r3acc
//         bit 31~0 - r3acc[31:0] (Read)
// 0x08c : Control signal of r3acc
//         bit 0  - r3acc_ap_vld (Read/COR)
//         others - reserved
// 0x098 : Data signal of r3hit
//         bit 31~0 - r3hit[31:0] (Read)
// 0x09c : Control signal of r3hit
//         bit 0  - r3hit_ap_vld (Read/COR)
//         others - reserved
// 0x0a8 : Data signal of r4acc
//         bit 31~0 - r4acc[31:0] (Read)
// 0x0ac : Control signal of r4acc
//         bit 0  - r4acc_ap_vld (Read/COR)
//         others - reserved
// 0x0b8 : Data signal of r4hit
//         bit 31~0 - r4hit[31:0] (Read)
// 0x0bc : Control signal of r4hit
//         bit 0  - r4hit_ap_vld (Read/COR)
//         others - reserved
// 0x0c8 : Data signal of r5acc
//         bit 31~0 - r5acc[31:0] (Read/Write)
// 0x0cc : reserved
// 0x0d0 : Data signal of r5hit
//         bit 31~0 - r5hit[31:0] (Read/Write)
// 0x0d4 : reserved
// 0x0d8 : Data signal of r6acc
//         bit 31~0 - r6acc[31:0] (Read/Write)
// 0x0dc : reserved
// 0x0e0 : Data signal of r6hit
//         bit 31~0 - r6hit[31:0] (Read/Write)
// 0x0e4 : reserved
// 0x0e8 : Data signal of r7acc
//         bit 31~0 - r7acc[31:0] (Read/Write)
// 0x0ec : reserved
// 0x0f0 : Data signal of r7hit
//         bit 31~0 - r7hit[31:0] (Read/Write)
// 0x0f4 : reserved
// 0x0f8 : Data signal of r8acc
//         bit 31~0 - r8acc[31:0] (Read/Write)
// 0x0fc : reserved
// 0x100 : Data signal of r8hit
//         bit 31~0 - r8hit[31:0] (Read/Write)
// 0x104 : reserved
// 0x108 : Data signal of vc1acc
//         bit 31~0 - vc1acc[31:0] (Read)
// 0x10c : Control signal of vc1acc
//         bit 0  - vc1acc_ap_vld (Read/COR)
//         others - reserved
// 0x118 : Data signal of vc1hit
//         bit 31~0 - vc1hit[31:0] (Read)
// 0x11c : Control signal of vc1hit
//         bit 0  - vc1hit_ap_vld (Read/COR)
//         others - reserved
// 0x128 : Data signal of vc2acc
//         bit 31~0 - vc2acc[31:0] (Read)
// 0x12c : Control signal of vc2acc
//         bit 0  - vc2acc_ap_vld (Read/COR)
//         others - reserved
// 0x138 : Data signal of vc2hit
//         bit 31~0 - vc2hit[31:0] (Read)
// 0x13c : Control signal of vc2hit
//         bit 0  - vc2hit_ap_vld (Read/COR)
//         others - reserved
// 0x148 : Data signal of vc3acc
//         bit 31~0 - vc3acc[31:0] (Read)
// 0x14c : Control signal of vc3acc
//         bit 0  - vc3acc_ap_vld (Read/COR)
//         others - reserved
// 0x158 : Data signal of vc3hit
//         bit 31~0 - vc3hit[31:0] (Read)
// 0x15c : Control signal of vc3hit
//         bit 0  - vc3hit_ap_vld (Read/COR)
//         others - reserved
// 0x168 : Data signal of vc4acc
//         bit 31~0 - vc4acc[31:0] (Read)
// 0x16c : Control signal of vc4acc
//         bit 0  - vc4acc_ap_vld (Read/COR)
//         others - reserved
// 0x178 : Data signal of vc4hit
//         bit 31~0 - vc4hit[31:0] (Read)
// 0x17c : Control signal of vc4hit
//         bit 0  - vc4hit_ap_vld (Read/COR)
//         others - reserved
// 0x188 : Data signal of vc5acc
//         bit 31~0 - vc5acc[31:0] (Read/Write)
// 0x18c : reserved
// 0x190 : Data signal of vc5hit
//         bit 31~0 - vc5hit[31:0] (Read/Write)
// 0x194 : reserved
// 0x198 : Data signal of vc6acc
//         bit 31~0 - vc6acc[31:0] (Read/Write)
// 0x19c : reserved
// 0x1a0 : Data signal of vc6hit
//         bit 31~0 - vc6hit[31:0] (Read/Write)
// 0x1a4 : reserved
// 0x1a8 : Data signal of vc7acc
//         bit 31~0 - vc7acc[31:0] (Read/Write)
// 0x1ac : reserved
// 0x1b0 : Data signal of vc7hit
//         bit 31~0 - vc7hit[31:0] (Read/Write)
// 0x1b4 : reserved
// 0x1b8 : Data signal of vc8acc
//         bit 31~0 - vc8acc[31:0] (Read/Write)
// 0x1bc : reserved
// 0x1c0 : Data signal of vc8hit
//         bit 31~0 - vc8hit[31:0] (Read/Write)
// 0x1c4 : reserved
// 0x1c8 : Data signal of fnum
//         bit 31~0 - fnum[31:0] (Read)
// 0x1cc : Control signal of fnum
//         bit 0  - fnum_ap_vld (Read/COR)
//         others - reserved
// 0x1d8 : Data signal of workload_counter1
//         bit 31~0 - workload_counter1[31:0] (Read)
// 0x1dc : Control signal of workload_counter1
//         bit 0  - workload_counter1_ap_vld (Read/COR)
//         others - reserved
// 0x1e8 : Data signal of workload_counter2
//         bit 31~0 - workload_counter2[31:0] (Read)
// 0x1ec : Control signal of workload_counter2
//         bit 0  - workload_counter2_ap_vld (Read/COR)
//         others - reserved
// 0x1f8 : Data signal of workload_counter3
//         bit 31~0 - workload_counter3[31:0] (Read)
// 0x1fc : Control signal of workload_counter3
//         bit 0  - workload_counter3_ap_vld (Read/COR)
//         others - reserved
// 0x208 : Data signal of workload_counter4
//         bit 31~0 - workload_counter4[31:0] (Read)
// 0x20c : Control signal of workload_counter4
//         bit 0  - workload_counter4_ap_vld (Read/COR)
//         others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSPMM_CTR_ADDR_AP_CTRL                0x000
#define XSPMM_CTR_ADDR_GIE                    0x004
#define XSPMM_CTR_ADDR_IER                    0x008
#define XSPMM_CTR_ADDR_ISR                    0x00c
#define XSPMM_CTR_ADDR_ARNUM_DATA             0x010
#define XSPMM_CTR_BITS_ARNUM_DATA             32
#define XSPMM_CTR_ADDR_ATNUM_DATA             0x018
#define XSPMM_CTR_BITS_ATNUM_DATA             32
#define XSPMM_CTR_ADDR_BRNUM_DATA             0x020
#define XSPMM_CTR_BITS_BRNUM_DATA             32
#define XSPMM_CTR_ADDR_BTNUM_DATA             0x028
#define XSPMM_CTR_BITS_BTNUM_DATA             32
#define XSPMM_CTR_ADDR_B_RCSR_BASE_DATA       0x030
#define XSPMM_CTR_BITS_B_RCSR_BASE_DATA       32
#define XSPMM_CTR_ADDR_B_VAL_BASE_DATA        0x038
#define XSPMM_CTR_BITS_B_VAL_BASE_DATA        32
#define XSPMM_CTR_ADDR_B_CID_BASE_DATA        0x040
#define XSPMM_CTR_BITS_B_CID_BASE_DATA        32
#define XSPMM_CTR_ADDR_R1ACC_DATA             0x048
#define XSPMM_CTR_BITS_R1ACC_DATA             32
#define XSPMM_CTR_ADDR_R1ACC_CTRL             0x04c
#define XSPMM_CTR_ADDR_R1HIT_DATA             0x058
#define XSPMM_CTR_BITS_R1HIT_DATA             32
#define XSPMM_CTR_ADDR_R1HIT_CTRL             0x05c
#define XSPMM_CTR_ADDR_R2ACC_DATA             0x068
#define XSPMM_CTR_BITS_R2ACC_DATA             32
#define XSPMM_CTR_ADDR_R2ACC_CTRL             0x06c
#define XSPMM_CTR_ADDR_R2HIT_DATA             0x078
#define XSPMM_CTR_BITS_R2HIT_DATA             32
#define XSPMM_CTR_ADDR_R2HIT_CTRL             0x07c
#define XSPMM_CTR_ADDR_R3ACC_DATA             0x088
#define XSPMM_CTR_BITS_R3ACC_DATA             32
#define XSPMM_CTR_ADDR_R3ACC_CTRL             0x08c
#define XSPMM_CTR_ADDR_R3HIT_DATA             0x098
#define XSPMM_CTR_BITS_R3HIT_DATA             32
#define XSPMM_CTR_ADDR_R3HIT_CTRL             0x09c
#define XSPMM_CTR_ADDR_R4ACC_DATA             0x0a8
#define XSPMM_CTR_BITS_R4ACC_DATA             32
#define XSPMM_CTR_ADDR_R4ACC_CTRL             0x0ac
#define XSPMM_CTR_ADDR_R4HIT_DATA             0x0b8
#define XSPMM_CTR_BITS_R4HIT_DATA             32
#define XSPMM_CTR_ADDR_R4HIT_CTRL             0x0bc
#define XSPMM_CTR_ADDR_R5ACC_DATA             0x0c8
#define XSPMM_CTR_BITS_R5ACC_DATA             32
#define XSPMM_CTR_ADDR_R5HIT_DATA             0x0d0
#define XSPMM_CTR_BITS_R5HIT_DATA             32
#define XSPMM_CTR_ADDR_R6ACC_DATA             0x0d8
#define XSPMM_CTR_BITS_R6ACC_DATA             32
#define XSPMM_CTR_ADDR_R6HIT_DATA             0x0e0
#define XSPMM_CTR_BITS_R6HIT_DATA             32
#define XSPMM_CTR_ADDR_R7ACC_DATA             0x0e8
#define XSPMM_CTR_BITS_R7ACC_DATA             32
#define XSPMM_CTR_ADDR_R7HIT_DATA             0x0f0
#define XSPMM_CTR_BITS_R7HIT_DATA             32
#define XSPMM_CTR_ADDR_R8ACC_DATA             0x0f8
#define XSPMM_CTR_BITS_R8ACC_DATA             32
#define XSPMM_CTR_ADDR_R8HIT_DATA             0x100
#define XSPMM_CTR_BITS_R8HIT_DATA             32
#define XSPMM_CTR_ADDR_VC1ACC_DATA            0x108
#define XSPMM_CTR_BITS_VC1ACC_DATA            32
#define XSPMM_CTR_ADDR_VC1ACC_CTRL            0x10c
#define XSPMM_CTR_ADDR_VC1HIT_DATA            0x118
#define XSPMM_CTR_BITS_VC1HIT_DATA            32
#define XSPMM_CTR_ADDR_VC1HIT_CTRL            0x11c
#define XSPMM_CTR_ADDR_VC2ACC_DATA            0x128
#define XSPMM_CTR_BITS_VC2ACC_DATA            32
#define XSPMM_CTR_ADDR_VC2ACC_CTRL            0x12c
#define XSPMM_CTR_ADDR_VC2HIT_DATA            0x138
#define XSPMM_CTR_BITS_VC2HIT_DATA            32
#define XSPMM_CTR_ADDR_VC2HIT_CTRL            0x13c
#define XSPMM_CTR_ADDR_VC3ACC_DATA            0x148
#define XSPMM_CTR_BITS_VC3ACC_DATA            32
#define XSPMM_CTR_ADDR_VC3ACC_CTRL            0x14c
#define XSPMM_CTR_ADDR_VC3HIT_DATA            0x158
#define XSPMM_CTR_BITS_VC3HIT_DATA            32
#define XSPMM_CTR_ADDR_VC3HIT_CTRL            0x15c
#define XSPMM_CTR_ADDR_VC4ACC_DATA            0x168
#define XSPMM_CTR_BITS_VC4ACC_DATA            32
#define XSPMM_CTR_ADDR_VC4ACC_CTRL            0x16c
#define XSPMM_CTR_ADDR_VC4HIT_DATA            0x178
#define XSPMM_CTR_BITS_VC4HIT_DATA            32
#define XSPMM_CTR_ADDR_VC4HIT_CTRL            0x17c
#define XSPMM_CTR_ADDR_VC5ACC_DATA            0x188
#define XSPMM_CTR_BITS_VC5ACC_DATA            32
#define XSPMM_CTR_ADDR_VC5HIT_DATA            0x190
#define XSPMM_CTR_BITS_VC5HIT_DATA            32
#define XSPMM_CTR_ADDR_VC6ACC_DATA            0x198
#define XSPMM_CTR_BITS_VC6ACC_DATA            32
#define XSPMM_CTR_ADDR_VC6HIT_DATA            0x1a0
#define XSPMM_CTR_BITS_VC6HIT_DATA            32
#define XSPMM_CTR_ADDR_VC7ACC_DATA            0x1a8
#define XSPMM_CTR_BITS_VC7ACC_DATA            32
#define XSPMM_CTR_ADDR_VC7HIT_DATA            0x1b0
#define XSPMM_CTR_BITS_VC7HIT_DATA            32
#define XSPMM_CTR_ADDR_VC8ACC_DATA            0x1b8
#define XSPMM_CTR_BITS_VC8ACC_DATA            32
#define XSPMM_CTR_ADDR_VC8HIT_DATA            0x1c0
#define XSPMM_CTR_BITS_VC8HIT_DATA            32
#define XSPMM_CTR_ADDR_FNUM_DATA              0x1c8
#define XSPMM_CTR_BITS_FNUM_DATA              32
#define XSPMM_CTR_ADDR_FNUM_CTRL              0x1cc
#define XSPMM_CTR_ADDR_WORKLOAD_COUNTER1_DATA 0x1d8
#define XSPMM_CTR_BITS_WORKLOAD_COUNTER1_DATA 32
#define XSPMM_CTR_ADDR_WORKLOAD_COUNTER1_CTRL 0x1dc
#define XSPMM_CTR_ADDR_WORKLOAD_COUNTER2_DATA 0x1e8
#define XSPMM_CTR_BITS_WORKLOAD_COUNTER2_DATA 32
#define XSPMM_CTR_ADDR_WORKLOAD_COUNTER2_CTRL 0x1ec
#define XSPMM_CTR_ADDR_WORKLOAD_COUNTER3_DATA 0x1f8
#define XSPMM_CTR_BITS_WORKLOAD_COUNTER3_DATA 32
#define XSPMM_CTR_ADDR_WORKLOAD_COUNTER3_CTRL 0x1fc
#define XSPMM_CTR_ADDR_WORKLOAD_COUNTER4_DATA 0x208
#define XSPMM_CTR_BITS_WORKLOAD_COUNTER4_DATA 32
#define XSPMM_CTR_ADDR_WORKLOAD_COUNTER4_CTRL 0x20c

// control
// 0x000 : reserved
// 0x004 : reserved
// 0x008 : reserved
// 0x00c : reserved
// 0x010 : Data signal of A_rcsr
//         bit 31~0 - A_rcsr[31:0] (Read/Write)
// 0x014 : Data signal of A_rcsr
//         bit 31~0 - A_rcsr[63:32] (Read/Write)
// 0x018 : reserved
// 0x01c : Data signal of A_cid
//         bit 31~0 - A_cid[31:0] (Read/Write)
// 0x020 : Data signal of A_cid
//         bit 31~0 - A_cid[63:32] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of A_val
//         bit 31~0 - A_val[31:0] (Read/Write)
// 0x02c : Data signal of A_val
//         bit 31~0 - A_val[63:32] (Read/Write)
// 0x030 : reserved
// 0x034 : Data signal of B_rcsr1
//         bit 31~0 - B_rcsr1[31:0] (Read/Write)
// 0x038 : Data signal of B_rcsr1
//         bit 31~0 - B_rcsr1[63:32] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of B_rcsr2
//         bit 31~0 - B_rcsr2[31:0] (Read/Write)
// 0x044 : Data signal of B_rcsr2
//         bit 31~0 - B_rcsr2[63:32] (Read/Write)
// 0x048 : reserved
// 0x04c : Data signal of B_rcsr3
//         bit 31~0 - B_rcsr3[31:0] (Read/Write)
// 0x050 : Data signal of B_rcsr3
//         bit 31~0 - B_rcsr3[63:32] (Read/Write)
// 0x054 : reserved
// 0x058 : Data signal of B_rcsr4
//         bit 31~0 - B_rcsr4[31:0] (Read/Write)
// 0x05c : Data signal of B_rcsr4
//         bit 31~0 - B_rcsr4[63:32] (Read/Write)
// 0x060 : reserved
// 0x064 : Data signal of B_val1
//         bit 31~0 - B_val1[31:0] (Read/Write)
// 0x068 : Data signal of B_val1
//         bit 31~0 - B_val1[63:32] (Read/Write)
// 0x06c : reserved
// 0x070 : Data signal of B_cid1
//         bit 31~0 - B_cid1[31:0] (Read/Write)
// 0x074 : Data signal of B_cid1
//         bit 31~0 - B_cid1[63:32] (Read/Write)
// 0x078 : reserved
// 0x07c : Data signal of B_val2
//         bit 31~0 - B_val2[31:0] (Read/Write)
// 0x080 : Data signal of B_val2
//         bit 31~0 - B_val2[63:32] (Read/Write)
// 0x084 : reserved
// 0x088 : Data signal of B_cid2
//         bit 31~0 - B_cid2[31:0] (Read/Write)
// 0x08c : Data signal of B_cid2
//         bit 31~0 - B_cid2[63:32] (Read/Write)
// 0x090 : reserved
// 0x094 : Data signal of B_val3
//         bit 31~0 - B_val3[31:0] (Read/Write)
// 0x098 : Data signal of B_val3
//         bit 31~0 - B_val3[63:32] (Read/Write)
// 0x09c : reserved
// 0x0a0 : Data signal of B_cid3
//         bit 31~0 - B_cid3[31:0] (Read/Write)
// 0x0a4 : Data signal of B_cid3
//         bit 31~0 - B_cid3[63:32] (Read/Write)
// 0x0a8 : reserved
// 0x0ac : Data signal of B_val4
//         bit 31~0 - B_val4[31:0] (Read/Write)
// 0x0b0 : Data signal of B_val4
//         bit 31~0 - B_val4[63:32] (Read/Write)
// 0x0b4 : reserved
// 0x0b8 : Data signal of B_cid4
//         bit 31~0 - B_cid4[31:0] (Read/Write)
// 0x0bc : Data signal of B_cid4
//         bit 31~0 - B_cid4[63:32] (Read/Write)
// 0x0c0 : reserved
// 0x0c4 : Data signal of B_val_port1
//         bit 31~0 - B_val_port1[31:0] (Read/Write)
// 0x0c8 : Data signal of B_val_port1
//         bit 31~0 - B_val_port1[63:32] (Read/Write)
// 0x0cc : reserved
// 0x0d0 : Data signal of B_cid_port1
//         bit 31~0 - B_cid_port1[31:0] (Read/Write)
// 0x0d4 : Data signal of B_cid_port1
//         bit 31~0 - B_cid_port1[63:32] (Read/Write)
// 0x0d8 : reserved
// 0x0dc : Data signal of B_val_port2
//         bit 31~0 - B_val_port2[31:0] (Read/Write)
// 0x0e0 : Data signal of B_val_port2
//         bit 31~0 - B_val_port2[63:32] (Read/Write)
// 0x0e4 : reserved
// 0x0e8 : Data signal of B_cid_port2
//         bit 31~0 - B_cid_port2[31:0] (Read/Write)
// 0x0ec : Data signal of B_cid_port2
//         bit 31~0 - B_cid_port2[63:32] (Read/Write)
// 0x0f0 : reserved
// 0x0f4 : Data signal of B_val_port3
//         bit 31~0 - B_val_port3[31:0] (Read/Write)
// 0x0f8 : Data signal of B_val_port3
//         bit 31~0 - B_val_port3[63:32] (Read/Write)
// 0x0fc : reserved
// 0x100 : Data signal of B_cid_port3
//         bit 31~0 - B_cid_port3[31:0] (Read/Write)
// 0x104 : Data signal of B_cid_port3
//         bit 31~0 - B_cid_port3[63:32] (Read/Write)
// 0x108 : reserved
// 0x10c : Data signal of B_val_port4
//         bit 31~0 - B_val_port4[31:0] (Read/Write)
// 0x110 : Data signal of B_val_port4
//         bit 31~0 - B_val_port4[63:32] (Read/Write)
// 0x114 : reserved
// 0x118 : Data signal of B_cid_port4
//         bit 31~0 - B_cid_port4[31:0] (Read/Write)
// 0x11c : Data signal of B_cid_port4
//         bit 31~0 - B_cid_port4[63:32] (Read/Write)
// 0x120 : reserved
// 0x124 : Data signal of C_rcsr
//         bit 31~0 - C_rcsr[31:0] (Read/Write)
// 0x128 : Data signal of C_rcsr
//         bit 31~0 - C_rcsr[63:32] (Read/Write)
// 0x12c : reserved
// 0x130 : Data signal of C_cid
//         bit 31~0 - C_cid[31:0] (Read/Write)
// 0x134 : Data signal of C_cid
//         bit 31~0 - C_cid[63:32] (Read/Write)
// 0x138 : reserved
// 0x13c : Data signal of C_val
//         bit 31~0 - C_val[31:0] (Read/Write)
// 0x140 : Data signal of C_val
//         bit 31~0 - C_val[63:32] (Read/Write)
// 0x144 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XSPMM_CONTROL_ADDR_A_RCSR_DATA      0x010
#define XSPMM_CONTROL_BITS_A_RCSR_DATA      64
#define XSPMM_CONTROL_ADDR_A_CID_DATA       0x01c
#define XSPMM_CONTROL_BITS_A_CID_DATA       64
#define XSPMM_CONTROL_ADDR_A_VAL_DATA       0x028
#define XSPMM_CONTROL_BITS_A_VAL_DATA       64
#define XSPMM_CONTROL_ADDR_B_RCSR1_DATA     0x034
#define XSPMM_CONTROL_BITS_B_RCSR1_DATA     64
#define XSPMM_CONTROL_ADDR_B_RCSR2_DATA     0x040
#define XSPMM_CONTROL_BITS_B_RCSR2_DATA     64
#define XSPMM_CONTROL_ADDR_B_RCSR3_DATA     0x04c
#define XSPMM_CONTROL_BITS_B_RCSR3_DATA     64
#define XSPMM_CONTROL_ADDR_B_RCSR4_DATA     0x058
#define XSPMM_CONTROL_BITS_B_RCSR4_DATA     64
#define XSPMM_CONTROL_ADDR_B_VAL1_DATA      0x064
#define XSPMM_CONTROL_BITS_B_VAL1_DATA      64
#define XSPMM_CONTROL_ADDR_B_CID1_DATA      0x070
#define XSPMM_CONTROL_BITS_B_CID1_DATA      64
#define XSPMM_CONTROL_ADDR_B_VAL2_DATA      0x07c
#define XSPMM_CONTROL_BITS_B_VAL2_DATA      64
#define XSPMM_CONTROL_ADDR_B_CID2_DATA      0x088
#define XSPMM_CONTROL_BITS_B_CID2_DATA      64
#define XSPMM_CONTROL_ADDR_B_VAL3_DATA      0x094
#define XSPMM_CONTROL_BITS_B_VAL3_DATA      64
#define XSPMM_CONTROL_ADDR_B_CID3_DATA      0x0a0
#define XSPMM_CONTROL_BITS_B_CID3_DATA      64
#define XSPMM_CONTROL_ADDR_B_VAL4_DATA      0x0ac
#define XSPMM_CONTROL_BITS_B_VAL4_DATA      64
#define XSPMM_CONTROL_ADDR_B_CID4_DATA      0x0b8
#define XSPMM_CONTROL_BITS_B_CID4_DATA      64
#define XSPMM_CONTROL_ADDR_B_VAL_PORT1_DATA 0x0c4
#define XSPMM_CONTROL_BITS_B_VAL_PORT1_DATA 64
#define XSPMM_CONTROL_ADDR_B_CID_PORT1_DATA 0x0d0
#define XSPMM_CONTROL_BITS_B_CID_PORT1_DATA 64
#define XSPMM_CONTROL_ADDR_B_VAL_PORT2_DATA 0x0dc
#define XSPMM_CONTROL_BITS_B_VAL_PORT2_DATA 64
#define XSPMM_CONTROL_ADDR_B_CID_PORT2_DATA 0x0e8
#define XSPMM_CONTROL_BITS_B_CID_PORT2_DATA 64
#define XSPMM_CONTROL_ADDR_B_VAL_PORT3_DATA 0x0f4
#define XSPMM_CONTROL_BITS_B_VAL_PORT3_DATA 64
#define XSPMM_CONTROL_ADDR_B_CID_PORT3_DATA 0x100
#define XSPMM_CONTROL_BITS_B_CID_PORT3_DATA 64
#define XSPMM_CONTROL_ADDR_B_VAL_PORT4_DATA 0x10c
#define XSPMM_CONTROL_BITS_B_VAL_PORT4_DATA 64
#define XSPMM_CONTROL_ADDR_B_CID_PORT4_DATA 0x118
#define XSPMM_CONTROL_BITS_B_CID_PORT4_DATA 64
#define XSPMM_CONTROL_ADDR_C_RCSR_DATA      0x124
#define XSPMM_CONTROL_BITS_C_RCSR_DATA      64
#define XSPMM_CONTROL_ADDR_C_CID_DATA       0x130
#define XSPMM_CONTROL_BITS_C_CID_DATA       64
#define XSPMM_CONTROL_ADDR_C_VAL_DATA       0x13c
#define XSPMM_CONTROL_BITS_C_VAL_DATA       64

