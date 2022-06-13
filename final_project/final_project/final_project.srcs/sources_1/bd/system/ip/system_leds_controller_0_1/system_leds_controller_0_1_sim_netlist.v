// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu May 27 16:07:33 2021
// Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top system_leds_controller_0_1 -prefix
//               system_leds_controller_0_1_ system_leds_controller_0_0_sim_netlist.v
// Design      : system_leds_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_leds_controller_0_1_leds_controller
   (ap_clk,
    ap_rst,
    out_V_V_din,
    out_V_V_full_n,
    out_V_V_write,
    x,
    col_V);
  input ap_clk;
  input ap_rst;
  output [6:0]out_V_V_din;
  input out_V_V_full_n;
  output out_V_V_write;
  input [15:0]x;
  input [3:0]col_V;

  wire \<const0> ;
  wire [20:0]A__0;
  wire [2:0]B__0;
  wire [2:0]RESIZE;
  wire \ap_CS_fsm_reg_n_0_[1] ;
  wire \ap_CS_fsm_reg_n_0_[2] ;
  wire \ap_CS_fsm_reg_n_0_[3] ;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire [6:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_rst;
  wire [16:0]buff1_reg;
  wire leds_controller_mbkb_U0_n_0;
  wire leds_controller_mbkb_U0_n_1;
  wire leds_controller_mbkb_U0_n_10;
  wire leds_controller_mbkb_U0_n_11;
  wire leds_controller_mbkb_U0_n_12;
  wire leds_controller_mbkb_U0_n_13;
  wire leds_controller_mbkb_U0_n_14;
  wire leds_controller_mbkb_U0_n_15;
  wire leds_controller_mbkb_U0_n_16;
  wire leds_controller_mbkb_U0_n_17;
  wire leds_controller_mbkb_U0_n_18;
  wire leds_controller_mbkb_U0_n_19;
  wire leds_controller_mbkb_U0_n_2;
  wire leds_controller_mbkb_U0_n_20;
  wire leds_controller_mbkb_U0_n_21;
  wire leds_controller_mbkb_U0_n_22;
  wire leds_controller_mbkb_U0_n_23;
  wire leds_controller_mbkb_U0_n_24;
  wire leds_controller_mbkb_U0_n_3;
  wire leds_controller_mbkb_U0_n_4;
  wire leds_controller_mbkb_U0_n_5;
  wire leds_controller_mbkb_U0_n_6;
  wire leds_controller_mbkb_U0_n_63;
  wire leds_controller_mbkb_U0_n_64;
  wire leds_controller_mbkb_U0_n_7;
  wire leds_controller_mbkb_U0_n_8;
  wire leds_controller_mbkb_U0_n_9;
  wire [2:0]neg_ti_reg_232;
  wire \neg_ti_reg_232[0]_i_1_n_0 ;
  wire \neg_ti_reg_232[1]_i_10_n_0 ;
  wire \neg_ti_reg_232[1]_i_11_n_0 ;
  wire \neg_ti_reg_232[1]_i_12_n_0 ;
  wire \neg_ti_reg_232[1]_i_14_n_0 ;
  wire \neg_ti_reg_232[1]_i_15_n_0 ;
  wire \neg_ti_reg_232[1]_i_16_n_0 ;
  wire \neg_ti_reg_232[1]_i_17_n_0 ;
  wire \neg_ti_reg_232[1]_i_19_n_0 ;
  wire \neg_ti_reg_232[1]_i_1_n_0 ;
  wire \neg_ti_reg_232[1]_i_20_n_0 ;
  wire \neg_ti_reg_232[1]_i_21_n_0 ;
  wire \neg_ti_reg_232[1]_i_22_n_0 ;
  wire \neg_ti_reg_232[1]_i_24_n_0 ;
  wire \neg_ti_reg_232[1]_i_25_n_0 ;
  wire \neg_ti_reg_232[1]_i_26_n_0 ;
  wire \neg_ti_reg_232[1]_i_27_n_0 ;
  wire \neg_ti_reg_232[1]_i_29_n_0 ;
  wire \neg_ti_reg_232[1]_i_30_n_0 ;
  wire \neg_ti_reg_232[1]_i_31_n_0 ;
  wire \neg_ti_reg_232[1]_i_32_n_0 ;
  wire \neg_ti_reg_232[1]_i_34_n_0 ;
  wire \neg_ti_reg_232[1]_i_35_n_0 ;
  wire \neg_ti_reg_232[1]_i_36_n_0 ;
  wire \neg_ti_reg_232[1]_i_37_n_0 ;
  wire \neg_ti_reg_232[1]_i_39_n_0 ;
  wire \neg_ti_reg_232[1]_i_40_n_0 ;
  wire \neg_ti_reg_232[1]_i_41_n_0 ;
  wire \neg_ti_reg_232[1]_i_42_n_0 ;
  wire \neg_ti_reg_232[1]_i_43_n_0 ;
  wire \neg_ti_reg_232[1]_i_44_n_0 ;
  wire \neg_ti_reg_232[1]_i_45_n_0 ;
  wire \neg_ti_reg_232[1]_i_46_n_0 ;
  wire \neg_ti_reg_232[1]_i_4_n_0 ;
  wire \neg_ti_reg_232[1]_i_5_n_0 ;
  wire \neg_ti_reg_232[1]_i_6_n_0 ;
  wire \neg_ti_reg_232[1]_i_7_n_0 ;
  wire \neg_ti_reg_232[1]_i_9_n_0 ;
  wire \neg_ti_reg_232[2]_i_1_n_0 ;
  wire \neg_ti_reg_232[2]_i_2_n_0 ;
  wire \neg_ti_reg_232[2]_i_4_n_0 ;
  wire \neg_ti_reg_232[2]_i_5_n_0 ;
  wire \neg_ti_reg_232_reg[1]_i_13_n_0 ;
  wire \neg_ti_reg_232_reg[1]_i_13_n_1 ;
  wire \neg_ti_reg_232_reg[1]_i_13_n_2 ;
  wire \neg_ti_reg_232_reg[1]_i_13_n_3 ;
  wire \neg_ti_reg_232_reg[1]_i_18_n_0 ;
  wire \neg_ti_reg_232_reg[1]_i_18_n_1 ;
  wire \neg_ti_reg_232_reg[1]_i_18_n_2 ;
  wire \neg_ti_reg_232_reg[1]_i_18_n_3 ;
  wire \neg_ti_reg_232_reg[1]_i_23_n_0 ;
  wire \neg_ti_reg_232_reg[1]_i_23_n_1 ;
  wire \neg_ti_reg_232_reg[1]_i_23_n_2 ;
  wire \neg_ti_reg_232_reg[1]_i_23_n_3 ;
  wire \neg_ti_reg_232_reg[1]_i_28_n_0 ;
  wire \neg_ti_reg_232_reg[1]_i_28_n_1 ;
  wire \neg_ti_reg_232_reg[1]_i_28_n_2 ;
  wire \neg_ti_reg_232_reg[1]_i_28_n_3 ;
  wire \neg_ti_reg_232_reg[1]_i_2_n_0 ;
  wire \neg_ti_reg_232_reg[1]_i_2_n_1 ;
  wire \neg_ti_reg_232_reg[1]_i_2_n_2 ;
  wire \neg_ti_reg_232_reg[1]_i_2_n_3 ;
  wire \neg_ti_reg_232_reg[1]_i_33_n_0 ;
  wire \neg_ti_reg_232_reg[1]_i_33_n_1 ;
  wire \neg_ti_reg_232_reg[1]_i_33_n_2 ;
  wire \neg_ti_reg_232_reg[1]_i_33_n_3 ;
  wire \neg_ti_reg_232_reg[1]_i_38_n_0 ;
  wire \neg_ti_reg_232_reg[1]_i_38_n_1 ;
  wire \neg_ti_reg_232_reg[1]_i_38_n_2 ;
  wire \neg_ti_reg_232_reg[1]_i_38_n_3 ;
  wire \neg_ti_reg_232_reg[1]_i_3_n_0 ;
  wire \neg_ti_reg_232_reg[1]_i_3_n_1 ;
  wire \neg_ti_reg_232_reg[1]_i_3_n_2 ;
  wire \neg_ti_reg_232_reg[1]_i_3_n_3 ;
  wire \neg_ti_reg_232_reg[1]_i_8_n_0 ;
  wire \neg_ti_reg_232_reg[1]_i_8_n_1 ;
  wire \neg_ti_reg_232_reg[1]_i_8_n_2 ;
  wire \neg_ti_reg_232_reg[1]_i_8_n_3 ;
  wire \neg_ti_reg_232_reg[2]_i_3_n_3 ;
  wire [1:0]\^out_V_V_din ;
  wire out_V_V_full_n;
  wire out_V_V_write;
  wire p_0_in;
  wire [18:0]tmp_1_tr_reg_201;
  wire \tmp_1_tr_reg_201[12]_i_2_n_0 ;
  wire \tmp_1_tr_reg_201[12]_i_3_n_0 ;
  wire \tmp_1_tr_reg_201[12]_i_4_n_0 ;
  wire \tmp_1_tr_reg_201[12]_i_5_n_0 ;
  wire \tmp_1_tr_reg_201[16]_i_2_n_0 ;
  wire \tmp_1_tr_reg_201[16]_i_3_n_0 ;
  wire \tmp_1_tr_reg_201[16]_i_4_n_0 ;
  wire \tmp_1_tr_reg_201[16]_i_5_n_0 ;
  wire \tmp_1_tr_reg_201[4]_i_2_n_0 ;
  wire \tmp_1_tr_reg_201[4]_i_3_n_0 ;
  wire \tmp_1_tr_reg_201[4]_i_4_n_0 ;
  wire \tmp_1_tr_reg_201[4]_i_5_n_0 ;
  wire \tmp_1_tr_reg_201[4]_i_6_n_0 ;
  wire \tmp_1_tr_reg_201[8]_i_2_n_0 ;
  wire \tmp_1_tr_reg_201[8]_i_3_n_0 ;
  wire \tmp_1_tr_reg_201[8]_i_4_n_0 ;
  wire \tmp_1_tr_reg_201[8]_i_5_n_0 ;
  wire \tmp_1_tr_reg_201_reg[12]_i_1_n_0 ;
  wire \tmp_1_tr_reg_201_reg[12]_i_1_n_1 ;
  wire \tmp_1_tr_reg_201_reg[12]_i_1_n_2 ;
  wire \tmp_1_tr_reg_201_reg[12]_i_1_n_3 ;
  wire \tmp_1_tr_reg_201_reg[12]_i_1_n_4 ;
  wire \tmp_1_tr_reg_201_reg[12]_i_1_n_5 ;
  wire \tmp_1_tr_reg_201_reg[12]_i_1_n_6 ;
  wire \tmp_1_tr_reg_201_reg[12]_i_1_n_7 ;
  wire \tmp_1_tr_reg_201_reg[16]_i_1_n_0 ;
  wire \tmp_1_tr_reg_201_reg[16]_i_1_n_1 ;
  wire \tmp_1_tr_reg_201_reg[16]_i_1_n_2 ;
  wire \tmp_1_tr_reg_201_reg[16]_i_1_n_3 ;
  wire \tmp_1_tr_reg_201_reg[16]_i_1_n_4 ;
  wire \tmp_1_tr_reg_201_reg[16]_i_1_n_5 ;
  wire \tmp_1_tr_reg_201_reg[16]_i_1_n_6 ;
  wire \tmp_1_tr_reg_201_reg[16]_i_1_n_7 ;
  wire \tmp_1_tr_reg_201_reg[4]_i_1_n_0 ;
  wire \tmp_1_tr_reg_201_reg[4]_i_1_n_1 ;
  wire \tmp_1_tr_reg_201_reg[4]_i_1_n_2 ;
  wire \tmp_1_tr_reg_201_reg[4]_i_1_n_3 ;
  wire \tmp_1_tr_reg_201_reg[4]_i_1_n_4 ;
  wire \tmp_1_tr_reg_201_reg[4]_i_1_n_5 ;
  wire \tmp_1_tr_reg_201_reg[4]_i_1_n_6 ;
  wire \tmp_1_tr_reg_201_reg[4]_i_1_n_7 ;
  wire \tmp_1_tr_reg_201_reg[8]_i_1_n_0 ;
  wire \tmp_1_tr_reg_201_reg[8]_i_1_n_1 ;
  wire \tmp_1_tr_reg_201_reg[8]_i_1_n_2 ;
  wire \tmp_1_tr_reg_201_reg[8]_i_1_n_3 ;
  wire \tmp_1_tr_reg_201_reg[8]_i_1_n_4 ;
  wire \tmp_1_tr_reg_201_reg[8]_i_1_n_5 ;
  wire \tmp_1_tr_reg_201_reg[8]_i_1_n_6 ;
  wire \tmp_1_tr_reg_201_reg[8]_i_1_n_7 ;
  wire [37:17]tmp_3_fu_122_p1;
  wire [37:0]tmp_3_reg_217;
  wire tmp_3_reg_2170;
  wire [2:0]tmp_5_reg_227;
  wire \tmp_5_reg_227[0]_i_1_n_0 ;
  wire \tmp_5_reg_227[1]_i_1_n_0 ;
  wire \tmp_5_reg_227[2]_i_1_n_0 ;
  wire tmp_7_reg_206;
  wire \tmp_7_reg_206[0]_i_2_n_0 ;
  wire \tmp_7_reg_206[0]_i_3_n_0 ;
  wire \tmp_7_reg_206_reg[0]_i_1_n_2 ;
  wire \tmp_7_reg_206_reg[0]_i_1_n_3 ;
  wire \tmp_7_reg_206_reg[0]_i_1_n_6 ;
  wire \tmp_7_reg_206_reg[0]_i_1_n_7 ;
  wire [2:0]tmp_8_fu_141_p4;
  wire [15:0]x;
  wire [3:0]\NLW_neg_ti_reg_232_reg[1]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_neg_ti_reg_232_reg[1]_i_18_O_UNCONNECTED ;
  wire [2:0]\NLW_neg_ti_reg_232_reg[1]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_neg_ti_reg_232_reg[1]_i_23_O_UNCONNECTED ;
  wire [3:0]\NLW_neg_ti_reg_232_reg[1]_i_28_O_UNCONNECTED ;
  wire [3:0]\NLW_neg_ti_reg_232_reg[1]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_neg_ti_reg_232_reg[1]_i_33_O_UNCONNECTED ;
  wire [3:0]\NLW_neg_ti_reg_232_reg[1]_i_38_O_UNCONNECTED ;
  wire [3:0]\NLW_neg_ti_reg_232_reg[1]_i_8_O_UNCONNECTED ;
  wire [3:1]\NLW_neg_ti_reg_232_reg[2]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_neg_ti_reg_232_reg[2]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_tmp_7_reg_206_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_tmp_7_reg_206_reg[0]_i_1_O_UNCONNECTED ;

  assign out_V_V_din[6] = \<const0> ;
  assign out_V_V_din[5] = \<const0> ;
  assign out_V_V_din[4] = \<const0> ;
  assign out_V_V_din[3] = \<const0> ;
  assign out_V_V_din[2] = \<const0> ;
  assign out_V_V_din[1:0] = \^out_V_V_din [1:0];
  FDRE \A[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_20),
        .Q(A__0[0]),
        .R(1'b0));
  FDRE \A[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_10),
        .Q(A__0[10]),
        .R(1'b0));
  FDRE \A[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_9),
        .Q(A__0[11]),
        .R(1'b0));
  FDRE \A[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_8),
        .Q(A__0[12]),
        .R(1'b0));
  FDRE \A[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_7),
        .Q(A__0[13]),
        .R(1'b0));
  FDRE \A[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_6),
        .Q(A__0[14]),
        .R(1'b0));
  FDRE \A[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_5),
        .Q(A__0[15]),
        .R(1'b0));
  FDRE \A[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_4),
        .Q(A__0[16]),
        .R(1'b0));
  FDRE \A[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_3),
        .Q(A__0[17]),
        .R(1'b0));
  FDRE \A[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_2),
        .Q(A__0[18]),
        .R(1'b0));
  FDRE \A[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_1),
        .Q(A__0[19]),
        .R(1'b0));
  FDRE \A[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_19),
        .Q(A__0[1]),
        .R(1'b0));
  FDRE \A[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_0),
        .Q(A__0[20]),
        .R(1'b0));
  FDRE \A[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_18),
        .Q(A__0[2]),
        .R(1'b0));
  FDRE \A[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_17),
        .Q(A__0[3]),
        .R(1'b0));
  FDRE \A[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_16),
        .Q(A__0[4]),
        .R(1'b0));
  FDRE \A[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_15),
        .Q(A__0[5]),
        .R(1'b0));
  FDRE \A[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_14),
        .Q(A__0[6]),
        .R(1'b0));
  FDRE \A[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_13),
        .Q(A__0[7]),
        .R(1'b0));
  FDRE \A[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_12),
        .Q(A__0[8]),
        .R(1'b0));
  FDRE \A[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_11),
        .Q(A__0[9]),
        .R(1'b0));
  FDRE \B[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_23),
        .Q(B__0[0]),
        .R(1'b0));
  FDRE \B[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_22),
        .Q(B__0[1]),
        .R(1'b0));
  FDRE \B[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_21),
        .Q(B__0[2]),
        .R(1'b0));
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(out_V_V_full_n),
        .I1(ap_CS_fsm_state7),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(ap_CS_fsm_state6),
        .I2(\ap_CS_fsm_reg_n_0_[2] ),
        .I3(\ap_CS_fsm_reg_n_0_[1] ),
        .I4(ap_CS_fsm_state5),
        .I5(\ap_CS_fsm_reg_n_0_[3] ),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(ap_CS_fsm_state7),
        .I2(out_V_V_full_n),
        .O(ap_NS_fsm[6]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(\ap_CS_fsm_reg_n_0_[1] ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[1] ),
        .Q(\ap_CS_fsm_reg_n_0_[2] ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[2] ),
        .Q(\ap_CS_fsm_reg_n_0_[3] ),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\ap_CS_fsm_reg_n_0_[3] ),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state5),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst));
  system_leds_controller_0_1_leds_controller_mbkb leds_controller_mbkb_U0
       (.\A[20] (A__0),
        .\B[2] ({leds_controller_mbkb_U0_n_21,leds_controller_mbkb_U0_n_22,leds_controller_mbkb_U0_n_23}),
        .\B[2]_0 (B__0),
        .D({leds_controller_mbkb_U0_n_0,leds_controller_mbkb_U0_n_1,leds_controller_mbkb_U0_n_2,leds_controller_mbkb_U0_n_3,leds_controller_mbkb_U0_n_4,leds_controller_mbkb_U0_n_5,leds_controller_mbkb_U0_n_6,leds_controller_mbkb_U0_n_7,leds_controller_mbkb_U0_n_8,leds_controller_mbkb_U0_n_9,leds_controller_mbkb_U0_n_10,leds_controller_mbkb_U0_n_11,leds_controller_mbkb_U0_n_12,leds_controller_mbkb_U0_n_13,leds_controller_mbkb_U0_n_14,leds_controller_mbkb_U0_n_15,leds_controller_mbkb_U0_n_16,leds_controller_mbkb_U0_n_17,leds_controller_mbkb_U0_n_18,leds_controller_mbkb_U0_n_19,leds_controller_mbkb_U0_n_20}),
        .Q(tmp_1_tr_reg_201),
        .RESIZE(RESIZE),
        .\ap_CS_fsm_reg[4] (ap_CS_fsm_state5),
        .ap_clk(ap_clk),
        .\tmp_3_reg_217_reg[37] ({tmp_3_fu_122_p1,buff1_reg}),
        .tmp_7_reg_206(tmp_7_reg_206),
        .\tmp_9_reg_222_reg[0] (leds_controller_mbkb_U0_n_64),
        .\tmp_9_reg_222_reg[1] (leds_controller_mbkb_U0_n_63),
        .\tmp_9_reg_222_reg[2] (leds_controller_mbkb_U0_n_24));
  LUT4 #(
    .INIT(16'hBF80)) 
    \neg_ti_reg_232[0]_i_1 
       (.I0(tmp_8_fu_141_p4[0]),
        .I1(tmp_7_reg_206),
        .I2(ap_CS_fsm_state6),
        .I3(neg_ti_reg_232[0]),
        .O(\neg_ti_reg_232[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7BFF4800)) 
    \neg_ti_reg_232[1]_i_1 
       (.I0(tmp_8_fu_141_p4[0]),
        .I1(tmp_7_reg_206),
        .I2(tmp_8_fu_141_p4[1]),
        .I3(ap_CS_fsm_state6),
        .I4(neg_ti_reg_232[1]),
        .O(\neg_ti_reg_232[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_10 
       (.I0(tmp_3_reg_217[30]),
        .O(\neg_ti_reg_232[1]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_11 
       (.I0(tmp_3_reg_217[29]),
        .O(\neg_ti_reg_232[1]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_12 
       (.I0(tmp_3_reg_217[28]),
        .O(\neg_ti_reg_232[1]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_14 
       (.I0(tmp_3_reg_217[27]),
        .O(\neg_ti_reg_232[1]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_15 
       (.I0(tmp_3_reg_217[26]),
        .O(\neg_ti_reg_232[1]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_16 
       (.I0(tmp_3_reg_217[25]),
        .O(\neg_ti_reg_232[1]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_17 
       (.I0(tmp_3_reg_217[24]),
        .O(\neg_ti_reg_232[1]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_19 
       (.I0(tmp_3_reg_217[23]),
        .O(\neg_ti_reg_232[1]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_20 
       (.I0(tmp_3_reg_217[22]),
        .O(\neg_ti_reg_232[1]_i_20_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_21 
       (.I0(tmp_3_reg_217[21]),
        .O(\neg_ti_reg_232[1]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_22 
       (.I0(tmp_3_reg_217[20]),
        .O(\neg_ti_reg_232[1]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_24 
       (.I0(tmp_3_reg_217[19]),
        .O(\neg_ti_reg_232[1]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_25 
       (.I0(tmp_3_reg_217[18]),
        .O(\neg_ti_reg_232[1]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_26 
       (.I0(tmp_3_reg_217[17]),
        .O(\neg_ti_reg_232[1]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_27 
       (.I0(tmp_3_reg_217[16]),
        .O(\neg_ti_reg_232[1]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_29 
       (.I0(tmp_3_reg_217[15]),
        .O(\neg_ti_reg_232[1]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_30 
       (.I0(tmp_3_reg_217[14]),
        .O(\neg_ti_reg_232[1]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_31 
       (.I0(tmp_3_reg_217[13]),
        .O(\neg_ti_reg_232[1]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_32 
       (.I0(tmp_3_reg_217[12]),
        .O(\neg_ti_reg_232[1]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_34 
       (.I0(tmp_3_reg_217[11]),
        .O(\neg_ti_reg_232[1]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_35 
       (.I0(tmp_3_reg_217[10]),
        .O(\neg_ti_reg_232[1]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_36 
       (.I0(tmp_3_reg_217[9]),
        .O(\neg_ti_reg_232[1]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_37 
       (.I0(tmp_3_reg_217[8]),
        .O(\neg_ti_reg_232[1]_i_37_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_39 
       (.I0(tmp_3_reg_217[7]),
        .O(\neg_ti_reg_232[1]_i_39_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_4 
       (.I0(tmp_3_reg_217[35]),
        .O(\neg_ti_reg_232[1]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_40 
       (.I0(tmp_3_reg_217[6]),
        .O(\neg_ti_reg_232[1]_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_41 
       (.I0(tmp_3_reg_217[5]),
        .O(\neg_ti_reg_232[1]_i_41_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_42 
       (.I0(tmp_3_reg_217[4]),
        .O(\neg_ti_reg_232[1]_i_42_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_43 
       (.I0(tmp_3_reg_217[3]),
        .O(\neg_ti_reg_232[1]_i_43_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_44 
       (.I0(tmp_3_reg_217[2]),
        .O(\neg_ti_reg_232[1]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_45 
       (.I0(tmp_3_reg_217[1]),
        .O(\neg_ti_reg_232[1]_i_45_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \neg_ti_reg_232[1]_i_46 
       (.I0(tmp_3_reg_217[0]),
        .O(\neg_ti_reg_232[1]_i_46_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_5 
       (.I0(tmp_3_reg_217[34]),
        .O(\neg_ti_reg_232[1]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_6 
       (.I0(tmp_3_reg_217[33]),
        .O(\neg_ti_reg_232[1]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_7 
       (.I0(tmp_3_reg_217[32]),
        .O(\neg_ti_reg_232[1]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[1]_i_9 
       (.I0(tmp_3_reg_217[31]),
        .O(\neg_ti_reg_232[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h9FFF9000)) 
    \neg_ti_reg_232[2]_i_1 
       (.I0(\neg_ti_reg_232[2]_i_2_n_0 ),
        .I1(tmp_8_fu_141_p4[2]),
        .I2(tmp_7_reg_206),
        .I3(ap_CS_fsm_state6),
        .I4(neg_ti_reg_232[2]),
        .O(\neg_ti_reg_232[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00053305)) 
    \neg_ti_reg_232[2]_i_2 
       (.I0(RESIZE[0]),
        .I1(tmp_8_fu_141_p4[0]),
        .I2(RESIZE[1]),
        .I3(tmp_7_reg_206),
        .I4(tmp_8_fu_141_p4[1]),
        .O(\neg_ti_reg_232[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[2]_i_4 
       (.I0(tmp_3_reg_217[37]),
        .O(\neg_ti_reg_232[2]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \neg_ti_reg_232[2]_i_5 
       (.I0(tmp_3_reg_217[36]),
        .O(\neg_ti_reg_232[2]_i_5_n_0 ));
  FDRE \neg_ti_reg_232_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\neg_ti_reg_232[0]_i_1_n_0 ),
        .Q(neg_ti_reg_232[0]),
        .R(1'b0));
  FDRE \neg_ti_reg_232_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\neg_ti_reg_232[1]_i_1_n_0 ),
        .Q(neg_ti_reg_232[1]),
        .R(1'b0));
  CARRY4 \neg_ti_reg_232_reg[1]_i_13 
       (.CI(\neg_ti_reg_232_reg[1]_i_18_n_0 ),
        .CO({\neg_ti_reg_232_reg[1]_i_13_n_0 ,\neg_ti_reg_232_reg[1]_i_13_n_1 ,\neg_ti_reg_232_reg[1]_i_13_n_2 ,\neg_ti_reg_232_reg[1]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_neg_ti_reg_232_reg[1]_i_13_O_UNCONNECTED [3:0]),
        .S({\neg_ti_reg_232[1]_i_19_n_0 ,\neg_ti_reg_232[1]_i_20_n_0 ,\neg_ti_reg_232[1]_i_21_n_0 ,\neg_ti_reg_232[1]_i_22_n_0 }));
  CARRY4 \neg_ti_reg_232_reg[1]_i_18 
       (.CI(\neg_ti_reg_232_reg[1]_i_23_n_0 ),
        .CO({\neg_ti_reg_232_reg[1]_i_18_n_0 ,\neg_ti_reg_232_reg[1]_i_18_n_1 ,\neg_ti_reg_232_reg[1]_i_18_n_2 ,\neg_ti_reg_232_reg[1]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_neg_ti_reg_232_reg[1]_i_18_O_UNCONNECTED [3:0]),
        .S({\neg_ti_reg_232[1]_i_24_n_0 ,\neg_ti_reg_232[1]_i_25_n_0 ,\neg_ti_reg_232[1]_i_26_n_0 ,\neg_ti_reg_232[1]_i_27_n_0 }));
  CARRY4 \neg_ti_reg_232_reg[1]_i_2 
       (.CI(\neg_ti_reg_232_reg[1]_i_3_n_0 ),
        .CO({\neg_ti_reg_232_reg[1]_i_2_n_0 ,\neg_ti_reg_232_reg[1]_i_2_n_1 ,\neg_ti_reg_232_reg[1]_i_2_n_2 ,\neg_ti_reg_232_reg[1]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({tmp_8_fu_141_p4[0],\NLW_neg_ti_reg_232_reg[1]_i_2_O_UNCONNECTED [2:0]}),
        .S({\neg_ti_reg_232[1]_i_4_n_0 ,\neg_ti_reg_232[1]_i_5_n_0 ,\neg_ti_reg_232[1]_i_6_n_0 ,\neg_ti_reg_232[1]_i_7_n_0 }));
  CARRY4 \neg_ti_reg_232_reg[1]_i_23 
       (.CI(\neg_ti_reg_232_reg[1]_i_28_n_0 ),
        .CO({\neg_ti_reg_232_reg[1]_i_23_n_0 ,\neg_ti_reg_232_reg[1]_i_23_n_1 ,\neg_ti_reg_232_reg[1]_i_23_n_2 ,\neg_ti_reg_232_reg[1]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_neg_ti_reg_232_reg[1]_i_23_O_UNCONNECTED [3:0]),
        .S({\neg_ti_reg_232[1]_i_29_n_0 ,\neg_ti_reg_232[1]_i_30_n_0 ,\neg_ti_reg_232[1]_i_31_n_0 ,\neg_ti_reg_232[1]_i_32_n_0 }));
  CARRY4 \neg_ti_reg_232_reg[1]_i_28 
       (.CI(\neg_ti_reg_232_reg[1]_i_33_n_0 ),
        .CO({\neg_ti_reg_232_reg[1]_i_28_n_0 ,\neg_ti_reg_232_reg[1]_i_28_n_1 ,\neg_ti_reg_232_reg[1]_i_28_n_2 ,\neg_ti_reg_232_reg[1]_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_neg_ti_reg_232_reg[1]_i_28_O_UNCONNECTED [3:0]),
        .S({\neg_ti_reg_232[1]_i_34_n_0 ,\neg_ti_reg_232[1]_i_35_n_0 ,\neg_ti_reg_232[1]_i_36_n_0 ,\neg_ti_reg_232[1]_i_37_n_0 }));
  CARRY4 \neg_ti_reg_232_reg[1]_i_3 
       (.CI(\neg_ti_reg_232_reg[1]_i_8_n_0 ),
        .CO({\neg_ti_reg_232_reg[1]_i_3_n_0 ,\neg_ti_reg_232_reg[1]_i_3_n_1 ,\neg_ti_reg_232_reg[1]_i_3_n_2 ,\neg_ti_reg_232_reg[1]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_neg_ti_reg_232_reg[1]_i_3_O_UNCONNECTED [3:0]),
        .S({\neg_ti_reg_232[1]_i_9_n_0 ,\neg_ti_reg_232[1]_i_10_n_0 ,\neg_ti_reg_232[1]_i_11_n_0 ,\neg_ti_reg_232[1]_i_12_n_0 }));
  CARRY4 \neg_ti_reg_232_reg[1]_i_33 
       (.CI(\neg_ti_reg_232_reg[1]_i_38_n_0 ),
        .CO({\neg_ti_reg_232_reg[1]_i_33_n_0 ,\neg_ti_reg_232_reg[1]_i_33_n_1 ,\neg_ti_reg_232_reg[1]_i_33_n_2 ,\neg_ti_reg_232_reg[1]_i_33_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_neg_ti_reg_232_reg[1]_i_33_O_UNCONNECTED [3:0]),
        .S({\neg_ti_reg_232[1]_i_39_n_0 ,\neg_ti_reg_232[1]_i_40_n_0 ,\neg_ti_reg_232[1]_i_41_n_0 ,\neg_ti_reg_232[1]_i_42_n_0 }));
  CARRY4 \neg_ti_reg_232_reg[1]_i_38 
       (.CI(1'b0),
        .CO({\neg_ti_reg_232_reg[1]_i_38_n_0 ,\neg_ti_reg_232_reg[1]_i_38_n_1 ,\neg_ti_reg_232_reg[1]_i_38_n_2 ,\neg_ti_reg_232_reg[1]_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O(\NLW_neg_ti_reg_232_reg[1]_i_38_O_UNCONNECTED [3:0]),
        .S({\neg_ti_reg_232[1]_i_43_n_0 ,\neg_ti_reg_232[1]_i_44_n_0 ,\neg_ti_reg_232[1]_i_45_n_0 ,\neg_ti_reg_232[1]_i_46_n_0 }));
  CARRY4 \neg_ti_reg_232_reg[1]_i_8 
       (.CI(\neg_ti_reg_232_reg[1]_i_13_n_0 ),
        .CO({\neg_ti_reg_232_reg[1]_i_8_n_0 ,\neg_ti_reg_232_reg[1]_i_8_n_1 ,\neg_ti_reg_232_reg[1]_i_8_n_2 ,\neg_ti_reg_232_reg[1]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_neg_ti_reg_232_reg[1]_i_8_O_UNCONNECTED [3:0]),
        .S({\neg_ti_reg_232[1]_i_14_n_0 ,\neg_ti_reg_232[1]_i_15_n_0 ,\neg_ti_reg_232[1]_i_16_n_0 ,\neg_ti_reg_232[1]_i_17_n_0 }));
  FDRE \neg_ti_reg_232_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\neg_ti_reg_232[2]_i_1_n_0 ),
        .Q(neg_ti_reg_232[2]),
        .R(1'b0));
  CARRY4 \neg_ti_reg_232_reg[2]_i_3 
       (.CI(\neg_ti_reg_232_reg[1]_i_2_n_0 ),
        .CO({\NLW_neg_ti_reg_232_reg[2]_i_3_CO_UNCONNECTED [3:1],\neg_ti_reg_232_reg[2]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_neg_ti_reg_232_reg[2]_i_3_O_UNCONNECTED [3:2],tmp_8_fu_141_p4[2:1]}),
        .S({1'b0,1'b0,\neg_ti_reg_232[2]_i_4_n_0 ,\neg_ti_reg_232[2]_i_5_n_0 }));
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \out_V_V_din[0]_INST_0 
       (.I0(tmp_5_reg_227[0]),
        .I1(neg_ti_reg_232[0]),
        .I2(tmp_5_reg_227[2]),
        .I3(tmp_7_reg_206),
        .I4(neg_ti_reg_232[2]),
        .O(\^out_V_V_din [0]));
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \out_V_V_din[1]_INST_0 
       (.I0(tmp_5_reg_227[1]),
        .I1(neg_ti_reg_232[1]),
        .I2(tmp_5_reg_227[2]),
        .I3(tmp_7_reg_206),
        .I4(neg_ti_reg_232[2]),
        .O(\^out_V_V_din [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    out_V_V_write_INST_0
       (.I0(ap_CS_fsm_state7),
        .I1(out_V_V_full_n),
        .O(out_V_V_write));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_1_tr_reg_201[12]_i_2 
       (.I0(x[9]),
        .I1(x[12]),
        .O(\tmp_1_tr_reg_201[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_1_tr_reg_201[12]_i_3 
       (.I0(x[8]),
        .I1(x[11]),
        .O(\tmp_1_tr_reg_201[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_1_tr_reg_201[12]_i_4 
       (.I0(x[7]),
        .I1(x[10]),
        .O(\tmp_1_tr_reg_201[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_1_tr_reg_201[12]_i_5 
       (.I0(x[6]),
        .I1(x[9]),
        .O(\tmp_1_tr_reg_201[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_1_tr_reg_201[16]_i_2 
       (.I0(x[15]),
        .I1(x[13]),
        .O(\tmp_1_tr_reg_201[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_1_tr_reg_201[16]_i_3 
       (.I0(x[15]),
        .I1(x[12]),
        .O(\tmp_1_tr_reg_201[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_1_tr_reg_201[16]_i_4 
       (.I0(x[11]),
        .I1(x[14]),
        .O(\tmp_1_tr_reg_201[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_1_tr_reg_201[16]_i_5 
       (.I0(x[10]),
        .I1(x[13]),
        .O(\tmp_1_tr_reg_201[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_1_tr_reg_201[4]_i_2 
       (.I0(x[0]),
        .O(\tmp_1_tr_reg_201[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_1_tr_reg_201[4]_i_3 
       (.I0(x[1]),
        .I1(x[4]),
        .O(\tmp_1_tr_reg_201[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_1_tr_reg_201[4]_i_4 
       (.I0(x[0]),
        .I1(x[3]),
        .O(\tmp_1_tr_reg_201[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_1_tr_reg_201[4]_i_5 
       (.I0(x[2]),
        .O(\tmp_1_tr_reg_201[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \tmp_1_tr_reg_201[4]_i_6 
       (.I0(x[1]),
        .O(\tmp_1_tr_reg_201[4]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_1_tr_reg_201[8]_i_2 
       (.I0(x[5]),
        .I1(x[8]),
        .O(\tmp_1_tr_reg_201[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_1_tr_reg_201[8]_i_3 
       (.I0(x[4]),
        .I1(x[7]),
        .O(\tmp_1_tr_reg_201[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_1_tr_reg_201[8]_i_4 
       (.I0(x[3]),
        .I1(x[6]),
        .O(\tmp_1_tr_reg_201[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_1_tr_reg_201[8]_i_5 
       (.I0(x[2]),
        .I1(x[5]),
        .O(\tmp_1_tr_reg_201[8]_i_5_n_0 ));
  FDRE \tmp_1_tr_reg_201_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(x[0]),
        .Q(tmp_1_tr_reg_201[0]),
        .R(1'b0));
  FDRE \tmp_1_tr_reg_201_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[12]_i_1_n_6 ),
        .Q(tmp_1_tr_reg_201[10]),
        .R(1'b0));
  FDRE \tmp_1_tr_reg_201_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[12]_i_1_n_5 ),
        .Q(tmp_1_tr_reg_201[11]),
        .R(1'b0));
  FDRE \tmp_1_tr_reg_201_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[12]_i_1_n_4 ),
        .Q(tmp_1_tr_reg_201[12]),
        .R(1'b0));
  CARRY4 \tmp_1_tr_reg_201_reg[12]_i_1 
       (.CI(\tmp_1_tr_reg_201_reg[8]_i_1_n_0 ),
        .CO({\tmp_1_tr_reg_201_reg[12]_i_1_n_0 ,\tmp_1_tr_reg_201_reg[12]_i_1_n_1 ,\tmp_1_tr_reg_201_reg[12]_i_1_n_2 ,\tmp_1_tr_reg_201_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(x[9:6]),
        .O({\tmp_1_tr_reg_201_reg[12]_i_1_n_4 ,\tmp_1_tr_reg_201_reg[12]_i_1_n_5 ,\tmp_1_tr_reg_201_reg[12]_i_1_n_6 ,\tmp_1_tr_reg_201_reg[12]_i_1_n_7 }),
        .S({\tmp_1_tr_reg_201[12]_i_2_n_0 ,\tmp_1_tr_reg_201[12]_i_3_n_0 ,\tmp_1_tr_reg_201[12]_i_4_n_0 ,\tmp_1_tr_reg_201[12]_i_5_n_0 }));
  FDRE \tmp_1_tr_reg_201_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[16]_i_1_n_7 ),
        .Q(tmp_1_tr_reg_201[13]),
        .R(1'b0));
  FDRE \tmp_1_tr_reg_201_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[16]_i_1_n_6 ),
        .Q(tmp_1_tr_reg_201[14]),
        .R(1'b0));
  FDRE \tmp_1_tr_reg_201_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[16]_i_1_n_5 ),
        .Q(tmp_1_tr_reg_201[15]),
        .R(1'b0));
  FDRE \tmp_1_tr_reg_201_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[16]_i_1_n_4 ),
        .Q(tmp_1_tr_reg_201[16]),
        .R(1'b0));
  CARRY4 \tmp_1_tr_reg_201_reg[16]_i_1 
       (.CI(\tmp_1_tr_reg_201_reg[12]_i_1_n_0 ),
        .CO({\tmp_1_tr_reg_201_reg[16]_i_1_n_0 ,\tmp_1_tr_reg_201_reg[16]_i_1_n_1 ,\tmp_1_tr_reg_201_reg[16]_i_1_n_2 ,\tmp_1_tr_reg_201_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({x[15],x[12:10]}),
        .O({\tmp_1_tr_reg_201_reg[16]_i_1_n_4 ,\tmp_1_tr_reg_201_reg[16]_i_1_n_5 ,\tmp_1_tr_reg_201_reg[16]_i_1_n_6 ,\tmp_1_tr_reg_201_reg[16]_i_1_n_7 }),
        .S({\tmp_1_tr_reg_201[16]_i_2_n_0 ,\tmp_1_tr_reg_201[16]_i_3_n_0 ,\tmp_1_tr_reg_201[16]_i_4_n_0 ,\tmp_1_tr_reg_201[16]_i_5_n_0 }));
  FDRE \tmp_1_tr_reg_201_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_7_reg_206_reg[0]_i_1_n_7 ),
        .Q(tmp_1_tr_reg_201[17]),
        .R(1'b0));
  FDRE \tmp_1_tr_reg_201_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_7_reg_206_reg[0]_i_1_n_6 ),
        .Q(tmp_1_tr_reg_201[18]),
        .R(1'b0));
  FDRE \tmp_1_tr_reg_201_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[4]_i_1_n_7 ),
        .Q(tmp_1_tr_reg_201[1]),
        .R(1'b0));
  FDRE \tmp_1_tr_reg_201_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[4]_i_1_n_6 ),
        .Q(tmp_1_tr_reg_201[2]),
        .R(1'b0));
  FDRE \tmp_1_tr_reg_201_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[4]_i_1_n_5 ),
        .Q(tmp_1_tr_reg_201[3]),
        .R(1'b0));
  FDRE \tmp_1_tr_reg_201_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[4]_i_1_n_4 ),
        .Q(tmp_1_tr_reg_201[4]),
        .R(1'b0));
  CARRY4 \tmp_1_tr_reg_201_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\tmp_1_tr_reg_201_reg[4]_i_1_n_0 ,\tmp_1_tr_reg_201_reg[4]_i_1_n_1 ,\tmp_1_tr_reg_201_reg[4]_i_1_n_2 ,\tmp_1_tr_reg_201_reg[4]_i_1_n_3 }),
        .CYINIT(\tmp_1_tr_reg_201[4]_i_2_n_0 ),
        .DI({x[1:0],1'b0,1'b0}),
        .O({\tmp_1_tr_reg_201_reg[4]_i_1_n_4 ,\tmp_1_tr_reg_201_reg[4]_i_1_n_5 ,\tmp_1_tr_reg_201_reg[4]_i_1_n_6 ,\tmp_1_tr_reg_201_reg[4]_i_1_n_7 }),
        .S({\tmp_1_tr_reg_201[4]_i_3_n_0 ,\tmp_1_tr_reg_201[4]_i_4_n_0 ,\tmp_1_tr_reg_201[4]_i_5_n_0 ,\tmp_1_tr_reg_201[4]_i_6_n_0 }));
  FDRE \tmp_1_tr_reg_201_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[8]_i_1_n_7 ),
        .Q(tmp_1_tr_reg_201[5]),
        .R(1'b0));
  FDRE \tmp_1_tr_reg_201_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[8]_i_1_n_6 ),
        .Q(tmp_1_tr_reg_201[6]),
        .R(1'b0));
  FDRE \tmp_1_tr_reg_201_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[8]_i_1_n_5 ),
        .Q(tmp_1_tr_reg_201[7]),
        .R(1'b0));
  FDRE \tmp_1_tr_reg_201_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[8]_i_1_n_4 ),
        .Q(tmp_1_tr_reg_201[8]),
        .R(1'b0));
  CARRY4 \tmp_1_tr_reg_201_reg[8]_i_1 
       (.CI(\tmp_1_tr_reg_201_reg[4]_i_1_n_0 ),
        .CO({\tmp_1_tr_reg_201_reg[8]_i_1_n_0 ,\tmp_1_tr_reg_201_reg[8]_i_1_n_1 ,\tmp_1_tr_reg_201_reg[8]_i_1_n_2 ,\tmp_1_tr_reg_201_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(x[5:2]),
        .O({\tmp_1_tr_reg_201_reg[8]_i_1_n_4 ,\tmp_1_tr_reg_201_reg[8]_i_1_n_5 ,\tmp_1_tr_reg_201_reg[8]_i_1_n_6 ,\tmp_1_tr_reg_201_reg[8]_i_1_n_7 }),
        .S({\tmp_1_tr_reg_201[8]_i_2_n_0 ,\tmp_1_tr_reg_201[8]_i_3_n_0 ,\tmp_1_tr_reg_201[8]_i_4_n_0 ,\tmp_1_tr_reg_201[8]_i_5_n_0 }));
  FDRE \tmp_1_tr_reg_201_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(\tmp_1_tr_reg_201_reg[12]_i_1_n_7 ),
        .Q(tmp_1_tr_reg_201[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \tmp_3_reg_217[37]_i_1 
       (.I0(ap_CS_fsm_state5),
        .I1(tmp_7_reg_206),
        .O(tmp_3_reg_2170));
  FDRE \tmp_3_reg_217_reg[0] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[0]),
        .Q(tmp_3_reg_217[0]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[10] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[10]),
        .Q(tmp_3_reg_217[10]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[11] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[11]),
        .Q(tmp_3_reg_217[11]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[12] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[12]),
        .Q(tmp_3_reg_217[12]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[13] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[13]),
        .Q(tmp_3_reg_217[13]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[14] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[14]),
        .Q(tmp_3_reg_217[14]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[15] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[15]),
        .Q(tmp_3_reg_217[15]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[16] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[16]),
        .Q(tmp_3_reg_217[16]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[17] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[17]),
        .Q(tmp_3_reg_217[17]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[18] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[18]),
        .Q(tmp_3_reg_217[18]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[19] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[19]),
        .Q(tmp_3_reg_217[19]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[1] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[1]),
        .Q(tmp_3_reg_217[1]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[20] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[20]),
        .Q(tmp_3_reg_217[20]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[21] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[21]),
        .Q(tmp_3_reg_217[21]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[22] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[22]),
        .Q(tmp_3_reg_217[22]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[23] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[23]),
        .Q(tmp_3_reg_217[23]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[24] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[24]),
        .Q(tmp_3_reg_217[24]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[25] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[25]),
        .Q(tmp_3_reg_217[25]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[26] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[26]),
        .Q(tmp_3_reg_217[26]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[27] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[27]),
        .Q(tmp_3_reg_217[27]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[28] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[28]),
        .Q(tmp_3_reg_217[28]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[29] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[29]),
        .Q(tmp_3_reg_217[29]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[2] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[2]),
        .Q(tmp_3_reg_217[2]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[30] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[30]),
        .Q(tmp_3_reg_217[30]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[31] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[31]),
        .Q(tmp_3_reg_217[31]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[32] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[32]),
        .Q(tmp_3_reg_217[32]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[33] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[33]),
        .Q(tmp_3_reg_217[33]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[34] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[34]),
        .Q(tmp_3_reg_217[34]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[35] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[35]),
        .Q(tmp_3_reg_217[35]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[36] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[36]),
        .Q(tmp_3_reg_217[36]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[37] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(tmp_3_fu_122_p1[37]),
        .Q(tmp_3_reg_217[37]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[3] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[3]),
        .Q(tmp_3_reg_217[3]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[4] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[4]),
        .Q(tmp_3_reg_217[4]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[5] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[5]),
        .Q(tmp_3_reg_217[5]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[6] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[6]),
        .Q(tmp_3_reg_217[6]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[7] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[7]),
        .Q(tmp_3_reg_217[7]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[8] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[8]),
        .Q(tmp_3_reg_217[8]),
        .R(1'b0));
  FDRE \tmp_3_reg_217_reg[9] 
       (.C(ap_clk),
        .CE(tmp_3_reg_2170),
        .D(buff1_reg[9]),
        .Q(tmp_3_reg_217[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_5_reg_227[0]_i_1 
       (.I0(RESIZE[0]),
        .I1(ap_CS_fsm_state6),
        .I2(tmp_5_reg_227[0]),
        .O(\tmp_5_reg_227[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_5_reg_227[1]_i_1 
       (.I0(RESIZE[1]),
        .I1(ap_CS_fsm_state6),
        .I2(tmp_5_reg_227[1]),
        .O(\tmp_5_reg_227[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_5_reg_227[2]_i_1 
       (.I0(RESIZE[2]),
        .I1(ap_CS_fsm_state6),
        .I2(tmp_5_reg_227[2]),
        .O(\tmp_5_reg_227[2]_i_1_n_0 ));
  FDRE \tmp_5_reg_227_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_5_reg_227[0]_i_1_n_0 ),
        .Q(tmp_5_reg_227[0]),
        .R(1'b0));
  FDRE \tmp_5_reg_227_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_5_reg_227[1]_i_1_n_0 ),
        .Q(tmp_5_reg_227[1]),
        .R(1'b0));
  FDRE \tmp_5_reg_227_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_5_reg_227[2]_i_1_n_0 ),
        .Q(tmp_5_reg_227[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_7_reg_206[0]_i_2 
       (.I0(x[14]),
        .I1(x[15]),
        .O(\tmp_7_reg_206[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \tmp_7_reg_206[0]_i_3 
       (.I0(x[13]),
        .I1(x[14]),
        .O(\tmp_7_reg_206[0]_i_3_n_0 ));
  FDRE \tmp_7_reg_206_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(p_0_in),
        .Q(tmp_7_reg_206),
        .R(1'b0));
  CARRY4 \tmp_7_reg_206_reg[0]_i_1 
       (.CI(\tmp_1_tr_reg_201_reg[16]_i_1_n_0 ),
        .CO({\NLW_tmp_7_reg_206_reg[0]_i_1_CO_UNCONNECTED [3:2],\tmp_7_reg_206_reg[0]_i_1_n_2 ,\tmp_7_reg_206_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,x[14:13]}),
        .O({\NLW_tmp_7_reg_206_reg[0]_i_1_O_UNCONNECTED [3],p_0_in,\tmp_7_reg_206_reg[0]_i_1_n_6 ,\tmp_7_reg_206_reg[0]_i_1_n_7 }),
        .S({1'b0,1'b1,\tmp_7_reg_206[0]_i_2_n_0 ,\tmp_7_reg_206[0]_i_3_n_0 }));
  FDRE \tmp_9_reg_222_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_64),
        .Q(RESIZE[0]),
        .R(1'b0));
  FDRE \tmp_9_reg_222_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_63),
        .Q(RESIZE[1]),
        .R(1'b0));
  FDRE \tmp_9_reg_222_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(leds_controller_mbkb_U0_n_24),
        .Q(RESIZE[2]),
        .R(1'b0));
endmodule

module system_leds_controller_0_1_leds_controller_mbkb
   (D,
    \B[2] ,
    \tmp_9_reg_222_reg[2] ,
    \tmp_3_reg_217_reg[37] ,
    \tmp_9_reg_222_reg[1] ,
    \tmp_9_reg_222_reg[0] ,
    tmp_7_reg_206,
    Q,
    ap_clk,
    \ap_CS_fsm_reg[4] ,
    RESIZE,
    \B[2]_0 ,
    \A[20] );
  output [20:0]D;
  output [2:0]\B[2] ;
  output \tmp_9_reg_222_reg[2] ;
  output [37:0]\tmp_3_reg_217_reg[37] ;
  output \tmp_9_reg_222_reg[1] ;
  output \tmp_9_reg_222_reg[0] ;
  input tmp_7_reg_206;
  input [18:0]Q;
  input ap_clk;
  input [0:0]\ap_CS_fsm_reg[4] ;
  input [2:0]RESIZE;
  input [2:0]\B[2]_0 ;
  input [20:0]\A[20] ;

  wire [20:0]\A[20] ;
  wire [2:0]\B[2] ;
  wire [2:0]\B[2]_0 ;
  wire [20:0]D;
  wire [18:0]Q;
  wire [2:0]RESIZE;
  wire [0:0]\ap_CS_fsm_reg[4] ;
  wire ap_clk;
  wire [37:0]\tmp_3_reg_217_reg[37] ;
  wire tmp_7_reg_206;
  wire \tmp_9_reg_222_reg[0] ;
  wire \tmp_9_reg_222_reg[1] ;
  wire \tmp_9_reg_222_reg[2] ;

  system_leds_controller_0_1_leds_controller_mbkb_MulnS_0 leds_controller_mbkb_MulnS_0_U
       (.\A[20] (\A[20] ),
        .\B[2] (\B[2] ),
        .\B[2]_0 (\B[2]_0 ),
        .D(D),
        .RESIZE(RESIZE),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .ap_clk(ap_clk),
        .in0({tmp_7_reg_206,Q}),
        .\tmp_3_reg_217_reg[37] (\tmp_3_reg_217_reg[37] ),
        .\tmp_9_reg_222_reg[0] (\tmp_9_reg_222_reg[0] ),
        .\tmp_9_reg_222_reg[1] (\tmp_9_reg_222_reg[1] ),
        .\tmp_9_reg_222_reg[2] (\tmp_9_reg_222_reg[2] ));
endmodule

module system_leds_controller_0_1_leds_controller_mbkb_MulnS_0
   (D,
    \B[2] ,
    \tmp_9_reg_222_reg[2] ,
    \tmp_3_reg_217_reg[37] ,
    \tmp_9_reg_222_reg[1] ,
    \tmp_9_reg_222_reg[0] ,
    in0,
    ap_clk,
    \ap_CS_fsm_reg[4] ,
    RESIZE,
    \B[2]_0 ,
    \A[20] );
  output [20:0]D;
  output [2:0]\B[2] ;
  output \tmp_9_reg_222_reg[2] ;
  output [37:0]\tmp_3_reg_217_reg[37] ;
  output \tmp_9_reg_222_reg[1] ;
  output \tmp_9_reg_222_reg[0] ;
  input [19:0]in0;
  input ap_clk;
  input [0:0]\ap_CS_fsm_reg[4] ;
  input [2:0]RESIZE;
  input [2:0]\B[2]_0 ;
  input [20:0]\A[20] ;

  wire [20:0]\A[20] ;
  wire [2:0]\B[2]_0 ;
  wire [2:0]RESIZE;
  (* RTL_KEEP = "true" *) wire [21:0]a_i;
  wire [0:0]\ap_CS_fsm_reg[4] ;
  wire ap_clk;
  (* RTL_KEEP = "true" *) wire [19:0]b_i;
  wire \buff0[11]_i_10_n_0 ;
  wire \buff0[11]_i_11_n_0 ;
  wire \buff0[11]_i_12_n_0 ;
  wire \buff0[11]_i_13_n_0 ;
  wire \buff0[11]_i_2_n_0 ;
  wire \buff0[11]_i_3_n_0 ;
  wire \buff0[11]_i_4_n_0 ;
  wire \buff0[11]_i_5_n_0 ;
  wire \buff0[11]_i_6_n_0 ;
  wire \buff0[11]_i_7_n_0 ;
  wire \buff0[11]_i_8_n_0 ;
  wire \buff0[11]_i_9_n_0 ;
  wire \buff0[15]_i_10_n_0 ;
  wire \buff0[15]_i_11_n_0 ;
  wire \buff0[15]_i_12_n_0 ;
  wire \buff0[15]_i_13_n_0 ;
  wire \buff0[15]_i_2_n_0 ;
  wire \buff0[15]_i_3_n_0 ;
  wire \buff0[15]_i_4_n_0 ;
  wire \buff0[15]_i_5_n_0 ;
  wire \buff0[15]_i_6_n_0 ;
  wire \buff0[15]_i_7_n_0 ;
  wire \buff0[15]_i_8_n_0 ;
  wire \buff0[15]_i_9_n_0 ;
  wire \buff0[19]_i_10_n_0 ;
  wire \buff0[19]_i_11_n_0 ;
  wire \buff0[19]_i_12_n_0 ;
  wire \buff0[19]_i_13_n_0 ;
  wire \buff0[19]_i_2_n_0 ;
  wire \buff0[19]_i_3_n_0 ;
  wire \buff0[19]_i_4_n_0 ;
  wire \buff0[19]_i_5_n_0 ;
  wire \buff0[19]_i_6_n_0 ;
  wire \buff0[19]_i_7_n_0 ;
  wire \buff0[19]_i_8_n_0 ;
  wire \buff0[19]_i_9_n_0 ;
  wire \buff0[20]_i_2_n_0 ;
  wire \buff0[20]_i_3_n_0 ;
  wire \buff0[20]_i_4_n_0 ;
  wire \buff0[3]_i_2_n_0 ;
  wire \buff0[3]_i_3_n_0 ;
  wire \buff0[3]_i_4_n_0 ;
  wire \buff0[3]_i_5_n_0 ;
  wire \buff0[3]_i_6_n_0 ;
  wire \buff0[3]_i_7_n_0 ;
  wire \buff0[3]_i_8_n_0 ;
  wire \buff0[3]_i_9_n_0 ;
  wire \buff0[7]_i_10_n_0 ;
  wire \buff0[7]_i_11_n_0 ;
  wire \buff0[7]_i_12_n_0 ;
  wire \buff0[7]_i_13_n_0 ;
  wire \buff0[7]_i_2_n_0 ;
  wire \buff0[7]_i_3_n_0 ;
  wire \buff0[7]_i_4_n_0 ;
  wire \buff0[7]_i_5_n_0 ;
  wire \buff0[7]_i_6_n_0 ;
  wire \buff0[7]_i_7_n_0 ;
  wire \buff0[7]_i_8_n_0 ;
  wire \buff0[7]_i_9_n_0 ;
  wire [20:0]buff0_reg;
  wire \buff0_reg[11]_i_1_n_0 ;
  wire \buff0_reg[11]_i_1_n_1 ;
  wire \buff0_reg[11]_i_1_n_2 ;
  wire \buff0_reg[11]_i_1_n_3 ;
  wire \buff0_reg[11]_i_1_n_4 ;
  wire \buff0_reg[11]_i_1_n_5 ;
  wire \buff0_reg[11]_i_1_n_6 ;
  wire \buff0_reg[11]_i_1_n_7 ;
  wire \buff0_reg[15]_i_1_n_0 ;
  wire \buff0_reg[15]_i_1_n_1 ;
  wire \buff0_reg[15]_i_1_n_2 ;
  wire \buff0_reg[15]_i_1_n_3 ;
  wire \buff0_reg[15]_i_1_n_4 ;
  wire \buff0_reg[15]_i_1_n_5 ;
  wire \buff0_reg[15]_i_1_n_6 ;
  wire \buff0_reg[15]_i_1_n_7 ;
  wire \buff0_reg[19]_i_1_n_0 ;
  wire \buff0_reg[19]_i_1_n_1 ;
  wire \buff0_reg[19]_i_1_n_2 ;
  wire \buff0_reg[19]_i_1_n_3 ;
  wire \buff0_reg[19]_i_1_n_4 ;
  wire \buff0_reg[19]_i_1_n_5 ;
  wire \buff0_reg[19]_i_1_n_6 ;
  wire \buff0_reg[19]_i_1_n_7 ;
  wire \buff0_reg[20]_i_1_n_7 ;
  wire \buff0_reg[3]_i_1_n_0 ;
  wire \buff0_reg[3]_i_1_n_1 ;
  wire \buff0_reg[3]_i_1_n_2 ;
  wire \buff0_reg[3]_i_1_n_3 ;
  wire \buff0_reg[3]_i_1_n_4 ;
  wire \buff0_reg[3]_i_1_n_5 ;
  wire \buff0_reg[3]_i_1_n_6 ;
  wire \buff0_reg[3]_i_1_n_7 ;
  wire \buff0_reg[7]_i_1_n_0 ;
  wire \buff0_reg[7]_i_1_n_1 ;
  wire \buff0_reg[7]_i_1_n_2 ;
  wire \buff0_reg[7]_i_1_n_3 ;
  wire \buff0_reg[7]_i_1_n_4 ;
  wire \buff0_reg[7]_i_1_n_5 ;
  wire \buff0_reg[7]_i_1_n_6 ;
  wire \buff0_reg[7]_i_1_n_7 ;
  wire buff0_reg__0_n_100;
  wire buff0_reg__0_n_101;
  wire buff0_reg__0_n_102;
  wire buff0_reg__0_n_103;
  wire buff0_reg__0_n_104;
  wire buff0_reg__0_n_105;
  wire buff0_reg__0_n_58;
  wire buff0_reg__0_n_59;
  wire buff0_reg__0_n_60;
  wire buff0_reg__0_n_61;
  wire buff0_reg__0_n_62;
  wire buff0_reg__0_n_63;
  wire buff0_reg__0_n_64;
  wire buff0_reg__0_n_65;
  wire buff0_reg__0_n_66;
  wire buff0_reg__0_n_67;
  wire buff0_reg__0_n_68;
  wire buff0_reg__0_n_69;
  wire buff0_reg__0_n_70;
  wire buff0_reg__0_n_71;
  wire buff0_reg__0_n_72;
  wire buff0_reg__0_n_73;
  wire buff0_reg__0_n_74;
  wire buff0_reg__0_n_75;
  wire buff0_reg__0_n_76;
  wire buff0_reg__0_n_77;
  wire buff0_reg__0_n_78;
  wire buff0_reg__0_n_79;
  wire buff0_reg__0_n_80;
  wire buff0_reg__0_n_81;
  wire buff0_reg__0_n_82;
  wire buff0_reg__0_n_83;
  wire buff0_reg__0_n_84;
  wire buff0_reg__0_n_85;
  wire buff0_reg__0_n_86;
  wire buff0_reg__0_n_87;
  wire buff0_reg__0_n_88;
  wire buff0_reg__0_n_89;
  wire buff0_reg__0_n_90;
  wire buff0_reg__0_n_91;
  wire buff0_reg__0_n_92;
  wire buff0_reg__0_n_93;
  wire buff0_reg__0_n_94;
  wire buff0_reg__0_n_95;
  wire buff0_reg__0_n_96;
  wire buff0_reg__0_n_97;
  wire buff0_reg__0_n_98;
  wire buff0_reg__0_n_99;
  wire \buff1[11]_i_2_n_0 ;
  wire \buff1[11]_i_3_n_0 ;
  wire \buff1[11]_i_4_n_0 ;
  wire \buff1[11]_i_5_n_0 ;
  wire \buff1[15]_i_2_n_0 ;
  wire \buff1[15]_i_3_n_0 ;
  wire \buff1[15]_i_4_n_0 ;
  wire \buff1[15]_i_5_n_0 ;
  wire \buff1[19]_i_2_n_0 ;
  wire \buff1[19]_i_3_n_0 ;
  wire \buff1[19]_i_4_n_0 ;
  wire \buff1[19]_i_5_n_0 ;
  wire \buff1[20]_i_2_n_0 ;
  wire \buff1[3]_i_2_n_0 ;
  wire \buff1[3]_i_3_n_0 ;
  wire \buff1[3]_i_4_n_0 ;
  wire \buff1[3]_i_5_n_0 ;
  wire \buff1[7]_i_2_n_0 ;
  wire \buff1[7]_i_3_n_0 ;
  wire \buff1[7]_i_4_n_0 ;
  wire \buff1[7]_i_5_n_0 ;
  wire \buff1_reg[11]_i_1_n_0 ;
  wire \buff1_reg[11]_i_1_n_1 ;
  wire \buff1_reg[11]_i_1_n_2 ;
  wire \buff1_reg[11]_i_1_n_3 ;
  wire \buff1_reg[15]_i_1_n_0 ;
  wire \buff1_reg[15]_i_1_n_1 ;
  wire \buff1_reg[15]_i_1_n_2 ;
  wire \buff1_reg[15]_i_1_n_3 ;
  wire \buff1_reg[19]_i_1_n_0 ;
  wire \buff1_reg[19]_i_1_n_1 ;
  wire \buff1_reg[19]_i_1_n_2 ;
  wire \buff1_reg[19]_i_1_n_3 ;
  wire \buff1_reg[3]_i_1_n_0 ;
  wire \buff1_reg[3]_i_1_n_1 ;
  wire \buff1_reg[3]_i_1_n_2 ;
  wire \buff1_reg[3]_i_1_n_3 ;
  wire \buff1_reg[7]_i_1_n_0 ;
  wire \buff1_reg[7]_i_1_n_1 ;
  wire \buff1_reg[7]_i_1_n_2 ;
  wire \buff1_reg[7]_i_1_n_3 ;
  wire [37:0]\tmp_3_reg_217_reg[37] ;
  wire \tmp_9_reg_222_reg[0] ;
  wire \tmp_9_reg_222_reg[1] ;
  wire \tmp_9_reg_222_reg[2] ;
  wire [20:0]tmp_product;
  wire [3:0]\NLW_buff0_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_buff0_reg[20]_i_1_O_UNCONNECTED ;
  wire NLW_buff0_reg__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_buff0_reg__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_buff0_reg__0_OVERFLOW_UNCONNECTED;
  wire NLW_buff0_reg__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_buff0_reg__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_buff0_reg__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_buff0_reg__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_buff0_reg__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_buff0_reg__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_buff0_reg__0_PCOUT_UNCONNECTED;
  wire [3:0]\NLW_buff1_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_buff1_reg[20]_i_1_O_UNCONNECTED ;

  assign \B[2] [2:0] = b_i[19:17];
  assign D[20:0] = a_i[20:0];
  assign b_i = in0[19:0];
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[11]_i_10 
       (.I0(\A[20] [11]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [10]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [9]),
        .O(\buff0[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[11]_i_11 
       (.I0(\A[20] [10]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [9]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [8]),
        .O(\buff0[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[11]_i_12 
       (.I0(\A[20] [9]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [8]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [7]),
        .O(\buff0[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[11]_i_13 
       (.I0(\A[20] [8]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [7]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [6]),
        .O(\buff0[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[11]_i_2 
       (.I0(\A[20] [10]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [8]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [9]),
        .O(\buff0[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[11]_i_3 
       (.I0(\A[20] [9]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [7]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [8]),
        .O(\buff0[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[11]_i_4 
       (.I0(\A[20] [8]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [6]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [7]),
        .O(\buff0[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[11]_i_5 
       (.I0(\A[20] [7]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [5]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [6]),
        .O(\buff0[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[11]_i_6 
       (.I0(\buff0[11]_i_2_n_0 ),
        .I1(\buff0[11]_i_10_n_0 ),
        .O(\buff0[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[11]_i_7 
       (.I0(\buff0[11]_i_3_n_0 ),
        .I1(\buff0[11]_i_11_n_0 ),
        .O(\buff0[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[11]_i_8 
       (.I0(\buff0[11]_i_4_n_0 ),
        .I1(\buff0[11]_i_12_n_0 ),
        .O(\buff0[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[11]_i_9 
       (.I0(\buff0[11]_i_5_n_0 ),
        .I1(\buff0[11]_i_13_n_0 ),
        .O(\buff0[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[15]_i_10 
       (.I0(\A[20] [15]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [14]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [13]),
        .O(\buff0[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[15]_i_11 
       (.I0(\A[20] [14]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [13]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [12]),
        .O(\buff0[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[15]_i_12 
       (.I0(\A[20] [13]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [12]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [11]),
        .O(\buff0[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[15]_i_13 
       (.I0(\A[20] [12]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [11]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [10]),
        .O(\buff0[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[15]_i_2 
       (.I0(\A[20] [14]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [12]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [13]),
        .O(\buff0[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[15]_i_3 
       (.I0(\A[20] [13]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [11]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [12]),
        .O(\buff0[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[15]_i_4 
       (.I0(\A[20] [12]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [10]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [11]),
        .O(\buff0[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[15]_i_5 
       (.I0(\A[20] [11]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [9]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [10]),
        .O(\buff0[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[15]_i_6 
       (.I0(\buff0[15]_i_2_n_0 ),
        .I1(\buff0[15]_i_10_n_0 ),
        .O(\buff0[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[15]_i_7 
       (.I0(\buff0[15]_i_3_n_0 ),
        .I1(\buff0[15]_i_11_n_0 ),
        .O(\buff0[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[15]_i_8 
       (.I0(\buff0[15]_i_4_n_0 ),
        .I1(\buff0[15]_i_12_n_0 ),
        .O(\buff0[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[15]_i_9 
       (.I0(\buff0[15]_i_5_n_0 ),
        .I1(\buff0[15]_i_13_n_0 ),
        .O(\buff0[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[19]_i_10 
       (.I0(\A[20] [19]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [18]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [17]),
        .O(\buff0[19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[19]_i_11 
       (.I0(\A[20] [18]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [17]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [16]),
        .O(\buff0[19]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[19]_i_12 
       (.I0(\A[20] [17]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [16]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [15]),
        .O(\buff0[19]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[19]_i_13 
       (.I0(\A[20] [16]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [15]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [14]),
        .O(\buff0[19]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[19]_i_2 
       (.I0(\A[20] [18]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [16]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [17]),
        .O(\buff0[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[19]_i_3 
       (.I0(\A[20] [17]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [15]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [16]),
        .O(\buff0[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[19]_i_4 
       (.I0(\A[20] [16]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [14]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [15]),
        .O(\buff0[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[19]_i_5 
       (.I0(\A[20] [15]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [13]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [14]),
        .O(\buff0[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[19]_i_6 
       (.I0(\buff0[19]_i_2_n_0 ),
        .I1(\buff0[19]_i_10_n_0 ),
        .O(\buff0[19]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[19]_i_7 
       (.I0(\buff0[19]_i_3_n_0 ),
        .I1(\buff0[19]_i_11_n_0 ),
        .O(\buff0[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[19]_i_8 
       (.I0(\buff0[19]_i_4_n_0 ),
        .I1(\buff0[19]_i_12_n_0 ),
        .O(\buff0[19]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[19]_i_9 
       (.I0(\buff0[19]_i_5_n_0 ),
        .I1(\buff0[19]_i_13_n_0 ),
        .O(\buff0[19]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \buff0[20]_i_2 
       (.I0(\buff0[20]_i_3_n_0 ),
        .I1(\B[2]_0 [0]),
        .I2(\buff0[20]_i_4_n_0 ),
        .O(\buff0[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA6A9966995595599)) 
    \buff0[20]_i_3 
       (.I0(\A[20] [20]),
        .I1(\A[20] [19]),
        .I2(\B[2]_0 [2]),
        .I3(\B[2]_0 [1]),
        .I4(\A[20] [17]),
        .I5(\A[20] [18]),
        .O(\buff0[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA3635F5F)) 
    \buff0[20]_i_4 
       (.I0(\A[20] [19]),
        .I1(\B[2]_0 [2]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [17]),
        .I4(\A[20] [18]),
        .O(\buff0[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hD5FF)) 
    \buff0[3]_i_2 
       (.I0(\B[2]_0 [2]),
        .I1(\A[20] [1]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [0]),
        .O(\buff0[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \buff0[3]_i_3 
       (.I0(\A[20] [1]),
        .I1(\B[2]_0 [1]),
        .I2(\A[20] [0]),
        .I3(\B[2]_0 [2]),
        .O(\buff0[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \buff0[3]_i_4 
       (.I0(\A[20] [1]),
        .I1(\B[2]_0 [0]),
        .O(\buff0[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h2A00D5FF)) 
    \buff0[3]_i_5 
       (.I0(\A[20] [0]),
        .I1(\B[2]_0 [1]),
        .I2(\A[20] [1]),
        .I3(\B[2]_0 [2]),
        .I4(\buff0[3]_i_9_n_0 ),
        .O(\buff0[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \buff0[3]_i_6 
       (.I0(\B[2]_0 [2]),
        .I1(\A[20] [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [1]),
        .I4(\B[2]_0 [0]),
        .I5(\A[20] [2]),
        .O(\buff0[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \buff0[3]_i_7 
       (.I0(\B[2]_0 [0]),
        .I1(\A[20] [1]),
        .I2(\A[20] [0]),
        .I3(\B[2]_0 [1]),
        .O(\buff0[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \buff0[3]_i_8 
       (.I0(\B[2]_0 [0]),
        .I1(\A[20] [0]),
        .O(\buff0[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[3]_i_9 
       (.I0(\A[20] [3]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [2]),
        .I3(\A[20] [1]),
        .I4(\A[20] [2]),
        .I5(\B[2]_0 [1]),
        .O(\buff0[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[7]_i_10 
       (.I0(\A[20] [7]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [6]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [5]),
        .O(\buff0[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[7]_i_11 
       (.I0(\A[20] [6]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [5]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [4]),
        .O(\buff0[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[7]_i_12 
       (.I0(\A[20] [5]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [4]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [3]),
        .O(\buff0[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \buff0[7]_i_13 
       (.I0(\A[20] [4]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [3]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [2]),
        .O(\buff0[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[7]_i_2 
       (.I0(\A[20] [6]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [4]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [5]),
        .O(\buff0[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[7]_i_3 
       (.I0(\A[20] [5]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [3]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [4]),
        .O(\buff0[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h80F8F8F800888888)) 
    \buff0[7]_i_4 
       (.I0(\A[20] [4]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [1]),
        .I3(\A[20] [2]),
        .I4(\B[2]_0 [2]),
        .I5(\A[20] [3]),
        .O(\buff0[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF088808880888)) 
    \buff0[7]_i_5 
       (.I0(\A[20] [3]),
        .I1(\B[2]_0 [0]),
        .I2(\B[2]_0 [2]),
        .I3(\A[20] [1]),
        .I4(\B[2]_0 [1]),
        .I5(\A[20] [2]),
        .O(\buff0[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[7]_i_6 
       (.I0(\buff0[7]_i_2_n_0 ),
        .I1(\buff0[7]_i_10_n_0 ),
        .O(\buff0[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[7]_i_7 
       (.I0(\buff0[7]_i_3_n_0 ),
        .I1(\buff0[7]_i_11_n_0 ),
        .O(\buff0[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[7]_i_8 
       (.I0(\buff0[7]_i_4_n_0 ),
        .I1(\buff0[7]_i_12_n_0 ),
        .O(\buff0[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff0[7]_i_9 
       (.I0(\buff0[7]_i_5_n_0 ),
        .I1(\buff0[7]_i_13_n_0 ),
        .O(\buff0[7]_i_9_n_0 ));
  FDRE \buff0_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[3]_i_1_n_7 ),
        .Q(buff0_reg[0]),
        .R(1'b0));
  FDRE \buff0_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[11]_i_1_n_5 ),
        .Q(buff0_reg[10]),
        .R(1'b0));
  FDRE \buff0_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[11]_i_1_n_4 ),
        .Q(buff0_reg[11]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 23x3}}" *) 
  CARRY4 \buff0_reg[11]_i_1 
       (.CI(\buff0_reg[7]_i_1_n_0 ),
        .CO({\buff0_reg[11]_i_1_n_0 ,\buff0_reg[11]_i_1_n_1 ,\buff0_reg[11]_i_1_n_2 ,\buff0_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff0[11]_i_2_n_0 ,\buff0[11]_i_3_n_0 ,\buff0[11]_i_4_n_0 ,\buff0[11]_i_5_n_0 }),
        .O({\buff0_reg[11]_i_1_n_4 ,\buff0_reg[11]_i_1_n_5 ,\buff0_reg[11]_i_1_n_6 ,\buff0_reg[11]_i_1_n_7 }),
        .S({\buff0[11]_i_6_n_0 ,\buff0[11]_i_7_n_0 ,\buff0[11]_i_8_n_0 ,\buff0[11]_i_9_n_0 }));
  FDRE \buff0_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[15]_i_1_n_7 ),
        .Q(buff0_reg[12]),
        .R(1'b0));
  FDRE \buff0_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[15]_i_1_n_6 ),
        .Q(buff0_reg[13]),
        .R(1'b0));
  FDRE \buff0_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[15]_i_1_n_5 ),
        .Q(buff0_reg[14]),
        .R(1'b0));
  FDRE \buff0_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[15]_i_1_n_4 ),
        .Q(buff0_reg[15]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 23x3}}" *) 
  CARRY4 \buff0_reg[15]_i_1 
       (.CI(\buff0_reg[11]_i_1_n_0 ),
        .CO({\buff0_reg[15]_i_1_n_0 ,\buff0_reg[15]_i_1_n_1 ,\buff0_reg[15]_i_1_n_2 ,\buff0_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff0[15]_i_2_n_0 ,\buff0[15]_i_3_n_0 ,\buff0[15]_i_4_n_0 ,\buff0[15]_i_5_n_0 }),
        .O({\buff0_reg[15]_i_1_n_4 ,\buff0_reg[15]_i_1_n_5 ,\buff0_reg[15]_i_1_n_6 ,\buff0_reg[15]_i_1_n_7 }),
        .S({\buff0[15]_i_6_n_0 ,\buff0[15]_i_7_n_0 ,\buff0[15]_i_8_n_0 ,\buff0[15]_i_9_n_0 }));
  FDRE \buff0_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[19]_i_1_n_7 ),
        .Q(buff0_reg[16]),
        .R(1'b0));
  FDRE \buff0_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[19]_i_1_n_6 ),
        .Q(buff0_reg[17]),
        .R(1'b0));
  FDRE \buff0_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[19]_i_1_n_5 ),
        .Q(buff0_reg[18]),
        .R(1'b0));
  FDRE \buff0_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[19]_i_1_n_4 ),
        .Q(buff0_reg[19]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 23x3}}" *) 
  CARRY4 \buff0_reg[19]_i_1 
       (.CI(\buff0_reg[15]_i_1_n_0 ),
        .CO({\buff0_reg[19]_i_1_n_0 ,\buff0_reg[19]_i_1_n_1 ,\buff0_reg[19]_i_1_n_2 ,\buff0_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff0[19]_i_2_n_0 ,\buff0[19]_i_3_n_0 ,\buff0[19]_i_4_n_0 ,\buff0[19]_i_5_n_0 }),
        .O({\buff0_reg[19]_i_1_n_4 ,\buff0_reg[19]_i_1_n_5 ,\buff0_reg[19]_i_1_n_6 ,\buff0_reg[19]_i_1_n_7 }),
        .S({\buff0[19]_i_6_n_0 ,\buff0[19]_i_7_n_0 ,\buff0[19]_i_8_n_0 ,\buff0[19]_i_9_n_0 }));
  FDRE \buff0_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[3]_i_1_n_6 ),
        .Q(buff0_reg[1]),
        .R(1'b0));
  FDRE \buff0_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[20]_i_1_n_7 ),
        .Q(buff0_reg[20]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 23x3}}" *) 
  CARRY4 \buff0_reg[20]_i_1 
       (.CI(\buff0_reg[19]_i_1_n_0 ),
        .CO(\NLW_buff0_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_buff0_reg[20]_i_1_O_UNCONNECTED [3:1],\buff0_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\buff0[20]_i_2_n_0 }));
  FDRE \buff0_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[3]_i_1_n_5 ),
        .Q(buff0_reg[2]),
        .R(1'b0));
  FDRE \buff0_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[3]_i_1_n_4 ),
        .Q(buff0_reg[3]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 23x3}}" *) 
  CARRY4 \buff0_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\buff0_reg[3]_i_1_n_0 ,\buff0_reg[3]_i_1_n_1 ,\buff0_reg[3]_i_1_n_2 ,\buff0_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff0[3]_i_2_n_0 ,\buff0[3]_i_3_n_0 ,\buff0[3]_i_4_n_0 ,1'b0}),
        .O({\buff0_reg[3]_i_1_n_4 ,\buff0_reg[3]_i_1_n_5 ,\buff0_reg[3]_i_1_n_6 ,\buff0_reg[3]_i_1_n_7 }),
        .S({\buff0[3]_i_5_n_0 ,\buff0[3]_i_6_n_0 ,\buff0[3]_i_7_n_0 ,\buff0[3]_i_8_n_0 }));
  FDRE \buff0_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[7]_i_1_n_7 ),
        .Q(buff0_reg[4]),
        .R(1'b0));
  FDRE \buff0_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[7]_i_1_n_6 ),
        .Q(buff0_reg[5]),
        .R(1'b0));
  FDRE \buff0_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[7]_i_1_n_5 ),
        .Q(buff0_reg[6]),
        .R(1'b0));
  FDRE \buff0_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[7]_i_1_n_4 ),
        .Q(buff0_reg[7]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-9 {cell *THIS*} {string 23x3}}" *) 
  CARRY4 \buff0_reg[7]_i_1 
       (.CI(\buff0_reg[3]_i_1_n_0 ),
        .CO({\buff0_reg[7]_i_1_n_0 ,\buff0_reg[7]_i_1_n_1 ,\buff0_reg[7]_i_1_n_2 ,\buff0_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\buff0[7]_i_2_n_0 ,\buff0[7]_i_3_n_0 ,\buff0[7]_i_4_n_0 ,\buff0[7]_i_5_n_0 }),
        .O({\buff0_reg[7]_i_1_n_4 ,\buff0_reg[7]_i_1_n_5 ,\buff0_reg[7]_i_1_n_6 ,\buff0_reg[7]_i_1_n_7 }),
        .S({\buff0[7]_i_6_n_0 ,\buff0[7]_i_7_n_0 ,\buff0[7]_i_8_n_0 ,\buff0[7]_i_9_n_0 }));
  FDRE \buff0_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[11]_i_1_n_7 ),
        .Q(buff0_reg[8]),
        .R(1'b0));
  FDRE \buff0_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\buff0_reg[11]_i_1_n_6 ),
        .Q(buff0_reg[9]),
        .R(1'b0));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(1),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    buff0_reg__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a_i}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_buff0_reg__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,b_i[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_buff0_reg__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_buff0_reg__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_buff0_reg__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b1),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_buff0_reg__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_buff0_reg__0_OVERFLOW_UNCONNECTED),
        .P({buff0_reg__0_n_58,buff0_reg__0_n_59,buff0_reg__0_n_60,buff0_reg__0_n_61,buff0_reg__0_n_62,buff0_reg__0_n_63,buff0_reg__0_n_64,buff0_reg__0_n_65,buff0_reg__0_n_66,buff0_reg__0_n_67,buff0_reg__0_n_68,buff0_reg__0_n_69,buff0_reg__0_n_70,buff0_reg__0_n_71,buff0_reg__0_n_72,buff0_reg__0_n_73,buff0_reg__0_n_74,buff0_reg__0_n_75,buff0_reg__0_n_76,buff0_reg__0_n_77,buff0_reg__0_n_78,buff0_reg__0_n_79,buff0_reg__0_n_80,buff0_reg__0_n_81,buff0_reg__0_n_82,buff0_reg__0_n_83,buff0_reg__0_n_84,buff0_reg__0_n_85,buff0_reg__0_n_86,buff0_reg__0_n_87,buff0_reg__0_n_88,buff0_reg__0_n_89,buff0_reg__0_n_90,buff0_reg__0_n_91,buff0_reg__0_n_92,buff0_reg__0_n_93,buff0_reg__0_n_94,buff0_reg__0_n_95,buff0_reg__0_n_96,buff0_reg__0_n_97,buff0_reg__0_n_98,buff0_reg__0_n_99,buff0_reg__0_n_100,buff0_reg__0_n_101,buff0_reg__0_n_102,buff0_reg__0_n_103,buff0_reg__0_n_104,buff0_reg__0_n_105}),
        .PATTERNBDETECT(NLW_buff0_reg__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_buff0_reg__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_buff0_reg__0_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_buff0_reg__0_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[11]_i_2 
       (.I0(buff0_reg__0_n_77),
        .I1(buff0_reg[11]),
        .O(\buff1[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[11]_i_3 
       (.I0(buff0_reg__0_n_78),
        .I1(buff0_reg[10]),
        .O(\buff1[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[11]_i_4 
       (.I0(buff0_reg__0_n_79),
        .I1(buff0_reg[9]),
        .O(\buff1[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[11]_i_5 
       (.I0(buff0_reg__0_n_80),
        .I1(buff0_reg[8]),
        .O(\buff1[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[15]_i_2 
       (.I0(buff0_reg__0_n_73),
        .I1(buff0_reg[15]),
        .O(\buff1[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[15]_i_3 
       (.I0(buff0_reg__0_n_74),
        .I1(buff0_reg[14]),
        .O(\buff1[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[15]_i_4 
       (.I0(buff0_reg__0_n_75),
        .I1(buff0_reg[13]),
        .O(\buff1[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[15]_i_5 
       (.I0(buff0_reg__0_n_76),
        .I1(buff0_reg[12]),
        .O(\buff1[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[19]_i_2 
       (.I0(buff0_reg__0_n_69),
        .I1(buff0_reg[19]),
        .O(\buff1[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[19]_i_3 
       (.I0(buff0_reg__0_n_70),
        .I1(buff0_reg[18]),
        .O(\buff1[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[19]_i_4 
       (.I0(buff0_reg__0_n_71),
        .I1(buff0_reg[17]),
        .O(\buff1[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[19]_i_5 
       (.I0(buff0_reg__0_n_72),
        .I1(buff0_reg[16]),
        .O(\buff1[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[20]_i_2 
       (.I0(buff0_reg__0_n_68),
        .I1(buff0_reg[20]),
        .O(\buff1[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[3]_i_2 
       (.I0(buff0_reg__0_n_85),
        .I1(buff0_reg[3]),
        .O(\buff1[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[3]_i_3 
       (.I0(buff0_reg__0_n_86),
        .I1(buff0_reg[2]),
        .O(\buff1[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[3]_i_4 
       (.I0(buff0_reg__0_n_87),
        .I1(buff0_reg[1]),
        .O(\buff1[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[3]_i_5 
       (.I0(buff0_reg__0_n_88),
        .I1(buff0_reg[0]),
        .O(\buff1[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[7]_i_2 
       (.I0(buff0_reg__0_n_81),
        .I1(buff0_reg[7]),
        .O(\buff1[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[7]_i_3 
       (.I0(buff0_reg__0_n_82),
        .I1(buff0_reg[6]),
        .O(\buff1[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[7]_i_4 
       (.I0(buff0_reg__0_n_83),
        .I1(buff0_reg[5]),
        .O(\buff1[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \buff1[7]_i_5 
       (.I0(buff0_reg__0_n_84),
        .I1(buff0_reg[4]),
        .O(\buff1[7]_i_5_n_0 ));
  FDRE \buff1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[0]),
        .Q(\tmp_3_reg_217_reg[37] [17]),
        .R(1'b0));
  FDRE \buff1_reg[0]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_105),
        .Q(\tmp_3_reg_217_reg[37] [0]),
        .R(1'b0));
  FDRE \buff1_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[10]),
        .Q(\tmp_3_reg_217_reg[37] [27]),
        .R(1'b0));
  FDRE \buff1_reg[10]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_95),
        .Q(\tmp_3_reg_217_reg[37] [10]),
        .R(1'b0));
  FDRE \buff1_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[11]),
        .Q(\tmp_3_reg_217_reg[37] [28]),
        .R(1'b0));
  FDRE \buff1_reg[11]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_94),
        .Q(\tmp_3_reg_217_reg[37] [11]),
        .R(1'b0));
  CARRY4 \buff1_reg[11]_i_1 
       (.CI(\buff1_reg[7]_i_1_n_0 ),
        .CO({\buff1_reg[11]_i_1_n_0 ,\buff1_reg[11]_i_1_n_1 ,\buff1_reg[11]_i_1_n_2 ,\buff1_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({buff0_reg__0_n_77,buff0_reg__0_n_78,buff0_reg__0_n_79,buff0_reg__0_n_80}),
        .O(tmp_product[11:8]),
        .S({\buff1[11]_i_2_n_0 ,\buff1[11]_i_3_n_0 ,\buff1[11]_i_4_n_0 ,\buff1[11]_i_5_n_0 }));
  FDRE \buff1_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[12]),
        .Q(\tmp_3_reg_217_reg[37] [29]),
        .R(1'b0));
  FDRE \buff1_reg[12]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_93),
        .Q(\tmp_3_reg_217_reg[37] [12]),
        .R(1'b0));
  FDRE \buff1_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[13]),
        .Q(\tmp_3_reg_217_reg[37] [30]),
        .R(1'b0));
  FDRE \buff1_reg[13]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_92),
        .Q(\tmp_3_reg_217_reg[37] [13]),
        .R(1'b0));
  FDRE \buff1_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[14]),
        .Q(\tmp_3_reg_217_reg[37] [31]),
        .R(1'b0));
  FDRE \buff1_reg[14]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_91),
        .Q(\tmp_3_reg_217_reg[37] [14]),
        .R(1'b0));
  FDRE \buff1_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[15]),
        .Q(\tmp_3_reg_217_reg[37] [32]),
        .R(1'b0));
  FDRE \buff1_reg[15]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_90),
        .Q(\tmp_3_reg_217_reg[37] [15]),
        .R(1'b0));
  CARRY4 \buff1_reg[15]_i_1 
       (.CI(\buff1_reg[11]_i_1_n_0 ),
        .CO({\buff1_reg[15]_i_1_n_0 ,\buff1_reg[15]_i_1_n_1 ,\buff1_reg[15]_i_1_n_2 ,\buff1_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({buff0_reg__0_n_73,buff0_reg__0_n_74,buff0_reg__0_n_75,buff0_reg__0_n_76}),
        .O(tmp_product[15:12]),
        .S({\buff1[15]_i_2_n_0 ,\buff1[15]_i_3_n_0 ,\buff1[15]_i_4_n_0 ,\buff1[15]_i_5_n_0 }));
  FDRE \buff1_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[16]),
        .Q(\tmp_3_reg_217_reg[37] [33]),
        .R(1'b0));
  FDRE \buff1_reg[16]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_89),
        .Q(\tmp_3_reg_217_reg[37] [16]),
        .R(1'b0));
  FDRE \buff1_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[17]),
        .Q(\tmp_3_reg_217_reg[37] [34]),
        .R(1'b0));
  FDRE \buff1_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[18]),
        .Q(\tmp_3_reg_217_reg[37] [35]),
        .R(1'b0));
  FDRE \buff1_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[19]),
        .Q(\tmp_3_reg_217_reg[37] [36]),
        .R(1'b0));
  CARRY4 \buff1_reg[19]_i_1 
       (.CI(\buff1_reg[15]_i_1_n_0 ),
        .CO({\buff1_reg[19]_i_1_n_0 ,\buff1_reg[19]_i_1_n_1 ,\buff1_reg[19]_i_1_n_2 ,\buff1_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({buff0_reg__0_n_69,buff0_reg__0_n_70,buff0_reg__0_n_71,buff0_reg__0_n_72}),
        .O(tmp_product[19:16]),
        .S({\buff1[19]_i_2_n_0 ,\buff1[19]_i_3_n_0 ,\buff1[19]_i_4_n_0 ,\buff1[19]_i_5_n_0 }));
  FDRE \buff1_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[1]),
        .Q(\tmp_3_reg_217_reg[37] [18]),
        .R(1'b0));
  FDRE \buff1_reg[1]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_104),
        .Q(\tmp_3_reg_217_reg[37] [1]),
        .R(1'b0));
  FDRE \buff1_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[20]),
        .Q(\tmp_3_reg_217_reg[37] [37]),
        .R(1'b0));
  CARRY4 \buff1_reg[20]_i_1 
       (.CI(\buff1_reg[19]_i_1_n_0 ),
        .CO(\NLW_buff1_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_buff1_reg[20]_i_1_O_UNCONNECTED [3:1],tmp_product[20]}),
        .S({1'b0,1'b0,1'b0,\buff1[20]_i_2_n_0 }));
  FDRE \buff1_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[2]),
        .Q(\tmp_3_reg_217_reg[37] [19]),
        .R(1'b0));
  FDRE \buff1_reg[2]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_103),
        .Q(\tmp_3_reg_217_reg[37] [2]),
        .R(1'b0));
  FDRE \buff1_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[3]),
        .Q(\tmp_3_reg_217_reg[37] [20]),
        .R(1'b0));
  FDRE \buff1_reg[3]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_102),
        .Q(\tmp_3_reg_217_reg[37] [3]),
        .R(1'b0));
  CARRY4 \buff1_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\buff1_reg[3]_i_1_n_0 ,\buff1_reg[3]_i_1_n_1 ,\buff1_reg[3]_i_1_n_2 ,\buff1_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({buff0_reg__0_n_85,buff0_reg__0_n_86,buff0_reg__0_n_87,buff0_reg__0_n_88}),
        .O(tmp_product[3:0]),
        .S({\buff1[3]_i_2_n_0 ,\buff1[3]_i_3_n_0 ,\buff1[3]_i_4_n_0 ,\buff1[3]_i_5_n_0 }));
  FDRE \buff1_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[4]),
        .Q(\tmp_3_reg_217_reg[37] [21]),
        .R(1'b0));
  FDRE \buff1_reg[4]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_101),
        .Q(\tmp_3_reg_217_reg[37] [4]),
        .R(1'b0));
  FDRE \buff1_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[5]),
        .Q(\tmp_3_reg_217_reg[37] [22]),
        .R(1'b0));
  FDRE \buff1_reg[5]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_100),
        .Q(\tmp_3_reg_217_reg[37] [5]),
        .R(1'b0));
  FDRE \buff1_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[6]),
        .Q(\tmp_3_reg_217_reg[37] [23]),
        .R(1'b0));
  FDRE \buff1_reg[6]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_99),
        .Q(\tmp_3_reg_217_reg[37] [6]),
        .R(1'b0));
  FDRE \buff1_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[7]),
        .Q(\tmp_3_reg_217_reg[37] [24]),
        .R(1'b0));
  FDRE \buff1_reg[7]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_98),
        .Q(\tmp_3_reg_217_reg[37] [7]),
        .R(1'b0));
  CARRY4 \buff1_reg[7]_i_1 
       (.CI(\buff1_reg[3]_i_1_n_0 ),
        .CO({\buff1_reg[7]_i_1_n_0 ,\buff1_reg[7]_i_1_n_1 ,\buff1_reg[7]_i_1_n_2 ,\buff1_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({buff0_reg__0_n_81,buff0_reg__0_n_82,buff0_reg__0_n_83,buff0_reg__0_n_84}),
        .O(tmp_product[7:4]),
        .S({\buff1[7]_i_2_n_0 ,\buff1[7]_i_3_n_0 ,\buff1[7]_i_4_n_0 ,\buff1[7]_i_5_n_0 }));
  FDRE \buff1_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[8]),
        .Q(\tmp_3_reg_217_reg[37] [25]),
        .R(1'b0));
  FDRE \buff1_reg[8]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_97),
        .Q(\tmp_3_reg_217_reg[37] [8]),
        .R(1'b0));
  FDRE \buff1_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(tmp_product[9]),
        .Q(\tmp_3_reg_217_reg[37] [26]),
        .R(1'b0));
  FDRE \buff1_reg[9]__0 
       (.C(ap_clk),
        .CE(1'b1),
        .D(buff0_reg__0_n_96),
        .Q(\tmp_3_reg_217_reg[37] [9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(a_i[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b1),
        .O(a_i[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(a_i[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b1),
        .O(a_i[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b1),
        .O(a_i[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(a_i[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b1),
        .O(a_i[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b1),
        .O(a_i[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b1),
        .O(a_i[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(a_i[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(a_i[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(a_i[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(a_i[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b1),
        .O(a_i[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b1),
        .O(a_i[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(a_i[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(a_i[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(a_i[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(a_i[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(a_i[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b1),
        .O(a_i[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b1),
        .O(a_i[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_9_reg_222[0]_i_1 
       (.I0(\tmp_3_reg_217_reg[37] [35]),
        .I1(\ap_CS_fsm_reg[4] ),
        .I2(RESIZE[0]),
        .O(\tmp_9_reg_222_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_9_reg_222[1]_i_1 
       (.I0(\tmp_3_reg_217_reg[37] [36]),
        .I1(\ap_CS_fsm_reg[4] ),
        .I2(RESIZE[1]),
        .O(\tmp_9_reg_222_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \tmp_9_reg_222[2]_i_1 
       (.I0(\tmp_3_reg_217_reg[37] [37]),
        .I1(\ap_CS_fsm_reg[4] ),
        .I2(RESIZE[2]),
        .O(\tmp_9_reg_222_reg[2] ));
endmodule

(* CHECK_LICENSE_TYPE = "system_leds_controller_0_0,leds_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "leds_controller,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module system_leds_controller_0_1
   (ap_clk,
    ap_rst,
    out_V_V_din,
    out_V_V_full_n,
    out_V_V_write,
    x,
    col_V);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst RST" *) input ap_rst;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 out_V_V WR_DATA" *) output [6:0]out_V_V_din;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 out_V_V FULL_N" *) input out_V_V_full_n;
  (* x_interface_info = "xilinx.com:interface:acc_fifo_write:1.0 out_V_V WR_EN" *) output out_V_V_write;
  (* x_interface_info = "xilinx.com:signal:data:1.0 x DATA" *) input [15:0]x;
  (* x_interface_info = "xilinx.com:signal:data:1.0 col_V DATA" *) input [3:0]col_V;

  wire ap_clk;
  wire ap_rst;
  wire [3:0]col_V;
  wire [6:0]out_V_V_din;
  wire out_V_V_full_n;
  wire out_V_V_write;
  wire [15:0]x;

  system_leds_controller_0_1_leds_controller U0
       (.ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .col_V(col_V),
        .out_V_V_din(out_V_V_din),
        .out_V_V_full_n(out_V_V_full_n),
        .out_V_V_write(out_V_V_write),
        .x(x));
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
