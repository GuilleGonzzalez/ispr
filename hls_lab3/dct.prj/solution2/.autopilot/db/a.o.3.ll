; ModuleID = 'C:/Users/guill/Desktop/hls_lab3/dct.prj/solution2/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@dct_coeff_table = internal constant [64 x i15] [i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 8192, i15 11363, i15 9633, i15 6436, i15 2260, i15 -2260, i15 -6436, i15 -9632, i15 -11362, i15 10703, i15 4433, i15 -4433, i15 -10703, i15 -10703, i15 -4433, i15 4433, i15 10703, i15 9633, i15 -2260, i15 -11362, i15 -6436, i15 6436, i15 11363, i15 2260, i15 -9632, i15 8192, i15 -8192, i15 -8192, i15 8192, i15 8192, i15 -8191, i15 -8191, i15 8192, i15 6436, i15 -11362, i15 2260, i15 9633, i15 -9632, i15 -2260, i15 11363, i15 -6436, i15 4433, i15 -10703, i15 10703, i15 -4433, i15 -4433, i15 10703, i15 -10703, i15 4433, i15 2260, i15 -6436, i15 9633, i15 -11362, i15 11363, i15 -9632, i15 6436, i15 -2260] ; [#uses=1 type=[64 x i15]*]
@dct_str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@Xpose_Row_Outer_Loop = internal unnamed_addr constant [42 x i8] c"Xpose_Row_Outer_Loop_Xpose_Row_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@Xpose_Col_Outer_Loop = internal unnamed_addr constant [42 x i8] c"Xpose_Col_Outer_Loop_Xpose_Col_Inner_Loop\00" ; [#uses=1 type=[42 x i8]*]
@WR_Loop_Row_WR_Loop_s = internal unnamed_addr constant [24 x i8] c"WR_Loop_Row_WR_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@RD_Loop_Row_RD_Loop_s = internal unnamed_addr constant [24 x i8] c"RD_Loop_Row_RD_Loop_Col\00" ; [#uses=1 type=[24 x i8]*]
@p_str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str6 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=3 type=[21 x i8]*]
@p_str3 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=5 type=[1 x i8]*]
@p_str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=3 type=[12 x i8]*]
@p_str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]
@p_str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=3 type=[15 x i8]*]

; [#uses=1]
declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

; [#uses=22]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @dct_2d([64 x i16]* nocapture %in_block, [64 x i16]* nocapture %out_block) {
  %row_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_outbuf = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  %col_inbuf = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %in_block}, i64 0, metadata !19), !dbg !34 ; [debug line = 23:24] [debug variable = in_block]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %out_block}, i64 0, metadata !35), !dbg !36 ; [debug line = 24:18] [debug variable = out_block]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %col_inbuf}, metadata !37), !dbg !39 ; [debug line = 27:109] [debug variable = col_inbuf]
  br label %1, !dbg !40                           ; [debug line = 32:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_4, %2 ]             ; [#uses=4 type=i4]
  %tmp = icmp eq i4 %i, -8, !dbg !40              ; [#uses=1 type=i1] [debug line = 32:8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_4 = add i4 %i, 1, !dbg !42                   ; [#uses=1 type=i4] [debug line = 32:60]
  br i1 %tmp, label %.preheader2.preheader.preheader, label %2, !dbg !40 ; [debug line = 32:8]

.preheader2.preheader.preheader:                  ; preds = %1
  br label %.preheader2.preheader

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str3) nounwind, !dbg !43 ; [debug line = 32:66]
  call fastcc void @dct_1d2([64 x i16]* %in_block, i4 %i, [64 x i16]* %row_outbuf, i4 %i), !dbg !45 ; [debug line = 33:7]
  call void @llvm.dbg.value(metadata !{i4 %i_4}, i64 0, metadata !46), !dbg !42 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !42                           ; [debug line = 32:60]

.preheader2.preheader:                            ; preds = %.preheader2, %.preheader2.preheader.preheader
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %.preheader2 ], [ 0, %.preheader2.preheader.preheader ] ; [#uses=2 type=i7]
  %j = phi i4 [ %j_cast5_mid2_v, %.preheader2 ], [ 0, %.preheader2.preheader.preheader ] ; [#uses=2 type=i4]
  %i_1 = phi i4 [ %i_6, %.preheader2 ], [ 0, %.preheader2.preheader.preheader ] ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %.preheader1.preheader, label %.preheader2

.preheader1.preheader:                            ; preds = %.preheader2.preheader
  br label %.preheader1, !dbg !48                 ; [debug line = 43:9]

.preheader2:                                      ; preds = %.preheader2.preheader
  %j_2 = add i4 %j, 1, !dbg !50                   ; [#uses=1 type=i4] [debug line = 37:61]
  call void @llvm.dbg.value(metadata !{i4 %j_2}, i64 0, metadata !52), !dbg !50 ; [debug line = 37:61] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Row_Outer_Loop)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %tmp_s = icmp eq i4 %i_1, -8, !dbg !53          ; [#uses=2 type=i1] [debug line = 39:11]
  %i_1_mid2 = select i1 %tmp_s, i4 0, i4 %i_1     ; [#uses=3 type=i4]
  %j_cast5_mid2_v = select i1 %tmp_s, i4 %j_2, i4 %j, !dbg !56 ; [#uses=3 type=i4] [debug line = 37:9]
  %j_cast5_mid2_cast = zext i4 %j_cast5_mid2_v to i8 ; [#uses=1 type=i8]
  %tmp_1 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_cast5_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_4_cast = zext i7 %tmp_1 to i8, !dbg !53    ; [#uses=1 type=i8] [debug line = 39:11]
  %i_1_cast4_cast = zext i4 %i_1_mid2 to i8, !dbg !57 ; [#uses=1 type=i8] [debug line = 40:1]
  %tmp_5 = add i8 %i_1_cast4_cast, %tmp_4_cast, !dbg !57 ; [#uses=1 type=i8] [debug line = 40:1]
  %tmp_5_cast = zext i8 %tmp_5 to i32, !dbg !57   ; [#uses=1 type=i32] [debug line = 40:1]
  %col_inbuf_addr = getelementptr [64 x i16]* %col_inbuf, i32 0, i32 %tmp_5_cast, !dbg !57 ; [#uses=1 type=i16*] [debug line = 40:1]
  %tmp_6 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_1_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_8_cast = zext i7 %tmp_6 to i8, !dbg !57    ; [#uses=1 type=i8] [debug line = 40:1]
  %tmp_2 = add i8 %j_cast5_mid2_cast, %tmp_8_cast, !dbg !57 ; [#uses=1 type=i8] [debug line = 40:1]
  %tmp_10_cast = zext i8 %tmp_2 to i32, !dbg !57  ; [#uses=1 type=i32] [debug line = 40:1]
  %row_outbuf_addr = getelementptr [64 x i16]* %row_outbuf, i32 0, i32 %tmp_10_cast, !dbg !57 ; [#uses=1 type=i16*] [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str5) nounwind, !dbg !59 ; [debug line = 40:2]
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str5), !dbg !59 ; [#uses=1 type=i32] [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !60 ; [debug line = 41:1]
  %row_outbuf_load = load i16* %row_outbuf_addr, align 2, !dbg !57 ; [#uses=1 type=i16] [debug line = 40:1]
  store i16 %row_outbuf_load, i16* %col_inbuf_addr, align 2, !dbg !57 ; [debug line = 40:1]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str5, i32 %tmp_7), !dbg !61 ; [#uses=0 type=i32] [debug line = 40:34]
  %i_6 = add i4 %i_1_mid2, 1, !dbg !62            ; [#uses=1 type=i4] [debug line = 39:63]
  call void @llvm.dbg.value(metadata !{i4 %i_6}, i64 0, metadata !46), !dbg !62 ; [debug line = 39:63] [debug variable = i]
  br label %.preheader2.preheader

.preheader1:                                      ; preds = %3, %.preheader1.preheader
  %i_2 = phi i4 [ %i_5, %3 ], [ 0, %.preheader1.preheader ] ; [#uses=4 type=i4]
  %tmp_9 = icmp eq i4 %i_2, -8, !dbg !48          ; [#uses=1 type=i1] [debug line = 43:9]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  %i_5 = add i4 %i_2, 1, !dbg !63                 ; [#uses=1 type=i4] [debug line = 43:61]
  br i1 %tmp_9, label %.preheader.preheader.preheader, label %3, !dbg !48 ; [debug line = 43:9]

.preheader.preheader.preheader:                   ; preds = %.preheader1
  br label %.preheader.preheader

; <label>:3                                       ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @p_str6) nounwind, !dbg !64 ; [debug line = 43:67]
  call fastcc void @dct_1d2([64 x i16]* %col_inbuf, i4 %i_2, [64 x i16]* %col_outbuf, i4 %i_2), !dbg !66 ; [debug line = 44:7]
  call void @llvm.dbg.value(metadata !{i4 %i_5}, i64 0, metadata !46), !dbg !63 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader1, !dbg !63                 ; [debug line = 43:61]

.preheader.preheader:                             ; preds = %.preheader, %.preheader.preheader.preheader
  %indvar_flatten1 = phi i7 [ %indvar_flatten_next1, %.preheader ], [ 0, %.preheader.preheader.preheader ] ; [#uses=2 type=i7]
  %j_1 = phi i4 [ %j_1_cast2_mid2_v, %.preheader ], [ 0, %.preheader.preheader.preheader ] ; [#uses=2 type=i4]
  %i_3 = phi i4 [ %i_7, %.preheader ], [ 0, %.preheader.preheader.preheader ] ; [#uses=2 type=i4]
  %exitcond_flatten1 = icmp eq i7 %indvar_flatten1, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next1 = add i7 %indvar_flatten1, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten1, label %4, label %.preheader

.preheader:                                       ; preds = %.preheader.preheader
  %j_3 = add i4 %j_1, 1, !dbg !67                 ; [#uses=1 type=i4] [debug line = 48:61]
  call void @llvm.dbg.value(metadata !{i4 %j_3}, i64 0, metadata !52), !dbg !67 ; [debug line = 48:61] [debug variable = j]
  call void (...)* @_ssdm_op_SpecLoopName([42 x i8]* @Xpose_Col_Outer_Loop)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) ; [#uses=0 type=i32]
  %tmp_4 = icmp eq i4 %i_3, -8, !dbg !69          ; [#uses=2 type=i1] [debug line = 50:11]
  %i_3_mid2 = select i1 %tmp_4, i4 0, i4 %i_3     ; [#uses=3 type=i4]
  %j_1_cast2_mid2_v = select i1 %tmp_4, i4 %j_3, i4 %j_1, !dbg !72 ; [#uses=3 type=i4] [debug line = 48:9]
  %j_1_cast2_mid2_cast = zext i4 %j_1_cast2_mid2_v to i8 ; [#uses=1 type=i8]
  %tmp_8 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %j_1_cast2_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_12_cast = zext i7 %tmp_8 to i8, !dbg !69   ; [#uses=1 type=i8] [debug line = 50:11]
  %i_3_cast1_cast = zext i4 %i_3_mid2 to i8, !dbg !73 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_10 = add i8 %i_3_cast1_cast, %tmp_12_cast, !dbg !73 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_13_cast = zext i8 %tmp_10 to i32, !dbg !73 ; [#uses=1 type=i32] [debug line = 51:1]
  %out_block_addr = getelementptr [64 x i16]* %out_block, i32 0, i32 %tmp_13_cast, !dbg !73 ; [#uses=1 type=i16*] [debug line = 51:1]
  %tmp_11 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_3_mid2, i3 0) ; [#uses=1 type=i7]
  %tmp_15_cast = zext i7 %tmp_11 to i8, !dbg !73  ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_12 = add i8 %j_1_cast2_mid2_cast, %tmp_15_cast, !dbg !73 ; [#uses=1 type=i8] [debug line = 51:1]
  %tmp_16_cast = zext i8 %tmp_12 to i32, !dbg !73 ; [#uses=1 type=i32] [debug line = 51:1]
  %col_outbuf_addr = getelementptr [64 x i16]* %col_outbuf, i32 0, i32 %tmp_16_cast, !dbg !73 ; [#uses=1 type=i16*] [debug line = 51:1]
  call void (...)* @_ssdm_op_SpecLoopName([21 x i8]* @p_str8) nounwind, !dbg !75 ; [debug line = 51:2]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([21 x i8]* @p_str8), !dbg !75 ; [#uses=1 type=i32] [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !76 ; [debug line = 52:1]
  %col_outbuf_load = load i16* %col_outbuf_addr, align 2, !dbg !73 ; [#uses=1 type=i16] [debug line = 51:1]
  store i16 %col_outbuf_load, i16* %out_block_addr, align 2, !dbg !73 ; [debug line = 51:1]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([21 x i8]* @p_str8, i32 %tmp_3), !dbg !77 ; [#uses=0 type=i32] [debug line = 51:34]
  %i_7 = add i4 %i_3_mid2, 1, !dbg !78            ; [#uses=1 type=i4] [debug line = 50:63]
  call void @llvm.dbg.value(metadata !{i4 %i_7}, i64 0, metadata !46), !dbg !78 ; [debug line = 50:63] [debug variable = i]
  br label %.preheader.preheader

; <label>:4                                       ; preds = %.preheader.preheader
  ret void, !dbg !79                              ; [debug line = 52:1]
}

; [#uses=2]
define internal fastcc void @dct_1d2([64 x i16]* nocapture %src, i4 %i_2, [64 x i16]* nocapture %dst, i4 %i_21) {
  %i_21_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %i_21) ; [#uses=1 type=i4]
  %i_2_read = call i4 @_ssdm_op_Read.ap_auto.i4(i4 %i_2) ; [#uses=1 type=i4]
  %tmp_13 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_21_read, i3 0) ; [#uses=1 type=i7]
  %tmp_18_cast = zext i7 %tmp_13 to i8            ; [#uses=1 type=i8]
  %tmp_14 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %i_2_read, i3 0) ; [#uses=1 type=i7]
  %tmp_20_cast = zext i7 %tmp_14 to i8, !dbg !80  ; [#uses=1 type=i8] [debug line = 4:24]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %src}, i64 0, metadata !85), !dbg !80 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %dst}, i64 0, metadata !87), !dbg !88 ; [debug line = 4:81] [debug variable = dst]
  br label %1, !dbg !89                           ; [debug line = 13:9]

; <label>:1                                       ; preds = %5, %0
  %k = phi i4 [ 0, %0 ], [ %k_1, %5 ]             ; [#uses=4 type=i4]
  %tmp = icmp eq i4 %k, -8, !dbg !89              ; [#uses=1 type=i1] [debug line = 13:9]
  %k_1 = add i4 %k, 1, !dbg !92                   ; [#uses=1 type=i4] [debug line = 13:61]
  br i1 %tmp, label %6, label %2, !dbg !89        ; [debug line = 13:9]

; <label>:2                                       ; preds = %1
  %k_cast2_cast = zext i4 %k to i8, !dbg !93      ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_15 = add i8 %k_cast2_cast, %tmp_18_cast, !dbg !93 ; [#uses=1 type=i8] [debug line = 19:7]
  %tmp_21_cast = zext i8 %tmp_15 to i32, !dbg !93 ; [#uses=1 type=i32] [debug line = 19:7]
  %dst_addr = getelementptr [64 x i16]* %dst, i32 0, i32 %tmp_21_cast, !dbg !93 ; [#uses=1 type=i16*] [debug line = 19:7]
  %tmp_16 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %k, i3 0) ; [#uses=1 type=i7]
  %tmp_23_cast = zext i7 %tmp_16 to i8            ; [#uses=1 type=i8]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str) nounwind, !dbg !95 ; [debug line = 13:67]
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str) nounwind, !dbg !95 ; [#uses=1 type=i32] [debug line = 13:67]
  br label %3, !dbg !96                           ; [debug line = 15:11]

; <label>:3                                       ; preds = %4, %2
  %n = phi i4 [ 0, %2 ], [ %n_1, %4 ]             ; [#uses=3 type=i4]
  %tmp1 = phi i32 [ 0, %2 ], [ %tmp_1, %4 ]       ; [#uses=2 type=i32]
  %tmp_s = icmp eq i4 %n, -8, !dbg !96            ; [#uses=1 type=i1] [debug line = 15:11]
  %n_1 = add i4 %n, 1, !dbg !98                   ; [#uses=1 type=i4] [debug line = 15:72]
  br i1 %tmp_s, label %5, label %4, !dbg !96      ; [debug line = 15:11]

; <label>:4                                       ; preds = %3
  %n_cast1_cast = zext i4 %n to i8, !dbg !99      ; [#uses=2 type=i8] [debug line = 17:10]
  %tmp_17 = add i8 %tmp_20_cast, %n_cast1_cast, !dbg !99 ; [#uses=1 type=i8] [debug line = 17:10]
  %tmp_24_cast = zext i8 %tmp_17 to i32, !dbg !99 ; [#uses=1 type=i32] [debug line = 17:10]
  %src_addr = getelementptr [64 x i16]* %src, i32 0, i32 %tmp_24_cast, !dbg !99 ; [#uses=1 type=i16*] [debug line = 17:10]
  %tmp_18 = add i8 %tmp_23_cast, %n_cast1_cast, !dbg !101 ; [#uses=1 type=i8] [debug line = 16:48]
  %tmp_25_cast = zext i8 %tmp_18 to i32, !dbg !101 ; [#uses=1 type=i32] [debug line = 16:48]
  %dct_coeff_table_addr = getelementptr [64 x i15]* @dct_coeff_table, i32 0, i32 %tmp_25_cast, !dbg !101 ; [#uses=1 type=i15*] [debug line = 16:48]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([15 x i8]* @p_str1) nounwind, !dbg !102 ; [debug line = 15:78]
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([15 x i8]* @p_str1) nounwind, !dbg !102 ; [#uses=1 type=i32] [debug line = 15:78]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !103 ; [debug line = 16:1]
  %dct_coeff_table_load = load i15* %dct_coeff_table_addr, align 2, !dbg !101 ; [#uses=1 type=i15] [debug line = 16:48]
  %coeff_cast = sext i15 %dct_coeff_table_load to i31, !dbg !101 ; [#uses=1 type=i31] [debug line = 16:48]
  %src_load = load i16* %src_addr, align 2, !dbg !99 ; [#uses=1 type=i16] [debug line = 17:10]
  %tmp_6_cast = sext i16 %src_load to i31, !dbg !99 ; [#uses=1 type=i31] [debug line = 17:10]
  %tmp_7 = mul i31 %coeff_cast, %tmp_6_cast, !dbg !99 ; [#uses=1 type=i31] [debug line = 17:10]
  %tmp_7_cast = sext i31 %tmp_7 to i32, !dbg !99  ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp_1 = add nsw i32 %tmp1, %tmp_7_cast, !dbg !99 ; [#uses=1 type=i32] [debug line = 17:10]
  call void @llvm.dbg.value(metadata !{i32 %tmp_1}, i64 0, metadata !104), !dbg !99 ; [debug line = 17:10] [debug variable = tmp]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str1, i32 %tmp_9) nounwind, !dbg !106 ; [#uses=0 type=i32] [debug line = 18:7]
  call void @llvm.dbg.value(metadata !{i4 %n_1}, i64 0, metadata !107), !dbg !98 ; [debug line = 15:72] [debug variable = n]
  br label %3, !dbg !98                           ; [debug line = 15:72]

; <label>:5                                       ; preds = %3
  %tmp_2 = trunc i32 %tmp1 to i29, !dbg !96       ; [#uses=1 type=i29] [debug line = 15:11]
  %tmp_3 = add i29 4096, %tmp_2, !dbg !93         ; [#uses=1 type=i29] [debug line = 19:7]
  %tmp_5 = call i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29 %tmp_3, i32 13, i32 28), !dbg !93 ; [#uses=1 type=i16] [debug line = 19:7]
  store i16 %tmp_5, i16* %dst_addr, align 2, !dbg !93 ; [debug line = 19:7]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([15 x i8]* @p_str, i32 %tmp_8) nounwind, !dbg !108 ; [#uses=0 type=i32] [debug line = 20:4]
  call void @llvm.dbg.value(metadata !{i4 %k_1}, i64 0, metadata !109), !dbg !92 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !92                           ; [debug line = 13:61]

; <label>:6                                       ; preds = %1
  ret void, !dbg !110                             ; [debug line = 21:1]
}

; [#uses=0]
define void @dct([64 x i16]* %input, [64 x i16]* %output) nounwind {
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %input) nounwind, !map !111
  call void (...)* @_ssdm_op_SpecBitsMap([64 x i16]* %output) nounwind, !map !117
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct_str) nounwind
  %buf_2d_in = alloca [64 x i16], align 2         ; [#uses=2 type=[64 x i16]*]
  %buf_2d_out = alloca [64 x i16], align 2        ; [#uses=2 type=[64 x i16]*]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !121), !dbg !129 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !130), !dbg !131 ; [debug line = 78:38] [debug variable = output]
  call void @llvm.dbg.declare(metadata !{[64 x i16]* %buf_2d_in}, metadata !132), !dbg !135 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %input}, i64 0, metadata !136) nounwind, !dbg !143 ; [debug line = 54:22@85:4] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %buf_2d_in}, i64 0, metadata !144) nounwind, !dbg !145 ; [debug line = 54:44@85:4] [debug variable = buf]
  br label %1, !dbg !146                          ; [debug line = 59:9@85:4]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i7 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i7]
  %r_i = phi i4 [ 0, %0 ], [ %r_i_cast8_mid2_v, %.reset ] ; [#uses=2 type=i4]
  %c_i = phi i4 [ 0, %0 ], [ %c, %.reset ]        ; [#uses=2 type=i4]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i7 %indvar_flatten, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten, label %read_data.exit, label %.reset

.reset:                                           ; preds = %1
  %r = add i4 1, %r_i, !dbg !149                  ; [#uses=1 type=i4] [debug line = 59:61@85:4]
  call void @llvm.dbg.value(metadata !{i4 %r}, i64 0, metadata !150) nounwind, !dbg !149 ; [debug line = 59:61@85:4] [debug variable = r]
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @RD_Loop_Row_RD_Loop_s)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond_i = icmp eq i4 %c_i, -8, !dbg !151    ; [#uses=2 type=i1] [debug line = 61:12@85:4]
  %c_i_mid2 = select i1 %exitcond_i, i4 0, i4 %c_i ; [#uses=3 type=i4]
  %r_i_cast8_mid2_v = select i1 %exitcond_i, i4 %r, i4 %r_i, !dbg !146 ; [#uses=3 type=i4] [debug line = 59:9@85:4]
  %tmp = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i_cast8_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_26_cast = zext i7 %tmp to i8               ; [#uses=1 type=i8]
  %tmp_3 = trunc i4 %r_i_cast8_mid2_v to i3       ; [#uses=1 type=i3]
  %tmp_i_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_3, i3 0), !dbg !154 ; [#uses=1 type=i6] [debug line = 62:1@85:4]
  %c_i_cast6 = zext i4 %c_i_mid2 to i6, !dbg !151 ; [#uses=1 type=i6] [debug line = 61:12@85:4]
  %c_i_cast5_cast = zext i4 %c_i_mid2 to i8, !dbg !154 ; [#uses=1 type=i8] [debug line = 62:1@85:4]
  %tmp_s = add i8 %tmp_26_cast, %c_i_cast5_cast, !dbg !154 ; [#uses=1 type=i8] [debug line = 62:1@85:4]
  %tmp_28_cast = zext i8 %tmp_s to i32, !dbg !154 ; [#uses=1 type=i32] [debug line = 62:1@85:4]
  %buf_2d_in_addr = getelementptr [64 x i16]* %buf_2d_in, i32 0, i32 %tmp_28_cast, !dbg !154 ; [#uses=1 type=i16*] [debug line = 62:1@85:4]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str10) nounwind, !dbg !156 ; [debug line = 62:2@85:4]
  %tmp_4_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str10) nounwind, !dbg !156 ; [#uses=1 type=i32] [debug line = 62:2@85:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !157 ; [debug line = 63:1@85:4]
  %sum_i = add i6 %tmp_i_mid2, %c_i_cast6         ; [#uses=1 type=i6]
  %sum_i_cast = zext i6 %sum_i to i32             ; [#uses=1 type=i32]
  %input_addr = getelementptr [64 x i16]* %input, i32 0, i32 %sum_i_cast, !dbg !154 ; [#uses=1 type=i16*] [debug line = 62:1@85:4]
  %input_load = load i16* %input_addr, align 2, !dbg !154 ; [#uses=1 type=i16] [debug line = 62:1@85:4]
  store i16 %input_load, i16* %buf_2d_in_addr, align 2, !dbg !154 ; [debug line = 62:1@85:4]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str10, i32 %tmp_4_i) nounwind, !dbg !158 ; [#uses=0 type=i32] [debug line = 62:66@85:4]
  %c = add i4 1, %c_i_mid2, !dbg !159             ; [#uses=1 type=i4] [debug line = 61:64@85:4]
  call void @llvm.dbg.value(metadata !{i4 %c}, i64 0, metadata !160) nounwind, !dbg !159 ; [debug line = 61:64@85:4] [debug variable = c]
  br label %1

read_data.exit:                                   ; preds = %1
  call fastcc void @dct_2d([64 x i16]* %buf_2d_in, [64 x i16]* %buf_2d_out) nounwind, !dbg !161 ; [debug line = 87:4]
  call void @llvm.dbg.value(metadata !{[64 x i16]* %output}, i64 0, metadata !162) nounwind, !dbg !167 ; [debug line = 66:116@90:4] [debug variable = output]
  br label %2, !dbg !168                          ; [debug line = 71:9@90:4]

; <label>:2                                       ; preds = %.reset10, %read_data.exit
  %indvar_flatten2 = phi i7 [ 0, %read_data.exit ], [ %indvar_flatten_next2, %.reset10 ] ; [#uses=2 type=i7]
  %r_i2 = phi i4 [ 0, %read_data.exit ], [ %r_i2_cast4_mid2_v, %.reset10 ] ; [#uses=2 type=i4]
  %c_i5 = phi i4 [ 0, %read_data.exit ], [ %c_1, %.reset10 ] ; [#uses=2 type=i4]
  %exitcond_flatten2 = icmp eq i7 %indvar_flatten2, -64 ; [#uses=1 type=i1]
  %indvar_flatten_next2 = add i7 %indvar_flatten2, 1 ; [#uses=1 type=i7]
  br i1 %exitcond_flatten2, label %write_data.exit, label %.reset10

.reset10:                                         ; preds = %2
  %r_1 = add i4 1, %r_i2, !dbg !171               ; [#uses=1 type=i4] [debug line = 71:61@90:4]
  call void @llvm.dbg.value(metadata !{i4 %r_1}, i64 0, metadata !172) nounwind, !dbg !171 ; [debug line = 71:61@90:4] [debug variable = r]
  call void (...)* @_ssdm_op_SpecLoopName([24 x i8]* @WR_Loop_Row_WR_Loop_s)
  %empty_14 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind ; [#uses=0 type=i32]
  %exitcond_i1 = icmp eq i4 %c_i5, -8, !dbg !173  ; [#uses=2 type=i1] [debug line = 73:12@90:4]
  %c_i5_mid2 = select i1 %exitcond_i1, i4 0, i4 %c_i5 ; [#uses=3 type=i4]
  %r_i2_cast4_mid2_v = select i1 %exitcond_i1, i4 %r_1, i4 %r_i2, !dbg !168 ; [#uses=3 type=i4] [debug line = 71:9@90:4]
  %tmp_19 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %r_i2_cast4_mid2_v, i3 0) ; [#uses=1 type=i7]
  %tmp_30_cast = zext i7 %tmp_19 to i8            ; [#uses=1 type=i8]
  %tmp_4 = trunc i4 %r_i2_cast4_mid2_v to i3      ; [#uses=1 type=i3]
  %tmp_i4_mid2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_4, i3 0), !dbg !176 ; [#uses=1 type=i6] [debug line = 74:1@90:4]
  %c_i5_cast2 = zext i4 %c_i5_mid2 to i6, !dbg !173 ; [#uses=1 type=i6] [debug line = 73:12@90:4]
  %c_i5_cast1_cast = zext i4 %c_i5_mid2 to i8, !dbg !176 ; [#uses=1 type=i8] [debug line = 74:1@90:4]
  %tmp_20 = add i8 %tmp_30_cast, %c_i5_cast1_cast, !dbg !176 ; [#uses=1 type=i8] [debug line = 74:1@90:4]
  %tmp_32_cast = zext i8 %tmp_20 to i32, !dbg !176 ; [#uses=1 type=i32] [debug line = 74:1@90:4]
  %buf_2d_out_addr = getelementptr [64 x i16]* %buf_2d_out, i32 0, i32 %tmp_32_cast, !dbg !176 ; [#uses=1 type=i16*] [debug line = 74:1@90:4]
  call void (...)* @_ssdm_op_SpecLoopName([12 x i8]* @p_str12) nounwind, !dbg !178 ; [debug line = 74:2@90:4]
  %tmp_2_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str12) nounwind, !dbg !178 ; [#uses=1 type=i32] [debug line = 74:2@90:4]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !179 ; [debug line = 75:1@90:4]
  %buf_2d_out_load = load i16* %buf_2d_out_addr, align 2, !dbg !176 ; [#uses=1 type=i16] [debug line = 74:1@90:4]
  %sum3_i = add i6 %tmp_i4_mid2, %c_i5_cast2      ; [#uses=1 type=i6]
  %sum3_i_cast = zext i6 %sum3_i to i32           ; [#uses=1 type=i32]
  %output_addr = getelementptr [64 x i16]* %output, i32 0, i32 %sum3_i_cast, !dbg !176 ; [#uses=1 type=i16*] [debug line = 74:1@90:4]
  store i16 %buf_2d_out_load, i16* %output_addr, align 2, !dbg !176 ; [debug line = 74:1@90:4]
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str12, i32 %tmp_2_i) nounwind, !dbg !180 ; [#uses=0 type=i32] [debug line = 74:67@90:4]
  %c_1 = add i4 1, %c_i5_mid2, !dbg !181          ; [#uses=1 type=i4] [debug line = 73:64@90:4]
  call void @llvm.dbg.value(metadata !{i4 %c_1}, i64 0, metadata !182) nounwind, !dbg !181 ; [debug line = 73:64@90:4] [debug variable = c]
  br label %2

write_data.exit:                                  ; preds = %2
  ret void, !dbg !183                             ; [debug line = 91:1]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=5]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=8]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=12]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i4 @_ssdm_op_Read.ap_auto.i4(i4) {
entry:
  ret i4 %0
}

; [#uses=0]
declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

; [#uses=0]
declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i16 @_ssdm_op_PartSelect.i16.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2) ; [#uses=1 type=i29]
  %empty_16 = trunc i29 %empty to i16             ; [#uses=1 type=i16]
  ret i16 %empty_16
}

; [#uses=9]
define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7                       ; [#uses=1 type=i7]
  %empty_17 = zext i3 %1 to i7                    ; [#uses=1 type=i7]
  %empty_18 = shl i7 %empty, 3                    ; [#uses=1 type=i7]
  %empty_19 = or i7 %empty_18, %empty_17          ; [#uses=1 type=i7]
  ret i7 %empty_19
}

; [#uses=2]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_20 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_21 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_22 = or i6 %empty_21, %empty_20          ; [#uses=1 type=i6]
  ret i6 %empty_22
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
!19 = metadata !{i32 786689, metadata !20, metadata !"in_block", null, i32 23, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!20 = metadata !{i32 786478, i32 0, metadata !21, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !21, i32 23, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 25} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786473, metadata !"dct.c", metadata !"C:\5CUsers\5Cguill\5CDesktop\5Chls_lab3", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24, metadata !24}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !26, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!26 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !21, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ]
!27 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!32 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !26, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!33 = metadata !{metadata !29, metadata !29}
!34 = metadata !{i32 23, i32 24, metadata !20, null}
!35 = metadata !{i32 786689, metadata !20, metadata !"out_block", null, i32 24, metadata !32, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!36 = metadata !{i32 24, i32 18, metadata !20, null}
!37 = metadata !{i32 786688, metadata !38, metadata !"col_inbuf", metadata !21, i32 27, metadata !32, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!38 = metadata !{i32 786443, metadata !20, i32 25, i32 1, metadata !21, i32 5} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 27, i32 109, metadata !38, null}
!40 = metadata !{i32 32, i32 8, metadata !41, null}
!41 = metadata !{i32 786443, metadata !38, i32 32, i32 4, metadata !21, i32 6} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 32, i32 60, metadata !41, null}
!43 = metadata !{i32 32, i32 66, metadata !44, null}
!44 = metadata !{i32 786443, metadata !41, i32 32, i32 65, metadata !21, i32 7} ; [ DW_TAG_lexical_block ]
!45 = metadata !{i32 33, i32 7, metadata !44, null}
!46 = metadata !{i32 786688, metadata !38, metadata !"i", metadata !21, i32 28, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!48 = metadata !{i32 43, i32 9, metadata !49, null}
!49 = metadata !{i32 786443, metadata !38, i32 43, i32 4, metadata !21, i32 12} ; [ DW_TAG_lexical_block ]
!50 = metadata !{i32 37, i32 61, metadata !51, null}
!51 = metadata !{i32 786443, metadata !38, i32 37, i32 4, metadata !21, i32 8} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786688, metadata !38, metadata !"j", metadata !21, i32 28, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 39, i32 11, metadata !54, null}
!54 = metadata !{i32 786443, metadata !55, i32 39, i32 7, metadata !21, i32 10} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 786443, metadata !51, i32 38, i32 1, metadata !21, i32 9} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 37, i32 9, metadata !51, null}
!57 = metadata !{i32 40, i32 1, metadata !58, null}
!58 = metadata !{i32 786443, metadata !54, i32 40, i32 1, metadata !21, i32 11} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 40, i32 2, metadata !58, null}
!60 = metadata !{i32 41, i32 1, metadata !58, null}
!61 = metadata !{i32 40, i32 34, metadata !58, null}
!62 = metadata !{i32 39, i32 63, metadata !54, null}
!63 = metadata !{i32 43, i32 61, metadata !49, null}
!64 = metadata !{i32 43, i32 67, metadata !65, null}
!65 = metadata !{i32 786443, metadata !49, i32 43, i32 66, metadata !21, i32 13} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 44, i32 7, metadata !65, null}
!67 = metadata !{i32 48, i32 61, metadata !68, null}
!68 = metadata !{i32 786443, metadata !38, i32 48, i32 4, metadata !21, i32 14} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 50, i32 11, metadata !70, null}
!70 = metadata !{i32 786443, metadata !71, i32 50, i32 7, metadata !21, i32 16} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786443, metadata !68, i32 49, i32 1, metadata !21, i32 15} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 48, i32 9, metadata !68, null}
!73 = metadata !{i32 51, i32 1, metadata !74, null}
!74 = metadata !{i32 786443, metadata !70, i32 51, i32 1, metadata !21, i32 17} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 51, i32 2, metadata !74, null}
!76 = metadata !{i32 52, i32 1, metadata !74, null}
!77 = metadata !{i32 51, i32 34, metadata !74, null}
!78 = metadata !{i32 50, i32 63, metadata !70, null}
!79 = metadata !{i32 52, i32 1, metadata !38, null}
!80 = metadata !{i32 4, i32 24, metadata !81, null}
!81 = metadata !{i32 786478, i32 0, metadata !21, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !21, i32 4, metadata !82, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 5} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{null, metadata !84, metadata !84}
!84 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!85 = metadata !{i32 786689, metadata !81, metadata !"src", null, i32 4, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 0, i64 0, i32 0, i32 0, metadata !26, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!87 = metadata !{i32 786689, metadata !81, metadata !"dst", null, i32 4, metadata !86, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 4, i32 81, metadata !81, null}
!89 = metadata !{i32 13, i32 9, metadata !90, null}
!90 = metadata !{i32 786443, metadata !91, i32 13, i32 4, metadata !21, i32 1} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 786443, metadata !81, i32 5, i32 1, metadata !21, i32 0} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 13, i32 61, metadata !90, null}
!93 = metadata !{i32 19, i32 7, metadata !94, null}
!94 = metadata !{i32 786443, metadata !90, i32 13, i32 66, metadata !21, i32 2} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 13, i32 67, metadata !94, null}
!96 = metadata !{i32 15, i32 11, metadata !97, null}
!97 = metadata !{i32 786443, metadata !94, i32 15, i32 7, metadata !21, i32 3} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 15, i32 72, metadata !97, null}
!99 = metadata !{i32 17, i32 10, metadata !100, null}
!100 = metadata !{i32 786443, metadata !97, i32 15, i32 77, metadata !21, i32 4} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 16, i32 48, metadata !100, null}
!102 = metadata !{i32 15, i32 78, metadata !100, null}
!103 = metadata !{i32 16, i32 1, metadata !100, null}
!104 = metadata !{i32 786688, metadata !91, metadata !"tmp", metadata !21, i32 7, metadata !105, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!106 = metadata !{i32 18, i32 7, metadata !100, null}
!107 = metadata !{i32 786688, metadata !91, metadata !"n", metadata !21, i32 6, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 20, i32 4, metadata !94, null}
!109 = metadata !{i32 786688, metadata !91, metadata !"k", metadata !21, i32 6, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!110 = metadata !{i32 21, i32 1, metadata !91, null}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 0, i32 15, metadata !113}
!113 = metadata !{metadata !114}
!114 = metadata !{metadata !"input", metadata !115, metadata !"short", i32 0, i32 15}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 63, i32 1}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 15, metadata !119}
!119 = metadata !{metadata !120}
!120 = metadata !{metadata !"output", metadata !115, metadata !"short", i32 0, i32 15}
!121 = metadata !{i32 786689, metadata !122, metadata !"input", null, i32 78, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 786478, i32 0, metadata !21, metadata !"dct", metadata !"dct", metadata !"", metadata !21, i32 78, metadata !123, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 79} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !124, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!124 = metadata !{null, metadata !125, metadata !125}
!125 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ]
!126 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !27, metadata !127, i32 0, i32 0} ; [ DW_TAG_array_type ]
!127 = metadata !{metadata !128}
!128 = metadata !{i32 786465, i64 0, i64 63}      ; [ DW_TAG_subrange_type ]
!129 = metadata !{i32 78, i32 16, metadata !122, null}
!130 = metadata !{i32 786689, metadata !122, metadata !"output", null, i32 78, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!131 = metadata !{i32 78, i32 38, metadata !122, null}
!132 = metadata !{i32 786688, metadata !133, metadata !"buf_2d_in", metadata !21, i32 81, metadata !134, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 786443, metadata !122, i32 79, i32 1, metadata !21, i32 28} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !27, metadata !33, i32 0, i32 0} ; [ DW_TAG_array_type ]
!135 = metadata !{i32 81, i32 10, metadata !133, null}
!136 = metadata !{i32 786689, metadata !137, metadata !"input", null, i32 54, metadata !126, i32 0, metadata !142} ; [ DW_TAG_arg_variable ]
!137 = metadata !{i32 786478, i32 0, metadata !21, metadata !"read_data", metadata !"read_data", metadata !"", metadata !21, i32 54, metadata !138, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 55} ; [ DW_TAG_subprogram ]
!138 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !139, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!139 = metadata !{null, metadata !125, metadata !140}
!140 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ]
!141 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !27, metadata !28, i32 0, i32 0} ; [ DW_TAG_array_type ]
!142 = metadata !{i32 85, i32 4, metadata !133, null}
!143 = metadata !{i32 54, i32 22, metadata !137, metadata !142}
!144 = metadata !{i32 786689, metadata !137, metadata !"buf", null, i32 54, metadata !134, i32 0, metadata !142} ; [ DW_TAG_arg_variable ]
!145 = metadata !{i32 54, i32 44, metadata !137, metadata !142}
!146 = metadata !{i32 59, i32 9, metadata !147, metadata !142}
!147 = metadata !{i32 786443, metadata !148, i32 59, i32 4, metadata !21, i32 19} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786443, metadata !137, i32 55, i32 1, metadata !21, i32 18} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 59, i32 61, metadata !147, metadata !142}
!150 = metadata !{i32 786688, metadata !148, metadata !"r", metadata !21, i32 56, metadata !105, i32 0, metadata !142} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 61, i32 12, metadata !152, metadata !142}
!152 = metadata !{i32 786443, metadata !153, i32 61, i32 7, metadata !21, i32 21} ; [ DW_TAG_lexical_block ]
!153 = metadata !{i32 786443, metadata !147, i32 59, i32 66, metadata !21, i32 20} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 62, i32 1, metadata !155, metadata !142}
!155 = metadata !{i32 786443, metadata !152, i32 62, i32 1, metadata !21, i32 22} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 62, i32 2, metadata !155, metadata !142}
!157 = metadata !{i32 63, i32 1, metadata !155, metadata !142}
!158 = metadata !{i32 62, i32 66, metadata !155, metadata !142}
!159 = metadata !{i32 61, i32 64, metadata !152, metadata !142}
!160 = metadata !{i32 786688, metadata !148, metadata !"c", metadata !21, i32 56, metadata !105, i32 0, metadata !142} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 87, i32 4, metadata !133, null}
!162 = metadata !{i32 786689, metadata !163, metadata !"output", null, i32 66, metadata !126, i32 0, metadata !166} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 786478, i32 0, metadata !21, metadata !"write_data", metadata !"write_data", metadata !"", metadata !21, i32 66, metadata !164, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !30, i32 67} ; [ DW_TAG_subprogram ]
!164 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!165 = metadata !{null, metadata !140, metadata !125}
!166 = metadata !{i32 90, i32 4, metadata !133, null}
!167 = metadata !{i32 66, i32 116, metadata !163, metadata !166}
!168 = metadata !{i32 71, i32 9, metadata !169, metadata !166}
!169 = metadata !{i32 786443, metadata !170, i32 71, i32 4, metadata !21, i32 24} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 786443, metadata !163, i32 67, i32 1, metadata !21, i32 23} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 71, i32 61, metadata !169, metadata !166}
!172 = metadata !{i32 786688, metadata !170, metadata !"r", metadata !21, i32 68, metadata !105, i32 0, metadata !166} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 73, i32 12, metadata !174, metadata !166}
!174 = metadata !{i32 786443, metadata !175, i32 73, i32 7, metadata !21, i32 26} ; [ DW_TAG_lexical_block ]
!175 = metadata !{i32 786443, metadata !169, i32 71, i32 66, metadata !21, i32 25} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 74, i32 1, metadata !177, metadata !166}
!177 = metadata !{i32 786443, metadata !174, i32 74, i32 1, metadata !21, i32 27} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 74, i32 2, metadata !177, metadata !166}
!179 = metadata !{i32 75, i32 1, metadata !177, metadata !166}
!180 = metadata !{i32 74, i32 67, metadata !177, metadata !166}
!181 = metadata !{i32 73, i32 64, metadata !174, metadata !166}
!182 = metadata !{i32 786688, metadata !170, metadata !"c", metadata !21, i32 68, metadata !105, i32 0, metadata !166} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 91, i32 1, metadata !133, null}
