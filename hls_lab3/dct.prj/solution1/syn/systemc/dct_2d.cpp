// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "dct_2d.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic dct_2d::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic dct_2d::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<11> dct_2d::ap_ST_fsm_state1 = "1";
const sc_lv<11> dct_2d::ap_ST_fsm_state2 = "10";
const sc_lv<11> dct_2d::ap_ST_fsm_state3 = "100";
const sc_lv<11> dct_2d::ap_ST_fsm_state4 = "1000";
const sc_lv<11> dct_2d::ap_ST_fsm_state5 = "10000";
const sc_lv<11> dct_2d::ap_ST_fsm_state6 = "100000";
const sc_lv<11> dct_2d::ap_ST_fsm_state7 = "1000000";
const sc_lv<11> dct_2d::ap_ST_fsm_state8 = "10000000";
const sc_lv<11> dct_2d::ap_ST_fsm_state9 = "100000000";
const sc_lv<11> dct_2d::ap_ST_fsm_state10 = "1000000000";
const sc_lv<11> dct_2d::ap_ST_fsm_state11 = "10000000000";
const sc_lv<32> dct_2d::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> dct_2d::ap_const_lv32_1 = "1";
const sc_lv<32> dct_2d::ap_const_lv32_3 = "11";
const sc_lv<32> dct_2d::ap_const_lv32_4 = "100";
const sc_lv<32> dct_2d::ap_const_lv32_6 = "110";
const sc_lv<32> dct_2d::ap_const_lv32_8 = "1000";
const sc_lv<32> dct_2d::ap_const_lv32_9 = "1001";
const sc_lv<4> dct_2d::ap_const_lv4_0 = "0000";
const sc_lv<32> dct_2d::ap_const_lv32_2 = "10";
const sc_lv<1> dct_2d::ap_const_lv1_1 = "1";
const sc_lv<1> dct_2d::ap_const_lv1_0 = "0";
const sc_lv<32> dct_2d::ap_const_lv32_5 = "101";
const sc_lv<32> dct_2d::ap_const_lv32_7 = "111";
const sc_lv<32> dct_2d::ap_const_lv32_A = "1010";
const sc_lv<4> dct_2d::ap_const_lv4_8 = "1000";
const sc_lv<4> dct_2d::ap_const_lv4_1 = "1";
const sc_lv<3> dct_2d::ap_const_lv3_0 = "000";
const bool dct_2d::ap_const_boolean_1 = true;

dct_2d::dct_2d(sc_module_name name) : sc_module(name), mVcdFile(0) {
    row_outbuf_U = new dct_2d_row_outbuf("row_outbuf_U");
    row_outbuf_U->clk(ap_clk);
    row_outbuf_U->reset(ap_rst);
    row_outbuf_U->address0(row_outbuf_address0);
    row_outbuf_U->ce0(row_outbuf_ce0);
    row_outbuf_U->we0(row_outbuf_we0);
    row_outbuf_U->d0(grp_dct_1d2_fu_169_dst_d0);
    row_outbuf_U->q0(row_outbuf_q0);
    col_outbuf_U = new dct_2d_row_outbuf("col_outbuf_U");
    col_outbuf_U->clk(ap_clk);
    col_outbuf_U->reset(ap_rst);
    col_outbuf_U->address0(col_outbuf_address0);
    col_outbuf_U->ce0(col_outbuf_ce0);
    col_outbuf_U->we0(col_outbuf_we0);
    col_outbuf_U->d0(grp_dct_1d2_fu_169_dst_d0);
    col_outbuf_U->q0(col_outbuf_q0);
    col_inbuf_U = new dct_2d_row_outbuf("col_inbuf_U");
    col_inbuf_U->clk(ap_clk);
    col_inbuf_U->reset(ap_rst);
    col_inbuf_U->address0(col_inbuf_address0);
    col_inbuf_U->ce0(col_inbuf_ce0);
    col_inbuf_U->we0(col_inbuf_we0);
    col_inbuf_U->d0(row_outbuf_q0);
    col_inbuf_U->q0(col_inbuf_q0);
    grp_dct_1d2_fu_169 = new dct_1d2("grp_dct_1d2_fu_169");
    grp_dct_1d2_fu_169->ap_clk(ap_clk);
    grp_dct_1d2_fu_169->ap_rst(ap_rst);
    grp_dct_1d2_fu_169->ap_start(grp_dct_1d2_fu_169_ap_start);
    grp_dct_1d2_fu_169->ap_done(grp_dct_1d2_fu_169_ap_done);
    grp_dct_1d2_fu_169->ap_idle(grp_dct_1d2_fu_169_ap_idle);
    grp_dct_1d2_fu_169->ap_ready(grp_dct_1d2_fu_169_ap_ready);
    grp_dct_1d2_fu_169->src_address0(grp_dct_1d2_fu_169_src_address0);
    grp_dct_1d2_fu_169->src_ce0(grp_dct_1d2_fu_169_src_ce0);
    grp_dct_1d2_fu_169->src_q0(grp_dct_1d2_fu_169_src_q0);
    grp_dct_1d2_fu_169->i_2(grp_dct_1d2_fu_169_i_2);
    grp_dct_1d2_fu_169->dst_address0(grp_dct_1d2_fu_169_dst_address0);
    grp_dct_1d2_fu_169->dst_ce0(grp_dct_1d2_fu_169_dst_ce0);
    grp_dct_1d2_fu_169->dst_we0(grp_dct_1d2_fu_169_dst_we0);
    grp_dct_1d2_fu_169->dst_d0(grp_dct_1d2_fu_169_dst_d0);
    grp_dct_1d2_fu_169->i_21(grp_dct_1d2_fu_169_i_21);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state10);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state11);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state8);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state9);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( tmp_1_fu_300_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( tmp_1_fu_300_p2 );

    SC_METHOD(thread_col_inbuf_address0);
    sensitive << ( col_inbuf_addr_reg_391 );
    sensitive << ( grp_dct_1d2_fu_169_src_address0 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_col_inbuf_ce0);
    sensitive << ( grp_dct_1d2_fu_169_src_ce0 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_col_inbuf_we0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_col_outbuf_address0);
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( grp_dct_1d2_fu_169_dst_address0 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( tmp_18_cast_fu_343_p1 );

    SC_METHOD(thread_col_outbuf_ce0);
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( grp_dct_1d2_fu_169_dst_ce0 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_col_outbuf_we0);
    sensitive << ( grp_dct_1d2_fu_169_dst_we0 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_grp_dct_1d2_fu_169_ap_start);
    sensitive << ( ap_reg_grp_dct_1d2_fu_169_ap_start );

    SC_METHOD(thread_grp_dct_1d2_fu_169_i_2);
    sensitive << ( i_reg_101 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( i_2_reg_135 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_grp_dct_1d2_fu_169_i_21);
    sensitive << ( i_reg_101 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( i_2_reg_135 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_grp_dct_1d2_fu_169_src_q0);
    sensitive << ( in_block_q0 );
    sensitive << ( col_inbuf_q0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_CS_fsm_state8 );

    SC_METHOD(thread_i_1_cast4_cast_fu_224_p1);
    sensitive << ( i_1_reg_124 );

    SC_METHOD(thread_i_3_cast1_cast_fu_312_p1);
    sensitive << ( i_3_reg_158 );

    SC_METHOD(thread_i_4_fu_190_p2);
    sensitive << ( i_reg_101 );

    SC_METHOD(thread_i_5_fu_278_p2);
    sensitive << ( i_2_reg_135 );

    SC_METHOD(thread_i_6_fu_266_p2);
    sensitive << ( i_1_reg_124 );

    SC_METHOD(thread_i_7_fu_354_p2);
    sensitive << ( i_3_reg_158 );

    SC_METHOD(thread_in_block_address0);
    sensitive << ( grp_dct_1d2_fu_169_src_address0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_in_block_ce0);
    sensitive << ( grp_dct_1d2_fu_169_src_ce0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_j_1_cast2_cast_fu_284_p1);
    sensitive << ( j_1_reg_147 );

    SC_METHOD(thread_j_2_fu_218_p2);
    sensitive << ( j_reg_113 );

    SC_METHOD(thread_j_3_fu_306_p2);
    sensitive << ( j_1_reg_147 );

    SC_METHOD(thread_j_cast5_cast_fu_196_p1);
    sensitive << ( j_reg_113 );

    SC_METHOD(thread_out_block_address0);
    sensitive << ( out_block_addr_reg_430 );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_out_block_ce0);
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_out_block_d0);
    sensitive << ( col_outbuf_q0 );
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_out_block_we0);
    sensitive << ( ap_CS_fsm_state11 );

    SC_METHOD(thread_row_outbuf_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( grp_dct_1d2_fu_169_dst_address0 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_11_cast_fu_245_p1 );

    SC_METHOD(thread_row_outbuf_ce0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( grp_dct_1d2_fu_169_dst_ce0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_row_outbuf_we0);
    sensitive << ( grp_dct_1d2_fu_169_dst_we0 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_tmp_10_cast_fu_236_p1);
    sensitive << ( tmp_7_fu_228_p3 );

    SC_METHOD(thread_tmp_10_fu_250_p2);
    sensitive << ( tmp_6_cast_reg_373 );
    sensitive << ( i_1_cast4_cast_fu_224_p1 );

    SC_METHOD(thread_tmp_11_cast_fu_245_p1);
    sensitive << ( tmp_6_fu_240_p2 );

    SC_METHOD(thread_tmp_11_fu_288_p3);
    sensitive << ( j_1_reg_147 );

    SC_METHOD(thread_tmp_12_cast_fu_255_p1);
    sensitive << ( tmp_10_fu_250_p2 );

    SC_METHOD(thread_tmp_12_fu_316_p2);
    sensitive << ( tmp_14_cast_reg_417 );
    sensitive << ( i_3_cast1_cast_fu_312_p1 );

    SC_METHOD(thread_tmp_13_fu_326_p3);
    sensitive << ( i_3_reg_158 );

    SC_METHOD(thread_tmp_14_cast_fu_296_p1);
    sensitive << ( tmp_11_fu_288_p3 );

    SC_METHOD(thread_tmp_14_fu_338_p2);
    sensitive << ( j_1_cast2_cast_reg_412 );
    sensitive << ( tmp_17_cast_fu_334_p1 );

    SC_METHOD(thread_tmp_15_cast_fu_321_p1);
    sensitive << ( tmp_12_fu_316_p2 );

    SC_METHOD(thread_tmp_17_cast_fu_334_p1);
    sensitive << ( tmp_13_fu_326_p3 );

    SC_METHOD(thread_tmp_18_cast_fu_343_p1);
    sensitive << ( tmp_14_fu_338_p2 );

    SC_METHOD(thread_tmp_1_fu_300_p2);
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( j_1_reg_147 );

    SC_METHOD(thread_tmp_2_fu_348_p2);
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( i_3_reg_158 );

    SC_METHOD(thread_tmp_5_fu_200_p3);
    sensitive << ( j_reg_113 );

    SC_METHOD(thread_tmp_6_cast_fu_208_p1);
    sensitive << ( tmp_5_fu_200_p3 );

    SC_METHOD(thread_tmp_6_fu_240_p2);
    sensitive << ( j_cast5_cast_reg_368 );
    sensitive << ( tmp_10_cast_fu_236_p1 );

    SC_METHOD(thread_tmp_7_fu_228_p3);
    sensitive << ( i_1_reg_124 );

    SC_METHOD(thread_tmp_8_fu_212_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( j_reg_113 );

    SC_METHOD(thread_tmp_9_fu_272_p2);
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( i_2_reg_135 );

    SC_METHOD(thread_tmp_fu_184_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( i_reg_101 );

    SC_METHOD(thread_tmp_s_fu_260_p2);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( i_1_reg_124 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( ap_CS_fsm_state9 );
    sensitive << ( ap_CS_fsm_state10 );
    sensitive << ( grp_dct_1d2_fu_169_ap_done );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( tmp_s_fu_260_p2 );
    sensitive << ( tmp_fu_184_p2 );
    sensitive << ( tmp_8_fu_212_p2 );
    sensitive << ( ap_CS_fsm_state8 );
    sensitive << ( tmp_2_fu_348_p2 );
    sensitive << ( tmp_9_fu_272_p2 );
    sensitive << ( tmp_1_fu_300_p2 );

    ap_CS_fsm = "00000000001";
    ap_reg_grp_dct_1d2_fu_169_ap_start = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "dct_2d_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, in_block_address0, "(port)in_block_address0");
    sc_trace(mVcdFile, in_block_ce0, "(port)in_block_ce0");
    sc_trace(mVcdFile, in_block_q0, "(port)in_block_q0");
    sc_trace(mVcdFile, out_block_address0, "(port)out_block_address0");
    sc_trace(mVcdFile, out_block_ce0, "(port)out_block_ce0");
    sc_trace(mVcdFile, out_block_we0, "(port)out_block_we0");
    sc_trace(mVcdFile, out_block_d0, "(port)out_block_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, i_4_fu_190_p2, "i_4_fu_190_p2");
    sc_trace(mVcdFile, i_4_reg_363, "i_4_reg_363");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, j_cast5_cast_fu_196_p1, "j_cast5_cast_fu_196_p1");
    sc_trace(mVcdFile, j_cast5_cast_reg_368, "j_cast5_cast_reg_368");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, tmp_6_cast_fu_208_p1, "tmp_6_cast_fu_208_p1");
    sc_trace(mVcdFile, tmp_6_cast_reg_373, "tmp_6_cast_reg_373");
    sc_trace(mVcdFile, j_2_fu_218_p2, "j_2_fu_218_p2");
    sc_trace(mVcdFile, j_2_reg_381, "j_2_reg_381");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, col_inbuf_addr_reg_391, "col_inbuf_addr_reg_391");
    sc_trace(mVcdFile, i_6_fu_266_p2, "i_6_fu_266_p2");
    sc_trace(mVcdFile, i_6_reg_399, "i_6_reg_399");
    sc_trace(mVcdFile, i_5_fu_278_p2, "i_5_fu_278_p2");
    sc_trace(mVcdFile, i_5_reg_407, "i_5_reg_407");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, j_1_cast2_cast_fu_284_p1, "j_1_cast2_cast_fu_284_p1");
    sc_trace(mVcdFile, j_1_cast2_cast_reg_412, "j_1_cast2_cast_reg_412");
    sc_trace(mVcdFile, ap_CS_fsm_state9, "ap_CS_fsm_state9");
    sc_trace(mVcdFile, tmp_14_cast_fu_296_p1, "tmp_14_cast_fu_296_p1");
    sc_trace(mVcdFile, tmp_14_cast_reg_417, "tmp_14_cast_reg_417");
    sc_trace(mVcdFile, j_3_fu_306_p2, "j_3_fu_306_p2");
    sc_trace(mVcdFile, j_3_reg_425, "j_3_reg_425");
    sc_trace(mVcdFile, out_block_addr_reg_430, "out_block_addr_reg_430");
    sc_trace(mVcdFile, ap_CS_fsm_state10, "ap_CS_fsm_state10");
    sc_trace(mVcdFile, i_7_fu_354_p2, "i_7_fu_354_p2");
    sc_trace(mVcdFile, i_7_reg_443, "i_7_reg_443");
    sc_trace(mVcdFile, row_outbuf_address0, "row_outbuf_address0");
    sc_trace(mVcdFile, row_outbuf_ce0, "row_outbuf_ce0");
    sc_trace(mVcdFile, row_outbuf_we0, "row_outbuf_we0");
    sc_trace(mVcdFile, row_outbuf_q0, "row_outbuf_q0");
    sc_trace(mVcdFile, col_outbuf_address0, "col_outbuf_address0");
    sc_trace(mVcdFile, col_outbuf_ce0, "col_outbuf_ce0");
    sc_trace(mVcdFile, col_outbuf_we0, "col_outbuf_we0");
    sc_trace(mVcdFile, col_outbuf_q0, "col_outbuf_q0");
    sc_trace(mVcdFile, col_inbuf_address0, "col_inbuf_address0");
    sc_trace(mVcdFile, col_inbuf_ce0, "col_inbuf_ce0");
    sc_trace(mVcdFile, col_inbuf_we0, "col_inbuf_we0");
    sc_trace(mVcdFile, col_inbuf_q0, "col_inbuf_q0");
    sc_trace(mVcdFile, grp_dct_1d2_fu_169_ap_start, "grp_dct_1d2_fu_169_ap_start");
    sc_trace(mVcdFile, grp_dct_1d2_fu_169_ap_done, "grp_dct_1d2_fu_169_ap_done");
    sc_trace(mVcdFile, grp_dct_1d2_fu_169_ap_idle, "grp_dct_1d2_fu_169_ap_idle");
    sc_trace(mVcdFile, grp_dct_1d2_fu_169_ap_ready, "grp_dct_1d2_fu_169_ap_ready");
    sc_trace(mVcdFile, grp_dct_1d2_fu_169_src_address0, "grp_dct_1d2_fu_169_src_address0");
    sc_trace(mVcdFile, grp_dct_1d2_fu_169_src_ce0, "grp_dct_1d2_fu_169_src_ce0");
    sc_trace(mVcdFile, grp_dct_1d2_fu_169_src_q0, "grp_dct_1d2_fu_169_src_q0");
    sc_trace(mVcdFile, grp_dct_1d2_fu_169_i_2, "grp_dct_1d2_fu_169_i_2");
    sc_trace(mVcdFile, grp_dct_1d2_fu_169_dst_address0, "grp_dct_1d2_fu_169_dst_address0");
    sc_trace(mVcdFile, grp_dct_1d2_fu_169_dst_ce0, "grp_dct_1d2_fu_169_dst_ce0");
    sc_trace(mVcdFile, grp_dct_1d2_fu_169_dst_we0, "grp_dct_1d2_fu_169_dst_we0");
    sc_trace(mVcdFile, grp_dct_1d2_fu_169_dst_d0, "grp_dct_1d2_fu_169_dst_d0");
    sc_trace(mVcdFile, grp_dct_1d2_fu_169_i_21, "grp_dct_1d2_fu_169_i_21");
    sc_trace(mVcdFile, i_reg_101, "i_reg_101");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, j_reg_113, "j_reg_113");
    sc_trace(mVcdFile, tmp_s_fu_260_p2, "tmp_s_fu_260_p2");
    sc_trace(mVcdFile, tmp_fu_184_p2, "tmp_fu_184_p2");
    sc_trace(mVcdFile, i_1_reg_124, "i_1_reg_124");
    sc_trace(mVcdFile, tmp_8_fu_212_p2, "tmp_8_fu_212_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, i_2_reg_135, "i_2_reg_135");
    sc_trace(mVcdFile, ap_CS_fsm_state8, "ap_CS_fsm_state8");
    sc_trace(mVcdFile, j_1_reg_147, "j_1_reg_147");
    sc_trace(mVcdFile, tmp_2_fu_348_p2, "tmp_2_fu_348_p2");
    sc_trace(mVcdFile, tmp_9_fu_272_p2, "tmp_9_fu_272_p2");
    sc_trace(mVcdFile, i_3_reg_158, "i_3_reg_158");
    sc_trace(mVcdFile, tmp_1_fu_300_p2, "tmp_1_fu_300_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state11, "ap_CS_fsm_state11");
    sc_trace(mVcdFile, ap_reg_grp_dct_1d2_fu_169_ap_start, "ap_reg_grp_dct_1d2_fu_169_ap_start");
    sc_trace(mVcdFile, tmp_11_cast_fu_245_p1, "tmp_11_cast_fu_245_p1");
    sc_trace(mVcdFile, tmp_12_cast_fu_255_p1, "tmp_12_cast_fu_255_p1");
    sc_trace(mVcdFile, tmp_15_cast_fu_321_p1, "tmp_15_cast_fu_321_p1");
    sc_trace(mVcdFile, tmp_18_cast_fu_343_p1, "tmp_18_cast_fu_343_p1");
    sc_trace(mVcdFile, tmp_5_fu_200_p3, "tmp_5_fu_200_p3");
    sc_trace(mVcdFile, tmp_7_fu_228_p3, "tmp_7_fu_228_p3");
    sc_trace(mVcdFile, tmp_10_cast_fu_236_p1, "tmp_10_cast_fu_236_p1");
    sc_trace(mVcdFile, tmp_6_fu_240_p2, "tmp_6_fu_240_p2");
    sc_trace(mVcdFile, i_1_cast4_cast_fu_224_p1, "i_1_cast4_cast_fu_224_p1");
    sc_trace(mVcdFile, tmp_10_fu_250_p2, "tmp_10_fu_250_p2");
    sc_trace(mVcdFile, tmp_11_fu_288_p3, "tmp_11_fu_288_p3");
    sc_trace(mVcdFile, i_3_cast1_cast_fu_312_p1, "i_3_cast1_cast_fu_312_p1");
    sc_trace(mVcdFile, tmp_12_fu_316_p2, "tmp_12_fu_316_p2");
    sc_trace(mVcdFile, tmp_13_fu_326_p3, "tmp_13_fu_326_p3");
    sc_trace(mVcdFile, tmp_17_cast_fu_334_p1, "tmp_17_cast_fu_334_p1");
    sc_trace(mVcdFile, tmp_14_fu_338_p2, "tmp_14_fu_338_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

dct_2d::~dct_2d() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete row_outbuf_U;
    delete col_outbuf_U;
    delete col_inbuf_U;
    delete grp_dct_1d2_fu_169;
}

void dct_2d::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_grp_dct_1d2_fu_169_ap_start = ap_const_logic_0;
    } else {
        if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
              esl_seteq<1,1,1>(tmp_fu_184_p2.read(), ap_const_lv1_0)) || 
             (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
              esl_seteq<1,1,1>(ap_const_lv1_0, tmp_9_fu_272_p2.read())))) {
            ap_reg_grp_dct_1d2_fu_169_ap_start = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, grp_dct_1d2_fu_169_ap_ready.read())) {
            ap_reg_grp_dct_1d2_fu_169_ap_start = ap_const_logic_0;
        }
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        i_1_reg_124 = i_6_reg_399.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
                esl_seteq<1,1,1>(tmp_8_fu_212_p2.read(), ap_const_lv1_0))) {
        i_1_reg_124 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_8_fu_212_p2.read()))) {
        i_2_reg_135 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(grp_dct_1d2_fu_169_ap_done.read(), ap_const_logic_1) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
        i_2_reg_135 = i_5_reg_407.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        i_3_reg_158 = i_7_reg_443.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_1_fu_300_p2.read()))) {
        i_3_reg_158 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && 
         esl_seteq<1,1,1>(grp_dct_1d2_fu_169_ap_done.read(), ap_const_logic_1))) {
        i_reg_101 = i_4_reg_363.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        i_reg_101 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_9_fu_272_p2.read()))) {
        j_1_reg_147 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_1, tmp_2_fu_348_p2.read()))) {
        j_1_reg_147 = j_3_reg_425.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_fu_184_p2.read()))) {
        j_reg_113 = ap_const_lv4_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && 
                esl_seteq<1,1,1>(tmp_s_fu_260_p2.read(), ap_const_lv1_1))) {
        j_reg_113 = j_2_reg_381.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        col_inbuf_addr_reg_391 =  (sc_lv<6>) (tmp_12_cast_fu_255_p1.read());
        i_6_reg_399 = i_6_fu_266_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_4_reg_363 = i_4_fu_190_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        i_5_reg_407 = i_5_fu_278_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        i_7_reg_443 = i_7_fu_354_p2.read();
        out_block_addr_reg_430 =  (sc_lv<6>) (tmp_15_cast_fu_321_p1.read());
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read())) {
        j_1_cast2_cast_reg_412 = j_1_cast2_cast_fu_284_p1.read();
        j_3_reg_425 = j_3_fu_306_p2.read();
        tmp_14_cast_reg_417 = tmp_14_cast_fu_296_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        j_2_reg_381 = j_2_fu_218_p2.read();
        j_cast5_cast_reg_368 = j_cast5_cast_fu_196_p1.read();
        tmp_6_cast_reg_373 = tmp_6_cast_fu_208_p1.read();
    }
}

void dct_2d::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void dct_2d::thread_ap_CS_fsm_state10() {
    ap_CS_fsm_state10 = ap_CS_fsm.read()[9];
}

void dct_2d::thread_ap_CS_fsm_state11() {
    ap_CS_fsm_state11 = ap_CS_fsm.read()[10];
}

void dct_2d::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void dct_2d::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void dct_2d::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void dct_2d::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void dct_2d::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void dct_2d::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void dct_2d::thread_ap_CS_fsm_state8() {
    ap_CS_fsm_state8 = ap_CS_fsm.read()[7];
}

void dct_2d::thread_ap_CS_fsm_state9() {
    ap_CS_fsm_state9 = ap_CS_fsm.read()[8];
}

void dct_2d::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_fu_300_p2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void dct_2d::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void dct_2d::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_fu_300_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void dct_2d::thread_col_inbuf_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        col_inbuf_address0 = col_inbuf_addr_reg_391.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        col_inbuf_address0 = grp_dct_1d2_fu_169_src_address0.read();
    } else {
        col_inbuf_address0 = "XXXXXX";
    }
}

void dct_2d::thread_col_inbuf_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        col_inbuf_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        col_inbuf_ce0 = grp_dct_1d2_fu_169_src_ce0.read();
    } else {
        col_inbuf_ce0 = ap_const_logic_0;
    }
}

void dct_2d::thread_col_inbuf_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        col_inbuf_we0 = ap_const_logic_1;
    } else {
        col_inbuf_we0 = ap_const_logic_0;
    }
}

void dct_2d::thread_col_outbuf_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        col_outbuf_address0 =  (sc_lv<6>) (tmp_18_cast_fu_343_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        col_outbuf_address0 = grp_dct_1d2_fu_169_dst_address0.read();
    } else {
        col_outbuf_address0 = "XXXXXX";
    }
}

void dct_2d::thread_col_outbuf_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read())) {
        col_outbuf_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        col_outbuf_ce0 = grp_dct_1d2_fu_169_dst_ce0.read();
    } else {
        col_outbuf_ce0 = ap_const_logic_0;
    }
}

void dct_2d::thread_col_outbuf_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        col_outbuf_we0 = grp_dct_1d2_fu_169_dst_we0.read();
    } else {
        col_outbuf_we0 = ap_const_logic_0;
    }
}

void dct_2d::thread_grp_dct_1d2_fu_169_ap_start() {
    grp_dct_1d2_fu_169_ap_start = ap_reg_grp_dct_1d2_fu_169_ap_start.read();
}

void dct_2d::thread_grp_dct_1d2_fu_169_i_2() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        grp_dct_1d2_fu_169_i_2 = i_2_reg_135.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        grp_dct_1d2_fu_169_i_2 = i_reg_101.read();
    } else {
        grp_dct_1d2_fu_169_i_2 =  (sc_lv<4>) ("XXXX");
    }
}

void dct_2d::thread_grp_dct_1d2_fu_169_i_21() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        grp_dct_1d2_fu_169_i_21 = i_2_reg_135.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        grp_dct_1d2_fu_169_i_21 = i_reg_101.read();
    } else {
        grp_dct_1d2_fu_169_i_21 =  (sc_lv<4>) ("XXXX");
    }
}

void dct_2d::thread_grp_dct_1d2_fu_169_src_q0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read())) {
        grp_dct_1d2_fu_169_src_q0 = col_inbuf_q0.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        grp_dct_1d2_fu_169_src_q0 = in_block_q0.read();
    } else {
        grp_dct_1d2_fu_169_src_q0 =  (sc_lv<16>) ("XXXXXXXXXXXXXXXX");
    }
}

void dct_2d::thread_i_1_cast4_cast_fu_224_p1() {
    i_1_cast4_cast_fu_224_p1 = esl_zext<8,4>(i_1_reg_124.read());
}

void dct_2d::thread_i_3_cast1_cast_fu_312_p1() {
    i_3_cast1_cast_fu_312_p1 = esl_zext<8,4>(i_3_reg_158.read());
}

void dct_2d::thread_i_4_fu_190_p2() {
    i_4_fu_190_p2 = (!i_reg_101.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_reg_101.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void dct_2d::thread_i_5_fu_278_p2() {
    i_5_fu_278_p2 = (!i_2_reg_135.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_2_reg_135.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void dct_2d::thread_i_6_fu_266_p2() {
    i_6_fu_266_p2 = (!i_1_reg_124.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_1_reg_124.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void dct_2d::thread_i_7_fu_354_p2() {
    i_7_fu_354_p2 = (!i_3_reg_158.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_3_reg_158.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void dct_2d::thread_in_block_address0() {
    in_block_address0 = grp_dct_1d2_fu_169_src_address0.read();
}

void dct_2d::thread_in_block_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        in_block_ce0 = grp_dct_1d2_fu_169_src_ce0.read();
    } else {
        in_block_ce0 = ap_const_logic_0;
    }
}

void dct_2d::thread_j_1_cast2_cast_fu_284_p1() {
    j_1_cast2_cast_fu_284_p1 = esl_zext<8,4>(j_1_reg_147.read());
}

void dct_2d::thread_j_2_fu_218_p2() {
    j_2_fu_218_p2 = (!j_reg_113.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(j_reg_113.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void dct_2d::thread_j_3_fu_306_p2() {
    j_3_fu_306_p2 = (!j_1_reg_147.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(j_1_reg_147.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void dct_2d::thread_j_cast5_cast_fu_196_p1() {
    j_cast5_cast_fu_196_p1 = esl_zext<8,4>(j_reg_113.read());
}

void dct_2d::thread_out_block_address0() {
    out_block_address0 = out_block_addr_reg_430.read();
}

void dct_2d::thread_out_block_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        out_block_ce0 = ap_const_logic_1;
    } else {
        out_block_ce0 = ap_const_logic_0;
    }
}

void dct_2d::thread_out_block_d0() {
    out_block_d0 = col_outbuf_q0.read();
}

void dct_2d::thread_out_block_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state11.read())) {
        out_block_we0 = ap_const_logic_1;
    } else {
        out_block_we0 = ap_const_logic_0;
    }
}

void dct_2d::thread_row_outbuf_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        row_outbuf_address0 =  (sc_lv<6>) (tmp_11_cast_fu_245_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        row_outbuf_address0 = grp_dct_1d2_fu_169_dst_address0.read();
    } else {
        row_outbuf_address0 = "XXXXXX";
    }
}

void dct_2d::thread_row_outbuf_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        row_outbuf_ce0 = ap_const_logic_1;
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        row_outbuf_ce0 = grp_dct_1d2_fu_169_dst_ce0.read();
    } else {
        row_outbuf_ce0 = ap_const_logic_0;
    }
}

void dct_2d::thread_row_outbuf_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        row_outbuf_we0 = grp_dct_1d2_fu_169_dst_we0.read();
    } else {
        row_outbuf_we0 = ap_const_logic_0;
    }
}

void dct_2d::thread_tmp_10_cast_fu_236_p1() {
    tmp_10_cast_fu_236_p1 = esl_zext<8,7>(tmp_7_fu_228_p3.read());
}

void dct_2d::thread_tmp_10_fu_250_p2() {
    tmp_10_fu_250_p2 = (!i_1_cast4_cast_fu_224_p1.read().is_01() || !tmp_6_cast_reg_373.read().is_01())? sc_lv<8>(): (sc_biguint<8>(i_1_cast4_cast_fu_224_p1.read()) + sc_biguint<8>(tmp_6_cast_reg_373.read()));
}

void dct_2d::thread_tmp_11_cast_fu_245_p1() {
    tmp_11_cast_fu_245_p1 = esl_zext<32,8>(tmp_6_fu_240_p2.read());
}

void dct_2d::thread_tmp_11_fu_288_p3() {
    tmp_11_fu_288_p3 = esl_concat<4,3>(j_1_reg_147.read(), ap_const_lv3_0);
}

void dct_2d::thread_tmp_12_cast_fu_255_p1() {
    tmp_12_cast_fu_255_p1 = esl_zext<32,8>(tmp_10_fu_250_p2.read());
}

void dct_2d::thread_tmp_12_fu_316_p2() {
    tmp_12_fu_316_p2 = (!i_3_cast1_cast_fu_312_p1.read().is_01() || !tmp_14_cast_reg_417.read().is_01())? sc_lv<8>(): (sc_biguint<8>(i_3_cast1_cast_fu_312_p1.read()) + sc_biguint<8>(tmp_14_cast_reg_417.read()));
}

void dct_2d::thread_tmp_13_fu_326_p3() {
    tmp_13_fu_326_p3 = esl_concat<4,3>(i_3_reg_158.read(), ap_const_lv3_0);
}

void dct_2d::thread_tmp_14_cast_fu_296_p1() {
    tmp_14_cast_fu_296_p1 = esl_zext<8,7>(tmp_11_fu_288_p3.read());
}

void dct_2d::thread_tmp_14_fu_338_p2() {
    tmp_14_fu_338_p2 = (!j_1_cast2_cast_reg_412.read().is_01() || !tmp_17_cast_fu_334_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(j_1_cast2_cast_reg_412.read()) + sc_biguint<8>(tmp_17_cast_fu_334_p1.read()));
}

void dct_2d::thread_tmp_15_cast_fu_321_p1() {
    tmp_15_cast_fu_321_p1 = esl_zext<32,8>(tmp_12_fu_316_p2.read());
}

void dct_2d::thread_tmp_17_cast_fu_334_p1() {
    tmp_17_cast_fu_334_p1 = esl_zext<8,7>(tmp_13_fu_326_p3.read());
}

void dct_2d::thread_tmp_18_cast_fu_343_p1() {
    tmp_18_cast_fu_343_p1 = esl_zext<32,8>(tmp_14_fu_338_p2.read());
}

void dct_2d::thread_tmp_1_fu_300_p2() {
    tmp_1_fu_300_p2 = (!j_1_reg_147.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(j_1_reg_147.read() == ap_const_lv4_8);
}

void dct_2d::thread_tmp_2_fu_348_p2() {
    tmp_2_fu_348_p2 = (!i_3_reg_158.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(i_3_reg_158.read() == ap_const_lv4_8);
}

void dct_2d::thread_tmp_5_fu_200_p3() {
    tmp_5_fu_200_p3 = esl_concat<4,3>(j_reg_113.read(), ap_const_lv3_0);
}

void dct_2d::thread_tmp_6_cast_fu_208_p1() {
    tmp_6_cast_fu_208_p1 = esl_zext<8,7>(tmp_5_fu_200_p3.read());
}

void dct_2d::thread_tmp_6_fu_240_p2() {
    tmp_6_fu_240_p2 = (!j_cast5_cast_reg_368.read().is_01() || !tmp_10_cast_fu_236_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(j_cast5_cast_reg_368.read()) + sc_biguint<8>(tmp_10_cast_fu_236_p1.read()));
}

void dct_2d::thread_tmp_7_fu_228_p3() {
    tmp_7_fu_228_p3 = esl_concat<4,3>(i_1_reg_124.read(), ap_const_lv3_0);
}

void dct_2d::thread_tmp_8_fu_212_p2() {
    tmp_8_fu_212_p2 = (!j_reg_113.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_113.read() == ap_const_lv4_8);
}

void dct_2d::thread_tmp_9_fu_272_p2() {
    tmp_9_fu_272_p2 = (!i_2_reg_135.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(i_2_reg_135.read() == ap_const_lv4_8);
}

void dct_2d::thread_tmp_fu_184_p2() {
    tmp_fu_184_p2 = (!i_reg_101.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_101.read() == ap_const_lv4_8);
}

void dct_2d::thread_tmp_s_fu_260_p2() {
    tmp_s_fu_260_p2 = (!i_1_reg_124.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(i_1_reg_124.read() == ap_const_lv4_8);
}

void dct_2d::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_fu_184_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()) && esl_seteq<1,1,1>(grp_dct_1d2_fu_169_ap_done.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_8_fu_212_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state7;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(tmp_s_fu_260_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state4;
            } else {
                ap_NS_fsm = ap_ST_fsm_state6;
            }
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 64 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_9_fu_272_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state9;
            } else {
                ap_NS_fsm = ap_ST_fsm_state8;
            }
            break;
        case 128 : 
            if ((esl_seteq<1,1,1>(grp_dct_1d2_fu_169_ap_done.read(), ap_const_logic_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state8.read()))) {
                ap_NS_fsm = ap_ST_fsm_state7;
            } else {
                ap_NS_fsm = ap_ST_fsm_state8;
            }
            break;
        case 256 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state9.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_1_fu_300_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state10;
            }
            break;
        case 512 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state10.read()) && esl_seteq<1,1,1>(ap_const_lv1_1, tmp_2_fu_348_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state9;
            } else {
                ap_NS_fsm = ap_ST_fsm_state11;
            }
            break;
        case 1024 : 
            ap_NS_fsm = ap_ST_fsm_state10;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<11>) ("XXXXXXXXXXX");
            break;
    }
}

}

