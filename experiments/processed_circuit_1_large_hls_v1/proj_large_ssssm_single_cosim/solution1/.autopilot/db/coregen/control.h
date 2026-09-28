// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of a_ptr
//        bit 31~0 - a_ptr[31:0] (Read/Write)
// 0x14 : Data signal of a_ptr
//        bit 31~0 - a_ptr[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of a_idx
//        bit 31~0 - a_idx[31:0] (Read/Write)
// 0x20 : Data signal of a_idx
//        bit 31~0 - a_idx[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of a_val
//        bit 31~0 - a_val[31:0] (Read/Write)
// 0x2c : Data signal of a_val
//        bit 31~0 - a_val[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of l_ptr
//        bit 31~0 - l_ptr[31:0] (Read/Write)
// 0x38 : Data signal of l_ptr
//        bit 31~0 - l_ptr[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of l_idx
//        bit 31~0 - l_idx[31:0] (Read/Write)
// 0x44 : Data signal of l_idx
//        bit 31~0 - l_idx[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of l_val
//        bit 31~0 - l_val[31:0] (Read/Write)
// 0x50 : Data signal of l_val
//        bit 31~0 - l_val[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of u_ptr
//        bit 31~0 - u_ptr[31:0] (Read/Write)
// 0x5c : Data signal of u_ptr
//        bit 31~0 - u_ptr[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of u_idx
//        bit 31~0 - u_idx[31:0] (Read/Write)
// 0x68 : Data signal of u_idx
//        bit 31~0 - u_idx[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of u_val
//        bit 31~0 - u_val[31:0] (Read/Write)
// 0x74 : Data signal of u_val
//        bit 31~0 - u_val[63:32] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of s_ptr
//        bit 31~0 - s_ptr[31:0] (Read/Write)
// 0x80 : Data signal of s_ptr
//        bit 31~0 - s_ptr[63:32] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of s_idx
//        bit 31~0 - s_idx[31:0] (Read/Write)
// 0x8c : Data signal of s_idx
//        bit 31~0 - s_idx[63:32] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of s_val
//        bit 31~0 - s_val[31:0] (Read/Write)
// 0x98 : Data signal of s_val
//        bit 31~0 - s_val[63:32] (Read/Write)
// 0x9c : reserved
// 0xa0 : Data signal of work
//        bit 31~0 - work[31:0] (Read/Write)
// 0xa4 : Data signal of work
//        bit 31~0 - work[63:32] (Read/Write)
// 0xa8 : reserved
// 0xac : Data signal of mark
//        bit 31~0 - mark[31:0] (Read/Write)
// 0xb0 : Data signal of mark
//        bit 31~0 - mark[63:32] (Read/Write)
// 0xb4 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL    0x00
#define CONTROL_ADDR_GIE        0x04
#define CONTROL_ADDR_IER        0x08
#define CONTROL_ADDR_ISR        0x0c
#define CONTROL_ADDR_A_PTR_DATA 0x10
#define CONTROL_BITS_A_PTR_DATA 64
#define CONTROL_ADDR_A_IDX_DATA 0x1c
#define CONTROL_BITS_A_IDX_DATA 64
#define CONTROL_ADDR_A_VAL_DATA 0x28
#define CONTROL_BITS_A_VAL_DATA 64
#define CONTROL_ADDR_L_PTR_DATA 0x34
#define CONTROL_BITS_L_PTR_DATA 64
#define CONTROL_ADDR_L_IDX_DATA 0x40
#define CONTROL_BITS_L_IDX_DATA 64
#define CONTROL_ADDR_L_VAL_DATA 0x4c
#define CONTROL_BITS_L_VAL_DATA 64
#define CONTROL_ADDR_U_PTR_DATA 0x58
#define CONTROL_BITS_U_PTR_DATA 64
#define CONTROL_ADDR_U_IDX_DATA 0x64
#define CONTROL_BITS_U_IDX_DATA 64
#define CONTROL_ADDR_U_VAL_DATA 0x70
#define CONTROL_BITS_U_VAL_DATA 64
#define CONTROL_ADDR_S_PTR_DATA 0x7c
#define CONTROL_BITS_S_PTR_DATA 64
#define CONTROL_ADDR_S_IDX_DATA 0x88
#define CONTROL_BITS_S_IDX_DATA 64
#define CONTROL_ADDR_S_VAL_DATA 0x94
#define CONTROL_BITS_S_VAL_DATA 64
#define CONTROL_ADDR_WORK_DATA  0xa0
#define CONTROL_BITS_WORK_DATA  64
#define CONTROL_ADDR_MARK_DATA  0xac
#define CONTROL_BITS_MARK_DATA  64
