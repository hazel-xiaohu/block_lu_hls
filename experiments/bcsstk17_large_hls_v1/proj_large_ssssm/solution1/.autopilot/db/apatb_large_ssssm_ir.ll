; ModuleID = '/output/block_lu_hls/experiments/bcsstk17_large_hls_v1/proj_large_ssssm/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_large_ssssm_ir(i32* noalias nocapture nonnull readonly %a_ptr, i32* noalias nocapture nonnull readonly %a_idx, float* noalias nocapture nonnull readonly %a_val, i32* noalias nocapture nonnull readonly %l_ptr, i32* noalias nocapture nonnull readonly %l_idx, float* noalias nocapture nonnull readonly %l_val, i32* noalias nocapture nonnull readonly %u_ptr, i32* noalias nocapture nonnull readonly %u_idx, float* noalias nocapture nonnull readonly %u_val, i32* noalias nocapture nonnull readonly %s_ptr, i32* noalias nocapture nonnull readonly %s_idx, float* noalias nocapture nonnull %s_val, float* noalias nocapture nonnull %work, i32* noalias nocapture nonnull %mark, i32 %rows, i32* noalias nocapture nonnull %status, i64* noalias nocapture nonnull %muladds) local_unnamed_addr #0 {
entry:
  %a_ptr_copy = alloca i32, align 512
  %a_idx_copy = alloca i32, align 512
  %a_val_copy = alloca float, align 512
  %l_ptr_copy = alloca i32, align 512
  %l_idx_copy = alloca i32, align 512
  %l_val_copy = alloca float, align 512
  %u_ptr_copy = alloca i32, align 512
  %u_idx_copy = alloca i32, align 512
  %u_val_copy = alloca float, align 512
  %s_ptr_copy = alloca i32, align 512
  %s_idx_copy = alloca i32, align 512
  %s_val_copy = alloca float, align 512
  %work_copy = alloca float, align 512
  %mark_copy = alloca i32, align 512
  %status_copy = alloca i32, align 512
  %muladds_copy = alloca i64, align 512
  call fastcc void @copy_in(i32* nonnull %a_ptr, i32* nonnull align 512 %a_ptr_copy, i32* nonnull %a_idx, i32* nonnull align 512 %a_idx_copy, float* nonnull %a_val, float* nonnull align 512 %a_val_copy, i32* nonnull %l_ptr, i32* nonnull align 512 %l_ptr_copy, i32* nonnull %l_idx, i32* nonnull align 512 %l_idx_copy, float* nonnull %l_val, float* nonnull align 512 %l_val_copy, i32* nonnull %u_ptr, i32* nonnull align 512 %u_ptr_copy, i32* nonnull %u_idx, i32* nonnull align 512 %u_idx_copy, float* nonnull %u_val, float* nonnull align 512 %u_val_copy, i32* nonnull %s_ptr, i32* nonnull align 512 %s_ptr_copy, i32* nonnull %s_idx, i32* nonnull align 512 %s_idx_copy, float* nonnull %s_val, float* nonnull align 512 %s_val_copy, float* nonnull %work, float* nonnull align 512 %work_copy, i32* nonnull %mark, i32* nonnull align 512 %mark_copy, i32* nonnull %status, i32* nonnull align 512 %status_copy, i64* nonnull %muladds, i64* nonnull align 512 %muladds_copy)
  call void @apatb_large_ssssm_hw(i32* %a_ptr_copy, i32* %a_idx_copy, float* %a_val_copy, i32* %l_ptr_copy, i32* %l_idx_copy, float* %l_val_copy, i32* %u_ptr_copy, i32* %u_idx_copy, float* %u_val_copy, i32* %s_ptr_copy, i32* %s_idx_copy, float* %s_val_copy, float* %work_copy, i32* %mark_copy, i32 %rows, i32* %status_copy, i64* %muladds_copy)
  call void @copy_back(i32* %a_ptr, i32* %a_ptr_copy, i32* %a_idx, i32* %a_idx_copy, float* %a_val, float* %a_val_copy, i32* %l_ptr, i32* %l_ptr_copy, i32* %l_idx, i32* %l_idx_copy, float* %l_val, float* %l_val_copy, i32* %u_ptr, i32* %u_ptr_copy, i32* %u_idx, i32* %u_idx_copy, float* %u_val, float* %u_val_copy, i32* %s_ptr, i32* %s_ptr_copy, i32* %s_idx, i32* %s_idx_copy, float* %s_val, float* %s_val_copy, float* %work, float* %work_copy, i32* %mark, i32* %mark_copy, i32* %status, i32* %status_copy, i64* %muladds, i64* %muladds_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in(i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, float* noalias readonly, float* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, float* noalias readonly, float* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, float* noalias readonly, float* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, float* noalias readonly, float* noalias align 512, float* noalias readonly, float* noalias align 512, i32* noalias readonly, i32* noalias align 512, i32* noalias readonly, i32* noalias align 512, i64* noalias readonly, i64* noalias align 512) unnamed_addr #1 {
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
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %21, i32* %20)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %23, float* %22)
  call fastcc void @onebyonecpy_hls.p0f32(float* align 512 %25, float* %24)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %27, i32* %26)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %29, i32* %28)
  call fastcc void @onebyonecpy_hls.p0i64(i64* align 512 %31, i64* %30)
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
define internal fastcc void @copy_out(i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i64* noalias, i64* noalias readonly align 512) unnamed_addr #3 {
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
  call fastcc void @onebyonecpy_hls.p0i32(i32* %20, i32* align 512 %21)
  call fastcc void @onebyonecpy_hls.p0f32(float* %22, float* align 512 %23)
  call fastcc void @onebyonecpy_hls.p0f32(float* %24, float* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %26, i32* align 512 %27)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %28, i32* align 512 %29)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %30, i64* align 512 %31)
  ret void
}

declare void @apatb_large_ssssm_hw(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, float*, i32*, i32, i32*, i64*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back(i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, float* noalias, float* noalias readonly align 512, float* noalias, float* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i32* noalias, i32* noalias readonly align 512, i64* noalias, i64* noalias readonly align 512) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0f32(float* %22, float* align 512 %23)
  call fastcc void @onebyonecpy_hls.p0f32(float* %24, float* align 512 %25)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %26, i32* align 512 %27)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %28, i32* align 512 %29)
  call fastcc void @onebyonecpy_hls.p0i64(i64* %30, i64* align 512 %31)
  ret void
}

define void @large_ssssm_hw_stub_wrapper(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, float*, i32*, i32, i32*, i64*) #4 {
entry:
  call void @copy_out(i32* null, i32* %0, i32* null, i32* %1, float* null, float* %2, i32* null, i32* %3, i32* null, i32* %4, float* null, float* %5, i32* null, i32* %6, i32* null, i32* %7, float* null, float* %8, i32* null, i32* %9, i32* null, i32* %10, float* null, float* %11, float* null, float* %12, i32* null, i32* %13, i32* null, i32* %15, i64* null, i64* %16)
  call void @large_ssssm_hw_stub(i32* %0, i32* %1, float* %2, i32* %3, i32* %4, float* %5, i32* %6, i32* %7, float* %8, i32* %9, i32* %10, float* %11, float* %12, i32* %13, i32 %14, i32* %15, i64* %16)
  call void @copy_in(i32* null, i32* %0, i32* null, i32* %1, float* null, float* %2, i32* null, i32* %3, i32* null, i32* %4, float* null, float* %5, i32* null, i32* %6, i32* null, i32* %7, float* null, float* %8, i32* null, i32* %9, i32* null, i32* %10, float* null, float* %11, float* null, float* %12, i32* null, i32* %13, i32* null, i32* %15, i64* null, i64* %16)
  ret void
}

declare void @large_ssssm_hw_stub(i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, i32*, i32*, float*, float*, i32*, i32, i32*, i64*)

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
