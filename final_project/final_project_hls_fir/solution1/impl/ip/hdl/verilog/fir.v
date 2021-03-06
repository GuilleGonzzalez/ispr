// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fir,hls_ip_2017_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.702000,HLS_SYN_LAT=174,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=3,HLS_SYN_FF=190,HLS_SYN_LUT=144}" *)

module fir (
        ap_clk,
        ap_rst,
        y,
        y_ap_vld,
        x
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
output  [15:0] y;
output   y_ap_vld;
input  [15:0] x;

reg y_ap_vld;

reg   [5:0] shift_reg_address0;
reg    shift_reg_ce0;
reg    shift_reg_we0;
reg   [15:0] shift_reg_d0;
wire  signed [15:0] shift_reg_q0;
wire   [5:0] c_address0;
reg    c_ce0;
wire   [15:0] c_q0;
wire  signed [25:0] acc_fu_173_p2;
reg  signed [25:0] acc_reg_196;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
wire  signed [36:0] acc_cast_fu_125_p1;
wire   [31:0] i_cast1_fu_128_p1;
reg   [31:0] i_cast1_reg_212;
wire    ap_CS_fsm_state4;
wire   [5:0] i_1_fu_139_p2;
reg   [5:0] i_1_reg_220;
wire   [0:0] tmp_3_fu_133_p2;
reg  signed [15:0] shift_reg_load_1_reg_235;
wire    ap_CS_fsm_state5;
reg  signed [15:0] c_load_reg_240;
wire  signed [36:0] grp_fu_188_p3;
wire    ap_CS_fsm_state6;
reg   [36:0] acc1_reg_100;
reg   [5:0] i_reg_110;
wire   [31:0] i_1_cast_fu_145_p1;
wire    ap_CS_fsm_state1;
wire  signed [30:0] grp_fu_179_p3;
wire  signed [9:0] acc_fu_173_p1;
wire  signed [9:0] grp_fu_179_p0;
wire   [30:0] grp_fu_179_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
end

fir_shift_reg #(
    .DataWidth( 16 ),
    .AddressRange( 58 ),
    .AddressWidth( 6 ))
shift_reg_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(shift_reg_address0),
    .ce0(shift_reg_ce0),
    .we0(shift_reg_we0),
    .d0(shift_reg_d0),
    .q0(shift_reg_q0)
);

fir_c #(
    .DataWidth( 16 ),
    .AddressRange( 59 ),
    .AddressWidth( 6 ))
c_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(c_address0),
    .ce0(c_ce0),
    .q0(c_q0)
);

fir_mul_mul_16s_1bkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 26 ))
fir_mul_mul_16s_1bkb_U0(
    .din0(shift_reg_q0),
    .din1(acc_fu_173_p1),
    .dout(acc_fu_173_p2)
);

fir_mac_muladd_10cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 31 ),
    .dout_WIDTH( 31 ))
fir_mac_muladd_10cud_U1(
    .din0(grp_fu_179_p0),
    .din1(x),
    .din2(grp_fu_179_p2),
    .dout(grp_fu_179_p3)
);

fir_mac_muladd_16dEe #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 37 ),
    .dout_WIDTH( 37 ))
fir_mac_muladd_16dEe_U2(
    .din0(c_load_reg_240),
    .din1(shift_reg_load_1_reg_235),
    .din2(acc1_reg_100),
    .dout(grp_fu_188_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        acc1_reg_100 <= grp_fu_188_p3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        acc1_reg_100 <= acc_cast_fu_125_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_reg_110 <= i_1_reg_220;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_110 <= 6'd57;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        acc_reg_196 <= acc_fu_173_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        c_load_reg_240 <= c_q0;
        shift_reg_load_1_reg_235 <= shift_reg_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_3_fu_133_p2 == 1'd0))) begin
        i_1_reg_220 <= i_1_fu_139_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        i_cast1_reg_212[5 : 0] <= i_cast1_fu_128_p1[5 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c_ce0 = 1'b1;
    end else begin
        c_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        shift_reg_address0 = i_cast1_reg_212;
    end else if (((1'b1 == ap_CS_fsm_state4) & (tmp_3_fu_133_p2 == 1'd1))) begin
        shift_reg_address0 = 6'd0;
    end else if (((1'b1 == ap_CS_fsm_state4) & (tmp_3_fu_133_p2 == 1'd0))) begin
        shift_reg_address0 = i_1_cast_fu_145_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        shift_reg_address0 = 6'd57;
    end else begin
        shift_reg_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (tmp_3_fu_133_p2 == 1'd0)) | (1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state4) & (tmp_3_fu_133_p2 == 1'd1)) | (1'b1 == ap_CS_fsm_state1))) begin
        shift_reg_ce0 = 1'b1;
    end else begin
        shift_reg_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        shift_reg_d0 = shift_reg_q0;
    end else if (((1'b1 == ap_CS_fsm_state4) & (tmp_3_fu_133_p2 == 1'd1))) begin
        shift_reg_d0 = x;
    end else begin
        shift_reg_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((1'b1 == ap_CS_fsm_state4) & (tmp_3_fu_133_p2 == 1'd1)))) begin
        shift_reg_we0 = 1'b1;
    end else begin
        shift_reg_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (tmp_3_fu_133_p2 == 1'd1))) begin
        y_ap_vld = 1'b1;
    end else begin
        y_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (tmp_3_fu_133_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign acc_cast_fu_125_p1 = acc_reg_196;

assign acc_fu_173_p1 = 26'd67108486;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign c_address0 = i_cast1_fu_128_p1;

assign grp_fu_179_p0 = 26'd67108486;

assign grp_fu_179_p2 = acc1_reg_100[30:0];

assign i_1_cast_fu_145_p1 = i_1_fu_139_p2;

assign i_1_fu_139_p2 = ($signed(i_reg_110) + $signed(6'd63));

assign i_cast1_fu_128_p1 = i_reg_110;

assign tmp_3_fu_133_p2 = ((i_reg_110 == 6'd0) ? 1'b1 : 1'b0);

assign y = {{grp_fu_179_p3[30:15]}};

always @ (posedge ap_clk) begin
    i_cast1_reg_212[31:6] <= 26'b00000000000000000000000000;
end

endmodule //fir
