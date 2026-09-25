; ModuleID = '/output/block_lu_hls/test_2022.2/proj_block_lu_hls/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<128>" = type { %"struct.ap_int_base<128, false>" }
%"struct.ap_int_base<128, false>" = type { %"struct.ssdm_int<128, false>" }
%"struct.ssdm_int<128, false>" = type { i128 }

; Function Attrs: noinline
define void @apatb_spmm_ir(i32* noalias nocapture nonnull readonly %A_rcsr, i32* noalias nocapture nonnull readonly %A_cid, float* noalias nocapture nonnull readonly %A_val, i32 %arnum, i32 %atnum, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_rcsr1, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_rcsr2, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_rcsr3, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_rcsr4, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_val1, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_cid1, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_val2, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_cid2, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_val3, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_cid3, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_val4, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_cid4, i32 %brnum, i32 %btnum, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_val_port1, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_cid_port1, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_val_port2, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_cid_port2, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_val_port3, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_cid_port3, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_val_port4, %"struct.ap_uint<128>"* noalias nocapture nonnull readonly %B_cid_port4, i32* noalias nocapture nonnull readonly %C_rcsr, i32* noalias nocapture nonnull readonly %C_cid, float* noalias nocapture nonnull %C_val, i32 %B_rcsr_base, i32 %B_val_base, i32 %B_cid_base, i32* noalias nocapture nonnull %r1acc, i32* noalias nocapture nonnull %r1hit, i32* noalias nocapture nonnull %r2acc, i32* noalias nocapture nonnull %r2hit, i32* noalias nocapture nonnull %r3acc, i32* noalias nocapture nonnull %r3hit, i32* noalias nocapture nonnull %r4acc, i32* noalias nocapture nonnull %r4hit, i32* noalias nocapture nonnull readonly %r5acc, i32* noalias nocapture nonnull readonly %r5hit, i32* noalias nocapture nonnull readonly %r6acc, i32* noalias nocapture nonnull readonly %r6hit, i32* noalias nocapture nonnull readonly %r7acc, i32* noalias nocapture nonnull readonly %r7hit, i32* noalias nocapture nonnull readonly %r8acc, i32* noalias nocapture nonnull readonly %r8hit, i32* noalias nocapture nonnull %vc1acc, i32* noalias nocapture nonnull %vc1hit, i32* noalias nocapture nonnull %vc2acc, i32* noalias nocapture nonnull %vc2hit, i32* noalias nocapture nonnull %vc3acc, i32* noalias nocapture nonnull %vc3hit, i32* noalias nocapture nonnull %vc4acc, i32* noalias nocapture nonnull %vc4hit, i32* noalias nocapture nonnull readonly %vc5acc, i32* noalias nocapture nonnull readonly %vc5hit, i32* noalias nocapture nonnull readonly %vc6acc, i32* noalias nocapture nonnull readonly %vc6hit, i32* noalias nocapture nonnull readonly %vc7acc, i32* noalias nocapture nonnull readonly %vc7hit, i32* noalias nocapture nonnull readonly %vc8acc, i32* noalias nocapture nonnull readonly %vc8hit, i32* noalias nocapture nonnull %fnum, i32* noalias nocapture nonnull %workload_counter1, i32* noalias nocapture nonnull %workload_counter2, i32* noalias nocapture nonnull %workload_counter3, i32* noalias nocapture nonnull %workload_counter4) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 8200)
  %A_rcsr_copy = bitcast i8* %malloccall to [2050 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 11324)
  %A_cid_copy = bitcast i8* %malloccall1 to [2831 x i32]*
  %malloccall2 = tail call i8* @malloc(i64 11324)
  %A_val_copy = bitcast i8* %malloccall2 to [2831 x float]*
  %malloccall3 = call i8* @malloc(i64 8208)
  %B_rcsr1_copy = bitcast i8* %malloccall3 to [513 x i128]*
  %malloccall4 = call i8* @malloc(i64 8208)
  %B_rcsr2_copy = bitcast i8* %malloccall4 to [513 x i128]*
  %malloccall5 = call i8* @malloc(i64 8208)
  %B_rcsr3_copy = bitcast i8* %malloccall5 to [513 x i128]*
  %malloccall6 = call i8* @malloc(i64 8208)
  %B_rcsr4_copy = bitcast i8* %malloccall6 to [513 x i128]*
  %malloccall7 = call i8* @malloc(i64 14336)
  %B_val1_copy = bitcast i8* %malloccall7 to [896 x i128]*
  %malloccall8 = call i8* @malloc(i64 14336)
  %B_cid1_copy = bitcast i8* %malloccall8 to [896 x i128]*
  %malloccall9 = call i8* @malloc(i64 14336)
  %B_val2_copy = bitcast i8* %malloccall9 to [896 x i128]*
  %malloccall10 = call i8* @malloc(i64 14336)
  %B_cid2_copy = bitcast i8* %malloccall10 to [896 x i128]*
  %malloccall11 = call i8* @malloc(i64 14336)
  %B_val3_copy = bitcast i8* %malloccall11 to [896 x i128]*
  %malloccall12 = call i8* @malloc(i64 14336)
  %B_cid3_copy = bitcast i8* %malloccall12 to [896 x i128]*
  %malloccall13 = call i8* @malloc(i64 14336)
  %B_val4_copy = bitcast i8* %malloccall13 to [896 x i128]*
  %malloccall14 = call i8* @malloc(i64 14336)
  %B_cid4_copy = bitcast i8* %malloccall14 to [896 x i128]*
  %malloccall15 = call i8* @malloc(i64 14336)
  %B_val_port1_copy = bitcast i8* %malloccall15 to [896 x i128]*
  %malloccall16 = call i8* @malloc(i64 14336)
  %B_cid_port1_copy = bitcast i8* %malloccall16 to [896 x i128]*
  %malloccall17 = call i8* @malloc(i64 14336)
  %B_val_port2_copy = bitcast i8* %malloccall17 to [896 x i128]*
  %malloccall18 = call i8* @malloc(i64 14336)
  %B_cid_port2_copy = bitcast i8* %malloccall18 to [896 x i128]*
  %malloccall19 = call i8* @malloc(i64 14336)
  %B_val_port3_copy = bitcast i8* %malloccall19 to [896 x i128]*
  %malloccall20 = call i8* @malloc(i64 14336)
  %B_cid_port3_copy = bitcast i8* %malloccall20 to [896 x i128]*
  %malloccall21 = call i8* @malloc(i64 14336)
  %B_val_port4_copy = bitcast i8* %malloccall21 to [896 x i128]*
  %malloccall22 = call i8* @malloc(i64 14336)
  %B_cid_port4_copy = bitcast i8* %malloccall22 to [896 x i128]*
  %malloccall23 = tail call i8* @malloc(i64 8200)
  %C_rcsr_copy = bitcast i8* %malloccall23 to [2050 x i32]*
  %malloccall24 = tail call i8* @malloc(i64 14508)
  %C_cid_copy = bitcast i8* %malloccall24 to [3627 x i32]*
  %malloccall25 = tail call i8* @malloc(i64 14508)
  %C_val_copy = bitcast i8* %malloccall25 to [3627 x float]*
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
  %0 = bitcast i32* %A_rcsr to [2050 x i32]*
  %1 = bitcast i32* %A_cid to [2831 x i32]*
  %2 = bitcast float* %A_val to [2831 x float]*
  %3 = bitcast %"struct.ap_uint<128>"* %B_rcsr1 to [513 x %"struct.ap_uint<128>"]*
  %4 = bitcast %"struct.ap_uint<128>"* %B_rcsr2 to [513 x %"struct.ap_uint<128>"]*
  %5 = bitcast %"struct.ap_uint<128>"* %B_rcsr3 to [513 x %"struct.ap_uint<128>"]*
  %6 = bitcast %"struct.ap_uint<128>"* %B_rcsr4 to [513 x %"struct.ap_uint<128>"]*
  %7 = bitcast %"struct.ap_uint<128>"* %B_val1 to [896 x %"struct.ap_uint<128>"]*
  %8 = bitcast %"struct.ap_uint<128>"* %B_cid1 to [896 x %"struct.ap_uint<128>"]*
  %9 = bitcast %"struct.ap_uint<128>"* %B_val2 to [896 x %"struct.ap_uint<128>"]*
  %10 = bitcast %"struct.ap_uint<128>"* %B_cid2 to [896 x %"struct.ap_uint<128>"]*
  %11 = bitcast %"struct.ap_uint<128>"* %B_val3 to [896 x %"struct.ap_uint<128>"]*
  %12 = bitcast %"struct.ap_uint<128>"* %B_cid3 to [896 x %"struct.ap_uint<128>"]*
  %13 = bitcast %"struct.ap_uint<128>"* %B_val4 to [896 x %"struct.ap_uint<128>"]*
  %14 = bitcast %"struct.ap_uint<128>"* %B_cid4 to [896 x %"struct.ap_uint<128>"]*
  %15 = bitcast %"struct.ap_uint<128>"* %B_val_port1 to [896 x %"struct.ap_uint<128>"]*
  %16 = bitcast %"struct.ap_uint<128>"* %B_cid_port1 to [896 x %"struct.ap_uint<128>"]*
  %17 = bitcast %"struct.ap_uint<128>"* %B_val_port2 to [896 x %"struct.ap_uint<128>"]*
  %18 = bitcast %"struct.ap_uint<128>"* %B_cid_port2 to [896 x %"struct.ap_uint<128>"]*
  %19 = bitcast %"struct.ap_uint<128>"* %B_val_port3 to [896 x %"struct.ap_uint<128>"]*
  %20 = bitcast %"struct.ap_uint<128>"* %B_cid_port3 to [896 x %"struct.ap_uint<128>"]*
  %21 = bitcast %"struct.ap_uint<128>"* %B_val_port4 to [896 x %"struct.ap_uint<128>"]*
  %22 = bitcast %"struct.ap_uint<128>"* %B_cid_port4 to [896 x %"struct.ap_uint<128>"]*
  %23 = bitcast i32* %C_rcsr to [2050 x i32]*
  %24 = bitcast i32* %C_cid to [3627 x i32]*
  %25 = bitcast float* %C_val to [3627 x float]*
  call fastcc void @copy_in([2050 x i32]* nonnull %0, [2050 x i32]* %A_rcsr_copy, [2831 x i32]* nonnull %1, [2831 x i32]* %A_cid_copy, [2831 x float]* nonnull %2, [2831 x float]* %A_val_copy, [513 x %"struct.ap_uint<128>"]* nonnull %3, [513 x i128]* %B_rcsr1_copy, [513 x %"struct.ap_uint<128>"]* nonnull %4, [513 x i128]* %B_rcsr2_copy, [513 x %"struct.ap_uint<128>"]* nonnull %5, [513 x i128]* %B_rcsr3_copy, [513 x %"struct.ap_uint<128>"]* nonnull %6, [513 x i128]* %B_rcsr4_copy, [896 x %"struct.ap_uint<128>"]* nonnull %7, [896 x i128]* %B_val1_copy, [896 x %"struct.ap_uint<128>"]* nonnull %8, [896 x i128]* %B_cid1_copy, [896 x %"struct.ap_uint<128>"]* nonnull %9, [896 x i128]* %B_val2_copy, [896 x %"struct.ap_uint<128>"]* nonnull %10, [896 x i128]* %B_cid2_copy, [896 x %"struct.ap_uint<128>"]* nonnull %11, [896 x i128]* %B_val3_copy, [896 x %"struct.ap_uint<128>"]* nonnull %12, [896 x i128]* %B_cid3_copy, [896 x %"struct.ap_uint<128>"]* nonnull %13, [896 x i128]* %B_val4_copy, [896 x %"struct.ap_uint<128>"]* nonnull %14, [896 x i128]* %B_cid4_copy, [896 x %"struct.ap_uint<128>"]* nonnull %15, [896 x i128]* %B_val_port1_copy, [896 x %"struct.ap_uint<128>"]* nonnull %16, [896 x i128]* %B_cid_port1_copy, [896 x %"struct.ap_uint<128>"]* nonnull %17, [896 x i128]* %B_val_port2_copy, [896 x %"struct.ap_uint<128>"]* nonnull %18, [896 x i128]* %B_cid_port2_copy, [896 x %"struct.ap_uint<128>"]* nonnull %19, [896 x i128]* %B_val_port3_copy, [896 x %"struct.ap_uint<128>"]* nonnull %20, [896 x i128]* %B_cid_port3_copy, [896 x %"struct.ap_uint<128>"]* nonnull %21, [896 x i128]* %B_val_port4_copy, [896 x %"struct.ap_uint<128>"]* nonnull %22, [896 x i128]* %B_cid_port4_copy, [2050 x i32]* nonnull %23, [2050 x i32]* %C_rcsr_copy, [3627 x i32]* nonnull %24, [3627 x i32]* %C_cid_copy, [3627 x float]* nonnull %25, [3627 x float]* %C_val_copy, i32* nonnull %r1acc, i32* nonnull align 512 %r1acc_copy, i32* nonnull %r1hit, i32* nonnull align 512 %r1hit_copy, i32* nonnull %r2acc, i32* nonnull align 512 %r2acc_copy, i32* nonnull %r2hit, i32* nonnull align 512 %r2hit_copy, i32* nonnull %r3acc, i32* nonnull align 512 %r3acc_copy, i32* nonnull %r3hit, i32* nonnull align 512 %r3hit_copy, i32* nonnull %r4acc, i32* nonnull align 512 %r4acc_copy, i32* nonnull %r4hit, i32* nonnull align 512 %r4hit_copy, i32* nonnull %r5acc, i32* nonnull align 512 %r5acc_copy, i32* nonnull %r5hit, i32* nonnull align 512 %r5hit_copy, i32* nonnull %r6acc, i32* nonnull align 512 %r6acc_copy, i32* nonnull %r6hit, i32* nonnull align 512 %r6hit_copy, i32* nonnull %r7acc, i32* nonnull align 512 %r7acc_copy, i32* nonnull %r7hit, i32* nonnull align 512 %r7hit_copy, i32* nonnull %r8acc, i32* nonnull align 512 %r8acc_copy, i32* nonnull %r8hit, i32* nonnull align 512 %r8hit_copy, i32* nonnull %vc1acc, i32* nonnull align 512 %vc1acc_copy, i32* nonnull %vc1hit, i32* nonnull align 512 %vc1hit_copy, i32* nonnull %vc2acc, i32* nonnull align 512 %vc2acc_copy, i32* nonnull %vc2hit, i32* nonnull align 512 %vc2hit_copy, i32* nonnull %vc3acc, i32* nonnull align 512 %vc3acc_copy, i32* nonnull %vc3hit, i32* nonnull align 512 %vc3hit_copy, i32* nonnull %vc4acc, i32* nonnull align 512 %vc4acc_copy, i32* nonnull %vc4hit, i32* nonnull align 512 %vc4hit_copy, i32* nonnull %vc5acc, i32* nonnull align 512 %vc5acc_copy, i32* nonnull %vc5hit, i32* nonnull align 512 %vc5hit_copy, i32* nonnull %vc6acc, i32* nonnull align 512 %vc6acc_copy, i32* nonnull %vc6hit, i32* nonnull align 512 %vc6hit_copy, i32* nonnull %vc7acc, i32* nonnull align 512 %vc7acc_copy, i32* nonnull %vc7hit, i32* nonnull align 512 %vc7hit_copy, i32* nonnull %vc8acc, i32* nonnull align 512 %vc8acc_copy, i32* nonnull %vc8hit, i32* nonnull align 512 %vc8hit_copy, i32* nonnull %fnum, i32* nonnull align 512 %fnum_copy, i32* nonnull %workload_counter1, i32* nonnull align 512 %workload_counter1_copy, i32* nonnull %workload_counter2, i32* nonnull align 512 %workload_counter2_copy, i32* nonnull %workload_counter3, i32* nonnull align 512 %workload_counter3_copy, i32* nonnull %workload_counter4, i32* nonnull align 512 %workload_counter4_copy)
  %26 = getelementptr inbounds [2050 x i32], [2050 x i32]* %A_rcsr_copy, i32 0, i32 0
  %27 = getelementptr inbounds [2831 x i32], [2831 x i32]* %A_cid_copy, i32 0, i32 0
  %28 = getelementptr inbounds [2831 x float], [2831 x float]* %A_val_copy, i32 0, i32 0
  %29 = getelementptr [513 x i128], [513 x i128]* %B_rcsr1_copy, i32 0, i32 0
  %30 = getelementptr [513 x i128], [513 x i128]* %B_rcsr2_copy, i32 0, i32 0
  %31 = getelementptr [513 x i128], [513 x i128]* %B_rcsr3_copy, i32 0, i32 0
  %32 = getelementptr [513 x i128], [513 x i128]* %B_rcsr4_copy, i32 0, i32 0
  %33 = getelementptr [896 x i128], [896 x i128]* %B_val1_copy, i32 0, i32 0
  %34 = getelementptr [896 x i128], [896 x i128]* %B_cid1_copy, i32 0, i32 0
  %35 = getelementptr [896 x i128], [896 x i128]* %B_val2_copy, i32 0, i32 0
  %36 = getelementptr [896 x i128], [896 x i128]* %B_cid2_copy, i32 0, i32 0
  %37 = getelementptr [896 x i128], [896 x i128]* %B_val3_copy, i32 0, i32 0
  %38 = getelementptr [896 x i128], [896 x i128]* %B_cid3_copy, i32 0, i32 0
  %39 = getelementptr [896 x i128], [896 x i128]* %B_val4_copy, i32 0, i32 0
  %40 = getelementptr [896 x i128], [896 x i128]* %B_cid4_copy, i32 0, i32 0
  %41 = getelementptr [896 x i128], [896 x i128]* %B_val_port1_copy, i32 0, i32 0
  %42 = getelementptr [896 x i128], [896 x i128]* %B_cid_port1_copy, i32 0, i32 0
  %43 = getelementptr [896 x i128], [896 x i128]* %B_val_port2_copy, i32 0, i32 0
  %44 = getelementptr [896 x i128], [896 x i128]* %B_cid_port2_copy, i32 0, i32 0
  %45 = getelementptr [896 x i128], [896 x i128]* %B_val_port3_copy, i32 0, i32 0
  %46 = getelementptr [896 x i128], [896 x i128]* %B_cid_port3_copy, i32 0, i32 0
  %47 = getelementptr [896 x i128], [896 x i128]* %B_val_port4_copy, i32 0, i32 0
  %48 = getelementptr [896 x i128], [896 x i128]* %B_cid_port4_copy, i32 0, i32 0
  %49 = getelementptr inbounds [2050 x i32], [2050 x i32]* %C_rcsr_copy, i32 0, i32 0
  %50 = getelementptr inbounds [3627 x i32], [3627 x i32]* %C_cid_copy, i32 0, i32 0
  %51 = getelementptr inbounds [3627 x float], [3627 x float]* %C_val_copy, i32 0, i32 0
  call void @apatb_spmm_hw(i32* %26, i32* %27, float* %28, i32 %arnum, i32 %atnum, i128* %29, i128* %30, i128* %31, i128* %32, i128* %33, i128* %34, i128* %35, i128* %36, i128* %37, i128* %38, i128* %39, i128* %40, i32 %brnum, i32 %btnum, i128* %41, i128* %42, i128* %43, i128* %44, i128* %45, i128* %46, i128* %47, i128* %48, i32* %49, i32* %50, float* %51, i32 %B_rcsr_base, i32 %B_val_base, i32 %B_cid_base, i32* %r1acc_copy, i32* %r1hit_copy, i32* %r2acc_copy, i32* %r2hit_copy, i32* %r3acc_copy, i32* %r3hit_copy, i32* %r4acc_copy, i32* %r4hit_copy, i32* %r5acc_copy, i32* %r5hit_copy, i32* %r6acc_copy, i32* %r6hit_copy, i32* %r7acc_copy, i32* %r7hit_copy, i32* %r8acc_copy, i32* %r8hit_copy, i32* %vc1acc_copy, i32* %vc1hit_copy, i32* %vc2acc_copy, i32* %vc2hit_copy, i32* %vc3acc_copy, i32* %vc3hit_copy, i32* %vc4acc_copy, i32* %vc4hit_copy, i32* %vc5acc_copy, i32* %vc5hit_copy, i32* %vc6acc_copy, i32* %vc6hit_copy, i32* %vc7acc_copy, i32* %vc7hit_copy, i32* %vc8acc_copy, i32* %vc8hit_copy, i32* %fnum_copy, i32* %workload_counter1_copy, i32* %workload_counter2_copy, i32* %workload_counter3_copy, i32* %workload_counter4_copy)
  call void @copy_back([2050 x i32]* %0, [2050 x i32]* %A_rcsr_copy, [2831 x i32]* %1, [2831 x i32]* %A_cid_copy, [2831 x float]* %2, [2831 x float]* %A_val_copy, [513 x %"struct.ap_uint<128>"]* %3, [513 x i128]* %B_rcsr1_copy, [513 x %"struct.ap_uint<128>"]* %4, [513 x i128]* %B_rcsr2_copy, [513 x %"struct.ap_uint<128>"]* %5, [513 x i128]* %B_rcsr3_copy, [513 x %"struct.ap_uint<128>"]* %6, [513 x i128]* %B_rcsr4_copy, [896 x %"struct.ap_uint<128>"]* %7, [896 x i128]* %B_val1_copy, [896 x %"struct.ap_uint<128>"]* %8, [896 x i128]* %B_cid1_copy, [896 x %"struct.ap_uint<128>"]* %9, [896 x i128]* %B_val2_copy, [896 x %"struct.ap_uint<128>"]* %10, [896 x i128]* %B_cid2_copy, [896 x %"struct.ap_uint<128>"]* %11, [896 x i128]* %B_val3_copy, [896 x %"struct.ap_uint<128>"]* %12, [896 x i128]* %B_cid3_copy, [896 x %"struct.ap_uint<128>"]* %13, [896 x i128]* %B_val4_copy, [896 x %"struct.ap_uint<128>"]* %14, [896 x i128]* %B_cid4_copy, [896 x %"struct.ap_uint<128>"]* %15, [896 x i128]* %B_val_port1_copy, [896 x %"struct.ap_uint<128>"]* %16, [896 x i128]* %B_cid_port1_copy, [896 x %"struct.ap_uint<128>"]* %17, [896 x i128]* %B_val_port2_copy, [896 x %"struct.ap_uint<128>"]* %18, [896 x i128]* %B_cid_port2_copy, [896 x %"struct.ap_uint<128>"]* %19, [896 x i128]* %B_val_port3_copy, [896 x %"struct.ap_uint<128>"]* %20, [896 x i128]* %B_cid_port3_copy, [896 x %"struct.ap_uint<128>"]* %21, [896 x i128]* %B_val_port4_copy, [896 x %"struct.ap_uint<128>"]* %22, [896 x i128]* %B_cid_port4_copy, [2050 x i32]* %23, [2050 x i32]* %C_rcsr_copy, [3627 x i32]* %24, [3627 x i32]* %C_cid_copy, [3627 x float]* %25, [3627 x float]* %C_val_copy, i32* %r1acc, i32* %r1acc_copy, i32* %r1hit, i32* %r1hit_copy, i32* %r2acc, i32* %r2acc_copy, i32* %r2hit, i32* %r2hit_copy, i32* %r3acc, i32* %r3acc_copy, i32* %r3hit, i32* %r3hit_copy, i32* %r4acc, i32* %r4acc_copy, i32* %r4hit, i32* %r4hit_copy, i32* %r5acc, i32* %r5acc_copy, i32* %r5hit, i32* %r5hit_copy, i32* %r6acc, i32* %r6acc_copy, i32* %r6hit, i32* %r6hit_copy, i32* %r7acc, i32* %r7acc_copy, i32* %r7hit, i32* %r7hit_copy, i32* %r8acc, i32* %r8acc_copy, i32* %r8hit, i32* %r8hit_copy, i32* %vc1acc, i32* %vc1acc_copy, i32* %vc1hit, i32* %vc1hit_copy, i32* %vc2acc, i32* %vc2acc_copy, i32* %vc2hit, i32* %vc2hit_copy, i32* %vc3acc, i32* %vc3acc_copy, i32* %vc3hit, i32* %vc3hit_copy, i32* %vc4acc, i32* %vc4acc_copy, i32* %vc4hit, i32* %vc4hit_copy, i32* %vc5acc, i32* %vc5acc_copy, i32* %vc5hit, i32* %vc5hit_copy, i32* %vc6acc, i32* %vc6acc_copy, i32* %vc6hit, i32* %vc6hit_copy, i32* %vc7acc, i32* %vc7acc_copy, i32* %vc7hit, i32* %vc7hit_copy, i32* %vc8acc, i32* %vc8acc_copy, i32* %vc8hit, i32* %vc8hit_copy, i32* %fnum, i32* %fnum_copy, i32* %workload_counter1, i32* %workload_counter1_copy, i32* %workload_counter2, i32* %workload_counter2_copy, i32* %workload_counter3, i32* %workload_counter3_copy, i32* %workload_counter4, i32* %workload_counter4_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  call void @free(i8* %malloccall3)
  call void @free(i8* %malloccall4)
  call void @free(i8* %malloccall5)
  call void @free(i8* %malloccall6)
  call void @free(i8* %malloccall7)
  call void @free(i8* %malloccall8)
  call void @free(i8* %malloccall9)
  call void @free(i8* %malloccall10)
  call void @free(i8* %malloccall11)
  call void @free(i8* %malloccall12)
  call void @free(i8* %malloccall13)
  call void @free(i8* %malloccall14)
  call void @free(i8* %malloccall15)
  call void @free(i8* %malloccall16)
  call void @free(i8* %malloccall17)
  call void @free(i8* %malloccall18)
  call void @free(i8* %malloccall19)
  call void @free(i8* %malloccall20)
  call void @free(i8* %malloccall21)
  call void @free(i8* %malloccall22)
  tail call void @free(i8* %malloccall23)
  tail call void @free(i8* %malloccall24)
  tail call void @free(i8* %malloccall25)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([2050 x i32]* noalias readonly "unpacked"="0", [2050 x i32]* noalias "unpacked"="1", [2831 x i32]* noalias readonly "unpacked"="2", [2831 x i32]* noalias "unpacked"="3", [2831 x float]* noalias readonly "unpacked"="4", [2831 x float]* noalias "unpacked"="5", [513 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="6", [513 x i128]* noalias nocapture "unpacked"="7.0.0.0", [513 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="8", [513 x i128]* noalias nocapture "unpacked"="9.0.0.0", [513 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="10", [513 x i128]* noalias nocapture "unpacked"="11.0.0.0", [513 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="12", [513 x i128]* noalias nocapture "unpacked"="13.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="14", [896 x i128]* noalias nocapture "unpacked"="15.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="16", [896 x i128]* noalias nocapture "unpacked"="17.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="18", [896 x i128]* noalias nocapture "unpacked"="19.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="20", [896 x i128]* noalias nocapture "unpacked"="21.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="22", [896 x i128]* noalias nocapture "unpacked"="23.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="24", [896 x i128]* noalias nocapture "unpacked"="25.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="26", [896 x i128]* noalias nocapture "unpacked"="27.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="28", [896 x i128]* noalias nocapture "unpacked"="29.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="30", [896 x i128]* noalias nocapture "unpacked"="31.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="32", [896 x i128]* noalias nocapture "unpacked"="33.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="34", [896 x i128]* noalias nocapture "unpacked"="35.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="36", [896 x i128]* noalias nocapture "unpacked"="37.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="38", [896 x i128]* noalias nocapture "unpacked"="39.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="40", [896 x i128]* noalias nocapture "unpacked"="41.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="42", [896 x i128]* noalias nocapture "unpacked"="43.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="44", [896 x i128]* noalias nocapture "unpacked"="45.0.0.0", [2050 x i32]* noalias readonly "unpacked"="46", [2050 x i32]* noalias "unpacked"="47", [3627 x i32]* noalias readonly "unpacked"="48", [3627 x i32]* noalias "unpacked"="49", [3627 x float]* noalias readonly "unpacked"="50", [3627 x float]* noalias "unpacked"="51", i32* noalias readonly "unpacked"="52", i32* noalias align 512 "unpacked"="53", i32* noalias readonly "unpacked"="54", i32* noalias align 512 "unpacked"="55", i32* noalias readonly "unpacked"="56", i32* noalias align 512 "unpacked"="57", i32* noalias readonly "unpacked"="58", i32* noalias align 512 "unpacked"="59", i32* noalias readonly "unpacked"="60", i32* noalias align 512 "unpacked"="61", i32* noalias readonly "unpacked"="62", i32* noalias align 512 "unpacked"="63", i32* noalias readonly "unpacked"="64", i32* noalias align 512 "unpacked"="65", i32* noalias readonly "unpacked"="66", i32* noalias align 512 "unpacked"="67", i32* noalias readonly "unpacked"="68", i32* noalias align 512 "unpacked"="69", i32* noalias readonly "unpacked"="70", i32* noalias align 512 "unpacked"="71", i32* noalias readonly "unpacked"="72", i32* noalias align 512 "unpacked"="73", i32* noalias readonly "unpacked"="74", i32* noalias align 512 "unpacked"="75", i32* noalias readonly "unpacked"="76", i32* noalias align 512 "unpacked"="77", i32* noalias readonly "unpacked"="78", i32* noalias align 512 "unpacked"="79", i32* noalias readonly "unpacked"="80", i32* noalias align 512 "unpacked"="81", i32* noalias readonly "unpacked"="82", i32* noalias align 512 "unpacked"="83", i32* noalias readonly "unpacked"="84", i32* noalias align 512 "unpacked"="85", i32* noalias readonly "unpacked"="86", i32* noalias align 512 "unpacked"="87", i32* noalias readonly "unpacked"="88", i32* noalias align 512 "unpacked"="89", i32* noalias readonly "unpacked"="90", i32* noalias align 512 "unpacked"="91", i32* noalias readonly "unpacked"="92", i32* noalias align 512 "unpacked"="93", i32* noalias readonly "unpacked"="94", i32* noalias align 512 "unpacked"="95", i32* noalias readonly "unpacked"="96", i32* noalias align 512 "unpacked"="97", i32* noalias readonly "unpacked"="98", i32* noalias align 512 "unpacked"="99", i32* noalias readonly "unpacked"="100", i32* noalias align 512 "unpacked"="101", i32* noalias readonly "unpacked"="102", i32* noalias align 512 "unpacked"="103", i32* noalias readonly "unpacked"="104", i32* noalias align 512 "unpacked"="105", i32* noalias readonly "unpacked"="106", i32* noalias align 512 "unpacked"="107", i32* noalias readonly "unpacked"="108", i32* noalias align 512 "unpacked"="109", i32* noalias readonly "unpacked"="110", i32* noalias align 512 "unpacked"="111", i32* noalias readonly "unpacked"="112", i32* noalias align 512 "unpacked"="113", i32* noalias readonly "unpacked"="114", i32* noalias align 512 "unpacked"="115", i32* noalias readonly "unpacked"="116", i32* noalias align 512 "unpacked"="117", i32* noalias readonly "unpacked"="118", i32* noalias align 512 "unpacked"="119", i32* noalias readonly "unpacked"="120", i32* noalias align 512 "unpacked"="121", i32* noalias readonly "unpacked"="122", i32* noalias align 512 "unpacked"="123", i32* noalias readonly "unpacked"="124", i32* noalias align 512 "unpacked"="125") unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2050i32([2050 x i32]* %1, [2050 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a2831i32([2831 x i32]* %3, [2831 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a2831f32([2831 x float]* %5, [2831 x float]* %4)
  call fastcc void @"onebyonecpy_hls.p0a513struct.ap_uint<128>.363.370.393.407"([513 x i128]* %7, [513 x %"struct.ap_uint<128>"]* %6)
  call fastcc void @"onebyonecpy_hls.p0a513struct.ap_uint<128>.363.370.393.407"([513 x i128]* %9, [513 x %"struct.ap_uint<128>"]* %8)
  call fastcc void @"onebyonecpy_hls.p0a513struct.ap_uint<128>.363.370.393.407"([513 x i128]* %11, [513 x %"struct.ap_uint<128>"]* %10)
  call fastcc void @"onebyonecpy_hls.p0a513struct.ap_uint<128>.363.370.393.407"([513 x i128]* %13, [513 x %"struct.ap_uint<128>"]* %12)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %15, [896 x %"struct.ap_uint<128>"]* %14)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %17, [896 x %"struct.ap_uint<128>"]* %16)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %19, [896 x %"struct.ap_uint<128>"]* %18)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %21, [896 x %"struct.ap_uint<128>"]* %20)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %23, [896 x %"struct.ap_uint<128>"]* %22)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %25, [896 x %"struct.ap_uint<128>"]* %24)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %27, [896 x %"struct.ap_uint<128>"]* %26)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %29, [896 x %"struct.ap_uint<128>"]* %28)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %31, [896 x %"struct.ap_uint<128>"]* %30)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %33, [896 x %"struct.ap_uint<128>"]* %32)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %35, [896 x %"struct.ap_uint<128>"]* %34)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %37, [896 x %"struct.ap_uint<128>"]* %36)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %39, [896 x %"struct.ap_uint<128>"]* %38)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %41, [896 x %"struct.ap_uint<128>"]* %40)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %43, [896 x %"struct.ap_uint<128>"]* %42)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* %45, [896 x %"struct.ap_uint<128>"]* %44)
  call fastcc void @onebyonecpy_hls.p0a2050i32([2050 x i32]* %47, [2050 x i32]* %46)
  call fastcc void @onebyonecpy_hls.p0a3627i32([3627 x i32]* %49, [3627 x i32]* %48)
  call fastcc void @onebyonecpy_hls.p0a3627f32([3627 x float]* %51, [3627 x float]* %50)
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

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2050i32([2050 x i32]* noalias, [2050 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2050 x i32]* %0, null
  %3 = icmp eq [2050 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2050 x i32], [2050 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [2050 x i32], [2050 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2050
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2831i32([2831 x i32]* noalias, [2831 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2831 x i32]* %0, null
  %3 = icmp eq [2831 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2831 x i32], [2831 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [2831 x i32], [2831 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2831
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2831f32([2831 x float]* noalias, [2831 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2831 x float]* %0, null
  %3 = icmp eq [2831 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2831 x float], [2831 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [2831 x float], [2831 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2831
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a3627i32([3627 x i32]* noalias, [3627 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [3627 x i32]* %0, null
  %3 = icmp eq [3627 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3627 x i32], [3627 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [3627 x i32], [3627 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3627
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a3627f32([3627 x float]* noalias, [3627 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [3627 x float]* %0, null
  %3 = icmp eq [3627 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3627 x float], [3627 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [3627 x float], [3627 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 3627
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i32, i32* %1, align 4
  store i32 %5, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([2050 x i32]* noalias "unpacked"="0", [2050 x i32]* noalias readonly "unpacked"="1", [2831 x i32]* noalias "unpacked"="2", [2831 x i32]* noalias readonly "unpacked"="3", [2831 x float]* noalias "unpacked"="4", [2831 x float]* noalias readonly "unpacked"="5", [513 x %"struct.ap_uint<128>"]* noalias "unpacked"="6", [513 x i128]* noalias nocapture readonly "unpacked"="7.0.0.0", [513 x %"struct.ap_uint<128>"]* noalias "unpacked"="8", [513 x i128]* noalias nocapture readonly "unpacked"="9.0.0.0", [513 x %"struct.ap_uint<128>"]* noalias "unpacked"="10", [513 x i128]* noalias nocapture readonly "unpacked"="11.0.0.0", [513 x %"struct.ap_uint<128>"]* noalias "unpacked"="12", [513 x i128]* noalias nocapture readonly "unpacked"="13.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="14", [896 x i128]* noalias nocapture readonly "unpacked"="15.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="16", [896 x i128]* noalias nocapture readonly "unpacked"="17.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="18", [896 x i128]* noalias nocapture readonly "unpacked"="19.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="20", [896 x i128]* noalias nocapture readonly "unpacked"="21.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="22", [896 x i128]* noalias nocapture readonly "unpacked"="23.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="24", [896 x i128]* noalias nocapture readonly "unpacked"="25.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="26", [896 x i128]* noalias nocapture readonly "unpacked"="27.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="28", [896 x i128]* noalias nocapture readonly "unpacked"="29.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="30", [896 x i128]* noalias nocapture readonly "unpacked"="31.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="32", [896 x i128]* noalias nocapture readonly "unpacked"="33.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="34", [896 x i128]* noalias nocapture readonly "unpacked"="35.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="36", [896 x i128]* noalias nocapture readonly "unpacked"="37.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="38", [896 x i128]* noalias nocapture readonly "unpacked"="39.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="40", [896 x i128]* noalias nocapture readonly "unpacked"="41.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="42", [896 x i128]* noalias nocapture readonly "unpacked"="43.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="44", [896 x i128]* noalias nocapture readonly "unpacked"="45.0.0.0", [2050 x i32]* noalias "unpacked"="46", [2050 x i32]* noalias readonly "unpacked"="47", [3627 x i32]* noalias "unpacked"="48", [3627 x i32]* noalias readonly "unpacked"="49", [3627 x float]* noalias "unpacked"="50", [3627 x float]* noalias readonly "unpacked"="51", i32* noalias "unpacked"="52", i32* noalias readonly align 512 "unpacked"="53", i32* noalias "unpacked"="54", i32* noalias readonly align 512 "unpacked"="55", i32* noalias "unpacked"="56", i32* noalias readonly align 512 "unpacked"="57", i32* noalias "unpacked"="58", i32* noalias readonly align 512 "unpacked"="59", i32* noalias "unpacked"="60", i32* noalias readonly align 512 "unpacked"="61", i32* noalias "unpacked"="62", i32* noalias readonly align 512 "unpacked"="63", i32* noalias "unpacked"="64", i32* noalias readonly align 512 "unpacked"="65", i32* noalias "unpacked"="66", i32* noalias readonly align 512 "unpacked"="67", i32* noalias "unpacked"="68", i32* noalias readonly align 512 "unpacked"="69", i32* noalias "unpacked"="70", i32* noalias readonly align 512 "unpacked"="71", i32* noalias "unpacked"="72", i32* noalias readonly align 512 "unpacked"="73", i32* noalias "unpacked"="74", i32* noalias readonly align 512 "unpacked"="75", i32* noalias "unpacked"="76", i32* noalias readonly align 512 "unpacked"="77", i32* noalias "unpacked"="78", i32* noalias readonly align 512 "unpacked"="79", i32* noalias "unpacked"="80", i32* noalias readonly align 512 "unpacked"="81", i32* noalias "unpacked"="82", i32* noalias readonly align 512 "unpacked"="83", i32* noalias "unpacked"="84", i32* noalias readonly align 512 "unpacked"="85", i32* noalias "unpacked"="86", i32* noalias readonly align 512 "unpacked"="87", i32* noalias "unpacked"="88", i32* noalias readonly align 512 "unpacked"="89", i32* noalias "unpacked"="90", i32* noalias readonly align 512 "unpacked"="91", i32* noalias "unpacked"="92", i32* noalias readonly align 512 "unpacked"="93", i32* noalias "unpacked"="94", i32* noalias readonly align 512 "unpacked"="95", i32* noalias "unpacked"="96", i32* noalias readonly align 512 "unpacked"="97", i32* noalias "unpacked"="98", i32* noalias readonly align 512 "unpacked"="99", i32* noalias "unpacked"="100", i32* noalias readonly align 512 "unpacked"="101", i32* noalias "unpacked"="102", i32* noalias readonly align 512 "unpacked"="103", i32* noalias "unpacked"="104", i32* noalias readonly align 512 "unpacked"="105", i32* noalias "unpacked"="106", i32* noalias readonly align 512 "unpacked"="107", i32* noalias "unpacked"="108", i32* noalias readonly align 512 "unpacked"="109", i32* noalias "unpacked"="110", i32* noalias readonly align 512 "unpacked"="111", i32* noalias "unpacked"="112", i32* noalias readonly align 512 "unpacked"="113", i32* noalias "unpacked"="114", i32* noalias readonly align 512 "unpacked"="115", i32* noalias "unpacked"="116", i32* noalias readonly align 512 "unpacked"="117", i32* noalias "unpacked"="118", i32* noalias readonly align 512 "unpacked"="119", i32* noalias "unpacked"="120", i32* noalias readonly align 512 "unpacked"="121", i32* noalias "unpacked"="122", i32* noalias readonly align 512 "unpacked"="123", i32* noalias "unpacked"="124", i32* noalias readonly align 512 "unpacked"="125") unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2050i32([2050 x i32]* %0, [2050 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a2831i32([2831 x i32]* %2, [2831 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a2831f32([2831 x float]* %4, [2831 x float]* %5)
  call fastcc void @"onebyonecpy_hls.p0a513struct.ap_uint<128>"([513 x %"struct.ap_uint<128>"]* %6, [513 x i128]* %7)
  call fastcc void @"onebyonecpy_hls.p0a513struct.ap_uint<128>"([513 x %"struct.ap_uint<128>"]* %8, [513 x i128]* %9)
  call fastcc void @"onebyonecpy_hls.p0a513struct.ap_uint<128>"([513 x %"struct.ap_uint<128>"]* %10, [513 x i128]* %11)
  call fastcc void @"onebyonecpy_hls.p0a513struct.ap_uint<128>"([513 x %"struct.ap_uint<128>"]* %12, [513 x i128]* %13)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %14, [896 x i128]* %15)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %16, [896 x i128]* %17)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %18, [896 x i128]* %19)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %20, [896 x i128]* %21)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %22, [896 x i128]* %23)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %24, [896 x i128]* %25)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %26, [896 x i128]* %27)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %28, [896 x i128]* %29)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %30, [896 x i128]* %31)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %32, [896 x i128]* %33)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %34, [896 x i128]* %35)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %36, [896 x i128]* %37)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %38, [896 x i128]* %39)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %40, [896 x i128]* %41)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %42, [896 x i128]* %43)
  call fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* %44, [896 x i128]* %45)
  call fastcc void @onebyonecpy_hls.p0a2050i32([2050 x i32]* %46, [2050 x i32]* %47)
  call fastcc void @onebyonecpy_hls.p0a3627i32([3627 x i32]* %48, [3627 x i32]* %49)
  call fastcc void @onebyonecpy_hls.p0a3627f32([3627 x float]* %50, [3627 x float]* %51)
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

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>"([896 x %"struct.ap_uint<128>"]* noalias "unpacked"="0", [896 x i128]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq [896 x %"struct.ap_uint<128>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [896 x i128], [896 x i128]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [896 x %"struct.ap_uint<128>"], [896 x %"struct.ap_uint<128>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %3, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 896
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a896struct.ap_uint<128>.70.74.114.129.147.160.178.192.210.228.252.267.285.298.316.330"([896 x i128]* noalias nocapture "unpacked"="0.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [896 x %"struct.ap_uint<128>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [896 x %"struct.ap_uint<128>"], [896 x %"struct.ap_uint<128>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [896 x i128], [896 x i128]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %3, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 896
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a513struct.ap_uint<128>"([513 x %"struct.ap_uint<128>"]* noalias "unpacked"="0", [513 x i128]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq [513 x %"struct.ap_uint<128>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [513 x i128], [513 x i128]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [513 x %"struct.ap_uint<128>"], [513 x %"struct.ap_uint<128>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %3, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 513
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a513struct.ap_uint<128>.363.370.393.407"([513 x i128]* noalias nocapture "unpacked"="0.0.0.0", [513 x %"struct.ap_uint<128>"]* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [513 x %"struct.ap_uint<128>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [513 x %"struct.ap_uint<128>"], [513 x %"struct.ap_uint<128>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [513 x i128], [513 x i128]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i128, i128* %src.addr.0.0.05, align 16
  store i128 %3, i128* %dst.addr.0.0.06, align 16
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 513
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_spmm_hw(i32*, i32*, float*, i32, i32, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i32, i32, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i32*, i32*, float*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([2050 x i32]* noalias "unpacked"="0", [2050 x i32]* noalias readonly "unpacked"="1", [2831 x i32]* noalias "unpacked"="2", [2831 x i32]* noalias readonly "unpacked"="3", [2831 x float]* noalias "unpacked"="4", [2831 x float]* noalias readonly "unpacked"="5", [513 x %"struct.ap_uint<128>"]* noalias "unpacked"="6", [513 x i128]* noalias nocapture readonly "unpacked"="7.0.0.0", [513 x %"struct.ap_uint<128>"]* noalias "unpacked"="8", [513 x i128]* noalias nocapture readonly "unpacked"="9.0.0.0", [513 x %"struct.ap_uint<128>"]* noalias "unpacked"="10", [513 x i128]* noalias nocapture readonly "unpacked"="11.0.0.0", [513 x %"struct.ap_uint<128>"]* noalias "unpacked"="12", [513 x i128]* noalias nocapture readonly "unpacked"="13.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="14", [896 x i128]* noalias nocapture readonly "unpacked"="15.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="16", [896 x i128]* noalias nocapture readonly "unpacked"="17.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="18", [896 x i128]* noalias nocapture readonly "unpacked"="19.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="20", [896 x i128]* noalias nocapture readonly "unpacked"="21.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="22", [896 x i128]* noalias nocapture readonly "unpacked"="23.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="24", [896 x i128]* noalias nocapture readonly "unpacked"="25.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="26", [896 x i128]* noalias nocapture readonly "unpacked"="27.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="28", [896 x i128]* noalias nocapture readonly "unpacked"="29.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="30", [896 x i128]* noalias nocapture readonly "unpacked"="31.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="32", [896 x i128]* noalias nocapture readonly "unpacked"="33.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="34", [896 x i128]* noalias nocapture readonly "unpacked"="35.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="36", [896 x i128]* noalias nocapture readonly "unpacked"="37.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="38", [896 x i128]* noalias nocapture readonly "unpacked"="39.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="40", [896 x i128]* noalias nocapture readonly "unpacked"="41.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="42", [896 x i128]* noalias nocapture readonly "unpacked"="43.0.0.0", [896 x %"struct.ap_uint<128>"]* noalias "unpacked"="44", [896 x i128]* noalias nocapture readonly "unpacked"="45.0.0.0", [2050 x i32]* noalias "unpacked"="46", [2050 x i32]* noalias readonly "unpacked"="47", [3627 x i32]* noalias "unpacked"="48", [3627 x i32]* noalias readonly "unpacked"="49", [3627 x float]* noalias "unpacked"="50", [3627 x float]* noalias readonly "unpacked"="51", i32* noalias "unpacked"="52", i32* noalias readonly align 512 "unpacked"="53", i32* noalias "unpacked"="54", i32* noalias readonly align 512 "unpacked"="55", i32* noalias "unpacked"="56", i32* noalias readonly align 512 "unpacked"="57", i32* noalias "unpacked"="58", i32* noalias readonly align 512 "unpacked"="59", i32* noalias "unpacked"="60", i32* noalias readonly align 512 "unpacked"="61", i32* noalias "unpacked"="62", i32* noalias readonly align 512 "unpacked"="63", i32* noalias "unpacked"="64", i32* noalias readonly align 512 "unpacked"="65", i32* noalias "unpacked"="66", i32* noalias readonly align 512 "unpacked"="67", i32* noalias "unpacked"="68", i32* noalias readonly align 512 "unpacked"="69", i32* noalias "unpacked"="70", i32* noalias readonly align 512 "unpacked"="71", i32* noalias "unpacked"="72", i32* noalias readonly align 512 "unpacked"="73", i32* noalias "unpacked"="74", i32* noalias readonly align 512 "unpacked"="75", i32* noalias "unpacked"="76", i32* noalias readonly align 512 "unpacked"="77", i32* noalias "unpacked"="78", i32* noalias readonly align 512 "unpacked"="79", i32* noalias "unpacked"="80", i32* noalias readonly align 512 "unpacked"="81", i32* noalias "unpacked"="82", i32* noalias readonly align 512 "unpacked"="83", i32* noalias "unpacked"="84", i32* noalias readonly align 512 "unpacked"="85", i32* noalias "unpacked"="86", i32* noalias readonly align 512 "unpacked"="87", i32* noalias "unpacked"="88", i32* noalias readonly align 512 "unpacked"="89", i32* noalias "unpacked"="90", i32* noalias readonly align 512 "unpacked"="91", i32* noalias "unpacked"="92", i32* noalias readonly align 512 "unpacked"="93", i32* noalias "unpacked"="94", i32* noalias readonly align 512 "unpacked"="95", i32* noalias "unpacked"="96", i32* noalias readonly align 512 "unpacked"="97", i32* noalias "unpacked"="98", i32* noalias readonly align 512 "unpacked"="99", i32* noalias "unpacked"="100", i32* noalias readonly align 512 "unpacked"="101", i32* noalias "unpacked"="102", i32* noalias readonly align 512 "unpacked"="103", i32* noalias "unpacked"="104", i32* noalias readonly align 512 "unpacked"="105", i32* noalias "unpacked"="106", i32* noalias readonly align 512 "unpacked"="107", i32* noalias "unpacked"="108", i32* noalias readonly align 512 "unpacked"="109", i32* noalias "unpacked"="110", i32* noalias readonly align 512 "unpacked"="111", i32* noalias "unpacked"="112", i32* noalias readonly align 512 "unpacked"="113", i32* noalias "unpacked"="114", i32* noalias readonly align 512 "unpacked"="115", i32* noalias "unpacked"="116", i32* noalias readonly align 512 "unpacked"="117", i32* noalias "unpacked"="118", i32* noalias readonly align 512 "unpacked"="119", i32* noalias "unpacked"="120", i32* noalias readonly align 512 "unpacked"="121", i32* noalias "unpacked"="122", i32* noalias readonly align 512 "unpacked"="123", i32* noalias "unpacked"="124", i32* noalias readonly align 512 "unpacked"="125") unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a3627f32([3627 x float]* %50, [3627 x float]* %51)
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

define void @spmm_hw_stub_wrapper(i32*, i32*, float*, i32, i32, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i32, i32, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i128*, i32*, i32*, float*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 8208)
  %70 = bitcast i8* %malloccall to [513 x %"struct.ap_uint<128>"]*
  %malloccall1 = tail call i8* @malloc(i64 8208)
  %71 = bitcast i8* %malloccall1 to [513 x %"struct.ap_uint<128>"]*
  %malloccall2 = tail call i8* @malloc(i64 8208)
  %72 = bitcast i8* %malloccall2 to [513 x %"struct.ap_uint<128>"]*
  %malloccall3 = tail call i8* @malloc(i64 8208)
  %73 = bitcast i8* %malloccall3 to [513 x %"struct.ap_uint<128>"]*
  %malloccall4 = tail call i8* @malloc(i64 14336)
  %74 = bitcast i8* %malloccall4 to [896 x %"struct.ap_uint<128>"]*
  %malloccall5 = tail call i8* @malloc(i64 14336)
  %75 = bitcast i8* %malloccall5 to [896 x %"struct.ap_uint<128>"]*
  %malloccall6 = tail call i8* @malloc(i64 14336)
  %76 = bitcast i8* %malloccall6 to [896 x %"struct.ap_uint<128>"]*
  %malloccall7 = tail call i8* @malloc(i64 14336)
  %77 = bitcast i8* %malloccall7 to [896 x %"struct.ap_uint<128>"]*
  %malloccall8 = tail call i8* @malloc(i64 14336)
  %78 = bitcast i8* %malloccall8 to [896 x %"struct.ap_uint<128>"]*
  %malloccall9 = tail call i8* @malloc(i64 14336)
  %79 = bitcast i8* %malloccall9 to [896 x %"struct.ap_uint<128>"]*
  %malloccall10 = tail call i8* @malloc(i64 14336)
  %80 = bitcast i8* %malloccall10 to [896 x %"struct.ap_uint<128>"]*
  %malloccall11 = tail call i8* @malloc(i64 14336)
  %81 = bitcast i8* %malloccall11 to [896 x %"struct.ap_uint<128>"]*
  %malloccall12 = tail call i8* @malloc(i64 14336)
  %82 = bitcast i8* %malloccall12 to [896 x %"struct.ap_uint<128>"]*
  %malloccall13 = tail call i8* @malloc(i64 14336)
  %83 = bitcast i8* %malloccall13 to [896 x %"struct.ap_uint<128>"]*
  %malloccall14 = tail call i8* @malloc(i64 14336)
  %84 = bitcast i8* %malloccall14 to [896 x %"struct.ap_uint<128>"]*
  %malloccall15 = tail call i8* @malloc(i64 14336)
  %85 = bitcast i8* %malloccall15 to [896 x %"struct.ap_uint<128>"]*
  %malloccall16 = tail call i8* @malloc(i64 14336)
  %86 = bitcast i8* %malloccall16 to [896 x %"struct.ap_uint<128>"]*
  %malloccall17 = tail call i8* @malloc(i64 14336)
  %87 = bitcast i8* %malloccall17 to [896 x %"struct.ap_uint<128>"]*
  %malloccall18 = tail call i8* @malloc(i64 14336)
  %88 = bitcast i8* %malloccall18 to [896 x %"struct.ap_uint<128>"]*
  %malloccall19 = tail call i8* @malloc(i64 14336)
  %89 = bitcast i8* %malloccall19 to [896 x %"struct.ap_uint<128>"]*
  %90 = bitcast i32* %0 to [2050 x i32]*
  %91 = bitcast i32* %1 to [2831 x i32]*
  %92 = bitcast float* %2 to [2831 x float]*
  %93 = bitcast i128* %5 to [513 x i128]*
  %94 = bitcast i128* %6 to [513 x i128]*
  %95 = bitcast i128* %7 to [513 x i128]*
  %96 = bitcast i128* %8 to [513 x i128]*
  %97 = bitcast i128* %9 to [896 x i128]*
  %98 = bitcast i128* %10 to [896 x i128]*
  %99 = bitcast i128* %11 to [896 x i128]*
  %100 = bitcast i128* %12 to [896 x i128]*
  %101 = bitcast i128* %13 to [896 x i128]*
  %102 = bitcast i128* %14 to [896 x i128]*
  %103 = bitcast i128* %15 to [896 x i128]*
  %104 = bitcast i128* %16 to [896 x i128]*
  %105 = bitcast i128* %19 to [896 x i128]*
  %106 = bitcast i128* %20 to [896 x i128]*
  %107 = bitcast i128* %21 to [896 x i128]*
  %108 = bitcast i128* %22 to [896 x i128]*
  %109 = bitcast i128* %23 to [896 x i128]*
  %110 = bitcast i128* %24 to [896 x i128]*
  %111 = bitcast i128* %25 to [896 x i128]*
  %112 = bitcast i128* %26 to [896 x i128]*
  %113 = bitcast i32* %27 to [2050 x i32]*
  %114 = bitcast i32* %28 to [3627 x i32]*
  %115 = bitcast float* %29 to [3627 x float]*
  call void @copy_out([2050 x i32]* null, [2050 x i32]* %90, [2831 x i32]* null, [2831 x i32]* %91, [2831 x float]* null, [2831 x float]* %92, [513 x %"struct.ap_uint<128>"]* %70, [513 x i128]* %93, [513 x %"struct.ap_uint<128>"]* %71, [513 x i128]* %94, [513 x %"struct.ap_uint<128>"]* %72, [513 x i128]* %95, [513 x %"struct.ap_uint<128>"]* %73, [513 x i128]* %96, [896 x %"struct.ap_uint<128>"]* %74, [896 x i128]* %97, [896 x %"struct.ap_uint<128>"]* %75, [896 x i128]* %98, [896 x %"struct.ap_uint<128>"]* %76, [896 x i128]* %99, [896 x %"struct.ap_uint<128>"]* %77, [896 x i128]* %100, [896 x %"struct.ap_uint<128>"]* %78, [896 x i128]* %101, [896 x %"struct.ap_uint<128>"]* %79, [896 x i128]* %102, [896 x %"struct.ap_uint<128>"]* %80, [896 x i128]* %103, [896 x %"struct.ap_uint<128>"]* %81, [896 x i128]* %104, [896 x %"struct.ap_uint<128>"]* %82, [896 x i128]* %105, [896 x %"struct.ap_uint<128>"]* %83, [896 x i128]* %106, [896 x %"struct.ap_uint<128>"]* %84, [896 x i128]* %107, [896 x %"struct.ap_uint<128>"]* %85, [896 x i128]* %108, [896 x %"struct.ap_uint<128>"]* %86, [896 x i128]* %109, [896 x %"struct.ap_uint<128>"]* %87, [896 x i128]* %110, [896 x %"struct.ap_uint<128>"]* %88, [896 x i128]* %111, [896 x %"struct.ap_uint<128>"]* %89, [896 x i128]* %112, [2050 x i32]* null, [2050 x i32]* %113, [3627 x i32]* null, [3627 x i32]* %114, [3627 x float]* null, [3627 x float]* %115, i32* null, i32* %33, i32* null, i32* %34, i32* null, i32* %35, i32* null, i32* %36, i32* null, i32* %37, i32* null, i32* %38, i32* null, i32* %39, i32* null, i32* %40, i32* null, i32* %41, i32* null, i32* %42, i32* null, i32* %43, i32* null, i32* %44, i32* null, i32* %45, i32* null, i32* %46, i32* null, i32* %47, i32* null, i32* %48, i32* null, i32* %49, i32* null, i32* %50, i32* null, i32* %51, i32* null, i32* %52, i32* null, i32* %53, i32* null, i32* %54, i32* null, i32* %55, i32* null, i32* %56, i32* null, i32* %57, i32* null, i32* %58, i32* null, i32* %59, i32* null, i32* %60, i32* null, i32* %61, i32* null, i32* %62, i32* null, i32* %63, i32* null, i32* %64, i32* null, i32* %65, i32* null, i32* %66, i32* null, i32* %67, i32* null, i32* %68, i32* null, i32* %69)
  %116 = bitcast [2050 x i32]* %90 to i32*
  %117 = bitcast [2831 x i32]* %91 to i32*
  %118 = bitcast [2831 x float]* %92 to float*
  %119 = bitcast [513 x %"struct.ap_uint<128>"]* %70 to %"struct.ap_uint<128>"*
  %120 = bitcast [513 x %"struct.ap_uint<128>"]* %71 to %"struct.ap_uint<128>"*
  %121 = bitcast [513 x %"struct.ap_uint<128>"]* %72 to %"struct.ap_uint<128>"*
  %122 = bitcast [513 x %"struct.ap_uint<128>"]* %73 to %"struct.ap_uint<128>"*
  %123 = bitcast [896 x %"struct.ap_uint<128>"]* %74 to %"struct.ap_uint<128>"*
  %124 = bitcast [896 x %"struct.ap_uint<128>"]* %75 to %"struct.ap_uint<128>"*
  %125 = bitcast [896 x %"struct.ap_uint<128>"]* %76 to %"struct.ap_uint<128>"*
  %126 = bitcast [896 x %"struct.ap_uint<128>"]* %77 to %"struct.ap_uint<128>"*
  %127 = bitcast [896 x %"struct.ap_uint<128>"]* %78 to %"struct.ap_uint<128>"*
  %128 = bitcast [896 x %"struct.ap_uint<128>"]* %79 to %"struct.ap_uint<128>"*
  %129 = bitcast [896 x %"struct.ap_uint<128>"]* %80 to %"struct.ap_uint<128>"*
  %130 = bitcast [896 x %"struct.ap_uint<128>"]* %81 to %"struct.ap_uint<128>"*
  %131 = bitcast [896 x %"struct.ap_uint<128>"]* %82 to %"struct.ap_uint<128>"*
  %132 = bitcast [896 x %"struct.ap_uint<128>"]* %83 to %"struct.ap_uint<128>"*
  %133 = bitcast [896 x %"struct.ap_uint<128>"]* %84 to %"struct.ap_uint<128>"*
  %134 = bitcast [896 x %"struct.ap_uint<128>"]* %85 to %"struct.ap_uint<128>"*
  %135 = bitcast [896 x %"struct.ap_uint<128>"]* %86 to %"struct.ap_uint<128>"*
  %136 = bitcast [896 x %"struct.ap_uint<128>"]* %87 to %"struct.ap_uint<128>"*
  %137 = bitcast [896 x %"struct.ap_uint<128>"]* %88 to %"struct.ap_uint<128>"*
  %138 = bitcast [896 x %"struct.ap_uint<128>"]* %89 to %"struct.ap_uint<128>"*
  %139 = bitcast [2050 x i32]* %113 to i32*
  %140 = bitcast [3627 x i32]* %114 to i32*
  %141 = bitcast [3627 x float]* %115 to float*
  call void @spmm_hw_stub(i32* %116, i32* %117, float* %118, i32 %3, i32 %4, %"struct.ap_uint<128>"* %119, %"struct.ap_uint<128>"* %120, %"struct.ap_uint<128>"* %121, %"struct.ap_uint<128>"* %122, %"struct.ap_uint<128>"* %123, %"struct.ap_uint<128>"* %124, %"struct.ap_uint<128>"* %125, %"struct.ap_uint<128>"* %126, %"struct.ap_uint<128>"* %127, %"struct.ap_uint<128>"* %128, %"struct.ap_uint<128>"* %129, %"struct.ap_uint<128>"* %130, i32 %17, i32 %18, %"struct.ap_uint<128>"* %131, %"struct.ap_uint<128>"* %132, %"struct.ap_uint<128>"* %133, %"struct.ap_uint<128>"* %134, %"struct.ap_uint<128>"* %135, %"struct.ap_uint<128>"* %136, %"struct.ap_uint<128>"* %137, %"struct.ap_uint<128>"* %138, i32* %139, i32* %140, float* %141, i32 %30, i32 %31, i32 %32, i32* %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42, i32* %43, i32* %44, i32* %45, i32* %46, i32* %47, i32* %48, i32* %49, i32* %50, i32* %51, i32* %52, i32* %53, i32* %54, i32* %55, i32* %56, i32* %57, i32* %58, i32* %59, i32* %60, i32* %61, i32* %62, i32* %63, i32* %64, i32* %65, i32* %66, i32* %67, i32* %68, i32* %69)
  call void @copy_in([2050 x i32]* null, [2050 x i32]* %90, [2831 x i32]* null, [2831 x i32]* %91, [2831 x float]* null, [2831 x float]* %92, [513 x %"struct.ap_uint<128>"]* %70, [513 x i128]* %93, [513 x %"struct.ap_uint<128>"]* %71, [513 x i128]* %94, [513 x %"struct.ap_uint<128>"]* %72, [513 x i128]* %95, [513 x %"struct.ap_uint<128>"]* %73, [513 x i128]* %96, [896 x %"struct.ap_uint<128>"]* %74, [896 x i128]* %97, [896 x %"struct.ap_uint<128>"]* %75, [896 x i128]* %98, [896 x %"struct.ap_uint<128>"]* %76, [896 x i128]* %99, [896 x %"struct.ap_uint<128>"]* %77, [896 x i128]* %100, [896 x %"struct.ap_uint<128>"]* %78, [896 x i128]* %101, [896 x %"struct.ap_uint<128>"]* %79, [896 x i128]* %102, [896 x %"struct.ap_uint<128>"]* %80, [896 x i128]* %103, [896 x %"struct.ap_uint<128>"]* %81, [896 x i128]* %104, [896 x %"struct.ap_uint<128>"]* %82, [896 x i128]* %105, [896 x %"struct.ap_uint<128>"]* %83, [896 x i128]* %106, [896 x %"struct.ap_uint<128>"]* %84, [896 x i128]* %107, [896 x %"struct.ap_uint<128>"]* %85, [896 x i128]* %108, [896 x %"struct.ap_uint<128>"]* %86, [896 x i128]* %109, [896 x %"struct.ap_uint<128>"]* %87, [896 x i128]* %110, [896 x %"struct.ap_uint<128>"]* %88, [896 x i128]* %111, [896 x %"struct.ap_uint<128>"]* %89, [896 x i128]* %112, [2050 x i32]* null, [2050 x i32]* %113, [3627 x i32]* null, [3627 x i32]* %114, [3627 x float]* null, [3627 x float]* %115, i32* null, i32* %33, i32* null, i32* %34, i32* null, i32* %35, i32* null, i32* %36, i32* null, i32* %37, i32* null, i32* %38, i32* null, i32* %39, i32* null, i32* %40, i32* null, i32* %41, i32* null, i32* %42, i32* null, i32* %43, i32* null, i32* %44, i32* null, i32* %45, i32* null, i32* %46, i32* null, i32* %47, i32* null, i32* %48, i32* null, i32* %49, i32* null, i32* %50, i32* null, i32* %51, i32* null, i32* %52, i32* null, i32* %53, i32* null, i32* %54, i32* null, i32* %55, i32* null, i32* %56, i32* null, i32* %57, i32* null, i32* %58, i32* null, i32* %59, i32* null, i32* %60, i32* null, i32* %61, i32* null, i32* %62, i32* null, i32* %63, i32* null, i32* %64, i32* null, i32* %65, i32* null, i32* %66, i32* null, i32* %67, i32* null, i32* %68, i32* null, i32* %69)
  ret void
}

declare void @spmm_hw_stub(i32*, i32*, float*, i32, i32, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, i32, i32, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, %"struct.ap_uint<128>"*, i32*, i32*, float*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
