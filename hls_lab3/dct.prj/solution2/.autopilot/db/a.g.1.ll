; ModuleID = 'C:/Users/guill/Desktop/hls_lab3/dct.prj/solution2/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@dct_coeff_table = internal unnamed_addr constant [8 x [8 x i16]] [[8 x i16] [i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192], [8 x i16] [i16 11363, i16 9633, i16 6436, i16 2260, i16 -2260, i16 -6436, i16 -9632, i16 -11362], [8 x i16] [i16 10703, i16 4433, i16 -4433, i16 -10703, i16 -10703, i16 -4433, i16 4433, i16 10703], [8 x i16] [i16 9633, i16 -2260, i16 -11362, i16 -6436, i16 6436, i16 11363, i16 2260, i16 -9632], [8 x i16] [i16 8192, i16 -8192, i16 -8192, i16 8192, i16 8192, i16 -8191, i16 -8191, i16 8192], [8 x i16] [i16 6436, i16 -11362, i16 2260, i16 9633, i16 -9632, i16 -2260, i16 11363, i16 -6436], [8 x i16] [i16 4433, i16 -10703, i16 10703, i16 -4433, i16 -4433, i16 10703, i16 -10703, i16 4433], [8 x i16] [i16 2260, i16 -6436, i16 9633, i16 -11362, i16 11363, i16 -9632, i16 6436, i16 -2260]], align 2 ; [#uses=1 type=[8 x [8 x i16]]*]
@dct.str = internal unnamed_addr constant [4 x i8] c"dct\00" ; [#uses=1 type=[4 x i8]*]
@.str9 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str8 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str7 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str6 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str5 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str4 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str3 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str12 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]

; [#uses=1]
define internal fastcc void @write_data([8 x i16]* %buf, i16* %output) nounwind {
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf}, i64 0, metadata !58), !dbg !59 ; [debug line = 66:23] [debug variable = buf]
  call void @llvm.dbg.value(metadata !{i16* %output}, i64 0, metadata !60), !dbg !61 ; [debug line = 66:116] [debug variable = output]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %output, i32 64), !dbg !62 ; [debug line = 67:2]
  call void (...)* @_ssdm_SpecArrayDimSize([8 x i16]* %buf, i32 8), !dbg !64 ; [debug line = 67:41]
  br label %1, !dbg !65                           ; [debug line = 71:9]

; <label>:1                                       ; preds = %5, %0
  %r = phi i32 [ 0, %0 ], [ %r.1, %5 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %r, 8, !dbg !65        ; [#uses=1 type=i1] [debug line = 71:9]
  br i1 %exitcond1, label %6, label %2, !dbg !65  ; [debug line = 71:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0)), !dbg !67 ; [debug line = 71:67]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !67 ; [#uses=1 type=i32] [debug line = 71:67]
  %tmp = mul i32 %r, 8, !dbg !69                  ; [#uses=1 type=i32] [debug line = 74:1]
  br label %3, !dbg !72                           ; [debug line = 73:12]

; <label>:3                                       ; preds = %4, %2
  %c = phi i32 [ 0, %2 ], [ %c.1, %4 ]            ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %c, 8, !dbg !72         ; [#uses=1 type=i1] [debug line = 73:12]
  br i1 %exitcond, label %5, label %4, !dbg !72   ; [debug line = 73:12]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0)), !dbg !73 ; [debug line = 74:2]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !73 ; [#uses=1 type=i32] [debug line = 74:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)), !dbg !74 ; [debug line = 75:1]
  %buf.addr = getelementptr inbounds [8 x i16]* %buf, i32 %r, i32 %c, !dbg !69 ; [#uses=1 type=i16*] [debug line = 74:1]
  %buf.load = load i16* %buf.addr, align 2, !dbg !69 ; [#uses=2 type=i16] [debug line = 74:1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %buf.load) nounwind
  %tmp.2 = add nsw i32 %c, %tmp, !dbg !69         ; [#uses=1 type=i32] [debug line = 74:1]
  %output.addr = getelementptr inbounds i16* %output, i32 %tmp.2, !dbg !69 ; [#uses=1 type=i16*] [debug line = 74:1]
  store i16 %buf.load, i16* %output.addr, align 2, !dbg !69 ; [debug line = 74:1]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str12, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !75 ; [#uses=0 type=i32] [debug line = 74:67]
  %c.1 = add nsw i32 %c, 1, !dbg !76              ; [#uses=1 type=i32] [debug line = 73:64]
  call void @llvm.dbg.value(metadata !{i32 %c.1}, i64 0, metadata !77), !dbg !76 ; [debug line = 73:64] [debug variable = c]
  br label %3, !dbg !76                           ; [debug line = 73:64]

; <label>:5                                       ; preds = %3
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0), i32 %rbegin2) nounwind, !dbg !79 ; [#uses=0 type=i32] [debug line = 75:4]
  %r.1 = add nsw i32 %r, 1, !dbg !80              ; [#uses=1 type=i32] [debug line = 71:61]
  call void @llvm.dbg.value(metadata !{i32 %r.1}, i64 0, metadata !81), !dbg !80 ; [debug line = 71:61] [debug variable = r]
  br label %1, !dbg !80                           ; [debug line = 71:61]

; <label>:6                                       ; preds = %1
  ret void, !dbg !82                              ; [debug line = 76:1]
}

; [#uses=1]
define internal fastcc void @read_data(i16* %input, [8 x i16]* %buf) nounwind {
  call void @llvm.dbg.value(metadata !{i16* %input}, i64 0, metadata !83), !dbg !84 ; [debug line = 54:22] [debug variable = input]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %buf}, i64 0, metadata !85), !dbg !86 ; [debug line = 54:44] [debug variable = buf]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %input, i32 64), !dbg !87 ; [debug line = 55:2]
  call void (...)* @_ssdm_SpecArrayDimSize([8 x i16]* %buf, i32 8), !dbg !89 ; [debug line = 55:40]
  br label %1, !dbg !90                           ; [debug line = 59:9]

; <label>:1                                       ; preds = %5, %0
  %r = phi i32 [ 0, %0 ], [ %r.2, %5 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %r, 8, !dbg !90        ; [#uses=1 type=i1] [debug line = 59:9]
  br i1 %exitcond1, label %6, label %2, !dbg !90  ; [debug line = 59:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)), !dbg !92 ; [debug line = 59:67]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !92 ; [#uses=1 type=i32] [debug line = 59:67]
  %tmp = mul i32 %r, 8, !dbg !94                  ; [#uses=1 type=i32] [debug line = 62:1]
  br label %3, !dbg !97                           ; [debug line = 61:12]

; <label>:3                                       ; preds = %4, %2
  %c = phi i32 [ 0, %2 ], [ %c.2, %4 ]            ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %c, 8, !dbg !97         ; [#uses=1 type=i1] [debug line = 61:12]
  br i1 %exitcond, label %5, label %4, !dbg !97   ; [debug line = 61:12]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0)), !dbg !98 ; [debug line = 62:2]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !98 ; [#uses=1 type=i32] [debug line = 62:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)), !dbg !99 ; [debug line = 63:1]
  %tmp.5 = add nsw i32 %c, %tmp, !dbg !94         ; [#uses=1 type=i32] [debug line = 62:1]
  %input.addr = getelementptr inbounds i16* %input, i32 %tmp.5, !dbg !94 ; [#uses=1 type=i16*] [debug line = 62:1]
  %input.load = load i16* %input.addr, align 2, !dbg !94 ; [#uses=2 type=i16] [debug line = 62:1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %input.load) nounwind
  %buf.addr = getelementptr inbounds [8 x i16]* %buf, i32 %r, i32 %c, !dbg !94 ; [#uses=1 type=i16*] [debug line = 62:1]
  store i16 %input.load, i16* %buf.addr, align 2, !dbg !94 ; [debug line = 62:1]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !100 ; [#uses=0 type=i32] [debug line = 62:66]
  %c.2 = add nsw i32 %c, 1, !dbg !101             ; [#uses=1 type=i32] [debug line = 61:64]
  call void @llvm.dbg.value(metadata !{i32 %c.2}, i64 0, metadata !102), !dbg !101 ; [debug line = 61:64] [debug variable = c]
  br label %3, !dbg !101                          ; [debug line = 61:64]

; <label>:5                                       ; preds = %3
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0), i32 %rbegin2) nounwind, !dbg !103 ; [#uses=0 type=i32] [debug line = 63:4]
  %r.2 = add nsw i32 %r, 1, !dbg !104             ; [#uses=1 type=i32] [debug line = 59:61]
  call void @llvm.dbg.value(metadata !{i32 %r.2}, i64 0, metadata !105), !dbg !104 ; [debug line = 59:61] [debug variable = r]
  br label %1, !dbg !104                          ; [debug line = 59:61]

; <label>:6                                       ; preds = %1
  ret void, !dbg !106                             ; [debug line = 64:1]
}

; [#uses=24]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc void @dct_2d([8 x i16]* %in_block, [8 x i16]* %out_block) nounwind {
  %row_outbuf = alloca [8 x [8 x i16]], align 2   ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_outbuf = alloca [8 x [8 x i16]], align 2   ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_inbuf = alloca [8 x [8 x i16]], align 2    ; [#uses=2 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %in_block}, i64 0, metadata !107), !dbg !108 ; [debug line = 23:24] [debug variable = in_block]
  call void @llvm.dbg.value(metadata !{[8 x i16]* %out_block}, i64 0, metadata !109), !dbg !110 ; [debug line = 24:18] [debug variable = out_block]
  call void (...)* @_ssdm_SpecArrayDimSize([8 x i16]* %out_block, i32 8), !dbg !111 ; [debug line = 25:2]
  call void (...)* @_ssdm_SpecArrayDimSize([8 x i16]* %in_block, i32 8), !dbg !113 ; [debug line = 25:38]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %col_inbuf}, metadata !114), !dbg !116 ; [debug line = 27:109] [debug variable = col_inbuf]
  br label %1, !dbg !117                          ; [debug line = 32:8]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.4, %2 ]            ; [#uses=4 type=i32]
  %tmp = icmp eq i32 %i, 8, !dbg !117             ; [#uses=1 type=i1] [debug line = 32:8]
  br i1 %tmp, label %.preheader2.preheader, label %2, !dbg !117 ; [debug line = 32:8]

.preheader2.preheader:                            ; preds = %1
  br label %.preheader2, !dbg !119                ; [debug line = 37:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0)), !dbg !121 ; [debug line = 32:66]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !121 ; [#uses=1 type=i32] [debug line = 32:66]
  %in_block.addr = getelementptr inbounds [8 x i16]* %in_block, i32 %i, i32 0, !dbg !123 ; [#uses=1 type=i16*] [debug line = 33:7]
  %row_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i32 0, i32 %i, i32 0, !dbg !123 ; [#uses=1 type=i16*] [debug line = 33:7]
  call fastcc void @dct_1d(i16* %in_block.addr, i16* %row_outbuf.addr), !dbg !123 ; [debug line = 33:7]
  %rend4 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), i32 %rbegin3) nounwind, !dbg !124 ; [#uses=0 type=i32] [debug line = 34:4]
  %i.4 = add i32 %i, 1, !dbg !125                 ; [#uses=1 type=i32] [debug line = 32:60]
  call void @llvm.dbg.value(metadata !{i32 %i.4}, i64 0, metadata !126), !dbg !125 ; [debug line = 32:60] [debug variable = i]
  br label %1, !dbg !125                          ; [debug line = 32:60]

.preheader2:                                      ; preds = %6, %.preheader2.preheader
  %j = phi i32 [ %j.2, %6 ], [ 0, %.preheader2.preheader ] ; [#uses=4 type=i32]
  %tmp.8 = icmp eq i32 %j, 8, !dbg !119           ; [#uses=1 type=i1] [debug line = 37:9]
  br i1 %tmp.8, label %.preheader1.preheader, label %3, !dbg !119 ; [debug line = 37:9]

.preheader1.preheader:                            ; preds = %.preheader2
  br label %.preheader1, !dbg !128                ; [debug line = 43:9]

; <label>:3                                       ; preds = %.preheader2
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str4, i32 0, i32 0)), !dbg !130 ; [debug line = 38:1]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !130 ; [#uses=1 type=i32] [debug line = 38:1]
  br label %4, !dbg !132                          ; [debug line = 39:11]

; <label>:4                                       ; preds = %5, %3
  %i.1 = phi i32 [ 0, %3 ], [ %i.6, %5 ]          ; [#uses=4 type=i32]
  %tmp.10 = icmp eq i32 %i.1, 8, !dbg !132        ; [#uses=1 type=i1] [debug line = 39:11]
  br i1 %tmp.10, label %6, label %5, !dbg !132    ; [debug line = 39:11]

; <label>:5                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0)), !dbg !134 ; [debug line = 40:2]
  %rbegin9 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !134 ; [#uses=1 type=i32] [debug line = 40:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)), !dbg !136 ; [debug line = 41:1]
  %row_outbuf.addr.1 = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i32 0, i32 %i.1, i32 %j, !dbg !137 ; [#uses=1 type=i16*] [debug line = 40:1]
  %row_outbuf.load = load i16* %row_outbuf.addr.1, align 2, !dbg !137 ; [#uses=2 type=i16] [debug line = 40:1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %row_outbuf.load) nounwind
  %col_inbuf.addr.1 = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i32 0, i32 %j, i32 %i.1, !dbg !137 ; [#uses=1 type=i16*] [debug line = 40:1]
  store i16 %row_outbuf.load, i16* %col_inbuf.addr.1, align 2, !dbg !137 ; [debug line = 40:1]
  %rend10 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str5, i32 0, i32 0), i32 %rbegin9) nounwind, !dbg !138 ; [#uses=0 type=i32] [debug line = 40:34]
  %i.6 = add i32 %i.1, 1, !dbg !139               ; [#uses=1 type=i32] [debug line = 39:63]
  call void @llvm.dbg.value(metadata !{i32 %i.6}, i64 0, metadata !126), !dbg !139 ; [debug line = 39:63] [debug variable = i]
  br label %4, !dbg !139                          ; [debug line = 39:63]

; <label>:6                                       ; preds = %4
  %rend12 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str4, i32 0, i32 0), i32 %rbegin1) nounwind, !dbg !140 ; [#uses=0 type=i32] [debug line = 40:34]
  %j.2 = add i32 %j, 1, !dbg !141                 ; [#uses=1 type=i32] [debug line = 37:61]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !142), !dbg !141 ; [debug line = 37:61] [debug variable = j]
  br label %.preheader2, !dbg !141                ; [debug line = 37:61]

.preheader1:                                      ; preds = %7, %.preheader1.preheader
  %i.2 = phi i32 [ %i.5, %7 ], [ 0, %.preheader1.preheader ] ; [#uses=4 type=i32]
  %tmp.9 = icmp eq i32 %i.2, 8, !dbg !128         ; [#uses=1 type=i1] [debug line = 43:9]
  br i1 %tmp.9, label %.preheader.preheader, label %7, !dbg !128 ; [debug line = 43:9]

.preheader.preheader:                             ; preds = %.preheader1
  br label %.preheader, !dbg !143                 ; [debug line = 48:9]

; <label>:7                                       ; preds = %.preheader1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0)), !dbg !145 ; [debug line = 43:67]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !145 ; [#uses=1 type=i32] [debug line = 43:67]
  %col_inbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i32 0, i32 %i.2, i32 0, !dbg !147 ; [#uses=1 type=i16*] [debug line = 44:7]
  %col_outbuf.addr = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i32 0, i32 %i.2, i32 0, !dbg !147 ; [#uses=1 type=i16*] [debug line = 44:7]
  call fastcc void @dct_1d(i16* %col_inbuf.addr, i16* %col_outbuf.addr), !dbg !147 ; [debug line = 44:7]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([13 x i8]* @.str6, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !148 ; [#uses=0 type=i32] [debug line = 45:4]
  %i.5 = add i32 %i.2, 1, !dbg !149               ; [#uses=1 type=i32] [debug line = 43:61]
  call void @llvm.dbg.value(metadata !{i32 %i.5}, i64 0, metadata !126), !dbg !149 ; [debug line = 43:61] [debug variable = i]
  br label %.preheader1, !dbg !149                ; [debug line = 43:61]

.preheader:                                       ; preds = %11, %.preheader.preheader
  %j.1 = phi i32 [ %j.3, %11 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %tmp.14 = icmp eq i32 %j.1, 8, !dbg !143        ; [#uses=1 type=i1] [debug line = 48:9]
  br i1 %tmp.14, label %12, label %8, !dbg !143   ; [debug line = 48:9]

; <label>:8                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str7, i32 0, i32 0)), !dbg !150 ; [debug line = 49:1]
  %rbegin7 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !150 ; [#uses=1 type=i32] [debug line = 49:1]
  br label %9, !dbg !152                          ; [debug line = 50:11]

; <label>:9                                       ; preds = %10, %8
  %i.3 = phi i32 [ 0, %8 ], [ %i.7, %10 ]         ; [#uses=4 type=i32]
  %tmp.15 = icmp eq i32 %i.3, 8, !dbg !152        ; [#uses=1 type=i1] [debug line = 50:11]
  br i1 %tmp.15, label %11, label %10, !dbg !152  ; [debug line = 50:11]

; <label>:10                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([21 x i8]* @.str8, i32 0, i32 0)), !dbg !154 ; [debug line = 51:2]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([21 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !154 ; [#uses=1 type=i32] [debug line = 51:2]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)), !dbg !156 ; [debug line = 52:1]
  %col_outbuf.addr.1 = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i32 0, i32 %i.3, i32 %j.1, !dbg !157 ; [#uses=1 type=i16*] [debug line = 51:1]
  %col_outbuf.load = load i16* %col_outbuf.addr.1, align 2, !dbg !157 ; [#uses=2 type=i16] [debug line = 51:1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %col_outbuf.load) nounwind
  %out_block.addr = getelementptr inbounds [8 x i16]* %out_block, i32 %j.1, i32 %i.3, !dbg !157 ; [#uses=1 type=i16*] [debug line = 51:1]
  store i16 %col_outbuf.load, i16* %out_block.addr, align 2, !dbg !157 ; [debug line = 51:1]
  %rend6 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str8, i32 0, i32 0), i32 %rbegin5) nounwind, !dbg !158 ; [#uses=0 type=i32] [debug line = 51:34]
  %i.7 = add i32 %i.3, 1, !dbg !159               ; [#uses=1 type=i32] [debug line = 50:63]
  call void @llvm.dbg.value(metadata !{i32 %i.7}, i64 0, metadata !126), !dbg !159 ; [debug line = 50:63] [debug variable = i]
  br label %9, !dbg !159                          ; [debug line = 50:63]

; <label>:11                                      ; preds = %9
  %rend8 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([21 x i8]* @.str7, i32 0, i32 0), i32 %rbegin7) nounwind, !dbg !160 ; [#uses=0 type=i32] [debug line = 51:34]
  %j.3 = add i32 %j.1, 1, !dbg !161               ; [#uses=1 type=i32] [debug line = 48:61]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !142), !dbg !161 ; [debug line = 48:61] [debug variable = j]
  br label %.preheader, !dbg !161                 ; [debug line = 48:61]

; <label>:12                                      ; preds = %.preheader
  ret void, !dbg !162                             ; [debug line = 52:1]
}

; [#uses=2]
define internal fastcc void @dct_1d(i16* %src, i16* %dst) nounwind {
  call void @llvm.dbg.value(metadata !{i16* %src}, i64 0, metadata !163), !dbg !164 ; [debug line = 4:24] [debug variable = src]
  call void @llvm.dbg.value(metadata !{i16* %dst}, i64 0, metadata !165), !dbg !166 ; [debug line = 4:81] [debug variable = dst]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %dst, i32 8), !dbg !167 ; [debug line = 5:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %src, i32 8), !dbg !169 ; [debug line = 5:32]
  br label %1, !dbg !170                          ; [debug line = 13:9]

; <label>:1                                       ; preds = %5, %0
  %k = phi i32 [ 0, %0 ], [ %k.1, %5 ]            ; [#uses=4 type=i32]
  %tmp = icmp eq i32 %k, 8, !dbg !170             ; [#uses=1 type=i1] [debug line = 13:9]
  br i1 %tmp, label %6, label %2, !dbg !170       ; [debug line = 13:9]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)), !dbg !172 ; [debug line = 13:67]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !172 ; [#uses=1 type=i32] [debug line = 13:67]
  br label %3, !dbg !174                          ; [debug line = 15:11]

; <label>:3                                       ; preds = %4, %2
  %n = phi i32 [ 0, %2 ], [ %n.1, %4 ]            ; [#uses=4 type=i32]
  %tmp18 = phi i32 [ 0, %2 ], [ %tmp.26, %4 ]     ; [#uses=2 type=i32]
  %tmp.19 = icmp eq i32 %n, 8, !dbg !174          ; [#uses=1 type=i1] [debug line = 15:11]
  br i1 %tmp.19, label %5, label %4, !dbg !174    ; [debug line = 15:11]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0)), !dbg !176 ; [debug line = 15:78]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !176 ; [#uses=1 type=i32] [debug line = 15:78]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)), !dbg !178 ; [debug line = 16:1]
  %dct_coeff_table.addr = getelementptr inbounds [8 x [8 x i16]]* @dct_coeff_table, i32 0, i32 %k, i32 %n, !dbg !179 ; [#uses=1 type=i16*] [debug line = 16:48]
  %dct_coeff_table.load = load i16* %dct_coeff_table.addr, align 2, !dbg !179 ; [#uses=2 type=i16] [debug line = 16:48]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %dct_coeff_table.load) nounwind
  %coeff = sext i16 %dct_coeff_table.load to i32, !dbg !179 ; [#uses=1 type=i32] [debug line = 16:48]
  call void @llvm.dbg.value(metadata !{i32 %coeff}, i64 0, metadata !180), !dbg !179 ; [debug line = 16:48] [debug variable = coeff]
  %src.addr = getelementptr inbounds i16* %src, i32 %n, !dbg !181 ; [#uses=1 type=i16*] [debug line = 17:10]
  %src.load = load i16* %src.addr, align 2, !dbg !181 ; [#uses=2 type=i16] [debug line = 17:10]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i16 %src.load) nounwind
  %tmp.24 = sext i16 %src.load to i32, !dbg !181  ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp.25 = mul nsw i32 %tmp.24, %coeff, !dbg !181 ; [#uses=1 type=i32] [debug line = 17:10]
  %tmp.26 = add nsw i32 %tmp.25, %tmp18, !dbg !181 ; [#uses=1 type=i32] [debug line = 17:10]
  call void @llvm.dbg.value(metadata !{i32 %tmp.26}, i64 0, metadata !182), !dbg !181 ; [debug line = 17:10] [debug variable = tmp]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0), i32 %rbegin) nounwind, !dbg !183 ; [#uses=0 type=i32] [debug line = 18:7]
  %n.1 = add i32 %n, 1, !dbg !184                 ; [#uses=1 type=i32] [debug line = 15:72]
  call void @llvm.dbg.value(metadata !{i32 %n.1}, i64 0, metadata !185), !dbg !184 ; [debug line = 15:72] [debug variable = n]
  br label %3, !dbg !184                          ; [debug line = 15:72]

; <label>:5                                       ; preds = %3
  %tmp.0.lcssa = phi i32 [ %tmp18, %3 ]           ; [#uses=1 type=i32]
  %tmp.20 = add nsw i32 %tmp.0.lcssa, 4096, !dbg !186 ; [#uses=1 type=i32] [debug line = 19:7]
  %tmp.21 = lshr i32 %tmp.20, 13, !dbg !186       ; [#uses=1 type=i32] [debug line = 19:7]
  %tmp.22 = trunc i32 %tmp.21 to i16, !dbg !186   ; [#uses=1 type=i16] [debug line = 19:7]
  %dst.addr = getelementptr inbounds i16* %dst, i32 %k, !dbg !186 ; [#uses=1 type=i16*] [debug line = 19:7]
  store i16 %tmp.22, i16* %dst.addr, align 2, !dbg !186 ; [debug line = 19:7]
  %rend2 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0), i32 %rbegin1) nounwind, !dbg !187 ; [#uses=0 type=i32] [debug line = 20:4]
  %k.1 = add i32 %k, 1, !dbg !188                 ; [#uses=1 type=i32] [debug line = 13:61]
  call void @llvm.dbg.value(metadata !{i32 %k.1}, i64 0, metadata !189), !dbg !188 ; [debug line = 13:61] [debug variable = k]
  br label %1, !dbg !188                          ; [debug line = 13:61]

; <label>:6                                       ; preds = %1
  ret void, !dbg !190                             ; [debug line = 21:1]
}

; [#uses=0]
define void @dct(i16* %input, i16* %output) nounwind {
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @dct.str) nounwind
  %buf_2d_in = alloca [8 x [8 x i16]], align 2    ; [#uses=1 type=[8 x [8 x i16]]*]
  %buf_2d_out = alloca [8 x [8 x i16]], align 2   ; [#uses=1 type=[8 x [8 x i16]]*]
  call void @llvm.dbg.value(metadata !{i16* %input}, i64 0, metadata !191), !dbg !192 ; [debug line = 78:16] [debug variable = input]
  call void @llvm.dbg.value(metadata !{i16* %output}, i64 0, metadata !193), !dbg !194 ; [debug line = 78:38] [debug variable = output]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %output, i32 64), !dbg !195 ; [debug line = 79:2]
  call void (...)* @_ssdm_SpecArrayDimSize(i16* %input, i32 64), !dbg !197 ; [debug line = 79:41]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_in}, metadata !198), !dbg !200 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !201), !dbg !202 ; [debug line = 82:10] [debug variable = buf_2d_out]
  %buf_2d_in.addr = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_in, i32 0, i32 0, !dbg !203 ; [#uses=2 type=[8 x i16]*] [debug line = 85:4]
  call fastcc void @read_data(i16* %input, [8 x i16]* %buf_2d_in.addr), !dbg !203 ; [debug line = 85:4]
  %buf_2d_out.addr = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_out, i32 0, i32 0, !dbg !204 ; [#uses=2 type=[8 x i16]*] [debug line = 87:4]
  call fastcc void @dct_2d([8 x i16]* %buf_2d_in.addr, [8 x i16]* %buf_2d_out.addr), !dbg !204 ; [debug line = 87:4]
  call fastcc void @write_data([8 x i16]* %buf_2d_out.addr, i16* %output), !dbg !205 ; [debug line = 90:4]
  ret void, !dbg !206                             ; [debug line = 91:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=12]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=12]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=5]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=12]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=6]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=10]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!39, !46, !49, !52, !55}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/guill/Desktop/hls_lab3/dct.prj/solution2/.autopilot/db/dct.pragma.2.c", metadata !"C:\5CUsers\5Cguill\5CDesktop\5Chls_lab3", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !33} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !14, metadata !21, metadata !27, metadata !30}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"dct_1d", metadata !"dct_1d", metadata !"", metadata !6, i32 4, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, i16*)* @dct_1d, null, null, metadata !12, i32 5} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"dct.c", metadata !"C:\5CUsers\5Cguill\5CDesktop\5Chls_lab3", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786454, null, metadata !"dct_data_t", metadata !6, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!14 = metadata !{i32 786478, i32 0, metadata !6, metadata !"dct_2d", metadata !"dct_2d", metadata !"", metadata !6, i32 23, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([8 x i16]*, [8 x i16]*)* @dct_2d, null, null, metadata !12, i32 25} ; [ DW_TAG_subprogram ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{null, metadata !17, metadata !17}
!17 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!18 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !10, metadata !19, i32 0, i32 0} ; [ DW_TAG_array_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786465, i64 0, i64 7}        ; [ DW_TAG_subrange_type ]
!21 = metadata !{i32 786478, i32 0, metadata !6, metadata !"read_data", metadata !"read_data", metadata !"", metadata !6, i32 54, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, [8 x i16]*)* @read_data, null, null, metadata !12, i32 55} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24, metadata !25}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 16, i32 0, i32 0, metadata !11, metadata !19, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{i32 786478, i32 0, metadata !6, metadata !"write_data", metadata !"write_data", metadata !"", metadata !6, i32 66, metadata !28, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([8 x i16]*, i16*)* @write_data, null, null, metadata !12, i32 67} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{null, metadata !25, metadata !24}
!30 = metadata !{i32 786478, i32 0, metadata !6, metadata !"dct", metadata !"dct", metadata !"", metadata !6, i32 78, metadata !31, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i16*, i16*)* @dct, null, null, metadata !12, i32 79} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !32, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!32 = metadata !{null, metadata !24, metadata !24}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786484, i32 0, metadata !5, metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !"", metadata !6, i32 8, metadata !36, i32 1, i32 1, [8 x [8 x i16]]* @dct_coeff_table} ; [ DW_TAG_variable ]
!36 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !37, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!37 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!38 = metadata !{metadata !20, metadata !20}
!39 = metadata !{void (i16*, i16*)* @dct_1d, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45}
!40 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!41 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"dct_data_t*", metadata !"dct_data_t*"}
!43 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"src", metadata !"dst"}
!45 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!46 = metadata !{void ([8 x i16]*, [8 x i16]*)* @dct_2d, metadata !40, metadata !41, metadata !47, metadata !43, metadata !48, metadata !45}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"dct_data_t [8]*", metadata !"dct_data_t [8]*"}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"in_block", metadata !"out_block"}
!49 = metadata !{void (i16*, [8 x i16]*)* @read_data, metadata !40, metadata !41, metadata !50, metadata !43, metadata !51, metadata !45}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"short*", metadata !"short [8]*"}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"buf"}
!52 = metadata !{void ([8 x i16]*, i16*)* @write_data, metadata !40, metadata !41, metadata !53, metadata !43, metadata !54, metadata !45}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"short [8]*", metadata !"short*"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"output"}
!55 = metadata !{void (i16*, i16*)* @dct, metadata !40, metadata !41, metadata !56, metadata !43, metadata !57, metadata !45}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"short*", metadata !"short*"}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"input", metadata !"output"}
!58 = metadata !{i32 786689, metadata !27, metadata !"buf", metadata !6, i32 16777282, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 66, i32 23, metadata !27, null}
!60 = metadata !{i32 786689, metadata !27, metadata !"output", metadata !6, i32 33554498, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 66, i32 116, metadata !27, null}
!62 = metadata !{i32 67, i32 2, metadata !63, null}
!63 = metadata !{i32 786443, metadata !27, i32 67, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 67, i32 41, metadata !63, null}
!65 = metadata !{i32 71, i32 9, metadata !66, null}
!66 = metadata !{i32 786443, metadata !63, i32 71, i32 4, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 71, i32 67, metadata !68, null}
!68 = metadata !{i32 786443, metadata !66, i32 71, i32 66, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 74, i32 1, metadata !70, null}
!70 = metadata !{i32 786443, metadata !71, i32 74, i32 1, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786443, metadata !68, i32 73, i32 7, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 73, i32 12, metadata !71, null}
!73 = metadata !{i32 74, i32 2, metadata !70, null}
!74 = metadata !{i32 75, i32 1, metadata !70, null}
!75 = metadata !{i32 74, i32 67, metadata !70, null}
!76 = metadata !{i32 73, i32 64, metadata !71, null}
!77 = metadata !{i32 786688, metadata !63, metadata !"c", metadata !6, i32 68, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!79 = metadata !{i32 75, i32 4, metadata !68, null}
!80 = metadata !{i32 71, i32 61, metadata !66, null}
!81 = metadata !{i32 786688, metadata !63, metadata !"r", metadata !6, i32 68, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 76, i32 1, metadata !63, null}
!83 = metadata !{i32 786689, metadata !21, metadata !"input", metadata !6, i32 16777270, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 54, i32 22, metadata !21, null}
!85 = metadata !{i32 786689, metadata !21, metadata !"buf", metadata !6, i32 33554486, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 54, i32 44, metadata !21, null}
!87 = metadata !{i32 55, i32 2, metadata !88, null}
!88 = metadata !{i32 786443, metadata !21, i32 55, i32 1, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 55, i32 40, metadata !88, null}
!90 = metadata !{i32 59, i32 9, metadata !91, null}
!91 = metadata !{i32 786443, metadata !88, i32 59, i32 4, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 59, i32 67, metadata !93, null}
!93 = metadata !{i32 786443, metadata !91, i32 59, i32 66, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 62, i32 1, metadata !95, null}
!95 = metadata !{i32 786443, metadata !96, i32 62, i32 1, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 786443, metadata !93, i32 61, i32 7, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 61, i32 12, metadata !96, null}
!98 = metadata !{i32 62, i32 2, metadata !95, null}
!99 = metadata !{i32 63, i32 1, metadata !95, null}
!100 = metadata !{i32 62, i32 66, metadata !95, null}
!101 = metadata !{i32 61, i32 64, metadata !96, null}
!102 = metadata !{i32 786688, metadata !88, metadata !"c", metadata !6, i32 56, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 63, i32 4, metadata !93, null}
!104 = metadata !{i32 59, i32 61, metadata !91, null}
!105 = metadata !{i32 786688, metadata !88, metadata !"r", metadata !6, i32 56, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 64, i32 1, metadata !88, null}
!107 = metadata !{i32 786689, metadata !14, metadata !"in_block", metadata !6, i32 16777239, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 23, i32 24, metadata !14, null}
!109 = metadata !{i32 786689, metadata !14, metadata !"out_block", metadata !6, i32 33554456, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 24, i32 18, metadata !14, null}
!111 = metadata !{i32 25, i32 2, metadata !112, null}
!112 = metadata !{i32 786443, metadata !14, i32 25, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 25, i32 38, metadata !112, null}
!114 = metadata !{i32 786688, metadata !112, metadata !"col_inbuf", metadata !6, i32 27, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !10, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!116 = metadata !{i32 27, i32 109, metadata !112, null}
!117 = metadata !{i32 32, i32 8, metadata !118, null}
!118 = metadata !{i32 786443, metadata !112, i32 32, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 37, i32 9, metadata !120, null}
!120 = metadata !{i32 786443, metadata !112, i32 37, i32 4, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 32, i32 66, metadata !122, null}
!122 = metadata !{i32 786443, metadata !118, i32 32, i32 65, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 33, i32 7, metadata !122, null}
!124 = metadata !{i32 34, i32 4, metadata !122, null}
!125 = metadata !{i32 32, i32 60, metadata !118, null}
!126 = metadata !{i32 786688, metadata !112, metadata !"i", metadata !6, i32 28, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!128 = metadata !{i32 43, i32 9, metadata !129, null}
!129 = metadata !{i32 786443, metadata !112, i32 43, i32 4, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!130 = metadata !{i32 38, i32 1, metadata !131, null}
!131 = metadata !{i32 786443, metadata !120, i32 38, i32 1, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 39, i32 11, metadata !133, null}
!133 = metadata !{i32 786443, metadata !131, i32 39, i32 7, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 40, i32 2, metadata !135, null}
!135 = metadata !{i32 786443, metadata !133, i32 40, i32 1, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 41, i32 1, metadata !135, null}
!137 = metadata !{i32 40, i32 1, metadata !135, null}
!138 = metadata !{i32 40, i32 34, metadata !135, null}
!139 = metadata !{i32 39, i32 63, metadata !133, null}
!140 = metadata !{i32 40, i32 34, metadata !133, null}
!141 = metadata !{i32 37, i32 61, metadata !120, null}
!142 = metadata !{i32 786688, metadata !112, metadata !"j", metadata !6, i32 28, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!143 = metadata !{i32 48, i32 9, metadata !144, null}
!144 = metadata !{i32 786443, metadata !112, i32 48, i32 4, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 43, i32 67, metadata !146, null}
!146 = metadata !{i32 786443, metadata !129, i32 43, i32 66, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 44, i32 7, metadata !146, null}
!148 = metadata !{i32 45, i32 4, metadata !146, null}
!149 = metadata !{i32 43, i32 61, metadata !129, null}
!150 = metadata !{i32 49, i32 1, metadata !151, null}
!151 = metadata !{i32 786443, metadata !144, i32 49, i32 1, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 50, i32 11, metadata !153, null}
!153 = metadata !{i32 786443, metadata !151, i32 50, i32 7, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 51, i32 2, metadata !155, null}
!155 = metadata !{i32 786443, metadata !153, i32 51, i32 1, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 52, i32 1, metadata !155, null}
!157 = metadata !{i32 51, i32 1, metadata !155, null}
!158 = metadata !{i32 51, i32 34, metadata !155, null}
!159 = metadata !{i32 50, i32 63, metadata !153, null}
!160 = metadata !{i32 51, i32 34, metadata !153, null}
!161 = metadata !{i32 48, i32 61, metadata !144, null}
!162 = metadata !{i32 52, i32 1, metadata !112, null}
!163 = metadata !{i32 786689, metadata !5, metadata !"src", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 4, i32 24, metadata !5, null}
!165 = metadata !{i32 786689, metadata !5, metadata !"dst", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 4, i32 81, metadata !5, null}
!167 = metadata !{i32 5, i32 2, metadata !168, null}
!168 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 5, i32 32, metadata !168, null}
!170 = metadata !{i32 13, i32 9, metadata !171, null}
!171 = metadata !{i32 786443, metadata !168, i32 13, i32 4, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!172 = metadata !{i32 13, i32 67, metadata !173, null}
!173 = metadata !{i32 786443, metadata !171, i32 13, i32 66, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!174 = metadata !{i32 15, i32 11, metadata !175, null}
!175 = metadata !{i32 786443, metadata !173, i32 15, i32 7, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!176 = metadata !{i32 15, i32 78, metadata !177, null}
!177 = metadata !{i32 786443, metadata !175, i32 15, i32 77, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 16, i32 1, metadata !177, null}
!179 = metadata !{i32 16, i32 48, metadata !177, null}
!180 = metadata !{i32 786688, metadata !177, metadata !"coeff", metadata !6, i32 16, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 17, i32 10, metadata !177, null}
!182 = metadata !{i32 786688, metadata !168, metadata !"tmp", metadata !6, i32 7, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 18, i32 7, metadata !177, null}
!184 = metadata !{i32 15, i32 72, metadata !175, null}
!185 = metadata !{i32 786688, metadata !168, metadata !"n", metadata !6, i32 6, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 19, i32 7, metadata !173, null}
!187 = metadata !{i32 20, i32 4, metadata !173, null}
!188 = metadata !{i32 13, i32 61, metadata !171, null}
!189 = metadata !{i32 786688, metadata !168, metadata !"k", metadata !6, i32 6, metadata !127, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!190 = metadata !{i32 21, i32 1, metadata !168, null}
!191 = metadata !{i32 786689, metadata !30, metadata !"input", metadata !6, i32 16777294, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 78, i32 16, metadata !30, null}
!193 = metadata !{i32 786689, metadata !30, metadata !"output", metadata !6, i32 33554510, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 78, i32 38, metadata !30, null}
!195 = metadata !{i32 79, i32 2, metadata !196, null}
!196 = metadata !{i32 786443, metadata !30, i32 79, i32 1, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 79, i32 41, metadata !196, null}
!198 = metadata !{i32 786688, metadata !196, metadata !"buf_2d_in", metadata !6, i32 81, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!199 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !11, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!200 = metadata !{i32 81, i32 10, metadata !196, null}
!201 = metadata !{i32 786688, metadata !196, metadata !"buf_2d_out", metadata !6, i32 82, metadata !199, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 82, i32 10, metadata !196, null}
!203 = metadata !{i32 85, i32 4, metadata !196, null}
!204 = metadata !{i32 87, i32 4, metadata !196, null}
!205 = metadata !{i32 90, i32 4, metadata !196, null}
!206 = metadata !{i32 91, i32 1, metadata !196, null}
