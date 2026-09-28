; ModuleID = '/output/block_lu_hls/experiments/bcsstk17_large_hls_v1/proj_large_gessm/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_large_gessm_ir(i32* noalias nocapture nonnull readonly %l_ptr, i32* noalias nocapture nonnull readonly %l_idx, float* noalias nocapture nonnull readonly %l_val, i32* noalias nocapture nonnull readonly %b_ptr, i32* noalias nocapture nonnull readonly %b_idx, float* noalias nocapture nonnull readonly %b_val, i32* noalias nocapture nonnull readonly %x_ptr, i32* noalias nocapture nonnull readonly %x_idx, float* noalias nocapture nonnull %x_val_csc, i32* noalias nocapture nonnull readonly %x_csc_to_csr, float* noalias nocapture nonnull %x_val_csr, i32* noalias nocapture nonnull readonly %active_cols, i32 %active_count, float* noalias nocapture nonnull %work, i32 %n, i32* noalias nocapture nonnull %status, i64* noalias nocapture nonnull %muladds) local_unnamed_addr #0 {
entry:
  %l_ptr_copy = alloca i32, align 512
  %l_idx_copy = alloca i32, align 512
  %l_val_copy = alloca float, align 512
  %b_ptr_copy = alloca i32, align 512
  %b_idx_copy = alloca i32, align 512
  %b_val_copy = alloca float, align 512
  %x_ptr_copy = alloca i32, align 512
  %x_idx_copy = alloca i32, align 512
  %x_val_csc_copy = alloca float, align 512
  %x_csc_to_csr_copy = alloca i32, align 512
  %x_val_csr_copy = alloca float, align 512
  %active_cols_copy = alloca i32, align 512
  %work_copy = alloca float, align 512
  %status_copy = alloca i32, align 512
  %muladds_copy = alloca i64, align 512
  call fastcc void @copy_in(i32* nonnull %l_ptr, i32* nonnull align 512 %l_ptr_copy, i32* nonnull %l_idx, i32* nonnull align 512 %l_idx_copy, float* nonnull %l_val, float* nonnull align 512 %l_val_copy, i32* nonnull %b_ptr, i32* nonnull align 512 %b_ptr_copy, i32* nonnull %b_idx, i32* nonnull align 512 %b_idx_copy, float* nonnull %b_val, float* nonnull align 512 %b_val_copy, i32* nonnull %x_ptr, i32* nonnull align 512 %x_ptr_copy, i32* nonnull %x_idx, i32* nonnull align 512 %x_idx_copy, float* nonnull %x_val_csc, float* nonnull align 512 %x_val_csc_copy, i32* nonnull %x_csc_to_csr, i32* nonnull align 512 %x_csc_to_csr_copy, float* nonnull %x_val_csr, float* nonnull align 512 %x_val_csr_copy, i32* nonnull %active_cols, i32* nonnull align 512 %active_cols_copy, float* nonnull %work, float* nonnull align 512 %work_copy, i32* nonnull %status, i32* nonnull align 512 %status_copy, i64* nonnull %muladds, i64* nonnull align 512 %muladds_copy)
  call void @apatb_large_gessm_hw(i32* %l_ptr_copy, i32* %l_idx_copy, float* %l_val_copy, i32* %b_ptr_copy, i32* %b_idx_copy, float* %b_val_copy, i32* %x_ptr_copy, i32* %x_idx_copy, float* %x_val_csc_copy, i32* %x_csc_to_csr_copy, float* %x_val_csr_copy, i32* %active_cols_copy, i32 %active_count, float* %work_copy, i32 %n, i32* %status_copy, i64* %muladds_copy)
  call void @copy_back(i32* %l_ptr, i32* %l_ptr_copy, i32* %l_idx, i32* %l_idx_copy, float* %l_val, float* %l_val_copy, i32* %b_ptr, i32* %b_ptr_copy, i32* %b_idx, i32* %b_idx_copy, float* %b_val, float* %b_val_copy, i32* %x_ptr, i32* %x_ptr_copy, i32* %x_idx, i32* %x_idx_copy, float* %x_val_csc, float* %x_val_csc_copy, i32* %x_csc_to_csr, i32* %x_csc_to_csr_copy, float* %x_val_csr, float* %x_val_csr_copy, i32* %active_cols, i32* %active_cols_copy, float* %work, float* %work_copy, i32* %status, i32* %status_copy, i64* %muladds, i64* %muladds_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, float* noalias readonly, float* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, float* noalias readonly, float* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, float* noalias readonly, float* noalias align 512, i32* noalias readonly, i32* noalias align 512, float* noalias readonly, float* noalias align 512, i32* noalias readonly, i32* noalias align 512, float* noalias readonly, float* noalias align 512, i32* noalias readonly, i32* noalias align 512, i64* noalias readonly, i64* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %1, i32* %0)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %3, i32* %2)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %5, float* %4)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %7, i32* %6)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %9, i32* %8)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %11, float* %10)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %13, i32* %12)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %15, i32* %14)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %17, float* %16)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %19, i32* %18)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %21, float* %20)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %23, i32* %22)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %25, float* %24)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %27, i32* %26)
  call fastcc void @onebyonecpy_hls.p0i64(i64* align 512 %29, i64* %28)
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
define internal fastcc void @onebyonecpy_hls.p0f32(float* noalias align 512, float* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq float* %0, null
  %3 = icmp eq float* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load float, float* %1, align 4
  store float %5, float* %0, align 512
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
define internal fastcc void @copy_out(i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i64* noalias, i64* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* %0, i32* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %2, i32* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0f32(float* %4, float* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %6, i32* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %8, i32* align 512 %9)
  call fastcc void @onebyonecpy_hls.p0f32(float* %10, float* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %12, i32* align 512 %13)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %14, i32* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0f32(float* %16, float* align 512 %17)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %18, i32* align 512 %19)
  call fastcc void @onebyonecpy_hls.p0f32(float* %20, float* align 512 %21)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %22, i32* align 512 %23)
  call fastcc void @onebyonecpy_hls.p0f32(float* %24, float* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %26, i32* align 512 %27)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %28, i64* align 512 %29)
  ret void
}

declare void @apatb_large_gessm_hw(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, float*, i32*, i32, float*, i32, i32*, i64*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back(i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i64* noalias, i64* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0f32(float* %16, float* align 512 %17)
  call fastcc void @onebyonecpy_hls.p0f32(float* %20, float* align 512 %21)
  call fastcc void @onebyonecpy_hls.p0f32(float* %24, float* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %26, i32* align 512 %27)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %28, i64* align 512 %29)
  ret void
}

define void @large_gessm_hw_stub_wrapper(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, float*, i32*, i32, float*, i32, i32*, i64*) #4 {
entry:
  call void @copy_out(i32* null, i32* %0, i32* null, i32* %1, float* null, float* %2, i32* null, i32* %3, i32* null, i32* %4, float* null, float* %5, i32* null, i32* %6, i32* null, i32* %7, float* null, float* %8, i32* null, i32* %9, float* null, float* %10, i32* null, i32* %11, float* null, float* %13, i32* null, i32* %15, i64* null, i64* %16)
  call void @large_gessm_hw_stub(i32* %0, i32* %1, float* %2, i32* %3, i32* %4, float* %5, i32* %6, i32* %7, float* %8, i32* %9, float* %10, i32* %11, i32 %12, float* %13, i32 %14, i32* %15, i64* %16)
  call void @copy_in(i32* null, i32* %0, i32* null, i32* %1, float* null, float* %2, i32* null, i32* %3, i32* null, i32* %4, float* null, float* %5, i32* null, i32* %6, i32* null, i32* %7, float* null, float* %8, i32* null, i32* %9, float* null, float* %10, i32* null, i32* %11, float* null, float* %13, i32* null, i32* %15, i64* null, i64* %16)
  ret void
}

declare void @large_gessm_hw_stub(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, float*, i32*, i32, float*, i32, i32*, i64*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
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
