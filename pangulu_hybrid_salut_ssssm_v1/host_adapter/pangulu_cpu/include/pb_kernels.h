#ifndef PB_KERNELS_H
#define PB_KERNELS_H

#include "pb_symbolic.h"

/* Same numerical safeguard as PanguLU's ERROR macro. */
#ifndef PB_PIVOT_EPSILON
#define PB_PIVOT_EPSILON 1.0e-6f
#endif

/* CPU equivalents of PanguLU GETRF/GESSM/TSTRF/SSSSM, using FP32 values. */
int pb_getrf(const pb_matrix_t *a_csc, pb_matrix_t *l_csc,
             pb_matrix_t *u_csc, pb_arena_t *workspace);
int pb_gessm(pb_matrix_t *a_csc, const pb_matrix_t *l_csc);
int pb_tstrf(pb_matrix_t *a_csc, const pb_matrix_t *u_csc,
             pb_arena_t *workspace);
int pb_ssssm(pb_matrix_t *a_csc, const pb_matrix_t *l_csc,
             const pb_matrix_t *u_csc);

#endif
