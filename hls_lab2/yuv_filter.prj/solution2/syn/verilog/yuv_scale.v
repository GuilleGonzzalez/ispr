// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module yuv_scale (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_channels_ch1_address0,
        in_channels_ch1_ce0,
        in_channels_ch1_q0,
        in_channels_ch2_address0,
        in_channels_ch2_ce0,
        in_channels_ch2_q0,
        in_channels_ch3_address0,
        in_channels_ch3_ce0,
        in_channels_ch3_q0,
        in_width_read,
        in_height_read,
        out_channels_ch1_address0,
        out_channels_ch1_ce0,
        out_channels_ch1_we0,
        out_channels_ch1_d0,
        out_channels_ch2_address0,
        out_channels_ch2_ce0,
        out_channels_ch2_we0,
        out_channels_ch2_d0,
        out_channels_ch3_address0,
        out_channels_ch3_ce0,
        out_channels_ch3_we0,
        out_channels_ch3_d0,
        Y_scale,
        U_scale,
        V_scale,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state11 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [21:0] in_channels_ch1_address0;
output   in_channels_ch1_ce0;
input  [7:0] in_channels_ch1_q0;
output  [21:0] in_channels_ch2_address0;
output   in_channels_ch2_ce0;
input  [7:0] in_channels_ch2_q0;
output  [21:0] in_channels_ch3_address0;
output   in_channels_ch3_ce0;
input  [7:0] in_channels_ch3_q0;
input  [15:0] in_width_read;
input  [15:0] in_height_read;
output  [21:0] out_channels_ch1_address0;
output   out_channels_ch1_ce0;
output   out_channels_ch1_we0;
output  [7:0] out_channels_ch1_d0;
output  [21:0] out_channels_ch2_address0;
output   out_channels_ch2_ce0;
output   out_channels_ch2_we0;
output  [7:0] out_channels_ch2_d0;
output  [21:0] out_channels_ch3_address0;
output   out_channels_ch3_ce0;
output   out_channels_ch3_we0;
output  [7:0] out_channels_ch3_d0;
input  [7:0] Y_scale;
input  [7:0] U_scale;
input  [7:0] V_scale;
output  [15:0] ap_return_0;
output  [15:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in_channels_ch1_ce0;
reg in_channels_ch2_ce0;
reg in_channels_ch3_ce0;
reg out_channels_ch1_ce0;
reg out_channels_ch1_we0;
reg out_channels_ch2_ce0;
reg out_channels_ch2_we0;
reg out_channels_ch3_ce0;
reg out_channels_ch3_we0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] indvar_flatten_reg_176;
reg   [15:0] x_reg_187;
reg   [15:0] y_reg_198;
wire   [14:0] tmp_cast_fu_209_p1;
reg   [14:0] tmp_cast_reg_396;
wire   [14:0] tmp_1_cast_fu_213_p1;
reg   [14:0] tmp_1_cast_reg_401;
wire   [14:0] tmp_2_cast_fu_217_p1;
reg   [14:0] tmp_2_cast_reg_406;
wire   [31:0] bound_fu_379_p2;
reg   [31:0] bound_reg_411;
wire   [0:0] exitcond_flatten_fu_229_p2;
reg   [0:0] exitcond_flatten_reg_416;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_state7_pp0_stage0_iter5;
wire    ap_block_state8_pp0_stage0_iter6;
wire    ap_block_state9_pp0_stage0_iter7;
wire    ap_block_state10_pp0_stage0_iter8;
wire    ap_block_pp0_stage0_flag00011001;
reg   [0:0] ap_reg_pp0_iter1_exitcond_flatten_reg_416;
reg   [0:0] ap_reg_pp0_iter2_exitcond_flatten_reg_416;
reg   [0:0] ap_reg_pp0_iter3_exitcond_flatten_reg_416;
reg   [0:0] ap_reg_pp0_iter4_exitcond_flatten_reg_416;
reg   [0:0] ap_reg_pp0_iter5_exitcond_flatten_reg_416;
reg   [0:0] ap_reg_pp0_iter6_exitcond_flatten_reg_416;
wire   [31:0] indvar_flatten_next_fu_234_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [15:0] y_mid2_fu_251_p3;
reg   [15:0] y_mid2_reg_425;
wire   [15:0] tmp_3_mid2_v_fu_259_p3;
reg   [15:0] tmp_3_mid2_v_reg_431;
wire   [12:0] tmp_fu_267_p1;
reg   [12:0] tmp_reg_436;
wire   [14:0] tmp_1_fu_271_p1;
reg   [14:0] tmp_1_reg_441;
wire   [22:0] tmp_5_fu_298_p2;
reg   [22:0] tmp_5_reg_446;
wire   [15:0] y_1_fu_304_p2;
reg    ap_enable_reg_pp0_iter1;
wire   [31:0] tmp_10_cast_fu_309_p1;
reg   [31:0] tmp_10_cast_reg_456;
reg   [31:0] ap_reg_pp0_iter3_tmp_10_cast_reg_456;
reg   [31:0] ap_reg_pp0_iter4_tmp_10_cast_reg_456;
reg   [31:0] ap_reg_pp0_iter5_tmp_10_cast_reg_456;
reg   [31:0] ap_reg_pp0_iter6_tmp_10_cast_reg_456;
reg   [7:0] Y_reg_478;
reg   [7:0] U_reg_483;
reg   [7:0] V_reg_488;
reg   [7:0] tmp_4_reg_493;
reg   [7:0] tmp_6_reg_498;
reg   [7:0] tmp_9_reg_503;
wire    ap_block_pp0_stage0_flag00011011;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg   [15:0] x_phi_fu_191_p4;
wire    ap_block_pp0_stage0_flag00000000;
reg   [15:0] y_phi_fu_202_p4;
wire   [0:0] exitcond3_fu_246_p2;
wire   [15:0] x_1_fu_240_p2;
wire   [22:0] p_shl_cast_fu_275_p3;
wire   [22:0] p_shl1_cast_fu_282_p3;
wire   [22:0] tmp_5_cast_fu_295_p1;
wire   [22:0] tmp_3_fu_289_p2;
wire   [7:0] tmp_7_fu_318_p0;
wire   [7:0] tmp_7_fu_318_p1;
wire   [7:0] tmp_s_fu_326_p0;
wire   [7:0] tmp_s_fu_326_p1;
wire   [7:0] tmp_8_fu_334_p0;
wire   [7:0] tmp_8_fu_334_p1;
wire   [14:0] tmp_7_fu_318_p2;
wire   [14:0] tmp_s_fu_326_p2;
wire   [14:0] tmp_8_fu_334_p2;
wire    ap_CS_fsm_state11;
wire   [15:0] bound_fu_379_p0;
wire   [15:0] bound_fu_379_p1;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [31:0] bound_fu_379_p00;
wire   [31:0] bound_fu_379_p10;
wire   [14:0] tmp_7_fu_318_p00;
wire   [14:0] tmp_8_fu_334_p00;
wire   [14:0] tmp_s_fu_326_p00;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
end

yuv_filter_mul_mubkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .dout_WIDTH( 32 ))
yuv_filter_mul_mubkb_x_U12(
    .din0(bound_fu_379_p0),
    .din1(bound_fu_379_p1),
    .dout(bound_fu_379_p2)
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
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 ^ 1'b1);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter8 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_flatten_fu_229_p2 == 1'd0))) begin
        indvar_flatten_reg_176 <= indvar_flatten_next_fu_234_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvar_flatten_reg_176 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (exitcond_flatten_reg_416 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        x_reg_187 <= tmp_3_mid2_v_reg_431;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        x_reg_187 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (exitcond_flatten_reg_416 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1))) begin
        y_reg_198 <= y_1_fu_304_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        y_reg_198 <= 16'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_reg_pp0_iter4_exitcond_flatten_reg_416 == 1'd0))) begin
        U_reg_483 <= in_channels_ch2_q0;
        V_reg_488 <= in_channels_ch3_q0;
        Y_reg_478 <= in_channels_ch1_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        ap_reg_pp0_iter1_exitcond_flatten_reg_416 <= exitcond_flatten_reg_416;
        exitcond_flatten_reg_416 <= exitcond_flatten_fu_229_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_block_pp0_stage0_flag00011001 == 1'b0)) begin
        ap_reg_pp0_iter2_exitcond_flatten_reg_416 <= ap_reg_pp0_iter1_exitcond_flatten_reg_416;
        ap_reg_pp0_iter3_exitcond_flatten_reg_416 <= ap_reg_pp0_iter2_exitcond_flatten_reg_416;
        ap_reg_pp0_iter3_tmp_10_cast_reg_456[22 : 0] <= tmp_10_cast_reg_456[22 : 0];
        ap_reg_pp0_iter4_exitcond_flatten_reg_416 <= ap_reg_pp0_iter3_exitcond_flatten_reg_416;
        ap_reg_pp0_iter4_tmp_10_cast_reg_456[22 : 0] <= ap_reg_pp0_iter3_tmp_10_cast_reg_456[22 : 0];
        ap_reg_pp0_iter5_exitcond_flatten_reg_416 <= ap_reg_pp0_iter4_exitcond_flatten_reg_416;
        ap_reg_pp0_iter5_tmp_10_cast_reg_456[22 : 0] <= ap_reg_pp0_iter4_tmp_10_cast_reg_456[22 : 0];
        ap_reg_pp0_iter6_exitcond_flatten_reg_416 <= ap_reg_pp0_iter5_exitcond_flatten_reg_416;
        ap_reg_pp0_iter6_tmp_10_cast_reg_456[22 : 0] <= ap_reg_pp0_iter5_tmp_10_cast_reg_456[22 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        bound_reg_411 <= bound_fu_379_p2;
        tmp_1_cast_reg_401[7 : 0] <= tmp_1_cast_fu_213_p1[7 : 0];
        tmp_2_cast_reg_406[7 : 0] <= tmp_2_cast_fu_217_p1[7 : 0];
        tmp_cast_reg_396[7 : 0] <= tmp_cast_fu_209_p1[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_reg_pp0_iter1_exitcond_flatten_reg_416 == 1'd0))) begin
        tmp_10_cast_reg_456[22 : 0] <= tmp_10_cast_fu_309_p1[22 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (exitcond_flatten_fu_229_p2 == 1'd0))) begin
        tmp_1_reg_441 <= tmp_1_fu_271_p1;
        tmp_reg_436 <= tmp_fu_267_p1;
        y_mid2_reg_425 <= y_mid2_fu_251_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (exitcond_flatten_fu_229_p2 == 1'd0))) begin
        tmp_3_mid2_v_reg_431 <= tmp_3_mid2_v_fu_259_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_reg_pp0_iter5_exitcond_flatten_reg_416 == 1'd0))) begin
        tmp_4_reg_493 <= {{tmp_7_fu_318_p2[14:7]}};
        tmp_6_reg_498 <= {{tmp_s_fu_326_p2[14:7]}};
        tmp_9_reg_503 <= {{tmp_8_fu_334_p2[14:7]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (exitcond_flatten_reg_416 == 1'd0))) begin
        tmp_5_reg_446 <= tmp_5_fu_298_p2;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_229_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | (1'b1 == ap_CS_fsm_state11))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2) & (1'b0 == ap_enable_reg_pp0_iter3) & (1'b0 == ap_enable_reg_pp0_iter4) & (1'b0 == ap_enable_reg_pp0_iter5) & (1'b0 == ap_enable_reg_pp0_iter6) & (1'b0 == ap_enable_reg_pp0_iter7) & (1'b0 == ap_enable_reg_pp0_iter8))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2)) | ((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter3)) | ((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter4)) | ((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter5)))) begin
        in_channels_ch1_ce0 = 1'b1;
    end else begin
        in_channels_ch1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2)) | ((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter3)) | ((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter4)) | ((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter5)))) begin
        in_channels_ch2_ce0 = 1'b1;
    end else begin
        in_channels_ch2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2)) | ((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter3)) | ((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter4)) | ((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter5)))) begin
        in_channels_ch3_ce0 = 1'b1;
    end else begin
        in_channels_ch3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter7)) | ((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter8)))) begin
        out_channels_ch1_ce0 = 1'b1;
    end else begin
        out_channels_ch1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_reg_pp0_iter6_exitcond_flatten_reg_416 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter7))) begin
        out_channels_ch1_we0 = 1'b1;
    end else begin
        out_channels_ch1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter7)) | ((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter8)))) begin
        out_channels_ch2_ce0 = 1'b1;
    end else begin
        out_channels_ch2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_reg_pp0_iter6_exitcond_flatten_reg_416 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter7))) begin
        out_channels_ch2_we0 = 1'b1;
    end else begin
        out_channels_ch2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter7)) | ((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter8)))) begin
        out_channels_ch3_ce0 = 1'b1;
    end else begin
        out_channels_ch3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (ap_reg_pp0_iter6_exitcond_flatten_reg_416 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter7))) begin
        out_channels_ch3_we0 = 1'b1;
    end else begin
        out_channels_ch3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_416 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00000000 == 1'b0))) begin
        x_phi_fu_191_p4 = tmp_3_mid2_v_reg_431;
    end else begin
        x_phi_fu_191_p4 = x_reg_187;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond_flatten_reg_416 == 1'd0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0_flag00000000 == 1'b0))) begin
        y_phi_fu_202_p4 = y_1_fu_304_p2;
    end else begin
        y_phi_fu_202_p4 = y_reg_198;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter8) & (ap_enable_reg_pp0_iter7 == 1'b0)) & ~((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_flatten_fu_229_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter8) & (ap_enable_reg_pp0_iter7 == 1'b0)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (exitcond_flatten_fu_229_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0_flag00000000 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_flag00011001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_flag00011011 = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_return_0 = in_width_read;

assign ap_return_1 = in_height_read;

assign bound_fu_379_p0 = bound_fu_379_p00;

assign bound_fu_379_p00 = in_height_read;

assign bound_fu_379_p1 = bound_fu_379_p10;

assign bound_fu_379_p10 = in_width_read;

assign exitcond3_fu_246_p2 = ((y_phi_fu_202_p4 == in_height_read) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_229_p2 = ((indvar_flatten_reg_176 == bound_reg_411) ? 1'b1 : 1'b0);

assign in_channels_ch1_address0 = tmp_10_cast_fu_309_p1;

assign in_channels_ch2_address0 = tmp_10_cast_fu_309_p1;

assign in_channels_ch3_address0 = tmp_10_cast_fu_309_p1;

assign indvar_flatten_next_fu_234_p2 = (indvar_flatten_reg_176 + 32'd1);

assign out_channels_ch1_address0 = ap_reg_pp0_iter6_tmp_10_cast_reg_456;

assign out_channels_ch1_d0 = tmp_4_reg_493;

assign out_channels_ch2_address0 = ap_reg_pp0_iter6_tmp_10_cast_reg_456;

assign out_channels_ch2_d0 = tmp_6_reg_498;

assign out_channels_ch3_address0 = ap_reg_pp0_iter6_tmp_10_cast_reg_456;

assign out_channels_ch3_d0 = tmp_9_reg_503;

assign p_shl1_cast_fu_282_p3 = {{tmp_1_reg_441}, {8'd0}};

assign p_shl_cast_fu_275_p3 = {{tmp_reg_436}, {10'd0}};

assign tmp_10_cast_fu_309_p1 = tmp_5_reg_446;

assign tmp_1_cast_fu_213_p1 = U_scale;

assign tmp_1_fu_271_p1 = tmp_3_mid2_v_fu_259_p3[14:0];

assign tmp_2_cast_fu_217_p1 = V_scale;

assign tmp_3_fu_289_p2 = (p_shl_cast_fu_275_p3 + p_shl1_cast_fu_282_p3);

assign tmp_3_mid2_v_fu_259_p3 = ((exitcond3_fu_246_p2[0:0] === 1'b1) ? x_1_fu_240_p2 : x_phi_fu_191_p4);

assign tmp_5_cast_fu_295_p1 = y_mid2_reg_425;

assign tmp_5_fu_298_p2 = (tmp_5_cast_fu_295_p1 + tmp_3_fu_289_p2);

assign tmp_7_fu_318_p0 = tmp_7_fu_318_p00;

assign tmp_7_fu_318_p00 = Y_reg_478;

assign tmp_7_fu_318_p1 = tmp_cast_reg_396;

assign tmp_7_fu_318_p2 = (tmp_7_fu_318_p0 * tmp_7_fu_318_p1);

assign tmp_8_fu_334_p0 = tmp_8_fu_334_p00;

assign tmp_8_fu_334_p00 = V_reg_488;

assign tmp_8_fu_334_p1 = tmp_2_cast_reg_406;

assign tmp_8_fu_334_p2 = (tmp_8_fu_334_p0 * tmp_8_fu_334_p1);

assign tmp_cast_fu_209_p1 = Y_scale;

assign tmp_fu_267_p1 = tmp_3_mid2_v_fu_259_p3[12:0];

assign tmp_s_fu_326_p0 = tmp_s_fu_326_p00;

assign tmp_s_fu_326_p00 = U_reg_483;

assign tmp_s_fu_326_p1 = tmp_1_cast_reg_401;

assign tmp_s_fu_326_p2 = (tmp_s_fu_326_p0 * tmp_s_fu_326_p1);

assign x_1_fu_240_p2 = (16'd1 + x_phi_fu_191_p4);

assign y_1_fu_304_p2 = (16'd1 + y_mid2_reg_425);

assign y_mid2_fu_251_p3 = ((exitcond3_fu_246_p2[0:0] === 1'b1) ? 16'd0 : y_phi_fu_202_p4);

always @ (posedge ap_clk) begin
    tmp_cast_reg_396[14:8] <= 7'b0000000;
    tmp_1_cast_reg_401[14:8] <= 7'b0000000;
    tmp_2_cast_reg_406[14:8] <= 7'b0000000;
    tmp_10_cast_reg_456[31:23] <= 9'b000000000;
    ap_reg_pp0_iter3_tmp_10_cast_reg_456[31:23] <= 9'b000000000;
    ap_reg_pp0_iter4_tmp_10_cast_reg_456[31:23] <= 9'b000000000;
    ap_reg_pp0_iter5_tmp_10_cast_reg_456[31:23] <= 9'b000000000;
    ap_reg_pp0_iter6_tmp_10_cast_reg_456[31:23] <= 9'b000000000;
end

endmodule //yuv_scale
