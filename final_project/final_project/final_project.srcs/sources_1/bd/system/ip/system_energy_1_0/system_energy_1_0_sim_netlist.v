// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue May 25 17:06:41 2021
// Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_energy_1_0/system_energy_1_0_sim_netlist.v
// Design      : system_energy_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_energy_1_0,energy,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "energy,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module system_energy_1_0
   (y_ap_vld,
    x_ap_vld,
    ap_clk,
    ap_rst,
    y,
    x);
  output y_ap_vld;
  input x_ap_vld;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst RST" *) input ap_rst;
  (* x_interface_info = "xilinx.com:signal:data:1.0 y DATA" *) output [15:0]y;
  (* x_interface_info = "xilinx.com:signal:data:1.0 x DATA" *) input [15:0]x;

  wire ap_clk;
  wire ap_rst;
  wire [15:0]x;
  wire x_ap_vld;
  wire [15:0]y;
  wire y_ap_vld;

  system_energy_1_0_energy U0
       (.ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .x(x),
        .x_ap_vld(x_ap_vld),
        .y(y),
        .y_ap_vld(y_ap_vld));
endmodule

(* ORIG_REF_NAME = "energy" *) 
module system_energy_1_0_energy
   (ap_clk,
    ap_rst,
    y,
    y_ap_vld,
    x,
    x_ap_vld);
  input ap_clk;
  input ap_rst;
  output [15:0]y;
  output y_ap_vld;
  input [15:0]x;
  input x_ap_vld;

  wire ap_clk;
  wire ap_rst;
  wire [15:0]x;
  wire x_ap_vld;
  wire [15:0]x_preg;
  wire [15:0]y;

  assign y_ap_vld = x_ap_vld;
  system_energy_1_0_energy_mul_mul_16bkb energy_mul_mul_16bkb_U0
       (.x(x),
        .x_ap_vld(x_ap_vld),
        .x_preg(x_preg),
        .y(y));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[0] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[0]),
        .Q(x_preg[0]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[10] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[10]),
        .Q(x_preg[10]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[11] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[11]),
        .Q(x_preg[11]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[12] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[12]),
        .Q(x_preg[12]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[13] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[13]),
        .Q(x_preg[13]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[14] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[14]),
        .Q(x_preg[14]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[15] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[15]),
        .Q(x_preg[15]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[1] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[1]),
        .Q(x_preg[1]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[2] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[2]),
        .Q(x_preg[2]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[3] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[3]),
        .Q(x_preg[3]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[4] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[4]),
        .Q(x_preg[4]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[5] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[5]),
        .Q(x_preg[5]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[6] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[6]),
        .Q(x_preg[6]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[7] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[7]),
        .Q(x_preg[7]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[8] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[8]),
        .Q(x_preg[8]),
        .R(ap_rst));
  FDRE #(
    .INIT(1'b0)) 
    \x_preg_reg[9] 
       (.C(ap_clk),
        .CE(x_ap_vld),
        .D(x[9]),
        .Q(x_preg[9]),
        .R(ap_rst));
endmodule

(* ORIG_REF_NAME = "energy_mul_mul_16bkb" *) 
module system_energy_1_0_energy_mul_mul_16bkb
   (y,
    x,
    x_preg,
    x_ap_vld);
  output [15:0]y;
  input [15:0]x;
  input [15:0]x_preg;
  input x_ap_vld;

  wire [15:0]x;
  wire x_ap_vld;
  wire [15:0]x_preg;
  wire [15:0]y;

  system_energy_1_0_energy_mul_mul_16bkb_DSP48_0 energy_mul_mul_16bkb_DSP48_0_U
       (.x(x),
        .x_ap_vld(x_ap_vld),
        .x_preg(x_preg),
        .y(y));
endmodule

(* ORIG_REF_NAME = "energy_mul_mul_16bkb_DSP48_0" *) 
module system_energy_1_0_energy_mul_mul_16bkb_DSP48_0
   (y,
    x,
    x_preg,
    x_ap_vld);
  output [15:0]y;
  input [15:0]x;
  input [15:0]x_preg;
  input x_ap_vld;

  (* RTL_KEEP = "true" *) wire [15:0]a_cvt;
  (* RTL_KEEP = "true" *) wire [15:0]b_cvt;
  wire in00_n_74;
  wire in00_n_75;
  wire in00_n_76;
  wire in00_n_77;
  wire in00_n_78;
  wire in00_n_79;
  wire in00_n_80;
  wire in00_n_81;
  wire in00_n_82;
  wire in00_n_83;
  wire in00_n_84;
  wire in00_n_85;
  wire in00_n_86;
  wire in00_n_87;
  wire in00_n_88;
  wire in00_n_89;
  (* RTL_KEEP = "true" *) wire [15:0]p_cvt;
  wire [15:0]x;
  wire x_ap_vld;
  wire [15:0]x_preg;
  wire NLW_in00_CARRYCASCOUT_UNCONNECTED;
  wire NLW_in00_MULTSIGNOUT_UNCONNECTED;
  wire NLW_in00_OVERFLOW_UNCONNECTED;
  wire NLW_in00_PATTERNBDETECT_UNCONNECTED;
  wire NLW_in00_PATTERNDETECT_UNCONNECTED;
  wire NLW_in00_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_in00_ACOUT_UNCONNECTED;
  wire [17:0]NLW_in00_BCOUT_UNCONNECTED;
  wire [3:0]NLW_in00_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_in00_P_UNCONNECTED;
  wire [47:0]NLW_in00_PCOUT_UNCONNECTED;

  assign y[15:0] = p_cvt;
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_1
       (.I0(x[15]),
        .I1(x_preg[15]),
        .I2(x_ap_vld),
        .O(b_cvt[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_10
       (.I0(x[6]),
        .I1(x_preg[6]),
        .I2(x_ap_vld),
        .O(b_cvt[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_11
       (.I0(x[5]),
        .I1(x_preg[5]),
        .I2(x_ap_vld),
        .O(b_cvt[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_12
       (.I0(x[4]),
        .I1(x_preg[4]),
        .I2(x_ap_vld),
        .O(b_cvt[4]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_13
       (.I0(x[3]),
        .I1(x_preg[3]),
        .I2(x_ap_vld),
        .O(b_cvt[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_14
       (.I0(x[2]),
        .I1(x_preg[2]),
        .I2(x_ap_vld),
        .O(b_cvt[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_15
       (.I0(x[1]),
        .I1(x_preg[1]),
        .I2(x_ap_vld),
        .O(b_cvt[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_16
       (.I0(x[0]),
        .I1(x_preg[0]),
        .I2(x_ap_vld),
        .O(b_cvt[0]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_2
       (.I0(x[14]),
        .I1(x_preg[14]),
        .I2(x_ap_vld),
        .O(b_cvt[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_3
       (.I0(x[13]),
        .I1(x_preg[13]),
        .I2(x_ap_vld),
        .O(b_cvt[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_4
       (.I0(x[12]),
        .I1(x_preg[12]),
        .I2(x_ap_vld),
        .O(b_cvt[12]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_5
       (.I0(x[11]),
        .I1(x_preg[11]),
        .I2(x_ap_vld),
        .O(b_cvt[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_6
       (.I0(x[10]),
        .I1(x_preg[10]),
        .I2(x_ap_vld),
        .O(b_cvt[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_7
       (.I0(x[9]),
        .I1(x_preg[9]),
        .I2(x_ap_vld),
        .O(b_cvt[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_8
       (.I0(x[8]),
        .I1(x_preg[8]),
        .I2(x_ap_vld),
        .O(b_cvt[8]));
  LUT3 #(
    .INIT(8'hAC)) 
    a_cvt_inferred_i_9
       (.I0(x[7]),
        .I1(x_preg[7]),
        .I2(x_ap_vld),
        .O(b_cvt[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(b_cvt[15]),
        .O(a_cvt[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(b_cvt[14]),
        .O(a_cvt[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(b_cvt[5]),
        .O(a_cvt[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(b_cvt[4]),
        .O(a_cvt[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(b_cvt[3]),
        .O(a_cvt[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(b_cvt[2]),
        .O(a_cvt[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(b_cvt[1]),
        .O(a_cvt[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(b_cvt[0]),
        .O(a_cvt[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(b_cvt[13]),
        .O(a_cvt[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(b_cvt[12]),
        .O(a_cvt[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(b_cvt[11]),
        .O(a_cvt[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(b_cvt[10]),
        .O(a_cvt[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(b_cvt[9]),
        .O(a_cvt[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(b_cvt[8]),
        .O(a_cvt[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(b_cvt[7]),
        .O(a_cvt[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(b_cvt[6]),
        .O(a_cvt[6]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    in00
       (.A({a_cvt[15],a_cvt[15],a_cvt[15],a_cvt[15],a_cvt[15],a_cvt[15],a_cvt[15],a_cvt[15],a_cvt[15],a_cvt[15],a_cvt[15],a_cvt[15],a_cvt[15],a_cvt[15],a_cvt}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_in00_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({b_cvt[15],b_cvt[15],b_cvt}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_in00_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_in00_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_in00_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_in00_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_in00_OVERFLOW_UNCONNECTED),
        .P({NLW_in00_P_UNCONNECTED[47:32],in00_n_74,in00_n_75,in00_n_76,in00_n_77,in00_n_78,in00_n_79,in00_n_80,in00_n_81,in00_n_82,in00_n_83,in00_n_84,in00_n_85,in00_n_86,in00_n_87,in00_n_88,in00_n_89,p_cvt}),
        .PATTERNBDETECT(NLW_in00_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_in00_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_in00_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_in00_UNDERFLOW_UNCONNECTED));
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
