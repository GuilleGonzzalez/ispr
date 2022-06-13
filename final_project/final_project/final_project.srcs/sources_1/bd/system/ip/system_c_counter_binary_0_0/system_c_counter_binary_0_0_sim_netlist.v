// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri May 27 17:13:14 2022
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
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [11:0]Q;

  wire CLK;
  wire [11:0]Q;
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
  (* C_WIDTH = "12" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "101000000000" *) 
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
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "101000000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "12" *) 
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
  input [11:0]L;
  output THRESH0;
  output [11:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [11:0]Q;
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
  (* C_WIDTH = "12" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "101000000000" *) 
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
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
RXaqoDUYq6fpOljjehMxpkbaL66SwnLjctLHkiwNtrRGzE6z+ngKCX5nE9NH0C7qL2luT8KtwVA4
OlIEFTPkcP3I2PcNe8ULsVKDgM0dyfxSyUj1CniBXxuVOx9GiDBNof4YdvSweKXoNqGKIJlLIjAM
uSEnoyLEixEkHF+m1xn9moyKbje46wpyNL9D9HSMm+hx6TR7DuU9FSSrKtKlNtaLLHm+zi8vS3ZI
eh/cVo/XLxiOck//UDJ6TdDkBiA7VyDJ23xivJf1E5Bpw7xTpiSmwYNPNEnkxBUCoGN49pj7aqOy
jD/f/4oOTB8ELyFgcOCBaOzOgOwsSowOqYCKaQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
DpgObov6sIn1ESh5BZxxZ7aZK0OH3ODXYQ8tN+NKPTmm+BR3w4CEDMTljeIPpoKKvRrtV83WrB4/
tXGPKnFg/YSaexawvOMzeyUUi5Z9etnL+6N6HAxrwa4ugQ1EjtPcX8htFE7v7kBPkMTSWhOTnJfO
H7/Ee+If/x10mpevkcPSpA6wG5gUJYHwNhqX3+Y1H9S3hWRCK5xbivoo1Mp8iFhxTNV7221vtQco
OfCkVEELaiHk2IThIz5FhmIJHdXPRZ7dEILIOmq23C9r1bQqpekY9yd8+kvC4xMQDNreit/6lnIA
xtvseJ5OcR6U42E0M96SG8DAx4XWEFRUbIsOoQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9056)
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
