// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="leds,hls_ip_2017_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.096000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=65,HLS_SYN_LUT=94}" *)

module leds (
        ap_clk,
        ap_rst,
        row_V,
        col_V,
        in_V_V_dout,
        in_V_V_empty_n,
        in_V_V_read
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
output  [6:0] row_V;
output  [9:0] col_V;
input  [6:0] in_V_V_dout;
input   in_V_V_empty_n;
output   in_V_V_read;

reg in_V_V_read;

reg    in_V_V_blk_n;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [2:0] tmp_fu_141_p1;
reg   [2:0] tmp_reg_195;
reg   [3:0] p_Result_1_reg_200;
wire   [3:0] i_2_fu_160_p2;
wire    ap_CS_fsm_state2;
wire   [9:0] out_col_V_fu_166_p2;
wire   [0:0] exitcond1_fu_155_p2;
wire   [2:0] i_3_fu_177_p2;
wire    ap_CS_fsm_state3;
wire   [6:0] out_row_V_fu_189_p2;
wire   [0:0] exitcond_fu_172_p2;
reg   [9:0] p_s_reg_94;
reg   [3:0] i_reg_107;
reg   [6:0] p_1_reg_118;
reg   [2:0] i_1_reg_130;
wire   [6:0] r_V_fu_183_p2;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_155_p2 == 1'd1))) begin
        i_1_reg_130 <= 3'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond_fu_172_p2))) begin
        i_1_reg_130 <= i_3_fu_177_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_155_p2 == 1'd0))) begin
        i_reg_107 <= i_2_fu_160_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (in_V_V_empty_n == 1'b1))) begin
        i_reg_107 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_155_p2 == 1'd1))) begin
        p_1_reg_118 <= 7'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == exitcond_fu_172_p2))) begin
        p_1_reg_118 <= out_row_V_fu_189_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_155_p2 == 1'd0))) begin
        p_s_reg_94 <= out_col_V_fu_166_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (in_V_V_empty_n == 1'b1))) begin
        p_s_reg_94 <= 10'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (in_V_V_empty_n == 1'b1))) begin
        p_Result_1_reg_200 <= {{in_V_V_dout[6:3]}};
        tmp_reg_195 <= tmp_fu_141_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        in_V_V_blk_n = in_V_V_empty_n;
    end else begin
        in_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (in_V_V_empty_n == 1'b1))) begin
        in_V_V_read = 1'b1;
    end else begin
        in_V_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (in_V_V_empty_n == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_155_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (exitcond_fu_172_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign col_V = p_s_reg_94;

assign exitcond1_fu_155_p2 = ((i_reg_107 == p_Result_1_reg_200) ? 1'b1 : 1'b0);

assign exitcond_fu_172_p2 = ((i_1_reg_130 == tmp_reg_195) ? 1'b1 : 1'b0);

assign i_2_fu_160_p2 = (i_reg_107 + 4'd1);

assign i_3_fu_177_p2 = (i_1_reg_130 + 3'd1);

assign out_col_V_fu_166_p2 = p_s_reg_94 << 10'd1;

assign out_row_V_fu_189_p2 = (r_V_fu_183_p2 | p_1_reg_118);

assign r_V_fu_183_p2 = p_1_reg_118 << 7'd1;

assign row_V = p_1_reg_118;

assign tmp_fu_141_p1 = in_V_V_dout[2:0];

endmodule //leds
