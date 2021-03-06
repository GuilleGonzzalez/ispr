// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "Loop_Xpose_Col_Outer.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic Loop_Xpose_Col_Outer::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic Loop_Xpose_Col_Outer::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<3> Loop_Xpose_Col_Outer::ap_ST_fsm_state1 = "1";
const sc_lv<3> Loop_Xpose_Col_Outer::ap_ST_fsm_pp0_stage0 = "10";
const sc_lv<3> Loop_Xpose_Col_Outer::ap_ST_fsm_state5 = "100";
const sc_lv<32> Loop_Xpose_Col_Outer::ap_const_lv32_0 = "00000000000000000000000000000000";
const bool Loop_Xpose_Col_Outer::ap_const_boolean_1 = true;
const sc_lv<32> Loop_Xpose_Col_Outer::ap_const_lv32_1 = "1";
const bool Loop_Xpose_Col_Outer::ap_const_boolean_0 = false;
const sc_lv<1> Loop_Xpose_Col_Outer::ap_const_lv1_0 = "0";
const sc_lv<1> Loop_Xpose_Col_Outer::ap_const_lv1_1 = "1";
const sc_lv<7> Loop_Xpose_Col_Outer::ap_const_lv7_0 = "0000000";
const sc_lv<4> Loop_Xpose_Col_Outer::ap_const_lv4_0 = "0000";
const sc_lv<7> Loop_Xpose_Col_Outer::ap_const_lv7_40 = "1000000";
const sc_lv<7> Loop_Xpose_Col_Outer::ap_const_lv7_1 = "1";
const sc_lv<4> Loop_Xpose_Col_Outer::ap_const_lv4_1 = "1";
const sc_lv<4> Loop_Xpose_Col_Outer::ap_const_lv4_8 = "1000";
const sc_lv<3> Loop_Xpose_Col_Outer::ap_const_lv3_0 = "000";
const sc_lv<32> Loop_Xpose_Col_Outer::ap_const_lv32_2 = "10";

Loop_Xpose_Col_Outer::Loop_Xpose_Col_Outer(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0_flag00000000);

    SC_METHOD(thread_ap_block_pp0_stage0_flag00011001);

    SC_METHOD(thread_ap_block_pp0_stage0_flag00011011);

    SC_METHOD(thread_ap_block_state1);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );

    SC_METHOD(thread_ap_block_state2_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter1);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter2);

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state2);
    sensitive << ( exitcond_flatten_fu_102_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_buf_2d_out_address0);
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );
    sensitive << ( tmp_14_cast_fu_192_p1 );

    SC_METHOD(thread_buf_2d_out_ce0);
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_buf_2d_out_d0);
    sensitive << ( col_outbuf_i_q0 );
    sensitive << ( ap_enable_reg_pp0_iter2 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );

    SC_METHOD(thread_buf_2d_out_we0);
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_reg_pp0_iter1_exitcond_flatten_reg_197 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    SC_METHOD(thread_col_outbuf_i_address0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );
    sensitive << ( tmp_13_cast_fu_162_p1 );

    SC_METHOD(thread_col_outbuf_i_ce0);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_enable_reg_pp0_iter1 );

    SC_METHOD(thread_exitcond_flatten_fu_102_p2);
    sensitive << ( indvar_flatten_reg_69 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_i_3_i_cast4_cast_fu_183_p1);
    sensitive << ( ap_reg_pp0_iter1_i_3_i_mid2_reg_206 );

    SC_METHOD(thread_i_3_i_mid2_fu_126_p3);
    sensitive << ( i_3_i_phi_fu_95_p4 );
    sensitive << ( tmp_s_fu_120_p2 );

    SC_METHOD(thread_i_3_i_phi_fu_95_p4);
    sensitive << ( i_3_i_reg_91 );
    sensitive << ( exitcond_flatten_reg_197 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( i_fu_167_p2 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );

    SC_METHOD(thread_i_fu_167_p2);
    sensitive << ( i_3_i_mid2_reg_206 );

    SC_METHOD(thread_indvar_flatten_next_fu_108_p2);
    sensitive << ( indvar_flatten_reg_69 );

    SC_METHOD(thread_j_1_i_cast5_mid2_cas_fu_142_p1);
    sensitive << ( j_1_i_cast5_mid2_v_reg_213 );

    SC_METHOD(thread_j_1_i_cast5_mid2_v_fu_134_p3);
    sensitive << ( j_1_i_phi_fu_84_p4 );
    sensitive << ( tmp_s_fu_120_p2 );
    sensitive << ( j_fu_114_p2 );

    SC_METHOD(thread_j_1_i_phi_fu_84_p4);
    sensitive << ( j_1_i_reg_80 );
    sensitive << ( exitcond_flatten_reg_197 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( j_1_i_cast5_mid2_v_reg_213 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_flag00000000 );

    SC_METHOD(thread_j_fu_114_p2);
    sensitive << ( j_1_i_phi_fu_84_p4 );

    SC_METHOD(thread_tmp_10_cast_fu_179_p1);
    sensitive << ( tmp_fu_172_p3 );

    SC_METHOD(thread_tmp_12_cast_fu_152_p1);
    sensitive << ( tmp_1_fu_145_p3 );

    SC_METHOD(thread_tmp_13_cast_fu_162_p1);
    sensitive << ( tmp_2_fu_156_p2 );

    SC_METHOD(thread_tmp_14_cast_fu_192_p1);
    sensitive << ( tmp_3_fu_186_p2 );

    SC_METHOD(thread_tmp_1_fu_145_p3);
    sensitive << ( i_3_i_mid2_reg_206 );

    SC_METHOD(thread_tmp_2_fu_156_p2);
    sensitive << ( j_1_i_cast5_mid2_cas_fu_142_p1 );
    sensitive << ( tmp_12_cast_fu_152_p1 );

    SC_METHOD(thread_tmp_3_fu_186_p2);
    sensitive << ( i_3_i_cast4_cast_fu_183_p1 );
    sensitive << ( tmp_10_cast_fu_179_p1 );

    SC_METHOD(thread_tmp_fu_172_p3);
    sensitive << ( ap_reg_pp0_iter1_j_1_i_cast5_mid2_v_reg_213 );

    SC_METHOD(thread_tmp_s_fu_120_p2);
    sensitive << ( exitcond_flatten_fu_102_p2 );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_block_pp0_stage0_flag00011001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( i_3_i_phi_fu_95_p4 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_done_reg );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( exitcond_flatten_fu_102_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0_flag00011011 );
    sensitive << ( ap_enable_reg_pp0_iter2 );

    ap_done_reg = SC_LOGIC_0;
    ap_CS_fsm = "001";
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter2 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "Loop_Xpose_Col_Outer_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, col_outbuf_i_address0, "(port)col_outbuf_i_address0");
    sc_trace(mVcdFile, col_outbuf_i_ce0, "(port)col_outbuf_i_ce0");
    sc_trace(mVcdFile, col_outbuf_i_q0, "(port)col_outbuf_i_q0");
    sc_trace(mVcdFile, buf_2d_out_address0, "(port)buf_2d_out_address0");
    sc_trace(mVcdFile, buf_2d_out_ce0, "(port)buf_2d_out_ce0");
    sc_trace(mVcdFile, buf_2d_out_we0, "(port)buf_2d_out_we0");
    sc_trace(mVcdFile, buf_2d_out_d0, "(port)buf_2d_out_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_done_reg, "ap_done_reg");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, indvar_flatten_reg_69, "indvar_flatten_reg_69");
    sc_trace(mVcdFile, j_1_i_reg_80, "j_1_i_reg_80");
    sc_trace(mVcdFile, i_3_i_reg_91, "i_3_i_reg_91");
    sc_trace(mVcdFile, exitcond_flatten_fu_102_p2, "exitcond_flatten_fu_102_p2");
    sc_trace(mVcdFile, exitcond_flatten_reg_197, "exitcond_flatten_reg_197");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_block_state2_pp0_stage0_iter0, "ap_block_state2_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter1, "ap_block_state3_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter2, "ap_block_state4_pp0_stage0_iter2");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00011001, "ap_block_pp0_stage0_flag00011001");
    sc_trace(mVcdFile, ap_reg_pp0_iter1_exitcond_flatten_reg_197, "ap_reg_pp0_iter1_exitcond_flatten_reg_197");
    sc_trace(mVcdFile, indvar_flatten_next_fu_108_p2, "indvar_flatten_next_fu_108_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, i_3_i_mid2_fu_126_p3, "i_3_i_mid2_fu_126_p3");
    sc_trace(mVcdFile, i_3_i_mid2_reg_206, "i_3_i_mid2_reg_206");
    sc_trace(mVcdFile, ap_reg_pp0_iter1_i_3_i_mid2_reg_206, "ap_reg_pp0_iter1_i_3_i_mid2_reg_206");
    sc_trace(mVcdFile, j_1_i_cast5_mid2_v_fu_134_p3, "j_1_i_cast5_mid2_v_fu_134_p3");
    sc_trace(mVcdFile, j_1_i_cast5_mid2_v_reg_213, "j_1_i_cast5_mid2_v_reg_213");
    sc_trace(mVcdFile, ap_reg_pp0_iter1_j_1_i_cast5_mid2_v_reg_213, "ap_reg_pp0_iter1_j_1_i_cast5_mid2_v_reg_213");
    sc_trace(mVcdFile, i_fu_167_p2, "i_fu_167_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_state1, "ap_block_state1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00011011, "ap_block_pp0_stage0_flag00011011");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state2, "ap_condition_pp0_exit_iter0_state2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter2, "ap_enable_reg_pp0_iter2");
    sc_trace(mVcdFile, j_1_i_phi_fu_84_p4, "j_1_i_phi_fu_84_p4");
    sc_trace(mVcdFile, ap_block_pp0_stage0_flag00000000, "ap_block_pp0_stage0_flag00000000");
    sc_trace(mVcdFile, i_3_i_phi_fu_95_p4, "i_3_i_phi_fu_95_p4");
    sc_trace(mVcdFile, tmp_13_cast_fu_162_p1, "tmp_13_cast_fu_162_p1");
    sc_trace(mVcdFile, tmp_14_cast_fu_192_p1, "tmp_14_cast_fu_192_p1");
    sc_trace(mVcdFile, tmp_s_fu_120_p2, "tmp_s_fu_120_p2");
    sc_trace(mVcdFile, j_fu_114_p2, "j_fu_114_p2");
    sc_trace(mVcdFile, tmp_1_fu_145_p3, "tmp_1_fu_145_p3");
    sc_trace(mVcdFile, j_1_i_cast5_mid2_cas_fu_142_p1, "j_1_i_cast5_mid2_cas_fu_142_p1");
    sc_trace(mVcdFile, tmp_12_cast_fu_152_p1, "tmp_12_cast_fu_152_p1");
    sc_trace(mVcdFile, tmp_2_fu_156_p2, "tmp_2_fu_156_p2");
    sc_trace(mVcdFile, tmp_fu_172_p3, "tmp_fu_172_p3");
    sc_trace(mVcdFile, i_3_i_cast4_cast_fu_183_p1, "i_3_i_cast4_cast_fu_183_p1");
    sc_trace(mVcdFile, tmp_10_cast_fu_179_p1, "tmp_10_cast_fu_179_p1");
    sc_trace(mVcdFile, tmp_3_fu_186_p2, "tmp_3_fu_186_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

Loop_Xpose_Col_Outer::~Loop_Xpose_Col_Outer() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void Loop_Xpose_Col_Outer::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_done_reg = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, ap_continue.read())) {
            ap_done_reg = ap_const_logic_0;
        } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
            ap_done_reg = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0)) {
            if (esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state2.read())) {
                ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state2.read() ^ ap_const_logic_1);
            } else if (esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1)) {
                ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
            }
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter2 = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter2 = ap_enable_reg_pp0_iter1.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                    !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
            ap_enable_reg_pp0_iter2 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_197.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        i_3_i_reg_91 = i_fu_167_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        i_3_i_reg_91 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_fu_102_p2.read(), ap_const_lv1_0))) {
        indvar_flatten_reg_69 = indvar_flatten_next_fu_108_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        indvar_flatten_reg_69 = ap_const_lv7_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_197.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        j_1_i_reg_80 = j_1_i_cast5_mid2_v_reg_213.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
        j_1_i_reg_80 = ap_const_lv4_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0))) {
        ap_reg_pp0_iter1_exitcond_flatten_reg_197 = exitcond_flatten_reg_197.read();
        ap_reg_pp0_iter1_i_3_i_mid2_reg_206 = i_3_i_mid2_reg_206.read();
        ap_reg_pp0_iter1_j_1_i_cast5_mid2_v_reg_213 = j_1_i_cast5_mid2_v_reg_213.read();
        exitcond_flatten_reg_197 = exitcond_flatten_fu_102_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(exitcond_flatten_fu_102_p2.read(), ap_const_lv1_0))) {
        i_3_i_mid2_reg_206 = i_3_i_mid2_fu_126_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(exitcond_flatten_fu_102_p2.read(), ap_const_lv1_0))) {
        j_1_i_cast5_mid2_v_reg_213 = j_1_i_cast5_mid2_v_fu_134_p3.read();
    }
}

void Loop_Xpose_Col_Outer::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[1];
}

void Loop_Xpose_Col_Outer::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void Loop_Xpose_Col_Outer::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[2];
}

void Loop_Xpose_Col_Outer::thread_ap_block_pp0_stage0_flag00000000() {
    ap_block_pp0_stage0_flag00000000 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Loop_Xpose_Col_Outer::thread_ap_block_pp0_stage0_flag00011001() {
    ap_block_pp0_stage0_flag00011001 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Loop_Xpose_Col_Outer::thread_ap_block_pp0_stage0_flag00011011() {
    ap_block_pp0_stage0_flag00011011 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Loop_Xpose_Col_Outer::thread_ap_block_state1() {
    ap_block_state1 = (esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1));
}

void Loop_Xpose_Col_Outer::thread_ap_block_state2_pp0_stage0_iter0() {
    ap_block_state2_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Loop_Xpose_Col_Outer::thread_ap_block_state3_pp0_stage0_iter1() {
    ap_block_state3_pp0_stage0_iter1 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Loop_Xpose_Col_Outer::thread_ap_block_state4_pp0_stage0_iter2() {
    ap_block_state4_pp0_stage0_iter2 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void Loop_Xpose_Col_Outer::thread_ap_condition_pp0_exit_iter0_state2() {
    if (esl_seteq<1,1,1>(exitcond_flatten_fu_102_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state2 = ap_const_logic_0;
    }
}

void Loop_Xpose_Col_Outer::thread_ap_done() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_done_reg.read();
    }
}

void Loop_Xpose_Col_Outer::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void Loop_Xpose_Col_Outer::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void Loop_Xpose_Col_Outer::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter2.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void Loop_Xpose_Col_Outer::thread_ap_ready() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void Loop_Xpose_Col_Outer::thread_buf_2d_out_address0() {
    buf_2d_out_address0 =  (sc_lv<6>) (tmp_14_cast_fu_192_p1.read());
}

void Loop_Xpose_Col_Outer::thread_buf_2d_out_ce0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()))) {
        buf_2d_out_ce0 = ap_const_logic_1;
    } else {
        buf_2d_out_ce0 = ap_const_logic_0;
    }
}

void Loop_Xpose_Col_Outer::thread_buf_2d_out_d0() {
    buf_2d_out_d0 = col_outbuf_i_q0.read();
}

void Loop_Xpose_Col_Outer::thread_buf_2d_out_we0() {
    if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
         esl_seteq<1,1,1>(ap_reg_pp0_iter1_exitcond_flatten_reg_197.read(), ap_const_lv1_0))) {
        buf_2d_out_we0 = ap_const_logic_1;
    } else {
        buf_2d_out_we0 = ap_const_logic_0;
    }
}

void Loop_Xpose_Col_Outer::thread_col_outbuf_i_address0() {
    col_outbuf_i_address0 =  (sc_lv<6>) (tmp_13_cast_fu_162_p1.read());
}

void Loop_Xpose_Col_Outer::thread_col_outbuf_i_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()))) {
        col_outbuf_i_ce0 = ap_const_logic_1;
    } else {
        col_outbuf_i_ce0 = ap_const_logic_0;
    }
}

void Loop_Xpose_Col_Outer::thread_exitcond_flatten_fu_102_p2() {
    exitcond_flatten_fu_102_p2 = (!indvar_flatten_reg_69.read().is_01() || !ap_const_lv7_40.is_01())? sc_lv<1>(): sc_lv<1>(indvar_flatten_reg_69.read() == ap_const_lv7_40);
}

void Loop_Xpose_Col_Outer::thread_i_3_i_cast4_cast_fu_183_p1() {
    i_3_i_cast4_cast_fu_183_p1 = esl_zext<8,4>(ap_reg_pp0_iter1_i_3_i_mid2_reg_206.read());
}

void Loop_Xpose_Col_Outer::thread_i_3_i_mid2_fu_126_p3() {
    i_3_i_mid2_fu_126_p3 = (!tmp_s_fu_120_p2.read()[0].is_01())? sc_lv<4>(): ((tmp_s_fu_120_p2.read()[0].to_bool())? ap_const_lv4_0: i_3_i_phi_fu_95_p4.read());
}

void Loop_Xpose_Col_Outer::thread_i_3_i_phi_fu_95_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_197.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00000000.read(), ap_const_boolean_0))) {
        i_3_i_phi_fu_95_p4 = i_fu_167_p2.read();
    } else {
        i_3_i_phi_fu_95_p4 = i_3_i_reg_91.read();
    }
}

void Loop_Xpose_Col_Outer::thread_i_fu_167_p2() {
    i_fu_167_p2 = (!i_3_i_mid2_reg_206.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(i_3_i_mid2_reg_206.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void Loop_Xpose_Col_Outer::thread_indvar_flatten_next_fu_108_p2() {
    indvar_flatten_next_fu_108_p2 = (!indvar_flatten_reg_69.read().is_01() || !ap_const_lv7_1.is_01())? sc_lv<7>(): (sc_biguint<7>(indvar_flatten_reg_69.read()) + sc_biguint<7>(ap_const_lv7_1));
}

void Loop_Xpose_Col_Outer::thread_j_1_i_cast5_mid2_cas_fu_142_p1() {
    j_1_i_cast5_mid2_cas_fu_142_p1 = esl_zext<8,4>(j_1_i_cast5_mid2_v_reg_213.read());
}

void Loop_Xpose_Col_Outer::thread_j_1_i_cast5_mid2_v_fu_134_p3() {
    j_1_i_cast5_mid2_v_fu_134_p3 = (!tmp_s_fu_120_p2.read()[0].is_01())? sc_lv<4>(): ((tmp_s_fu_120_p2.read()[0].to_bool())? j_fu_114_p2.read(): j_1_i_phi_fu_84_p4.read());
}

void Loop_Xpose_Col_Outer::thread_j_1_i_phi_fu_84_p4() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(exitcond_flatten_reg_197.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00000000.read(), ap_const_boolean_0))) {
        j_1_i_phi_fu_84_p4 = j_1_i_cast5_mid2_v_reg_213.read();
    } else {
        j_1_i_phi_fu_84_p4 = j_1_i_reg_80.read();
    }
}

void Loop_Xpose_Col_Outer::thread_j_fu_114_p2() {
    j_fu_114_p2 = (!j_1_i_phi_fu_84_p4.read().is_01() || !ap_const_lv4_1.is_01())? sc_lv<4>(): (sc_biguint<4>(j_1_i_phi_fu_84_p4.read()) + sc_biguint<4>(ap_const_lv4_1));
}

void Loop_Xpose_Col_Outer::thread_tmp_10_cast_fu_179_p1() {
    tmp_10_cast_fu_179_p1 = esl_zext<8,7>(tmp_fu_172_p3.read());
}

void Loop_Xpose_Col_Outer::thread_tmp_12_cast_fu_152_p1() {
    tmp_12_cast_fu_152_p1 = esl_zext<8,7>(tmp_1_fu_145_p3.read());
}

void Loop_Xpose_Col_Outer::thread_tmp_13_cast_fu_162_p1() {
    tmp_13_cast_fu_162_p1 = esl_zext<32,8>(tmp_2_fu_156_p2.read());
}

void Loop_Xpose_Col_Outer::thread_tmp_14_cast_fu_192_p1() {
    tmp_14_cast_fu_192_p1 = esl_zext<32,8>(tmp_3_fu_186_p2.read());
}

void Loop_Xpose_Col_Outer::thread_tmp_1_fu_145_p3() {
    tmp_1_fu_145_p3 = esl_concat<4,3>(i_3_i_mid2_reg_206.read(), ap_const_lv3_0);
}

void Loop_Xpose_Col_Outer::thread_tmp_2_fu_156_p2() {
    tmp_2_fu_156_p2 = (!j_1_i_cast5_mid2_cas_fu_142_p1.read().is_01() || !tmp_12_cast_fu_152_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(j_1_i_cast5_mid2_cas_fu_142_p1.read()) + sc_biguint<8>(tmp_12_cast_fu_152_p1.read()));
}

void Loop_Xpose_Col_Outer::thread_tmp_3_fu_186_p2() {
    tmp_3_fu_186_p2 = (!i_3_i_cast4_cast_fu_183_p1.read().is_01() || !tmp_10_cast_fu_179_p1.read().is_01())? sc_lv<8>(): (sc_biguint<8>(i_3_i_cast4_cast_fu_183_p1.read()) + sc_biguint<8>(tmp_10_cast_fu_179_p1.read()));
}

void Loop_Xpose_Col_Outer::thread_tmp_fu_172_p3() {
    tmp_fu_172_p3 = esl_concat<4,3>(ap_reg_pp0_iter1_j_1_i_cast5_mid2_v_reg_213.read(), ap_const_lv3_0);
}

void Loop_Xpose_Col_Outer::thread_tmp_s_fu_120_p2() {
    tmp_s_fu_120_p2 = (!i_3_i_phi_fu_95_p4.read().is_01() || !ap_const_lv4_8.is_01())? sc_lv<1>(): sc_lv<1>(i_3_i_phi_fu_95_p4.read() == ap_const_lv4_8);
}

void Loop_Xpose_Col_Outer::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && !(esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) || esl_seteq<1,1,1>(ap_done_reg.read(), ap_const_logic_1)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((!(esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(exitcond_flatten_fu_102_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if (((esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter2.read()) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)) || (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
  esl_seteq<1,1,1>(ap_block_pp0_stage0_flag00011011.read(), ap_const_boolean_0) && 
  esl_seteq<1,1,1>(exitcond_flatten_fu_102_p2.read(), ap_const_lv1_1) && 
  esl_seteq<1,1,1>(ap_enable_reg_pp0_iter1.read(), ap_const_logic_0)))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state1;
            break;
        default : 
            ap_NS_fsm = "XXX";
            break;
    }
}

}

