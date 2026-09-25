#ifndef SPARSE_LU_SHARED_H
#define SPARSE_LU_SHARED_H

#include "sparse_getrf.h"

enum sparse_lu_operation {
	SPARSE_LU_GETRF = 0,
	SPARSE_LU_GESSM = 1,
	SPARSE_LU_TSTRF = 2
};

// Shared panel kernel. GETRF consumes A and produces L/U. GESSM consumes L
// and updates X <- inv(L)*X. TSTRF consumes U and updates X <- X*inv(U).
// All CSR structures are fixed, sorted and read-only; only numeric arrays are
// written. The cached implementation stages positions and values on chip;
// GETRF_COMPUTE_UNITS controls its parallel update lanes. SSSSM remains the
// separate spmm C-=A*B kernel.
extern "C" void sparse_lu_shared(
		getrf_id_t operation,
		const getrf_id_t* A_rcsr,
		const getrf_id_t* A_cid,
		const getrf_val_t* A_val,
		const getrf_id_t* L_rcsr,
		const getrf_id_t* L_cid,
		getrf_val_t* L_val,
		const getrf_id_t* U_rcsr,
		const getrf_id_t* U_cid,
		getrf_val_t* U_val,
		const getrf_id_t* X_rcsr,
		const getrf_id_t* X_cid,
		getrf_val_t* X_val,
		getrf_id_t n,
		getrf_id_t a_nnz,
		getrf_id_t l_nnz,
		getrf_id_t u_nnz,
		getrf_id_t x_rows,
		getrf_id_t x_cols,
		getrf_id_t x_nnz,
		getrf_val_t pivot_eps,
		getrf_id_t* status,
		getrf_id_t* failed_row);

#endif
