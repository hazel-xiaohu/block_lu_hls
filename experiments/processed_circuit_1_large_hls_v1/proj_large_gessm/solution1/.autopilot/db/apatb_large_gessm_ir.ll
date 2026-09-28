; ModuleID = '/output/block_lu_hls/experiments/processed_circuit_1_large_hls_v1/proj_large_gessm/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_large_gessm_ir(i32* noalias nocapture nonnull readonly %l_ptr, i32* noalias nocapture nonnull readonly %l_idx, float* noalias nocapture nonnull readonly %l_val, i32* noalias nocapture nonnull readonly %b_ptr, i32* noalias nocapture nonnull readonly %b_idx, float* noalias nocapture nonnull readonly %b_val, i32* noalias nocapture nonnull readonly %x_ptr, i32* noalias nocapture nonnull readonly %x_idx, float* noalias nocapture nonnull %x_val_csc, i32* noalias nocapture nonnull readonly %x_csc_to_csr, float* noalias nocapture nonnull %x_val_csr, i32* noalias nocapture nonnull readonly %active_cols, i32 %active_count, float* noalias nocapture nonnull %work, i32 %n, i32* noalias nocapture nonnull %status, i64* noalias nocapture nonnull %muladds) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 5252)
  %l_ptr_copy = bitcast i8* %malloccall to [1313 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 16424)
  %l_idx_copy = bitcast i8* %malloccall1 to [4106 x i32]*
  %malloccall2 = tail call i8* @malloc(i64 16424)
  %l_val_copy = bitcast i8* %malloccall2 to [4106 x float]*
  %malloccall3 = tail call i8* @malloc(i64 5252)
  %b_ptr_copy = bitcast i8* %malloccall3 to [1313 x i32]*
  %malloccall4 = tail call i8* @malloc(i64 28252)
  %b_idx_copy = bitcast i8* %malloccall4 to [7063 x i32]*
  %malloccall5 = tail call i8* @malloc(i64 28252)
  %b_val_copy = bitcast i8* %malloccall5 to [7063 x float]*
  %malloccall6 = tail call i8* @malloc(i64 5252)
  %x_ptr_copy = bitcast i8* %malloccall6 to [1313 x i32]*
  %malloccall7 = tail call i8* @malloc(i64 27988)
  %x_idx_copy = bitcast i8* %malloccall7 to [6997 x i32]*
  %malloccall8 = tail call i8* @malloc(i64 27988)
  %x_val_csc_copy = bitcast i8* %malloccall8 to [6997 x float]*
  %malloccall9 = tail call i8* @malloc(i64 27988)
  %x_csc_to_csr_copy = bitcast i8* %malloccall9 to [6997 x i32]*
  %malloccall10 = tail call i8* @malloc(i64 27988)
  %x_val_csr_copy = bitcast i8* %malloccall10 to [6997 x float]*
  %malloccall11 = tail call i8* @malloc(i64 5248)
  %active_cols_copy = bitcast i8* %malloccall11 to [1312 x i32]*
  %malloccall12 = tail call i8* @malloc(i64 5248)
  %work_copy = bitcast i8* %malloccall12 to [1312 x float]*
  %status_copy = alloca i32, align 512
  %muladds_copy = alloca i64, align 512
  %0 = bitcast i32* %l_ptr to [1313 x i32]*
  %1 = bitcast i32* %l_idx to [4106 x i32]*
  %2 = bitcast float* %l_val to [4106 x float]*
  %3 = bitcast i32* %b_ptr to [1313 x i32]*
  %4 = bitcast i32* %b_idx to [7063 x i32]*
  %5 = bitcast float* %b_val to [7063 x float]*
  %6 = bitcast i32* %x_ptr to [1313 x i32]*
  %7 = bitcast i32* %x_idx to [6997 x i32]*
  %8 = bitcast float* %x_val_csc to [6997 x float]*
  %9 = bitcast i32* %x_csc_to_csr to [6997 x i32]*
  %10 = bitcast float* %x_val_csr to [6997 x float]*
  %11 = bitcast i32* %active_cols to [1312 x i32]*
  %12 = bitcast float* %work to [1312 x float]*
  call fastcc void @copy_in([1313 x i32]* nonnull %0, [1313 x i32]* %l_ptr_copy, [4106 x i32]* nonnull %1, [4106 x i32]* %l_idx_copy, [4106 x float]* nonnull %2, [4106 x float]* %l_val_copy, [1313 x i32]* nonnull %3, [1313 x i32]* %b_ptr_copy, [7063 x i32]* nonnull %4, [7063 x i32]* %b_idx_copy, [7063 x float]* nonnull %5, [7063 x float]* %b_val_copy, [1313 x i32]* nonnull %6, [1313 x i32]* %x_ptr_copy, [6997 x i32]* nonnull %7, [6997 x i32]* %x_idx_copy, [6997 x float]* nonnull %8, [6997 x float]* %x_val_csc_copy, [6997 x i32]* nonnull %9, [6997 x i32]* %x_csc_to_csr_copy, [6997 x float]* nonnull %10, [6997 x float]* %x_val_csr_copy, [1312 x i32]* nonnull %11, [1312 x i32]* %active_cols_copy, [1312 x float]* nonnull %12, [1312 x float]* %work_copy, i32* nonnull %status, i32* nonnull align 512 %status_copy, i64* nonnull %muladds, i64* nonnull align 512 %muladds_copy)
  %13 = getelementptr inbounds [1313 x i32], [1313 x i32]* %l_ptr_copy, i32 0, i32 0
  %14 = getelementptr inbounds [4106 x i32], [4106 x i32]* %l_idx_copy, i32 0, i32 0
  %15 = getelementptr inbounds [4106 x float], [4106 x float]* %l_val_copy, i32 0, i32 0
  %16 = getelementptr inbounds [1313 x i32], [1313 x i32]* %b_ptr_copy, i32 0, i32 0
  %17 = getelementptr inbounds [7063 x i32], [7063 x i32]* %b_idx_copy, i32 0, i32 0
  %18 = getelementptr inbounds [7063 x float], [7063 x float]* %b_val_copy, i32 0, i32 0
  %19 = getelementptr inbounds [1313 x i32], [1313 x i32]* %x_ptr_copy, i32 0, i32 0
  %20 = getelementptr inbounds [6997 x i32], [6997 x i32]* %x_idx_copy, i32 0, i32 0
  %21 = getelementptr inbounds [6997 x float], [6997 x float]* %x_val_csc_copy, i32 0, i32 0
  %22 = getelementptr inbounds [6997 x i32], [6997 x i32]* %x_csc_to_csr_copy, i32 0, i32 0
  %23 = getelementptr inbounds [6997 x float], [6997 x float]* %x_val_csr_copy, i32 0, i32 0
  %24 = getelementptr inbounds [1312 x i32], [1312 x i32]* %active_cols_copy, i32 0, i32 0
  %25 = getelementptr inbounds [1312 x float], [1312 x float]* %work_copy, i32 0, i32 0
  call void @apatb_large_gessm_hw(i32* %13, i32* %14, float* %15, i32* %16, i32* %17, float* %18, i32* %19, i32* %20, float* %21, i32* %22, float* %23, i32* %24, i32 %active_count, float* %25, i32 %n, i32* %status_copy, i64* %muladds_copy)
  call void @copy_back([1313 x i32]* %0, [1313 x i32]* %l_ptr_copy, [4106 x i32]* %1, [4106 x i32]* %l_idx_copy, [4106 x float]* %2, [4106 x float]* %l_val_copy, [1313 x i32]* %3, [1313 x i32]* %b_ptr_copy, [7063 x i32]* %4, [7063 x i32]* %b_idx_copy, [7063 x float]* %5, [7063 x float]* %b_val_copy, [1313 x i32]* %6, [1313 x i32]* %x_ptr_copy, [6997 x i32]* %7, [6997 x i32]* %x_idx_copy, [6997 x float]* %8, [6997 x float]* %x_val_csc_copy, [6997 x i32]* %9, [6997 x i32]* %x_csc_to_csr_copy, [6997 x float]* %10, [6997 x float]* %x_val_csr_copy, [1312 x i32]* %11, [1312 x i32]* %active_cols_copy, [1312 x float]* %12, [1312 x float]* %work_copy, i32* %status, i32* %status_copy, i64* %muladds, i64* %muladds_copy)
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
  tail call void @free(i8* %malloccall10)
  tail call void @free(i8* %malloccall11)
  tail call void @free(i8* %malloccall12)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1313 x i32]* noalias readonly, [1313 x i32]* noalias, [4106 x i32]* noalias readonly, [4106 x i32]* noalias, [4106 x float]* noalias readonly, [4106 x float]* noalias, [1313 x i32]* noalias readonly, [1313 x i32]* noalias, [7063 x i32]* noalias readonly, [7063 x i32]* noalias, [7063 x float]* noalias readonly, [7063 x float]* noalias, [1313 x i32]* noalias readonly, [1313 x i32]* noalias, [6997 x i32]* noalias readonly, [6997 x i32]* noalias, [6997 x float]* noalias readonly, [6997 x float]* noalias, [6997 x i32]* noalias readonly, [6997 x i32]* noalias, [6997 x float]* noalias readonly, [6997 x float]* noalias, [1312 x i32]* noalias readonly, [1312 x i32]* noalias, [1312 x float]* noalias readonly, [1312 x float]* noalias, i32* noalias readonly, i32* noalias align 512, i64* noalias readonly, i64* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1313i32([1313 x i32]* %1, [1313 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a4106i32([4106 x i32]* %3, [4106 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a4106f32([4106 x float]* %5, [4106 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a1313i32([1313 x i32]* %7, [1313 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a7063i32([7063 x i32]* %9, [7063 x i32]* %8)
  call fastcc void @onebyonecpy_hls.p0a7063f32([7063 x float]* %11, [7063 x float]* %10)
  call fastcc void @onebyonecpy_hls.p0a1313i32([1313 x i32]* %13, [1313 x i32]* %12)
  call fastcc void @onebyonecpy_hls.p0a6997i32([6997 x i32]* %15, [6997 x i32]* %14)
  call fastcc void @onebyonecpy_hls.p0a6997f32([6997 x float]* %17, [6997 x float]* %16)
  call fastcc void @onebyonecpy_hls.p0a6997i32([6997 x i32]* %19, [6997 x i32]* %18)
  call fastcc void @onebyonecpy_hls.p0a6997f32([6997 x float]* %21, [6997 x float]* %20)
  call fastcc void @onebyonecpy_hls.p0a1312i32([1312 x i32]* %23, [1312 x i32]* %22)
  call fastcc void @onebyonecpy_hls.p0a1312f32([1312 x float]* %25, [1312 x float]* %24)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %27, i32* %26)
  call fastcc void @onebyonecpy_hls.p0i64(i64* align 512 %29, i64* %28)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1313i32([1313 x i32]* noalias, [1313 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1313 x i32]* %0, null
  %3 = icmp eq [1313 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1313 x i32], [1313 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1313 x i32], [1313 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1313
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4106i32([4106 x i32]* noalias, [4106 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4106 x i32]* %0, null
  %3 = icmp eq [4106 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4106 x i32], [4106 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [4106 x i32], [4106 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4106
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4106f32([4106 x float]* noalias, [4106 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [4106 x float]* %0, null
  %3 = icmp eq [4106 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4106 x float], [4106 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [4106 x float], [4106 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4106
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a7063i32([7063 x i32]* noalias, [7063 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [7063 x i32]* %0, null
  %3 = icmp eq [7063 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [7063 x i32], [7063 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [7063 x i32], [7063 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 7063
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a7063f32([7063 x float]* noalias, [7063 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [7063 x float]* %0, null
  %3 = icmp eq [7063 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [7063 x float], [7063 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [7063 x float], [7063 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 7063
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a6997i32([6997 x i32]* noalias, [6997 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [6997 x i32]* %0, null
  %3 = icmp eq [6997 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [6997 x i32], [6997 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [6997 x i32], [6997 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 6997
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a6997f32([6997 x float]* noalias, [6997 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [6997 x float]* %0, null
  %3 = icmp eq [6997 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [6997 x float], [6997 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [6997 x float], [6997 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 6997
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1312i32([1312 x i32]* noalias, [1312 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1312 x i32]* %0, null
  %3 = icmp eq [1312 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1312 x i32], [1312 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1312 x i32], [1312 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1312
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1312f32([1312 x float]* noalias, [1312 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1312 x float]* %0, null
  %3 = icmp eq [1312 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1312 x float], [1312 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1312 x float], [1312 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1312
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
define internal fastcc void @copy_out([1313 x i32]* noalias, [1313 x i32]* noalias readonly, [4106 x i32]* noalias, [4106 x i32]* noalias readonly, [4106 x float]* noalias, [4106 x float]* noalias readonly, [1313 x i32]* noalias, [1313 x i32]* noalias readonly, [7063 x i32]* noalias, [7063 x i32]* noalias readonly, [7063 x float]* noalias, [7063 x float]* noalias readonly, [1313 x i32]* noalias, [1313 x i32]* noalias readonly, [6997 x i32]* noalias, [6997 x i32]* noalias readonly, [6997 x float]* noalias, [6997 x float]* noalias readonly, [6997 x i32]* noalias, [6997 x i32]* noalias readonly, [6997 x float]* noalias, [6997 x float]* noalias readonly, [1312 x i32]* noalias, [1312 x i32]* noalias readonly, [1312 x float]* noalias, [1312 x float]* noalias readonly, i32* noalias, i32* noalias readonly align 512, i64* noalias, i64* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1313i32([1313 x i32]* %0, [1313 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a4106i32([4106 x i32]* %2, [4106 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a4106f32([4106 x float]* %4, [4106 x float]* %5)
  call fastcc void @onebyonecpy_hls.p0a1313i32([1313 x i32]* %6, [1313 x i32]* %7)
  call fastcc void @onebyonecpy_hls.p0a7063i32([7063 x i32]* %8, [7063 x i32]* %9)
  call fastcc void @onebyonecpy_hls.p0a7063f32([7063 x float]* %10, [7063 x float]* %11)
  call fastcc void @onebyonecpy_hls.p0a1313i32([1313 x i32]* %12, [1313 x i32]* %13)
  call fastcc void @onebyonecpy_hls.p0a6997i32([6997 x i32]* %14, [6997 x i32]* %15)
  call fastcc void @onebyonecpy_hls.p0a6997f32([6997 x float]* %16, [6997 x float]* %17)
  call fastcc void @onebyonecpy_hls.p0a6997i32([6997 x i32]* %18, [6997 x i32]* %19)
  call fastcc void @onebyonecpy_hls.p0a6997f32([6997 x float]* %20, [6997 x float]* %21)
  call fastcc void @onebyonecpy_hls.p0a1312i32([1312 x i32]* %22, [1312 x i32]* %23)
  call fastcc void @onebyonecpy_hls.p0a1312f32([1312 x float]* %24, [1312 x float]* %25)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %26, i32* align 512 %27)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %28, i64* align 512 %29)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_large_gessm_hw(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, float*, i32*, i32, float*, i32, i32*, i64*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1313 x i32]* noalias, [1313 x i32]* noalias readonly, [4106 x i32]* noalias, [4106 x i32]* noalias readonly, [4106 x float]* noalias, [4106 x float]* noalias readonly, [1313 x i32]* noalias, [1313 x i32]* noalias readonly, [7063 x i32]* noalias, [7063 x i32]* noalias readonly, [7063 x float]* noalias, [7063 x float]* noalias readonly, [1313 x i32]* noalias, [1313 x i32]* noalias readonly, [6997 x i32]* noalias, [6997 x i32]* noalias readonly, [6997 x float]* noalias, [6997 x float]* noalias readonly, [6997 x i32]* noalias, [6997 x i32]* noalias readonly, [6997 x float]* noalias, [6997 x float]* noalias readonly, [1312 x i32]* noalias, [1312 x i32]* noalias readonly, [1312 x float]* noalias, [1312 x float]* noalias readonly, i32* noalias, i32* noalias readonly align 512, i64* noalias, i64* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a6997f32([6997 x float]* %16, [6997 x float]* %17)
  call fastcc void @onebyonecpy_hls.p0a6997f32([6997 x float]* %20, [6997 x float]* %21)
  call fastcc void @onebyonecpy_hls.p0a1312f32([1312 x float]* %24, [1312 x float]* %25)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %26, i32* align 512 %27)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %28, i64* align 512 %29)
  ret void
}

define void @large_gessm_hw_stub_wrapper(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, float*, i32*, i32, float*, i32, i32*, i64*) #4 {
entry:
  %17 = bitcast i32* %0 to [1313 x i32]*
  %18 = bitcast i32* %1 to [4106 x i32]*
  %19 = bitcast float* %2 to [4106 x float]*
  %20 = bitcast i32* %3 to [1313 x i32]*
  %21 = bitcast i32* %4 to [7063 x i32]*
  %22 = bitcast float* %5 to [7063 x float]*
  %23 = bitcast i32* %6 to [1313 x i32]*
  %24 = bitcast i32* %7 to [6997 x i32]*
  %25 = bitcast float* %8 to [6997 x float]*
  %26 = bitcast i32* %9 to [6997 x i32]*
  %27 = bitcast float* %10 to [6997 x float]*
  %28 = bitcast i32* %11 to [1312 x i32]*
  %29 = bitcast float* %13 to [1312 x float]*
  call void @copy_out([1313 x i32]* null, [1313 x i32]* %17, [4106 x i32]* null, [4106 x i32]* %18, [4106 x float]* null, [4106 x float]* %19, [1313 x i32]* null, [1313 x i32]* %20, [7063 x i32]* null, [7063 x i32]* %21, [7063 x float]* null, [7063 x float]* %22, [1313 x i32]* null, [1313 x i32]* %23, [6997 x i32]* null, [6997 x i32]* %24, [6997 x float]* null, [6997 x float]* %25, [6997 x i32]* null, [6997 x i32]* %26, [6997 x float]* null, [6997 x float]* %27, [1312 x i32]* null, [1312 x i32]* %28, [1312 x float]* null, [1312 x float]* %29, i32* null, i32* %15, i64* null, i64* %16)
  %30 = bitcast [1313 x i32]* %17 to i32*
  %31 = bitcast [4106 x i32]* %18 to i32*
  %32 = bitcast [4106 x float]* %19 to float*
  %33 = bitcast [1313 x i32]* %20 to i32*
  %34 = bitcast [7063 x i32]* %21 to i32*
  %35 = bitcast [7063 x float]* %22 to float*
  %36 = bitcast [1313 x i32]* %23 to i32*
  %37 = bitcast [6997 x i32]* %24 to i32*
  %38 = bitcast [6997 x float]* %25 to float*
  %39 = bitcast [6997 x i32]* %26 to i32*
  %40 = bitcast [6997 x float]* %27 to float*
  %41 = bitcast [1312 x i32]* %28 to i32*
  %42 = bitcast [1312 x float]* %29 to float*
  call void @large_gessm_hw_stub(i32* %30, i32* %31, float* %32, i32* %33, i32* %34, float* %35, i32* %36, i32* %37, float* %38, i32* %39, float* %40, i32* %41, i32 %12, float* %42, i32 %14, i32* %15, i64* %16)
  call void @copy_in([1313 x i32]* null, [1313 x i32]* %17, [4106 x i32]* null, [4106 x i32]* %18, [4106 x float]* null, [4106 x float]* %19, [1313 x i32]* null, [1313 x i32]* %20, [7063 x i32]* null, [7063 x i32]* %21, [7063 x float]* null, [7063 x float]* %22, [1313 x i32]* null, [1313 x i32]* %23, [6997 x i32]* null, [6997 x i32]* %24, [6997 x float]* null, [6997 x float]* %25, [6997 x i32]* null, [6997 x i32]* %26, [6997 x float]* null, [6997 x float]* %27, [1312 x i32]* null, [1312 x i32]* %28, [1312 x float]* null, [1312 x float]* %29, i32* null, i32* %15, i64* null, i64* %16)
  ret void
}

declare void @large_gessm_hw_stub(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, float*, i32*, i32, float*, i32, i32*, i64*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
