// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dct_2d_HH_
#define _dct_2d_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dct_1d2.h"
#include "dct_2d_row_outbuf.h"

namespace ap_rtl {

struct dct_2d : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > in_block_address0;
    sc_out< sc_logic > in_block_ce0;
    sc_in< sc_lv<16> > in_block_q0;
    sc_out< sc_lv<6> > out_block_address0;
    sc_out< sc_logic > out_block_ce0;
    sc_out< sc_logic > out_block_we0;
    sc_out< sc_lv<16> > out_block_d0;


    // Module declarations
    dct_2d(sc_module_name name);
    SC_HAS_PROCESS(dct_2d);

    ~dct_2d();

    sc_trace_file* mVcdFile;

    dct_2d_row_outbuf* row_outbuf_U;
    dct_2d_row_outbuf* col_outbuf_U;
    dct_2d_row_outbuf* col_inbuf_U;
    dct_1d2* grp_dct_1d2_fu_207;
    sc_signal< sc_lv<9> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<7> > indvar_flatten_reg_129;
    sc_signal< sc_lv<4> > j_reg_140;
    sc_signal< sc_lv<4> > i_1_reg_151;
    sc_signal< sc_lv<7> > indvar_flatten1_reg_174;
    sc_signal< sc_lv<4> > j_1_reg_185;
    sc_signal< sc_lv<4> > i_3_reg_196;
    sc_signal< sc_lv<1> > tmp_fu_222_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > i_4_fu_228_p2;
    sc_signal< sc_lv<4> > i_4_reg_440;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_234_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_445;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_flag00011001;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond_flatten_reg_445;
    sc_signal< sc_lv<7> > indvar_flatten_next_fu_240_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<4> > i_1_mid2_fu_258_p3;
    sc_signal< sc_lv<4> > i_1_mid2_reg_454;
    sc_signal< sc_lv<4> > ap_reg_pp0_iter1_i_1_mid2_reg_454;
    sc_signal< sc_lv<4> > j_cast5_mid2_v_fu_266_p3;
    sc_signal< sc_lv<4> > j_cast5_mid2_v_reg_461;
    sc_signal< sc_lv<4> > ap_reg_pp0_iter1_j_cast5_mid2_v_reg_461;
    sc_signal< sc_lv<4> > i_6_fu_299_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<1> > tmp_9_fu_329_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<4> > i_5_fu_335_p2;
    sc_signal< sc_lv<4> > i_5_reg_482;
    sc_signal< sc_lv<1> > exitcond_flatten1_fu_341_p2;
    sc_signal< sc_lv<1> > exitcond_flatten1_reg_487;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state10_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state11_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state12_pp1_stage0_iter2;
    sc_signal< bool > ap_block_pp1_stage0_flag00011001;
    sc_signal< sc_lv<1> > ap_reg_pp1_iter1_exitcond_flatten1_reg_487;
    sc_signal< sc_lv<7> > indvar_flatten_next1_fu_347_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<4> > i_3_mid2_fu_365_p3;
    sc_signal< sc_lv<4> > i_3_mid2_reg_496;
    sc_signal< sc_lv<4> > ap_reg_pp1_iter1_i_3_mid2_reg_496;
    sc_signal< sc_lv<4> > j_1_cast2_mid2_v_fu_373_p3;
    sc_signal< sc_lv<4> > j_1_cast2_mid2_v_reg_503;
    sc_signal< sc_lv<4> > ap_reg_pp1_iter1_j_1_cast2_mid2_v_reg_503;
    sc_signal< sc_lv<4> > i_7_fu_406_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp0_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< bool > ap_block_pp1_stage0_flag00011011;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state10;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter2;
    sc_signal< sc_lv<6> > row_outbuf_address0;
    sc_signal< sc_logic > row_outbuf_ce0;
    sc_signal< sc_logic > row_outbuf_we0;
    sc_signal< sc_lv<16> > row_outbuf_q0;
    sc_signal< sc_lv<6> > col_outbuf_address0;
    sc_signal< sc_logic > col_outbuf_ce0;
    sc_signal< sc_logic > col_outbuf_we0;
    sc_signal< sc_lv<16> > col_outbuf_q0;
    sc_signal< sc_lv<6> > col_inbuf_address0;
    sc_signal< sc_logic > col_inbuf_ce0;
    sc_signal< sc_logic > col_inbuf_we0;
    sc_signal< sc_lv<16> > col_inbuf_q0;
    sc_signal< sc_logic > grp_dct_1d2_fu_207_ap_start;
    sc_signal< sc_logic > grp_dct_1d2_fu_207_ap_done;
    sc_signal< sc_logic > grp_dct_1d2_fu_207_ap_idle;
    sc_signal< sc_logic > grp_dct_1d2_fu_207_ap_ready;
    sc_signal< sc_lv<6> > grp_dct_1d2_fu_207_src_address0;
    sc_signal< sc_logic > grp_dct_1d2_fu_207_src_ce0;
    sc_signal< sc_lv<16> > grp_dct_1d2_fu_207_src_q0;
    sc_signal< sc_lv<4> > grp_dct_1d2_fu_207_i_2;
    sc_signal< sc_lv<6> > grp_dct_1d2_fu_207_dst_address0;
    sc_signal< sc_logic > grp_dct_1d2_fu_207_dst_ce0;
    sc_signal< sc_logic > grp_dct_1d2_fu_207_dst_we0;
    sc_signal< sc_lv<16> > grp_dct_1d2_fu_207_dst_d0;
    sc_signal< sc_lv<4> > grp_dct_1d2_fu_207_i_21;
    sc_signal< sc_lv<4> > i_reg_117;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > j_phi_fu_144_p4;
    sc_signal< bool > ap_block_pp0_stage0_flag00000000;
    sc_signal< sc_lv<4> > i_1_phi_fu_155_p4;
    sc_signal< sc_lv<4> > i_2_reg_162;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<4> > j_1_phi_fu_189_p4;
    sc_signal< bool > ap_block_pp1_stage0_flag00000000;
    sc_signal< sc_lv<4> > i_3_phi_fu_200_p4;
    sc_signal< sc_logic > ap_reg_grp_dct_1d2_fu_207_ap_start;
    sc_signal< sc_lv<32> > tmp_10_cast_fu_294_p1;
    sc_signal< sc_lv<32> > tmp_5_cast_fu_324_p1;
    sc_signal< sc_lv<32> > tmp_16_cast_fu_401_p1;
    sc_signal< sc_lv<32> > tmp_13_cast_fu_431_p1;
    sc_signal< sc_lv<1> > tmp_s_fu_252_p2;
    sc_signal< sc_lv<4> > j_2_fu_246_p2;
    sc_signal< sc_lv<7> > tmp_6_fu_277_p3;
    sc_signal< sc_lv<8> > j_cast5_mid2_cast_fu_274_p1;
    sc_signal< sc_lv<8> > tmp_8_cast_fu_284_p1;
    sc_signal< sc_lv<8> > tmp_2_fu_288_p2;
    sc_signal< sc_lv<7> > tmp_1_fu_304_p3;
    sc_signal< sc_lv<8> > i_1_cast4_cast_fu_315_p1;
    sc_signal< sc_lv<8> > tmp_4_cast_fu_311_p1;
    sc_signal< sc_lv<8> > tmp_5_fu_318_p2;
    sc_signal< sc_lv<1> > tmp_4_fu_359_p2;
    sc_signal< sc_lv<4> > j_3_fu_353_p2;
    sc_signal< sc_lv<7> > tmp_11_fu_384_p3;
    sc_signal< sc_lv<8> > j_1_cast2_mid2_cast_fu_381_p1;
    sc_signal< sc_lv<8> > tmp_15_cast_fu_391_p1;
    sc_signal< sc_lv<8> > tmp_12_fu_395_p2;
    sc_signal< sc_lv<7> > tmp_8_fu_411_p3;
    sc_signal< sc_lv<8> > i_3_cast1_cast_fu_422_p1;
    sc_signal< sc_lv<8> > tmp_12_cast_fu_418_p1;
    sc_signal< sc_lv<8> > tmp_10_fu_425_p2;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<9> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<9> ap_ST_fsm_state1;
    static const sc_lv<9> ap_ST_fsm_state2;
    static const sc_lv<9> ap_ST_fsm_state3;
    static const sc_lv<9> ap_ST_fsm_pp0_stage0;
    static const sc_lv<9> ap_ST_fsm_state7;
    static const sc_lv<9> ap_ST_fsm_state8;
    static const sc_lv<9> ap_ST_fsm_state9;
    static const sc_lv<9> ap_ST_fsm_pp1_stage0;
    static const sc_lv<9> ap_ST_fsm_state13;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_8;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_pp0_stage0_flag00000000();
    void thread_ap_block_pp0_stage0_flag00011001();
    void thread_ap_block_pp0_stage0_flag00011011();
    void thread_ap_block_pp1_stage0_flag00000000();
    void thread_ap_block_pp1_stage0_flag00011001();
    void thread_ap_block_pp1_stage0_flag00011011();
    void thread_ap_block_state10_pp1_stage0_iter0();
    void thread_ap_block_state11_pp1_stage0_iter1();
    void thread_ap_block_state12_pp1_stage0_iter2();
    void thread_ap_block_state4_pp0_stage0_iter0();
    void thread_ap_block_state5_pp0_stage0_iter1();
    void thread_ap_block_state6_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state4();
    void thread_ap_condition_pp1_exit_iter0_state10();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_ready();
    void thread_col_inbuf_address0();
    void thread_col_inbuf_ce0();
    void thread_col_inbuf_we0();
    void thread_col_outbuf_address0();
    void thread_col_outbuf_ce0();
    void thread_col_outbuf_we0();
    void thread_exitcond_flatten1_fu_341_p2();
    void thread_exitcond_flatten_fu_234_p2();
    void thread_grp_dct_1d2_fu_207_ap_start();
    void thread_grp_dct_1d2_fu_207_i_2();
    void thread_grp_dct_1d2_fu_207_i_21();
    void thread_grp_dct_1d2_fu_207_src_q0();
    void thread_i_1_cast4_cast_fu_315_p1();
    void thread_i_1_mid2_fu_258_p3();
    void thread_i_1_phi_fu_155_p4();
    void thread_i_3_cast1_cast_fu_422_p1();
    void thread_i_3_mid2_fu_365_p3();
    void thread_i_3_phi_fu_200_p4();
    void thread_i_4_fu_228_p2();
    void thread_i_5_fu_335_p2();
    void thread_i_6_fu_299_p2();
    void thread_i_7_fu_406_p2();
    void thread_in_block_address0();
    void thread_in_block_ce0();
    void thread_indvar_flatten_next1_fu_347_p2();
    void thread_indvar_flatten_next_fu_240_p2();
    void thread_j_1_cast2_mid2_cast_fu_381_p1();
    void thread_j_1_cast2_mid2_v_fu_373_p3();
    void thread_j_1_phi_fu_189_p4();
    void thread_j_2_fu_246_p2();
    void thread_j_3_fu_353_p2();
    void thread_j_cast5_mid2_cast_fu_274_p1();
    void thread_j_cast5_mid2_v_fu_266_p3();
    void thread_j_phi_fu_144_p4();
    void thread_out_block_address0();
    void thread_out_block_ce0();
    void thread_out_block_d0();
    void thread_out_block_we0();
    void thread_row_outbuf_address0();
    void thread_row_outbuf_ce0();
    void thread_row_outbuf_we0();
    void thread_tmp_10_cast_fu_294_p1();
    void thread_tmp_10_fu_425_p2();
    void thread_tmp_11_fu_384_p3();
    void thread_tmp_12_cast_fu_418_p1();
    void thread_tmp_12_fu_395_p2();
    void thread_tmp_13_cast_fu_431_p1();
    void thread_tmp_15_cast_fu_391_p1();
    void thread_tmp_16_cast_fu_401_p1();
    void thread_tmp_1_fu_304_p3();
    void thread_tmp_2_fu_288_p2();
    void thread_tmp_4_cast_fu_311_p1();
    void thread_tmp_4_fu_359_p2();
    void thread_tmp_5_cast_fu_324_p1();
    void thread_tmp_5_fu_318_p2();
    void thread_tmp_6_fu_277_p3();
    void thread_tmp_8_cast_fu_284_p1();
    void thread_tmp_8_fu_411_p3();
    void thread_tmp_9_fu_329_p2();
    void thread_tmp_fu_222_p2();
    void thread_tmp_s_fu_252_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif