; ModuleID = '/output/block_lu_hls/experiments/bcsstk17_large_hls_v1/proj_large_getrf/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_large_getrf_ir(i32* noalias nocapture nonnull readonly %a_ptr, i32* noalias nocapture nonnull readonly %a_idx, float* noalias nocapture nonnull readonly %a_val, i32* noalias nocapture nonnull readonly %l_ptr, i32* noalias nocapture nonnull readonly %l_idx, float* noalias nocapture nonnull %l_val, i32* noalias nocapture nonnull readonly %u_ptr, i32* noalias nocapture nonnull readonly %u_idx, float* noalias nocapture nonnull %u_val, i32* noalias nocapture nonnull readonly %u_diag_pos, float* noalias nocapture nonnull %work, i32* noalias nocapture nonnull %mark, i32 %n, float %pivot_eps, i32* noalias nocapture nonnull %status, i64* noalias nocapture nonnull %muladds, i64* noalias nocapture nonnull %divisions) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 43900)
  %a_ptr_copy = bitcast i8* %malloccall to [10975 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 1714600)
  %a_idx_copy = bitcast i8* %malloccall1 to [428650 x i32]*
  %malloccall2 = tail call i8* @malloc(i64 1714600)
  %a_val_copy = bitcast i8* %malloccall2 to [428650 x float]*
  %malloccall3 = tail call i8* @malloc(i64 43900)
  %l_ptr_copy = bitcast i8* %malloccall3 to [10975 x i32]*
  %malloccall4 = tail call i8* @malloc(i64 6384960)
  %l_idx_copy = bitcast i8* %malloccall4 to [1596240 x i32]*
  %malloccall5 = tail call i8* @malloc(i64 6384960)
  %l_val_copy = bitcast i8* %malloccall5 to [1596240 x float]*
  %malloccall6 = tail call i8* @malloc(i64 43900)
  %u_ptr_copy = bitcast i8* %malloccall6 to [10975 x i32]*
  %malloccall7 = tail call i8* @malloc(i64 6384960)
  %u_idx_copy = bitcast i8* %malloccall7 to [1596240 x i32]*
  %malloccall8 = tail call i8* @malloc(i64 6384960)
  %u_val_copy = bitcast i8* %malloccall8 to [1596240 x float]*
  %malloccall9 = tail call i8* @malloc(i64 43896)
  %u_diag_pos_copy = bitcast i8* %malloccall9 to [10974 x i32]*
  %malloccall10 = tail call i8* @malloc(i64 43896)
  %work_copy = bitcast i8* %malloccall10 to [10974 x float]*
  %malloccall11 = tail call i8* @malloc(i64 43896)
  %mark_copy = bitcast i8* %malloccall11 to [10974 x i32]*
  %status_copy = alloca i32, align 512
  %muladds_copy = alloca i64, align 512
  %divisions_copy = alloca i64, align 512
  %0 = bitcast i32* %a_ptr to [10975 x i32]*
  %1 = bitcast i32* %a_idx to [428650 x i32]*
  %2 = bitcast float* %a_val to [428650 x float]*
  %3 = bitcast i32* %l_ptr to [10975 x i32]*
  %4 = bitcast i32* %l_idx to [1596240 x i32]*
  %5 = bitcast float* %l_val to [1596240 x float]*
  %6 = bitcast i32* %u_ptr to [10975 x i32]*
  %7 = bitcast i32* %u_idx to [1596240 x i32]*
  %8 = bitcast float* %u_val to [1596240 x float]*
  %9 = bitcast i32* %u_diag_pos to [10974 x i32]*
  %10 = bitcast float* %work to [10974 x float]*
  %11 = bitcast i32* %mark to [10974 x i32]*
  call fastcc void @copy_in([10975 x i32]* nonnull %0, [10975 x i32]* %a_ptr_copy, [428650 x i32]* nonnull %1, [428650 x i32]* %a_idx_copy, [428650 x float]* nonnull %2, [428650 x float]* %a_val_copy, [10975 x i32]* nonnull %3, [10975 x i32]* %l_ptr_copy, [1596240 x i32]* nonnull %4, [1596240 x i32]* %l_idx_copy, [1596240 x float]* nonnull %5, [1596240 x float]* %l_val_copy, [10975 x i32]* nonnull %6, [10975 x i32]* %u_ptr_copy, [1596240 x i32]* nonnull %7, [1596240 x i32]* %u_idx_copy, [1596240 x float]* nonnull %8, [1596240 x float]* %u_val_copy, [10974 x i32]* nonnull %9, [10974 x i32]* %u_diag_pos_copy, [10974 x float]* nonnull %10, [10974 x float]* %work_copy, [10974 x i32]* nonnull %11, [10974 x i32]* %mark_copy, i32* nonnull %status, i32* nonnull align 512 %status_copy, i64* nonnull %muladds, i64* nonnull align 512 %muladds_copy, i64* nonnull %divisions, i64* nonnull align 512 %divisions_copy)
  %12 = getelementptr inbounds [10975 x i32], [10975 x i32]* %a_ptr_copy, i32 0, i32 0
  %13 = getelementptr inbounds [428650 x i32], [428650 x i32]* %a_idx_copy, i32 0, i32 0
  %14 = getelementptr inbounds [428650 x float], [428650 x float]* %a_val_copy, i32 0, i32 0
  %15 = getelementptr inbounds [10975 x i32], [10975 x i32]* %l_ptr_copy, i32 0, i32 0
  %16 = getelementptr inbounds [1596240 x i32], [1596240 x i32]* %l_idx_copy, i32 0, i32 0
  %17 = getelementptr inbounds [1596240 x float], [1596240 x float]* %l_val_copy, i32 0, i32 0
  %18 = getelementptr inbounds [10975 x i32], [10975 x i32]* %u_ptr_copy, i32 0, i32 0
  %19 = getelementptr inbounds [1596240 x i32], [1596240 x i32]* %u_idx_copy, i32 0, i32 0
  %20 = getelementptr inbounds [1596240 x float], [1596240 x float]* %u_val_copy, i32 0, i32 0
  %21 = getelementptr inbounds [10974 x i32], [10974 x i32]* %u_diag_pos_copy, i32 0, i32 0
  %22 = getelementptr inbounds [10974 x float], [10974 x float]* %work_copy, i32 0, i32 0
  %23 = getelementptr inbounds [10974 x i32], [10974 x i32]* %mark_copy, i32 0, i32 0
  call void @apatb_large_getrf_hw(i32* %12, i32* %13, float* %14, i32* %15, i32* %16, float* %17, i32* %18, i32* %19, float* %20, i32* %21, float* %22, i32* %23, i32 %n, float %pivot_eps, i32* %status_copy, i64* %muladds_copy, i64* %divisions_copy)
  call void @copy_back([10975 x i32]* %0, [10975 x i32]* %a_ptr_copy, [428650 x i32]* %1, [428650 x i32]* %a_idx_copy, [428650 x float]* %2, [428650 x float]* %a_val_copy, [10975 x i32]* %3, [10975 x i32]* %l_ptr_copy, [1596240 x i32]* %4, [1596240 x i32]* %l_idx_copy, [1596240 x float]* %5, [1596240 x float]* %l_val_copy, [10975 x i32]* %6, [10975 x i32]* %u_ptr_copy, [1596240 x i32]* %7, [1596240 x i32]* %u_idx_copy, [1596240 x float]* %8, [1596240 x float]* %u_val_copy, [10974 x i32]* %9, [10974 x i32]* %u_diag_pos_copy, [10974 x float]* %10, [10974 x float]* %work_copy, [10974 x i32]* %11, [10974 x i32]* %mark_copy, i32* %status, i32* %status_copy, i64* %muladds, i64* %muladds_copy, i64* %divisions, i64* %divisions_copy)
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
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([10975 x i32]* noalias readonly, [10975 x i32]* noalias, [428650 x i32]* noalias readonly, [428650 x i32]* noalias, [428650 x float]* noalias readonly, [428650 x float]* noalias, [10975 x i32]* noalias readonly, [10975 x i32]* noalias, [1596240 x i32]* noalias readonly, [1596240 x i32]* noalias, [1596240 x float]* noalias readonly, [1596240 x float]* noalias, [10975 x i32]* noalias readonly, [10975 x i32]* noalias, [1596240 x i32]* noalias readonly, [1596240 x i32]* noalias, [1596240 x float]* noalias readonly, [1596240 x float]* noalias, [10974 x i32]* noalias readonly, [10974 x i32]* noalias, [10974 x float]* noalias readonly, [10974 x float]* noalias, [10974 x i32]* noalias readonly, [10974 x i32]* noalias, i32* noalias readonly, i32* noalias align 512, i64* noalias readonly, i64* noalias align 512, i64* noalias readonly, i64* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a10975i32([10975 x i32]* %1, [10975 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a428650i32([428650 x i32]* %3, [428650 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a428650f32([428650 x float]* %5, [428650 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a10975i32([10975 x i32]* %7, [10975 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a1596240i32([1596240 x i32]* %9, [1596240 x i32]* %8)
  call fastcc void @onebyonecpy_hls.p0a1596240f32([1596240 x float]* %11, [1596240 x float]* %10)
  call fastcc void @onebyonecpy_hls.p0a10975i32([10975 x i32]* %13, [10975 x i32]* %12)
  call fastcc void @onebyonecpy_hls.p0a1596240i32([1596240 x i32]* %15, [1596240 x i32]* %14)
  call fastcc void @onebyonecpy_hls.p0a1596240f32([1596240 x float]* %17, [1596240 x float]* %16)
  call fastcc void @onebyonecpy_hls.p0a10974i32([10974 x i32]* %19, [10974 x i32]* %18)
  call fastcc void @onebyonecpy_hls.p0a10974f32([10974 x float]* %21, [10974 x float]* %20)
  call fastcc void @onebyonecpy_hls.p0a10974i32([10974 x i32]* %23, [10974 x i32]* %22)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %25, i32* %24)
  call fastcc void @onebyonecpy_hls.p0i64(i64* align 512 %27, i64* %26)
  call fastcc void @onebyonecpy_hls.p0i64(i64* align 512 %29, i64* %28)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a10975i32([10975 x i32]* noalias, [10975 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [10975 x i32]* %0, null
  %3 = icmp eq [10975 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [10975 x i32], [10975 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [10975 x i32], [10975 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10975
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a428650i32([428650 x i32]* noalias, [428650 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [428650 x i32]* %0, null
  %3 = icmp eq [428650 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [428650 x i32], [428650 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [428650 x i32], [428650 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 428650
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a428650f32([428650 x float]* noalias, [428650 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [428650 x float]* %0, null
  %3 = icmp eq [428650 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [428650 x float], [428650 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [428650 x float], [428650 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 428650
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1596240i32([1596240 x i32]* noalias, [1596240 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1596240 x i32]* %0, null
  %3 = icmp eq [1596240 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1596240 x i32], [1596240 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1596240 x i32], [1596240 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1596240
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1596240f32([1596240 x float]* noalias, [1596240 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [1596240 x float]* %0, null
  %3 = icmp eq [1596240 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1596240 x float], [1596240 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [1596240 x float], [1596240 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 1596240
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a10974i32([10974 x i32]* noalias, [10974 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [10974 x i32]* %0, null
  %3 = icmp eq [10974 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [10974 x i32], [10974 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [10974 x i32], [10974 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10974
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a10974f32([10974 x float]* noalias, [10974 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [10974 x float]* %0, null
  %3 = icmp eq [10974 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [10974 x float], [10974 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [10974 x float], [10974 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 10974
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
define internal fastcc void @copy_out([10975 x i32]* noalias, [10975 x i32]* noalias readonly, [428650 x i32]* noalias, [428650 x i32]* noalias readonly, [428650 x float]* noalias, [428650 x float]* noalias readonly, [10975 x i32]* noalias, [10975 x i32]* noalias readonly, [1596240 x i32]* noalias, [1596240 x i32]* noalias readonly, [1596240 x float]* noalias, [1596240 x float]* noalias readonly, [10975 x i32]* noalias, [10975 x i32]* noalias readonly, [1596240 x i32]* noalias, [1596240 x i32]* noalias readonly, [1596240 x float]* noalias, [1596240 x float]* noalias readonly, [10974 x i32]* noalias, [10974 x i32]* noalias readonly, [10974 x float]* noalias, [10974 x float]* noalias readonly, [10974 x i32]* noalias, [10974 x i32]* noalias readonly, i32* noalias, i32* noalias readonly align 512, i64* noalias, i64* noalias readonly align 512, i64* noalias, i64* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a10975i32([10975 x i32]* %0, [10975 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a428650i32([428650 x i32]* %2, [428650 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a428650f32([428650 x float]* %4, [428650 x float]* %5)
  call fastcc void @onebyonecpy_hls.p0a10975i32([10975 x i32]* %6, [10975 x i32]* %7)
  call fastcc void @onebyonecpy_hls.p0a1596240i32([1596240 x i32]* %8, [1596240 x i32]* %9)
  call fastcc void @onebyonecpy_hls.p0a1596240f32([1596240 x float]* %10, [1596240 x float]* %11)
  call fastcc void @onebyonecpy_hls.p0a10975i32([10975 x i32]* %12, [10975 x i32]* %13)
  call fastcc void @onebyonecpy_hls.p0a1596240i32([1596240 x i32]* %14, [1596240 x i32]* %15)
  call fastcc void @onebyonecpy_hls.p0a1596240f32([1596240 x float]* %16, [1596240 x float]* %17)
  call fastcc void @onebyonecpy_hls.p0a10974i32([10974 x i32]* %18, [10974 x i32]* %19)
  call fastcc void @onebyonecpy_hls.p0a10974f32([10974 x float]* %20, [10974 x float]* %21)
  call fastcc void @onebyonecpy_hls.p0a10974i32([10974 x i32]* %22, [10974 x i32]* %23)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %24, i32* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %26, i64* align 512 %27)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %28, i64* align 512 %29)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_large_getrf_hw(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, float*, i32*, i32, float, i32*, i64*, i64*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([10975 x i32]* noalias, [10975 x i32]* noalias readonly, [428650 x i32]* noalias, [428650 x i32]* noalias readonly, [428650 x float]* noalias, [428650 x float]* noalias readonly, [10975 x i32]* noalias, [10975 x i32]* noalias readonly, [1596240 x i32]* noalias, [1596240 x i32]* noalias readonly, [1596240 x float]* noalias, [1596240 x float]* noalias readonly, [10975 x i32]* noalias, [10975 x i32]* noalias readonly, [1596240 x i32]* noalias, [1596240 x i32]* noalias readonly, [1596240 x float]* noalias, [1596240 x float]* noalias readonly, [10974 x i32]* noalias, [10974 x i32]* noalias readonly, [10974 x float]* noalias, [10974 x float]* noalias readonly, [10974 x i32]* noalias, [10974 x i32]* noalias readonly, i32* noalias, i32* noalias readonly align 512, i64* noalias, i64* noalias readonly align 512, i64* noalias, i64* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1596240f32([1596240 x float]* %10, [1596240 x float]* %11)
  call fastcc void @onebyonecpy_hls.p0a1596240f32([1596240 x float]* %16, [1596240 x float]* %17)
  call fastcc void @onebyonecpy_hls.p0a10974f32([10974 x float]* %20, [10974 x float]* %21)
  call fastcc void @onebyonecpy_hls.p0a10974i32([10974 x i32]* %22, [10974 x i32]* %23)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %24, i32* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %26, i64* align 512 %27)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %28, i64* align 512 %29)
  ret void
}

define void @large_getrf_hw_stub_wrapper(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, float*, i32*, i32, float, i32*, i64*, i64*) #4 {
entry:
  %17 = bitcast i32* %0 to [10975 x i32]*
  %18 = bitcast i32* %1 to [428650 x i32]*
  %19 = bitcast float* %2 to [428650 x float]*
  %20 = bitcast i32* %3 to [10975 x i32]*
  %21 = bitcast i32* %4 to [1596240 x i32]*
  %22 = bitcast float* %5 to [1596240 x float]*
  %23 = bitcast i32* %6 to [10975 x i32]*
  %24 = bitcast i32* %7 to [1596240 x i32]*
  %25 = bitcast float* %8 to [1596240 x float]*
  %26 = bitcast i32* %9 to [10974 x i32]*
  %27 = bitcast float* %10 to [10974 x float]*
  %28 = bitcast i32* %11 to [10974 x i32]*
  call void @copy_out([10975 x i32]* null, [10975 x i32]* %17, [428650 x i32]* null, [428650 x i32]* %18, [428650 x float]* null, [428650 x float]* %19, [10975 x i32]* null, [10975 x i32]* %20, [1596240 x i32]* null, [1596240 x i32]* %21, [1596240 x float]* null, [1596240 x float]* %22, [10975 x i32]* null, [10975 x i32]* %23, [1596240 x i32]* null, [1596240 x i32]* %24, [1596240 x float]* null, [1596240 x float]* %25, [10974 x i32]* null, [10974 x i32]* %26, [10974 x float]* null, [10974 x float]* %27, [10974 x i32]* null, [10974 x i32]* %28, i32* null, i32* %14, i64* null, i64* %15, i64* null, i64* %16)
  %29 = bitcast [10975 x i32]* %17 to i32*
  %30 = bitcast [428650 x i32]* %18 to i32*
  %31 = bitcast [428650 x float]* %19 to float*
  %32 = bitcast [10975 x i32]* %20 to i32*
  %33 = bitcast [1596240 x i32]* %21 to i32*
  %34 = bitcast [1596240 x float]* %22 to float*
  %35 = bitcast [10975 x i32]* %23 to i32*
  %36 = bitcast [1596240 x i32]* %24 to i32*
  %37 = bitcast [1596240 x float]* %25 to float*
  %38 = bitcast [10974 x i32]* %26 to i32*
  %39 = bitcast [10974 x float]* %27 to float*
  %40 = bitcast [10974 x i32]* %28 to i32*
  call void @large_getrf_hw_stub(i32* %29, i32* %30, float* %31, i32* %32, i32* %33, float* %34, i32* %35, i32* %36, float* %37, i32* %38, float* %39, i32* %40, i32 %12, float %13, i32* %14, i64* %15, i64* %16)
  call void @copy_in([10975 x i32]* null, [10975 x i32]* %17, [428650 x i32]* null, [428650 x i32]* %18, [428650 x float]* null, [428650 x float]* %19, [10975 x i32]* null, [10975 x i32]* %20, [1596240 x i32]* null, [1596240 x i32]* %21, [1596240 x float]* null, [1596240 x float]* %22, [10975 x i32]* null, [10975 x i32]* %23, [1596240 x i32]* null, [1596240 x i32]* %24, [1596240 x float]* null, [1596240 x float]* %25, [10974 x i32]* null, [10974 x i32]* %26, [10974 x float]* null, [10974 x float]* %27, [10974 x i32]* null, [10974 x i32]* %28, i32* null, i32* %14, i64* null, i64* %15, i64* null, i64* %16)
  ret void
}

declare void @large_getrf_hw_stub(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, float*, i32*, i32, float, i32*, i64*, i64*)

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
