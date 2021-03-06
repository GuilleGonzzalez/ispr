// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="energy,hls_ip_2017_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.380000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=18,HLS_SYN_LUT=36}" *)

module energy (
        ap_clk,
        ap_rst,
        y,
        y_ap_vld,
        x,
        x_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
output  [15:0] y;
output   y_ap_vld;
input  [15:0] x;
input   x_ap_vld;

reg y_ap_vld;

reg   [15:0] x_preg;
reg  signed [15:0] x_in_sig;
reg    x_ap_vld_preg;
reg    x_ap_vld_in_sig;
reg    x_blk_n;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire  signed [15:0] tmp_1_fu_37_p2;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 x_preg = 16'd0;
#0 x_ap_vld_preg = 1'b0;
#0 ap_CS_fsm = 1'd1;
end

energy_mul_mul_16bkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
energy_mul_mul_16bkb_U0(
    .din0(x_in_sig),
    .din1(x_in_sig),
    .dout(tmp_1_fu_37_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        x_ap_vld_preg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (x_ap_vld_in_sig == 1'b1))) begin
            x_ap_vld_preg <= 1'b0;
        end else if ((1'b1 == x_ap_vld)) begin
            x_ap_vld_preg <= x_ap_vld;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        x_preg <= 16'd0;
    end else begin
        if ((1'b1 == x_ap_vld)) begin
            x_preg <= x;
        end
    end
end

always @ (*) begin
    if ((1'b1 == x_ap_vld)) begin
        x_ap_vld_in_sig = x_ap_vld;
    end else begin
        x_ap_vld_in_sig = x_ap_vld_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        x_blk_n = x_ap_vld;
    end else begin
        x_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == x_ap_vld)) begin
        x_in_sig = x;
    end else begin
        x_in_sig = x_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (x_ap_vld_in_sig == 1'b1))) begin
        y_ap_vld = 1'b1;
    end else begin
        y_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign y = tmp_1_fu_37_p2;

endmodule //energy
