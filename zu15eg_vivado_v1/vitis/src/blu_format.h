#ifndef BLU_FORMAT_H
#define BLU_FORMAT_H

#include <stdint.h>

#define BLU_MAGIC "BLU_SD1"
#define BLU_VERSION 1u
#define BLU_MAX_ARGS 16u
#define BLU_ALIGN 64u

enum blu_kind { BLU_GETRF=0, BLU_GESSM=1, BLU_TSTRF=2, BLU_SSSSM=3 };

/* Pointer slots are deliberately fixed so the file is endian- and ABI-stable. */
enum blu_getrf_slot { G_A_PTR, G_A_IDX, G_A_VAL, G_L_PTR, G_L_IDX, G_L_VAL,
                      G_U_PTR, G_U_IDX, G_U_VAL, G_U_DIAG, G_GETRF_ARGC };
enum blu_gessm_slot { E_L_PTR, E_L_IDX, E_L_VAL, E_B_PTR, E_B_IDX, E_B_VAL,
                       E_X_PTR, E_X_IDX, E_X_VAL_CSC, E_X_MAP, E_X_VAL_CSR,
                       E_ACTIVE_COLS, E_WORK, E_GESSM_ARGC };
enum blu_tstrf_slot { T_U_COL_PTR, T_U_ROW_IDX, T_U_CSR_VAL, T_U_MAP,
                       T_U_DIAG, T_B_PTR, T_B_IDX, T_B_VAL, T_X_PTR, T_X_IDX,
                       T_X_VAL, T_ACTIVE_ROWS, T_WORK, T_TSTRF_ARGC };
enum blu_ssssm_slot { S_A_PTR, S_A_IDX, S_A_VAL, S_L_PTR, S_L_IDX, S_L_VAL,
                       S_U_PTR, S_U_IDX, S_U_VAL, S_S_PTR, S_S_IDX, S_S_VAL,
                       S_WORK, S_MARK, S_SSSSM_ARGC };

#if defined(__GNUC__)
#define BLU_PACKED __attribute__((packed))
#else
#define BLU_PACKED
#endif

/* Exactly 64 bytes. All offsets are relative to the beginning of the file. */
typedef struct BLU_PACKED {
    char magic[8];
    uint32_t version;
    uint32_t task_count;
    uint32_t task_table_offset;
    uint32_t data_offset;
    uint32_t total_bytes;
    uint32_t matrix_n;
    uint32_t reserved[8];
} blu_header_t;

/* Exactly 216 bytes. arg_bytes=0 means that slot is absent. */
typedef struct BLU_PACKED {
    uint32_t kind;
    uint32_t flags;
    uint32_t n;
    uint32_t active_count;
    uint32_t pivot_eps_bits;
    uint32_t arg_count;
    uint32_t arg_offset[BLU_MAX_ARGS];
    uint32_t arg_bytes[BLU_MAX_ARGS];
    uint32_t arg_elem_bytes[BLU_MAX_ARGS];
} blu_task_t;

_Static_assert(sizeof(blu_header_t)==64, "BLU header ABI changed");
_Static_assert(sizeof(blu_task_t)==216, "BLU task ABI changed");

#endif
