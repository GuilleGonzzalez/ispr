// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dct_1d2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        src_address0,
        src_ce0,
        src_q0,
        i_2,
        dst_address0,
        dst_ce0,
        dst_we0,
        dst_d0,
        i_21
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state6 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] src_address0;
output   src_ce0;
input  [15:0] src_q0;
input  [3:0] i_2;
output  [5:0] dst_address0;
output   dst_ce0;
output   dst_we0;
output  [15:0] dst_d0;
input  [3:0] i_21;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg src_ce0;
reg dst_ce0;
reg dst_we0;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [5:0] dct_coeff_table_address0;
reg    dct_coeff_table_ce0;
wire   [14:0] dct_coeff_table_q0;
reg   [3:0] n_reg_112;
reg   [31:0] tmp1_reg_123;
wire   [7:0] tmp_18_cast_fu_143_p1;
reg   [7:0] tmp_18_cast_reg_268;
wire   [7:0] tmp_20_cast_fu_155_p1;
reg   [7:0] tmp_20_cast_reg_273;
wire   [0:0] tmp_fu_159_p2;
wire    ap_CS_fsm_state2;
wire   [3:0] k_1_fu_165_p2;
reg   [3:0] k_1_reg_282;
reg   [5:0] dst_addr_reg_287;
wire   [7:0] tmp_23_cast_fu_193_p1;
reg   [7:0] tmp_23_cast_reg_292;
wire   [0:0] tmp_s_fu_197_p2;
reg   [0:0] tmp_s_reg_297;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_flag00011001;
reg   [0:0] ap_reg_pp0_iter1_tmp_s_reg_297;
wire   [3:0] n_1_fu_203_p2;
reg    ap_enable_reg_pp0_iter0;
reg  signed [14:0] dct_coeff_table_load_reg_316;
reg  signed [15:0] src_load_reg_321;
wire  signed [31:0] grp_fu_260_p3;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0_flag00011011;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
reg   [3:0] k_reg_101;
wire    ap_CS_fsm_state6;
wire   [31:0] tmp_21_cast_fu_180_p1;
wire   [31:0] tmp_24_cast_fu_218_p1;
wire    ap_block_pp0_stage0_flag00000000;
wire   [31:0] tmp_25_cast_fu_228_p1;
wire   [6:0] tmp_13_fu_135_p3;
wire   [6:0] tmp_14_fu_147_p3;
wire   [7:0] k_cast2_cast_fu_171_p1;
wire   [7:0] tmp_15_fu_175_p2;
wire   [6:0] tmp_16_fu_185_p3;
wire   [7:0] n_cast1_cast_fu_209_p1;
wire   [7:0] tmp_17_fu_213_p2;
wire   [7:0] tmp_18_fu_223_p2;
wire   [28:0] tmp_2_fu_239_p1;
wire   [28:0] tmp_3_fu_243_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

dct_1d2_dct_coeffbkb #(
    .DataWidth( 15 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
dct_coeff_table_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(dct_coeff_table_address0),
    .ce0(dct_coeff_table_ce0),
    .q0(dct_coeff_table_q0)
);

dct_mac_muladd_15cud #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 15 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
dct_mac_muladd_15cud_U0(
    .din0(dct_coeff_table_load_reg_316),
    .din1(src_load_reg_321),
    .din2(tmp1_reg_123),
    .dout(grp_fu_260_p3)
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
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_159_p2 == 1'd0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((ap_block_pp0_stage0_flag00011011 == 1'b0)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state3 ^ 1'b1);
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
        end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_159_p2 == 1'd0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        k_reg_101 <= k_1_reg_282;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        k_reg_101 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd0 == tmp_s_fu_197_p2))) begin
        n_reg_112 <= n_1_fu_203_p2;
    end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_159_p2 == 1'd0))) begin
        n_reg_112 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter2) & (1'd0 == ap_reg_pp0_iter1_tmp_s_reg_297))) begin
        tmp1_reg_123 <= grp_fu_260_p3;
    end else if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_159_p2 == 1'd0))) begin
        tmp1_reg_123 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0))) begin
        ap_reg_pp0_iter1_tmp_s_reg_297 <= tmp_s_reg_297;
        tmp_s_reg_297 <= tmp_s_fu_197_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'd0 == tmp_s_reg_297))) begin
        dct_coeff_table_load_reg_316 <= dct_coeff_table_q0;
        src_load_reg_321 <= src_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_159_p2 == 1'd0))) begin
        dst_addr_reg_287 <= tmp_21_cast_fu_180_p1;
        tmp_23_cast_reg_292[6 : 3] <= tmp_23_cast_fu_193_p1[6 : 3];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        k_1_reg_282 <= k_1_fu_165_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_18_cast_reg_268[6 : 3] <= tmp_18_cast_fu_143_p1[6 : 3];
        tmp_20_cast_reg_273[6 : 3] <= tmp_20_cast_fu_155_p1[6 : 3];
    end
end

always @ (*) begin
    if ((tmp_s_fu_197_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (tmp_fu_159_p2 == 1'd1)))) begin
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
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1) & (1'b0 == ap_enable_reg_pp0_iter2))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_159_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        dct_coeff_table_ce0 = 1'b1;
    end else begin
        dct_coeff_table_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        dst_ce0 = 1'b1;
    end else begin
        dst_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        dst_we0 = 1'b1;
    end else begin
        dst_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_flag00011001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0))) begin
        src_ce0 = 1'b1;
    end else begin
        src_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (tmp_fu_159_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (tmp_s_fu_197_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b1 == ap_enable_reg_pp0_iter2) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_flag00011011 == 1'b0) & (tmp_s_fu_197_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0_flag00000000 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_flag00011001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_flag00011011 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign dct_coeff_table_address0 = tmp_25_cast_fu_228_p1;

assign dst_address0 = dst_addr_reg_287;

assign dst_d0 = {{tmp_3_fu_243_p2[28:13]}};

assign k_1_fu_165_p2 = (k_reg_101 + 4'd1);

assign k_cast2_cast_fu_171_p1 = k_reg_101;

assign n_1_fu_203_p2 = (n_reg_112 + 4'd1);

assign n_cast1_cast_fu_209_p1 = n_reg_112;

assign src_address0 = tmp_24_cast_fu_218_p1;

assign tmp_13_fu_135_p3 = {{i_21}, {3'd0}};

assign tmp_14_fu_147_p3 = {{i_2}, {3'd0}};

assign tmp_15_fu_175_p2 = (k_cast2_cast_fu_171_p1 + tmp_18_cast_reg_268);

assign tmp_16_fu_185_p3 = {{k_reg_101}, {3'd0}};

assign tmp_17_fu_213_p2 = (tmp_20_cast_reg_273 + n_cast1_cast_fu_209_p1);

assign tmp_18_cast_fu_143_p1 = tmp_13_fu_135_p3;

assign tmp_18_fu_223_p2 = (tmp_23_cast_reg_292 + n_cast1_cast_fu_209_p1);

assign tmp_20_cast_fu_155_p1 = tmp_14_fu_147_p3;

assign tmp_21_cast_fu_180_p1 = tmp_15_fu_175_p2;

assign tmp_23_cast_fu_193_p1 = tmp_16_fu_185_p3;

assign tmp_24_cast_fu_218_p1 = tmp_17_fu_213_p2;

assign tmp_25_cast_fu_228_p1 = tmp_18_fu_223_p2;

assign tmp_2_fu_239_p1 = tmp1_reg_123[28:0];

assign tmp_3_fu_243_p2 = (29'd4096 + tmp_2_fu_239_p1);

assign tmp_fu_159_p2 = ((k_reg_101 == 4'd8) ? 1'b1 : 1'b0);

assign tmp_s_fu_197_p2 = ((n_reg_112 == 4'd8) ? 1'b1 : 1'b0);

always @ (posedge ap_clk) begin
    tmp_18_cast_reg_268[2:0] <= 3'b000;
    tmp_18_cast_reg_268[7] <= 1'b0;
    tmp_20_cast_reg_273[2:0] <= 3'b000;
    tmp_20_cast_reg_273[7] <= 1'b0;
    tmp_23_cast_reg_292[2:0] <= 3'b000;
    tmp_23_cast_reg_292[7] <= 1'b0;
end

endmodule //dct_1d2
