// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dct_HH_
#define _dct_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "dct_2d.h"
#include "dct_2d_row_outbuf.h"

namespace ap_rtl {

struct dct : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > input_r_address0;
    sc_out< sc_logic > input_r_ce0;
    sc_in< sc_lv<16> > input_r_q0;
    sc_out< sc_lv<6> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_logic > output_r_we0;
    sc_out< sc_lv<16> > output_r_d0;


    // Module declarations
    dct(sc_module_name name);
    SC_HAS_PROCESS(dct);

    ~dct();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    dct_2d_row_outbuf* buf_2d_in_U;
    dct_2d_row_outbuf* buf_2d_out_U;
    dct_2d* grp_dct_2d_fu_147;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<8> > tmp_28_cast_fu_163_p1;
    sc_signal< sc_lv<8> > tmp_28_cast_reg_306;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > r_fu_173_p2;
    sc_signal< sc_lv<4> > r_reg_314;
    sc_signal< sc_lv<6> > tmp_i_fu_183_p3;
    sc_signal< sc_lv<6> > tmp_i_reg_319;
    sc_signal< sc_lv<1> > exitcond1_i_fu_167_p2;
    sc_signal< sc_lv<6> > buf_2d_in_addr_reg_324;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<4> > c_fu_215_p2;
    sc_signal< sc_lv<4> > c_reg_332;
    sc_signal< sc_lv<1> > exitcond_i_fu_209_p2;
    sc_signal< sc_lv<8> > tmp_31_cast_fu_239_p1;
    sc_signal< sc_lv<8> > tmp_31_cast_reg_342;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<4> > r_1_fu_249_p2;
    sc_signal< sc_lv<4> > r_1_reg_350;
    sc_signal< sc_lv<6> > tmp_i4_fu_259_p3;
    sc_signal< sc_lv<6> > tmp_i4_reg_355;
    sc_signal< sc_lv<1> > exitcond1_i3_fu_243_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<4> > c_1_fu_291_p2;
    sc_signal< sc_lv<4> > c_1_reg_368;
    sc_signal< sc_lv<6> > sum3_i_fu_297_p2;
    sc_signal< sc_lv<6> > sum3_i_reg_373;
    sc_signal< sc_lv<1> > exitcond_i6_fu_285_p2;
    sc_signal< sc_lv<6> > buf_2d_in_address0;
    sc_signal< sc_logic > buf_2d_in_ce0;
    sc_signal< sc_logic > buf_2d_in_we0;
    sc_signal< sc_lv<16> > buf_2d_in_q0;
    sc_signal< sc_lv<6> > buf_2d_out_address0;
    sc_signal< sc_logic > buf_2d_out_ce0;
    sc_signal< sc_logic > buf_2d_out_we0;
    sc_signal< sc_lv<16> > buf_2d_out_q0;
    sc_signal< sc_logic > grp_dct_2d_fu_147_ap_start;
    sc_signal< sc_logic > grp_dct_2d_fu_147_ap_done;
    sc_signal< sc_logic > grp_dct_2d_fu_147_ap_idle;
    sc_signal< sc_logic > grp_dct_2d_fu_147_ap_ready;
    sc_signal< sc_lv<6> > grp_dct_2d_fu_147_in_block_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_147_in_block_ce0;
    sc_signal< sc_lv<6> > grp_dct_2d_fu_147_out_block_address0;
    sc_signal< sc_logic > grp_dct_2d_fu_147_out_block_ce0;
    sc_signal< sc_logic > grp_dct_2d_fu_147_out_block_we0;
    sc_signal< sc_lv<16> > grp_dct_2d_fu_147_out_block_d0;
    sc_signal< sc_lv<4> > r_i_reg_103;
    sc_signal< sc_lv<4> > c_i_reg_114;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<4> > r_i2_reg_125;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<4> > c_i5_reg_136;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_reg_grp_dct_2d_fu_147_ap_start;
    sc_signal< sc_lv<32> > tmp_32_cast_fu_204_p1;
    sc_signal< sc_lv<32> > sum_i_cast_fu_226_p1;
    sc_signal< sc_lv<32> > tmp_34_cast_fu_280_p1;
    sc_signal< sc_lv<32> > sum3_i_cast_fu_302_p1;
    sc_signal< sc_lv<7> > tmp_fu_155_p3;
    sc_signal< sc_lv<3> > tmp_3_fu_179_p1;
    sc_signal< sc_lv<8> > c_i_cast5_cast_fu_195_p1;
    sc_signal< sc_lv<8> > tmp_21_fu_199_p2;
    sc_signal< sc_lv<6> > c_i_cast6_fu_191_p1;
    sc_signal< sc_lv<6> > sum_i_fu_221_p2;
    sc_signal< sc_lv<7> > tmp_s_fu_231_p3;
    sc_signal< sc_lv<3> > tmp_4_fu_255_p1;
    sc_signal< sc_lv<8> > c_i5_cast1_cast_fu_271_p1;
    sc_signal< sc_lv<8> > tmp_22_fu_275_p2;
    sc_signal< sc_lv<6> > c_i5_cast2_fu_267_p1;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state1;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_state5;
    static const sc_lv<8> ap_ST_fsm_state6;
    static const sc_lv<8> ap_ST_fsm_state7;
    static const sc_lv<8> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_buf_2d_in_address0();
    void thread_buf_2d_in_ce0();
    void thread_buf_2d_in_we0();
    void thread_buf_2d_out_address0();
    void thread_buf_2d_out_ce0();
    void thread_buf_2d_out_we0();
    void thread_c_1_fu_291_p2();
    void thread_c_fu_215_p2();
    void thread_c_i5_cast1_cast_fu_271_p1();
    void thread_c_i5_cast2_fu_267_p1();
    void thread_c_i_cast5_cast_fu_195_p1();
    void thread_c_i_cast6_fu_191_p1();
    void thread_exitcond1_i3_fu_243_p2();
    void thread_exitcond1_i_fu_167_p2();
    void thread_exitcond_i6_fu_285_p2();
    void thread_exitcond_i_fu_209_p2();
    void thread_grp_dct_2d_fu_147_ap_start();
    void thread_input_r_address0();
    void thread_input_r_ce0();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_r_1_fu_249_p2();
    void thread_r_fu_173_p2();
    void thread_sum3_i_cast_fu_302_p1();
    void thread_sum3_i_fu_297_p2();
    void thread_sum_i_cast_fu_226_p1();
    void thread_sum_i_fu_221_p2();
    void thread_tmp_21_fu_199_p2();
    void thread_tmp_22_fu_275_p2();
    void thread_tmp_28_cast_fu_163_p1();
    void thread_tmp_31_cast_fu_239_p1();
    void thread_tmp_32_cast_fu_204_p1();
    void thread_tmp_34_cast_fu_280_p1();
    void thread_tmp_3_fu_179_p1();
    void thread_tmp_4_fu_255_p1();
    void thread_tmp_fu_155_p3();
    void thread_tmp_i4_fu_259_p3();
    void thread_tmp_i_fu_183_p3();
    void thread_tmp_s_fu_231_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
