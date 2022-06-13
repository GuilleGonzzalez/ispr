// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed May 25 17:46:47 2022
// Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_mux_0_0/system_mux_0_0_sim_netlist.v
// Design      : system_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_mux_0_0,mux,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mux,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module system_mux_0_0
   (x0,
    x1,
    x2,
    x3,
    x4,
    x5,
    x6,
    x7,
    x8,
    x9,
    ctl,
    y);
  input [15:0]x0;
  input [15:0]x1;
  input [15:0]x2;
  input [15:0]x3;
  input [15:0]x4;
  input [15:0]x5;
  input [15:0]x6;
  input [15:0]x7;
  input [15:0]x8;
  input [15:0]x9;
  input [3:0]ctl;
  output [15:0]y;

  wire [3:0]ctl;
  wire [15:0]x0;
  wire [15:0]x1;
  wire [15:0]x2;
  wire [15:0]x3;
  wire [15:0]x4;
  wire [15:0]x5;
  wire [15:0]x6;
  wire [15:0]x7;
  wire [15:0]x8;
  wire [15:0]x9;
  wire [15:0]y;

  system_mux_0_0_mux U0
       (.ctl(ctl),
        .x0(x0),
        .x1(x1),
        .x2(x2),
        .x3(x3),
        .x4(x4),
        .x5(x5),
        .x6(x6),
        .x7(x7),
        .x8(x8),
        .x9(x9),
        .y(y));
endmodule

(* ORIG_REF_NAME = "mux" *) 
module system_mux_0_0_mux
   (y,
    ctl,
    x9,
    x8,
    x3,
    x2,
    x1,
    x0,
    x7,
    x6,
    x5,
    x4);
  output [15:0]y;
  input [3:0]ctl;
  input [15:0]x9;
  input [15:0]x8;
  input [15:0]x3;
  input [15:0]x2;
  input [15:0]x1;
  input [15:0]x0;
  input [15:0]x7;
  input [15:0]x6;
  input [15:0]x5;
  input [15:0]x4;

  wire [3:0]ctl;
  wire [15:0]x0;
  wire [15:0]x1;
  wire [15:0]x2;
  wire [15:0]x3;
  wire [15:0]x4;
  wire [15:0]x5;
  wire [15:0]x6;
  wire [15:0]x7;
  wire [15:0]x8;
  wire [15:0]x9;
  wire [15:0]y;
  wire \y_reg[0]_i_1_n_0 ;
  wire \y_reg[0]_i_2_n_0 ;
  wire \y_reg[0]_i_3_n_0 ;
  wire \y_reg[0]_i_4_n_0 ;
  wire \y_reg[10]_i_1_n_0 ;
  wire \y_reg[10]_i_2_n_0 ;
  wire \y_reg[10]_i_3_n_0 ;
  wire \y_reg[10]_i_4_n_0 ;
  wire \y_reg[11]_i_1_n_0 ;
  wire \y_reg[11]_i_2_n_0 ;
  wire \y_reg[11]_i_3_n_0 ;
  wire \y_reg[11]_i_4_n_0 ;
  wire \y_reg[12]_i_1_n_0 ;
  wire \y_reg[12]_i_2_n_0 ;
  wire \y_reg[12]_i_3_n_0 ;
  wire \y_reg[12]_i_4_n_0 ;
  wire \y_reg[13]_i_1_n_0 ;
  wire \y_reg[13]_i_2_n_0 ;
  wire \y_reg[13]_i_3_n_0 ;
  wire \y_reg[13]_i_4_n_0 ;
  wire \y_reg[14]_i_1_n_0 ;
  wire \y_reg[14]_i_2_n_0 ;
  wire \y_reg[14]_i_3_n_0 ;
  wire \y_reg[14]_i_4_n_0 ;
  wire \y_reg[15]_i_1_n_0 ;
  wire \y_reg[15]_i_2_n_0 ;
  wire \y_reg[15]_i_3_n_0 ;
  wire \y_reg[15]_i_4_n_0 ;
  wire \y_reg[15]_i_5_n_0 ;
  wire \y_reg[1]_i_1_n_0 ;
  wire \y_reg[1]_i_2_n_0 ;
  wire \y_reg[1]_i_3_n_0 ;
  wire \y_reg[1]_i_4_n_0 ;
  wire \y_reg[2]_i_1_n_0 ;
  wire \y_reg[2]_i_2_n_0 ;
  wire \y_reg[2]_i_3_n_0 ;
  wire \y_reg[2]_i_4_n_0 ;
  wire \y_reg[3]_i_1_n_0 ;
  wire \y_reg[3]_i_2_n_0 ;
  wire \y_reg[3]_i_3_n_0 ;
  wire \y_reg[3]_i_4_n_0 ;
  wire \y_reg[4]_i_1_n_0 ;
  wire \y_reg[4]_i_2_n_0 ;
  wire \y_reg[4]_i_3_n_0 ;
  wire \y_reg[4]_i_4_n_0 ;
  wire \y_reg[5]_i_1_n_0 ;
  wire \y_reg[5]_i_2_n_0 ;
  wire \y_reg[5]_i_3_n_0 ;
  wire \y_reg[5]_i_4_n_0 ;
  wire \y_reg[6]_i_1_n_0 ;
  wire \y_reg[6]_i_2_n_0 ;
  wire \y_reg[6]_i_3_n_0 ;
  wire \y_reg[6]_i_4_n_0 ;
  wire \y_reg[7]_i_1_n_0 ;
  wire \y_reg[7]_i_2_n_0 ;
  wire \y_reg[7]_i_3_n_0 ;
  wire \y_reg[7]_i_4_n_0 ;
  wire \y_reg[8]_i_1_n_0 ;
  wire \y_reg[8]_i_2_n_0 ;
  wire \y_reg[8]_i_3_n_0 ;
  wire \y_reg[8]_i_4_n_0 ;
  wire \y_reg[9]_i_1_n_0 ;
  wire \y_reg[9]_i_2_n_0 ;
  wire \y_reg[9]_i_3_n_0 ;
  wire \y_reg[9]_i_4_n_0 ;

  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.CLR(1'b0),
        .D(\y_reg[0]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[0]_i_1 
       (.I0(\y_reg[0]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[0]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[0]_i_4_n_0 ),
        .O(\y_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[0]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[0]),
        .I3(ctl[0]),
        .I4(x8[0]),
        .O(\y_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[0]_i_3 
       (.I0(x7[0]),
        .I1(x6[0]),
        .I2(ctl[1]),
        .I3(x5[0]),
        .I4(ctl[0]),
        .I5(x4[0]),
        .O(\y_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[0]_i_4 
       (.I0(x3[0]),
        .I1(x2[0]),
        .I2(ctl[1]),
        .I3(x1[0]),
        .I4(ctl[0]),
        .I5(x0[0]),
        .O(\y_reg[0]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[10] 
       (.CLR(1'b0),
        .D(\y_reg[10]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[10]_i_1 
       (.I0(\y_reg[10]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[10]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[10]_i_4_n_0 ),
        .O(\y_reg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[10]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[10]),
        .I3(ctl[0]),
        .I4(x8[10]),
        .O(\y_reg[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[10]_i_3 
       (.I0(x7[10]),
        .I1(x6[10]),
        .I2(ctl[1]),
        .I3(x5[10]),
        .I4(ctl[0]),
        .I5(x4[10]),
        .O(\y_reg[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[10]_i_4 
       (.I0(x3[10]),
        .I1(x2[10]),
        .I2(ctl[1]),
        .I3(x1[10]),
        .I4(ctl[0]),
        .I5(x0[10]),
        .O(\y_reg[10]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[11] 
       (.CLR(1'b0),
        .D(\y_reg[11]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[11]_i_1 
       (.I0(\y_reg[11]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[11]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[11]_i_4_n_0 ),
        .O(\y_reg[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[11]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[11]),
        .I3(ctl[0]),
        .I4(x8[11]),
        .O(\y_reg[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[11]_i_3 
       (.I0(x7[11]),
        .I1(x6[11]),
        .I2(ctl[1]),
        .I3(x5[11]),
        .I4(ctl[0]),
        .I5(x4[11]),
        .O(\y_reg[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[11]_i_4 
       (.I0(x3[11]),
        .I1(x2[11]),
        .I2(ctl[1]),
        .I3(x1[11]),
        .I4(ctl[0]),
        .I5(x0[11]),
        .O(\y_reg[11]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[12] 
       (.CLR(1'b0),
        .D(\y_reg[12]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[12]_i_1 
       (.I0(\y_reg[12]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[12]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[12]_i_4_n_0 ),
        .O(\y_reg[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[12]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[12]),
        .I3(ctl[0]),
        .I4(x8[12]),
        .O(\y_reg[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[12]_i_3 
       (.I0(x7[12]),
        .I1(x6[12]),
        .I2(ctl[1]),
        .I3(x5[12]),
        .I4(ctl[0]),
        .I5(x4[12]),
        .O(\y_reg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[12]_i_4 
       (.I0(x3[12]),
        .I1(x2[12]),
        .I2(ctl[1]),
        .I3(x1[12]),
        .I4(ctl[0]),
        .I5(x0[12]),
        .O(\y_reg[12]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[13] 
       (.CLR(1'b0),
        .D(\y_reg[13]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[13]_i_1 
       (.I0(\y_reg[13]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[13]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[13]_i_4_n_0 ),
        .O(\y_reg[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[13]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[13]),
        .I3(ctl[0]),
        .I4(x8[13]),
        .O(\y_reg[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[13]_i_3 
       (.I0(x7[13]),
        .I1(x6[13]),
        .I2(ctl[1]),
        .I3(x5[13]),
        .I4(ctl[0]),
        .I5(x4[13]),
        .O(\y_reg[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[13]_i_4 
       (.I0(x3[13]),
        .I1(x2[13]),
        .I2(ctl[1]),
        .I3(x1[13]),
        .I4(ctl[0]),
        .I5(x0[13]),
        .O(\y_reg[13]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[14] 
       (.CLR(1'b0),
        .D(\y_reg[14]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[14]_i_1 
       (.I0(\y_reg[14]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[14]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[14]_i_4_n_0 ),
        .O(\y_reg[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[14]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[14]),
        .I3(ctl[0]),
        .I4(x8[14]),
        .O(\y_reg[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[14]_i_3 
       (.I0(x7[14]),
        .I1(x6[14]),
        .I2(ctl[1]),
        .I3(x5[14]),
        .I4(ctl[0]),
        .I5(x4[14]),
        .O(\y_reg[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[14]_i_4 
       (.I0(x3[14]),
        .I1(x2[14]),
        .I2(ctl[1]),
        .I3(x1[14]),
        .I4(ctl[0]),
        .I5(x0[14]),
        .O(\y_reg[14]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[15] 
       (.CLR(1'b0),
        .D(\y_reg[15]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[15]_i_1 
       (.I0(\y_reg[15]_i_3_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[15]_i_4_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[15]_i_5_n_0 ),
        .O(\y_reg[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \y_reg[15]_i_2 
       (.I0(ctl[3]),
        .I1(ctl[2]),
        .I2(ctl[1]),
        .O(\y_reg[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[15]_i_3 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[15]),
        .I3(ctl[0]),
        .I4(x8[15]),
        .O(\y_reg[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[15]_i_4 
       (.I0(x7[15]),
        .I1(x6[15]),
        .I2(ctl[1]),
        .I3(x5[15]),
        .I4(ctl[0]),
        .I5(x4[15]),
        .O(\y_reg[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[15]_i_5 
       (.I0(x3[15]),
        .I1(x2[15]),
        .I2(ctl[1]),
        .I3(x1[15]),
        .I4(ctl[0]),
        .I5(x0[15]),
        .O(\y_reg[15]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[1] 
       (.CLR(1'b0),
        .D(\y_reg[1]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[1]_i_1 
       (.I0(\y_reg[1]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[1]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[1]_i_4_n_0 ),
        .O(\y_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[1]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[1]),
        .I3(ctl[0]),
        .I4(x8[1]),
        .O(\y_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[1]_i_3 
       (.I0(x7[1]),
        .I1(x6[1]),
        .I2(ctl[1]),
        .I3(x5[1]),
        .I4(ctl[0]),
        .I5(x4[1]),
        .O(\y_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[1]_i_4 
       (.I0(x3[1]),
        .I1(x2[1]),
        .I2(ctl[1]),
        .I3(x1[1]),
        .I4(ctl[0]),
        .I5(x0[1]),
        .O(\y_reg[1]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[2] 
       (.CLR(1'b0),
        .D(\y_reg[2]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[2]_i_1 
       (.I0(\y_reg[2]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[2]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[2]_i_4_n_0 ),
        .O(\y_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[2]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[2]),
        .I3(ctl[0]),
        .I4(x8[2]),
        .O(\y_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[2]_i_3 
       (.I0(x7[2]),
        .I1(x6[2]),
        .I2(ctl[1]),
        .I3(x5[2]),
        .I4(ctl[0]),
        .I5(x4[2]),
        .O(\y_reg[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[2]_i_4 
       (.I0(x3[2]),
        .I1(x2[2]),
        .I2(ctl[1]),
        .I3(x1[2]),
        .I4(ctl[0]),
        .I5(x0[2]),
        .O(\y_reg[2]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[3] 
       (.CLR(1'b0),
        .D(\y_reg[3]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[3]_i_1 
       (.I0(\y_reg[3]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[3]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[3]_i_4_n_0 ),
        .O(\y_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[3]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[3]),
        .I3(ctl[0]),
        .I4(x8[3]),
        .O(\y_reg[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[3]_i_3 
       (.I0(x7[3]),
        .I1(x6[3]),
        .I2(ctl[1]),
        .I3(x5[3]),
        .I4(ctl[0]),
        .I5(x4[3]),
        .O(\y_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[3]_i_4 
       (.I0(x3[3]),
        .I1(x2[3]),
        .I2(ctl[1]),
        .I3(x1[3]),
        .I4(ctl[0]),
        .I5(x0[3]),
        .O(\y_reg[3]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[4] 
       (.CLR(1'b0),
        .D(\y_reg[4]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[4]_i_1 
       (.I0(\y_reg[4]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[4]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[4]_i_4_n_0 ),
        .O(\y_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[4]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[4]),
        .I3(ctl[0]),
        .I4(x8[4]),
        .O(\y_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[4]_i_3 
       (.I0(x7[4]),
        .I1(x6[4]),
        .I2(ctl[1]),
        .I3(x5[4]),
        .I4(ctl[0]),
        .I5(x4[4]),
        .O(\y_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[4]_i_4 
       (.I0(x3[4]),
        .I1(x2[4]),
        .I2(ctl[1]),
        .I3(x1[4]),
        .I4(ctl[0]),
        .I5(x0[4]),
        .O(\y_reg[4]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[5] 
       (.CLR(1'b0),
        .D(\y_reg[5]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[5]_i_1 
       (.I0(\y_reg[5]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[5]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[5]_i_4_n_0 ),
        .O(\y_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[5]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[5]),
        .I3(ctl[0]),
        .I4(x8[5]),
        .O(\y_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[5]_i_3 
       (.I0(x7[5]),
        .I1(x6[5]),
        .I2(ctl[1]),
        .I3(x5[5]),
        .I4(ctl[0]),
        .I5(x4[5]),
        .O(\y_reg[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[5]_i_4 
       (.I0(x3[5]),
        .I1(x2[5]),
        .I2(ctl[1]),
        .I3(x1[5]),
        .I4(ctl[0]),
        .I5(x0[5]),
        .O(\y_reg[5]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[6] 
       (.CLR(1'b0),
        .D(\y_reg[6]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[6]_i_1 
       (.I0(\y_reg[6]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[6]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[6]_i_4_n_0 ),
        .O(\y_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[6]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[6]),
        .I3(ctl[0]),
        .I4(x8[6]),
        .O(\y_reg[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[6]_i_3 
       (.I0(x7[6]),
        .I1(x6[6]),
        .I2(ctl[1]),
        .I3(x5[6]),
        .I4(ctl[0]),
        .I5(x4[6]),
        .O(\y_reg[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[6]_i_4 
       (.I0(x3[6]),
        .I1(x2[6]),
        .I2(ctl[1]),
        .I3(x1[6]),
        .I4(ctl[0]),
        .I5(x0[6]),
        .O(\y_reg[6]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[7] 
       (.CLR(1'b0),
        .D(\y_reg[7]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[7]_i_1 
       (.I0(\y_reg[7]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[7]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[7]_i_4_n_0 ),
        .O(\y_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[7]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[7]),
        .I3(ctl[0]),
        .I4(x8[7]),
        .O(\y_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[7]_i_3 
       (.I0(x7[7]),
        .I1(x6[7]),
        .I2(ctl[1]),
        .I3(x5[7]),
        .I4(ctl[0]),
        .I5(x4[7]),
        .O(\y_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[7]_i_4 
       (.I0(x3[7]),
        .I1(x2[7]),
        .I2(ctl[1]),
        .I3(x1[7]),
        .I4(ctl[0]),
        .I5(x0[7]),
        .O(\y_reg[7]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[8] 
       (.CLR(1'b0),
        .D(\y_reg[8]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[8]_i_1 
       (.I0(\y_reg[8]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[8]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[8]_i_4_n_0 ),
        .O(\y_reg[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[8]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[8]),
        .I3(ctl[0]),
        .I4(x8[8]),
        .O(\y_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[8]_i_3 
       (.I0(x7[8]),
        .I1(x6[8]),
        .I2(ctl[1]),
        .I3(x5[8]),
        .I4(ctl[0]),
        .I5(x4[8]),
        .O(\y_reg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[8]_i_4 
       (.I0(x3[8]),
        .I1(x2[8]),
        .I2(ctl[1]),
        .I3(x1[8]),
        .I4(ctl[0]),
        .I5(x0[8]),
        .O(\y_reg[8]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \y_reg[9] 
       (.CLR(1'b0),
        .D(\y_reg[9]_i_1_n_0 ),
        .G(\y_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(y[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \y_reg[9]_i_1 
       (.I0(\y_reg[9]_i_2_n_0 ),
        .I1(ctl[3]),
        .I2(\y_reg[9]_i_3_n_0 ),
        .I3(ctl[2]),
        .I4(\y_reg[9]_i_4_n_0 ),
        .O(\y_reg[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \y_reg[9]_i_2 
       (.I0(ctl[1]),
        .I1(ctl[2]),
        .I2(x9[9]),
        .I3(ctl[0]),
        .I4(x8[9]),
        .O(\y_reg[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[9]_i_3 
       (.I0(x7[9]),
        .I1(x6[9]),
        .I2(ctl[1]),
        .I3(x5[9]),
        .I4(ctl[0]),
        .I5(x4[9]),
        .O(\y_reg[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y_reg[9]_i_4 
       (.I0(x3[9]),
        .I1(x2[9]),
        .I2(ctl[1]),
        .I3(x1[9]),
        .I4(ctl[0]),
        .I5(x0[9]),
        .O(\y_reg[9]_i_4_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
