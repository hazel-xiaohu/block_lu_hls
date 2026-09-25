// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of A_rcsr
//        bit 31~0 - A_rcsr[31:0] (Read/Write)
// 0x14 : Data signal of A_rcsr
//        bit 31~0 - A_rcsr[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of A_cid
//        bit 31~0 - A_cid[31:0] (Read/Write)
// 0x20 : Data signal of A_cid
//        bit 31~0 - A_cid[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of A_val_r
//        bit 31~0 - A_val_r[31:0] (Read/Write)
// 0x2c : Data signal of A_val_r
//        bit 31~0 - A_val_r[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of L_rcsr
//        bit 31~0 - L_rcsr[31:0] (Read/Write)
// 0x38 : Data signal of L_rcsr
//        bit 31~0 - L_rcsr[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of L_cid
//        bit 31~0 - L_cid[31:0] (Read/Write)
// 0x44 : Data signal of L_cid
//        bit 31~0 - L_cid[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of L_val_r
//        bit 31~0 - L_val_r[31:0] (Read/Write)
// 0x50 : Data signal of L_val_r
//        bit 31~0 - L_val_r[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of U_rcsr
//        bit 31~0 - U_rcsr[31:0] (Read/Write)
// 0x5c : Data signal of U_rcsr
//        bit 31~0 - U_rcsr[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of U_cid
//        bit 31~0 - U_cid[31:0] (Read/Write)
// 0x68 : Data signal of U_cid
//        bit 31~0 - U_cid[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of U_val_r
//        bit 31~0 - U_val_r[31:0] (Read/Write)
// 0x74 : Data signal of U_val_r
//        bit 31~0 - U_val_r[63:32] (Read/Write)
// 0x78 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_R_ADDR_A_RCSR_DATA  0x10
#define CONTROL_R_BITS_A_RCSR_DATA  64
#define CONTROL_R_ADDR_A_CID_DATA   0x1c
#define CONTROL_R_BITS_A_CID_DATA   64
#define CONTROL_R_ADDR_A_VAL_R_DATA 0x28
#define CONTROL_R_BITS_A_VAL_R_DATA 64
#define CONTROL_R_ADDR_L_RCSR_DATA  0x34
#define CONTROL_R_BITS_L_RCSR_DATA  64
#define CONTROL_R_ADDR_L_CID_DATA   0x40
#define CONTROL_R_BITS_L_CID_DATA   64
#define CONTROL_R_ADDR_L_VAL_R_DATA 0x4c
#define CONTROL_R_BITS_L_VAL_R_DATA 64
#define CONTROL_R_ADDR_U_RCSR_DATA  0x58
#define CONTROL_R_BITS_U_RCSR_DATA  64
#define CONTROL_R_ADDR_U_CID_DATA   0x64
#define CONTROL_R_BITS_U_CID_DATA   64
#define CONTROL_R_ADDR_U_VAL_R_DATA 0x70
#define CONTROL_R_BITS_U_VAL_R_DATA 64
