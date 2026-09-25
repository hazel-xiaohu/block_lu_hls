#ifndef SPARSE_GETRF_H
#define SPARSE_GETRF_H

#include <stdint.h>

typedef uint32_t getrf_id_t;
typedef float getrf_val_t;

#ifndef GETRF_PANEL_WIDTH
#define GETRF_PANEL_WIDTH 4
#endif

// Parallel FP update lanes in the cached shared GETRF/GESSM/TSTRF kernel.
#ifndef GETRF_COMPUTE_UNITS
#define GETRF_COMPUTE_UNITS 4
#endif

#ifndef GETRF_MAX_N
#define GETRF_MAX_N 64
#endif

#ifndef GETRF_MAX_A_NNZ
#define GETRF_MAX_A_NNZ 1024
#endif

#ifndef GETRF_MAX_L_NNZ
#define GETRF_MAX_L_NNZ 2048
#endif

#ifndef GETRF_MAX_U_NNZ
#define GETRF_MAX_U_NNZ 2048
#endif

#ifndef GETRF_MAX_BLOCK_ROWS
#define GETRF_MAX_BLOCK_ROWS GETRF_MAX_N
#endif

#ifndef GETRF_MAX_BLOCK_NNZ
#define GETRF_MAX_BLOCK_NNZ (GETRF_MAX_L_NNZ + GETRF_MAX_U_NNZ)
#endif

#define GETRF_INVALID_ID 0xFFFFFFFFu

enum getrf_status_code {
	GETRF_SUCCESS = 0,
	GETRF_INVALID_SIZE = 1,
	GETRF_INVALID_CSR = 2,
	GETRF_PATTERN_MISMATCH = 3,
	GETRF_ZERO_PIVOT = 4,
	GETRF_INVALID_OPERATION = 5
};

// Numeric sparse LU with a fixed symbolic pattern and fixed-width panels.
// L/U row pointers and column indices are read-only. Only L_val/U_val are
// produced. L has an explicit unit diagonal and pivoting is not performed.
extern "C" void sparse_getrf(
		const getrf_id_t* A_rcsr,
		const getrf_id_t* A_cid,
		const getrf_val_t* A_val,
		const getrf_id_t* L_rcsr,
		const getrf_id_t* L_cid,
		getrf_val_t* L_val,
		const getrf_id_t* U_rcsr,
		const getrf_id_t* U_cid,
		getrf_val_t* U_val,
		getrf_id_t n,
		getrf_id_t a_nnz,
		getrf_id_t l_nnz,
		getrf_id_t u_nnz,
		getrf_val_t pivot_eps,
		getrf_id_t* status,
		getrf_id_t* failed_row);

// Fixed-pattern GESSM: B <- inv(L) * B. L is an n-by-n unit lower
// triangular CSR matrix. B is n-by-nrhs CSR and its values are updated in
// place; its structure must already contain all symbolic fill.
extern "C" void sparse_gessm(
		const getrf_id_t* L_rcsr,
		const getrf_id_t* L_cid,
		const getrf_val_t* L_val,
		const getrf_id_t* B_rcsr,
		const getrf_id_t* B_cid,
		getrf_val_t* B_val,
		getrf_id_t n,
		getrf_id_t nrhs,
		getrf_id_t l_nnz,
		getrf_id_t b_nnz,
		getrf_id_t* status,
		getrf_id_t* failed_row);

// Fixed-pattern TSTRF without dynamic pivoting: B <- B * inv(U). U is an
// n-by-n upper triangular CSR matrix. B is block_rows-by-n CSR and is updated
// in place. This produces the block-column multipliers used as L21.
extern "C" void sparse_tstrf(
		const getrf_id_t* U_rcsr,
		const getrf_id_t* U_cid,
		const getrf_val_t* U_val,
		const getrf_id_t* B_rcsr,
		const getrf_id_t* B_cid,
		getrf_val_t* B_val,
		getrf_id_t n,
		getrf_id_t block_rows,
		getrf_id_t u_nnz,
		getrf_id_t b_nnz,
		getrf_val_t pivot_eps,
		getrf_id_t* status,
		getrf_id_t* failed_row);

#endif
