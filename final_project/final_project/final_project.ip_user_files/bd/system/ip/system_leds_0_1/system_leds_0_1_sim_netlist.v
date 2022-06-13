// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu May 27 16:07:27 2021
// Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_leds_0_1/system_leds_0_1_sim_netlist.v
// Design      : system_leds_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_leds_0_1,leds,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "leds,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module system_leds_0_1
   (ap_clk,
    ap_rst,
    row_V,
    col_V,
    in_V_V_dout,
    in_V_V_empty_n,
    in_V_V_read);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst RST" *) input ap_rst;
  (* x_interface_info = "xilinx.com:signal:data:1.0 row_V DATA" *) output [6:0]row_V;
  (* x_interface_info = "xilinx.com:signal:data:1.0 col_V DATA" *) output [9:0]col_V;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_read:1.0 in_V_V RD_DATA" *) input [6:0]in_V_V_dout;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_read:1.0 in_V_V EMPTY_N" *) input in_V_V_empty_n;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_read:1.0 in_V_V RD_EN" *) output in_V_V_read;

  wire ap_clk;
  wire ap_rst;
  wire [9:0]col_V;
  wire [6:0]in_V_V_dout;
  wire in_V_V_empty_n;
  wire in_V_V_read;
  wire [6:0]row_V;

  system_leds_0_1_leds U0
       (.ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .col_V(col_V),
        .in_V_V_dout(in_V_V_dout),
        .in_V_V_empty_n(in_V_V_empty_n),
        .in_V_V_read(in_V_V_read),
        .row_V(row_V));
endmodule

(* ORIG_REF_NAME = "leds" *) 
module system_leds_0_1_leds
   (ap_clk,
    ap_rst,
    row_V,
    col_V,
    in_V_V_dout,
    in_V_V_empty_n,
    in_V_V_read);
  input ap_clk;
  input ap_rst;
  output [6:0]row_V;
  output [9:0]col_V;
  input [6:0]in_V_V_dout;
  input in_V_V_empty_n;
  output in_V_V_read;

  wire \<const0> ;
  wire \ap_CS_fsm[0]_i_1_n_4 ;
  wire \ap_CS_fsm[1]_i_1_n_4 ;
  wire \ap_CS_fsm[2]_i_1_n_4 ;
  wire \ap_CS_fsm_reg_n_4_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_NS_fsm10_out;
  wire ap_clk;
  wire ap_rst;
  wire [9:0]col_V;
  wire exitcond_fu_172_p2;
  wire [2:0]i_1_reg_130;
  wire \i_1_reg_130[0]_i_1_n_4 ;
  wire \i_1_reg_130[1]_i_1_n_4 ;
  wire \i_1_reg_130[2]_i_1_n_4 ;
  wire [3:0]i_2_fu_160_p2;
  wire [3:0]i_reg_107_reg__0;
  wire [6:0]in_V_V_dout;
  wire in_V_V_empty_n;
  wire in_V_V_read;
  wire [3:0]p_Result_1_reg_200;
  wire \p_s_reg_94[9]_i_1_n_4 ;
  wire \p_s_reg_94[9]_i_2_n_4 ;
  wire \p_s_reg_94[9]_i_3_n_4 ;
  wire [2:0]tmp_reg_195;

  assign row_V[6] = \<const0> ;
  assign row_V[5] = \<const0> ;
  assign row_V[4] = \<const0> ;
  assign row_V[3] = \<const0> ;
  assign row_V[2] = \<const0> ;
  assign row_V[1] = \<const0> ;
  assign row_V[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00007444)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(in_V_V_empty_n),
        .I1(\ap_CS_fsm_reg_n_4_[0] ),
        .I2(ap_CS_fsm_state3),
        .I3(exitcond_fu_172_p2),
        .I4(ap_CS_fsm_state2),
        .I5(ap_rst),
        .O(\ap_CS_fsm[0]_i_1_n_4 ));
  LUT5 #(
    .INIT(32'h0000E0EA)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(in_V_V_empty_n),
        .I2(\ap_CS_fsm_reg_n_4_[0] ),
        .I3(ap_NS_fsm10_out),
        .I4(ap_rst),
        .O(\ap_CS_fsm[1]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'h000000000000AA3F)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_NS_fsm10_out),
        .I1(ap_CS_fsm_state3),
        .I2(exitcond_fu_172_p2),
        .I3(ap_CS_fsm_state2),
        .I4(\ap_CS_fsm_reg_n_4_[0] ),
        .I5(ap_rst),
        .O(\ap_CS_fsm[2]_i_1_n_4 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[0]_i_1_n_4 ),
        .Q(\ap_CS_fsm_reg_n_4_[0] ),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[1]_i_1_n_4 ),
        .Q(ap_CS_fsm_state2),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm[2]_i_1_n_4 ),
        .Q(ap_CS_fsm_state3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00D2)) 
    \i_1_reg_130[0]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(exitcond_fu_172_p2),
        .I2(i_1_reg_130[0]),
        .I3(ap_NS_fsm10_out),
        .O(\i_1_reg_130[0]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000D2F0)) 
    \i_1_reg_130[1]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(exitcond_fu_172_p2),
        .I2(i_1_reg_130[1]),
        .I3(i_1_reg_130[0]),
        .I4(ap_NS_fsm10_out),
        .O(\i_1_reg_130[1]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'h00000000D2F0F0F0)) 
    \i_1_reg_130[2]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(exitcond_fu_172_p2),
        .I2(i_1_reg_130[2]),
        .I3(i_1_reg_130[1]),
        .I4(i_1_reg_130[0]),
        .I5(ap_NS_fsm10_out),
        .O(\i_1_reg_130[2]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \i_1_reg_130[2]_i_2 
       (.I0(i_1_reg_130[0]),
        .I1(tmp_reg_195[0]),
        .I2(tmp_reg_195[2]),
        .I3(i_1_reg_130[2]),
        .I4(tmp_reg_195[1]),
        .I5(i_1_reg_130[1]),
        .O(exitcond_fu_172_p2));
  LUT4 #(
    .INIT(16'h8008)) 
    \i_1_reg_130[2]_i_3 
       (.I0(ap_CS_fsm_state2),
        .I1(\p_s_reg_94[9]_i_3_n_4 ),
        .I2(p_Result_1_reg_200[3]),
        .I3(i_reg_107_reg__0[3]),
        .O(ap_NS_fsm10_out));
  FDRE \i_1_reg_130_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_1_reg_130[0]_i_1_n_4 ),
        .Q(i_1_reg_130[0]),
        .R(1'b0));
  FDRE \i_1_reg_130_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_1_reg_130[1]_i_1_n_4 ),
        .Q(i_1_reg_130[1]),
        .R(1'b0));
  FDRE \i_1_reg_130_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_1_reg_130[2]_i_1_n_4 ),
        .Q(i_1_reg_130[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_reg_107[0]_i_1 
       (.I0(i_reg_107_reg__0[0]),
        .O(i_2_fu_160_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_reg_107[1]_i_1 
       (.I0(i_reg_107_reg__0[0]),
        .I1(i_reg_107_reg__0[1]),
        .O(i_2_fu_160_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i_reg_107[2]_i_1 
       (.I0(i_reg_107_reg__0[0]),
        .I1(i_reg_107_reg__0[1]),
        .I2(i_reg_107_reg__0[2]),
        .O(i_2_fu_160_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i_reg_107[3]_i_1 
       (.I0(i_reg_107_reg__0[1]),
        .I1(i_reg_107_reg__0[0]),
        .I2(i_reg_107_reg__0[2]),
        .I3(i_reg_107_reg__0[3]),
        .O(i_2_fu_160_p2[3]));
  FDRE \i_reg_107_reg[0] 
       (.C(ap_clk),
        .CE(\p_s_reg_94[9]_i_2_n_4 ),
        .D(i_2_fu_160_p2[0]),
        .Q(i_reg_107_reg__0[0]),
        .R(\p_s_reg_94[9]_i_1_n_4 ));
  FDRE \i_reg_107_reg[1] 
       (.C(ap_clk),
        .CE(\p_s_reg_94[9]_i_2_n_4 ),
        .D(i_2_fu_160_p2[1]),
        .Q(i_reg_107_reg__0[1]),
        .R(\p_s_reg_94[9]_i_1_n_4 ));
  FDRE \i_reg_107_reg[2] 
       (.C(ap_clk),
        .CE(\p_s_reg_94[9]_i_2_n_4 ),
        .D(i_2_fu_160_p2[2]),
        .Q(i_reg_107_reg__0[2]),
        .R(\p_s_reg_94[9]_i_1_n_4 ));
  FDRE \i_reg_107_reg[3] 
       (.C(ap_clk),
        .CE(\p_s_reg_94[9]_i_2_n_4 ),
        .D(i_2_fu_160_p2[3]),
        .Q(i_reg_107_reg__0[3]),
        .R(\p_s_reg_94[9]_i_1_n_4 ));
  LUT2 #(
    .INIT(4'h8)) 
    in_V_V_read_INST_0
       (.I0(\ap_CS_fsm_reg_n_4_[0] ),
        .I1(in_V_V_empty_n),
        .O(in_V_V_read));
  FDRE \p_Result_1_reg_200_reg[0] 
       (.C(ap_clk),
        .CE(in_V_V_read),
        .D(in_V_V_dout[3]),
        .Q(p_Result_1_reg_200[0]),
        .R(1'b0));
  FDRE \p_Result_1_reg_200_reg[1] 
       (.C(ap_clk),
        .CE(in_V_V_read),
        .D(in_V_V_dout[4]),
        .Q(p_Result_1_reg_200[1]),
        .R(1'b0));
  FDRE \p_Result_1_reg_200_reg[2] 
       (.C(ap_clk),
        .CE(in_V_V_read),
        .D(in_V_V_dout[5]),
        .Q(p_Result_1_reg_200[2]),
        .R(1'b0));
  FDRE \p_Result_1_reg_200_reg[3] 
       (.C(ap_clk),
        .CE(in_V_V_read),
        .D(in_V_V_dout[6]),
        .Q(p_Result_1_reg_200[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hD55D000000000000)) 
    \p_s_reg_94[9]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\p_s_reg_94[9]_i_3_n_4 ),
        .I2(p_Result_1_reg_200[3]),
        .I3(i_reg_107_reg__0[3]),
        .I4(in_V_V_empty_n),
        .I5(\ap_CS_fsm_reg_n_4_[0] ),
        .O(\p_s_reg_94[9]_i_1_n_4 ));
  LUT4 #(
    .INIT(16'h2AA2)) 
    \p_s_reg_94[9]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(\p_s_reg_94[9]_i_3_n_4 ),
        .I2(p_Result_1_reg_200[3]),
        .I3(i_reg_107_reg__0[3]),
        .O(\p_s_reg_94[9]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \p_s_reg_94[9]_i_3 
       (.I0(i_reg_107_reg__0[0]),
        .I1(p_Result_1_reg_200[0]),
        .I2(p_Result_1_reg_200[2]),
        .I3(i_reg_107_reg__0[2]),
        .I4(p_Result_1_reg_200[1]),
        .I5(i_reg_107_reg__0[1]),
        .O(\p_s_reg_94[9]_i_3_n_4 ));
  FDSE \p_s_reg_94_reg[0] 
       (.C(ap_clk),
        .CE(\p_s_reg_94[9]_i_2_n_4 ),
        .D(1'b0),
        .Q(col_V[0]),
        .S(\p_s_reg_94[9]_i_1_n_4 ));
  FDRE \p_s_reg_94_reg[1] 
       (.C(ap_clk),
        .CE(\p_s_reg_94[9]_i_2_n_4 ),
        .D(col_V[0]),
        .Q(col_V[1]),
        .R(\p_s_reg_94[9]_i_1_n_4 ));
  FDRE \p_s_reg_94_reg[2] 
       (.C(ap_clk),
        .CE(\p_s_reg_94[9]_i_2_n_4 ),
        .D(col_V[1]),
        .Q(col_V[2]),
        .R(\p_s_reg_94[9]_i_1_n_4 ));
  FDRE \p_s_reg_94_reg[3] 
       (.C(ap_clk),
        .CE(\p_s_reg_94[9]_i_2_n_4 ),
        .D(col_V[2]),
        .Q(col_V[3]),
        .R(\p_s_reg_94[9]_i_1_n_4 ));
  FDRE \p_s_reg_94_reg[4] 
       (.C(ap_clk),
        .CE(\p_s_reg_94[9]_i_2_n_4 ),
        .D(col_V[3]),
        .Q(col_V[4]),
        .R(\p_s_reg_94[9]_i_1_n_4 ));
  FDRE \p_s_reg_94_reg[5] 
       (.C(ap_clk),
        .CE(\p_s_reg_94[9]_i_2_n_4 ),
        .D(col_V[4]),
        .Q(col_V[5]),
        .R(\p_s_reg_94[9]_i_1_n_4 ));
  FDRE \p_s_reg_94_reg[6] 
       (.C(ap_clk),
        .CE(\p_s_reg_94[9]_i_2_n_4 ),
        .D(col_V[5]),
        .Q(col_V[6]),
        .R(\p_s_reg_94[9]_i_1_n_4 ));
  FDRE \p_s_reg_94_reg[7] 
       (.C(ap_clk),
        .CE(\p_s_reg_94[9]_i_2_n_4 ),
        .D(col_V[6]),
        .Q(col_V[7]),
        .R(\p_s_reg_94[9]_i_1_n_4 ));
  FDRE \p_s_reg_94_reg[8] 
       (.C(ap_clk),
        .CE(\p_s_reg_94[9]_i_2_n_4 ),
        .D(col_V[7]),
        .Q(col_V[8]),
        .R(\p_s_reg_94[9]_i_1_n_4 ));
  FDRE \p_s_reg_94_reg[9] 
       (.C(ap_clk),
        .CE(\p_s_reg_94[9]_i_2_n_4 ),
        .D(col_V[8]),
        .Q(col_V[9]),
        .R(\p_s_reg_94[9]_i_1_n_4 ));
  FDRE \tmp_reg_195_reg[0] 
       (.C(ap_clk),
        .CE(in_V_V_read),
        .D(in_V_V_dout[0]),
        .Q(tmp_reg_195[0]),
        .R(1'b0));
  FDRE \tmp_reg_195_reg[1] 
       (.C(ap_clk),
        .CE(in_V_V_read),
        .D(in_V_V_dout[1]),
        .Q(tmp_reg_195[1]),
        .R(1'b0));
  FDRE \tmp_reg_195_reg[2] 
       (.C(ap_clk),
        .CE(in_V_V_read),
        .D(in_V_V_dout[2]),
        .Q(tmp_reg_195[2]),
        .R(1'b0));
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
