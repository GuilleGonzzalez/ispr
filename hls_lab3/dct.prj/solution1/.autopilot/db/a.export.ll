; ModuleID = 'C:/Users/guill/Desktop/hls_lab3/dct.prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@dct_coeff_table = internal constant [64 x i15] [i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 11363, i15 9633, i15 6436, i15 2260, i15 -2260, i15 -6436, i15 -9632, i15 -11362, i15 10703, i15 4433, i15 -4433, i15 -10703, i15 -10703, i15 -4433, i15 4433, i15 10703, i15 9633, i15 -2260, i15 -11362, i15 -6436, i15 6436, i15 11363, i15 2260, i15 -9632, i15 8192, i15 -8192, i15 -8192, i15 8192, i15 8192, i15 -8191, i15 -8191, i15 8192, i15 6436, i15 -11362, i15 2260, i15 9633, i15 -9632, i15 -2260, i15 11363, i15 -6436, i15 4433, i15 -10703, i15 10703, i15 -4433, i15 -4433, i15 10703, i15 -10703, i15 4433, i15 2260, i15 -6436, i15 9633, i15 -11362, i15 11363, i15 -9632, i15 6436, i15 -2260]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00"
@p_str9 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1
@p_str7 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1
@p_str6 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1
@p_str5 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1
@p_str4 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1
@p_str3 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1
@p_str2 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1
@p_str11 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1
@p_str10 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1
@p_str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1
@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1

declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc void @dct_2d([64 x i16]* nocapture %in_block, [64 x i16]* nocapture %out_block) {
  %row_outbuf = alloca [64 x i16], align 2
  %col_outbuf = alloca [64 x i16], align 2
  %col_inbuf = alloca [64 x i16], align 2
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]
  %tmp = icmp eq i4 %i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_4 = add i4 %i, 1
  br i1 %tmp, label %.preheader2.preheader, label %2

.preheader2.preheader:                            ; preds = %1
  br label %.preheader2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str2) nounwind
  call fastcc void @dct_1d2([64 x i16]* %in_block, i4 %i, [64 x i16]* %row_outbuf, i4 %i)
  br label %1

.preheader2:                                      ; preds = %.preheader2.preheader, %6
  %j = phi i4 [ %j_2, %6 ], [ 0, %.preheader2.preheader ]
  %j_cast5_cast = zext i4 %j to i8
  %tmp_5 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j, i3 0)
  %tmp_6_cast = zext i7 %tmp_5 to i8
  %tmp_8 = icmp eq i4 %j, -8
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %j_2 = add i4 %j, 1
  br i1 %tmp_8, label %.preheader1.preheader, label %3

.preheader1.preheader:                            ; preds = %.preheader2
  br label %.preheader1

; <label>:3                                       ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str3) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str3)
  br label %4

; <label>:4                                       ; preds = %5, %3
  %i_1 = phi i4 [ 0, %3 ], [ %i_6, %5 ]
  %i_1_cast4_cast = zext i4 %i_1 to i8
  %tmp_7 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1, i3 0)
  %tmp_10_cast = zext i7 %tmp_7 to i8
  %tmp_6 = add i8 %j_cast5_cast, %tmp_10_cast
  %tmp_11_cast = zext i8 %tmp_6 to i32
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i32 0, i32 %tmp_11_cast
  %tmp_10 = add i8 %i_1_cast4_cast, %tmp_6_cast
  %tmp_12_cast = zext i8 %tmp_10 to i32
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i32 0, i32 %tmp_12_cast
  %tmp_s = icmp eq i4 %i_1, -8
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_6 = add i4 %i_1, 1
  br i1 %tmp_s, label %6, label %5

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str4) nounwind
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2
  br label %4

; <label>:6                                       ; preds = %4
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str3, i32 %tmp_3)
  br label %.preheader2

.preheader1:                                      ; preds = %.preheader1.preheader, %7
  %i_2 = phi i4 [ %i_5, %7 ], [ 0, %.preheader1.preheader ]
  %tmp_9 = icmp eq i4 %i_2, -8
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_5 = add i4 %i_2, 1
  br i1 %tmp_9, label %.preheader.preheader, label %7

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader

; <label>:7                                       ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str5) nounwind
  call fastcc void @dct_1d2([64 x i16]* %col_inbuf, i4 %i_2, [64 x i16]* %col_outbuf, i4 %i_2)
  br label %.preheader1

.preheader:                                       ; preds = %.preheader.preheader, %11
  %j_1 = phi i4 [ %j_3, %11 ], [ 0, %.preheader.preheader ]
  %j_1_cast2_cast = zext i4 %j_1 to i8
  %tmp_11 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_1, i3 0)
  %tmp_14_cast = zext i7 %tmp_11 to i8
  %tmp_1 = icmp eq i4 %j_1, -8
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %j_3 = add i4 %j_1, 1
  br i1 %tmp_1, label %12, label %8

; <label>:8                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str6) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str6)
  br label %9

; <label>:9                                       ; preds = %10, %8
  %i_3 = phi i4 [ 0, %8 ], [ %i_7, %10 ]
  %i_3_cast1_cast = zext i4 %i_3 to i8
  %tmp_12 = add i8 %i_3_cast1_cast, %tmp_14_cast
  %tmp_15_cast = zext i8 %tmp_12 to i32
  %out_block_addr = getelementptr [64 x i16]* %out_block, i32 0, i32 %tmp_15_cast
  %tmp_13 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3, i3 0)
  %tmp_17_cast = zext i7 %tmp_13 to i8
  %tmp_14 = add i8 %j_1_cast2_cast, %tmp_17_cast
  %tmp_18_cast = zext i8 %tmp_14 to i32
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i32 0, i32 %tmp_18_cast
  %tmp_2 = icmp eq i4 %i_3, -8
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %i_7 = add i4 %i_3, 1
  br i1 %tmp_2, label %11, label %10

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str7) nounwind
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2
  br label %9

; <label>:11                                      ; preds = %9
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str6, i32 %tmp_4)
  br label %.preheader

; <label>:12                                      ; preds = %.preheader
  ret void
}

define internal fastcc void @dct_1d2([64 x i16]* nocapture %src, i4 %i_2, [64 x i16]* nocapture %dst, i4 %i_21) {
  %i_21_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %i_21)
  %i_2_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %i_2)
  %tmp_15 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_21_read, i3 0)
  %tmp_20_cast = zext i7 %tmp_15 to i8
  %tmp_16 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_read, i3 0)
  %tmp_22_cast = zext i7 %tmp_16 to i8
  br label %1

; <label>:1                                       ; preds = %5, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %5 ]
  %k_cast2_cast = zext i4 %k to i8
  %tmp_17 = add i8 %k_cast2_cast, %tmp_20_cast
  %tmp_23_cast = zext i8 %tmp_17 to i32
  %dst_addr = getelementptr [64 x i16]* %dst, i32 0, i32 %tmp_23_cast
  %tmp_18 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %k, i3 0)
  %tmp_25_cast = zext i7 %tmp_18 to i8
  %tmp = icmp eq i4 %k, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %k_1 = add i4 %k, 1
  br i1 %tmp, label %6, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind
  br label %3

; <label>:3                                       ; preds = %4, %2
  %n = phi i4 [ 0, %2 ], [ %n_1, %4 ]
  %tmp1 = phi i32 [ 0, %2 ], [ %tmp_1, %4 ]
  %n_cast1_cast = zext i4 %n to i8
  %tmp_19 = add i8 %tmp_22_cast, %n_cast1_cast
  %tmp_26_cast = zext i8 %tmp_19 to i32
  %src_addr = getelementptr [64 x i16]* %src, i32 0, i32 %tmp_26_cast
  %tmp_20 = add i8 %tmp_25_cast, %n_cast1_cast
  %tmp_27_cast = zext i8 %tmp_20 to i32
  %dct_coeff_table_addr = getelementptr [64 x i15]* @dct_coeff_table, i32 0, i32 %tmp_27_cast
  %tmp_s = icmp eq i4 %n, -8
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %n_1 = add i4 %n, 1
  br i1 %tmp_s, label %5, label %4

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind
  %dct_coeff_table_load = load i15* %dct_coeff_table_addr, align 2
  %coeff_cast = sext i15 %dct_coeff_table_load to i31
  %src_load = load i16* %src_addr, align 2
  %tmp_6_cast = sext i16 %src_load to i31
  %tmp_7 = mul i31 %coeff_cast, %tmp_6_cast
  %tmp_7_cast = sext i31 %tmp_7 to i32
  %tmp_1 = add nsw i32 %tmp1, %tmp_7_cast
  br label %3

; <label>:5                                       ; preds = %3
  %tmp_2 = trunc i32 %tmp1 to i29
  %tmp_3 = add i29 4096, %tmp_2
  %tmp_5 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_3, i32 13, i32 28)
  store i16 %tmp_5, i16* %dst_addr, align 2
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_8) nounwind
  br label %1

; <label>:6                                       ; preds = %1
  ret void
}

define void @dct([64 x i16]* %input_r, [64 x i16]* %output_r) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input_r) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output_r) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2
  %buf_2d_out = alloca [64 x i16], align 2
  br label %1

; <label>:1                                       ; preds = %5, %0
  %r_i = phi i4 [ 0, %0 ], [ %r, %5 ]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i, i3 0)
  %tmp_28_cast = zext i7 %tmp to i8
  %exitcond1_i = icmp eq i4 %r_i, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  %r = add i4 %r_i, 1
  br i1 %exitcond1_i, label %read_data.exit, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str8) nounwind
  %tmp_2_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8) nounwind
  %tmp_3 = trunc i4 %r_i to i3
  %tmp_i = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_3, i3 0)
  br label %3

; <label>:3                                       ; preds = %4, %2
  %c_i = phi i4 [ 0, %2 ], [ %c, %4 ]
  %c_i_cast6 = zext i4 %c_i to i6
  %c_i_cast5_cast = zext i4 %c_i to i8
  %tmp_21 = add i8 %tmp_28_cast, %c_i_cast5_cast
  %tmp_32_cast = zext i8 %tmp_21 to i32
  %buf_2d_in_addr = getelementptr [64 x i16]* %buf_2d_in, i32 0, i32 %tmp_32_cast
  %exitcond_i = icmp eq i4 %c_i, -8
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  %c = add i4 %c_i, 1
  br i1 %exitcond_i, label %5, label %4

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str9) nounwind
  %sum_i = add i6 %c_i_cast6, %tmp_i
  %sum_i_cast = zext i6 %sum_i to i32
  %input_addr = getelementptr [64 x i16]* %input_r, i32 0, i32 %sum_i_cast
  %input_load = load i16* %input_addr, align 2
  store i16 %input_load, i16* %buf_2d_in_addr, align 2
  br label %3

; <label>:5                                       ; preds = %3
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_2_i) nounwind
  br label %1

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_2d([64 x i16]* %buf_2d_in, [64 x i16]* %buf_2d_out) nounwind
  br label %6

; <label>:6                                       ; preds = %10, %read_data.exit
  %r_i2 = phi i4 [ 0, %read_data.exit ], [ %r_1, %10 ]
  %tmp_s = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i2, i3 0)
  %tmp_31_cast = zext i7 %tmp_s to i8
  %exitcond1_i3 = icmp eq i4 %r_i2, -8
  %empty_16 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  %r_1 = add i4 %r_i2, 1
  br i1 %exitcond1_i3, label %write_data.exit, label %7

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind
  %tmp_1_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10) nounwind
  %tmp_4 = trunc i4 %r_i2 to i3
  %tmp_i4 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_4, i3 0)
  br label %8

; <label>:8                                       ; preds = %9, %7
  %c_i5 = phi i4 [ 0, %7 ], [ %c_1, %9 ]
  %c_i5_cast2 = zext i4 %c_i5 to i6
  %c_i5_cast1_cast = zext i4 %c_i5 to i8
  %tmp_22 = add i8 %tmp_31_cast, %c_i5_cast1_cast
  %tmp_34_cast = zext i8 %tmp_22 to i32
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i32 0, i32 %tmp_34_cast
  %exitcond_i6 = icmp eq i4 %c_i5, -8
  %empty_17 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  %c_1 = add i4 %c_i5, 1
  br i1 %exitcond_i6, label %10, label %9

; <label>:9                                       ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str11) nounwind
  %buf_2d_out_load = load i16* %buf_2d_out_addr, align 2
  %sum3_i = add i6 %c_i5_cast2, %tmp_i4
  %sum3_i_cast = zext i6 %sum3_i to i32
  %output_addr = getelementptr [64 x i16]* %output_r, i32 0, i32 %sum3_i_cast
  store i16 %buf_2d_out_load, i16* %output_addr, align 2
  br label %8

; <label>:10                                      ; preds = %8
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_1_i) nounwind
  br label %6

write_data.exit:                                  ; preds = %6
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_19 = trunc i29 %empty to i16
  ret i16 %empty_19
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_20 = zext i3 %1 to i7
  %empty_21 = shl i7 %empty, 3
  %empty_22 = or i7 %empty_21, %empty_20
  ret i7 %empty_22
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_23 = zext i3 %1 to i6
  %empty_24 = shl i6 %empty, 3
  %empty_25 = or i6 %empty_24, %empty_23
  ret i6 %empty_25
}

!opencl.kernels = !{!0, !7, !10, !13, !16}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"dct_data_t*", metadata !"dct_data_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"src", metadata !"dst"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"dct_data_t [8]*", metadata !"dct_data_t [8]*"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"in_block", metadata !"out_block"}
!10 = metadata !{null, metadata !1, metadata !2, metadata !11, metadata !4, metadata !12, metadata !6}
!11 = metadata !{metadata !"kernel_arg_type", metadata !"short*", metadata !"short [8]*"}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"buf"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !14, metadata !4, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"short [8]*", metadata !"short*"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"output"}
!16 = metadata !{null, metadata !1, metadata !2, metadata !17, metadata !4, metadata !18, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"short*", metadata !"short*"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"output"}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 15, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"input", metadata !23, metadata !"short", i32 0, i32 15}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 63, i32 1}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 15, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"output", metadata !23, metadata !"short", i32 0, i32 15}
