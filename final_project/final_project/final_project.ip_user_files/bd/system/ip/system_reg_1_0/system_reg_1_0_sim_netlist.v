// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed May 25 17:46:12 2022
// Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_reg_1_0/system_reg_1_0_sim_netlist.v
// Design      : system_reg_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_reg_1_0,reg,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "reg,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module system_reg_1_0
   (clk,
    d,
    q,
    en,
    rst);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  input [15:0]d;
  output [15:0]q;
  input en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) input rst;

  wire clk;
  wire [15:0]d;
  wire en;
  wire [15:0]q;
  wire rst;

  system_reg_1_0_reg U0
       (.clk(clk),
        .d(d),
        .en(en),
        .q(q),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "reg" *) 
module system_reg_1_0_reg
   (q,
    en,
    d,
    clk,
    rst);
  output [15:0]q;
  input en;
  input [15:0]d;
  input clk;
  input rst;

  wire clk;
  wire [15:0]d;
  wire en;
  wire p_0_in;
  wire [15:0]q;
  wire rst;

  LUT1 #(
    .INIT(2'h1)) 
    \q[15]_i_1 
       (.I0(rst),
        .O(p_0_in));
  FDRE \q_reg[0] 
       (.C(clk),
        .CE(en),
        .D(d[0]),
        .Q(q[0]),
        .R(p_0_in));
  FDRE \q_reg[10] 
       (.C(clk),
        .CE(en),
        .D(d[10]),
        .Q(q[10]),
        .R(p_0_in));
  FDRE \q_reg[11] 
       (.C(clk),
        .CE(en),
        .D(d[11]),
        .Q(q[11]),
        .R(p_0_in));
  FDRE \q_reg[12] 
       (.C(clk),
        .CE(en),
        .D(d[12]),
        .Q(q[12]),
        .R(p_0_in));
  FDRE \q_reg[13] 
       (.C(clk),
        .CE(en),
        .D(d[13]),
        .Q(q[13]),
        .R(p_0_in));
  FDRE \q_reg[14] 
       (.C(clk),
        .CE(en),
        .D(d[14]),
        .Q(q[14]),
        .R(p_0_in));
  FDRE \q_reg[15] 
       (.C(clk),
        .CE(en),
        .D(d[15]),
        .Q(q[15]),
        .R(p_0_in));
  FDRE \q_reg[1] 
       (.C(clk),
        .CE(en),
        .D(d[1]),
        .Q(q[1]),
        .R(p_0_in));
  FDRE \q_reg[2] 
       (.C(clk),
        .CE(en),
        .D(d[2]),
        .Q(q[2]),
        .R(p_0_in));
  FDRE \q_reg[3] 
       (.C(clk),
        .CE(en),
        .D(d[3]),
        .Q(q[3]),
        .R(p_0_in));
  FDRE \q_reg[4] 
       (.C(clk),
        .CE(en),
        .D(d[4]),
        .Q(q[4]),
        .R(p_0_in));
  FDRE \q_reg[5] 
       (.C(clk),
        .CE(en),
        .D(d[5]),
        .Q(q[5]),
        .R(p_0_in));
  FDRE \q_reg[6] 
       (.C(clk),
        .CE(en),
        .D(d[6]),
        .Q(q[6]),
        .R(p_0_in));
  FDRE \q_reg[7] 
       (.C(clk),
        .CE(en),
        .D(d[7]),
        .Q(q[7]),
        .R(p_0_in));
  FDRE \q_reg[8] 
       (.C(clk),
        .CE(en),
        .D(d[8]),
        .Q(q[8]),
        .R(p_0_in));
  FDRE \q_reg[9] 
       (.C(clk),
        .CE(en),
        .D(d[9]),
        .Q(q[9]),
        .R(p_0_in));
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
