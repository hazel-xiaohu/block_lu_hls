// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
# 1 "/home/huz/project/SpMM_TCAD/test/sparse_lu_shared_cached.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 419 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/huz/project/SpMM_TCAD/test/sparse_lu_shared_cached.cpp" 2
# 1 "/home/huz/project/SpMM_TCAD/test/sparse_lu_shared.h" 1



# 1 "/home/huz/project/SpMM_TCAD/test/sparse_getrf.h" 1



# 1 "/home/huz/software/2025.2/lnx64/tools/clang-16/lib/clang/16/include/stdint.h" 1 3
# 52 "/home/huz/software/2025.2/lnx64/tools/clang-16/lib/clang/16/include/stdint.h" 3
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 392 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 19 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 393 "/usr/include/features.h" 2 3 4
# 464 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 465 "/usr/include/features.h" 2 3 4
# 486 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 559 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 560 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 561 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 487 "/usr/include/features.h" 2 3 4
# 510 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 511 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 19 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 2 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 142 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time64.h" 1 3 4
# 143 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 28 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 35 "/usr/include/stdint.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 3 4
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
# 38 "/usr/include/stdint.h" 2 3 4





typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;


typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;





typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 71 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 87 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 101 "/usr/include/stdint.h" 3 4
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
# 53 "/home/huz/software/2025.2/lnx64/tools/clang-16/lib/clang/16/include/stdint.h" 2 3
# 5 "/home/huz/project/SpMM_TCAD/test/sparse_getrf.h" 2

typedef uint32_t getrf_id_t;
typedef float getrf_val_t;
# 44 "/home/huz/project/SpMM_TCAD/test/sparse_getrf.h"
enum getrf_status_code {
 GETRF_SUCCESS = 0,
 GETRF_INVALID_SIZE = 1,
 GETRF_INVALID_CSR = 2,
 GETRF_PATTERN_MISMATCH = 3,
 GETRF_ZERO_PIVOT = 4,
 GETRF_INVALID_OPERATION = 5
};




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
# 5 "/home/huz/project/SpMM_TCAD/test/sparse_lu_shared.h" 2

enum sparse_lu_operation {
 SPARSE_LU_GETRF = 0,
 SPARSE_LU_GESSM = 1,
 SPARSE_LU_TSTRF = 2
};







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
# 2 "/home/huz/project/SpMM_TCAD/test/sparse_lu_shared_cached.cpp" 2



typedef uint16_t local_pos_t;
static const local_pos_t LOCAL_INVALID_POS = 0xffffu;

static getrf_val_t cached_abs(getrf_val_t value) {
#pragma HLS INLINE
 return value < 0.0f ? -value : value;
}

static void cached_fail(getrf_id_t code, getrf_id_t row,
  getrf_id_t* status, getrf_id_t* failed_row) {
#pragma HLS INLINE
 *status = code;
 *failed_row = row;
}

static void clear_factor_cache(local_pos_t lower_pos[64][64],
  local_pos_t upper_pos[64][64],
  getrf_val_t factor_val[64][64], getrf_id_t n) {
 for (getrf_id_t row = 0; row < n; ++row) {
  for (getrf_id_t base = 0; base < n;
    base += 4) {
#pragma HLS PIPELINE II=1
   for (getrf_id_t lane = 0; lane < 4; ++lane) {
#pragma HLS UNROLL
    const getrf_id_t col = base + lane;
    if (col < n) {
     lower_pos[row][col] = LOCAL_INVALID_POS;
     upper_pos[row][col] = LOCAL_INVALID_POS;
     factor_val[row][col] = 0.0f;
    }
   }
  }
 }
}

static void clear_block_cache(
  local_pos_t block_pos[64][64],
  getrf_val_t block_val[64][64],
  getrf_id_t rows, getrf_id_t cols) {
 for (getrf_id_t row = 0; row < rows; ++row) {
  for (getrf_id_t base = 0; base < cols;
    base += 4) {
#pragma HLS PIPELINE II=1
   for (getrf_id_t lane = 0; lane < 4; ++lane) {
#pragma HLS UNROLL
    const getrf_id_t col = base + lane;
    if (col < cols) {
     block_pos[row][col] = LOCAL_INVALID_POS;
     block_val[row][col] = 0.0f;
    }
   }
  }
 }
}

static getrf_id_t cache_triangular_pattern(
  const getrf_id_t* row_ptr, const getrf_id_t* col_idx,
  const getrf_val_t* values, getrf_id_t n, getrf_id_t nnz,
  bool lower, bool load_values,
  local_pos_t position[64][64],
  getrf_val_t factor_val[64][64],
  getrf_id_t* failed_row) {
 if (row_ptr[0] != 0 || row_ptr[n] != nnz) return GETRF_INVALID_CSR;
 for (getrf_id_t row = 0; row < n; ++row) {
  const getrf_id_t begin = row_ptr[row];
  const getrf_id_t end = row_ptr[row + 1];
  if (begin > end || end > nnz) {
   *failed_row = row;
   return GETRF_INVALID_CSR;
  }
  getrf_id_t previous = 0xFFFFFFFFu;
  for (getrf_id_t pos = begin; pos < end; ++pos) {
   const getrf_id_t col = col_idx[pos];
   if (col >= n || (previous != 0xFFFFFFFFu && col <= previous) ||
     (lower ? col > row : col < row)) {
    *failed_row = row;
    return GETRF_INVALID_CSR;
   }
   position[row][col] = (local_pos_t)pos;
   if (load_values) factor_val[row][col] = values[pos];
   previous = col;
  }
  if (position[row][row] == LOCAL_INVALID_POS) {
   *failed_row = row;
   return GETRF_PATTERN_MISMATCH;
  }
 }
 return GETRF_SUCCESS;
}

static getrf_id_t cache_block(const getrf_id_t* row_ptr,
  const getrf_id_t* col_idx, const getrf_val_t* values,
  getrf_id_t rows, getrf_id_t cols, getrf_id_t nnz,
  local_pos_t position[64][64],
  getrf_val_t block_val[64][64],
  getrf_id_t* failed_row) {
 if (row_ptr[0] != 0 || row_ptr[rows] != nnz) return GETRF_INVALID_CSR;
 for (getrf_id_t row = 0; row < rows; ++row) {
  const getrf_id_t begin = row_ptr[row];
  const getrf_id_t end = row_ptr[row + 1];
  if (begin > end || end > nnz) {
   *failed_row = row;
   return GETRF_INVALID_CSR;
  }
  getrf_id_t previous = 0xFFFFFFFFu;
  for (getrf_id_t pos = begin; pos < end; ++pos) {
   const getrf_id_t col = col_idx[pos];
   if (col >= cols || (previous != 0xFFFFFFFFu && col <= previous)) {
    *failed_row = row;
    return GETRF_INVALID_CSR;
   }
   position[row][col] = (local_pos_t)pos;
   block_val[row][col] = values[pos];
   previous = col;
  }
 }
 return GETRF_SUCCESS;
}

static getrf_id_t validate_getrf_closure(getrf_id_t n,
  local_pos_t lower_pos[64][64],
  local_pos_t upper_pos[64][64],
  getrf_id_t* failed_row) {
 for (getrf_id_t row = 0; row < n; ++row) {
  for (getrf_id_t pivot = 0; pivot < row; ++pivot) {
   if (lower_pos[row][pivot] == LOCAL_INVALID_POS) continue;
   for (getrf_id_t col = pivot + 1; col < n; ++col) {
    if (upper_pos[pivot][col] == LOCAL_INVALID_POS) continue;
    const local_pos_t target = col < row
      ? lower_pos[row][col] : upper_pos[row][col];
    if (target == LOCAL_INVALID_POS) {
     *failed_row = row;
     return GETRF_PATTERN_MISMATCH;
    }
   }
  }
 }
 return GETRF_SUCCESS;
}

static getrf_id_t validate_gessm_closure(getrf_id_t n, getrf_id_t x_cols,
  local_pos_t lower_pos[64][64],
  local_pos_t block_pos[64][64],
  getrf_id_t* failed_row) {
 for (getrf_id_t row = 0; row < n; ++row) {
  for (getrf_id_t source = 0; source < row; ++source) {
   if (lower_pos[row][source] == LOCAL_INVALID_POS) continue;
   for (getrf_id_t col = 0; col < x_cols; ++col) {
    if (block_pos[source][col] != LOCAL_INVALID_POS &&
      block_pos[row][col] == LOCAL_INVALID_POS) {
     *failed_row = row;
     return GETRF_PATTERN_MISMATCH;
    }
   }
  }
 }
 return GETRF_SUCCESS;
}

static getrf_id_t validate_tstrf_closure(getrf_id_t n, getrf_id_t x_rows,
  local_pos_t upper_pos[64][64],
  local_pos_t block_pos[64][64],
  getrf_id_t* failed_row) {
 for (getrf_id_t row = 0; row < x_rows; ++row) {
  for (getrf_id_t pivot = 0; pivot < n; ++pivot) {
   if (block_pos[row][pivot] == LOCAL_INVALID_POS) continue;
   for (getrf_id_t col = pivot + 1; col < n; ++col) {
    if (upper_pos[pivot][col] != LOCAL_INVALID_POS &&
      block_pos[row][col] == LOCAL_INVALID_POS) {
     *failed_row = row;
     return GETRF_PATTERN_MISMATCH;
    }
   }
  }
 }
 return GETRF_SUCCESS;
}

static getrf_id_t run_cached_getrf(
  const getrf_id_t* A_rcsr, const getrf_id_t* A_cid,
  const getrf_val_t* A_val, const getrf_id_t* L_rcsr,
  const getrf_id_t* L_cid, getrf_val_t* L_val,
  const getrf_id_t* U_rcsr, const getrf_id_t* U_cid,
  getrf_val_t* U_val, getrf_id_t n, getrf_id_t a_nnz,
  getrf_id_t l_nnz, getrf_id_t u_nnz, getrf_val_t pivot_eps,
  local_pos_t lower_pos[64][64],
  local_pos_t upper_pos[64][64],
  getrf_val_t work[64][64],
  getrf_id_t* failed_row) {
 getrf_id_t result = cache_triangular_pattern(L_rcsr, L_cid, L_val,
   n, l_nnz, true, false, lower_pos, work, failed_row);
 if (result != GETRF_SUCCESS) return result;
 result = cache_triangular_pattern(U_rcsr, U_cid, U_val,
   n, u_nnz, false, false, upper_pos, work, failed_row);
 if (result != GETRF_SUCCESS) return result;
 if (A_rcsr[0] != 0 || A_rcsr[n] != a_nnz) return GETRF_INVALID_CSR;

 for (getrf_id_t row = 0; row < n; ++row) {
  const getrf_id_t begin = A_rcsr[row];
  const getrf_id_t end = A_rcsr[row + 1];
  if (begin > end || end > a_nnz) {
   *failed_row = row;
   return GETRF_INVALID_CSR;
  }
  getrf_id_t previous = 0xFFFFFFFFu;
  for (getrf_id_t pos = begin; pos < end; ++pos) {
   const getrf_id_t col = A_cid[pos];
   if (col >= n || (previous != 0xFFFFFFFFu && col <= previous)) {
    *failed_row = row;
    return GETRF_INVALID_CSR;
   }
   const local_pos_t target = col < row
     ? lower_pos[row][col] : upper_pos[row][col];
   if (target == LOCAL_INVALID_POS) {
    *failed_row = row;
    return GETRF_PATTERN_MISMATCH;
   }
   work[row][col] = A_val[pos];
   previous = col;
  }
 }
 result = validate_getrf_closure(n, lower_pos, upper_pos, failed_row);
 if (result != GETRF_SUCCESS) return result;

 for (getrf_id_t row = 0; row < n; ++row) {
  for (getrf_id_t pivot = 0; pivot < row; ++pivot) {
   if (lower_pos[row][pivot] == LOCAL_INVALID_POS) continue;
   if (cached_abs(work[pivot][pivot]) <= pivot_eps) {
    *failed_row = pivot;
    return GETRF_ZERO_PIVOT;
   }
   const getrf_val_t multiplier = work[row][pivot] / work[pivot][pivot];
   work[row][pivot] = multiplier;
   for (getrf_id_t base = pivot + 1; base < n;
     base += 4) {
#pragma HLS DEPENDENCE variable=work inter false
#pragma HLS PIPELINE II=1
    for (getrf_id_t lane = 0; lane < 4; ++lane) {
#pragma HLS UNROLL
     const getrf_id_t col = base + lane;
     if (col < n && upper_pos[pivot][col] != LOCAL_INVALID_POS)
      work[row][col] -= multiplier * work[pivot][col];
    }
   }
  }
  if (cached_abs(work[row][row]) <= pivot_eps) {
   *failed_row = row;
   return GETRF_ZERO_PIVOT;
  }
 }

 for (getrf_id_t row = 0; row < n; ++row) {
  for (getrf_id_t pos = L_rcsr[row]; pos < L_rcsr[row + 1]; ++pos) {
#pragma HLS PIPELINE II=1
   const getrf_id_t col = L_cid[pos];
   L_val[pos] = col == row ? 1.0f : work[row][col];
  }
  for (getrf_id_t pos = U_rcsr[row]; pos < U_rcsr[row + 1]; ++pos) {
#pragma HLS PIPELINE II=1
   U_val[pos] = work[row][U_cid[pos]];
  }
 }
 return GETRF_SUCCESS;
}

static getrf_id_t run_cached_gessm(getrf_id_t n, getrf_id_t x_cols,
  local_pos_t lower_pos[64][64],
  getrf_val_t factor[64][64],
  local_pos_t block_pos[64][64],
  getrf_val_t block[64][64],
  getrf_id_t* failed_row) {
 getrf_id_t result = validate_gessm_closure(
   n, x_cols, lower_pos, block_pos, failed_row);
 if (result != GETRF_SUCCESS) return result;
 for (getrf_id_t row = 0; row < n; ++row) {
  for (getrf_id_t source = 0; source < row; ++source) {
   if (lower_pos[row][source] == LOCAL_INVALID_POS) continue;
   const getrf_val_t multiplier = factor[row][source];
   for (getrf_id_t base = 0; base < x_cols;
     base += 4) {
#pragma HLS DEPENDENCE variable=block inter false
#pragma HLS PIPELINE II=1
    for (getrf_id_t lane = 0; lane < 4; ++lane) {
#pragma HLS UNROLL
     const getrf_id_t col = base + lane;
     if (col < x_cols && block_pos[source][col] != LOCAL_INVALID_POS)
      block[row][col] -= multiplier * block[source][col];
    }
   }
  }
 }
 return GETRF_SUCCESS;
}

static getrf_id_t run_cached_tstrf(getrf_id_t n, getrf_id_t x_rows,
  getrf_val_t pivot_eps,
  local_pos_t upper_pos[64][64],
  getrf_val_t factor[64][64],
  local_pos_t block_pos[64][64],
  getrf_val_t block[64][64],
  getrf_id_t* failed_row) {
 getrf_id_t result = validate_tstrf_closure(
   n, x_rows, upper_pos, block_pos, failed_row);
 if (result != GETRF_SUCCESS) return result;
 for (getrf_id_t pivot = 0; pivot < n; ++pivot) {
  if (cached_abs(factor[pivot][pivot]) <= pivot_eps) {
   *failed_row = pivot;
   return GETRF_ZERO_PIVOT;
  }
  for (getrf_id_t row_base = 0; row_base < x_rows;
    row_base += 4) {
   getrf_val_t multiplier[4];
   bool active[4];
#pragma HLS ARRAY_PARTITION variable=multiplier complete
#pragma HLS ARRAY_PARTITION variable=active complete
   for (getrf_id_t lane = 0; lane < 4; ++lane) {
#pragma HLS UNROLL
    const getrf_id_t row = row_base + lane;
    active[lane] = row < x_rows &&
      block_pos[row][pivot] != LOCAL_INVALID_POS;
    multiplier[lane] = active[lane]
      ? block[row][pivot] / factor[pivot][pivot] : 0.0f;
    if (active[lane]) block[row][pivot] = multiplier[lane];
   }
   for (getrf_id_t col = pivot + 1; col < n; ++col) {
#pragma HLS DEPENDENCE variable=block inter false
#pragma HLS PIPELINE II=1
    if (upper_pos[pivot][col] == LOCAL_INVALID_POS) continue;
    for (getrf_id_t lane = 0; lane < 4; ++lane) {
#pragma HLS UNROLL
     const getrf_id_t row = row_base + lane;
     if (active[lane])
      block[row][col] -= multiplier[lane] * factor[pivot][col];
    }
   }
  }
 }
 return GETRF_SUCCESS;
}

extern "C" void sparse_lu_shared(
  getrf_id_t operation,
  const getrf_id_t* A_rcsr, const getrf_id_t* A_cid,
  const getrf_val_t* A_val, const getrf_id_t* L_rcsr,
  const getrf_id_t* L_cid, getrf_val_t* L_val,
  const getrf_id_t* U_rcsr, const getrf_id_t* U_cid,
  getrf_val_t* U_val, const getrf_id_t* X_rcsr,
  const getrf_id_t* X_cid, getrf_val_t* X_val,
  getrf_id_t n, getrf_id_t a_nnz, getrf_id_t l_nnz,
  getrf_id_t u_nnz, getrf_id_t x_rows, getrf_id_t x_cols,
  getrf_id_t x_nnz, getrf_val_t pivot_eps,
  getrf_id_t* status, getrf_id_t* failed_row) {

#pragma HLS INTERFACE m_axi depth=GETRF_MAX_N+1 port=A_rcsr offset=slave bundle=a_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_A_NNZ port=A_cid offset=slave bundle=a_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_A_NNZ port=A_val offset=slave bundle=a_val
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_N+1 port=L_rcsr offset=slave bundle=l_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_L_NNZ port=L_cid offset=slave bundle=l_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_L_NNZ port=L_val offset=slave bundle=l_val
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_N+1 port=U_rcsr offset=slave bundle=u_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_U_NNZ port=U_cid offset=slave bundle=u_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_U_NNZ port=U_val offset=slave bundle=u_val
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_BLOCK_ROWS+1 port=X_rcsr offset=slave bundle=x_row
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_BLOCK_NNZ port=X_cid offset=slave bundle=x_col
#pragma HLS INTERFACE m_axi depth=GETRF_MAX_BLOCK_NNZ port=X_val offset=slave bundle=x_val
#pragma HLS INTERFACE s_axilite port=operation bundle=control
#pragma HLS INTERFACE s_axilite port=n bundle=control
#pragma HLS INTERFACE s_axilite port=a_nnz bundle=control
#pragma HLS INTERFACE s_axilite port=l_nnz bundle=control
#pragma HLS INTERFACE s_axilite port=u_nnz bundle=control
#pragma HLS INTERFACE s_axilite port=x_rows bundle=control
#pragma HLS INTERFACE s_axilite port=x_cols bundle=control
#pragma HLS INTERFACE s_axilite port=x_nnz bundle=control
#pragma HLS INTERFACE s_axilite port=pivot_eps bundle=control
#pragma HLS INTERFACE s_axilite port=status bundle=control
#pragma HLS INTERFACE s_axilite port=failed_row bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

 local_pos_t lower_pos[64][64];
 local_pos_t upper_pos[64][64];
 getrf_val_t factor[64][64];
 local_pos_t block_pos[64][64];
 getrf_val_t block[64][64];
#pragma HLS ARRAY_PARTITION variable=lower_pos cyclic factor=GETRF_COMPUTE_UNITS dim=2
#pragma HLS ARRAY_PARTITION variable=upper_pos cyclic factor=GETRF_COMPUTE_UNITS dim=2
#pragma HLS ARRAY_PARTITION variable=factor cyclic factor=GETRF_COMPUTE_UNITS dim=2
#pragma HLS ARRAY_PARTITION variable=block_pos cyclic factor=GETRF_COMPUTE_UNITS dim=2
#pragma HLS ARRAY_PARTITION variable=block_pos cyclic factor=GETRF_COMPUTE_UNITS dim=1
#pragma HLS ARRAY_PARTITION variable=block cyclic factor=GETRF_COMPUTE_UNITS dim=2
#pragma HLS ARRAY_PARTITION variable=block cyclic factor=GETRF_COMPUTE_UNITS dim=1

 *status = GETRF_SUCCESS;
 *failed_row = 0xFFFFFFFFu;
 if (4 == 0 || n == 0 || n > 64 ||
   a_nnz > 1024 || l_nnz > 2048 ||
   u_nnz > 2048 || x_rows > 64 ||
   x_cols > 64 || x_nnz > (2048 + 2048)) {
  cached_fail(GETRF_INVALID_SIZE, 0, status, failed_row);
  return;
 }

 clear_factor_cache(lower_pos, upper_pos, factor, n);
 if (operation == SPARSE_LU_GETRF) {
  *status = run_cached_getrf(A_rcsr, A_cid, A_val, L_rcsr, L_cid,
    L_val, U_rcsr, U_cid, U_val, n, a_nnz, l_nnz, u_nnz,
    pivot_eps, lower_pos, upper_pos, factor, failed_row);
  return;
 }
 if (operation != SPARSE_LU_GESSM && operation != SPARSE_LU_TSTRF) {
  cached_fail(GETRF_INVALID_OPERATION, 0, status, failed_row);
  return;
 }
 if (x_rows == 0 || x_cols == 0) {
  cached_fail(GETRF_INVALID_SIZE, 0, status, failed_row);
  return;
 }

 clear_block_cache(block_pos, block, x_rows, x_cols);
 *status = cache_block(X_rcsr, X_cid, X_val, x_rows, x_cols, x_nnz,
   block_pos, block, failed_row);
 if (*status != GETRF_SUCCESS) return;
 if (operation == SPARSE_LU_GESSM) {
  if (x_rows != n) {
   cached_fail(GETRF_INVALID_SIZE, 0, status, failed_row);
   return;
  }
  *status = cache_triangular_pattern(L_rcsr, L_cid, L_val,
    n, l_nnz, true, true, lower_pos, factor, failed_row);
  if (*status == GETRF_SUCCESS)
   *status = run_cached_gessm(n, x_cols, lower_pos, factor,
     block_pos, block, failed_row);
 } else {
  if (x_cols != n) {
   cached_fail(GETRF_INVALID_SIZE, 0, status, failed_row);
   return;
  }
  *status = cache_triangular_pattern(U_rcsr, U_cid, U_val,
    n, u_nnz, false, true, upper_pos, factor, failed_row);
  if (*status == GETRF_SUCCESS)
   *status = run_cached_tstrf(n, x_rows, pivot_eps, upper_pos,
     factor, block_pos, block, failed_row);
 }
 if (*status != GETRF_SUCCESS) return;
 for (getrf_id_t row = 0; row < x_rows; ++row) {
  for (getrf_id_t pos = X_rcsr[row]; pos < X_rcsr[row + 1]; ++pos) {
#pragma HLS PIPELINE II=1
   X_val[pos] = block[row][X_cid[pos]];
  }
 }
}
#ifndef HLS_FASTSIM
#ifdef __cplusplus
extern "C"
#endif
void apatb_sparse_lu_shared_ir(unsigned int, const unsigned int *, const unsigned int *, const float *, const unsigned int *, const unsigned int *, float *, const unsigned int *, const unsigned int *, float *, const unsigned int *, const unsigned int *, float *, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, float, unsigned int *, unsigned int *);
#ifdef __cplusplus
extern "C"
#endif
void sparse_lu_shared_hw_stub(unsigned int operation, const unsigned int *A_rcsr, const unsigned int *A_cid, const float *A_val, const unsigned int *L_rcsr, const unsigned int *L_cid, float *L_val, const unsigned int *U_rcsr, const unsigned int *U_cid, float *U_val, const unsigned int *X_rcsr, const unsigned int *X_cid, float *X_val, unsigned int n, unsigned int a_nnz, unsigned int l_nnz, unsigned int u_nnz, unsigned int x_rows, unsigned int x_cols, unsigned int x_nnz, float pivot_eps, unsigned int *status, unsigned int *failed_row){
sparse_lu_shared(operation, A_rcsr, A_cid, A_val, L_rcsr, L_cid, L_val, U_rcsr, U_cid, U_val, X_rcsr, X_cid, X_val, n, a_nnz, l_nnz, u_nnz, x_rows, x_cols, x_nnz, pivot_eps, status, failed_row);
return ;
}
#ifdef __cplusplus
extern "C"
#endif
void refine_signal_handler();
#ifdef __cplusplus
extern "C"
#endif
void apatb_sparse_lu_shared_sw(unsigned int operation, const unsigned int *A_rcsr, const unsigned int *A_cid, const float *A_val, const unsigned int *L_rcsr, const unsigned int *L_cid, float *L_val, const unsigned int *U_rcsr, const unsigned int *U_cid, float *U_val, const unsigned int *X_rcsr, const unsigned int *X_cid, float *X_val, unsigned int n, unsigned int a_nnz, unsigned int l_nnz, unsigned int u_nnz, unsigned int x_rows, unsigned int x_cols, unsigned int x_nnz, float pivot_eps, unsigned int *status, unsigned int *failed_row){
refine_signal_handler();
apatb_sparse_lu_shared_ir(operation, A_rcsr, A_cid, A_val, L_rcsr, L_cid, L_val, U_rcsr, U_cid, U_val, X_rcsr, X_cid, X_val, n, a_nnz, l_nnz, u_nnz, x_rows, x_cols, x_nnz, pivot_eps, status, failed_row);
return ;
}
#endif
# 454 "/home/huz/project/SpMM_TCAD/test/sparse_lu_shared_cached.cpp"

