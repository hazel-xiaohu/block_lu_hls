; ModuleID = '/home/huz/project/SpMM_TCAD/test/hls_lu_spmm_cascade/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<128>" = type { %"struct.ap_int_base<128, false>" }
%"struct.ap_int_base<128, false>" = type { %"struct.ssdm_int<128, false>" }
%"struct.ssdm_int<128, false>" = type { i128 }

; Function Attrs: noinline
define void @apatb_spmm_ir(i32* noalias nocapture nonnull readonly "maxi" %A_rcsr, i32* noalias nocapture nonnull readonly "maxi" %A_cid, float* noalias nocapture nonnull readonly "maxi" %A_val, i32 %arnum, i32 %atnum, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_rcsr1, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_rcsr2, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_rcsr3, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_rcsr4, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_val1, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_cid1, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_val2, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_cid2, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_val3, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_cid3, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_val4, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_cid4, i32 %brnum, i32 %btnum, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_val_port1, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_cid_port1, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_val_port2, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_cid_port2, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_val_port3, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_cid_port3, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_val_port4, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly "maxi" %B_cid_port4, i32* noalias nocapture nonnull readonly "maxi" %C_rcsr, i32* noalias nocapture nonnull readonly "maxi" %C_cid, float* noalias nocapture nonnull "maxi" %C_val, i32 %B_rcsr_base, i32 %B_val_base, i32 %B_cid_base, i32* noalias nocapture nonnull %r1acc, i32* noalias nocapture nonnull %r1hit, i32* noalias nocapture nonnull %r2acc, i32* noalias nocapture nonnull %r2hit, i32* noalias nocapture nonnull %r3acc, i32* noalias nocapture nonnull %r3hit, i32* noalias nocapture nonnull %r4acc, i32* noalias nocapture nonnull %r4hit, i32* noalias nocapture nonnull readonly %r5acc, i32* noalias nocapture nonnull readonly %r5hit, i32* noalias nocapture nonnull readonly %r6acc, i32* noalias nocapture nonnull readonly %r6hit, i32* noalias nocapture nonnull readonly %r7acc, i32* noalias nocapture nonnull readonly %r7hit, i32* noalias nocapture nonnull readonly %r8acc, i32* noalias nocapture nonnull readonly %r8hit, i32* noalias nocapture nonnull %vc1acc, i32* noalias nocapture nonnull %vc1hit, i32* noalias nocapture nonnull %vc2acc, i32* noalias nocapture nonnull %vc2hit, i32* noalias nocapture nonnull %vc3acc, i32* noalias nocapture nonnull %vc3hit, i32* noalias nocapture nonnull %vc4acc, i32* noalias nocapture nonnull %vc4hit, i32* noalias nocapture nonnull readonly %vc5acc, i32* noalias nocapture nonnull readonly %vc5hit, i32* noalias nocapture nonnull readonly %vc6acc, i32* noalias nocapture nonnull readonly %vc6hit, i32* noalias nocapture nonnull readonly %vc7acc, i32* noalias nocapture nonnull readonly %vc7hit, i32* noalias nocapture nonnull readonly %vc8acc, i32* noalias nocapture nonnull readonly %vc8hit, i32* noalias nocapture nonnull %fnum, i32* noalias nocapture nonnull %workload_counter1, i32* noalias nocapture nonnull %workload_counter2, i32* noalias nocapture nonnull %workload_counter3, i32* noalias nocapture nonnull %workload_counter4) local_unnamed_addr #0 {
entry:
  %0 = bitcast i32* %A_rcsr to [64 x i32]*
  %A_rcsr_copy = alloca [64 x i32], align 512
  %1 = bitcast i32* %A_cid to [1024 x i32]*
  %2 = call i8* @malloc(i64 4096)
  %A_cid_copy = bitcast i8* %2 to [1024 x i32]*
  %3 = bitcast float* %A_val to [1024 x float]*
  %4 = call i8* @malloc(i64 4096)
  %A_val_copy = bitcast i8* %4 to [1024 x float]*
  %5 = bitcast %"struct.ap_uint<128>"* %B_rcsr1 to [16 x %"struct.ap_uint<128>"]*
  %B_rcsr1_copy = alloca [16 x i128], align 512
  %6 = bitcast %"struct.ap_uint<128>"* %B_rcsr2 to [16 x %"struct.ap_uint<128>"]*
  %B_rcsr2_copy = alloca [16 x i128], align 512
  %7 = bitcast %"struct.ap_uint<128>"* %B_rcsr3 to [16 x %"struct.ap_uint<128>"]*
  %B_rcsr3_copy = alloca [16 x i128], align 512
  %8 = bitcast %"struct.ap_uint<128>"* %B_rcsr4 to [16 x %"struct.ap_uint<128>"]*
  %B_rcsr4_copy = alloca [16 x i128], align 512
  %9 = bitcast %"struct.ap_uint<128>"* %B_val1 to [256 x %"struct.ap_uint<128>"]*
  %10 = call i8* @malloc(i64 4096)
  %B_val1_copy = bitcast i8* %10 to [256 x i128]*
  %11 = bitcast %"struct.ap_uint<128>"* %B_cid1 to [256 x %"struct.ap_uint<128>"]*
  %12 = call i8* @malloc(i64 4096)
  %B_cid1_copy = bitcast i8* %12 to [256 x i128]*
  %13 = bitcast %"struct.ap_uint<128>"* %B_val2 to [256 x %"struct.ap_uint<128>"]*
  %14 = call i8* @malloc(i64 4096)
  %B_val2_copy = bitcast i8* %14 to [256 x i128]*
  %15 = bitcast %"struct.ap_uint<128>"* %B_cid2 to [256 x %"struct.ap_uint<128>"]*
  %16 = call i8* @malloc(i64 4096)
  %B_cid2_copy = bitcast i8* %16 to [256 x i128]*
  %17 = bitcast %"struct.ap_uint<128>"* %B_val3 to [256 x %"struct.ap_uint<128>"]*
  %18 = call i8* @malloc(i64 4096)
  %B_val3_copy = bitcast i8* %18 to [256 x i128]*
  %19 = bitcast %"struct.ap_uint<128>"* %B_cid3 to [256 x %"struct.ap_uint<128>"]*
  %20 = call i8* @malloc(i64 4096)
  %B_cid3_copy = bitcast i8* %20 to [256 x i128]*
  %21 = bitcast %"struct.ap_uint<128>"* %B_val4 to [256 x %"struct.ap_uint<128>"]*
  %22 = call i8* @malloc(i64 4096)
  %B_val4_copy = bitcast i8* %22 to [256 x i128]*
  %23 = bitcast %"struct.ap_uint<128>"* %B_cid4 to [256 x %"struct.ap_uint<128>"]*
  %24 = call i8* @malloc(i64 4096)
  %B_cid4_copy = bitcast i8* %24 to [256 x i128]*
  %25 = bitcast %"struct.ap_uint<128>"* %B_val_port1 to [256 x %"struct.ap_uint<128>"]*
  %26 = call i8* @malloc(i64 4096)
  %B_val_port1_copy = bitcast i8* %26 to [256 x i128]*
  %27 = bitcast %"struct.ap_uint<128>"* %B_cid_port1 to [256 x %"struct.ap_uint<128>"]*
  %28 = call i8* @malloc(i64 4096)
  %B_cid_port1_copy = bitcast i8* %28 to [256 x i128]*
  %29 = bitcast %"struct.ap_uint<128>"* %B_val_port2 to [256 x %"struct.ap_uint<128>"]*
  %30 = call i8* @malloc(i64 4096)
  %B_val_port2_copy = bitcast i8* %30 to [256 x i128]*
  %31 = bitcast %"struct.ap_uint<128>"* %B_cid_port2 to [256 x %"struct.ap_uint<128>"]*
  %32 = call i8* @malloc(i64 4096)
  %B_cid_port2_copy = bitcast i8* %32 to [256 x i128]*
  %33 = bitcast %"struct.ap_uint<128>"* %B_val_port3 to [256 x %"struct.ap_uint<128>"]*
  %34 = call i8* @malloc(i64 4096)
  %B_val_port3_copy = bitcast i8* %34 to [256 x i128]*
  %35 = bitcast %"struct.ap_uint<128>"* %B_cid_port3 to [256 x %"struct.ap_uint<128>"]*
  %36 = call i8* @malloc(i64 4096)
  %B_cid_port3_copy = bitcast i8* %36 to [256 x i128]*
  %37 = bitcast %"struct.ap_uint<128>"* %B_val_port4 to [256 x %"struct.ap_uint<128>"]*
  %38 = call i8* @malloc(i64 4096)
  %B_val_port4_copy = bitcast i8* %38 to [256 x i128]*
  %39 = bitcast %"struct.ap_uint<128>"* %B_cid_port4 to [256 x %"struct.ap_uint<128>"]*
  %40 = call i8* @malloc(i64 4096)
  %B_cid_port4_copy = bitcast i8* %40 to [256 x i128]*
  %41 = bitcast i32* %C_rcsr to [64 x i32]*
  %C_rcsr_copy = alloca [64 x i32], align 512
  %42 = bitcast i32* %C_cid to [1025 x i32]*
  %43 = call i8* @malloc(i64 4100)
  %C_cid_copy = bitcast i8* %43 to [1025 x i32]*
  %44 = bitcast float* %C_val to [1025 x float]*
  %45 = call i8* @malloc(i64 4100)
  %C_val_copy = bitcast i8* %45 to [1025 x float]*
  %r1acc_copy = alloca i32, align 512
  %r1hit_copy = alloca i32, align 512
  %r2acc_copy = alloca i32, align 512
  %r2hit_copy = alloca i32, align 512
  %r3acc_copy = alloca i32, align 512
  %r3hit_copy = alloca i32, align 512
  %r4acc_copy = alloca i32, align 512
  %r4hit_copy = alloca i32, align 512
  %r5acc_copy = alloca i32, align 512
  %r5hit_copy = alloca i32, align 512
  %r6acc_copy = alloca i32, align 512
  %r6hit_copy = alloca i32, align 512
  %r7acc_copy = alloca i32, align 512
  %r7hit_copy = alloca i32, align 512
  %r8acc_copy = alloca i32, align 512
  %r8hit_copy = alloca i32, align 512
  %vc1acc_copy = alloca i32, align 512
  %vc1hit_copy = alloca i32, align 512
  %vc2acc_copy = alloca i32, align 512
  %vc2hit_copy = alloca i32, align 512
  %vc3acc_copy = alloca i32, align 512
  %vc3hit_copy = alloca i32, align 512
  %vc4acc_copy = alloca i32, align 512
  %vc4hit_copy = alloca i32, align 512
  %vc5acc_copy = alloca i32, align 512
  %vc5hit_copy = alloca i32, align 512
  %vc6acc_copy = alloca i32, align 512
  %vc6hit_copy = alloca i32, align 512
  %vc7acc_copy = alloca i32, align 512
  %vc7hit_copy = alloca i32, align 512
  %vc8acc_copy = alloca i32, align 512
  %vc8hit_copy = alloca i32, align 512
  %fnum_copy = alloca i32, align 512
  %workload_counter1_copy = alloca i32, align 512
  %workload_counter2_copy = alloca i32, align 512
  %workload_counter3_copy = alloca i32, align 512
  %workload_counter4_copy = alloca i32, align 512
  call fastcc void @copy_in([64 x i32]* nonnull %0, [64 x i32]* nonnull align 512 %A_rcsr_copy, [1024 x i32]* nonnull %1, [1024 x i32]* %A_cid_copy, [1024 x float]* nonnull %3, [1024 x float]* %A_val_copy, [16 x %"struct.ap_uint<128>"]* nonnull %5, [16 x i128]* nonnull align 512 %B_rcsr1_copy, [16 x %"struct.ap_uint<128>"]* nonnull %6, [16 x i128]* nonnull align 512 %B_rcsr2_copy, [16 x %"struct.ap_uint<128>"]* nonnull %7, [16 x i128]* nonnull align 512 %B_rcsr3_copy, [16 x %"struct.ap_uint<128>"]* nonnull %8, [16 x i128]* nonnull align 512 %B_rcsr4_copy, [256 x %"struct.ap_uint<128>"]* nonnull %9, [256 x i128]* %B_val1_copy, [256 x %"struct.ap_uint<128>"]* nonnull %11, [256 x i128]* %B_cid1_copy, [256 x %"struct.ap_uint<128>"]* nonnull %13, [256 x i128]* %B_val2_copy, [256 x %"struct.ap_uint<128>"]* nonnull %15, [256 x i128]* %B_cid2_copy, [256 x %"struct.ap_uint<128>"]* nonnull %17, [256 x i128]* %B_val3_copy, [256 x %"struct.ap_uint<128>"]* nonnull %19, [256 x i128]* %B_cid3_copy, [256 x %"struct.ap_uint<128>"]* nonnull %21, [256 x i128]* %B_val4_copy, [256 x %"struct.ap_uint<128>"]* nonnull %23, [256 x i128]* %B_cid4_copy, [256 x %"struct.ap_uint<128>"]* nonnull %25, [256 x i128]* %B_val_port1_copy, [256 x %"struct.ap_uint<128>"]* nonnull %27, [256 x i128]* %B_cid_port1_copy, [256 x %"struct.ap_uint<128>"]* nonnull %29, [256 x i128]* %B_val_port2_copy, [256 x %"struct.ap_uint<128>"]* nonnull %31, [256 x i128]* %B_cid_port2_copy, [256 x %"struct.ap_uint<128>"]* nonnull %33, [256 x i128]* %B_val_port3_copy, [256 x %"struct.ap_uint<128>"]* nonnull %35, [256 x i128]* %B_cid_port3_copy, [256 x %"struct.ap_uint<128>"]* nonnull %37, [256 x i128]* %B_val_port4_copy, [256 x %"struct.ap_uint<128>"]* nonnull %39, [256 x i128]* %B_cid_port4_copy, [64 x i32]* nonnull %41, [64 x i32]* nonnull align 512 %C_rcsr_copy, [1025 x i32]* nonnull %42, [1025 x i32]* %C_cid_copy, [1025 x float]* nonnull %44, [1025 x float]* %C_val_copy, i32* nonnull %r1acc, i32* nonnull align 512 %r1acc_copy, i32* nonnull %r1hit, i32* nonnull align 512 %r1hit_copy, i32* nonnull %r2acc, i32* nonnull align 512 %r2acc_copy, i32* nonnull %r2hit, i32* nonnull align 512 %r2hit_copy, i32* nonnull %r3acc, i32* nonnull align 512 %r3acc_copy, i32* nonnull %r3hit, i32* nonnull align 512 %r3hit_copy, i32* nonnull %r4acc, i32* nonnull align 512 %r4acc_copy, i32* nonnull %r4hit, i32* nonnull align 512 %r4hit_copy, i32* nonnull %r5acc, i32* nonnull align 512 %r5acc_copy, i32* nonnull %r5hit, i32* nonnull align 512 %r5hit_copy, i32* nonnull %r6acc, i32* nonnull align 512 %r6acc_copy, i32* nonnull %r6hit, i32* nonnull align 512 %r6hit_copy, i32* nonnull %r7acc, i32* nonnull align 512 %r7acc_copy, i32* nonnull %r7hit, i32* nonnull align 512 %r7hit_copy, i32* nonnull %r8acc, i32* nonnull align 512 %r8acc_copy, i32* nonnull %r8hit, i32* nonnull align 512 %r8hit_copy, i32* nonnull %vc1acc, i32* nonnull align 512 %vc1acc_copy, i32* nonnull %vc1hit, i32* nonnull align 512 %vc1hit_copy, i32* nonnull %vc2acc, i32* nonnull align 512 %vc2acc_copy, i32* nonnull %vc2hit, i32* nonnull align 512 %vc2hit_copy, i32* nonnull %vc3acc, i32* nonnull align 512 %vc3acc_copy, i32* nonnull %vc3hit, i32* nonnull align 512 %vc3hit_copy, i32* nonnull %vc4acc, i32* nonnull align 512 %vc4acc_copy, i32* nonnull %vc4hit, i32* nonnull align 512 %vc4hit_copy, i32* nonnull %vc5acc, i32* nonnull align 512 %vc5acc_copy, i32* nonnull %vc5hit, i32* nonnull align 512 %vc5hit_copy, i32* nonnull %vc6acc, i32* nonnull align 512 %vc6acc_copy, i32* nonnull %vc6hit, i32* nonnull align 512 %vc6hit_copy, i32* nonnull %vc7acc, i32* nonnull align 512 %vc7acc_copy, i32* nonnull %vc7hit, i32* nonnull align 512 %vc7hit_copy, i32* nonnull %vc8acc, i32* nonnull align 512 %vc8acc_copy, i32* nonnull %vc8hit, i32* nonnull align 512 %vc8hit_copy, i32* nonnull %fnum, i32* nonnull align 512 %fnum_copy, i32* nonnull %workload_counter1, i32* nonnull align 512 %workload_counter1_copy, i32* nonnull %workload_counter2, i32* nonnull align 512 %workload_counter2_copy, i32* nonnull %workload_counter3, i32* nonnull align 512 %workload_counter3_copy, i32* nonnull %workload_counter4, i32* nonnull align 512 %workload_counter4_copy)
  call void @apatb_spmm_hw([64 x i32]* %A_rcsr_copy, [1024 x i32]* %A_cid_copy, [1024 x float]* %A_val_copy, i32 %arnum, i32 %atnum, [16 x i128]* %B_rcsr1_copy, [16 x i128]* %B_rcsr2_copy, [16 x i128]* %B_rcsr3_copy, [16 x i128]* %B_rcsr4_copy, [256 x i128]* %B_val1_copy, [256 x i128]* %B_cid1_copy, [256 x i128]* %B_val2_copy, [256 x i128]* %B_cid2_copy, [256 x i128]* %B_val3_copy, [256 x i128]* %B_cid3_copy, [256 x i128]* %B_val4_copy, [256 x i128]* %B_cid4_copy, i32 %brnum, i32 %btnum, [256 x i128]* %B_val_port1_copy, [256 x i128]* %B_cid_port1_copy, [256 x i128]* %B_val_port2_copy, [256 x i128]* %B_cid_port2_copy, [256 x i128]* %B_val_port3_copy, [256 x i128]* %B_cid_port3_copy, [256 x i128]* %B_val_port4_copy, [256 x i128]* %B_cid_port4_copy, [64 x i32]* %C_rcsr_copy, [1025 x i32]* %C_cid_copy, [1025 x float]* %C_val_copy, i32 %B_rcsr_base, i32 %B_val_base, i32 %B_cid_base, i32* %r1acc_copy, i32* %r1hit_copy, i32* %r2acc_copy, i32* %r2hit_copy, i32* %r3acc_copy, i32* %r3hit_copy, i32* %r4acc_copy, i32* %r4hit_copy, i32* %r5acc_copy, i32* %r5hit_copy, i32* %r6acc_copy, i32* %r6hit_copy, i32* %r7acc_copy, i32* %r7hit_copy, i32* %r8acc_copy, i32* %r8hit_copy, i32* %vc1acc_copy, i32* %vc1hit_copy, i32* %vc2acc_copy, i32* %vc2hit_copy, i32* %vc3acc_copy, i32* %vc3hit_copy, i32* %vc4acc_copy, i32* %vc4hit_copy, i32* %vc5acc_copy, i32* %vc5hit_copy, i32* %vc6acc_copy, i32* %vc6hit_copy, i32* %vc7acc_copy, i32* %vc7hit_copy, i32* %vc8acc_copy, i32* %vc8hit_copy, i32* %fnum_copy, i32* %workload_counter1_copy, i32* %workload_counter2_copy, i32* %workload_counter3_copy, i32* %workload_counter4_copy)
  call void @copy_back([64 x i32]* %0, [64 x i32]* %A_rcsr_copy, [1024 x i32]* %1, [1024 x i32]* %A_cid_copy, [1024 x float]* %3, [1024 x float]* %A_val_copy, [16 x %"struct.ap_uint<128>"]* %5, [16 x i128]* %B_rcsr1_copy, [16 x %"struct.ap_uint<128>"]* %6, [16 x i128]* %B_rcsr2_copy, [16 x %"struct.ap_uint<128>"]* %7, [16 x i128]* %B_rcsr3_copy, [16 x %"struct.ap_uint<128>"]* %8, [16 x i128]* %B_rcsr4_copy, [256 x %"struct.ap_uint<128>"]* %9, [256 x i128]* %B_val1_copy, [256 x %"struct.ap_uint<128>"]* %11, [256 x i128]* %B_cid1_copy, [256 x %"struct.ap_uint<128>"]* %13, [256 x i128]* %B_val2_copy, [256 x %"struct.ap_uint<128>"]* %15, [256 x i128]* %B_cid2_copy, [256 x %"struct.ap_uint<128>"]* %17, [256 x i128]* %B_val3_copy, [256 x %"struct.ap_uint<128>"]* %19, [256 x i128]* %B_cid3_copy, [256 x %"struct.ap_uint<128>"]* %21, [256 x i128]* %B_val4_copy, [256 x %"struct.ap_uint<128>"]* %23, [256 x i128]* %B_cid4_copy, [256 x %"struct.ap_uint<128>"]* %25, [256 x i128]* %B_val_port1_copy, [256 x %"struct.ap_uint<128>"]* %27, [256 x i128]* %B_cid_port1_copy, [256 x %"struct.ap_uint<128>"]* %29, [256 x i128]* %B_val_port2_copy, [256 x %"struct.ap_uint<128>"]* %31, [256 x i128]* %B_cid_port2_copy, [256 x %"struct.ap_uint<128>"]* %33, [256 x i128]* %B_val_port3_copy, [256 x %"struct.ap_uint<128>"]* %35, [256 x i128]* %B_cid_port3_copy, [256 x %"struct.ap_uint<128>"]* %37, [256 x i128]* %B_val_port4_copy, [256 x %"struct.ap_uint<128>"]* %39, [256 x i128]* %B_cid_port4_copy, [64 x i32]* %41, [64 x i32]* %C_rcsr_copy, [1025 x i32]* %42, [1025 x i32]* %C_cid_copy, [1025 x float]* %44, [1025 x float]* %C_val_copy, i32* %r1acc, i32* %r1acc_copy, i32* %r1hit, i32* %r1hit_copy, i32* %r2acc, i32* %r2acc_copy, i32* %r2hit, i32* %r2hit_copy, i32* %r3acc, i32* %r3acc_copy, i32* %r3hit, i32* %r3hit_copy, i32* %r4acc, i32* %r4acc_copy, i32* %r4hit, i32* %r4hit_copy, i32* %r5acc, i32* %r5acc_copy, i32* %r5hit, i32* %r5hit_copy, i32* %r6acc, i32* %r6acc_copy, i32* %r6hit, i32* %r6hit_copy, i32* %r7acc, i32* %r7acc_copy, i32* %r7hit, i32* %r7hit_copy, i32* %r8acc, i32* %r8acc_copy, i32* %r8hit, i32* %r8hit_copy, i32* %vc1acc, i32* %vc1acc_copy, i32* %vc1hit, i32* %vc1hit_copy, i32* %vc2acc, i32* %vc2acc_copy, i32* %vc2hit, i32* %vc2hit_copy, i32* %vc3acc, i32* %vc3acc_copy, i32* %vc3hit, i32* %vc3hit_copy, i32* %vc4acc, i32* %vc4acc_copy, i32* %vc4hit, i32* %vc4hit_copy, i32* %vc5acc, i32* %vc5acc_copy, i32* %vc5hit, i32* %vc5hit_copy, i32* %vc6acc, i32* %vc6acc_copy, i32* %vc6hit, i32* %vc6hit_copy, i32* %vc7acc, i32* %vc7acc_copy, i32* %vc7hit, i32* %vc7hit_copy, i32* %vc8acc, i32* %vc8acc_copy, i32* %vc8hit, i32* %vc8hit_copy, i32* %fnum, i32* %fnum_copy, i32* %workload_counter1, i32* %workload_counter1_copy, i32* %workload_counter2, i32* %workload_counter2_copy, i32* %workload_counter3, i32* %workload_counter3_copy, i32* %workload_counter4, i32* %workload_counter4_copy)
  tail call void @free(i8* %2)
  tail call void @free(i8* %4)
  call void @free(i8* %10)
  call void @free(i8* %12)
  call void @free(i8* %14)
  call void @free(i8* %16)
  call void @free(i8* %18)
  call void @free(i8* %20)
  call void @free(i8* %22)
  call void @free(i8* %24)
  call void @free(i8* %26)
  call void @free(i8* %28)
  call void @free(i8* %30)
  call void @free(i8* %32)
  call void @free(i8* %34)
  call void @free(i8* %36)
  call void @free(i8* %38)
  call void @free(i8* %40)
  tail call void @free(i8* %43)
  tail call void @free(i8* %45)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([64 x i32]* readonly "unpacked"="0", [64 x i32]* align 512 "unpacked"="1", [1024 x i32]* readonly "unpacked"="2", [1024 x i32]* "unpacked"="3", [1024 x float]* readonly "unpacked"="4", [1024 x float]* "unpacked"="5", [16 x %"struct.ap_uint<128>"]* readonly "unpacked"="6", [16 x i128]* noalias nocapture align 512 "unpacked"="7.0", [16 x %"struct.ap_uint<128>"]* readonly "unpacked"="8", [16 x i128]* noalias nocapture align 512 "unpacked"="9.0", [16 x %"struct.ap_uint<128>"]* readonly "unpacked"="10", [16 x i128]* noalias nocapture align 512 "unpacked"="11.0", [16 x %"struct.ap_uint<128>"]* readonly "unpacked"="12", [16 x i128]* noalias nocapture align 512 "unpacked"="13.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="14", [256 x i128]* nocapture "unpacked"="15.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="16", [256 x i128]* nocapture "unpacked"="17.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="18", [256 x i128]* nocapture "unpacked"="19.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="20", [256 x i128]* nocapture "unpacked"="21.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="22", [256 x i128]* nocapture "unpacked"="23.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="24", [256 x i128]* nocapture "unpacked"="25.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="26", [256 x i128]* nocapture "unpacked"="27.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="28", [256 x i128]* nocapture "unpacked"="29.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="30", [256 x i128]* nocapture "unpacked"="31.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="32", [256 x i128]* nocapture "unpacked"="33.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="34", [256 x i128]* nocapture "unpacked"="35.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="36", [256 x i128]* nocapture "unpacked"="37.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="38", [256 x i128]* nocapture "unpacked"="39.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="40", [256 x i128]* nocapture "unpacked"="41.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="42", [256 x i128]* nocapture "unpacked"="43.0", [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="44", [256 x i128]* nocapture "unpacked"="45.0", [64 x i32]* readonly "unpacked"="46", [64 x i32]* align 512 "unpacked"="47", [1025 x i32]* readonly "unpacked"="48", [1025 x i32]* "unpacked"="49", [1025 x float]* readonly "unpacked"="50", [1025 x float]* "unpacked"="51", i32* readonly "unpacked"="52", i32* align 512 "unpacked"="53", i32* readonly "unpacked"="54", i32* align 512 "unpacked"="55", i32* readonly "unpacked"="56", i32* align 512 "unpacked"="57", i32* readonly "unpacked"="58", i32* align 512 "unpacked"="59", i32* readonly "unpacked"="60", i32* align 512 "unpacked"="61", i32* readonly "unpacked"="62", i32* align 512 "unpacked"="63", i32* readonly "unpacked"="64", i32* align 512 "unpacked"="65", i32* readonly "unpacked"="66", i32* align 512 "unpacked"="67", i32* readonly "unpacked"="68", i32* align 512 "unpacked"="69", i32* readonly "unpacked"="70", i32* align 512 "unpacked"="71", i32* readonly "unpacked"="72", i32* align 512 "unpacked"="73", i32* readonly "unpacked"="74", i32* align 512 "unpacked"="75", i32* readonly "unpacked"="76", i32* align 512 "unpacked"="77", i32* readonly "unpacked"="78", i32* align 512 "unpacked"="79", i32* readonly "unpacked"="80", i32* align 512 "unpacked"="81", i32* readonly "unpacked"="82", i32* align 512 "unpacked"="83", i32* readonly "unpacked"="84", i32* align 512 "unpacked"="85", i32* readonly "unpacked"="86", i32* align 512 "unpacked"="87", i32* readonly "unpacked"="88", i32* align 512 "unpacked"="89", i32* readonly "unpacked"="90", i32* align 512 "unpacked"="91", i32* readonly "unpacked"="92", i32* align 512 "unpacked"="93", i32* readonly "unpacked"="94", i32* align 512 "unpacked"="95", i32* readonly "unpacked"="96", i32* align 512 "unpacked"="97", i32* readonly "unpacked"="98", i32* align 512 "unpacked"="99", i32* readonly "unpacked"="100", i32* align 512 "unpacked"="101", i32* readonly "unpacked"="102", i32* align 512 "unpacked"="103", i32* readonly "unpacked"="104", i32* align 512 "unpacked"="105", i32* readonly "unpacked"="106", i32* align 512 "unpacked"="107", i32* readonly "unpacked"="108", i32* align 512 "unpacked"="109", i32* readonly "unpacked"="110", i32* align 512 "unpacked"="111", i32* readonly "unpacked"="112", i32* align 512 "unpacked"="113", i32* readonly "unpacked"="114", i32* align 512 "unpacked"="115", i32* readonly "unpacked"="116", i32* align 512 "unpacked"="117", i32* readonly "unpacked"="118", i32* align 512 "unpacked"="119", i32* readonly "unpacked"="120", i32* align 512 "unpacked"="121", i32* readonly "unpacked"="122", i32* align 512 "unpacked"="123", i32* readonly "unpacked"="124", i32* align 512 "unpacked"="125") unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* align 512 %1, [64 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %3, [1024 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %5, [1024 x float]* %4)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<128>.261"([16 x i128]* align 512 %7, [16 x %"struct.ap_uint<128>"]* %6)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<128>.261"([16 x i128]* align 512 %9, [16 x %"struct.ap_uint<128>"]* %8)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<128>.261"([16 x i128]* align 512 %11, [16 x %"struct.ap_uint<128>"]* %10)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<128>.261"([16 x i128]* align 512 %13, [16 x %"struct.ap_uint<128>"]* %12)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %15, [256 x %"struct.ap_uint<128>"]* %14)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %17, [256 x %"struct.ap_uint<128>"]* %16)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %19, [256 x %"struct.ap_uint<128>"]* %18)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %21, [256 x %"struct.ap_uint<128>"]* %20)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %23, [256 x %"struct.ap_uint<128>"]* %22)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %25, [256 x %"struct.ap_uint<128>"]* %24)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %27, [256 x %"struct.ap_uint<128>"]* %26)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %29, [256 x %"struct.ap_uint<128>"]* %28)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %31, [256 x %"struct.ap_uint<128>"]* %30)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %33, [256 x %"struct.ap_uint<128>"]* %32)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %35, [256 x %"struct.ap_uint<128>"]* %34)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %37, [256 x %"struct.ap_uint<128>"]* %36)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %39, [256 x %"struct.ap_uint<128>"]* %38)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %41, [256 x %"struct.ap_uint<128>"]* %40)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %43, [256 x %"struct.ap_uint<128>"]* %42)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* %45, [256 x %"struct.ap_uint<128>"]* %44)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* align 512 %47, [64 x i32]* %46)
  call fastcc void @onebyonecpy_hls.p0a1025i32([1025 x i32]* %49, [1025 x i32]* %48)
  call fastcc void @onebyonecpy_hls.p0a1025f32([1025 x float]* %51, [1025 x float]* %50)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %53, i32* %52)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %55, i32* %54)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %57, i32* %56)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %59, i32* %58)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %61, i32* %60)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %63, i32* %62)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %65, i32* %64)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %67, i32* %66)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %69, i32* %68)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %71, i32* %70)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %73, i32* %72)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %75, i32* %74)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %77, i32* %76)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %79, i32* %78)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %81, i32* %80)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %83, i32* %82)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %85, i32* %84)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %87, i32* %86)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %89, i32* %88)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %91, i32* %90)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %93, i32* %92)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %95, i32* %94)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %97, i32* %96)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %99, i32* %98)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %101, i32* %100)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %103, i32* %102)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %105, i32* %104)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %107, i32* %106)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %109, i32* %108)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %111, i32* %110)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %113, i32* %112)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %115, i32* %114)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %117, i32* %116)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %119, i32* %118)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %121, i32* %120)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %123, i32* %122)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %125, i32* %124)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* align 512 %dst, [64 x i32]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [64 x i32]* %dst, null
  %1 = icmp eq [64 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a64i32([64 x i32]* nonnull %dst, [64 x i32]* nonnull %src, i64 64)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a64i32([64 x i32]* %dst, [64 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [64 x i32]* %src, null
  %1 = icmp eq [64 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [64 x i32], [64 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [64 x i32], [64 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %dst, [1024 x i32]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1024 x i32]* %dst, null
  %1 = icmp eq [1024 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1024i32([1024 x i32]* nonnull %dst, [1024 x i32]* nonnull %src, i64 1024)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1024i32([1024 x i32]* %dst, [1024 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1024 x i32]* %src, null
  %1 = icmp eq [1024 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1024 x i32], [1024 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1024 x i32], [1024 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %dst, [1024 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1024 x float]* %dst, null
  %1 = icmp eq [1024 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1024f32([1024 x float]* nonnull %dst, [1024 x float]* nonnull %src, i64 1024)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1024f32([1024 x float]* %dst, [1024 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1024 x float]* %src, null
  %1 = icmp eq [1024 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1024 x float], [1024 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1024 x float], [1024 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a16struct.ap_uint<128>"([16 x %"struct.ap_uint<128>"]* %dst, [16 x %"struct.ap_uint<128>"]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x %"struct.ap_uint<128>"]* %src, null
  %1 = icmp eq [16 x %"struct.ap_uint<128>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [16 x %"struct.ap_uint<128>"], [16 x %"struct.ap_uint<128>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [16 x %"struct.ap_uint<128>"], [16 x %"struct.ap_uint<128>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %3, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %dst, [256 x %"struct.ap_uint<128>"]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x %"struct.ap_uint<128>"]* %src, null
  %1 = icmp eq [256 x %"struct.ap_uint<128>"]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond7 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond7, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx8 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [256 x %"struct.ap_uint<128>"], [256 x %"struct.ap_uint<128>"]* %src, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [256 x %"struct.ap_uint<128>"], [256 x %"struct.ap_uint<128>"]* %dst, i64 0, i64 %for.loop.idx8, i32 0, i32 0, i32 0
  %3 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %3, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx8, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1025i32([1025 x i32]* %dst, [1025 x i32]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1025 x i32]* %dst, null
  %1 = icmp eq [1025 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1025i32([1025 x i32]* nonnull %dst, [1025 x i32]* nonnull %src, i64 1025)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1025i32([1025 x i32]* %dst, [1025 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1025 x i32]* %src, null
  %1 = icmp eq [1025 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1025 x i32], [1025 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1025 x i32], [1025 x i32]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i32, i32* %src.addr, align 4
  store i32 %3, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a1025f32([1025 x float]* %dst, [1025 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1025 x float]* %dst, null
  %1 = icmp eq [1025 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1025f32([1025 x float]* nonnull %dst, [1025 x float]* nonnull %src, i64 1025)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a1025f32([1025 x float]* %dst, [1025 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1025 x float]* %src, null
  %1 = icmp eq [1025 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1025 x float], [1025 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1025 x float], [1025 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %dst, i32* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i32, i32* %src, align 4
  store i32 %3, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([64 x i32]* "unpacked"="0", [64 x i32]* readonly align 512 "unpacked"="1", [1024 x i32]* "unpacked"="2", [1024 x i32]* readonly "unpacked"="3", [1024 x float]* "unpacked"="4", [1024 x float]* readonly "unpacked"="5", [16 x %"struct.ap_uint<128>"]* "unpacked"="6", [16 x i128]* noalias nocapture readonly align 512 "unpacked"="7.0", [16 x %"struct.ap_uint<128>"]* "unpacked"="8", [16 x i128]* noalias nocapture readonly align 512 "unpacked"="9.0", [16 x %"struct.ap_uint<128>"]* "unpacked"="10", [16 x i128]* noalias nocapture readonly align 512 "unpacked"="11.0", [16 x %"struct.ap_uint<128>"]* "unpacked"="12", [16 x i128]* noalias nocapture readonly align 512 "unpacked"="13.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="14", [256 x i128]* nocapture readonly "unpacked"="15.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="16", [256 x i128]* nocapture readonly "unpacked"="17.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="18", [256 x i128]* nocapture readonly "unpacked"="19.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="20", [256 x i128]* nocapture readonly "unpacked"="21.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="22", [256 x i128]* nocapture readonly "unpacked"="23.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="24", [256 x i128]* nocapture readonly "unpacked"="25.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="26", [256 x i128]* nocapture readonly "unpacked"="27.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="28", [256 x i128]* nocapture readonly "unpacked"="29.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="30", [256 x i128]* nocapture readonly "unpacked"="31.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="32", [256 x i128]* nocapture readonly "unpacked"="33.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="34", [256 x i128]* nocapture readonly "unpacked"="35.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="36", [256 x i128]* nocapture readonly "unpacked"="37.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="38", [256 x i128]* nocapture readonly "unpacked"="39.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="40", [256 x i128]* nocapture readonly "unpacked"="41.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="42", [256 x i128]* nocapture readonly "unpacked"="43.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="44", [256 x i128]* nocapture readonly "unpacked"="45.0", [64 x i32]* "unpacked"="46", [64 x i32]* readonly align 512 "unpacked"="47", [1025 x i32]* "unpacked"="48", [1025 x i32]* readonly "unpacked"="49", [1025 x float]* "unpacked"="50", [1025 x float]* readonly "unpacked"="51", i32* "unpacked"="52", i32* readonly align 512 "unpacked"="53", i32* "unpacked"="54", i32* readonly align 512 "unpacked"="55", i32* "unpacked"="56", i32* readonly align 512 "unpacked"="57", i32* "unpacked"="58", i32* readonly align 512 "unpacked"="59", i32* "unpacked"="60", i32* readonly align 512 "unpacked"="61", i32* "unpacked"="62", i32* readonly align 512 "unpacked"="63", i32* "unpacked"="64", i32* readonly align 512 "unpacked"="65", i32* "unpacked"="66", i32* readonly align 512 "unpacked"="67", i32* "unpacked"="68", i32* readonly align 512 "unpacked"="69", i32* "unpacked"="70", i32* readonly align 512 "unpacked"="71", i32* "unpacked"="72", i32* readonly align 512 "unpacked"="73", i32* "unpacked"="74", i32* readonly align 512 "unpacked"="75", i32* "unpacked"="76", i32* readonly align 512 "unpacked"="77", i32* "unpacked"="78", i32* readonly align 512 "unpacked"="79", i32* "unpacked"="80", i32* readonly align 512 "unpacked"="81", i32* "unpacked"="82", i32* readonly align 512 "unpacked"="83", i32* "unpacked"="84", i32* readonly align 512 "unpacked"="85", i32* "unpacked"="86", i32* readonly align 512 "unpacked"="87", i32* "unpacked"="88", i32* readonly align 512 "unpacked"="89", i32* "unpacked"="90", i32* readonly align 512 "unpacked"="91", i32* "unpacked"="92", i32* readonly align 512 "unpacked"="93", i32* "unpacked"="94", i32* readonly align 512 "unpacked"="95", i32* "unpacked"="96", i32* readonly align 512 "unpacked"="97", i32* "unpacked"="98", i32* readonly align 512 "unpacked"="99", i32* "unpacked"="100", i32* readonly align 512 "unpacked"="101", i32* "unpacked"="102", i32* readonly align 512 "unpacked"="103", i32* "unpacked"="104", i32* readonly align 512 "unpacked"="105", i32* "unpacked"="106", i32* readonly align 512 "unpacked"="107", i32* "unpacked"="108", i32* readonly align 512 "unpacked"="109", i32* "unpacked"="110", i32* readonly align 512 "unpacked"="111", i32* "unpacked"="112", i32* readonly align 512 "unpacked"="113", i32* "unpacked"="114", i32* readonly align 512 "unpacked"="115", i32* "unpacked"="116", i32* readonly align 512 "unpacked"="117", i32* "unpacked"="118", i32* readonly align 512 "unpacked"="119", i32* "unpacked"="120", i32* readonly align 512 "unpacked"="121", i32* "unpacked"="122", i32* readonly align 512 "unpacked"="123", i32* "unpacked"="124", i32* readonly align 512 "unpacked"="125") unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* %0, [64 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %2, [1024 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %4, [1024 x float]* %5)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<128>"([16 x %"struct.ap_uint<128>"]* %6, [16 x i128]* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<128>"([16 x %"struct.ap_uint<128>"]* %8, [16 x i128]* align 512 %9)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<128>"([16 x %"struct.ap_uint<128>"]* %10, [16 x i128]* align 512 %11)
  call fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<128>"([16 x %"struct.ap_uint<128>"]* %12, [16 x i128]* align 512 %13)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %14, [256 x i128]* %15)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %16, [256 x i128]* %17)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %18, [256 x i128]* %19)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %20, [256 x i128]* %21)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %22, [256 x i128]* %23)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %24, [256 x i128]* %25)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %26, [256 x i128]* %27)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %28, [256 x i128]* %29)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %30, [256 x i128]* %31)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %32, [256 x i128]* %33)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %34, [256 x i128]* %35)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %36, [256 x i128]* %37)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %38, [256 x i128]* %39)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %40, [256 x i128]* %41)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %42, [256 x i128]* %43)
  call fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* %44, [256 x i128]* %45)
  call fastcc void @onebyonecpy_hls.p0a64i32([64 x i32]* %46, [64 x i32]* align 512 %47)
  call fastcc void @onebyonecpy_hls.p0a1025i32([1025 x i32]* %48, [1025 x i32]* %49)
  call fastcc void @onebyonecpy_hls.p0a1025f32([1025 x float]* %50, [1025 x float]* %51)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %52, i32* align 512 %53)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %54, i32* align 512 %55)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %56, i32* align 512 %57)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %58, i32* align 512 %59)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %60, i32* align 512 %61)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %62, i32* align 512 %63)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %64, i32* align 512 %65)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %66, i32* align 512 %67)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %68, i32* align 512 %69)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %70, i32* align 512 %71)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %72, i32* align 512 %73)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %74, i32* align 512 %75)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %76, i32* align 512 %77)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %78, i32* align 512 %79)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %80, i32* align 512 %81)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %82, i32* align 512 %83)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %84, i32* align 512 %85)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %86, i32* align 512 %87)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %88, i32* align 512 %89)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %90, i32* align 512 %91)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %92, i32* align 512 %93)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %94, i32* align 512 %95)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %96, i32* align 512 %97)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %98, i32* align 512 %99)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %100, i32* align 512 %101)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %102, i32* align 512 %103)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %104, i32* align 512 %105)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %106, i32* align 512 %107)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %108, i32* align 512 %109)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %110, i32* align 512 %111)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %112, i32* align 512 %113)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %114, i32* align 512 %115)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %116, i32* align 512 %117)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %118, i32* align 512 %119)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %120, i32* align 512 %121)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %122, i32* align 512 %123)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %124, i32* align 512 %125)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>"([256 x %"struct.ap_uint<128>"]* "unpacked"="0" %dst, [256 x i128]* nocapture readonly "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [256 x %"struct.ap_uint<128>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a256struct.ap_uint<128>.180"([256 x %"struct.ap_uint<128>"]* nonnull %dst, [256 x i128]* %src, i64 256)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a256struct.ap_uint<128>.180"([256 x %"struct.ap_uint<128>"]* "unpacked"="0" %dst, [256 x i128]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x %"struct.ap_uint<128>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [256 x i128], [256 x i128]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [256 x %"struct.ap_uint<128>"], [256 x %"struct.ap_uint<128>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %1, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a256struct.ap_uint<128>.184"([256 x i128]* nocapture "unpacked"="0.0" %dst, [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [256 x %"struct.ap_uint<128>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a256struct.ap_uint<128>.187"([256 x i128]* %dst, [256 x %"struct.ap_uint<128>"]* nonnull %src, i64 256)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a256struct.ap_uint<128>.187"([256 x i128]* nocapture "unpacked"="0.0" %dst, [256 x %"struct.ap_uint<128>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [256 x %"struct.ap_uint<128>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [256 x %"struct.ap_uint<128>"], [256 x %"struct.ap_uint<128>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [256 x i128], [256 x i128]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %1, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<128>"([16 x %"struct.ap_uint<128>"]* noalias "unpacked"="0" %dst, [16 x i128]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [16 x %"struct.ap_uint<128>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a16struct.ap_uint<128>.257"([16 x %"struct.ap_uint<128>"]* nonnull %dst, [16 x i128]* %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a16struct.ap_uint<128>.257"([16 x %"struct.ap_uint<128>"]* "unpacked"="0" %dst, [16 x i128]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x %"struct.ap_uint<128>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [16 x i128], [16 x i128]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [16 x %"struct.ap_uint<128>"], [16 x %"struct.ap_uint<128>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %1, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a16struct.ap_uint<128>.261"([16 x i128]* noalias nocapture align 512 "unpacked"="0.0" %dst, [16 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [16 x %"struct.ap_uint<128>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a16struct.ap_uint<128>.264"([16 x i128]* %dst, [16 x %"struct.ap_uint<128>"]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a16struct.ap_uint<128>.264"([16 x i128]* nocapture "unpacked"="0.0" %dst, [16 x %"struct.ap_uint<128>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x %"struct.ap_uint<128>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [16 x %"struct.ap_uint<128>"], [16 x %"struct.ap_uint<128>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [16 x i128], [16 x i128]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %1, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare void @apatb_spmm_hw([64 x i32]*, [1024 x i32]*, [1024 x float]*, i32, i32, [16 x i128]*, [16 x i128]*, [16 x i128]*, [16 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, i32, i32, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [64 x i32]*, [1025 x i32]*, [1025 x float]*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([64 x i32]* "unpacked"="0", [64 x i32]* readonly align 512 "unpacked"="1", [1024 x i32]* "unpacked"="2", [1024 x i32]* readonly "unpacked"="3", [1024 x float]* "unpacked"="4", [1024 x float]* readonly "unpacked"="5", [16 x %"struct.ap_uint<128>"]* "unpacked"="6", [16 x i128]* noalias nocapture readonly align 512 "unpacked"="7.0", [16 x %"struct.ap_uint<128>"]* "unpacked"="8", [16 x i128]* noalias nocapture readonly align 512 "unpacked"="9.0", [16 x %"struct.ap_uint<128>"]* "unpacked"="10", [16 x i128]* noalias nocapture readonly align 512 "unpacked"="11.0", [16 x %"struct.ap_uint<128>"]* "unpacked"="12", [16 x i128]* noalias nocapture readonly align 512 "unpacked"="13.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="14", [256 x i128]* nocapture readonly "unpacked"="15.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="16", [256 x i128]* nocapture readonly "unpacked"="17.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="18", [256 x i128]* nocapture readonly "unpacked"="19.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="20", [256 x i128]* nocapture readonly "unpacked"="21.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="22", [256 x i128]* nocapture readonly "unpacked"="23.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="24", [256 x i128]* nocapture readonly "unpacked"="25.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="26", [256 x i128]* nocapture readonly "unpacked"="27.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="28", [256 x i128]* nocapture readonly "unpacked"="29.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="30", [256 x i128]* nocapture readonly "unpacked"="31.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="32", [256 x i128]* nocapture readonly "unpacked"="33.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="34", [256 x i128]* nocapture readonly "unpacked"="35.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="36", [256 x i128]* nocapture readonly "unpacked"="37.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="38", [256 x i128]* nocapture readonly "unpacked"="39.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="40", [256 x i128]* nocapture readonly "unpacked"="41.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="42", [256 x i128]* nocapture readonly "unpacked"="43.0", [256 x %"struct.ap_uint<128>"]* "unpacked"="44", [256 x i128]* nocapture readonly "unpacked"="45.0", [64 x i32]* "unpacked"="46", [64 x i32]* readonly align 512 "unpacked"="47", [1025 x i32]* "unpacked"="48", [1025 x i32]* readonly "unpacked"="49", [1025 x float]* "unpacked"="50", [1025 x float]* readonly "unpacked"="51", i32* "unpacked"="52", i32* readonly align 512 "unpacked"="53", i32* "unpacked"="54", i32* readonly align 512 "unpacked"="55", i32* "unpacked"="56", i32* readonly align 512 "unpacked"="57", i32* "unpacked"="58", i32* readonly align 512 "unpacked"="59", i32* "unpacked"="60", i32* readonly align 512 "unpacked"="61", i32* "unpacked"="62", i32* readonly align 512 "unpacked"="63", i32* "unpacked"="64", i32* readonly align 512 "unpacked"="65", i32* "unpacked"="66", i32* readonly align 512 "unpacked"="67", i32* "unpacked"="68", i32* readonly align 512 "unpacked"="69", i32* "unpacked"="70", i32* readonly align 512 "unpacked"="71", i32* "unpacked"="72", i32* readonly align 512 "unpacked"="73", i32* "unpacked"="74", i32* readonly align 512 "unpacked"="75", i32* "unpacked"="76", i32* readonly align 512 "unpacked"="77", i32* "unpacked"="78", i32* readonly align 512 "unpacked"="79", i32* "unpacked"="80", i32* readonly align 512 "unpacked"="81", i32* "unpacked"="82", i32* readonly align 512 "unpacked"="83", i32* "unpacked"="84", i32* readonly align 512 "unpacked"="85", i32* "unpacked"="86", i32* readonly align 512 "unpacked"="87", i32* "unpacked"="88", i32* readonly align 512 "unpacked"="89", i32* "unpacked"="90", i32* readonly align 512 "unpacked"="91", i32* "unpacked"="92", i32* readonly align 512 "unpacked"="93", i32* "unpacked"="94", i32* readonly align 512 "unpacked"="95", i32* "unpacked"="96", i32* readonly align 512 "unpacked"="97", i32* "unpacked"="98", i32* readonly align 512 "unpacked"="99", i32* "unpacked"="100", i32* readonly align 512 "unpacked"="101", i32* "unpacked"="102", i32* readonly align 512 "unpacked"="103", i32* "unpacked"="104", i32* readonly align 512 "unpacked"="105", i32* "unpacked"="106", i32* readonly align 512 "unpacked"="107", i32* "unpacked"="108", i32* readonly align 512 "unpacked"="109", i32* "unpacked"="110", i32* readonly align 512 "unpacked"="111", i32* "unpacked"="112", i32* readonly align 512 "unpacked"="113", i32* "unpacked"="114", i32* readonly align 512 "unpacked"="115", i32* "unpacked"="116", i32* readonly align 512 "unpacked"="117", i32* "unpacked"="118", i32* readonly align 512 "unpacked"="119", i32* "unpacked"="120", i32* readonly align 512 "unpacked"="121", i32* "unpacked"="122", i32* readonly align 512 "unpacked"="123", i32* "unpacked"="124", i32* readonly align 512 "unpacked"="125") unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1025f32([1025 x float]* %50, [1025 x float]* %51)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %52, i32* align 512 %53)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %54, i32* align 512 %55)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %56, i32* align 512 %57)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %58, i32* align 512 %59)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %60, i32* align 512 %61)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %62, i32* align 512 %63)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %64, i32* align 512 %65)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %66, i32* align 512 %67)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %84, i32* align 512 %85)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %86, i32* align 512 %87)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %88, i32* align 512 %89)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %90, i32* align 512 %91)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %92, i32* align 512 %93)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %94, i32* align 512 %95)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %96, i32* align 512 %97)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %98, i32* align 512 %99)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %116, i32* align 512 %117)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %118, i32* align 512 %119)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %120, i32* align 512 %121)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %122, i32* align 512 %123)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %124, i32* align 512 %125)
  ret void
}

declare void @spmm_hw_stub(i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, i32, i32, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, i32, i32, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, float* noalias nocapture nonnull, i32, i32, i32, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull)

define void @spmm_hw_stub_wrapper([64 x i32]*, [1024 x i32]*, [1024 x float]*, i32, i32, [16 x i128]*, [16 x i128]*, [16 x i128]*, [16 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, i32, i32, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [256 x i128]*, [64 x i32]*, [1025 x i32]*, [1025 x float]*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #5 {
entry:
  %70 = call i8* @malloc(i64 256)
  %71 = bitcast i8* %70 to [16 x %"struct.ap_uint<128>"]*
  %72 = call i8* @malloc(i64 256)
  %73 = bitcast i8* %72 to [16 x %"struct.ap_uint<128>"]*
  %74 = call i8* @malloc(i64 256)
  %75 = bitcast i8* %74 to [16 x %"struct.ap_uint<128>"]*
  %76 = call i8* @malloc(i64 256)
  %77 = bitcast i8* %76 to [16 x %"struct.ap_uint<128>"]*
  %78 = call i8* @malloc(i64 4096)
  %79 = bitcast i8* %78 to [256 x %"struct.ap_uint<128>"]*
  %80 = call i8* @malloc(i64 4096)
  %81 = bitcast i8* %80 to [256 x %"struct.ap_uint<128>"]*
  %82 = call i8* @malloc(i64 4096)
  %83 = bitcast i8* %82 to [256 x %"struct.ap_uint<128>"]*
  %84 = call i8* @malloc(i64 4096)
  %85 = bitcast i8* %84 to [256 x %"struct.ap_uint<128>"]*
  %86 = call i8* @malloc(i64 4096)
  %87 = bitcast i8* %86 to [256 x %"struct.ap_uint<128>"]*
  %88 = call i8* @malloc(i64 4096)
  %89 = bitcast i8* %88 to [256 x %"struct.ap_uint<128>"]*
  %90 = call i8* @malloc(i64 4096)
  %91 = bitcast i8* %90 to [256 x %"struct.ap_uint<128>"]*
  %92 = call i8* @malloc(i64 4096)
  %93 = bitcast i8* %92 to [256 x %"struct.ap_uint<128>"]*
  %94 = call i8* @malloc(i64 4096)
  %95 = bitcast i8* %94 to [256 x %"struct.ap_uint<128>"]*
  %96 = call i8* @malloc(i64 4096)
  %97 = bitcast i8* %96 to [256 x %"struct.ap_uint<128>"]*
  %98 = call i8* @malloc(i64 4096)
  %99 = bitcast i8* %98 to [256 x %"struct.ap_uint<128>"]*
  %100 = call i8* @malloc(i64 4096)
  %101 = bitcast i8* %100 to [256 x %"struct.ap_uint<128>"]*
  %102 = call i8* @malloc(i64 4096)
  %103 = bitcast i8* %102 to [256 x %"struct.ap_uint<128>"]*
  %104 = call i8* @malloc(i64 4096)
  %105 = bitcast i8* %104 to [256 x %"struct.ap_uint<128>"]*
  %106 = call i8* @malloc(i64 4096)
  %107 = bitcast i8* %106 to [256 x %"struct.ap_uint<128>"]*
  %108 = call i8* @malloc(i64 4096)
  %109 = bitcast i8* %108 to [256 x %"struct.ap_uint<128>"]*
  call void @copy_out([64 x i32]* null, [64 x i32]* %0, [1024 x i32]* null, [1024 x i32]* %1, [1024 x float]* null, [1024 x float]* %2, [16 x %"struct.ap_uint<128>"]* %71, [16 x i128]* %5, [16 x %"struct.ap_uint<128>"]* %73, [16 x i128]* %6, [16 x %"struct.ap_uint<128>"]* %75, [16 x i128]* %7, [16 x %"struct.ap_uint<128>"]* %77, [16 x i128]* %8, [256 x %"struct.ap_uint<128>"]* %79, [256 x i128]* %9, [256 x %"struct.ap_uint<128>"]* %81, [256 x i128]* %10, [256 x %"struct.ap_uint<128>"]* %83, [256 x i128]* %11, [256 x %"struct.ap_uint<128>"]* %85, [256 x i128]* %12, [256 x %"struct.ap_uint<128>"]* %87, [256 x i128]* %13, [256 x %"struct.ap_uint<128>"]* %89, [256 x i128]* %14, [256 x %"struct.ap_uint<128>"]* %91, [256 x i128]* %15, [256 x %"struct.ap_uint<128>"]* %93, [256 x i128]* %16, [256 x %"struct.ap_uint<128>"]* %95, [256 x i128]* %19, [256 x %"struct.ap_uint<128>"]* %97, [256 x i128]* %20, [256 x %"struct.ap_uint<128>"]* %99, [256 x i128]* %21, [256 x %"struct.ap_uint<128>"]* %101, [256 x i128]* %22, [256 x %"struct.ap_uint<128>"]* %103, [256 x i128]* %23, [256 x %"struct.ap_uint<128>"]* %105, [256 x i128]* %24, [256 x %"struct.ap_uint<128>"]* %107, [256 x i128]* %25, [256 x %"struct.ap_uint<128>"]* %109, [256 x i128]* %26, [64 x i32]* null, [64 x i32]* %27, [1025 x i32]* null, [1025 x i32]* %28, [1025 x float]* null, [1025 x float]* %29, i32* null, i32* %33, i32* null, i32* %34, i32* null, i32* %35, i32* null, i32* %36, i32* null, i32* %37, i32* null, i32* %38, i32* null, i32* %39, i32* null, i32* %40, i32* null, i32* %41, i32* null, i32* %42, i32* null, i32* %43, i32* null, i32* %44, i32* null, i32* %45, i32* null, i32* %46, i32* null, i32* %47, i32* null, i32* %48, i32* null, i32* %49, i32* null, i32* %50, i32* null, i32* %51, i32* null, i32* %52, i32* null, i32* %53, i32* null, i32* %54, i32* null, i32* %55, i32* null, i32* %56, i32* null, i32* %57, i32* null, i32* %58, i32* null, i32* %59, i32* null, i32* %60, i32* null, i32* %61, i32* null, i32* %62, i32* null, i32* %63, i32* null, i32* %64, i32* null, i32* %65, i32* null, i32* %66, i32* null, i32* %67, i32* null, i32* %68, i32* null, i32* %69)
  %110 = bitcast [64 x i32]* %0 to i32*
  %111 = bitcast [1024 x i32]* %1 to i32*
  %112 = bitcast [1024 x float]* %2 to float*
  %113 = bitcast [16 x %"struct.ap_uint<128>"]* %71 to %"struct.ap_uint<128>"*
  %114 = bitcast [16 x %"struct.ap_uint<128>"]* %73 to %"struct.ap_uint<128>"*
  %115 = bitcast [16 x %"struct.ap_uint<128>"]* %75 to %"struct.ap_uint<128>"*
  %116 = bitcast [16 x %"struct.ap_uint<128>"]* %77 to %"struct.ap_uint<128>"*
  %117 = bitcast [256 x %"struct.ap_uint<128>"]* %79 to %"struct.ap_uint<128>"*
  %118 = bitcast [256 x %"struct.ap_uint<128>"]* %81 to %"struct.ap_uint<128>"*
  %119 = bitcast [256 x %"struct.ap_uint<128>"]* %83 to %"struct.ap_uint<128>"*
  %120 = bitcast [256 x %"struct.ap_uint<128>"]* %85 to %"struct.ap_uint<128>"*
  %121 = bitcast [256 x %"struct.ap_uint<128>"]* %87 to %"struct.ap_uint<128>"*
  %122 = bitcast [256 x %"struct.ap_uint<128>"]* %89 to %"struct.ap_uint<128>"*
  %123 = bitcast [256 x %"struct.ap_uint<128>"]* %91 to %"struct.ap_uint<128>"*
  %124 = bitcast [256 x %"struct.ap_uint<128>"]* %93 to %"struct.ap_uint<128>"*
  %125 = bitcast [256 x %"struct.ap_uint<128>"]* %95 to %"struct.ap_uint<128>"*
  %126 = bitcast [256 x %"struct.ap_uint<128>"]* %97 to %"struct.ap_uint<128>"*
  %127 = bitcast [256 x %"struct.ap_uint<128>"]* %99 to %"struct.ap_uint<128>"*
  %128 = bitcast [256 x %"struct.ap_uint<128>"]* %101 to %"struct.ap_uint<128>"*
  %129 = bitcast [256 x %"struct.ap_uint<128>"]* %103 to %"struct.ap_uint<128>"*
  %130 = bitcast [256 x %"struct.ap_uint<128>"]* %105 to %"struct.ap_uint<128>"*
  %131 = bitcast [256 x %"struct.ap_uint<128>"]* %107 to %"struct.ap_uint<128>"*
  %132 = bitcast [256 x %"struct.ap_uint<128>"]* %109 to %"struct.ap_uint<128>"*
  %133 = bitcast [64 x i32]* %27 to i32*
  %134 = bitcast [1025 x i32]* %28 to i32*
  %135 = bitcast [1025 x float]* %29 to float*
  call void @spmm_hw_stub(i32* %110, i32* %111, float* %112, i32 %3, i32 %4, %"struct.ap_uint<128>"* %113, %"struct.ap_uint<128>"* %114, %"struct.ap_uint<128>"* %115, %"struct.ap_uint<128>"* %116, %"struct.ap_uint<128>"* %117, %"struct.ap_uint<128>"* %118, %"struct.ap_uint<128>"* %119, %"struct.ap_uint<128>"* %120, %"struct.ap_uint<128>"* %121, %"struct.ap_uint<128>"* %122, %"struct.ap_uint<128>"* %123, %"struct.ap_uint<128>"* %124, i32 %17, i32 %18, %"struct.ap_uint<128>"* %125, %"struct.ap_uint<128>"* %126, %"struct.ap_uint<128>"* %127, %"struct.ap_uint<128>"* %128, %"struct.ap_uint<128>"* %129, %"struct.ap_uint<128>"* %130, %"struct.ap_uint<128>"* %131, %"struct.ap_uint<128>"* %132, i32* %133, i32* %134, float* %135, i32 %30, i32 %31, i32 %32, i32* %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45, i32* %46, i32* %47, i32* %48, i32* %49, i32* %50, i32* %51, i32* %52, i32* %53, i32* %54, i32* %55, i32* %56, i32* %57, i32* %58, i32* %59, i32* %60, i32* %61, i32* %62, i32* %63, i32* %64, i32* %65, i32* %66, i32* %67, i32* %68, i32* %69)
  call void @copy_in([64 x i32]* null, [64 x i32]* %0, [1024 x i32]* null, [1024 x i32]* %1, [1024 x float]* null, [1024 x float]* %2, [16 x %"struct.ap_uint<128>"]* %71, [16 x i128]* %5, [16 x %"struct.ap_uint<128>"]* %73, [16 x i128]* %6, [16 x %"struct.ap_uint<128>"]* %75, [16 x i128]* %7, [16 x %"struct.ap_uint<128>"]* %77, [16 x i128]* %8, [256 x %"struct.ap_uint<128>"]* %79, [256 x i128]* %9, [256 x %"struct.ap_uint<128>"]* %81, [256 x i128]* %10, [256 x %"struct.ap_uint<128>"]* %83, [256 x i128]* %11, [256 x %"struct.ap_uint<128>"]* %85, [256 x i128]* %12, [256 x %"struct.ap_uint<128>"]* %87, [256 x i128]* %13, [256 x %"struct.ap_uint<128>"]* %89, [256 x i128]* %14, [256 x %"struct.ap_uint<128>"]* %91, [256 x i128]* %15, [256 x %"struct.ap_uint<128>"]* %93, [256 x i128]* %16, [256 x %"struct.ap_uint<128>"]* %95, [256 x i128]* %19, [256 x %"struct.ap_uint<128>"]* %97, [256 x i128]* %20, [256 x %"struct.ap_uint<128>"]* %99, [256 x i128]* %21, [256 x %"struct.ap_uint<128>"]* %101, [256 x i128]* %22, [256 x %"struct.ap_uint<128>"]* %103, [256 x i128]* %23, [256 x %"struct.ap_uint<128>"]* %105, [256 x i128]* %24, [256 x %"struct.ap_uint<128>"]* %107, [256 x i128]* %25, [256 x %"struct.ap_uint<128>"]* %109, [256 x i128]* %26, [64 x i32]* null, [64 x i32]* %27, [1025 x i32]* null, [1025 x i32]* %28, [1025 x float]* null, [1025 x float]* %29, i32* null, i32* %33, i32* null, i32* %34, i32* null, i32* %35, i32* null, i32* %36, i32* null, i32* %37, i32* null, i32* %38, i32* null, i32* %39, i32* null, i32* %40, i32* null, i32* %41, i32* null, i32* %42, i32* null, i32* %43, i32* null, i32* %44, i32* null, i32* %45, i32* null, i32* %46, i32* null, i32* %47, i32* null, i32* %48, i32* null, i32* %49, i32* null, i32* %50, i32* null, i32* %51, i32* null, i32* %52, i32* null, i32* %53, i32* null, i32* %54, i32* null, i32* %55, i32* null, i32* %56, i32* null, i32* %57, i32* null, i32* %58, i32* null, i32* %59, i32* null, i32* %60, i32* null, i32* %61, i32* null, i32* %62, i32* null, i32* %63, i32* null, i32* %64, i32* null, i32* %65, i32* null, i32* %66, i32* null, i32* %67, i32* null, i32* %68, i32* null, i32* %69)
  call void @free(i8* %70)
  call void @free(i8* %72)
  call void @free(i8* %74)
  call void @free(i8* %76)
  call void @free(i8* %78)
  call void @free(i8* %80)
  call void @free(i8* %82)
  call void @free(i8* %84)
  call void @free(i8* %86)
  call void @free(i8* %88)
  call void @free(i8* %90)
  call void @free(i8* %92)
  call void @free(i8* %94)
  call void @free(i8* %96)
  call void @free(i8* %98)
  call void @free(i8* %100)
  call void @free(i8* %102)
  call void @free(i8* %104)
  call void @free(i8* %106)
  call void @free(i8* %108)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4}
!blackbox_cfg = !{!5}

!0 = !{!"AMD/Xilinx clang version 16.0.6"}
!1 = !{!"clang version 7.0.0 "}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{}
