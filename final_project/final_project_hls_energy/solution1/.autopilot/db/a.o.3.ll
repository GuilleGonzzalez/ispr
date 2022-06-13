; ModuleID = 'C:/Users/guill/Desktop/final_project_hls_energy/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@energy_str = internal unnamed_addr constant [7 x i8] c"energy\00" ; [#uses=1 type=[7 x i8]*]
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=18 type=[1 x i8]*]
@p_str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=2 type=[7 x i8]*]

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @energy(i16* %y, i16 signext %x) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %y) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %x) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @energy_str) nounwind
  %x_read = call i16 @_ssdm_op_Read.ap_vld.i16(i16 %x) nounwind ; [#uses=2 type=i16]
  call void @llvm.dbg.value(metadata !{i16 %x_read}, i64 0, metadata !19), !dbg !29 ; [debug line = 3:31] [debug variable = x]
  call void @llvm.dbg.value(metadata !{i16* %y}, i64 0, metadata !30), !dbg !31 ; [debug line = 3:21] [debug variable = y]
  call void @llvm.dbg.value(metadata !{i16 %x}, i64 0, metadata !19), !dbg !29 ; [debug line = 3:31] [debug variable = x]
  call void (...)* @_ssdm_op_SpecInterface(i16* %y, [7 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !32 ; [debug line = 5:1]
  call void (...)* @_ssdm_op_SpecInterface(i16 %x, [7 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !32 ; [debug line = 5:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !32 ; [debug line = 5:1]
  %tmp_1 = mul i16 %x_read, %x_read, !dbg !34     ; [#uses=1 type=i16] [debug line = 5:3]
  call void @_ssdm_op_Write.ap_vld.i16P(i16* %y, i16 %tmp_1) nounwind, !dbg !34 ; [debug line = 5:3]
  ret void, !dbg !35                              ; [debug line = 6:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_vld.i16P(i16*, i16) {
entry:
  store i16 %1, i16* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=3]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i16 @_ssdm_op_Read.ap_vld.i16(i16) {
entry:
  ret i16 %0
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{void (i16*, i16)* @energy, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"data_t*", metadata !"data_t"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 15, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"y", metadata !11, metadata !"short", i32 0, i32 15}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 15, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"x", metadata !17, metadata !"short", i32 0, i32 15}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, i32 0}
!19 = metadata !{i32 786689, metadata !20, metadata !"x", metadata !21, i32 33554435, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 786478, i32 0, metadata !21, metadata !"energy", metadata !"energy", metadata !"", metadata !21, i32 3, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, i16)* @energy, null, null, metadata !27, i32 4} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786473, metadata !"final_project_hls_energy/energy.c", metadata !"C:\5CUsers\5Cguill\5CDesktop", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24, metadata !25}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786454, null, metadata !"data_t", metadata !21, i32 5, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ]
!26 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!29 = metadata !{i32 3, i32 31, metadata !20, null}
!30 = metadata !{i32 786689, metadata !20, metadata !"y", metadata !21, i32 16777219, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 3, i32 21, metadata !20, null}
!32 = metadata !{i32 5, i32 1, metadata !33, null}
!33 = metadata !{i32 786443, metadata !20, i32 4, i32 1, metadata !21, i32 0} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 5, i32 3, metadata !33, null}
!35 = metadata !{i32 6, i32 1, metadata !33, null}
