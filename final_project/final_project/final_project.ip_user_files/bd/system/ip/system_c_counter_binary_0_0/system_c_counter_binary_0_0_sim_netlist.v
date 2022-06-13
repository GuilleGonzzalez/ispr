// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed May 25 17:46:13 2022
// Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_c_counter_binary_0_0/system_c_counter_binary_0_0_sim_netlist.v
// Design      : system_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_c_counter_binary_0_0,c_counter_binary_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module system_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [3:0]Q;

  wire CLK;
  wire [3:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1010" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  system_c_counter_binary_0_0_c_counter_binary_v12_0_10 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1010" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_10" *) (* downgradeipidentifiedwarnings = "yes" *) 
module system_c_counter_binary_0_0_c_counter_binary_v12_0_10
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [3:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1010" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  system_c_counter_binary_0_0_c_counter_binary_v12_0_10_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
l1NG3g81+vM8a/OECNXckQ6Ih+534PcHu9If3GBzfNiHrQt4ZqWyOCmUfR9HBrKJ6dazleZpBLLQ
VkjiEZOvOw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z0LH98ijrG2zSKQ428sLNLNN8LOYW53zGTr9NWQ16ZrFJS/8H+Sypz2sLY7sCYpj+gN48UB+J20x
PvOEIxFZVPZNmhrcvIxztIiTduaVtyypOS3Jx8r3YE6fOwVJrfZ9eXRQUIdKvbN0bVZFUcjZ2HOu
2IHyG/UIDoelWrgO0GY=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QNC1y7mnDIW3BeoEUG5xtIOyuA9VVC6sNeWDOT6S5qoB4e5s9LHwLIGpByH8Fz0PGaafc2Pp1LqC
lzXnevLntdeO+Pz1NMCI4Ojicg8oWhR3msMyGBNzheYZMtUoYnT2zC0eafrxC+G2D8yNbUPHtf++
Y0MP0FYlKg8jJhDSX3w=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bRemsiwW6AApgQWC90BqiBlMFD2jEWM37Ph/oR3/T151pMQpEWD3gu3SGbUebLL6tc97cE/PgSCy
KS0n/kkTjP8yz3D6tbz01kj9QAWvzzWfukcjy4U1p/TuuIIUFcvoH/P+MznfeFrHL11ZwDgOg40p
h2VhrJPIbdfbr6mfhPFTBuWKYDGmQfgZeWyn7BSTLS+wvNUS+AvTJnaPj6O9Szcq/v+sphPqX1F0
wfrQOmRJVSa2EfFZxZ1m3+2NmDfYPFsxF203jiTh4pJ8JuezHfzsaK6jbmB9h7QKD6yMUsYRx/O3
idyz3Inko4ZzfMIyZuEPWm6TSA5xk5DeltwcSw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QxSXl52RB2cLbPW8z4SvG8lZpaZT78HIOf6Q3fEiSBBQziVQn5oJPSJW8PdmH2pB/aVZpPeDnm2a
hpp7ddkUsyA+NHykeuxUJfwhWYhyemZLGnSdZXVpbaOhu0TLJiOtAVsDmRdPFs7q6CpwvvPImbuY
YK29r9Mw8w6ATmDgWgWs+wefEAeKjvUWKQmUr9SKi88H0j+hCCdtMoYZnO8+mjtjWlqm6U7NqCPr
K58IyvSojGlh7czWW8xHzOdgUBj872QexFBFCXAZ3caYI+I5tgzbPak7R4g1nHKG2e2HAjefrx2S
bXb3PhWqaTkKbnVCol5mWJuxPclCBxrEtqSjug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cz5g65hbB8shmQPsohjzVr+SPRr5lrGQqqziYjnrsCWqDM27xVRVWn5/2voSXHOso9pm8+P7GN+L
Mz6Nn/qXS+pi/muryE2WEZ1r1ya1OKX8h7vIWuyvbtfcgSkvPQb+oNRpZXNONTBmmBFus8k0rin2
VJPxBV5qCpoPGWDVS1QCTJ852TyqzdEMM2h/x7mD8lHifZIkjoWi+O8HkWSf1j2JrYg2fikk0O71
heaF0CkbjGmy7ezg8wpLUywMgWUhCjFFanO1rqzaTEvWYxCjx+FFJRXRyfP3qUeBqMaTvZsGSDDl
/9EG0TehdoOmg4VPXawJiGfiqr2sBbg7f0zlow==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
p19Hr4Cko7dNWsqSIuzytwpVUe5Ngic7s04tQXUw/Wzl6HnOitxuh9t7tenJB21FZMNQQH+tuo7X
/US1nkVv/x1hk0Y62TYHo/uDOY+yPsF0KoR9cOhf1+K+Rcj+b8932XwT1XpK9Gjg36equ6qY17Li
BRJYJN+UOTK17UKM8fgcnvMehEQbuaNyhGt6tL1rQflQ3zqMkpWRU0sIBe7C8WJNSu08QftgRv9a
KnywAt1tkJhtvrhKreasCVRS6wmEFqh0Ol9u2GRd5aCOqSQl38e4dmP4ByPt0TOHVLn2Tm1TXhEI
f67j2oRPrpLIjqFJBnfARn+BwiXpJljBW0iZjQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
CoWiZKyiRqXVUrG0q3LFkwWfjDCG4vMztugP3EY21KIWP6j7q3rYBeiFvv6nJqbwQwvqVVpW6+Ng
g5QfA+sFzgvdInQaMdWVYJGiGebmWVbLaiGIQSdq+v3yngd0wOxe19xtJi10ex+SQDpru3a1XaGo
pgS/QhZwyCtIobopuV+VBRz7xGuXEe1sPAqN+xTuDifxKeuOk5Bjks9+WfnDFTk6EQp0IDtxY0Cn
aojEigCqu7dhirud7nmqvfAFSJ1DmJK7rWy081pVMHkVxP/uAEKE9kCDb5X0HoX0IAg8nlJ0/D+Z
X+fyhl7JLqTv4iv7qpFlRwCyKDY/kMNvkypfPw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5120)
`pragma protect data_block
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
`pragma protect end_protected
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
