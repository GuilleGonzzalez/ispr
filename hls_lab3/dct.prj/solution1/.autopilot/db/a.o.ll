; ModuleID = 'C:/Users/guill/Desktop/hls_lab3/dct.prj/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-f80:128:128-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S32"
target triple = "i686-pc-mingw32"

@dct_1d.dct_coeff_table = internal constant [8 x [8 x i16]] [[8 x i16] [i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192, i16 8192], [8 x i16] [i16 11363, i16 9633, i16 6436, i16 2260, i16 -2260, i16 -6436, i16 -9632, i16 -11362], [8 x i16] [i16 10703, i16 4433, i16 -4433, i16 -10703, i16 -10703, i16 -4433, i16 4433, i16 10703], [8 x i16] [i16 9633, i16 -2260, i16 -11362, i16 -6436, i16 6436, i16 11363, i16 2260, i16 -9632], [8 x i16] [i16 8192, i16 -8192, i16 -8192, i16 8192, i16 8192, i16 -8191, i16 -8191, i16 8192], [8 x i16] [i16 6436, i16 -11362, i16 2260, i16 9633, i16 -9632, i16 -2260, i16 11363, i16 -6436], [8 x i16] [i16 4433, i16 -10703, i16 10703, i16 -4433, i16 -4433, i16 10703, i16 -10703, i16 4433], [8 x i16] [i16 2260, i16 -6436, i16 9633, i16 -11362, i16 11363, i16 -9632, i16 6436, i16 -2260]], align 2 ; [#uses=2 type=[8 x [8 x i16]]*]
@.str = private unnamed_addr constant [15 x i8] c"DCT_Outer_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str1 = private unnamed_addr constant [15 x i8] c"DCT_Inner_Loop\00", align 1 ; [#uses=1 type=[15 x i8]*]
@.str2 = private unnamed_addr constant [13 x i8] c"Row_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str3 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Outer_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str4 = private unnamed_addr constant [21 x i8] c"Xpose_Row_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str5 = private unnamed_addr constant [13 x i8] c"Col_DCT_Loop\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str6 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Outer_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str7 = private unnamed_addr constant [21 x i8] c"Xpose_Col_Inner_Loop\00", align 1 ; [#uses=1 type=[21 x i8]*]
@.str8 = private unnamed_addr constant [12 x i8] c"RD_Loop_Row\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str9 = private unnamed_addr constant [12 x i8] c"RD_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str10 = private unnamed_addr constant [12 x i8] c"WR_Loop_Row\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str11 = private unnamed_addr constant [12 x i8] c"WR_Loop_Col\00", align 1 ; [#uses=1 type=[12 x i8]*]

; [#uses=2]
define void @dct_1d(i16* %src, i16* %dst) nounwind {
  %1 = alloca i16*, align 4                       ; [#uses=3 type=i16**]
  %2 = alloca i16*, align 4                       ; [#uses=3 type=i16**]
  %k = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %n = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %tmp = alloca i32, align 4                      ; [#uses=4 type=i32*]
  %coeff = alloca i32, align 4                    ; [#uses=2 type=i32*]
  store i16* %src, i16** %1, align 4
  call void @llvm.dbg.declare(metadata !{i16** %1}, metadata !58), !dbg !59 ; [debug line = 4:24] [debug variable = src]
  store i16* %dst, i16** %2, align 4
  call void @llvm.dbg.declare(metadata !{i16** %2}, metadata !60), !dbg !61 ; [debug line = 4:81] [debug variable = dst]
  %3 = load i16** %2, align 4, !dbg !62           ; [#uses=1 type=i16*] [debug line = 5:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i16*, i32)*)(i16* %3, i32 8) nounwind, !dbg !62 ; [debug line = 5:2]
  %4 = load i16** %1, align 4, !dbg !64           ; [#uses=1 type=i16*] [debug line = 5:32]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i16*, i32)*)(i16* %4, i32 8) nounwind, !dbg !64 ; [debug line = 5:32]
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !65), !dbg !67 ; [debug line = 6:17] [debug variable = k]
  call void @llvm.dbg.declare(metadata !{i32* %n}, metadata !68), !dbg !69 ; [debug line = 6:20] [debug variable = n]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !70), !dbg !72 ; [debug line = 7:8] [debug variable = tmp]
  call void bitcast (void (...)* @_ssdm_SpecConstant to void ([8 x i16]*)*)([8 x i16]* getelementptr inbounds ([8 x [8 x i16]]* @dct_1d.dct_coeff_table, i32 0, i32 0)) nounwind, !dbg !73 ; [debug line = 11:1]
  br label %5, !dbg !73                           ; [debug line = 11:1]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %k, align 4, !dbg !74         ; [debug line = 13:9]
  br label %6, !dbg !74                           ; [debug line = 13:9]

; <label>:6                                       ; preds = %41, %5
  %7 = load i32* %k, align 4, !dbg !74            ; [#uses=1 type=i32] [debug line = 13:9]
  %8 = icmp ult i32 %7, 8, !dbg !74               ; [#uses=1 type=i1] [debug line = 13:9]
  br i1 %8, label %9, label %44, !dbg !74         ; [debug line = 13:9]

; <label>:9                                       ; preds = %6
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !76 ; [debug line = 13:67]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !76 ; [debug line = 13:67]
  br label %10, !dbg !76                          ; [debug line = 13:67]

; <label>:10                                      ; preds = %9
  store i32 0, i32* %n, align 4, !dbg !78         ; [debug line = 15:11]
  store i32 0, i32* %tmp, align 4, !dbg !78       ; [debug line = 15:11]
  br label %11, !dbg !78                          ; [debug line = 15:11]

; <label>:11                                      ; preds = %30, %10
  %12 = load i32* %n, align 4, !dbg !78           ; [#uses=1 type=i32] [debug line = 15:11]
  %13 = icmp ult i32 %12, 8, !dbg !78             ; [#uses=1 type=i1] [debug line = 15:11]
  br i1 %13, label %14, label %33, !dbg !78       ; [debug line = 15:11]

; <label>:14                                      ; preds = %11
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !80 ; [debug line = 15:78]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !80 ; [debug line = 15:78]
  call void @llvm.dbg.declare(metadata !{i32* %coeff}, metadata !82), !dbg !83 ; [debug line = 16:14] [debug variable = coeff]
  %15 = load i32* %n, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 16:48]
  %16 = load i32* %k, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 16:48]
  %17 = getelementptr inbounds [8 x [8 x i16]]* @dct_1d.dct_coeff_table, i32 0, i32 %16, !dbg !84 ; [#uses=1 type=[8 x i16]*] [debug line = 16:48]
  %18 = getelementptr inbounds [8 x i16]* %17, i32 0, i32 %15, !dbg !84 ; [#uses=1 type=i16*] [debug line = 16:48]
  %19 = load i16* %18, align 2, !dbg !84          ; [#uses=1 type=i16] [debug line = 16:48]
  %20 = sext i16 %19 to i32, !dbg !84             ; [#uses=1 type=i32] [debug line = 16:48]
  store i32 %20, i32* %coeff, align 4, !dbg !84   ; [debug line = 16:48]
  %21 = load i32* %n, align 4, !dbg !85           ; [#uses=1 type=i32] [debug line = 17:10]
  %22 = load i16** %1, align 4, !dbg !85          ; [#uses=1 type=i16*] [debug line = 17:10]
  %23 = getelementptr inbounds i16* %22, i32 %21, !dbg !85 ; [#uses=1 type=i16*] [debug line = 17:10]
  %24 = load i16* %23, align 2, !dbg !85          ; [#uses=1 type=i16] [debug line = 17:10]
  %25 = sext i16 %24 to i32, !dbg !85             ; [#uses=1 type=i32] [debug line = 17:10]
  %26 = load i32* %coeff, align 4, !dbg !85       ; [#uses=1 type=i32] [debug line = 17:10]
  %27 = mul nsw i32 %25, %26, !dbg !85            ; [#uses=1 type=i32] [debug line = 17:10]
  %28 = load i32* %tmp, align 4, !dbg !85         ; [#uses=1 type=i32] [debug line = 17:10]
  %29 = add nsw i32 %28, %27, !dbg !85            ; [#uses=1 type=i32] [debug line = 17:10]
  store i32 %29, i32* %tmp, align 4, !dbg !85     ; [debug line = 17:10]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !86 ; [debug line = 18:7]
  br label %30, !dbg !86                          ; [debug line = 18:7]

; <label>:30                                      ; preds = %14
  %31 = load i32* %n, align 4, !dbg !87           ; [#uses=1 type=i32] [debug line = 15:72]
  %32 = add i32 %31, 1, !dbg !87                  ; [#uses=1 type=i32] [debug line = 15:72]
  store i32 %32, i32* %n, align 4, !dbg !87       ; [debug line = 15:72]
  br label %11, !dbg !87                          ; [debug line = 15:72]

; <label>:33                                      ; preds = %11
  %34 = load i32* %tmp, align 4, !dbg !88         ; [#uses=1 type=i32] [debug line = 19:7]
  %35 = add nsw i32 %34, 4096, !dbg !88           ; [#uses=1 type=i32] [debug line = 19:7]
  %36 = ashr i32 %35, 13, !dbg !88                ; [#uses=1 type=i32] [debug line = 19:7]
  %37 = trunc i32 %36 to i16, !dbg !88            ; [#uses=1 type=i16] [debug line = 19:7]
  %38 = load i32* %k, align 4, !dbg !88           ; [#uses=1 type=i32] [debug line = 19:7]
  %39 = load i16** %2, align 4, !dbg !88          ; [#uses=1 type=i16*] [debug line = 19:7]
  %40 = getelementptr inbounds i16* %39, i32 %38, !dbg !88 ; [#uses=1 type=i16*] [debug line = 19:7]
  store i16 %37, i16* %40, align 2, !dbg !88      ; [debug line = 19:7]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !89 ; [debug line = 20:4]
  br label %41, !dbg !89                          ; [debug line = 20:4]

; <label>:41                                      ; preds = %33
  %42 = load i32* %k, align 4, !dbg !90           ; [#uses=1 type=i32] [debug line = 13:61]
  %43 = add i32 %42, 1, !dbg !90                  ; [#uses=1 type=i32] [debug line = 13:61]
  store i32 %43, i32* %k, align 4, !dbg !90       ; [debug line = 13:61]
  br label %6, !dbg !90                           ; [debug line = 13:61]

; <label>:44                                      ; preds = %6
  ret void, !dbg !91                              ; [debug line = 21:1]
}

; [#uses=25]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_ssdm_SpecConstant(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
define void @dct_2d([8 x i16]* %in_block, [8 x i16]* %out_block) nounwind {
  %1 = alloca [8 x i16]*, align 4                 ; [#uses=3 type=[8 x i16]**]
  %2 = alloca [8 x i16]*, align 4                 ; [#uses=3 type=[8 x i16]**]
  %row_outbuf = alloca [8 x [8 x i16]], align 2   ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_outbuf = alloca [8 x [8 x i16]], align 2   ; [#uses=2 type=[8 x [8 x i16]]*]
  %col_inbuf = alloca [8 x [8 x i16]], align 2    ; [#uses=2 type=[8 x [8 x i16]]*]
  %i = alloca i32, align 4                        ; [#uses=24 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=12 type=i32*]
  store [8 x i16]* %in_block, [8 x i16]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[8 x i16]** %1}, metadata !92), !dbg !93 ; [debug line = 23:24] [debug variable = in_block]
  store [8 x i16]* %out_block, [8 x i16]** %2, align 4
  call void @llvm.dbg.declare(metadata !{[8 x i16]** %2}, metadata !94), !dbg !95 ; [debug line = 24:18] [debug variable = out_block]
  %3 = load [8 x i16]** %2, align 4, !dbg !96     ; [#uses=1 type=[8 x i16]*] [debug line = 25:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([8 x i16]*, i32)*)([8 x i16]* %3, i32 8) nounwind, !dbg !96 ; [debug line = 25:2]
  %4 = load [8 x i16]** %1, align 4, !dbg !98     ; [#uses=1 type=[8 x i16]*] [debug line = 25:38]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([8 x i16]*, i32)*)([8 x i16]* %4, i32 8) nounwind, !dbg !98 ; [debug line = 25:38]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %row_outbuf}, metadata !99), !dbg !101 ; [debug line = 26:15] [debug variable = row_outbuf]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %col_outbuf}, metadata !102), !dbg !103 ; [debug line = 27:15] [debug variable = col_outbuf]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %col_inbuf}, metadata !104), !dbg !105 ; [debug line = 27:109] [debug variable = col_inbuf]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !106), !dbg !107 ; [debug line = 28:13] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !108), !dbg !109 ; [debug line = 28:16] [debug variable = j]
  br label %5, !dbg !110                          ; [debug line = 28:17]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !111        ; [debug line = 32:8]
  br label %6, !dbg !111                          ; [debug line = 32:8]

; <label>:6                                       ; preds = %17, %5
  %7 = load i32* %i, align 4, !dbg !111           ; [#uses=1 type=i32] [debug line = 32:8]
  %8 = icmp ult i32 %7, 8, !dbg !111              ; [#uses=1 type=i1] [debug line = 32:8]
  br i1 %8, label %9, label %20, !dbg !111        ; [debug line = 32:8]

; <label>:9                                       ; preds = %6
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !113 ; [debug line = 32:66]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !113 ; [debug line = 32:66]
  %10 = load i32* %i, align 4, !dbg !115          ; [#uses=1 type=i32] [debug line = 33:7]
  %11 = load [8 x i16]** %1, align 4, !dbg !115   ; [#uses=1 type=[8 x i16]*] [debug line = 33:7]
  %12 = getelementptr inbounds [8 x i16]* %11, i32 %10, !dbg !115 ; [#uses=1 type=[8 x i16]*] [debug line = 33:7]
  %13 = getelementptr inbounds [8 x i16]* %12, i32 0, i32 0, !dbg !115 ; [#uses=1 type=i16*] [debug line = 33:7]
  %14 = load i32* %i, align 4, !dbg !115          ; [#uses=1 type=i32] [debug line = 33:7]
  %15 = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i32 0, i32 %14, !dbg !115 ; [#uses=1 type=[8 x i16]*] [debug line = 33:7]
  %16 = getelementptr inbounds [8 x i16]* %15, i32 0, i32 0, !dbg !115 ; [#uses=1 type=i16*] [debug line = 33:7]
  call void @dct_1d(i16* %13, i16* %16), !dbg !115 ; [debug line = 33:7]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([13 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !116 ; [debug line = 34:4]
  br label %17, !dbg !116                         ; [debug line = 34:4]

; <label>:17                                      ; preds = %9
  %18 = load i32* %i, align 4, !dbg !117          ; [#uses=1 type=i32] [debug line = 32:60]
  %19 = add i32 %18, 1, !dbg !117                 ; [#uses=1 type=i32] [debug line = 32:60]
  store i32 %19, i32* %i, align 4, !dbg !117      ; [debug line = 32:60]
  br label %6, !dbg !117                          ; [debug line = 32:60]

; <label>:20                                      ; preds = %6
  br label %21, !dbg !118                         ; [debug line = 34:4]

; <label>:21                                      ; preds = %20
  store i32 0, i32* %j, align 4, !dbg !119        ; [debug line = 37:9]
  br label %22, !dbg !119                         ; [debug line = 37:9]

; <label>:22                                      ; preds = %44, %21
  %23 = load i32* %j, align 4, !dbg !119          ; [#uses=1 type=i32] [debug line = 37:9]
  %24 = icmp ult i32 %23, 8, !dbg !119            ; [#uses=1 type=i1] [debug line = 37:9]
  br i1 %24, label %25, label %47, !dbg !119      ; [debug line = 37:9]

; <label>:25                                      ; preds = %22
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !121 ; [debug line = 38:1]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !121 ; [debug line = 38:1]
  br label %26, !dbg !121                         ; [debug line = 38:1]

; <label>:26                                      ; preds = %25
  store i32 0, i32* %i, align 4, !dbg !123        ; [debug line = 39:11]
  br label %27, !dbg !123                         ; [debug line = 39:11]

; <label>:27                                      ; preds = %40, %26
  %28 = load i32* %i, align 4, !dbg !123          ; [#uses=1 type=i32] [debug line = 39:11]
  %29 = icmp ult i32 %28, 8, !dbg !123            ; [#uses=1 type=i1] [debug line = 39:11]
  br i1 %29, label %30, label %43, !dbg !123      ; [debug line = 39:11]

; <label>:30                                      ; preds = %27
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !125 ; [debug line = 40:10]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !125 ; [debug line = 40:10]
  %31 = load i32* %j, align 4, !dbg !125          ; [#uses=1 type=i32] [debug line = 40:10]
  %32 = load i32* %i, align 4, !dbg !125          ; [#uses=1 type=i32] [debug line = 40:10]
  %33 = getelementptr inbounds [8 x [8 x i16]]* %row_outbuf, i32 0, i32 %32, !dbg !125 ; [#uses=1 type=[8 x i16]*] [debug line = 40:10]
  %34 = getelementptr inbounds [8 x i16]* %33, i32 0, i32 %31, !dbg !125 ; [#uses=1 type=i16*] [debug line = 40:10]
  %35 = load i16* %34, align 2, !dbg !125         ; [#uses=1 type=i16] [debug line = 40:10]
  %36 = load i32* %i, align 4, !dbg !125          ; [#uses=1 type=i32] [debug line = 40:10]
  %37 = load i32* %j, align 4, !dbg !125          ; [#uses=1 type=i32] [debug line = 40:10]
  %38 = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i32 0, i32 %37, !dbg !125 ; [#uses=1 type=[8 x i16]*] [debug line = 40:10]
  %39 = getelementptr inbounds [8 x i16]* %38, i32 0, i32 %36, !dbg !125 ; [#uses=1 type=i16*] [debug line = 40:10]
  store i16 %35, i16* %39, align 2, !dbg !125     ; [debug line = 40:10]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !127 ; [debug line = 40:43]
  br label %40, !dbg !127                         ; [debug line = 40:43]

; <label>:40                                      ; preds = %30
  %41 = load i32* %i, align 4, !dbg !128          ; [#uses=1 type=i32] [debug line = 39:63]
  %42 = add i32 %41, 1, !dbg !128                 ; [#uses=1 type=i32] [debug line = 39:63]
  store i32 %42, i32* %i, align 4, !dbg !128      ; [debug line = 39:63]
  br label %27, !dbg !128                         ; [debug line = 39:63]

; <label>:43                                      ; preds = %27
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !129 ; [debug line = 40:43]
  br label %44, !dbg !129                         ; [debug line = 40:43]

; <label>:44                                      ; preds = %43
  %45 = load i32* %j, align 4, !dbg !130          ; [#uses=1 type=i32] [debug line = 37:61]
  %46 = add i32 %45, 1, !dbg !130                 ; [#uses=1 type=i32] [debug line = 37:61]
  store i32 %46, i32* %j, align 4, !dbg !130      ; [debug line = 37:61]
  br label %22, !dbg !130                         ; [debug line = 37:61]

; <label>:47                                      ; preds = %22
  br label %48, !dbg !131                         ; [debug line = 40:43]

; <label>:48                                      ; preds = %47
  store i32 0, i32* %i, align 4, !dbg !132        ; [debug line = 43:9]
  br label %49, !dbg !132                         ; [debug line = 43:9]

; <label>:49                                      ; preds = %59, %48
  %50 = load i32* %i, align 4, !dbg !132          ; [#uses=1 type=i32] [debug line = 43:9]
  %51 = icmp ult i32 %50, 8, !dbg !132            ; [#uses=1 type=i1] [debug line = 43:9]
  br i1 %51, label %52, label %62, !dbg !132      ; [debug line = 43:9]

; <label>:52                                      ; preds = %49
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !134 ; [debug line = 43:67]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !134 ; [debug line = 43:67]
  %53 = load i32* %i, align 4, !dbg !136          ; [#uses=1 type=i32] [debug line = 44:7]
  %54 = getelementptr inbounds [8 x [8 x i16]]* %col_inbuf, i32 0, i32 %53, !dbg !136 ; [#uses=1 type=[8 x i16]*] [debug line = 44:7]
  %55 = getelementptr inbounds [8 x i16]* %54, i32 0, i32 0, !dbg !136 ; [#uses=1 type=i16*] [debug line = 44:7]
  %56 = load i32* %i, align 4, !dbg !136          ; [#uses=1 type=i32] [debug line = 44:7]
  %57 = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i32 0, i32 %56, !dbg !136 ; [#uses=1 type=[8 x i16]*] [debug line = 44:7]
  %58 = getelementptr inbounds [8 x i16]* %57, i32 0, i32 0, !dbg !136 ; [#uses=1 type=i16*] [debug line = 44:7]
  call void @dct_1d(i16* %55, i16* %58), !dbg !136 ; [debug line = 44:7]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([13 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !137 ; [debug line = 45:4]
  br label %59, !dbg !137                         ; [debug line = 45:4]

; <label>:59                                      ; preds = %52
  %60 = load i32* %i, align 4, !dbg !138          ; [#uses=1 type=i32] [debug line = 43:61]
  %61 = add i32 %60, 1, !dbg !138                 ; [#uses=1 type=i32] [debug line = 43:61]
  store i32 %61, i32* %i, align 4, !dbg !138      ; [debug line = 43:61]
  br label %49, !dbg !138                         ; [debug line = 43:61]

; <label>:62                                      ; preds = %49
  br label %63, !dbg !139                         ; [debug line = 45:4]

; <label>:63                                      ; preds = %62
  store i32 0, i32* %j, align 4, !dbg !140        ; [debug line = 48:9]
  br label %64, !dbg !140                         ; [debug line = 48:9]

; <label>:64                                      ; preds = %87, %63
  %65 = load i32* %j, align 4, !dbg !140          ; [#uses=1 type=i32] [debug line = 48:9]
  %66 = icmp ult i32 %65, 8, !dbg !140            ; [#uses=1 type=i1] [debug line = 48:9]
  br i1 %66, label %67, label %90, !dbg !140      ; [debug line = 48:9]

; <label>:67                                      ; preds = %64
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !142 ; [debug line = 49:1]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !142 ; [debug line = 49:1]
  br label %68, !dbg !142                         ; [debug line = 49:1]

; <label>:68                                      ; preds = %67
  store i32 0, i32* %i, align 4, !dbg !144        ; [debug line = 50:11]
  br label %69, !dbg !144                         ; [debug line = 50:11]

; <label>:69                                      ; preds = %83, %68
  %70 = load i32* %i, align 4, !dbg !144          ; [#uses=1 type=i32] [debug line = 50:11]
  %71 = icmp ult i32 %70, 8, !dbg !144            ; [#uses=1 type=i1] [debug line = 50:11]
  br i1 %71, label %72, label %86, !dbg !144      ; [debug line = 50:11]

; <label>:72                                      ; preds = %69
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !146 ; [debug line = 51:10]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !146 ; [debug line = 51:10]
  %73 = load i32* %j, align 4, !dbg !146          ; [#uses=1 type=i32] [debug line = 51:10]
  %74 = load i32* %i, align 4, !dbg !146          ; [#uses=1 type=i32] [debug line = 51:10]
  %75 = getelementptr inbounds [8 x [8 x i16]]* %col_outbuf, i32 0, i32 %74, !dbg !146 ; [#uses=1 type=[8 x i16]*] [debug line = 51:10]
  %76 = getelementptr inbounds [8 x i16]* %75, i32 0, i32 %73, !dbg !146 ; [#uses=1 type=i16*] [debug line = 51:10]
  %77 = load i16* %76, align 2, !dbg !146         ; [#uses=1 type=i16] [debug line = 51:10]
  %78 = load i32* %i, align 4, !dbg !146          ; [#uses=1 type=i32] [debug line = 51:10]
  %79 = load i32* %j, align 4, !dbg !146          ; [#uses=1 type=i32] [debug line = 51:10]
  %80 = load [8 x i16]** %2, align 4, !dbg !146   ; [#uses=1 type=[8 x i16]*] [debug line = 51:10]
  %81 = getelementptr inbounds [8 x i16]* %80, i32 %79, !dbg !146 ; [#uses=1 type=[8 x i16]*] [debug line = 51:10]
  %82 = getelementptr inbounds [8 x i16]* %81, i32 0, i32 %78, !dbg !146 ; [#uses=1 type=i16*] [debug line = 51:10]
  store i16 %77, i16* %82, align 2, !dbg !146     ; [debug line = 51:10]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !148 ; [debug line = 51:43]
  br label %83, !dbg !148                         ; [debug line = 51:43]

; <label>:83                                      ; preds = %72
  %84 = load i32* %i, align 4, !dbg !149          ; [#uses=1 type=i32] [debug line = 50:63]
  %85 = add i32 %84, 1, !dbg !149                 ; [#uses=1 type=i32] [debug line = 50:63]
  store i32 %85, i32* %i, align 4, !dbg !149      ; [debug line = 50:63]
  br label %69, !dbg !149                         ; [debug line = 50:63]

; <label>:86                                      ; preds = %69
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([21 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !150 ; [debug line = 51:43]
  br label %87, !dbg !150                         ; [debug line = 51:43]

; <label>:87                                      ; preds = %86
  %88 = load i32* %j, align 4, !dbg !151          ; [#uses=1 type=i32] [debug line = 48:61]
  %89 = add i32 %88, 1, !dbg !151                 ; [#uses=1 type=i32] [debug line = 48:61]
  store i32 %89, i32* %j, align 4, !dbg !151      ; [debug line = 48:61]
  br label %64, !dbg !151                         ; [debug line = 48:61]

; <label>:90                                      ; preds = %64
  ret void, !dbg !152                             ; [debug line = 52:1]
}

; [#uses=1]
define void @read_data(i16* %input, [8 x i16]* %buf) nounwind {
  %1 = alloca i16*, align 4                       ; [#uses=3 type=i16**]
  %2 = alloca [8 x i16]*, align 4                 ; [#uses=3 type=[8 x i16]**]
  %r = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %c = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store i16* %input, i16** %1, align 4
  call void @llvm.dbg.declare(metadata !{i16** %1}, metadata !153), !dbg !154 ; [debug line = 54:22] [debug variable = input]
  store [8 x i16]* %buf, [8 x i16]** %2, align 4
  call void @llvm.dbg.declare(metadata !{[8 x i16]** %2}, metadata !155), !dbg !156 ; [debug line = 54:44] [debug variable = buf]
  %3 = load i16** %1, align 4, !dbg !157          ; [#uses=1 type=i16*] [debug line = 55:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i16*, i32)*)(i16* %3, i32 64) nounwind, !dbg !157 ; [debug line = 55:2]
  %4 = load [8 x i16]** %2, align 4, !dbg !159    ; [#uses=1 type=[8 x i16]*] [debug line = 55:40]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([8 x i16]*, i32)*)([8 x i16]* %4, i32 8) nounwind, !dbg !159 ; [debug line = 55:40]
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !160), !dbg !161 ; [debug line = 56:8] [debug variable = r]
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !162), !dbg !163 ; [debug line = 56:11] [debug variable = c]
  br label %5, !dbg !164                          ; [debug line = 56:12]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %r, align 4, !dbg !165        ; [debug line = 59:9]
  br label %6, !dbg !165                          ; [debug line = 59:9]

; <label>:6                                       ; preds = %31, %5
  %7 = load i32* %r, align 4, !dbg !165           ; [#uses=1 type=i32] [debug line = 59:9]
  %8 = icmp slt i32 %7, 8, !dbg !165              ; [#uses=1 type=i1] [debug line = 59:9]
  br i1 %8, label %9, label %34, !dbg !165        ; [debug line = 59:9]

; <label>:9                                       ; preds = %6
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !167 ; [debug line = 59:67]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !167 ; [debug line = 59:67]
  br label %10, !dbg !167                         ; [debug line = 59:67]

; <label>:10                                      ; preds = %9
  store i32 0, i32* %c, align 4, !dbg !169        ; [debug line = 61:12]
  br label %11, !dbg !169                         ; [debug line = 61:12]

; <label>:11                                      ; preds = %27, %10
  %12 = load i32* %c, align 4, !dbg !169          ; [#uses=1 type=i32] [debug line = 61:12]
  %13 = icmp slt i32 %12, 8, !dbg !169            ; [#uses=1 type=i1] [debug line = 61:12]
  br i1 %13, label %14, label %30, !dbg !169      ; [debug line = 61:12]

; <label>:14                                      ; preds = %11
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !171 ; [debug line = 62:10]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !171 ; [debug line = 62:10]
  %15 = load i32* %r, align 4, !dbg !171          ; [#uses=1 type=i32] [debug line = 62:10]
  %16 = mul nsw i32 %15, 8, !dbg !171             ; [#uses=1 type=i32] [debug line = 62:10]
  %17 = load i32* %c, align 4, !dbg !171          ; [#uses=1 type=i32] [debug line = 62:10]
  %18 = add nsw i32 %16, %17, !dbg !171           ; [#uses=1 type=i32] [debug line = 62:10]
  %19 = load i16** %1, align 4, !dbg !171         ; [#uses=1 type=i16*] [debug line = 62:10]
  %20 = getelementptr inbounds i16* %19, i32 %18, !dbg !171 ; [#uses=1 type=i16*] [debug line = 62:10]
  %21 = load i16* %20, align 2, !dbg !171         ; [#uses=1 type=i16] [debug line = 62:10]
  %22 = load i32* %c, align 4, !dbg !171          ; [#uses=1 type=i32] [debug line = 62:10]
  %23 = load i32* %r, align 4, !dbg !171          ; [#uses=1 type=i32] [debug line = 62:10]
  %24 = load [8 x i16]** %2, align 4, !dbg !171   ; [#uses=1 type=[8 x i16]*] [debug line = 62:10]
  %25 = getelementptr inbounds [8 x i16]* %24, i32 %23, !dbg !171 ; [#uses=1 type=[8 x i16]*] [debug line = 62:10]
  %26 = getelementptr inbounds [8 x i16]* %25, i32 0, i32 %22, !dbg !171 ; [#uses=1 type=i16*] [debug line = 62:10]
  store i16 %21, i16* %26, align 2, !dbg !171     ; [debug line = 62:10]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !173 ; [debug line = 62:75]
  br label %27, !dbg !173                         ; [debug line = 62:75]

; <label>:27                                      ; preds = %14
  %28 = load i32* %c, align 4, !dbg !174          ; [#uses=1 type=i32] [debug line = 61:64]
  %29 = add nsw i32 %28, 1, !dbg !174             ; [#uses=1 type=i32] [debug line = 61:64]
  store i32 %29, i32* %c, align 4, !dbg !174      ; [debug line = 61:64]
  br label %11, !dbg !174                         ; [debug line = 61:64]

; <label>:30                                      ; preds = %11
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !175 ; [debug line = 63:4]
  br label %31, !dbg !175                         ; [debug line = 63:4]

; <label>:31                                      ; preds = %30
  %32 = load i32* %r, align 4, !dbg !176          ; [#uses=1 type=i32] [debug line = 59:61]
  %33 = add nsw i32 %32, 1, !dbg !176             ; [#uses=1 type=i32] [debug line = 59:61]
  store i32 %33, i32* %r, align 4, !dbg !176      ; [debug line = 59:61]
  br label %6, !dbg !176                          ; [debug line = 59:61]

; <label>:34                                      ; preds = %6
  ret void, !dbg !177                             ; [debug line = 64:1]
}

; [#uses=1]
define void @write_data([8 x i16]* %buf, i16* %output) nounwind {
  %1 = alloca [8 x i16]*, align 4                 ; [#uses=3 type=[8 x i16]**]
  %2 = alloca i16*, align 4                       ; [#uses=3 type=i16**]
  %r = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %c = alloca i32, align 4                        ; [#uses=6 type=i32*]
  store [8 x i16]* %buf, [8 x i16]** %1, align 4
  call void @llvm.dbg.declare(metadata !{[8 x i16]** %1}, metadata !178), !dbg !179 ; [debug line = 66:23] [debug variable = buf]
  store i16* %output, i16** %2, align 4
  call void @llvm.dbg.declare(metadata !{i16** %2}, metadata !180), !dbg !181 ; [debug line = 66:116] [debug variable = output]
  %3 = load i16** %2, align 4, !dbg !182          ; [#uses=1 type=i16*] [debug line = 67:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i16*, i32)*)(i16* %3, i32 64) nounwind, !dbg !182 ; [debug line = 67:2]
  %4 = load [8 x i16]** %1, align 4, !dbg !184    ; [#uses=1 type=[8 x i16]*] [debug line = 67:41]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void ([8 x i16]*, i32)*)([8 x i16]* %4, i32 8) nounwind, !dbg !184 ; [debug line = 67:41]
  call void @llvm.dbg.declare(metadata !{i32* %r}, metadata !185), !dbg !186 ; [debug line = 68:8] [debug variable = r]
  call void @llvm.dbg.declare(metadata !{i32* %c}, metadata !187), !dbg !188 ; [debug line = 68:11] [debug variable = c]
  br label %5, !dbg !189                          ; [debug line = 68:12]

; <label>:5                                       ; preds = %0
  store i32 0, i32* %r, align 4, !dbg !190        ; [debug line = 71:9]
  br label %6, !dbg !190                          ; [debug line = 71:9]

; <label>:6                                       ; preds = %31, %5
  %7 = load i32* %r, align 4, !dbg !190           ; [#uses=1 type=i32] [debug line = 71:9]
  %8 = icmp slt i32 %7, 8, !dbg !190              ; [#uses=1 type=i1] [debug line = 71:9]
  br i1 %8, label %9, label %34, !dbg !190        ; [debug line = 71:9]

; <label>:9                                       ; preds = %6
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !192 ; [debug line = 71:67]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !192 ; [debug line = 71:67]
  br label %10, !dbg !192                         ; [debug line = 71:67]

; <label>:10                                      ; preds = %9
  store i32 0, i32* %c, align 4, !dbg !194        ; [debug line = 73:12]
  br label %11, !dbg !194                         ; [debug line = 73:12]

; <label>:11                                      ; preds = %27, %10
  %12 = load i32* %c, align 4, !dbg !194          ; [#uses=1 type=i32] [debug line = 73:12]
  %13 = icmp slt i32 %12, 8, !dbg !194            ; [#uses=1 type=i1] [debug line = 73:12]
  br i1 %13, label %14, label %30, !dbg !194      ; [debug line = 73:12]

; <label>:14                                      ; preds = %11
  call void bitcast (void (...)* @_ssdm_op_SpecLoopName to void (i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !196 ; [debug line = 74:10]
  call void bitcast (void (...)* @_ssdm_RegionBegin to void (i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !196 ; [debug line = 74:10]
  %15 = load i32* %c, align 4, !dbg !196          ; [#uses=1 type=i32] [debug line = 74:10]
  %16 = load i32* %r, align 4, !dbg !196          ; [#uses=1 type=i32] [debug line = 74:10]
  %17 = load [8 x i16]** %1, align 4, !dbg !196   ; [#uses=1 type=[8 x i16]*] [debug line = 74:10]
  %18 = getelementptr inbounds [8 x i16]* %17, i32 %16, !dbg !196 ; [#uses=1 type=[8 x i16]*] [debug line = 74:10]
  %19 = getelementptr inbounds [8 x i16]* %18, i32 0, i32 %15, !dbg !196 ; [#uses=1 type=i16*] [debug line = 74:10]
  %20 = load i16* %19, align 2, !dbg !196         ; [#uses=1 type=i16] [debug line = 74:10]
  %21 = load i32* %r, align 4, !dbg !196          ; [#uses=1 type=i32] [debug line = 74:10]
  %22 = mul nsw i32 %21, 8, !dbg !196             ; [#uses=1 type=i32] [debug line = 74:10]
  %23 = load i32* %c, align 4, !dbg !196          ; [#uses=1 type=i32] [debug line = 74:10]
  %24 = add nsw i32 %22, %23, !dbg !196           ; [#uses=1 type=i32] [debug line = 74:10]
  %25 = load i16** %2, align 4, !dbg !196         ; [#uses=1 type=i16*] [debug line = 74:10]
  %26 = getelementptr inbounds i16* %25, i32 %24, !dbg !196 ; [#uses=1 type=i16*] [debug line = 74:10]
  store i16 %20, i16* %26, align 2, !dbg !196     ; [debug line = 74:10]
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !198 ; [debug line = 74:76]
  br label %27, !dbg !198                         ; [debug line = 74:76]

; <label>:27                                      ; preds = %14
  %28 = load i32* %c, align 4, !dbg !199          ; [#uses=1 type=i32] [debug line = 73:64]
  %29 = add nsw i32 %28, 1, !dbg !199             ; [#uses=1 type=i32] [debug line = 73:64]
  store i32 %29, i32* %c, align 4, !dbg !199      ; [debug line = 73:64]
  br label %11, !dbg !199                         ; [debug line = 73:64]

; <label>:30                                      ; preds = %11
  call void bitcast (void (...)* @_ssdm_RegionEnd to void (i8*)*)(i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !200 ; [debug line = 75:4]
  br label %31, !dbg !200                         ; [debug line = 75:4]

; <label>:31                                      ; preds = %30
  %32 = load i32* %r, align 4, !dbg !201          ; [#uses=1 type=i32] [debug line = 71:61]
  %33 = add nsw i32 %32, 1, !dbg !201             ; [#uses=1 type=i32] [debug line = 71:61]
  store i32 %33, i32* %r, align 4, !dbg !201      ; [debug line = 71:61]
  br label %6, !dbg !201                          ; [debug line = 71:61]

; <label>:34                                      ; preds = %6
  ret void, !dbg !202                             ; [debug line = 76:1]
}

; [#uses=0]
define void @dct(i16* %input, i16* %output) nounwind {
  %1 = alloca i16*, align 4                       ; [#uses=3 type=i16**]
  %2 = alloca i16*, align 4                       ; [#uses=3 type=i16**]
  %buf_2d_in = alloca [8 x [8 x i16]], align 2    ; [#uses=2 type=[8 x [8 x i16]]*]
  %buf_2d_out = alloca [8 x [8 x i16]], align 2   ; [#uses=2 type=[8 x [8 x i16]]*]
  store i16* %input, i16** %1, align 4
  call void @llvm.dbg.declare(metadata !{i16** %1}, metadata !203), !dbg !204 ; [debug line = 78:16] [debug variable = input]
  store i16* %output, i16** %2, align 4
  call void @llvm.dbg.declare(metadata !{i16** %2}, metadata !205), !dbg !206 ; [debug line = 78:38] [debug variable = output]
  %3 = load i16** %2, align 4, !dbg !207          ; [#uses=1 type=i16*] [debug line = 79:2]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i16*, i32)*)(i16* %3, i32 64) nounwind, !dbg !207 ; [debug line = 79:2]
  %4 = load i16** %1, align 4, !dbg !209          ; [#uses=1 type=i16*] [debug line = 79:41]
  call void bitcast (void (...)* @_ssdm_SpecArrayDimSize to void (i16*, i32)*)(i16* %4, i32 64) nounwind, !dbg !209 ; [debug line = 79:41]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_in}, metadata !210), !dbg !212 ; [debug line = 81:10] [debug variable = buf_2d_in]
  call void @llvm.dbg.declare(metadata !{[8 x [8 x i16]]* %buf_2d_out}, metadata !213), !dbg !214 ; [debug line = 82:10] [debug variable = buf_2d_out]
  %5 = load i16** %1, align 4, !dbg !215          ; [#uses=1 type=i16*] [debug line = 85:4]
  %6 = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_in, i32 0, i32 0, !dbg !215 ; [#uses=1 type=[8 x i16]*] [debug line = 85:4]
  call void @read_data(i16* %5, [8 x i16]* %6), !dbg !215 ; [debug line = 85:4]
  %7 = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_in, i32 0, i32 0, !dbg !216 ; [#uses=1 type=[8 x i16]*] [debug line = 87:4]
  %8 = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_out, i32 0, i32 0, !dbg !216 ; [#uses=1 type=[8 x i16]*] [debug line = 87:4]
  call void @dct_2d([8 x i16]* %7, [8 x i16]* %8), !dbg !216 ; [debug line = 87:4]
  %9 = getelementptr inbounds [8 x [8 x i16]]* %buf_2d_out, i32 0, i32 0, !dbg !217 ; [#uses=1 type=[8 x i16]*] [debug line = 90:4]
  %10 = load i16** %2, align 4, !dbg !217         ; [#uses=1 type=i16*] [debug line = 90:4]
  call void @write_data([8 x i16]* %9, i16* %10), !dbg !217 ; [debug line = 90:4]
  ret void, !dbg !218                             ; [debug line = 91:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!39, !46, !49, !52, !55}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"C:/Users/guill/Desktop/hls_lab3/dct.prj/solution1/.autopilot/db/dct.pragma.2.c", metadata !"C:\5CUsers\5Cguill\5CDesktop\5Chls_lab3", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !33} ; [ DW_TAG_compile_unit ]
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
!35 = metadata !{i32 786484, i32 0, metadata !5, metadata !"dct_coeff_table", metadata !"dct_coeff_table", metadata !"", metadata !6, i32 8, metadata !36, i32 1, i32 1, [8 x [8 x i16]]* @dct_1d.dct_coeff_table} ; [ DW_TAG_variable ]
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
!58 = metadata !{i32 786689, metadata !5, metadata !"src", metadata !6, i32 16777220, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 4, i32 24, metadata !5, null}
!60 = metadata !{i32 786689, metadata !5, metadata !"dst", metadata !6, i32 33554436, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 4, i32 81, metadata !5, null}
!62 = metadata !{i32 5, i32 2, metadata !63, null}
!63 = metadata !{i32 786443, metadata !5, i32 5, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 5, i32 32, metadata !63, null}
!65 = metadata !{i32 786688, metadata !63, metadata !"k", metadata !6, i32 6, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!67 = metadata !{i32 6, i32 17, metadata !63, null}
!68 = metadata !{i32 786688, metadata !63, metadata !"n", metadata !6, i32 6, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 6, i32 20, metadata !63, null}
!70 = metadata !{i32 786688, metadata !63, metadata !"tmp", metadata !6, i32 7, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!72 = metadata !{i32 7, i32 8, metadata !63, null}
!73 = metadata !{i32 11, i32 1, metadata !63, null}
!74 = metadata !{i32 13, i32 9, metadata !75, null}
!75 = metadata !{i32 786443, metadata !63, i32 13, i32 4, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 13, i32 67, metadata !77, null}
!77 = metadata !{i32 786443, metadata !75, i32 13, i32 66, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 15, i32 11, metadata !79, null}
!79 = metadata !{i32 786443, metadata !77, i32 15, i32 7, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 15, i32 78, metadata !81, null}
!81 = metadata !{i32 786443, metadata !79, i32 15, i32 77, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786688, metadata !81, metadata !"coeff", metadata !6, i32 16, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!83 = metadata !{i32 16, i32 14, metadata !81, null}
!84 = metadata !{i32 16, i32 48, metadata !81, null}
!85 = metadata !{i32 17, i32 10, metadata !81, null}
!86 = metadata !{i32 18, i32 7, metadata !81, null}
!87 = metadata !{i32 15, i32 72, metadata !79, null}
!88 = metadata !{i32 19, i32 7, metadata !77, null}
!89 = metadata !{i32 20, i32 4, metadata !77, null}
!90 = metadata !{i32 13, i32 61, metadata !75, null}
!91 = metadata !{i32 21, i32 1, metadata !63, null}
!92 = metadata !{i32 786689, metadata !14, metadata !"in_block", metadata !6, i32 16777239, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 23, i32 24, metadata !14, null}
!94 = metadata !{i32 786689, metadata !14, metadata !"out_block", metadata !6, i32 33554456, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 24, i32 18, metadata !14, null}
!96 = metadata !{i32 25, i32 2, metadata !97, null}
!97 = metadata !{i32 786443, metadata !14, i32 25, i32 1, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 25, i32 38, metadata !97, null}
!99 = metadata !{i32 786688, metadata !97, metadata !"row_outbuf", metadata !6, i32 26, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !10, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!101 = metadata !{i32 26, i32 15, metadata !97, null}
!102 = metadata !{i32 786688, metadata !97, metadata !"col_outbuf", metadata !6, i32 27, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 27, i32 15, metadata !97, null}
!104 = metadata !{i32 786688, metadata !97, metadata !"col_inbuf", metadata !6, i32 27, metadata !100, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 27, i32 109, metadata !97, null}
!106 = metadata !{i32 786688, metadata !97, metadata !"i", metadata !6, i32 28, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 28, i32 13, metadata !97, null}
!108 = metadata !{i32 786688, metadata !97, metadata !"j", metadata !6, i32 28, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 28, i32 16, metadata !97, null}
!110 = metadata !{i32 28, i32 17, metadata !97, null}
!111 = metadata !{i32 32, i32 8, metadata !112, null}
!112 = metadata !{i32 786443, metadata !97, i32 32, i32 4, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!113 = metadata !{i32 32, i32 66, metadata !114, null}
!114 = metadata !{i32 786443, metadata !112, i32 32, i32 65, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 33, i32 7, metadata !114, null}
!116 = metadata !{i32 34, i32 4, metadata !114, null}
!117 = metadata !{i32 32, i32 60, metadata !112, null}
!118 = metadata !{i32 34, i32 4, metadata !112, null}
!119 = metadata !{i32 37, i32 9, metadata !120, null}
!120 = metadata !{i32 786443, metadata !97, i32 37, i32 4, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 38, i32 1, metadata !122, null}
!122 = metadata !{i32 786443, metadata !120, i32 38, i32 1, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!123 = metadata !{i32 39, i32 11, metadata !124, null}
!124 = metadata !{i32 786443, metadata !122, i32 39, i32 7, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 40, i32 10, metadata !126, null}
!126 = metadata !{i32 786443, metadata !124, i32 40, i32 10, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 40, i32 43, metadata !126, null}
!128 = metadata !{i32 39, i32 63, metadata !124, null}
!129 = metadata !{i32 40, i32 43, metadata !124, null}
!130 = metadata !{i32 37, i32 61, metadata !120, null}
!131 = metadata !{i32 40, i32 43, metadata !120, null}
!132 = metadata !{i32 43, i32 9, metadata !133, null}
!133 = metadata !{i32 786443, metadata !97, i32 43, i32 4, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 43, i32 67, metadata !135, null}
!135 = metadata !{i32 786443, metadata !133, i32 43, i32 66, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 44, i32 7, metadata !135, null}
!137 = metadata !{i32 45, i32 4, metadata !135, null}
!138 = metadata !{i32 43, i32 61, metadata !133, null}
!139 = metadata !{i32 45, i32 4, metadata !133, null}
!140 = metadata !{i32 48, i32 9, metadata !141, null}
!141 = metadata !{i32 786443, metadata !97, i32 48, i32 4, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 49, i32 1, metadata !143, null}
!143 = metadata !{i32 786443, metadata !141, i32 49, i32 1, metadata !6, i32 15} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 50, i32 11, metadata !145, null}
!145 = metadata !{i32 786443, metadata !143, i32 50, i32 7, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 51, i32 10, metadata !147, null}
!147 = metadata !{i32 786443, metadata !145, i32 51, i32 10, metadata !6, i32 17} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 51, i32 43, metadata !147, null}
!149 = metadata !{i32 50, i32 63, metadata !145, null}
!150 = metadata !{i32 51, i32 43, metadata !145, null}
!151 = metadata !{i32 48, i32 61, metadata !141, null}
!152 = metadata !{i32 52, i32 1, metadata !97, null}
!153 = metadata !{i32 786689, metadata !21, metadata !"input", metadata !6, i32 16777270, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!154 = metadata !{i32 54, i32 22, metadata !21, null}
!155 = metadata !{i32 786689, metadata !21, metadata !"buf", metadata !6, i32 33554486, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!156 = metadata !{i32 54, i32 44, metadata !21, null}
!157 = metadata !{i32 55, i32 2, metadata !158, null}
!158 = metadata !{i32 786443, metadata !21, i32 55, i32 1, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 55, i32 40, metadata !158, null}
!160 = metadata !{i32 786688, metadata !158, metadata !"r", metadata !6, i32 56, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!161 = metadata !{i32 56, i32 8, metadata !158, null}
!162 = metadata !{i32 786688, metadata !158, metadata !"c", metadata !6, i32 56, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!163 = metadata !{i32 56, i32 11, metadata !158, null}
!164 = metadata !{i32 56, i32 12, metadata !158, null}
!165 = metadata !{i32 59, i32 9, metadata !166, null}
!166 = metadata !{i32 786443, metadata !158, i32 59, i32 4, metadata !6, i32 19} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 59, i32 67, metadata !168, null}
!168 = metadata !{i32 786443, metadata !166, i32 59, i32 66, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 61, i32 12, metadata !170, null}
!170 = metadata !{i32 786443, metadata !168, i32 61, i32 7, metadata !6, i32 21} ; [ DW_TAG_lexical_block ]
!171 = metadata !{i32 62, i32 10, metadata !172, null}
!172 = metadata !{i32 786443, metadata !170, i32 62, i32 10, metadata !6, i32 22} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 62, i32 75, metadata !172, null}
!174 = metadata !{i32 61, i32 64, metadata !170, null}
!175 = metadata !{i32 63, i32 4, metadata !168, null}
!176 = metadata !{i32 59, i32 61, metadata !166, null}
!177 = metadata !{i32 64, i32 1, metadata !158, null}
!178 = metadata !{i32 786689, metadata !27, metadata !"buf", metadata !6, i32 16777282, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 66, i32 23, metadata !27, null}
!180 = metadata !{i32 786689, metadata !27, metadata !"output", metadata !6, i32 33554498, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!181 = metadata !{i32 66, i32 116, metadata !27, null}
!182 = metadata !{i32 67, i32 2, metadata !183, null}
!183 = metadata !{i32 786443, metadata !27, i32 67, i32 1, metadata !6, i32 23} ; [ DW_TAG_lexical_block ]
!184 = metadata !{i32 67, i32 41, metadata !183, null}
!185 = metadata !{i32 786688, metadata !183, metadata !"r", metadata !6, i32 68, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 68, i32 8, metadata !183, null}
!187 = metadata !{i32 786688, metadata !183, metadata !"c", metadata !6, i32 68, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 68, i32 11, metadata !183, null}
!189 = metadata !{i32 68, i32 12, metadata !183, null}
!190 = metadata !{i32 71, i32 9, metadata !191, null}
!191 = metadata !{i32 786443, metadata !183, i32 71, i32 4, metadata !6, i32 24} ; [ DW_TAG_lexical_block ]
!192 = metadata !{i32 71, i32 67, metadata !193, null}
!193 = metadata !{i32 786443, metadata !191, i32 71, i32 66, metadata !6, i32 25} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 73, i32 12, metadata !195, null}
!195 = metadata !{i32 786443, metadata !193, i32 73, i32 7, metadata !6, i32 26} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 74, i32 10, metadata !197, null}
!197 = metadata !{i32 786443, metadata !195, i32 74, i32 10, metadata !6, i32 27} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 74, i32 76, metadata !197, null}
!199 = metadata !{i32 73, i32 64, metadata !195, null}
!200 = metadata !{i32 75, i32 4, metadata !193, null}
!201 = metadata !{i32 71, i32 61, metadata !191, null}
!202 = metadata !{i32 76, i32 1, metadata !183, null}
!203 = metadata !{i32 786689, metadata !30, metadata !"input", metadata !6, i32 16777294, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!204 = metadata !{i32 78, i32 16, metadata !30, null}
!205 = metadata !{i32 786689, metadata !30, metadata !"output", metadata !6, i32 33554510, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!206 = metadata !{i32 78, i32 38, metadata !30, null}
!207 = metadata !{i32 79, i32 2, metadata !208, null}
!208 = metadata !{i32 786443, metadata !30, i32 79, i32 1, metadata !6, i32 28} ; [ DW_TAG_lexical_block ]
!209 = metadata !{i32 79, i32 41, metadata !208, null}
!210 = metadata !{i32 786688, metadata !208, metadata !"buf_2d_in", metadata !6, i32 81, metadata !211, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!211 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1024, i64 16, i32 0, i32 0, metadata !11, metadata !38, i32 0, i32 0} ; [ DW_TAG_array_type ]
!212 = metadata !{i32 81, i32 10, metadata !208, null}
!213 = metadata !{i32 786688, metadata !208, metadata !"buf_2d_out", metadata !6, i32 82, metadata !211, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!214 = metadata !{i32 82, i32 10, metadata !208, null}
!215 = metadata !{i32 85, i32 4, metadata !208, null}
!216 = metadata !{i32 87, i32 4, metadata !208, null}
!217 = metadata !{i32 90, i32 4, metadata !208, null}
!218 = metadata !{i32 91, i32 1, metadata !208, null}
