; ModuleID = 'C:/Users/guill/Desktop/final_project_hls_leds/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@leds_str = internal unnamed_addr constant [5 x i8] c"leds\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str10 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1

declare i7 @llvm.part.select.i7(i7, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @leds(i7* %row_V, i10* %col_V, i7* %in_V_V) {
  call void (...)* @_ssdm_op_SpecInterface(i7* %in_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str10, i32 0, i32 0, [1 x i8]* @p_str11, [1 x i8]* @p_str12, [1 x i8]* @p_str13, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str14, [1 x i8]* @p_str15)
  call void (...)* @_ssdm_op_SpecBitsMap(i7* %row_V), !map !80
  call void (...)* @_ssdm_op_SpecBitsMap(i10* %col_V), !map !84
  call void (...)* @_ssdm_op_SpecBitsMap(i7* %in_V_V), !map !88
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @leds_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i10* %col_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i7* %row_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp_V = call i7 @_ssdm_op_Read.ap_fifo.volatile.i7P(i7* %in_V_V)
  %tmp = trunc i7 %tmp_V to i3
  %p_Result_1 = call i4 @_ssdm_op_PartSelect.i4.i7.i32.i32(i7 %tmp_V, i32 3, i32 6)
  br label %1

; <label>:1                                       ; preds = %_ZlSILi10ELb0EER11ap_int_baseIXT_EXT0_EXleT_Li64EEES2_i.exit, %0
  %p_s = phi i10 [ 1, %0 ], [ %out_col_V, %_ZlSILi10ELb0EER11ap_int_baseIXT_EXT0_EXleT_Li64EEES2_i.exit ]
  %i = phi i4 [ 0, %0 ], [ %i_2, %_ZlSILi10ELb0EER11ap_int_baseIXT_EXT0_EXleT_Li64EEES2_i.exit ]
  %exitcond1 = icmp eq i4 %i, %p_Result_1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 15, i64 0)
  %i_2 = add i4 %i, 1
  br i1 %exitcond1, label %.preheader.preheader, label %_ZlSILi10ELb0EER11ap_int_baseIXT_EXT0_EXleT_Li64EEES2_i.exit

.preheader.preheader:                             ; preds = %1
  br label %.preheader

_ZlSILi10ELb0EER11ap_int_baseIXT_EXT0_EXleT_Li64EEES2_i.exit: ; preds = %1
  %out_col_V = shl i10 %p_s, 1
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %_ZlsILi7ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit
  %p_1 = phi i7 [ %out_row_V, %_ZlsILi7ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ], [ 0, %.preheader.preheader ]
  %i_1 = phi i3 [ %i_3, %_ZlsILi7ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i3 %i_1, %tmp
  %empty_4 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 7, i64 0)
  %i_3 = add i3 %i_1, 1
  br i1 %exitcond, label %2, label %_ZlsILi7ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit

_ZlsILi7ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit: ; preds = %.preheader
  %r_V = shl i7 %p_1, 1
  %out_row_V = or i7 %r_V, %p_1
  br label %.preheader

; <label>:2                                       ; preds = %.preheader
  call void @_ssdm_op_Write.ap_none.i7P(i7* %row_V, i7 %p_1)
  call void @_ssdm_op_Write.ap_none.i10P(i10* %col_V, i10 %p_s)
  ret void
}

define weak void @_ssdm_op_Write.ap_none.i7P(i7*, i7) {
entry:
  store i7 %1, i7* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_none.i10P(i10*, i10) {
entry:
  store i10 %1, i10* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i7 @_ssdm_op_Read.ap_fifo.volatile.i7P(i7*) {
entry:
  %empty = call i7 @_autotb_FifoRead_i7(i7* %0)
  ret i7 %empty
}

declare i9 @_ssdm_op_PartSelect.i9.i10.i32.i32(i10, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

define weak i4 @_ssdm_op_PartSelect.i4.i7.i32.i32(i7, i32, i32) nounwind readnone {
entry:
  %empty = call i7 @llvm.part.select.i7(i7 %0, i32 %1, i32 %2)
  %empty_5 = trunc i7 %empty to i4
  ret i4 %empty_5
}

declare i3 @_ssdm_op_PartSelect.i3.i7.i32.i32(i7, i32, i32) nounwind readnone

declare i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6, i1) nounwind readnone

declare i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9, i1) nounwind readnone

declare i7 @_autotb_FifoRead_i7(i7*)

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !7, !13, !13, !19, !22, !24, !13, !13, !13, !13, !30, !30, !33, !34, !36, !36, !13, !37, !39, !13, !39, !13, !36, !36, !13, !41, !13, !13, !13, !43, !43, !44, !44, !46, !43, !43, !13, !48, !13, !50, !50, !13, !30, !30, !13, !13, !54, !56, !56, !56, !13, !13, !13, !59, !56, !56, !56, !13, !61, !63, !66, !66, !70, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!73}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<7>*", metadata !"ap_uint<10>*", metadata !"hls::stream<uint7_t> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"row", metadata !"col", metadata !"in"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<7> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<7> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !21, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<7, true> &"}
!24 = metadata !{null, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !6}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!26 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<7, true> &", metadata !"int"}
!28 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!30 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !32, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!33 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !21, metadata !6}
!34 = metadata !{null, metadata !25, metadata !26, metadata !35, metadata !28, metadata !29, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<10, false> &", metadata !"int"}
!36 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !12, metadata !6}
!37 = metadata !{null, metadata !8, metadata !9, metadata !38, metadata !11, metadata !21, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!39 = metadata !{null, metadata !8, metadata !9, metadata !40, metadata !11, metadata !21, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!41 = metadata !{null, metadata !25, metadata !26, metadata !42, metadata !28, metadata !29, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!43 = metadata !{null, metadata !8, metadata !9, metadata !38, metadata !11, metadata !12, metadata !6}
!44 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !12, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!46 = metadata !{null, metadata !8, metadata !9, metadata !47, metadata !11, metadata !21, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !49, metadata !6}
!49 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!50 = metadata !{null, metadata !51, metadata !26, metadata !52, metadata !28, metadata !53, metadata !6}
!51 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!54 = metadata !{null, metadata !8, metadata !9, metadata !55, metadata !11, metadata !21, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<10> &"}
!56 = metadata !{null, metadata !8, metadata !9, metadata !57, metadata !11, metadata !58, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<7, false> &"}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!59 = metadata !{null, metadata !8, metadata !9, metadata !60, metadata !11, metadata !21, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!61 = metadata !{null, metadata !8, metadata !9, metadata !62, metadata !11, metadata !21, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<3> &"}
!63 = metadata !{null, metadata !25, metadata !26, metadata !64, metadata !28, metadata !65, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!65 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!66 = metadata !{null, metadata !67, metadata !2, metadata !68, metadata !4, metadata !69, metadata !6}
!67 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<7, false>*", metadata !"int", metadata !"int"}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!70 = metadata !{null, metadata !8, metadata !9, metadata !71, metadata !11, metadata !72, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_uint<7> &"}
!72 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!73 = metadata !{metadata !74, [1 x i32]* @llvm_global_ctors_0}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 31, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"llvm.global_ctors.0", metadata !78, metadata !"", i32 0, i32 31}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 0, i32 1}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 6, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"row.V", metadata !78, metadata !"uint7", i32 0, i32 6}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 9, metadata !86}
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !"col.V", metadata !78, metadata !"uint10", i32 0, i32 9}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0, i32 6, metadata !90}
!90 = metadata !{metadata !91}
!91 = metadata !{metadata !"in.V.V", metadata !78, metadata !"uint7", i32 0, i32 6}
