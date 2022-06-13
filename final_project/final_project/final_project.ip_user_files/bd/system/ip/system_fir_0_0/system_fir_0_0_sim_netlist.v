// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue May 25 17:05:43 2021
// Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_fir_0_0/system_fir_0_0_sim_netlist.v
// Design      : system_fir_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_fir_0_0,fir,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fir,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module system_fir_0_0
   (y_ap_vld,
    ap_clk,
    ap_rst,
    y,
    x);
  output y_ap_vld;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst RST" *) input ap_rst;
  (* x_interface_info = "xilinx.com:signal:data:1.0 y DATA" *) output [15:0]y;
  (* x_interface_info = "xilinx.com:signal:data:1.0 x DATA" *) input [15:0]x;

  wire ap_clk;
  wire ap_rst;
  wire [15:0]x;
  wire [15:0]y;
  wire y_ap_vld;

  system_fir_0_0_fir U0
       (.ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .x(x),
        .y(y),
        .y_ap_vld(y_ap_vld));
endmodule

(* ORIG_REF_NAME = "fir" *) 
module system_fir_0_0_fir
   (ap_clk,
    ap_rst,
    y,
    y_ap_vld,
    x);
  input ap_clk;
  input ap_rst;
  output [15:0]y;
  output y_ap_vld;
  input [15:0]x;

  wire [25:0]acc_fu_173_p2;
  wire [5:5]address0;
  wire \ap_CS_fsm_reg_n_2_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire [4:1]ap_NS_fsm;
  wire ap_clk;
  wire ap_rst;
  wire ce0;
  wire fir_mac_muladd_16dEe_U2_n_10;
  wire fir_mac_muladd_16dEe_U2_n_11;
  wire fir_mac_muladd_16dEe_U2_n_12;
  wire fir_mac_muladd_16dEe_U2_n_13;
  wire fir_mac_muladd_16dEe_U2_n_14;
  wire fir_mac_muladd_16dEe_U2_n_15;
  wire fir_mac_muladd_16dEe_U2_n_16;
  wire fir_mac_muladd_16dEe_U2_n_17;
  wire fir_mac_muladd_16dEe_U2_n_18;
  wire fir_mac_muladd_16dEe_U2_n_19;
  wire fir_mac_muladd_16dEe_U2_n_2;
  wire fir_mac_muladd_16dEe_U2_n_20;
  wire fir_mac_muladd_16dEe_U2_n_21;
  wire fir_mac_muladd_16dEe_U2_n_22;
  wire fir_mac_muladd_16dEe_U2_n_23;
  wire fir_mac_muladd_16dEe_U2_n_24;
  wire fir_mac_muladd_16dEe_U2_n_25;
  wire fir_mac_muladd_16dEe_U2_n_26;
  wire fir_mac_muladd_16dEe_U2_n_27;
  wire fir_mac_muladd_16dEe_U2_n_28;
  wire fir_mac_muladd_16dEe_U2_n_29;
  wire fir_mac_muladd_16dEe_U2_n_30;
  wire fir_mac_muladd_16dEe_U2_n_31;
  wire fir_mac_muladd_16dEe_U2_n_32;
  wire fir_mac_muladd_16dEe_U2_n_33;
  wire fir_mac_muladd_16dEe_U2_n_34;
  wire fir_mac_muladd_16dEe_U2_n_35;
  wire fir_mac_muladd_16dEe_U2_n_5;
  wire fir_mac_muladd_16dEe_U2_n_6;
  wire fir_mac_muladd_16dEe_U2_n_7;
  wire fir_mac_muladd_16dEe_U2_n_8;
  wire fir_mac_muladd_16dEe_U2_n_9;
  wire [5:0]i_1_reg_220;
  wire [5:0]i_cast1_reg_212;
  wire i_reg_110;
  wire \i_reg_110_reg_n_2_[0] ;
  wire \i_reg_110_reg_n_2_[1] ;
  wire \i_reg_110_reg_n_2_[2] ;
  wire \i_reg_110_reg_n_2_[3] ;
  wire \i_reg_110_reg_n_2_[4] ;
  wire \i_reg_110_reg_n_2_[5] ;
  wire [5:0]p_0_in;
  wire shift_reg_U_n_10;
  wire shift_reg_U_n_11;
  wire shift_reg_U_n_12;
  wire shift_reg_U_n_13;
  wire shift_reg_U_n_14;
  wire shift_reg_U_n_15;
  wire shift_reg_U_n_16;
  wire shift_reg_U_n_17;
  wire shift_reg_U_n_2;
  wire shift_reg_U_n_3;
  wire shift_reg_U_n_36;
  wire shift_reg_U_n_37;
  wire shift_reg_U_n_4;
  wire shift_reg_U_n_5;
  wire shift_reg_U_n_6;
  wire shift_reg_U_n_7;
  wire shift_reg_U_n_8;
  wire shift_reg_U_n_9;
  wire [15:0]shift_reg_q0;
  wire [15:0]x;
  wire [15:0]y;
  wire y_ap_vld;

  LUT5 #(
    .INIT(32'h00000001)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state6),
        .I1(ap_CS_fsm_state3),
        .I2(ce0),
        .I3(ap_CS_fsm_state5),
        .I4(ap_CS_fsm_state2),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(y_ap_vld),
        .Q(\ap_CS_fsm_reg_n_2_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state2),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ce0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
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
  system_fir_0_0_fir_mac_muladd_10cud fir_mac_muladd_10cud_U1
       (.P({fir_mac_muladd_16dEe_U2_n_5,fir_mac_muladd_16dEe_U2_n_6,fir_mac_muladd_16dEe_U2_n_7,fir_mac_muladd_16dEe_U2_n_8,fir_mac_muladd_16dEe_U2_n_9,fir_mac_muladd_16dEe_U2_n_10,fir_mac_muladd_16dEe_U2_n_11,fir_mac_muladd_16dEe_U2_n_12,fir_mac_muladd_16dEe_U2_n_13,fir_mac_muladd_16dEe_U2_n_14,fir_mac_muladd_16dEe_U2_n_15,fir_mac_muladd_16dEe_U2_n_16,fir_mac_muladd_16dEe_U2_n_17,fir_mac_muladd_16dEe_U2_n_18,fir_mac_muladd_16dEe_U2_n_19,fir_mac_muladd_16dEe_U2_n_20,fir_mac_muladd_16dEe_U2_n_21,fir_mac_muladd_16dEe_U2_n_22,fir_mac_muladd_16dEe_U2_n_23,fir_mac_muladd_16dEe_U2_n_24,fir_mac_muladd_16dEe_U2_n_25,fir_mac_muladd_16dEe_U2_n_26,fir_mac_muladd_16dEe_U2_n_27,fir_mac_muladd_16dEe_U2_n_28,fir_mac_muladd_16dEe_U2_n_29,fir_mac_muladd_16dEe_U2_n_30,fir_mac_muladd_16dEe_U2_n_31,fir_mac_muladd_16dEe_U2_n_32,fir_mac_muladd_16dEe_U2_n_33,fir_mac_muladd_16dEe_U2_n_34,fir_mac_muladd_16dEe_U2_n_35}),
        .x(x),
        .y(y));
  system_fir_0_0_fir_mac_muladd_16dEe fir_mac_muladd_16dEe_U2
       (.B({shift_reg_U_n_2,shift_reg_U_n_3,shift_reg_U_n_4,shift_reg_U_n_5,shift_reg_U_n_6,shift_reg_U_n_7,shift_reg_U_n_8,shift_reg_U_n_9,shift_reg_U_n_10,shift_reg_U_n_11,shift_reg_U_n_12,shift_reg_U_n_13,shift_reg_U_n_14,shift_reg_U_n_15,shift_reg_U_n_16,shift_reg_U_n_17}),
        .CEB1(shift_reg_U_n_37),
        .CEP(ap_NS_fsm[3]),
        .P({fir_mac_muladd_16dEe_U2_n_5,fir_mac_muladd_16dEe_U2_n_6,fir_mac_muladd_16dEe_U2_n_7,fir_mac_muladd_16dEe_U2_n_8,fir_mac_muladd_16dEe_U2_n_9,fir_mac_muladd_16dEe_U2_n_10,fir_mac_muladd_16dEe_U2_n_11,fir_mac_muladd_16dEe_U2_n_12,fir_mac_muladd_16dEe_U2_n_13,fir_mac_muladd_16dEe_U2_n_14,fir_mac_muladd_16dEe_U2_n_15,fir_mac_muladd_16dEe_U2_n_16,fir_mac_muladd_16dEe_U2_n_17,fir_mac_muladd_16dEe_U2_n_18,fir_mac_muladd_16dEe_U2_n_19,fir_mac_muladd_16dEe_U2_n_20,fir_mac_muladd_16dEe_U2_n_21,fir_mac_muladd_16dEe_U2_n_22,fir_mac_muladd_16dEe_U2_n_23,fir_mac_muladd_16dEe_U2_n_24,fir_mac_muladd_16dEe_U2_n_25,fir_mac_muladd_16dEe_U2_n_26,fir_mac_muladd_16dEe_U2_n_27,fir_mac_muladd_16dEe_U2_n_28,fir_mac_muladd_16dEe_U2_n_29,fir_mac_muladd_16dEe_U2_n_30,fir_mac_muladd_16dEe_U2_n_31,fir_mac_muladd_16dEe_U2_n_32,fir_mac_muladd_16dEe_U2_n_33,fir_mac_muladd_16dEe_U2_n_34,fir_mac_muladd_16dEe_U2_n_35}),
        .Q({\i_reg_110_reg_n_2_[5] ,\i_reg_110_reg_n_2_[4] ,\i_reg_110_reg_n_2_[3] ,\i_reg_110_reg_n_2_[2] ,\i_reg_110_reg_n_2_[1] ,\i_reg_110_reg_n_2_[0] }),
        .address0(address0),
        .\ap_CS_fsm_reg[5] ({ap_CS_fsm_state6,ap_CS_fsm_state5,ce0,ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .ap_clk(ap_clk),
        .\i_cast1_reg_212_reg[5] (i_cast1_reg_212[5]),
        .\i_reg_110_reg[1] (shift_reg_U_n_36),
        .out(acc_fu_173_p2),
        .\q0_reg[15] (fir_mac_muladd_16dEe_U2_n_2));
  system_fir_0_0_fir_mul_mul_16s_1bkb fir_mul_mul_16s_1bkb_U0
       (.Q(shift_reg_q0),
        .out(acc_fu_173_p2));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_1_reg_220[0]_i_1 
       (.I0(\i_reg_110_reg_n_2_[0] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \i_1_reg_220[1]_i_1 
       (.I0(\i_reg_110_reg_n_2_[1] ),
        .I1(\i_reg_110_reg_n_2_[0] ),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \i_1_reg_220[2]_i_1 
       (.I0(\i_reg_110_reg_n_2_[0] ),
        .I1(\i_reg_110_reg_n_2_[1] ),
        .I2(\i_reg_110_reg_n_2_[2] ),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \i_1_reg_220[4]_i_1 
       (.I0(\i_reg_110_reg_n_2_[4] ),
        .I1(\i_reg_110_reg_n_2_[2] ),
        .I2(\i_reg_110_reg_n_2_[3] ),
        .I3(\i_reg_110_reg_n_2_[0] ),
        .I4(\i_reg_110_reg_n_2_[1] ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \i_1_reg_220[5]_i_1 
       (.I0(\i_reg_110_reg_n_2_[5] ),
        .I1(\i_reg_110_reg_n_2_[4] ),
        .I2(\i_reg_110_reg_n_2_[1] ),
        .I3(\i_reg_110_reg_n_2_[0] ),
        .I4(\i_reg_110_reg_n_2_[3] ),
        .I5(\i_reg_110_reg_n_2_[2] ),
        .O(p_0_in[5]));
  FDRE \i_1_reg_220_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(p_0_in[0]),
        .Q(i_1_reg_220[0]),
        .R(1'b0));
  FDRE \i_1_reg_220_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(p_0_in[1]),
        .Q(i_1_reg_220[1]),
        .R(1'b0));
  FDRE \i_1_reg_220_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(p_0_in[2]),
        .Q(i_1_reg_220[2]),
        .R(1'b0));
  FDRE \i_1_reg_220_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(p_0_in[3]),
        .Q(i_1_reg_220[3]),
        .R(1'b0));
  FDRE \i_1_reg_220_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(p_0_in[4]),
        .Q(i_1_reg_220[4]),
        .R(1'b0));
  FDRE \i_1_reg_220_reg[5] 
       (.C(ap_clk),
        .CE(ap_NS_fsm[4]),
        .D(p_0_in[5]),
        .Q(i_1_reg_220[5]),
        .R(1'b0));
  FDRE \i_cast1_reg_212_reg[0] 
       (.C(ap_clk),
        .CE(ce0),
        .D(\i_reg_110_reg_n_2_[0] ),
        .Q(i_cast1_reg_212[0]),
        .R(1'b0));
  FDRE \i_cast1_reg_212_reg[1] 
       (.C(ap_clk),
        .CE(ce0),
        .D(\i_reg_110_reg_n_2_[1] ),
        .Q(i_cast1_reg_212[1]),
        .R(1'b0));
  FDRE \i_cast1_reg_212_reg[2] 
       (.C(ap_clk),
        .CE(ce0),
        .D(\i_reg_110_reg_n_2_[2] ),
        .Q(i_cast1_reg_212[2]),
        .R(1'b0));
  FDRE \i_cast1_reg_212_reg[3] 
       (.C(ap_clk),
        .CE(ce0),
        .D(\i_reg_110_reg_n_2_[3] ),
        .Q(i_cast1_reg_212[3]),
        .R(1'b0));
  FDRE \i_cast1_reg_212_reg[4] 
       (.C(ap_clk),
        .CE(ce0),
        .D(\i_reg_110_reg_n_2_[4] ),
        .Q(i_cast1_reg_212[4]),
        .R(1'b0));
  FDRE \i_cast1_reg_212_reg[5] 
       (.C(ap_clk),
        .CE(ce0),
        .D(\i_reg_110_reg_n_2_[5] ),
        .Q(i_cast1_reg_212[5]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \i_reg_110[5]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(ap_CS_fsm_state6),
        .O(i_reg_110));
  FDSE \i_reg_110_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_220[0]),
        .Q(\i_reg_110_reg_n_2_[0] ),
        .S(i_reg_110));
  FDRE \i_reg_110_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_220[1]),
        .Q(\i_reg_110_reg_n_2_[1] ),
        .R(i_reg_110));
  FDRE \i_reg_110_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_220[2]),
        .Q(\i_reg_110_reg_n_2_[2] ),
        .R(i_reg_110));
  FDSE \i_reg_110_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_220[3]),
        .Q(\i_reg_110_reg_n_2_[3] ),
        .S(i_reg_110));
  FDSE \i_reg_110_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_220[4]),
        .Q(\i_reg_110_reg_n_2_[4] ),
        .S(i_reg_110));
  FDSE \i_reg_110_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state6),
        .D(i_1_reg_220[5]),
        .Q(\i_reg_110_reg_n_2_[5] ),
        .S(i_reg_110));
  system_fir_0_0_fir_shift_reg shift_reg_U
       (.D({shift_reg_U_n_2,shift_reg_U_n_3,shift_reg_U_n_4,shift_reg_U_n_5,shift_reg_U_n_6,shift_reg_U_n_7,shift_reg_U_n_8,shift_reg_U_n_9,shift_reg_U_n_10,shift_reg_U_n_11,shift_reg_U_n_12,shift_reg_U_n_13,shift_reg_U_n_14,shift_reg_U_n_15,shift_reg_U_n_16,shift_reg_U_n_17}),
        .E(shift_reg_U_n_37),
        .Q(shift_reg_q0),
        .\ap_CS_fsm_reg[3] (address0),
        .\ap_CS_fsm_reg[4] ({ap_CS_fsm_state5,ce0,\ap_CS_fsm_reg_n_2_[0] }),
        .ap_NS_fsm(ap_NS_fsm[4]),
        .ap_clk(ap_clk),
        .\i_1_reg_220_reg[3] (p_0_in[3]),
        .\i_1_reg_220_reg[5] (shift_reg_U_n_36),
        .\i_cast1_reg_212_reg[4] (i_cast1_reg_212[4:0]),
        .\i_reg_110_reg[4] (fir_mac_muladd_16dEe_U2_n_2),
        .\i_reg_110_reg[5] ({\i_reg_110_reg_n_2_[5] ,\i_reg_110_reg_n_2_[4] ,\i_reg_110_reg_n_2_[3] ,\i_reg_110_reg_n_2_[2] ,\i_reg_110_reg_n_2_[1] ,\i_reg_110_reg_n_2_[0] }),
        .x(x));
  LUT4 #(
    .INIT(16'h0200)) 
    y_ap_vld_INST_0
       (.I0(shift_reg_U_n_36),
        .I1(\i_reg_110_reg_n_2_[4] ),
        .I2(\i_reg_110_reg_n_2_[5] ),
        .I3(ce0),
        .O(y_ap_vld));
endmodule

(* ORIG_REF_NAME = "fir_mac_muladd_10cud" *) 
module system_fir_0_0_fir_mac_muladd_10cud
   (y,
    x,
    P);
  output [15:0]y;
  input [15:0]x;
  input [30:0]P;

  wire [30:0]P;
  wire [15:0]x;
  wire [15:0]y;

  system_fir_0_0_fir_mac_muladd_10cud_DSP48_1 fir_mac_muladd_10cud_DSP48_1_U
       (.P(P),
        .x(x),
        .y(y));
endmodule

(* ORIG_REF_NAME = "fir_mac_muladd_10cud_DSP48_1" *) 
module system_fir_0_0_fir_mac_muladd_10cud_DSP48_1
   (y,
    x,
    P);
  output [15:0]y;
  input [15:0]x;
  input [30:0]P;

  wire [30:0]P;
  wire p_n_100;
  wire p_n_101;
  wire p_n_102;
  wire p_n_103;
  wire p_n_104;
  wire p_n_105;
  wire p_n_106;
  wire p_n_107;
  wire p_n_93;
  wire p_n_94;
  wire p_n_95;
  wire p_n_96;
  wire p_n_97;
  wire p_n_98;
  wire p_n_99;
  wire [15:0]x;
  wire [15:0]y;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:31]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

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
    .CREG(0),
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
    p
       (.A({x[15],x[15],x[15],x[15],x[15],x[15],x[15],x[15],x[15],x[15],x[15],x[15],x[15],x[15],x}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({P[30],P[30],P[30],P[30],P[30],P[30],P[30],P[30],P[30],P[30],P[30],P[30],P[30],P[30],P[30],P[30],P[30],P}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:31],y,p_n_93,p_n_94,p_n_95,p_n_96,p_n_97,p_n_98,p_n_99,p_n_100,p_n_101,p_n_102,p_n_103,p_n_104,p_n_105,p_n_106,p_n_107}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "fir_mac_muladd_16dEe" *) 
module system_fir_0_0_fir_mac_muladd_16dEe
   (\q0_reg[15] ,
    address0,
    CEP,
    P,
    \i_reg_110_reg[1] ,
    Q,
    \ap_CS_fsm_reg[5] ,
    \i_cast1_reg_212_reg[5] ,
    CEB1,
    ap_clk,
    B,
    out);
  output \q0_reg[15] ;
  output [0:0]address0;
  output CEP;
  output [30:0]P;
  input \i_reg_110_reg[1] ;
  input [5:0]Q;
  input [4:0]\ap_CS_fsm_reg[5] ;
  input [0:0]\i_cast1_reg_212_reg[5] ;
  input CEB1;
  input ap_clk;
  input [15:0]B;
  input [25:0]out;

  wire [15:0]B;
  wire CEB1;
  wire CEP;
  wire [30:0]P;
  wire [5:0]Q;
  wire [0:0]address0;
  wire [4:0]\ap_CS_fsm_reg[5] ;
  wire ap_clk;
  wire [0:0]\i_cast1_reg_212_reg[5] ;
  wire \i_reg_110_reg[1] ;
  wire [25:0]out;
  wire \q0_reg[15] ;

  system_fir_0_0_fir_mac_muladd_16dEe_DSP48_2 fir_mac_muladd_16dEe_DSP48_2_U
       (.B(B),
        .CEB1(CEB1),
        .CEP(CEP),
        .P(P),
        .Q(Q),
        .address0(address0),
        .\ap_CS_fsm_reg[5] (\ap_CS_fsm_reg[5] ),
        .ap_clk(ap_clk),
        .\i_cast1_reg_212_reg[5] (\i_cast1_reg_212_reg[5] ),
        .\i_reg_110_reg[1] (\i_reg_110_reg[1] ),
        .out(out),
        .\q0_reg[15] (\q0_reg[15] ));
endmodule

(* ORIG_REF_NAME = "fir_mac_muladd_16dEe_DSP48_2" *) 
module system_fir_0_0_fir_mac_muladd_16dEe_DSP48_2
   (\q0_reg[15] ,
    address0,
    CEP,
    P,
    \i_reg_110_reg[1] ,
    Q,
    \ap_CS_fsm_reg[5] ,
    \i_cast1_reg_212_reg[5] ,
    CEB1,
    ap_clk,
    B,
    out);
  output \q0_reg[15] ;
  output [0:0]address0;
  output CEP;
  output [30:0]P;
  input \i_reg_110_reg[1] ;
  input [5:0]Q;
  input [4:0]\ap_CS_fsm_reg[5] ;
  input [0:0]\i_cast1_reg_212_reg[5] ;
  input CEB1;
  input ap_clk;
  input [15:0]B;
  input [25:0]out;

  wire [15:0]B;
  wire CEB1;
  wire CEP;
  wire [30:0]P;
  wire [5:0]Q;
  wire [0:0]address0;
  wire [4:0]\ap_CS_fsm_reg[5] ;
  wire ap_clk;
  wire g0_b0_n_2;
  wire g0_b10_n_2;
  wire g0_b11_n_2;
  wire g0_b14_n_2;
  wire g0_b15_n_2;
  wire g0_b1_n_2;
  wire g0_b2_n_2;
  wire g0_b3_n_2;
  wire g0_b4_n_2;
  wire g0_b5_n_2;
  wire g0_b6_n_2;
  wire g0_b7_n_2;
  wire g0_b8_n_2;
  wire g0_b9_n_2;
  wire [0:0]\i_cast1_reg_212_reg[5] ;
  wire \i_reg_110_reg[1] ;
  wire [25:0]out;
  wire p_i_1_n_2;
  wire p_n_71;
  wire p_n_72;
  wire p_n_73;
  wire p_n_74;
  wire p_n_75;
  wire p_n_76;
  wire \q0_reg[15] ;
  wire NLW_p_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_OVERFLOW_UNCONNECTED;
  wire NLW_p_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_CARRYOUT_UNCONNECTED;
  wire [47:37]NLW_p_P_UNCONNECTED;
  wire [47:0]NLW_p_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(\ap_CS_fsm_reg[5] [1]),
        .I1(\ap_CS_fsm_reg[5] [4]),
        .O(CEP));
  LUT6 #(
    .INIT(64'h0300865F27D30806)) 
    g0_b0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b0_n_2));
  LUT6 #(
    .INIT(64'h07D44194514C115F)) 
    g0_b1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b1_n_2));
  LUT6 #(
    .INIT(64'h06030CE252398603)) 
    g0_b10
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b10_n_2));
  LUT6 #(
    .INIT(64'h06030FDC89DF8603)) 
    g0_b11
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b11_n_2));
  LUT6 #(
    .INIT(64'h06030FC0F81F8603)) 
    g0_b14
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b14_n_2));
  LUT6 #(
    .INIT(64'h06030FC0D81F8603)) 
    g0_b15
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b15_n_2));
  LUT6 #(
    .INIT(64'h06148EEC71BB8943)) 
    g0_b2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b2_n_2));
  LUT6 #(
    .INIT(64'h01DC7F6974B7F1DC)) 
    g0_b3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b3_n_2));
  LUT6 #(
    .INIT(64'h0302EE15DD43BA06)) 
    g0_b4
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b4_n_2));
  LUT6 #(
    .INIT(64'h02FAD33222665AFA)) 
    g0_b5
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b5_n_2));
  LUT6 #(
    .INIT(64'h002122E68B3A2420)) 
    g0_b6
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b6_n_2));
  LUT6 #(
    .INIT(64'h068B6F500057B68B)) 
    g0_b7
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b7_n_2));
  LUT6 #(
    .INIT(64'h0273004888900672)) 
    g0_b8
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b8_n_2));
  LUT6 #(
    .INIT(64'h06030B4E23968603)) 
    g0_b9
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b9_n_2));
  DSP48E1 #(
    .ACASCREG(2),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(2),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(2),
    .BREG(2),
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
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p
       (.A({g0_b15_n_2,g0_b15_n_2,g0_b15_n_2,g0_b15_n_2,g0_b15_n_2,g0_b15_n_2,g0_b15_n_2,g0_b15_n_2,g0_b15_n_2,g0_b15_n_2,g0_b15_n_2,g0_b15_n_2,g0_b15_n_2,g0_b15_n_2,g0_b15_n_2,g0_b14_n_2,g0_b14_n_2,g0_b14_n_2,g0_b11_n_2,g0_b10_n_2,g0_b9_n_2,g0_b8_n_2,g0_b7_n_2,g0_b6_n_2,g0_b5_n_2,g0_b4_n_2,g0_b3_n_2,g0_b2_n_2,g0_b1_n_2,g0_b0_n_2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[15],B[15],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,out[25],out[25],out[25],out[25],out[25],out[25],out[25],out[25],out[25],out[25],out[25],out}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(\ap_CS_fsm_reg[5] [2]),
        .CEA2(\ap_CS_fsm_reg[5] [3]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(CEB1),
        .CEB2(\ap_CS_fsm_reg[5] [3]),
        .CEC(\ap_CS_fsm_reg[5] [0]),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,p_i_1_n_2,1'b0,\ap_CS_fsm_reg[5] [4],1'b0,\ap_CS_fsm_reg[5] [4]}),
        .OVERFLOW(NLW_p_OVERFLOW_UNCONNECTED),
        .P({NLW_p_P_UNCONNECTED[47:37],p_n_71,p_n_72,p_n_73,p_n_74,p_n_75,p_n_76,P}),
        .PATTERNBDETECT(NLW_p_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_p_UNDERFLOW_UNCONNECTED));
  LUT1 #(
    .INIT(2'h1)) 
    p_i_1
       (.I0(\ap_CS_fsm_reg[5] [4]),
        .O(p_i_1_n_2));
  LUT5 #(
    .INIT(32'h0000FDFF)) 
    ram_reg_0_31_0_0_i_8
       (.I0(\i_reg_110_reg[1] ),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(\ap_CS_fsm_reg[5] [2]),
        .I4(\ap_CS_fsm_reg[5] [3]),
        .O(\q0_reg[15] ));
  LUT6 #(
    .INIT(64'hFFFF0000D5DDD5DD)) 
    ram_reg_0_31_0_0_i_9
       (.I0(\ap_CS_fsm_reg[5] [2]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(\i_reg_110_reg[1] ),
        .I4(\i_cast1_reg_212_reg[5] ),
        .I5(\ap_CS_fsm_reg[5] [3]),
        .O(address0));
endmodule

(* ORIG_REF_NAME = "fir_mul_mul_16s_1bkb" *) 
module system_fir_0_0_fir_mul_mul_16s_1bkb
   (out,
    Q);
  output [25:0]out;
  input [15:0]Q;

  wire [15:0]Q;
  wire [25:0]out;

  system_fir_0_0_fir_mul_mul_16s_1bkb_DSP48_0 fir_mul_mul_16s_1bkb_DSP48_0_U
       (.Q(Q),
        .out(out));
endmodule

(* ORIG_REF_NAME = "fir_mul_mul_16s_1bkb_DSP48_0" *) 
module system_fir_0_0_fir_mul_mul_16s_1bkb_DSP48_0
   (out,
    Q);
  output [25:0]out;
  input [15:0]Q;

  (* RTL_KEEP = "true" *) wire [15:0]a_cvt;
  (* RTL_KEEP = "true" *) wire [9:0]b_cvt;
  (* RTL_KEEP = "true" *) wire [25:0]p_cvt;
  wire NLW_in00_CARRYCASCOUT_UNCONNECTED;
  wire NLW_in00_MULTSIGNOUT_UNCONNECTED;
  wire NLW_in00_OVERFLOW_UNCONNECTED;
  wire NLW_in00_PATTERNBDETECT_UNCONNECTED;
  wire NLW_in00_PATTERNDETECT_UNCONNECTED;
  wire NLW_in00_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_in00_ACOUT_UNCONNECTED;
  wire [17:0]NLW_in00_BCOUT_UNCONNECTED;
  wire [3:0]NLW_in00_CARRYOUT_UNCONNECTED;
  wire [47:26]NLW_in00_P_UNCONNECTED;
  wire [47:0]NLW_in00_PCOUT_UNCONNECTED;

  assign a_cvt = Q[15:0];
  assign out[25:0] = p_cvt;
  LUT1 #(
    .INIT(2'h2)) 
    i_2_0
       (.I0(1'b1),
        .O(b_cvt[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2_1
       (.I0(1'b0),
        .O(b_cvt[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2_2
       (.I0(1'b1),
        .O(b_cvt[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2_3
       (.I0(1'b0),
        .O(b_cvt[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2_4
       (.I0(1'b0),
        .O(b_cvt[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2_5
       (.I0(1'b0),
        .O(b_cvt[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2_6
       (.I0(1'b0),
        .O(b_cvt[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2_7
       (.I0(1'b1),
        .O(b_cvt[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2_8
       (.I0(1'b1),
        .O(b_cvt[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2_9
       (.I0(1'b0),
        .O(b_cvt[0]));
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
        .B({b_cvt[9],b_cvt[9],b_cvt[9],b_cvt[9],b_cvt[9],b_cvt[9],b_cvt[9],b_cvt[9],b_cvt}),
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
        .P({NLW_in00_P_UNCONNECTED[47:26],p_cvt}),
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

(* ORIG_REF_NAME = "fir_shift_reg" *) 
module system_fir_0_0_fir_shift_reg
   (D,
    Q,
    ap_NS_fsm,
    \i_1_reg_220_reg[3] ,
    \i_1_reg_220_reg[5] ,
    E,
    \i_reg_110_reg[4] ,
    \ap_CS_fsm_reg[4] ,
    x,
    \ap_CS_fsm_reg[3] ,
    \i_cast1_reg_212_reg[4] ,
    \i_reg_110_reg[5] ,
    ap_clk);
  output [15:0]D;
  output [15:0]Q;
  output [0:0]ap_NS_fsm;
  output [0:0]\i_1_reg_220_reg[3] ;
  output \i_1_reg_220_reg[5] ;
  output [0:0]E;
  input \i_reg_110_reg[4] ;
  input [2:0]\ap_CS_fsm_reg[4] ;
  input [15:0]x;
  input [0:0]\ap_CS_fsm_reg[3] ;
  input [4:0]\i_cast1_reg_212_reg[4] ;
  input [5:0]\i_reg_110_reg[5] ;
  input ap_clk;

  wire [15:0]D;
  wire [0:0]E;
  wire [15:0]Q;
  wire [0:0]\ap_CS_fsm_reg[3] ;
  wire [2:0]\ap_CS_fsm_reg[4] ;
  wire [0:0]ap_NS_fsm;
  wire ap_clk;
  wire [0:0]\i_1_reg_220_reg[3] ;
  wire \i_1_reg_220_reg[5] ;
  wire [4:0]\i_cast1_reg_212_reg[4] ;
  wire \i_reg_110_reg[4] ;
  wire [5:0]\i_reg_110_reg[5] ;
  wire [15:0]x;

  system_fir_0_0_fir_shift_reg_ram fir_shift_reg_ram_U
       (.D(D),
        .E(E),
        .Q(Q),
        .\ap_CS_fsm_reg[3] (\ap_CS_fsm_reg[3] ),
        .\ap_CS_fsm_reg[4] (\ap_CS_fsm_reg[4] ),
        .ap_clk(ap_clk),
        .\i_1_reg_220_reg[3] (\i_1_reg_220_reg[3] ),
        .\i_1_reg_220_reg[5] (ap_NS_fsm),
        .\i_1_reg_220_reg[5]_0 (\i_1_reg_220_reg[5] ),
        .\i_cast1_reg_212_reg[4] (\i_cast1_reg_212_reg[4] ),
        .\i_reg_110_reg[4] (\i_reg_110_reg[4] ),
        .\i_reg_110_reg[5] (\i_reg_110_reg[5] ),
        .x(x));
endmodule

(* ORIG_REF_NAME = "fir_shift_reg_ram" *) 
module system_fir_0_0_fir_shift_reg_ram
   (D,
    Q,
    \i_1_reg_220_reg[5] ,
    \i_1_reg_220_reg[3] ,
    \i_1_reg_220_reg[5]_0 ,
    E,
    \i_reg_110_reg[4] ,
    \ap_CS_fsm_reg[4] ,
    x,
    \i_cast1_reg_212_reg[4] ,
    \i_reg_110_reg[5] ,
    \ap_CS_fsm_reg[3] ,
    ap_clk);
  output [15:0]D;
  output [15:0]Q;
  output \i_1_reg_220_reg[5] ;
  output [0:0]\i_1_reg_220_reg[3] ;
  output \i_1_reg_220_reg[5]_0 ;
  output [0:0]E;
  input \i_reg_110_reg[4] ;
  input [2:0]\ap_CS_fsm_reg[4] ;
  input [15:0]x;
  input [4:0]\i_cast1_reg_212_reg[4] ;
  input [5:0]\i_reg_110_reg[5] ;
  input [0:0]\ap_CS_fsm_reg[3] ;
  input ap_clk;

  wire [15:0]D;
  wire [0:0]E;
  wire [15:0]Q;
  wire [4:0]address0;
  wire [0:0]\ap_CS_fsm_reg[3] ;
  wire [2:0]\ap_CS_fsm_reg[4] ;
  wire ap_clk;
  wire [15:0]d0;
  wire [0:0]\i_1_reg_220_reg[3] ;
  wire \i_1_reg_220_reg[5] ;
  wire \i_1_reg_220_reg[5]_0 ;
  wire [4:0]\i_cast1_reg_212_reg[4] ;
  wire \i_reg_110_reg[4] ;
  wire [5:0]\i_reg_110_reg[5] ;
  wire [15:0]p_1_out;
  wire ram_reg_0_15_0_0__0_i_1_n_2;
  wire ram_reg_0_15_0_0__0_n_2;
  wire ram_reg_0_15_0_0__10_n_2;
  wire ram_reg_0_15_0_0__11_n_2;
  wire ram_reg_0_15_0_0__12_n_2;
  wire ram_reg_0_15_0_0__13_n_2;
  wire ram_reg_0_15_0_0__14_n_2;
  wire ram_reg_0_15_0_0__15_n_2;
  wire ram_reg_0_15_0_0__16_n_2;
  wire ram_reg_0_15_0_0__17_n_2;
  wire ram_reg_0_15_0_0__18_n_2;
  wire ram_reg_0_15_0_0__19_n_2;
  wire ram_reg_0_15_0_0__1_n_2;
  wire ram_reg_0_15_0_0__20_n_2;
  wire ram_reg_0_15_0_0__21_n_2;
  wire ram_reg_0_15_0_0__22_n_2;
  wire ram_reg_0_15_0_0__23_n_2;
  wire ram_reg_0_15_0_0__24_n_2;
  wire ram_reg_0_15_0_0__25_n_2;
  wire ram_reg_0_15_0_0__26_n_2;
  wire ram_reg_0_15_0_0__27_n_2;
  wire ram_reg_0_15_0_0__28_n_2;
  wire ram_reg_0_15_0_0__29_n_2;
  wire ram_reg_0_15_0_0__2_n_2;
  wire ram_reg_0_15_0_0__30_n_2;
  wire ram_reg_0_15_0_0__3_n_2;
  wire ram_reg_0_15_0_0__4_n_2;
  wire ram_reg_0_15_0_0__5_n_2;
  wire ram_reg_0_15_0_0__6_n_2;
  wire ram_reg_0_15_0_0__7_n_2;
  wire ram_reg_0_15_0_0__8_n_2;
  wire ram_reg_0_15_0_0__9_n_2;
  wire ram_reg_0_15_0_0_i_1_n_2;
  wire ram_reg_0_15_0_0_n_2;
  wire ram_reg_0_31_0_0__0_n_2;
  wire ram_reg_0_31_0_0__10_n_2;
  wire ram_reg_0_31_0_0__11_n_2;
  wire ram_reg_0_31_0_0__12_n_2;
  wire ram_reg_0_31_0_0__13_n_2;
  wire ram_reg_0_31_0_0__14_n_2;
  wire ram_reg_0_31_0_0__1_n_2;
  wire ram_reg_0_31_0_0__2_n_2;
  wire ram_reg_0_31_0_0__3_n_2;
  wire ram_reg_0_31_0_0__4_n_2;
  wire ram_reg_0_31_0_0__5_n_2;
  wire ram_reg_0_31_0_0__6_n_2;
  wire ram_reg_0_31_0_0__7_n_2;
  wire ram_reg_0_31_0_0__8_n_2;
  wire ram_reg_0_31_0_0__9_n_2;
  wire ram_reg_0_31_0_0_i_10_n_2;
  wire ram_reg_0_31_0_0_i_2_n_2;
  wire ram_reg_0_31_0_0_n_2;
  wire [15:0]x;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(\ap_CS_fsm_reg[4] [1]),
        .I1(\i_reg_110_reg[5] [5]),
        .I2(\i_reg_110_reg[5] [4]),
        .I3(\i_1_reg_220_reg[5]_0 ),
        .O(\i_1_reg_220_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \i_1_reg_220[3]_i_1 
       (.I0(\i_reg_110_reg[5] [3]),
        .I1(\i_reg_110_reg[5] [2]),
        .I2(\i_reg_110_reg[5] [0]),
        .I3(\i_reg_110_reg[5] [1]),
        .O(\i_1_reg_220_reg[3] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[0]_i_1 
       (.I0(p_1_out[0]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[0]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[0]_i_2 
       (.I0(ram_reg_0_15_0_0__0_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0_n_2),
        .O(p_1_out[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[10]_i_1 
       (.I0(p_1_out[10]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[10]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[10]),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[10]_i_2 
       (.I0(ram_reg_0_15_0_0__20_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__19_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__9_n_2),
        .O(p_1_out[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[11]_i_1 
       (.I0(p_1_out[11]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[11]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[11]_i_2 
       (.I0(ram_reg_0_15_0_0__22_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__21_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__10_n_2),
        .O(p_1_out[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[12]_i_1 
       (.I0(p_1_out[12]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[12]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[12]),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[12]_i_2 
       (.I0(ram_reg_0_15_0_0__24_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__23_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__11_n_2),
        .O(p_1_out[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[13]_i_1 
       (.I0(p_1_out[13]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[13]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[13]),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[13]_i_2 
       (.I0(ram_reg_0_15_0_0__26_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__25_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__12_n_2),
        .O(p_1_out[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[14]_i_1 
       (.I0(p_1_out[14]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[14]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[14]),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[14]_i_2 
       (.I0(ram_reg_0_15_0_0__28_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__27_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__13_n_2),
        .O(p_1_out[14]));
  LUT3 #(
    .INIT(8'hFE)) 
    \q0[15]_i_1 
       (.I0(\ap_CS_fsm_reg[4] [2]),
        .I1(\ap_CS_fsm_reg[4] [0]),
        .I2(\ap_CS_fsm_reg[4] [1]),
        .O(E));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[15]_i_2 
       (.I0(p_1_out[15]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[15]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[15]),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[15]_i_3 
       (.I0(ram_reg_0_15_0_0__30_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__29_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__14_n_2),
        .O(p_1_out[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[1]_i_1 
       (.I0(p_1_out[1]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[1]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[1]_i_2 
       (.I0(ram_reg_0_15_0_0__2_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__1_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__0_n_2),
        .O(p_1_out[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[2]_i_1 
       (.I0(p_1_out[2]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[2]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[2]_i_2 
       (.I0(ram_reg_0_15_0_0__4_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__3_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__1_n_2),
        .O(p_1_out[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[3]_i_1 
       (.I0(p_1_out[3]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[3]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[3]_i_2 
       (.I0(ram_reg_0_15_0_0__6_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__5_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__2_n_2),
        .O(p_1_out[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[4]_i_1 
       (.I0(p_1_out[4]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[4]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[4]),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[4]_i_2 
       (.I0(ram_reg_0_15_0_0__8_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__7_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__3_n_2),
        .O(p_1_out[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[5]_i_1 
       (.I0(p_1_out[5]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[5]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[5]),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[5]_i_2 
       (.I0(ram_reg_0_15_0_0__10_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__9_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__4_n_2),
        .O(p_1_out[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[6]_i_1 
       (.I0(p_1_out[6]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[6]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[6]_i_2 
       (.I0(ram_reg_0_15_0_0__12_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__11_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__5_n_2),
        .O(p_1_out[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[7]_i_1 
       (.I0(p_1_out[7]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[7]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[7]_i_2 
       (.I0(ram_reg_0_15_0_0__14_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__13_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__6_n_2),
        .O(p_1_out[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[8]_i_1 
       (.I0(p_1_out[8]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[8]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[8]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[8]_i_2 
       (.I0(ram_reg_0_15_0_0__16_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__15_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__7_n_2),
        .O(p_1_out[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \q0[9]_i_1 
       (.I0(p_1_out[9]),
        .I1(\i_reg_110_reg[4] ),
        .I2(Q[9]),
        .I3(\ap_CS_fsm_reg[4] [2]),
        .I4(x[9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \q0[9]_i_2 
       (.I0(ram_reg_0_15_0_0__18_n_2),
        .I1(address0[4]),
        .I2(ram_reg_0_15_0_0__17_n_2),
        .I3(\ap_CS_fsm_reg[3] ),
        .I4(ram_reg_0_31_0_0__8_n_2),
        .O(p_1_out[9]));
  FDRE \q0_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \q0_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \q0_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \q0_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \q0_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \q0_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \q0_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \q0_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \q0_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \q0_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \q0_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \q0_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \q0_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \q0_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \q0_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \q0_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[0]),
        .O(ram_reg_0_15_0_0_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__0
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[0]),
        .O(ram_reg_0_15_0_0__0_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  LUT3 #(
    .INIT(8'h08)) 
    ram_reg_0_15_0_0__0_i_1
       (.I0(address0[4]),
        .I1(\ap_CS_fsm_reg[3] ),
        .I2(\i_reg_110_reg[4] ),
        .O(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__1
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[1]),
        .O(ram_reg_0_15_0_0__1_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__10
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[5]),
        .O(ram_reg_0_15_0_0__10_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__11
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[6]),
        .O(ram_reg_0_15_0_0__11_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__12
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[6]),
        .O(ram_reg_0_15_0_0__12_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__13
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[7]),
        .O(ram_reg_0_15_0_0__13_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__14
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[7]),
        .O(ram_reg_0_15_0_0__14_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__15
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[8]),
        .O(ram_reg_0_15_0_0__15_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__16
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[8]),
        .O(ram_reg_0_15_0_0__16_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__17
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[9]),
        .O(ram_reg_0_15_0_0__17_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__18
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[9]),
        .O(ram_reg_0_15_0_0__18_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__19
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[10]),
        .O(ram_reg_0_15_0_0__19_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__2
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[1]),
        .O(ram_reg_0_15_0_0__2_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__20
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[10]),
        .O(ram_reg_0_15_0_0__20_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__21
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[11]),
        .O(ram_reg_0_15_0_0__21_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__22
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[11]),
        .O(ram_reg_0_15_0_0__22_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__23
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[12]),
        .O(ram_reg_0_15_0_0__23_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__24
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[12]),
        .O(ram_reg_0_15_0_0__24_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__25
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[13]),
        .O(ram_reg_0_15_0_0__25_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__26
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[13]),
        .O(ram_reg_0_15_0_0__26_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__27
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[14]),
        .O(ram_reg_0_15_0_0__27_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__28
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[14]),
        .O(ram_reg_0_15_0_0__28_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__29
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[15]),
        .O(ram_reg_0_15_0_0__29_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__3
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[2]),
        .O(ram_reg_0_15_0_0__3_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__30
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[15]),
        .O(ram_reg_0_15_0_0__30_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__4
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[2]),
        .O(ram_reg_0_15_0_0__4_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__5
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[3]),
        .O(ram_reg_0_15_0_0__5_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__6
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[3]),
        .O(ram_reg_0_15_0_0__6_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__7
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[4]),
        .O(ram_reg_0_15_0_0__7_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__8
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[4]),
        .O(ram_reg_0_15_0_0__8_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0__0_i_1_n_2));
  (* XILINX_LEGACY_PRIM = "RAM16X1S" *) 
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_15_0_0__9
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(1'b0),
        .D(d0[5]),
        .O(ram_reg_0_15_0_0__9_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_15_0_0_i_1_n_2));
  LUT3 #(
    .INIT(8'h04)) 
    ram_reg_0_15_0_0_i_1
       (.I0(address0[4]),
        .I1(\ap_CS_fsm_reg[3] ),
        .I2(\i_reg_110_reg[4] ),
        .O(ram_reg_0_15_0_0_i_1_n_2));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[0]),
        .O(ram_reg_0_31_0_0_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__0
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[1]),
        .O(ram_reg_0_31_0_0__0_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__0_i_1
       (.I0(Q[1]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[1]),
        .O(d0[1]));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__1
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[2]),
        .O(ram_reg_0_31_0_0__1_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__10
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[11]),
        .O(ram_reg_0_31_0_0__10_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__10_i_1
       (.I0(Q[11]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[11]),
        .O(d0[11]));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__11
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[12]),
        .O(ram_reg_0_31_0_0__11_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__11_i_1
       (.I0(Q[12]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[12]),
        .O(d0[12]));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__12
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[13]),
        .O(ram_reg_0_31_0_0__12_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__12_i_1
       (.I0(Q[13]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[13]),
        .O(d0[13]));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__13
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[14]),
        .O(ram_reg_0_31_0_0__13_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__13_i_1
       (.I0(Q[14]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[14]),
        .O(d0[14]));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__14
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[15]),
        .O(ram_reg_0_31_0_0__14_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__14_i_1
       (.I0(Q[15]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[15]),
        .O(d0[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__1_i_1
       (.I0(Q[2]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[2]),
        .O(d0[2]));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__2
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[3]),
        .O(ram_reg_0_31_0_0__2_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__2_i_1
       (.I0(Q[3]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[3]),
        .O(d0[3]));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__3
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[4]),
        .O(ram_reg_0_31_0_0__3_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__3_i_1
       (.I0(Q[4]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[4]),
        .O(d0[4]));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__4
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[5]),
        .O(ram_reg_0_31_0_0__4_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__4_i_1
       (.I0(Q[5]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[5]),
        .O(d0[5]));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__5
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[6]),
        .O(ram_reg_0_31_0_0__5_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__5_i_1
       (.I0(Q[6]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[6]),
        .O(d0[6]));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__6
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[7]),
        .O(ram_reg_0_31_0_0__6_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__6_i_1
       (.I0(Q[7]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[7]),
        .O(d0[7]));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__7
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[8]),
        .O(ram_reg_0_31_0_0__7_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__7_i_1
       (.I0(Q[8]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[8]),
        .O(d0[8]));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__8
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[9]),
        .O(ram_reg_0_31_0_0__8_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__8_i_1
       (.I0(Q[9]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[9]),
        .O(d0[9]));
  RAM32X1S #(
    .INIT(32'h00000000)) 
    ram_reg_0_31_0_0__9
       (.A0(address0[0]),
        .A1(address0[1]),
        .A2(address0[2]),
        .A3(address0[3]),
        .A4(address0[4]),
        .D(d0[10]),
        .O(ram_reg_0_31_0_0__9_n_2),
        .WCLK(ap_clk),
        .WE(ram_reg_0_31_0_0_i_2_n_2));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0__9_i_1
       (.I0(Q[10]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[10]),
        .O(d0[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_0_31_0_0_i_1
       (.I0(Q[0]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(x[0]),
        .O(d0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    ram_reg_0_31_0_0_i_10
       (.I0(\ap_CS_fsm_reg[4] [1]),
        .I1(\i_reg_110_reg[5] [5]),
        .I2(\i_reg_110_reg[5] [4]),
        .I3(\i_1_reg_220_reg[5]_0 ),
        .O(ram_reg_0_31_0_0_i_10_n_2));
  LUT2 #(
    .INIT(4'h1)) 
    ram_reg_0_31_0_0_i_2
       (.I0(\i_reg_110_reg[4] ),
        .I1(\ap_CS_fsm_reg[3] ),
        .O(ram_reg_0_31_0_0_i_2_n_2));
  LUT5 #(
    .INIT(32'h88B8B8B8)) 
    ram_reg_0_31_0_0_i_3
       (.I0(\i_cast1_reg_212_reg[4] [0]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(ram_reg_0_31_0_0_i_10_n_2),
        .I3(\i_reg_110_reg[5] [0]),
        .I4(\ap_CS_fsm_reg[4] [1]),
        .O(address0[0]));
  LUT5 #(
    .INIT(32'hB88888B8)) 
    ram_reg_0_31_0_0_i_4
       (.I0(\i_cast1_reg_212_reg[4] [1]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(\i_1_reg_220_reg[5] ),
        .I3(\i_reg_110_reg[5] [1]),
        .I4(\i_reg_110_reg[5] [0]),
        .O(address0[1]));
  LUT6 #(
    .INIT(64'hB8B8B888888888B8)) 
    ram_reg_0_31_0_0_i_5
       (.I0(\i_cast1_reg_212_reg[4] [2]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(\i_1_reg_220_reg[5] ),
        .I3(\i_reg_110_reg[5] [0]),
        .I4(\i_reg_110_reg[5] [1]),
        .I5(\i_reg_110_reg[5] [2]),
        .O(address0[2]));
  LUT5 #(
    .INIT(32'hFFD0D0D0)) 
    ram_reg_0_31_0_0_i_6
       (.I0(\i_1_reg_220_reg[5] ),
        .I1(\i_1_reg_220_reg[3] ),
        .I2(\i_reg_110_reg[4] ),
        .I3(\i_cast1_reg_212_reg[4] [3]),
        .I4(\ap_CS_fsm_reg[4] [2]),
        .O(address0[3]));
  LUT6 #(
    .INIT(64'h88B8BB88BBBBBBBB)) 
    ram_reg_0_31_0_0_i_7
       (.I0(\i_cast1_reg_212_reg[4] [4]),
        .I1(\ap_CS_fsm_reg[4] [2]),
        .I2(\i_reg_110_reg[5] [5]),
        .I3(\i_reg_110_reg[5] [4]),
        .I4(\i_1_reg_220_reg[5]_0 ),
        .I5(\ap_CS_fsm_reg[4] [1]),
        .O(address0[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    y_ap_vld_INST_0_i_1
       (.I0(\i_reg_110_reg[5] [1]),
        .I1(\i_reg_110_reg[5] [0]),
        .I2(\i_reg_110_reg[5] [3]),
        .I3(\i_reg_110_reg[5] [2]),
        .O(\i_1_reg_220_reg[5]_0 ));
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
