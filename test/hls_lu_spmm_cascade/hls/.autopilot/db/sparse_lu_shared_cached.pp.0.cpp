# 1 "sparse_lu_shared_cached.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 405 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/huz/software/2025.2/Vitis/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 105 "/home/huz/software/2025.2/Vitis/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_ReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Read(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_WriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Write(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_PrintNone(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintInt(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintDouble(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Return(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_Inline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecStable(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecStableContent(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBindPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipoDepth(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_DataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void __xilinx_ip_top(...) __attribute__ ((nothrow)) __attribute__((overloadable));


}
# 2 "<built-in>" 2
# 1 "sparse_lu_shared_cached.cpp" 2
# 1 "./sparse_lu_shared.h" 1



# 1 "./sparse_getrf.h" 1



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
# 5 "./sparse_getrf.h" 2

typedef uint32_t getrf_id_t;
typedef float getrf_val_t;
# 44 "./sparse_getrf.h"
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
# 5 "./sparse_lu_shared.h" 2

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
# 2 "sparse_lu_shared_cached.cpp" 2



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
 VITIS_LOOP_23_1: for (getrf_id_t row = 0; row < n; ++row) {
  VITIS_LOOP_24_2: for (getrf_id_t base = 0; base < n;
    base += 4) {
#pragma HLS PIPELINE II=1
   VITIS_LOOP_27_3: for (getrf_id_t lane = 0; lane < 4; ++lane) {
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
 VITIS_LOOP_44_1: for (getrf_id_t row = 0; row < rows; ++row) {
  VITIS_LOOP_45_2: for (getrf_id_t base = 0; base < cols;
    base += 4) {
#pragma HLS PIPELINE II=1
   VITIS_LOOP_48_3: for (getrf_id_t lane = 0; lane < 4; ++lane) {
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
 VITIS_LOOP_68_1: for (getrf_id_t row = 0; row < n; ++row) {
  const getrf_id_t begin = row_ptr[row];
  const getrf_id_t end = row_ptr[row + 1];
  if (begin > end || end > nnz) {
   *failed_row = row;
   return GETRF_INVALID_CSR;
  }
  getrf_id_t previous = 0xFFFFFFFFu;
  VITIS_LOOP_76_2: for (getrf_id_t pos = begin; pos < end; ++pos) {
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
 VITIS_LOOP_102_1: for (getrf_id_t row = 0; row < rows; ++row) {
  const getrf_id_t begin = row_ptr[row];
  const getrf_id_t end = row_ptr[row + 1];
  if (begin > end || end > nnz) {
   *failed_row = row;
   return GETRF_INVALID_CSR;
  }
  getrf_id_t previous = 0xFFFFFFFFu;
  VITIS_LOOP_110_2: for (getrf_id_t pos = begin; pos < end; ++pos) {
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
 VITIS_LOOP_128_1: for (getrf_id_t row = 0; row < n; ++row) {
  VITIS_LOOP_129_2: for (getrf_id_t pivot = 0; pivot < row; ++pivot) {
   if (lower_pos[row][pivot] == LOCAL_INVALID_POS) continue;
   VITIS_LOOP_131_3: for (getrf_id_t col = pivot + 1; col < n; ++col) {
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
 VITIS_LOOP_149_1: for (getrf_id_t row = 0; row < n; ++row) {
  VITIS_LOOP_150_2: for (getrf_id_t source = 0; source < row; ++source) {
   if (lower_pos[row][source] == LOCAL_INVALID_POS) continue;
   VITIS_LOOP_152_3: for (getrf_id_t col = 0; col < x_cols; ++col) {
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
 VITIS_LOOP_168_1: for (getrf_id_t row = 0; row < x_rows; ++row) {
  VITIS_LOOP_169_2: for (getrf_id_t pivot = 0; pivot < n; ++pivot) {
   if (block_pos[row][pivot] == LOCAL_INVALID_POS) continue;
   VITIS_LOOP_171_3: for (getrf_id_t col = pivot + 1; col < n; ++col) {
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

 VITIS_LOOP_202_1: for (getrf_id_t row = 0; row < n; ++row) {
  const getrf_id_t begin = A_rcsr[row];
  const getrf_id_t end = A_rcsr[row + 1];
  if (begin > end || end > a_nnz) {
   *failed_row = row;
   return GETRF_INVALID_CSR;
  }
  getrf_id_t previous = 0xFFFFFFFFu;
  VITIS_LOOP_210_2: for (getrf_id_t pos = begin; pos < end; ++pos) {
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

 VITIS_LOOP_229_3: for (getrf_id_t row = 0; row < n; ++row) {
  VITIS_LOOP_230_4: for (getrf_id_t pivot = 0; pivot < row; ++pivot) {
   if (lower_pos[row][pivot] == LOCAL_INVALID_POS) continue;
   if (cached_abs(work[pivot][pivot]) <= pivot_eps) {
    *failed_row = pivot;
    return GETRF_ZERO_PIVOT;
   }
   const getrf_val_t multiplier = work[row][pivot] / work[pivot][pivot];
   work[row][pivot] = multiplier;
   VITIS_LOOP_238_5: for (getrf_id_t base = pivot + 1; base < n;
     base += 4) {
#pragma HLS DEPENDENCE variable=work inter false
#pragma HLS PIPELINE II=1
    VITIS_LOOP_242_6: for (getrf_id_t lane = 0; lane < 4; ++lane) {
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

 VITIS_LOOP_256_7: for (getrf_id_t row = 0; row < n; ++row) {
  VITIS_LOOP_257_8: for (getrf_id_t pos = L_rcsr[row]; pos < L_rcsr[row + 1]; ++pos) {
#pragma HLS PIPELINE II=1
   const getrf_id_t col = L_cid[pos];
   L_val[pos] = col == row ? 1.0f : work[row][col];
  }
  VITIS_LOOP_262_9: for (getrf_id_t pos = U_rcsr[row]; pos < U_rcsr[row + 1]; ++pos) {
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
 VITIS_LOOP_279_1: for (getrf_id_t row = 0; row < n; ++row) {
  VITIS_LOOP_280_2: for (getrf_id_t source = 0; source < row; ++source) {
   if (lower_pos[row][source] == LOCAL_INVALID_POS) continue;
   const getrf_val_t multiplier = factor[row][source];
   VITIS_LOOP_283_3: for (getrf_id_t base = 0; base < x_cols;
     base += 4) {
#pragma HLS DEPENDENCE variable=block inter false
#pragma HLS PIPELINE II=1
    VITIS_LOOP_287_4: for (getrf_id_t lane = 0; lane < 4; ++lane) {
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
 VITIS_LOOP_309_1: for (getrf_id_t pivot = 0; pivot < n; ++pivot) {
  if (cached_abs(factor[pivot][pivot]) <= pivot_eps) {
   *failed_row = pivot;
   return GETRF_ZERO_PIVOT;
  }
  VITIS_LOOP_314_2: for (getrf_id_t row_base = 0; row_base < x_rows;
    row_base += 4) {
   getrf_val_t multiplier[4];
   bool active[4];
#pragma HLS ARRAY_PARTITION variable=multiplier complete
#pragma HLS ARRAY_PARTITION variable=active complete
   VITIS_LOOP_320_3: for (getrf_id_t lane = 0; lane < 4; ++lane) {
#pragma HLS UNROLL
    const getrf_id_t row = row_base + lane;
    active[lane] = row < x_rows &&
      block_pos[row][pivot] != LOCAL_INVALID_POS;
    multiplier[lane] = active[lane]
      ? block[row][pivot] / factor[pivot][pivot] : 0.0f;
    if (active[lane]) block[row][pivot] = multiplier[lane];
   }
   VITIS_LOOP_329_4: for (getrf_id_t col = pivot + 1; col < n; ++col) {
#pragma HLS DEPENDENCE variable=block inter false
#pragma HLS PIPELINE II=1
    if (upper_pos[pivot][col] == LOCAL_INVALID_POS) continue;
    VITIS_LOOP_333_5: for (getrf_id_t lane = 0; lane < 4; ++lane) {
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

#pragma HLS INTERFACE m_axi depth=64 +1 port=A_rcsr offset=slave bundle=a_row
#pragma HLS INTERFACE m_axi depth=1024 port=A_cid offset=slave bundle=a_col
#pragma HLS INTERFACE m_axi depth=1024 port=A_val offset=slave bundle=a_val
#pragma HLS INTERFACE m_axi depth=64 +1 port=L_rcsr offset=slave bundle=l_row
#pragma HLS INTERFACE m_axi depth=2048 port=L_cid offset=slave bundle=l_col
#pragma HLS INTERFACE m_axi depth=2048 port=L_val offset=slave bundle=l_val
#pragma HLS INTERFACE m_axi depth=64 +1 port=U_rcsr offset=slave bundle=u_row
#pragma HLS INTERFACE m_axi depth=2048 port=U_cid offset=slave bundle=u_col
#pragma HLS INTERFACE m_axi depth=2048 port=U_val offset=slave bundle=u_val
#pragma HLS INTERFACE m_axi depth=64 +1 port=X_rcsr offset=slave bundle=x_row
#pragma HLS INTERFACE m_axi depth=(2048 + 2048) port=X_cid offset=slave bundle=x_col
#pragma HLS INTERFACE m_axi depth=(2048 + 2048) port=X_val offset=slave bundle=x_val
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
#pragma HLS ARRAY_PARTITION variable=lower_pos cyclic factor=4 dim=2
#pragma HLS ARRAY_PARTITION variable=upper_pos cyclic factor=4 dim=2
#pragma HLS ARRAY_PARTITION variable=factor cyclic factor=4 dim=2
#pragma HLS ARRAY_PARTITION variable=block_pos cyclic factor=4 dim=2
#pragma HLS ARRAY_PARTITION variable=block_pos cyclic factor=4 dim=1
#pragma HLS ARRAY_PARTITION variable=block cyclic factor=4 dim=2
#pragma HLS ARRAY_PARTITION variable=block cyclic factor=4 dim=1

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
 VITIS_LOOP_448_1: for (getrf_id_t row = 0; row < x_rows; ++row) {
  VITIS_LOOP_449_2: for (getrf_id_t pos = X_rcsr[row]; pos < X_rcsr[row + 1]; ++pos) {
#pragma HLS PIPELINE II=1
   X_val[pos] = block[row][X_cid[pos]];
  }
 }
}
