; ModuleID = 'C:/Users/guill/Desktop/final_project_hls_energy/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@.str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]

; [#uses=0]
define void @energy(i16* %y, i16 signext %x) nounwind {
  %1 = alloca i16*, align 4                       ; [#uses=3 type=i16**]
  %2 = alloca i16, align 2                        ; [#uses=4 type=i16*]
  store i16* %y, i16** %1, align 4
  call void @llvm.dbg.declare(metadata !{i16** %1}, metadata !21), !dbg !22 ; [debug line = 3:21] [debug variable = y]
  store i16 %x, i16* %2, align 2
  call void @llvm.dbg.declare(metadata !{i16* %2}, metadata !23), !dbg !24 ; [debug line = 3:31] [debug variable = x]
  %3 = load i16** %1, align 4, !dbg !25           ; [#uses=1 type=i16*] [debug line = 5:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i16*, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i16* %3, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !25 ; [debug line = 5:1]
  %4 = load i16* %2, align 2, !dbg !25            ; [#uses=1 type=i16] [debug line = 5:1]
  %5 = sext i16 %4 to i32, !dbg !25               ; [#uses=1 type=i32] [debug line = 5:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i32 %5, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !25 ; [debug line = 5:1]
  call void bitcast (void (...)* @_ssdm_op_SpecInterface to void (i32, i8*, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i8*)*)(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !25 ; [debug line = 5:1]
  %6 = load i16* %2, align 2, !dbg !27            ; [#uses=1 type=i16] [debug line = 5:3]
  %7 = sext i16 %6 to i32, !dbg !27               ; [#uses=1 type=i32] [debug line = 5:3]
  %8 = load i16* %2, align 2, !dbg !27            ; [#uses=1 type=i16] [debug line = 5:3]
  %9 = sext i16 %8 to i32, !dbg !27               ; [#uses=1 type=i32] [debug line = 5:3]
  %10 = mul nsw i32 %7, %9, !dbg !27              ; [#uses=1 type=i32] [debug line = 5:3]
  %11 = trunc i32 %10 to i16, !dbg !27            ; [#uses=1 type=i16] [debug line = 5:3]
  %12 = load i16** %1, align 4, !dbg !27          ; [#uses=1 type=i16*] [debug line = 5:3]
  store i16 %11, i16* %12, align 2, !dbg !27      ; [debug line = 5:3]
  ret void, !dbg !28                              ; [debug line = 6:1]
}

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!14}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/guill/Desktop/final_project_hls_energy/solution1/.autopilot/db/energy.pragma.2.c", metadata !"C:\5CUsers\5Cguill\5CDesktop", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"energy", metadata !"energy", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, i16)* @energy, null, null, metadata !12, i32 4} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"final_project_hls_energy/energy.c", metadata !"C:\5CUsers\5Cguill\5CDesktop", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !10}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"data_t", metadata !6, i32 5, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{void (i16*, i16)* @energy, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20}
!15 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!16 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"data_t*", metadata !"data_t"}
!18 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"y", metadata !"x"}
!20 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!21 = metadata !{i32 786689, metadata !5, metadata !"y", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!22 = metadata !{i32 3, i32 21, metadata !5, null}
!23 = metadata !{i32 786689, metadata !5, metadata !"x", metadata !6, i32 33554435, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!24 = metadata !{i32 3, i32 31, metadata !5, null}
!25 = metadata !{i32 5, i32 1, metadata !26, null}
!26 = metadata !{i32 786443, metadata !5, i32 4, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!27 = metadata !{i32 5, i32 3, metadata !26, null}
!28 = metadata !{i32 6, i32 1, metadata !26, null}
