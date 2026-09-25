# 1 "sparse_lu_ops.cpp"
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
# 1 "sparse_lu_ops.cpp" 2
# 1 "./sparse_lu_ops.h" 1



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
# 5 "./sparse_lu_ops.h" 2

getrf_id_t getrf_find_in_row(const getrf_id_t* row_ptr,
  const getrf_id_t* col_idx, getrf_id_t row, getrf_id_t target);



getrf_id_t gessm_fixed_csr(const getrf_id_t* L_rcsr,
  const getrf_id_t* L_cid, const getrf_val_t* L_val,
  const getrf_id_t* B_rcsr, const getrf_id_t* B_cid,
  getrf_val_t* B_val, getrf_id_t panel_begin,
  getrf_id_t panel_end, getrf_id_t min_b_col,
  getrf_id_t* failed_row);



getrf_id_t tstrf_fixed_csr(const getrf_id_t* U_rcsr,
  const getrf_id_t* U_cid, const getrf_val_t* U_val,
  const getrf_id_t* B_rcsr, const getrf_id_t* B_cid,
  getrf_val_t* B_val, getrf_id_t panel_begin,
  getrf_id_t panel_end, getrf_id_t first_b_row,
  getrf_id_t last_b_row, getrf_val_t pivot_eps,
  getrf_id_t* failed_row);
# 2 "sparse_lu_ops.cpp" 2

static getrf_val_t lu_abs(getrf_val_t value) {
#pragma HLS INLINE
 return value < 0.0f ? -value : value;
}

getrf_id_t getrf_find_in_row(const getrf_id_t* row_ptr,
  const getrf_id_t* col_idx, getrf_id_t row, getrf_id_t target) {
#pragma HLS INLINE
 VITIS_LOOP_11_1: for (getrf_id_t pos = row_ptr[row]; pos < row_ptr[row + 1]; ++pos) {
  const getrf_id_t col = col_idx[pos];
  if (col == target) return pos;
  if (col > target) break;
 }
 return 0xFFFFFFFFu;
}

getrf_id_t gessm_fixed_csr(const getrf_id_t* L_rcsr,
  const getrf_id_t* L_cid, const getrf_val_t* L_val,
  const getrf_id_t* B_rcsr, const getrf_id_t* B_cid,
  getrf_val_t* B_val, getrf_id_t panel_begin,
  getrf_id_t panel_end, getrf_id_t min_b_col,
  getrf_id_t* failed_row) {
#pragma HLS INLINE
 VITIS_LOOP_26_1: for (getrf_id_t row = panel_begin; row < panel_end; ++row) {
  VITIS_LOOP_27_2: for (getrf_id_t lp = L_rcsr[row]; lp < L_rcsr[row + 1]; ++lp) {
   const getrf_id_t source_row = L_cid[lp];
   if (source_row < panel_begin) continue;
   if (source_row >= row) break;
   const getrf_val_t multiplier = L_val[lp];
   VITIS_LOOP_32_3: for (getrf_id_t bp = B_rcsr[source_row];
     bp < B_rcsr[source_row + 1]; ++bp) {
    const getrf_id_t col = B_cid[bp];
    if (col < min_b_col) continue;
    const getrf_id_t target = getrf_find_in_row(
      B_rcsr, B_cid, row, col);
    if (target == 0xFFFFFFFFu) {
     *failed_row = row;
     return GETRF_PATTERN_MISMATCH;
    }
    B_val[target] -= multiplier * B_val[bp];
   }
  }
 }
 return GETRF_SUCCESS;
}

getrf_id_t tstrf_fixed_csr(const getrf_id_t* U_rcsr,
  const getrf_id_t* U_cid, const getrf_val_t* U_val,
  const getrf_id_t* B_rcsr, const getrf_id_t* B_cid,
  getrf_val_t* B_val, getrf_id_t panel_begin,
  getrf_id_t panel_end, getrf_id_t first_b_row,
  getrf_id_t last_b_row, getrf_val_t pivot_eps,
  getrf_id_t* failed_row) {
#pragma HLS INLINE
 VITIS_LOOP_57_1: for (getrf_id_t row = first_b_row; row < last_b_row; ++row) {
  VITIS_LOOP_58_2: for (getrf_id_t bp = B_rcsr[row]; bp < B_rcsr[row + 1]; ++bp) {
   const getrf_id_t pivot = B_cid[bp];
   if (pivot < panel_begin) continue;
   if (pivot >= panel_end) break;
   const getrf_id_t diagonal = getrf_find_in_row(
     U_rcsr, U_cid, pivot, pivot);
   if (diagonal == 0xFFFFFFFFu ||
     lu_abs(U_val[diagonal]) <= pivot_eps) {
    *failed_row = pivot;
    return GETRF_ZERO_PIVOT;
   }
   const getrf_val_t multiplier = B_val[bp] / U_val[diagonal];
   B_val[bp] = multiplier;
   VITIS_LOOP_71_3: for (getrf_id_t up = diagonal + 1; up < U_rcsr[pivot + 1]; ++up) {
    const getrf_id_t col = U_cid[up];
    if (col >= panel_end) break;
    const getrf_id_t target = getrf_find_in_row(
      B_rcsr, B_cid, row, col);
    if (target == 0xFFFFFFFFu) {
     *failed_row = row;
     return GETRF_PATTERN_MISMATCH;
    }
    B_val[target] -= multiplier * U_val[up];
   }
  }
 }
 return GETRF_SUCCESS;
}

extern "C" void sparse_gessm(
  const getrf_id_t* L_rcsr, const getrf_id_t* L_cid,
  const getrf_val_t* L_val, const getrf_id_t* B_rcsr,
  const getrf_id_t* B_cid, getrf_val_t* B_val,
  getrf_id_t n, getrf_id_t nrhs, getrf_id_t l_nnz,
  getrf_id_t b_nnz, getrf_id_t* status, getrf_id_t* failed_row) {
#pragma HLS INTERFACE m_axi depth=64 +1 port=L_rcsr offset=slave bundle=l_row
#pragma HLS INTERFACE m_axi depth=2048 port=L_cid offset=slave bundle=l_col
#pragma HLS INTERFACE m_axi depth=2048 port=L_val offset=slave bundle=l_val
#pragma HLS INTERFACE m_axi depth=64 +1 port=B_rcsr offset=slave bundle=b_row
#pragma HLS INTERFACE m_axi depth=(2048 + 2048) port=B_cid offset=slave bundle=b_col
#pragma HLS INTERFACE m_axi depth=(2048 + 2048) port=B_val offset=slave bundle=b_val
#pragma HLS INTERFACE s_axilite port=return bundle=control
 *status = GETRF_SUCCESS;
 *failed_row = 0xFFFFFFFFu;
 if (n == 0 || n > 64 || nrhs == 0 ||
   l_nnz > 2048 || b_nnz > (2048 + 2048)) {
  *status = GETRF_INVALID_SIZE;
  *failed_row = 0;
  return;
 }
 if (L_rcsr[0] != 0 || B_rcsr[0] != 0 ||
   L_rcsr[n] != l_nnz || B_rcsr[n] != b_nnz) {
  *status = GETRF_INVALID_CSR;
  *failed_row = 0;
  return;
 }
 VITIS_LOOP_114_1: for (getrf_id_t row = 0; row < n; ++row) {
  if (L_rcsr[row] > L_rcsr[row + 1] || B_rcsr[row] > B_rcsr[row + 1] ||
    getrf_find_in_row(L_rcsr, L_cid, row, row) == 0xFFFFFFFFu) {
   *status = GETRF_INVALID_CSR;
   *failed_row = row;
   return;
  }
  VITIS_LOOP_121_2: for (getrf_id_t bp = B_rcsr[row]; bp < B_rcsr[row + 1]; ++bp) {
   if (B_cid[bp] >= nrhs) {
    *status = GETRF_INVALID_CSR;
    *failed_row = row;
    return;
   }
  }
 }
 *status = gessm_fixed_csr(L_rcsr, L_cid, L_val, B_rcsr, B_cid,
   B_val, 0, n, 0, failed_row);
}

extern "C" void sparse_tstrf(
  const getrf_id_t* U_rcsr, const getrf_id_t* U_cid,
  const getrf_val_t* U_val, const getrf_id_t* B_rcsr,
  const getrf_id_t* B_cid, getrf_val_t* B_val,
  getrf_id_t n, getrf_id_t block_rows, getrf_id_t u_nnz,
  getrf_id_t b_nnz, getrf_val_t pivot_eps,
  getrf_id_t* status, getrf_id_t* failed_row) {
#pragma HLS INTERFACE m_axi depth=64 +1 port=U_rcsr offset=slave bundle=u_row
#pragma HLS INTERFACE m_axi depth=2048 port=U_cid offset=slave bundle=u_col
#pragma HLS INTERFACE m_axi depth=2048 port=U_val offset=slave bundle=u_val
#pragma HLS INTERFACE m_axi depth=64 +1 port=B_rcsr offset=slave bundle=b_row
#pragma HLS INTERFACE m_axi depth=(2048 + 2048) port=B_cid offset=slave bundle=b_col
#pragma HLS INTERFACE m_axi depth=(2048 + 2048) port=B_val offset=slave bundle=b_val
#pragma HLS INTERFACE s_axilite port=return bundle=control
 *status = GETRF_SUCCESS;
 *failed_row = 0xFFFFFFFFu;
 if (n == 0 || n > 64 || block_rows > 64 ||
   u_nnz > 2048 || b_nnz > (2048 + 2048)) {
  *status = GETRF_INVALID_SIZE;
  *failed_row = 0;
  return;
 }
 if (U_rcsr[0] != 0 || B_rcsr[0] != 0 ||
   U_rcsr[n] != u_nnz || B_rcsr[block_rows] != b_nnz) {
  *status = GETRF_INVALID_CSR;
  *failed_row = 0;
  return;
 }
 VITIS_LOOP_161_1: for (getrf_id_t row = 0; row < n; ++row) {
  if (U_rcsr[row] > U_rcsr[row + 1] ||
    getrf_find_in_row(U_rcsr, U_cid, row, row) == 0xFFFFFFFFu) {
   *status = GETRF_INVALID_CSR;
   *failed_row = row;
   return;
  }
 }
 VITIS_LOOP_169_2: for (getrf_id_t row = 0; row < block_rows; ++row) {
  if (B_rcsr[row] > B_rcsr[row + 1]) {
   *status = GETRF_INVALID_CSR;
   *failed_row = row;
   return;
  }
 }
 *status = tstrf_fixed_csr(U_rcsr, U_cid, U_val, B_rcsr, B_cid,
   B_val, 0, n, 0, block_rows, pivot_eps, failed_row);
}
