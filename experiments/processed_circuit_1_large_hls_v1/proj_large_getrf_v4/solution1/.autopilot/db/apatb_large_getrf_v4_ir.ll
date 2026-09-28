; ModuleID = '/output/block_lu_hls/experiments/processed_circuit_1_large_hls_v1/proj_large_getrf_v4/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_large_getrf_v4_ir(i32* noalias nocapture nonnull readonly %a_ptr, i32* noalias nocapture nonnull readonly %a_idx, float* noalias nocapture nonnull readonly %a_val, i32* noalias nocapture nonnull readonly %l_ptr, i32* noalias nocapture nonnull readonly %l_idx, float* noalias nocapture nonnull %l_val, i32* noalias nocapture nonnull readonly %u_ptr, i32* noalias nocapture nonnull readonly %u_idx, float* noalias nocapture nonnull %u_val, i32* noalias nocapture nonnull readonly %u_diag_pos, i32 %n, float %pivot_eps, i32* noalias nocapture nonnull %status, i64* noalias nocapture nonnull %muladds, i64* noalias nocapture nonnull %divisions) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 10500)
  %a_ptr_copy = bitcast i8* %malloccall to [2625 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 182496)
  %a_idx_copy = bitcast i8* %malloccall1 to [45624 x i32]*
  %malloccall2 = tail call i8* @malloc(i64 182496)
  %a_val_copy = bitcast i8* %malloccall2 to [45624 x float]*
  %malloccall3 = tail call i8* @malloc(i64 10500)
  %l_ptr_copy = bitcast i8* %malloccall3 to [2625 x i32]*
  %malloccall4 = tail call i8* @malloc(i64 96496)
  %l_idx_copy = bitcast i8* %malloccall4 to [24124 x i32]*
  %malloccall5 = tail call i8* @malloc(i64 96496)
  %l_val_copy = bitcast i8* %malloccall5 to [24124 x float]*
  %malloccall6 = tail call i8* @malloc(i64 10500)
  %u_ptr_copy = bitcast i8* %malloccall6 to [2625 x i32]*
  %malloccall7 = tail call i8* @malloc(i64 96496)
  %u_idx_copy = bitcast i8* %malloccall7 to [24124 x i32]*
  %malloccall8 = tail call i8* @malloc(i64 96496)
  %u_val_copy = bitcast i8* %malloccall8 to [24124 x float]*
  %malloccall9 = tail call i8* @malloc(i64 10496)
  %u_diag_pos_copy = bitcast i8* %malloccall9 to [2624 x i32]*
  %status_copy = alloca i32, align 512
  %muladds_copy = alloca i64, align 512
  %divisions_copy = alloca i64, align 512
  %0 = bitcast i32* %a_ptr to [2625 x i32]*
  %1 = bitcast i32* %a_idx to [45624 x i32]*
  %2 = bitcast float* %a_val to [45624 x float]*
  %3 = bitcast i32* %l_ptr to [2625 x i32]*
  %4 = bitcast i32* %l_idx to [24124 x i32]*
  %5 = bitcast float* %l_val to [24124 x float]*
  %6 = bitcast i32* %u_ptr to [2625 x i32]*
  %7 = bitcast i32* %u_idx to [24124 x i32]*
  %8 = bitcast float* %u_val to [24124 x float]*
  %9 = bitcast i32* %u_diag_pos to [2624 x i32]*
  call fastcc void @copy_in([2625 x i32]* nonnull %0, [2625 x i32]* %a_ptr_copy, [45624 x i32]* nonnull %1, [45624 x i32]* %a_idx_copy, [45624 x float]* nonnull %2, [45624 x float]* %a_val_copy, [2625 x i32]* nonnull %3, [2625 x i32]* %l_ptr_copy, [24124 x i32]* nonnull %4, [24124 x i32]* %l_idx_copy, [24124 x float]* nonnull %5, [24124 x float]* %l_val_copy, [2625 x i32]* nonnull %6, [2625 x i32]* %u_ptr_copy, [24124 x i32]* nonnull %7, [24124 x i32]* %u_idx_copy, [24124 x float]* nonnull %8, [24124 x float]* %u_val_copy, [2624 x i32]* nonnull %9, [2624 x i32]* %u_diag_pos_copy, i32* nonnull %status, i32* nonnull align 512 %status_copy, i64* nonnull %muladds, i64* nonnull align 512 %muladds_copy, i64* nonnull %divisions, i64* nonnull align 512 %divisions_copy)
  %10 = getelementptr inbounds [2625 x i32], [2625 x i32]* %a_ptr_copy, i32 0, i32 0
  %11 = getelementptr inbounds [45624 x i32], [45624 x i32]* %a_idx_copy, i32 0, i32 0
  %12 = getelementptr inbounds [45624 x float], [45624 x float]* %a_val_copy, i32 0, i32 0
  %13 = getelementptr inbounds [2625 x i32], [2625 x i32]* %l_ptr_copy, i32 0, i32 0
  %14 = getelementptr inbounds [24124 x i32], [24124 x i32]* %l_idx_copy, i32 0, i32 0
  %15 = getelementptr inbounds [24124 x float], [24124 x float]* %l_val_copy, i32 0, i32 0
  %16 = getelementptr inbounds [2625 x i32], [2625 x i32]* %u_ptr_copy, i32 0, i32 0
  %17 = getelementptr inbounds [24124 x i32], [24124 x i32]* %u_idx_copy, i32 0, i32 0
  %18 = getelementptr inbounds [24124 x float], [24124 x float]* %u_val_copy, i32 0, i32 0
  %19 = getelementptr inbounds [2624 x i32], [2624 x i32]* %u_diag_pos_copy, i32 0, i32 0
  call void @apatb_large_getrf_v4_hw(i32* %10, i32* %11, float* %12, i32* %13, i32* %14, float* %15, i32* %16, i32* %17, float* %18, i32* %19, i32 %n, float %pivot_eps, i32* %status_copy, i64* %muladds_copy, i64* %divisions_copy)
  call void @copy_back([2625 x i32]* %0, [2625 x i32]* %a_ptr_copy, [45624 x i32]* %1, [45624 x i32]* %a_idx_copy, [45624 x float]* %2, [45624 x float]* %a_val_copy, [2625 x i32]* %3, [2625 x i32]* %l_ptr_copy, [24124 x i32]* %4, [24124 x i32]* %l_idx_copy, [24124 x float]* %5, [24124 x float]* %l_val_copy, [2625 x i32]* %6, [2625 x i32]* %u_ptr_copy, [24124 x i32]* %7, [24124 x i32]* %u_idx_copy, [24124 x float]* %8, [24124 x float]* %u_val_copy, [2624 x i32]* %9, [2624 x i32]* %u_diag_pos_copy, i32* %status, i32* %status_copy, i64* %muladds, i64* %muladds_copy, i64* %divisions, i64* %divisions_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  tail call void @free(i8* %malloccall4)
  tail call void @free(i8* %malloccall5)
  tail call void @free(i8* %malloccall6)
  tail call void @free(i8* %malloccall7)
  tail call void @free(i8* %malloccall8)
  tail call void @free(i8* %malloccall9)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([2625 x i32]* noalias readonly, [2625 x i32]* noalias, [45624 x i32]* noalias readonly, [45624 x i32]* noalias, [45624 x float]* noalias readonly, [45624 x float]* noalias, [2625 x i32]* noalias readonly, [2625 x i32]* noalias, [24124 x i32]* noalias readonly, [24124 x i32]* noalias, [24124 x float]* noalias readonly, [24124 x float]* noalias, [2625 x i32]* noalias readonly, [2625 x i32]* noalias, [24124 x i32]* noalias readonly, [24124 x i32]* noalias, [24124 x float]* noalias readonly, [24124 x float]* noalias, [2624 x i32]* noalias readonly, [2624 x i32]* noalias, i32* noalias readonly, i32* noalias align 512, i64* noalias readonly, i64* noalias align 512, i64* noalias readonly, i64* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2625i32([2625 x i32]* %1, [2625 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a45624i32([45624 x i32]* %3, [45624 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a45624f32([45624 x float]* %5, [45624 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a2625i32([2625 x i32]* %7, [2625 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a24124i32([24124 x i32]* %9, [24124 x i32]* %8)
  call fastcc void @onebyonecpy_hls.p0a24124f32([24124 x float]* %11, [24124 x float]* %10)
  call fastcc void @onebyonecpy_hls.p0a2625i32([2625 x i32]* %13, [2625 x i32]* %12)
  call fastcc void @onebyonecpy_hls.p0a24124i32([24124 x i32]* %15, [24124 x i32]* %14)
  call fastcc void @onebyonecpy_hls.p0a24124f32([24124 x float]* %17, [24124 x float]* %16)
  call fastcc void @onebyonecpy_hls.p0a2624i32([2624 x i32]* %19, [2624 x i32]* %18)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %21, i32* %20)
  call fastcc void @onebyonecpy_hls.p0i64(i64* align 512 %23, i64* %22)
  call fastcc void @onebyonecpy_hls.p0i64(i64* align 512 %25, i64* %24)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2625i32([2625 x i32]* noalias, [2625 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2625 x i32]* %0, null
  %3 = icmp eq [2625 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2625 x i32], [2625 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [2625 x i32], [2625 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2625
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a45624i32([45624 x i32]* noalias, [45624 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [45624 x i32]* %0, null
  %3 = icmp eq [45624 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [45624 x i32], [45624 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [45624 x i32], [45624 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 45624
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a45624f32([45624 x float]* noalias, [45624 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [45624 x float]* %0, null
  %3 = icmp eq [45624 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [45624 x float], [45624 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [45624 x float], [45624 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 45624
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a24124i32([24124 x i32]* noalias, [24124 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [24124 x i32]* %0, null
  %3 = icmp eq [24124 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [24124 x i32], [24124 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [24124 x i32], [24124 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 24124
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a24124f32([24124 x float]* noalias, [24124 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [24124 x float]* %0, null
  %3 = icmp eq [24124 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [24124 x float], [24124 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [24124 x float], [24124 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 24124
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2624i32([2624 x i32]* noalias, [2624 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [2624 x i32]* %0, null
  %3 = icmp eq [2624 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2624 x i32], [2624 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [2624 x i32], [2624 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 2624
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
define internal fastcc void @onebyonecpy_hls.p0i64(i64* noalias align 512, i64* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i64* %0, null
  %3 = icmp eq i64* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i64, i64* %1, align 8
  store i64 %5, i64* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([2625 x i32]* noalias, [2625 x i32]* noalias readonly, [45624 x i32]* noalias, [45624 x i32]* noalias readonly, [45624 x float]* noalias, [45624 x float]* noalias readonly, [2625 x i32]* noalias, [2625 x i32]* noalias readonly, [24124 x i32]* noalias, [24124 x i32]* noalias readonly, [24124 x float]* noalias, [24124 x float]* noalias readonly, [2625 x i32]* noalias, [2625 x i32]* noalias readonly, [24124 x i32]* noalias, [24124 x i32]* noalias readonly, [24124 x float]* noalias, [24124 x float]* noalias readonly, [2624 x i32]* noalias, [2624 x i32]* noalias readonly, i32* noalias, i32* noalias readonly align 512, i64* noalias, i64* noalias readonly align 512, i64* noalias, i64* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2625i32([2625 x i32]* %0, [2625 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a45624i32([45624 x i32]* %2, [45624 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a45624f32([45624 x float]* %4, [45624 x float]* %5)
  call fastcc void @onebyonecpy_hls.p0a2625i32([2625 x i32]* %6, [2625 x i32]* %7)
  call fastcc void @onebyonecpy_hls.p0a24124i32([24124 x i32]* %8, [24124 x i32]* %9)
  call fastcc void @onebyonecpy_hls.p0a24124f32([24124 x float]* %10, [24124 x float]* %11)
  call fastcc void @onebyonecpy_hls.p0a2625i32([2625 x i32]* %12, [2625 x i32]* %13)
  call fastcc void @onebyonecpy_hls.p0a24124i32([24124 x i32]* %14, [24124 x i32]* %15)
  call fastcc void @onebyonecpy_hls.p0a24124f32([24124 x float]* %16, [24124 x float]* %17)
  call fastcc void @onebyonecpy_hls.p0a2624i32([2624 x i32]* %18, [2624 x i32]* %19)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %20, i32* align 512 %21)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %22, i64* align 512 %23)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %24, i64* align 512 %25)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_large_getrf_v4_hw(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, i32, float, i32*, i64*, i64*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([2625 x i32]* noalias, [2625 x i32]* noalias readonly, [45624 x i32]* noalias, [45624 x i32]* noalias readonly, [45624 x float]* noalias, [45624 x float]* noalias readonly, [2625 x i32]* noalias, [2625 x i32]* noalias readonly, [24124 x i32]* noalias, [24124 x i32]* noalias readonly, [24124 x float]* noalias, [24124 x float]* noalias readonly, [2625 x i32]* noalias, [2625 x i32]* noalias readonly, [24124 x i32]* noalias, [24124 x i32]* noalias readonly, [24124 x float]* noalias, [24124 x float]* noalias readonly, [2624 x i32]* noalias, [2624 x i32]* noalias readonly, i32* noalias, i32* noalias readonly align 512, i64* noalias, i64* noalias readonly align 512, i64* noalias, i64* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a24124f32([24124 x float]* %10, [24124 x float]* %11)
  call fastcc void @onebyonecpy_hls.p0a24124f32([24124 x float]* %16, [24124 x float]* %17)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %20, i32* align 512 %21)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %22, i64* align 512 %23)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %24, i64* align 512 %25)
  ret void
}

define void @large_getrf_v4_hw_stub_wrapper(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, i32, float, i32*, i64*, i64*) #4 {
entry:
  %15 = bitcast i32* %0 to [2625 x i32]*
  %16 = bitcast i32* %1 to [45624 x i32]*
  %17 = bitcast float* %2 to [45624 x float]*
  %18 = bitcast i32* %3 to [2625 x i32]*
  %19 = bitcast i32* %4 to [24124 x i32]*
  %20 = bitcast float* %5 to [24124 x float]*
  %21 = bitcast i32* %6 to [2625 x i32]*
  %22 = bitcast i32* %7 to [24124 x i32]*
  %23 = bitcast float* %8 to [24124 x float]*
  %24 = bitcast i32* %9 to [2624 x i32]*
  call void @copy_out([2625 x i32]* null, [2625 x i32]* %15, [45624 x i32]* null, [45624 x i32]* %16, [45624 x float]* null, [45624 x float]* %17, [2625 x i32]* null, [2625 x i32]* %18, [24124 x i32]* null, [24124 x i32]* %19, [24124 x float]* null, [24124 x float]* %20, [2625 x i32]* null, [2625 x i32]* %21, [24124 x i32]* null, [24124 x i32]* %22, [24124 x float]* null, [24124 x float]* %23, [2624 x i32]* null, [2624 x i32]* %24, i32* null, i32* %12, i64* null, i64* %13, i64* null, i64* %14)
  %25 = bitcast [2625 x i32]* %15 to i32*
  %26 = bitcast [45624 x i32]* %16 to i32*
  %27 = bitcast [45624 x float]* %17 to float*
  %28 = bitcast [2625 x i32]* %18 to i32*
  %29 = bitcast [24124 x i32]* %19 to i32*
  %30 = bitcast [24124 x float]* %20 to float*
  %31 = bitcast [2625 x i32]* %21 to i32*
  %32 = bitcast [24124 x i32]* %22 to i32*
  %33 = bitcast [24124 x float]* %23 to float*
  %34 = bitcast [2624 x i32]* %24 to i32*
  call void @large_getrf_v4_hw_stub(i32* %25, i32* %26, float* %27, i32* %28, i32* %29, float* %30, i32* %31, i32* %32, float* %33, i32* %34, i32 %10, float %11, i32* %12, i64* %13, i64* %14)
  call void @copy_in([2625 x i32]* null, [2625 x i32]* %15, [45624 x i32]* null, [45624 x i32]* %16, [45624 x float]* null, [45624 x float]* %17, [2625 x i32]* null, [2625 x i32]* %18, [24124 x i32]* null, [24124 x i32]* %19, [24124 x float]* null, [24124 x float]* %20, [2625 x i32]* null, [2625 x i32]* %21, [24124 x i32]* null, [24124 x i32]* %22, [24124 x float]* null, [24124 x float]* %23, [2624 x i32]* null, [2624 x i32]* %24, i32* null, i32* %12, i64* null, i64* %13, i64* null, i64* %14)
  ret void
}

declare void @large_getrf_v4_hw_stub(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, i32, float, i32*, i64*, i64*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
