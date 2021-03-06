// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "leds_controller.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic leds_controller::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic leds_controller::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<7> leds_controller::ap_ST_fsm_state1 = "1";
const sc_lv<7> leds_controller::ap_ST_fsm_state2 = "10";
const sc_lv<7> leds_controller::ap_ST_fsm_state3 = "100";
const sc_lv<7> leds_controller::ap_ST_fsm_state4 = "1000";
const sc_lv<7> leds_controller::ap_ST_fsm_state5 = "10000";
const sc_lv<7> leds_controller::ap_ST_fsm_state6 = "100000";
const sc_lv<7> leds_controller::ap_ST_fsm_state7 = "1000000";
const sc_lv<32> leds_controller::ap_const_lv32_6 = "110";
const sc_lv<32> leds_controller::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> leds_controller::ap_const_lv32_1 = "1";
const sc_lv<32> leds_controller::ap_const_lv32_4 = "100";
const sc_lv<1> leds_controller::ap_const_lv1_1 = "1";
const sc_lv<32> leds_controller::ap_const_lv32_5 = "101";
const sc_lv<3> leds_controller::ap_const_lv3_0 = "000";
const sc_lv<32> leds_controller::ap_const_lv32_13 = "10011";
const sc_lv<42> leds_controller::ap_const_lv42_1A36E3 = "110100011011011100011";
const sc_lv<32> leds_controller::ap_const_lv32_23 = "100011";
const sc_lv<32> leds_controller::ap_const_lv32_29 = "101001";
const sc_lv<40> leds_controller::ap_const_lv40_0 = "0000000000000000000000000000000000000000";
const sc_lv<32> leds_controller::ap_const_lv32_27 = "100111";
const sc_lv<20> leds_controller::ap_const_lv20_0 = "00000000000000000000";
const sc_lv<32> leds_controller::ap_const_lv32_2 = "10";
const sc_lv<2> leds_controller::ap_const_lv2_0 = "00";
const bool leds_controller::ap_const_boolean_1 = true;

leds_controller::leds_controller(sc_module_name name) : sc_module(name), mVcdFile(0) {
    leds_controller_mbkb_U0 = new leds_controller_mbkb<1,4,22,20,42>("leds_controller_mbkb_U0");
    leds_controller_mbkb_U0->clk(ap_clk);
    leds_controller_mbkb_U0->reset(ap_rst);
    leds_controller_mbkb_U0->din0(grp_fu_116_p0);
    leds_controller_mbkb_U0->din1(tmp_1_tr_reg_201);
    leds_controller_mbkb_U0->ce(ap_var_for_const0);
    leds_controller_mbkb_U0->dout(grp_fu_116_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state7);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_grp_fu_116_p0);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_neg_mul_fu_136_p2);
    sensitive << ( tmp_3_reg_217 );

    SC_METHOD(thread_neg_ti_fu_165_p2);
    sensitive << ( tmp_6_fu_158_p3 );

    SC_METHOD(thread_out_V_V_blk_n);
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_out_V_V_din);
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_CS_fsm_state7 );
    sensitive << ( p_s_fu_188_p3 );

    SC_METHOD(thread_out_V_V_write);
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_CS_fsm_state7 );

    SC_METHOD(thread_p_s_fu_188_p3);
    sensitive << ( tmp_11_fu_180_p3 );
    sensitive << ( tmp_10_fu_176_p1 );

    SC_METHOD(thread_tmp_10_fu_176_p1);
    sensitive << ( tmp_2_fu_171_p3 );

    SC_METHOD(thread_tmp_11_fu_180_p3);
    sensitive << ( tmp_2_fu_171_p3 );

    SC_METHOD(thread_tmp_1_cast_fu_95_p1);
    sensitive << ( tmp_1_fu_87_p3 );

    SC_METHOD(thread_tmp_1_fu_87_p3);
    sensitive << ( x );

    SC_METHOD(thread_tmp_1_tr_fu_99_p2);
    sensitive << ( tmp_1_cast_fu_95_p1 );
    sensitive << ( tmp_fu_83_p1 );

    SC_METHOD(thread_tmp_2_fu_171_p3);
    sensitive << ( tmp_7_reg_206 );
    sensitive << ( tmp_5_reg_227 );
    sensitive << ( neg_ti_reg_232 );

    SC_METHOD(thread_tmp_3_fu_122_p1);
    sensitive << ( grp_fu_116_p2 );

    SC_METHOD(thread_tmp_4_fu_151_p1);
    sensitive << ( tmp_8_fu_141_p4 );

    SC_METHOD(thread_tmp_5_fu_155_p1);
    sensitive << ( tmp_9_reg_222 );

    SC_METHOD(thread_tmp_6_fu_158_p3);
    sensitive << ( tmp_7_reg_206 );
    sensitive << ( tmp_5_fu_155_p1 );
    sensitive << ( tmp_4_fu_151_p1 );

    SC_METHOD(thread_tmp_8_fu_141_p4);
    sensitive << ( neg_mul_fu_136_p2 );

    SC_METHOD(thread_tmp_fu_83_p1);
    sensitive << ( x );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( out_V_V_full_n );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state7 );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    ap_CS_fsm = "0000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "leds_controller_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, out_V_V_din, "(port)out_V_V_din");
    sc_trace(mVcdFile, out_V_V_full_n, "(port)out_V_V_full_n");
    sc_trace(mVcdFile, out_V_V_write, "(port)out_V_V_write");
    sc_trace(mVcdFile, x, "(port)x");
    sc_trace(mVcdFile, col_V, "(port)col_V");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, out_V_V_blk_n, "out_V_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state7, "ap_CS_fsm_state7");
    sc_trace(mVcdFile, tmp_1_tr_fu_99_p2, "tmp_1_tr_fu_99_p2");
    sc_trace(mVcdFile, tmp_1_tr_reg_201, "tmp_1_tr_reg_201");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, tmp_7_reg_206, "tmp_7_reg_206");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, tmp_3_fu_122_p1, "tmp_3_fu_122_p1");
    sc_trace(mVcdFile, tmp_3_reg_217, "tmp_3_reg_217");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, tmp_9_reg_222, "tmp_9_reg_222");
    sc_trace(mVcdFile, tmp_5_fu_155_p1, "tmp_5_fu_155_p1");
    sc_trace(mVcdFile, tmp_5_reg_227, "tmp_5_reg_227");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, neg_ti_fu_165_p2, "neg_ti_fu_165_p2");
    sc_trace(mVcdFile, neg_ti_reg_232, "neg_ti_reg_232");
    sc_trace(mVcdFile, tmp_1_fu_87_p3, "tmp_1_fu_87_p3");
    sc_trace(mVcdFile, tmp_1_cast_fu_95_p1, "tmp_1_cast_fu_95_p1");
    sc_trace(mVcdFile, tmp_fu_83_p1, "tmp_fu_83_p1");
    sc_trace(mVcdFile, grp_fu_116_p0, "grp_fu_116_p0");
    sc_trace(mVcdFile, grp_fu_116_p2, "grp_fu_116_p2");
    sc_trace(mVcdFile, neg_mul_fu_136_p2, "neg_mul_fu_136_p2");
    sc_trace(mVcdFile, tmp_8_fu_141_p4, "tmp_8_fu_141_p4");
    sc_trace(mVcdFile, tmp_4_fu_151_p1, "tmp_4_fu_151_p1");
    sc_trace(mVcdFile, tmp_6_fu_158_p3, "tmp_6_fu_158_p3");
    sc_trace(mVcdFile, tmp_2_fu_171_p3, "tmp_2_fu_171_p3");
    sc_trace(mVcdFile, tmp_11_fu_180_p3, "tmp_11_fu_180_p3");
    sc_trace(mVcdFile, tmp_10_fu_176_p1, "tmp_10_fu_176_p1");
    sc_trace(mVcdFile, p_s_fu_188_p3, "p_s_fu_188_p3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
    mHdltvinHandle.open("leds_controller.hdltvin.dat");
    mHdltvoutHandle.open("leds_controller.hdltvout.dat");
}

leds_controller::~leds_controller() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete leds_controller_mbkb_U0;
}

void leds_controller::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void leds_controller::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(tmp_7_reg_206.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()))) {
        neg_ti_reg_232 = neg_ti_fu_165_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        tmp_1_tr_reg_201 = tmp_1_tr_fu_99_p2.read();
        tmp_7_reg_206 = tmp_1_tr_fu_99_p2.read().range(19, 19);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()) && esl_seteq<1,1,1>(tmp_7_reg_206.read(), ap_const_lv1_1))) {
        tmp_3_reg_217 = tmp_3_fu_122_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        tmp_5_reg_227 = tmp_5_fu_155_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        tmp_9_reg_222 = grp_fu_116_p2.read().range(41, 35);
    }
}

void leds_controller::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void leds_controller::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void leds_controller::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void leds_controller::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void leds_controller::thread_ap_CS_fsm_state7() {
    ap_CS_fsm_state7 = ap_CS_fsm.read()[6];
}

void leds_controller::thread_grp_fu_116_p0() {
    grp_fu_116_p0 =  (sc_lv<22>) (ap_const_lv42_1A36E3);
}

void leds_controller::thread_neg_mul_fu_136_p2() {
    neg_mul_fu_136_p2 = (!ap_const_lv40_0.is_01() || !tmp_3_reg_217.read().is_01())? sc_lv<40>(): (sc_biguint<40>(ap_const_lv40_0) - sc_biguint<40>(tmp_3_reg_217.read()));
}

void leds_controller::thread_neg_ti_fu_165_p2() {
    neg_ti_fu_165_p2 = (!ap_const_lv20_0.is_01() || !tmp_6_fu_158_p3.read().is_01())? sc_lv<20>(): (sc_biguint<20>(ap_const_lv20_0) - sc_biguint<20>(tmp_6_fu_158_p3.read()));
}

void leds_controller::thread_out_V_V_blk_n() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read())) {
        out_V_V_blk_n = out_V_V_full_n.read();
    } else {
        out_V_V_blk_n = ap_const_logic_1;
    }
}

void leds_controller::thread_out_V_V_din() {
    out_V_V_din = esl_zext<7,2>(p_s_fu_188_p3.read());
}

void leds_controller::thread_out_V_V_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && 
         esl_seteq<1,1,1>(out_V_V_full_n.read(), ap_const_logic_1))) {
        out_V_V_write = ap_const_logic_1;
    } else {
        out_V_V_write = ap_const_logic_0;
    }
}

void leds_controller::thread_p_s_fu_188_p3() {
    p_s_fu_188_p3 = (!tmp_11_fu_180_p3.read()[0].is_01())? sc_lv<2>(): ((tmp_11_fu_180_p3.read()[0].to_bool())? ap_const_lv2_0: tmp_10_fu_176_p1.read());
}

void leds_controller::thread_tmp_10_fu_176_p1() {
    tmp_10_fu_176_p1 = tmp_2_fu_171_p3.read().range(2-1, 0);
}

void leds_controller::thread_tmp_11_fu_180_p3() {
    tmp_11_fu_180_p3 = tmp_2_fu_171_p3.read().range(2, 2);
}

void leds_controller::thread_tmp_1_cast_fu_95_p1() {
    tmp_1_cast_fu_95_p1 = esl_sext<20,19>(tmp_1_fu_87_p3.read());
}

void leds_controller::thread_tmp_1_fu_87_p3() {
    tmp_1_fu_87_p3 = esl_concat<16,3>(x.read(), ap_const_lv3_0);
}

void leds_controller::thread_tmp_1_tr_fu_99_p2() {
    tmp_1_tr_fu_99_p2 = (!tmp_1_cast_fu_95_p1.read().is_01() || !tmp_fu_83_p1.read().is_01())? sc_lv<20>(): (sc_bigint<20>(tmp_1_cast_fu_95_p1.read()) - sc_bigint<20>(tmp_fu_83_p1.read()));
}

void leds_controller::thread_tmp_2_fu_171_p3() {
    tmp_2_fu_171_p3 = (!tmp_7_reg_206.read()[0].is_01())? sc_lv<20>(): ((tmp_7_reg_206.read()[0].to_bool())? neg_ti_reg_232.read(): tmp_5_reg_227.read());
}

void leds_controller::thread_tmp_3_fu_122_p1() {
    tmp_3_fu_122_p1 = grp_fu_116_p2.read().range(40-1, 0);
}

void leds_controller::thread_tmp_4_fu_151_p1() {
    tmp_4_fu_151_p1 = esl_sext<20,5>(tmp_8_fu_141_p4.read());
}

void leds_controller::thread_tmp_5_fu_155_p1() {
    tmp_5_fu_155_p1 = esl_sext<20,7>(tmp_9_reg_222.read());
}

void leds_controller::thread_tmp_6_fu_158_p3() {
    tmp_6_fu_158_p3 = (!tmp_7_reg_206.read()[0].is_01())? sc_lv<20>(): ((tmp_7_reg_206.read()[0].to_bool())? tmp_4_fu_151_p1.read(): tmp_5_fu_155_p1.read());
}

void leds_controller::thread_tmp_8_fu_141_p4() {
    tmp_8_fu_141_p4 = neg_mul_fu_136_p2.read().range(39, 35);
}

void leds_controller::thread_tmp_fu_83_p1() {
    tmp_fu_83_p1 = esl_sext<20,16>(x.read());
}

void leds_controller::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state7;
            break;
        case 64 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state7.read()) && esl_seteq<1,1,1>(out_V_V_full_n.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state7;
            }
            break;
        default : 
            ap_NS_fsm = "XXXXXXX";
            break;
    }
}

void leds_controller::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"out_V_V_din\" :  \"" << out_V_V_din.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"out_V_V_full_n\" :  \"" << out_V_V_full_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"out_V_V_write\" :  \"" << out_V_V_write.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"x\" :  \"" << x.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"col_V\" :  \"" << col_V.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

