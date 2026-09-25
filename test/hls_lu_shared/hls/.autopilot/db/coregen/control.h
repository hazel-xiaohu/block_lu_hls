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
// 0x10 : Data signal of operation
//        bit 31~0 - operation[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of n
//        bit 31~0 - n[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of a_nnz
//        bit 31~0 - a_nnz[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of l_nnz
//        bit 31~0 - l_nnz[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of u_nnz
//        bit 31~0 - u_nnz[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of x_rows
//        bit 31~0 - x_rows[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of x_cols
//        bit 31~0 - x_cols[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of x_nnz
//        bit 31~0 - x_nnz[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of pivot_eps
//        bit 31~0 - pivot_eps[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of status
//        bit 31~0 - status[31:0] (Read)
// 0x5c : Control signal of status
//        bit 0  - status_ap_vld (Read/COR)
//        others - reserved
// 0x68 : Data signal of failed_row
//        bit 31~0 - failed_row[31:0] (Read)
// 0x6c : Control signal of failed_row
//        bit 0  - failed_row_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL         0x00
#define CONTROL_ADDR_GIE             0x04
#define CONTROL_ADDR_IER             0x08
#define CONTROL_ADDR_ISR             0x0c
#define CONTROL_ADDR_OPERATION_DATA  0x10
#define CONTROL_BITS_OPERATION_DATA  32
#define CONTROL_ADDR_N_DATA          0x18
#define CONTROL_BITS_N_DATA          32
#define CONTROL_ADDR_A_NNZ_DATA      0x20
#define CONTROL_BITS_A_NNZ_DATA      32
#define CONTROL_ADDR_L_NNZ_DATA      0x28
#define CONTROL_BITS_L_NNZ_DATA      32
#define CONTROL_ADDR_U_NNZ_DATA      0x30
#define CONTROL_BITS_U_NNZ_DATA      32
#define CONTROL_ADDR_X_ROWS_DATA     0x38
#define CONTROL_BITS_X_ROWS_DATA     32
#define CONTROL_ADDR_X_COLS_DATA     0x40
#define CONTROL_BITS_X_COLS_DATA     32
#define CONTROL_ADDR_X_NNZ_DATA      0x48
#define CONTROL_BITS_X_NNZ_DATA      32
#define CONTROL_ADDR_PIVOT_EPS_DATA  0x50
#define CONTROL_BITS_PIVOT_EPS_DATA  32
#define CONTROL_ADDR_STATUS_DATA     0x58
#define CONTROL_BITS_STATUS_DATA     32
#define CONTROL_ADDR_STATUS_CTRL     0x5c
#define CONTROL_ADDR_FAILED_ROW_DATA 0x68
#define CONTROL_BITS_FAILED_ROW_DATA 32
#define CONTROL_ADDR_FAILED_ROW_CTRL 0x6c
