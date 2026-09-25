; ModuleID = '/home/huz/project/SpMM_TCAD/test/hls_lu_shared/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_sparse_lu_shared_ir(i32 %operation, i32* noalias nocapture nonnull readonly "maxi" %A_rcsr, i32* noalias nocapture nonnull readonly "maxi" %A_cid, float* noalias nocapture nonnull readonly "maxi" %A_val, i32* noalias nocapture nonnull readonly "maxi" %L_rcsr, i32* noalias nocapture nonnull readonly "maxi" %L_cid, float* noalias nocapture nonnull "maxi" %L_val, i32* noalias nocapture nonnull readonly "maxi" %U_rcsr, i32* noalias nocapture nonnull readonly "maxi" %U_cid, float* noalias nocapture nonnull "maxi" %U_val, i32* noalias nocapture nonnull readonly "maxi" %X_rcsr, i32* noalias nocapture nonnull readonly "maxi" %X_cid, float* noalias nocapture nonnull "maxi" %X_val, i32 %n, i32 %a_nnz, i32 %l_nnz, i32 %u_nnz, i32 %x_rows, i32 %x_cols, i32 %x_nnz, float %pivot_eps, i32* noalias nocapture nonnull %status, i32* noalias nocapture nonnull %failed_row) local_unnamed_addr #0 {
entry:
  %0 = bitcast i32* %A_rcsr to [65 x i32]*
  %A_rcsr_copy = alloca [65 x i32], align 512
  %1 = bitcast i32* %A_cid to [1024 x i32]*
  %2 = call i8* @malloc(i64 4096)
  %A_cid_copy = bitcast i8* %2 to [1024 x i32]*
  %3 = bitcast float* %A_val to [1024 x float]*
  %4 = call i8* @malloc(i64 4096)
  %A_val_copy = bitcast i8* %4 to [1024 x float]*
  %5 = bitcast i32* %L_rcsr to [65 x i32]*
  %L_rcsr_copy = alloca [65 x i32], align 512
  %6 = bitcast i32* %L_cid to [2048 x i32]*
  %7 = call i8* @malloc(i64 8192)
  %L_cid_copy = bitcast i8* %7 to [2048 x i32]*
  %8 = bitcast float* %L_val to [2048 x float]*
  %9 = call i8* @malloc(i64 8192)
  %L_val_copy = bitcast i8* %9 to [2048 x float]*
  %10 = bitcast i32* %U_rcsr to [65 x i32]*
  %U_rcsr_copy = alloca [65 x i32], align 512
  %11 = bitcast i32* %U_cid to [2048 x i32]*
  %12 = call i8* @malloc(i64 8192)
  %U_cid_copy = bitcast i8* %12 to [2048 x i32]*
  %13 = bitcast float* %U_val to [2048 x float]*
  %14 = call i8* @malloc(i64 8192)
  %U_val_copy = bitcast i8* %14 to [2048 x float]*
  %15 = bitcast i32* %X_rcsr to [65 x i32]*
  %X_rcsr_copy = alloca [65 x i32], align 512
  %16 = bitcast i32* %X_cid to [4096 x i32]*
  %17 = call i8* @malloc(i64 16384)
  %X_cid_copy = bitcast i8* %17 to [4096 x i32]*
  %18 = bitcast float* %X_val to [4096 x float]*
  %19 = call i8* @malloc(i64 16384)
  %X_val_copy = bitcast i8* %19 to [4096 x float]*
  %status_copy = alloca i32, align 512
  %failed_row_copy = alloca i32, align 512
  call fastcc void @copy_in([65 x i32]* nonnull %0, [65 x i32]* nonnull align 512 %A_rcsr_copy, [1024 x i32]* nonnull %1, [1024 x i32]* %A_cid_copy, [1024 x float]* nonnull %3, [1024 x float]* %A_val_copy, [65 x i32]* nonnull %5, [65 x i32]* nonnull align 512 %L_rcsr_copy, [2048 x i32]* nonnull %6, [2048 x i32]* %L_cid_copy, [2048 x float]* nonnull %8, [2048 x float]* %L_val_copy, [65 x i32]* nonnull %10, [65 x i32]* nonnull align 512 %U_rcsr_copy, [2048 x i32]* nonnull %11, [2048 x i32]* %U_cid_copy, [2048 x float]* nonnull %13, [2048 x float]* %U_val_copy, [65 x i32]* nonnull %15, [65 x i32]* nonnull align 512 %X_rcsr_copy, [4096 x i32]* nonnull %16, [4096 x i32]* %X_cid_copy, [4096 x float]* nonnull %18, [4096 x float]* %X_val_copy, i32* nonnull %status, i32* nonnull align 512 %status_copy, i32* nonnull %failed_row, i32* nonnull align 512 %failed_row_copy)
  call void @apatb_sparse_lu_shared_hw(i32 %operation, [65 x i32]* %A_rcsr_copy, [1024 x i32]* %A_cid_copy, [1024 x float]* %A_val_copy, [65 x i32]* %L_rcsr_copy, [2048 x i32]* %L_cid_copy, [2048 x float]* %L_val_copy, [65 x i32]* %U_rcsr_copy, [2048 x i32]* %U_cid_copy, [2048 x float]* %U_val_copy, [65 x i32]* %X_rcsr_copy, [4096 x i32]* %X_cid_copy, [4096 x float]* %X_val_copy, i32 %n, i32 %a_nnz, i32 %l_nnz, i32 %u_nnz, i32 %x_rows, i32 %x_cols, i32 %x_nnz, float %pivot_eps, i32* %status_copy, i32* %failed_row_copy)
  call void @copy_back([65 x i32]* %0, [65 x i32]* %A_rcsr_copy, [1024 x i32]* %1, [1024 x i32]* %A_cid_copy, [1024 x float]* %3, [1024 x float]* %A_val_copy, [65 x i32]* %5, [65 x i32]* %L_rcsr_copy, [2048 x i32]* %6, [2048 x i32]* %L_cid_copy, [2048 x float]* %8, [2048 x float]* %L_val_copy, [65 x i32]* %10, [65 x i32]* %U_rcsr_copy, [2048 x i32]* %11, [2048 x i32]* %U_cid_copy, [2048 x float]* %13, [2048 x float]* %U_val_copy, [65 x i32]* %15, [65 x i32]* %X_rcsr_copy, [4096 x i32]* %16, [4096 x i32]* %X_cid_copy, [4096 x float]* %18, [4096 x float]* %X_val_copy, i32* %status, i32* %status_copy, i32* %failed_row, i32* %failed_row_copy)
  tail call void @free(i8* %2)
  tail call void @free(i8* %4)
  tail call void @free(i8* %7)
  tail call void @free(i8* %9)
  tail call void @free(i8* %12)
  tail call void @free(i8* %14)
  tail call void @free(i8* %17)
  tail call void @free(i8* %19)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([65 x i32]* readonly, [65 x i32]* align 512, [1024 x i32]* readonly, [1024 x i32]*, [1024 x float]* readonly, [1024 x float]*, [65 x i32]* readonly, [65 x i32]* align 512, [2048 x i32]* readonly, [2048 x i32]*, [2048 x float]* readonly, [2048 x float]*, [65 x i32]* readonly, [65 x i32]* align 512, [2048 x i32]* readonly, [2048 x i32]*, [2048 x float]* readonly, [2048 x float]*, [65 x i32]* readonly, [65 x i32]* align 512, [4096 x i32]* readonly, [4096 x i32]*, [4096 x float]* readonly, [4096 x float]*, i32* readonly, i32* align 512, i32* readonly, i32* align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a65i32([65 x i32]* align 512 %1, [65 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %3, [1024 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %5, [1024 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a65i32([65 x i32]* align 512 %7, [65 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a2048i32([2048 x i32]* %9, [2048 x i32]* %8)
  call fastcc void @onebyonecpy_hls.p0a2048f32([2048 x float]* %11, [2048 x float]* %10)
  call fastcc void @onebyonecpy_hls.p0a65i32([65 x i32]* align 512 %13, [65 x i32]* %12)
  call fastcc void @onebyonecpy_hls.p0a2048i32([2048 x i32]* %15, [2048 x i32]* %14)
  call fastcc void @onebyonecpy_hls.p0a2048f32([2048 x float]* %17, [2048 x float]* %16)
  call fastcc void @onebyonecpy_hls.p0a65i32([65 x i32]* align 512 %19, [65 x i32]* %18)
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %21, [4096 x i32]* %20)
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %23, [4096 x float]* %22)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %25, i32* %24)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %27, i32* %26)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a65i32([65 x i32]* align 512 %dst, [65 x i32]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [65 x i32]* %dst, null
  %1 = icmp eq [65 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a65i32([65 x i32]* nonnull %dst, [65 x i32]* nonnull %src, i64 65)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a65i32([65 x i32]* %dst, [65 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [65 x i32]* %src, null
  %1 = icmp eq [65 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [65 x i32], [65 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [65 x i32], [65 x i32]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @onebyonecpy_hls.p0a2048i32([2048 x i32]* %dst, [2048 x i32]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [2048 x i32]* %dst, null
  %1 = icmp eq [2048 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2048i32([2048 x i32]* nonnull %dst, [2048 x i32]* nonnull %src, i64 2048)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2048i32([2048 x i32]* %dst, [2048 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [2048 x i32]* %src, null
  %1 = icmp eq [2048 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2048 x i32], [2048 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [2048 x i32], [2048 x i32]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @onebyonecpy_hls.p0a2048f32([2048 x float]* %dst, [2048 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [2048 x float]* %dst, null
  %1 = icmp eq [2048 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2048f32([2048 x float]* nonnull %dst, [2048 x float]* nonnull %src, i64 2048)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a2048f32([2048 x float]* %dst, [2048 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [2048 x float]* %src, null
  %1 = icmp eq [2048 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2048 x float], [2048 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [2048 x float], [2048 x float]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %dst, [4096 x i32]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [4096 x i32]* %dst, null
  %1 = icmp eq [4096 x i32]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a4096i32([4096 x i32]* nonnull %dst, [4096 x i32]* nonnull %src, i64 4096)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4096i32([4096 x i32]* %dst, [4096 x i32]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [4096 x i32]* %src, null
  %1 = icmp eq [4096 x i32]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4096 x i32], [4096 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [4096 x i32], [4096 x i32]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %dst, [4096 x float]* readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [4096 x float]* %dst, null
  %1 = icmp eq [4096 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a4096f32([4096 x float]* nonnull %dst, [4096 x float]* nonnull %src, i64 4096)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a4096f32([4096 x float]* %dst, [4096 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [4096 x float]* %src, null
  %1 = icmp eq [4096 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [4096 x float], [4096 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [4096 x float], [4096 x float]* %src, i64 0, i64 %for.loop.idx2
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
define internal fastcc void @copy_out([65 x i32]*, [65 x i32]* readonly align 512, [1024 x i32]*, [1024 x i32]* readonly, [1024 x float]*, [1024 x float]* readonly, [65 x i32]*, [65 x i32]* readonly align 512, [2048 x i32]*, [2048 x i32]* readonly, [2048 x float]*, [2048 x float]* readonly, [65 x i32]*, [65 x i32]* readonly align 512, [2048 x i32]*, [2048 x i32]* readonly, [2048 x float]*, [2048 x float]* readonly, [65 x i32]*, [65 x i32]* readonly align 512, [4096 x i32]*, [4096 x i32]* readonly, [4096 x float]*, [4096 x float]* readonly, i32*, i32* readonly align 512, i32*, i32* readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a65i32([65 x i32]* %0, [65 x i32]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a1024i32([1024 x i32]* %2, [1024 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %4, [1024 x float]* %5)
  call fastcc void @onebyonecpy_hls.p0a65i32([65 x i32]* %6, [65 x i32]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a2048i32([2048 x i32]* %8, [2048 x i32]* %9)
  call fastcc void @onebyonecpy_hls.p0a2048f32([2048 x float]* %10, [2048 x float]* %11)
  call fastcc void @onebyonecpy_hls.p0a65i32([65 x i32]* %12, [65 x i32]* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0a2048i32([2048 x i32]* %14, [2048 x i32]* %15)
  call fastcc void @onebyonecpy_hls.p0a2048f32([2048 x float]* %16, [2048 x float]* %17)
  call fastcc void @onebyonecpy_hls.p0a65i32([65 x i32]* %18, [65 x i32]* align 512 %19)
  call fastcc void @onebyonecpy_hls.p0a4096i32([4096 x i32]* %20, [4096 x i32]* %21)
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %22, [4096 x float]* %23)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %24, i32* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %26, i32* align 512 %27)
  ret void
}

declare i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

declare void @apatb_sparse_lu_shared_hw(i32, [65 x i32]*, [1024 x i32]*, [1024 x float]*, [65 x i32]*, [2048 x i32]*, [2048 x float]*, [65 x i32]*, [2048 x i32]*, [2048 x float]*, [65 x i32]*, [4096 x i32]*, [4096 x float]*, i32, i32, i32, i32, i32, i32, i32, float, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([65 x i32]*, [65 x i32]* readonly align 512, [1024 x i32]*, [1024 x i32]* readonly, [1024 x float]*, [1024 x float]* readonly, [65 x i32]*, [65 x i32]* readonly align 512, [2048 x i32]*, [2048 x i32]* readonly, [2048 x float]*, [2048 x float]* readonly, [65 x i32]*, [65 x i32]* readonly align 512, [2048 x i32]*, [2048 x i32]* readonly, [2048 x float]*, [2048 x float]* readonly, [65 x i32]*, [65 x i32]* readonly align 512, [4096 x i32]*, [4096 x i32]* readonly, [4096 x float]*, [4096 x float]* readonly, i32*, i32* readonly align 512, i32*, i32* readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a2048f32([2048 x float]* %10, [2048 x float]* %11)
  call fastcc void @onebyonecpy_hls.p0a2048f32([2048 x float]* %16, [2048 x float]* %17)
  call fastcc void @onebyonecpy_hls.p0a4096f32([4096 x float]* %22, [4096 x float]* %23)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %24, i32* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %26, i32* align 512 %27)
  ret void
}

declare void @sparse_lu_shared_hw_stub(i32, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, float* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, float* noalias nocapture nonnull, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, float* noalias nocapture nonnull, i32* noalias nocapture nonnull readonly, i32* noalias nocapture nonnull readonly, float* noalias nocapture nonnull, i32, i32, i32, i32, i32, i32, i32, float, i32* noalias nocapture nonnull, i32* noalias nocapture nonnull)

define void @sparse_lu_shared_hw_stub_wrapper(i32, [65 x i32]*, [1024 x i32]*, [1024 x float]*, [65 x i32]*, [2048 x i32]*, [2048 x float]*, [65 x i32]*, [2048 x i32]*, [2048 x float]*, [65 x i32]*, [4096 x i32]*, [4096 x float]*, i32, i32, i32, i32, i32, i32, i32, float, i32*, i32*) #5 {
entry:
  call void @copy_out([65 x i32]* null, [65 x i32]* %1, [1024 x i32]* null, [1024 x i32]* %2, [1024 x float]* null, [1024 x float]* %3, [65 x i32]* null, [65 x i32]* %4, [2048 x i32]* null, [2048 x i32]* %5, [2048 x float]* null, [2048 x float]* %6, [65 x i32]* null, [65 x i32]* %7, [2048 x i32]* null, [2048 x i32]* %8, [2048 x float]* null, [2048 x float]* %9, [65 x i32]* null, [65 x i32]* %10, [4096 x i32]* null, [4096 x i32]* %11, [4096 x float]* null, [4096 x float]* %12, i32* null, i32* %21, i32* null, i32* %22)
  %23 = bitcast [65 x i32]* %1 to i32*
  %24 = bitcast [1024 x i32]* %2 to i32*
  %25 = bitcast [1024 x float]* %3 to float*
  %26 = bitcast [65 x i32]* %4 to i32*
  %27 = bitcast [2048 x i32]* %5 to i32*
  %28 = bitcast [2048 x float]* %6 to float*
  %29 = bitcast [65 x i32]* %7 to i32*
  %30 = bitcast [2048 x i32]* %8 to i32*
  %31 = bitcast [2048 x float]* %9 to float*
  %32 = bitcast [65 x i32]* %10 to i32*
  %33 = bitcast [4096 x i32]* %11 to i32*
  %34 = bitcast [4096 x float]* %12 to float*
  call void @sparse_lu_shared_hw_stub(i32 %0, i32* %23, i32* %24, float* %25, i32* %26, i32* %27, float* %28, i32* %29, i32* %30, float* %31, i32* %32, i32* %33, float* %34, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, float %20, i32* %21, i32* %22)
  call void @copy_in([65 x i32]* null, [65 x i32]* %1, [1024 x i32]* null, [1024 x i32]* %2, [1024 x float]* null, [1024 x float]* %3, [65 x i32]* null, [65 x i32]* %4, [2048 x i32]* null, [2048 x i32]* %5, [2048 x float]* null, [2048 x float]* %6, [65 x i32]* null, [65 x i32]* %7, [2048 x i32]* null, [2048 x i32]* %8, [2048 x float]* null, [2048 x float]* %9, [65 x i32]* null, [65 x i32]* %10, [4096 x i32]* null, [4096 x i32]* %11, [4096 x float]* null, [4096 x float]* %12, i32* null, i32* %21, i32* null, i32* %22)
  ret void
}

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1, !1}
!llvm.module.flags = !{!2, !3, !4}
!blackbox_cfg = !{!5}

!0 = !{!"AMD/Xilinx clang version 16.0.6"}
!1 = !{!"clang version 7.0.0 "}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{}
