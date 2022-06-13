; ModuleID = 'C:/Users/guill/Desktop/final_project_hls_leds_controller/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@leds_controller_str = internal unnamed_addr constant [16 x i8] c"leds_controller\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str16 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str15 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str14 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str13 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str12 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str11 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1

declare i42 @llvm.part.select.i42(i42, i32, i32) nounwind readnone

declare i40 @llvm.part.select.i40(i40, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @leds_controller(i7* %out_V_V, i16 signext %x, i4 %col_V) {
_ZlsILi4ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit:
  call void (...)* @_ssdm_op_SpecInterface(i7* %out_V_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str11, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str13, [1 x i8]* @p_str14, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str15, [1 x i8]* @p_str16)
  call void (...)* @_ssdm_op_SpecBitsMap(i7* %out_V_V), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %x), !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(i4 %col_V), !map !62
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @leds_controller_str) nounwind
  %x_read = call i16 @_ssdm_op_Read.ap_none.i16(i16 %x)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i4 %col_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i16 %x, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp = sext i16 %x_read to i20
  %tmp_1 = call i19 @_ssdm_op_BitConcatenate.i19.i16.i3(i16 %x_read, i3 0)
  %tmp_1_cast = sext i19 %tmp_1 to i20
  %tmp_1_tr = sub i20 %tmp_1_cast, %tmp
  %sext_cast = sext i20 %tmp_1_tr to i42
  %mul = mul i42 1717987, %sext_cast
  %tmp_3 = trunc i42 %mul to i40
  %neg_mul = sub i40 0, %tmp_3
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i20.i32(i20 %tmp_1_tr, i32 19)
  %tmp_8 = call i5 @_ssdm_op_PartSelect.i5.i40.i32.i32(i40 %neg_mul, i32 35, i32 39)
  %tmp_4 = sext i5 %tmp_8 to i20
  %tmp_9 = call i7 @_ssdm_op_PartSelect.i7.i42.i32.i32(i42 %mul, i32 35, i32 41)
  %tmp_5 = sext i7 %tmp_9 to i20
  %tmp_6 = select i1 %tmp_7, i20 %tmp_4, i20 %tmp_5
  %neg_ti = sub i20 0, %tmp_6
  %tmp_2 = select i1 %tmp_7, i20 %neg_ti, i20 %tmp_5
  %tmp_10 = trunc i20 %tmp_2 to i2
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i20.i32(i20 %tmp_2, i32 2)
  %p_s = select i1 %tmp_11, i2 0, i2 %tmp_10
  %tmp_V = zext i2 %p_s to i7
  call void @_ssdm_op_Write.ap_fifo.volatile.i7P(i7* %out_V_V, i7 %tmp_V)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i7P(i7*, i7) {
entry:
  %empty = call i7 @_autotb_FifoWrite_i7(i7* %0, i7 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i16 @_ssdm_op_Read.ap_none.i16(i16) {
entry:
  ret i16 %0
}

define weak i7 @_ssdm_op_PartSelect.i7.i42.i32.i32(i42, i32, i32) nounwind readnone {
entry:
  %empty = call i42 @llvm.part.select.i42(i42 %0, i32 %1, i32 %2)
  %empty_7 = trunc i42 %empty to i7
  ret i7 %empty_7
}

define weak i5 @_ssdm_op_PartSelect.i5.i40.i32.i32(i40, i32, i32) nounwind readnone {
entry:
  %empty = call i40 @llvm.part.select.i40(i40 %0, i32 %1, i32 %2)
  %empty_8 = trunc i40 %empty to i5
  ret i5 %empty_8
}

declare i40 @_ssdm_op_PartSelect.i40.i42.i32.i32(i42, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i20.i32.i32(i20, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i3.i32(i3, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i3
  %empty_9 = shl i3 1, %empty
  %empty_10 = and i3 %0, %empty_9
  %empty_11 = icmp ne i3 %empty_10, 0
  ret i1 %empty_11
}

define weak i1 @_ssdm_op_BitSelect.i1.i20.i32(i20, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i20
  %empty_12 = shl i20 1, %empty
  %empty_13 = and i20 %0, %empty_12
  %empty_14 = icmp ne i20 %empty_13, 0
  ret i1 %empty_14
}

define weak i19 @_ssdm_op_BitConcatenate.i19.i16.i3(i16, i3) nounwind readnone {
entry:
  %empty = zext i16 %0 to i19
  %empty_15 = zext i3 %1 to i19
  %empty_16 = shl i19 %empty, 3
  %empty_17 = or i19 %empty_16, %empty_15
  ret i19 %empty_17
}

declare i7 @_autotb_FifoWrite_i7(i7*, i7)

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !7, !13, !13, !19, !22, !24, !13, !13, !13, !30, !30, !32, !34, !36, !36, !13, !38, !34, !38, !41, !41, !13, !13, !43, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!45}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<uint7_t>*", metadata !"data_t", metadata !"ap_int<4>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"out", metadata !"x", metadata !"col"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, true> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_uint<7> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !23, metadata !6}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!24 = metadata !{null, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !6}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!26 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<3, true> &", metadata !"const ap_int_base<4, true> &"}
!28 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!30 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !12, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<3, true> &"}
!32 = metadata !{null, metadata !25, metadata !26, metadata !33, metadata !28, metadata !29, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, true> &", metadata !"int"}
!34 = metadata !{null, metadata !25, metadata !26, metadata !35, metadata !28, metadata !29, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<3, true> &", metadata !"int"}
!36 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !12, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!38 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !40, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!41 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !42, metadata !6}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!43 = metadata !{null, metadata !8, metadata !9, metadata !44, metadata !11, metadata !40, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<3> &"}
!45 = metadata !{metadata !46, [1 x i32]* @llvm_global_ctors_0}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 31, metadata !48}
!48 = metadata !{metadata !49}
!49 = metadata !{metadata !"llvm.global_ctors.0", metadata !50, metadata !"", i32 0, i32 31}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 0, i32 1}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 6, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"out.V.V", metadata !50, metadata !"uint7", i32 0, i32 6}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 15, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"x", metadata !60, metadata !"short", i32 0, i32 15}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 0, i32 0}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 3, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"col.V", metadata !60, metadata !"int4", i32 0, i32 3}
