-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity leds is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    row_V : OUT STD_LOGIC_VECTOR (6 downto 0);
    col_V : OUT STD_LOGIC_VECTOR (9 downto 0);
    in_V_V_dout : IN STD_LOGIC_VECTOR (6 downto 0);
    in_V_V_empty_n : IN STD_LOGIC;
    in_V_V_read : OUT STD_LOGIC );
end;


architecture behav of leds is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "leds,hls_ip_2017_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=8.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.096000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=65,HLS_SYN_LUT=94}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal in_V_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_fu_141_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_reg_195 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_Result_1_reg_200 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_2_fu_160_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal out_col_V_fu_166_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal exitcond1_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_3_fu_177_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal out_row_V_fu_189_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal exitcond_fu_172_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_s_reg_94 : STD_LOGIC_VECTOR (9 downto 0);
    signal i_reg_107 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_1_reg_118 : STD_LOGIC_VECTOR (6 downto 0);
    signal i_1_reg_130 : STD_LOGIC_VECTOR (2 downto 0);
    signal r_V_fu_183_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_1_reg_130_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_155_p2 = ap_const_lv1_1))) then 
                i_1_reg_130 <= ap_const_lv3_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond_fu_172_p2))) then 
                i_1_reg_130 <= i_3_fu_177_p2;
            end if; 
        end if;
    end process;

    i_reg_107_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_155_p2 = ap_const_lv1_0))) then 
                i_reg_107 <= i_2_fu_160_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (in_V_V_empty_n = ap_const_logic_1))) then 
                i_reg_107 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    p_1_reg_118_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_155_p2 = ap_const_lv1_1))) then 
                p_1_reg_118 <= ap_const_lv7_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state3) and (ap_const_lv1_0 = exitcond_fu_172_p2))) then 
                p_1_reg_118 <= out_row_V_fu_189_p2;
            end if; 
        end if;
    end process;

    p_s_reg_94_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_155_p2 = ap_const_lv1_0))) then 
                p_s_reg_94 <= out_col_V_fu_166_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (in_V_V_empty_n = ap_const_logic_1))) then 
                p_s_reg_94 <= ap_const_lv10_1;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (in_V_V_empty_n = ap_const_logic_1))) then
                p_Result_1_reg_200 <= in_V_V_dout(6 downto 3);
                tmp_reg_195 <= tmp_fu_141_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (in_V_V_empty_n, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_155_p2, ap_CS_fsm_state3, exitcond_fu_172_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (in_V_V_empty_n = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_155_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond_fu_172_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    col_V <= p_s_reg_94;
    exitcond1_fu_155_p2 <= "1" when (i_reg_107 = p_Result_1_reg_200) else "0";
    exitcond_fu_172_p2 <= "1" when (i_1_reg_130 = tmp_reg_195) else "0";
    i_2_fu_160_p2 <= std_logic_vector(unsigned(i_reg_107) + unsigned(ap_const_lv4_1));
    i_3_fu_177_p2 <= std_logic_vector(unsigned(i_1_reg_130) + unsigned(ap_const_lv3_1));

    in_V_V_blk_n_assign_proc : process(in_V_V_empty_n, ap_CS_fsm_state1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            in_V_V_blk_n <= in_V_V_empty_n;
        else 
            in_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    in_V_V_read_assign_proc : process(in_V_V_empty_n, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (in_V_V_empty_n = ap_const_logic_1))) then 
            in_V_V_read <= ap_const_logic_1;
        else 
            in_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

    out_col_V_fu_166_p2 <= std_logic_vector(shift_left(unsigned(p_s_reg_94),to_integer(unsigned('0' & ap_const_lv10_1(10-1 downto 0)))));
    out_row_V_fu_189_p2 <= (r_V_fu_183_p2 or p_1_reg_118);
    r_V_fu_183_p2 <= std_logic_vector(shift_left(unsigned(p_1_reg_118),to_integer(unsigned('0' & ap_const_lv7_1(7-1 downto 0)))));
    row_V <= p_1_reg_118;
    tmp_fu_141_p1 <= in_V_V_dout(3 - 1 downto 0);
end behav;
