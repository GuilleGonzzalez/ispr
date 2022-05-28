-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity read_data is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    input_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    input_r_ce0 : OUT STD_LOGIC;
    input_r_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    buf_0_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    buf_0_ce0 : OUT STD_LOGIC;
    buf_0_we0 : OUT STD_LOGIC;
    buf_0_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    buf_1_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    buf_1_ce0 : OUT STD_LOGIC;
    buf_1_we0 : OUT STD_LOGIC;
    buf_1_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    buf_2_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    buf_2_ce0 : OUT STD_LOGIC;
    buf_2_we0 : OUT STD_LOGIC;
    buf_2_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    buf_3_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    buf_3_ce0 : OUT STD_LOGIC;
    buf_3_we0 : OUT STD_LOGIC;
    buf_3_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    buf_4_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    buf_4_ce0 : OUT STD_LOGIC;
    buf_4_we0 : OUT STD_LOGIC;
    buf_4_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    buf_5_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    buf_5_ce0 : OUT STD_LOGIC;
    buf_5_we0 : OUT STD_LOGIC;
    buf_5_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    buf_6_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    buf_6_ce0 : OUT STD_LOGIC;
    buf_6_we0 : OUT STD_LOGIC;
    buf_6_d0 : OUT STD_LOGIC_VECTOR (15 downto 0);
    buf_7_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    buf_7_ce0 : OUT STD_LOGIC;
    buf_7_we0 : OUT STD_LOGIC;
    buf_7_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of read_data is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_5 : STD_LOGIC_VECTOR (2 downto 0) := "101";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_3 : STD_LOGIC_VECTOR (2 downto 0) := "011";
    constant ap_const_lv3_2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv7_40 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal indvar_flatten_reg_186 : STD_LOGIC_VECTOR (6 downto 0);
    signal r_reg_197 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_reg_208 : STD_LOGIC_VECTOR (3 downto 0);
    signal exitcond_flatten_fu_219_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_flatten_reg_304 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_flag00011001 : BOOLEAN;
    signal indvar_flatten_next_fu_225_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal c_mid2_fu_243_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_mid2_reg_313 : STD_LOGIC_VECTOR (3 downto 0);
    signal r_cast4_mid2_v_fu_251_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal r_cast4_mid2_v_reg_319 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_reg_pp0_iter1_r_cast4_mid2_v_reg_319 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_fu_259_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_reg_325 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_1_fu_263_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_1_reg_330 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_reg_pp0_iter1_tmp_1_reg_330 : STD_LOGIC_VECTOR (2 downto 0);
    signal c_1_fu_288_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_flag00011011 : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal r_phi_fu_201_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage0_flag00000000 : BOOLEAN;
    signal c_phi_fu_212_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal sum_cast_fu_283_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_cast4_mid2_fu_293_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond_fu_237_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_1_fu_231_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_mid2_fu_267_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal c_cast2_fu_274_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal sum_fu_277_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


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


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 xor ap_const_logic_1);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    c_reg_208_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (exitcond_flatten_reg_304 = ap_const_lv1_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then 
                c_reg_208 <= c_1_fu_288_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                c_reg_208 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    indvar_flatten_reg_186_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (exitcond_flatten_fu_219_p2 = ap_const_lv1_0))) then 
                indvar_flatten_reg_186 <= indvar_flatten_next_fu_225_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                indvar_flatten_reg_186 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    r_reg_197_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (exitcond_flatten_reg_304 = ap_const_lv1_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then 
                r_reg_197 <= r_cast4_mid2_v_reg_319;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                r_reg_197 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0))) then
                ap_reg_pp0_iter1_r_cast4_mid2_v_reg_319 <= r_cast4_mid2_v_reg_319;
                ap_reg_pp0_iter1_tmp_1_reg_330 <= tmp_1_reg_330;
                exitcond_flatten_reg_304 <= exitcond_flatten_fu_219_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (exitcond_flatten_fu_219_p2 = ap_const_lv1_0))) then
                c_mid2_reg_313 <= c_mid2_fu_243_p3;
                tmp_1_reg_330 <= tmp_1_fu_263_p1;
                tmp_reg_325 <= tmp_fu_259_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (exitcond_flatten_fu_219_p2 = ap_const_lv1_0))) then
                r_cast4_mid2_v_reg_319 <= r_cast4_mid2_v_fu_251_p3;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, exitcond_flatten_fu_219_p2, ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00011011, ap_enable_reg_pp0_iter2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) and not(((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (exitcond_flatten_fu_219_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)) or ((ap_const_logic_1 = ap_enable_reg_pp0_iter0) and (ap_block_pp0_stage0_flag00011011 = ap_const_boolean_0) and (exitcond_flatten_fu_219_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state5 <= ap_CS_fsm(2);
        ap_block_pp0_stage0_flag00000000 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_flag00011001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_flag00011011 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(exitcond_flatten_fu_219_p2)
    begin
        if ((exitcond_flatten_fu_219_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state5)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_const_logic_0 = ap_enable_reg_pp0_iter0) and (ap_const_logic_0 = ap_enable_reg_pp0_iter1) and (ap_const_logic_0 = ap_enable_reg_pp0_iter2))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    buf_0_address0 <= r_cast4_mid2_fu_293_p1(3 - 1 downto 0);

    buf_0_ce0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2))) then 
            buf_0_ce0 <= ap_const_logic_1;
        else 
            buf_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_0_d0 <= input_r_q0;

    buf_0_we0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_reg_pp0_iter1_tmp_1_reg_330, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_reg_pp0_iter1_tmp_1_reg_330 = ap_const_lv3_0))) then 
            buf_0_we0 <= ap_const_logic_1;
        else 
            buf_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_1_address0 <= r_cast4_mid2_fu_293_p1(3 - 1 downto 0);

    buf_1_ce0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2))) then 
            buf_1_ce0 <= ap_const_logic_1;
        else 
            buf_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_1_d0 <= input_r_q0;

    buf_1_we0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_reg_pp0_iter1_tmp_1_reg_330, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_reg_pp0_iter1_tmp_1_reg_330 = ap_const_lv3_1))) then 
            buf_1_we0 <= ap_const_logic_1;
        else 
            buf_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_2_address0 <= r_cast4_mid2_fu_293_p1(3 - 1 downto 0);

    buf_2_ce0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2))) then 
            buf_2_ce0 <= ap_const_logic_1;
        else 
            buf_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_2_d0 <= input_r_q0;

    buf_2_we0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_reg_pp0_iter1_tmp_1_reg_330, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_reg_pp0_iter1_tmp_1_reg_330 = ap_const_lv3_2))) then 
            buf_2_we0 <= ap_const_logic_1;
        else 
            buf_2_we0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_3_address0 <= r_cast4_mid2_fu_293_p1(3 - 1 downto 0);

    buf_3_ce0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2))) then 
            buf_3_ce0 <= ap_const_logic_1;
        else 
            buf_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_3_d0 <= input_r_q0;

    buf_3_we0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_reg_pp0_iter1_tmp_1_reg_330, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_reg_pp0_iter1_tmp_1_reg_330 = ap_const_lv3_3))) then 
            buf_3_we0 <= ap_const_logic_1;
        else 
            buf_3_we0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_4_address0 <= r_cast4_mid2_fu_293_p1(3 - 1 downto 0);

    buf_4_ce0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2))) then 
            buf_4_ce0 <= ap_const_logic_1;
        else 
            buf_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_4_d0 <= input_r_q0;

    buf_4_we0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_reg_pp0_iter1_tmp_1_reg_330, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_reg_pp0_iter1_tmp_1_reg_330 = ap_const_lv3_4))) then 
            buf_4_we0 <= ap_const_logic_1;
        else 
            buf_4_we0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_5_address0 <= r_cast4_mid2_fu_293_p1(3 - 1 downto 0);

    buf_5_ce0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2))) then 
            buf_5_ce0 <= ap_const_logic_1;
        else 
            buf_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_5_d0 <= input_r_q0;

    buf_5_we0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_reg_pp0_iter1_tmp_1_reg_330, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_reg_pp0_iter1_tmp_1_reg_330 = ap_const_lv3_5))) then 
            buf_5_we0 <= ap_const_logic_1;
        else 
            buf_5_we0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_6_address0 <= r_cast4_mid2_fu_293_p1(3 - 1 downto 0);

    buf_6_ce0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2))) then 
            buf_6_ce0 <= ap_const_logic_1;
        else 
            buf_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_6_d0 <= input_r_q0;

    buf_6_we0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_reg_pp0_iter1_tmp_1_reg_330, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_reg_pp0_iter1_tmp_1_reg_330 = ap_const_lv3_6))) then 
            buf_6_we0 <= ap_const_logic_1;
        else 
            buf_6_we0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_7_address0 <= r_cast4_mid2_fu_293_p1(3 - 1 downto 0);

    buf_7_ce0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2))) then 
            buf_7_ce0 <= ap_const_logic_1;
        else 
            buf_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf_7_d0 <= input_r_q0;

    buf_7_we0_assign_proc : process(ap_block_pp0_stage0_flag00011001, ap_reg_pp0_iter1_tmp_1_reg_330, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter2) and (ap_reg_pp0_iter1_tmp_1_reg_330 = ap_const_lv3_7))) then 
            buf_7_we0 <= ap_const_logic_1;
        else 
            buf_7_we0 <= ap_const_logic_0;
        end if; 
    end process;

    c_1_fu_288_p2 <= std_logic_vector(unsigned(c_mid2_reg_313) + unsigned(ap_const_lv4_1));
    c_cast2_fu_274_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(c_mid2_reg_313),6));
    c_mid2_fu_243_p3 <= 
        ap_const_lv4_0 when (exitcond_fu_237_p2(0) = '1') else 
        c_phi_fu_212_p4;

    c_phi_fu_212_p4_assign_proc : process(c_reg_208, exitcond_flatten_reg_304, ap_CS_fsm_pp0_stage0, c_1_fu_288_p2, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (exitcond_flatten_reg_304 = ap_const_lv1_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0))) then 
            c_phi_fu_212_p4 <= c_1_fu_288_p2;
        else 
            c_phi_fu_212_p4 <= c_reg_208;
        end if; 
    end process;

    exitcond_flatten_fu_219_p2 <= "1" when (indvar_flatten_reg_186 = ap_const_lv7_40) else "0";
    exitcond_fu_237_p2 <= "1" when (c_phi_fu_212_p4 = ap_const_lv4_8) else "0";
    indvar_flatten_next_fu_225_p2 <= std_logic_vector(unsigned(indvar_flatten_reg_186) + unsigned(ap_const_lv7_1));
    input_r_address0 <= sum_cast_fu_283_p1(6 - 1 downto 0);

    input_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_flag00011001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_block_pp0_stage0_flag00011001 = ap_const_boolean_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1))) then 
            input_r_ce0 <= ap_const_logic_1;
        else 
            input_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    r_1_fu_231_p2 <= std_logic_vector(unsigned(ap_const_lv4_1) + unsigned(r_phi_fu_201_p4));
    r_cast4_mid2_fu_293_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_reg_pp0_iter1_r_cast4_mid2_v_reg_319),32));
    r_cast4_mid2_v_fu_251_p3 <= 
        r_1_fu_231_p2 when (exitcond_fu_237_p2(0) = '1') else 
        r_phi_fu_201_p4;

    r_phi_fu_201_p4_assign_proc : process(r_reg_197, exitcond_flatten_reg_304, ap_CS_fsm_pp0_stage0, r_cast4_mid2_v_reg_319, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_flag00000000)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (exitcond_flatten_reg_304 = ap_const_lv1_0) and (ap_const_logic_1 = ap_enable_reg_pp0_iter1) and (ap_block_pp0_stage0_flag00000000 = ap_const_boolean_0))) then 
            r_phi_fu_201_p4 <= r_cast4_mid2_v_reg_319;
        else 
            r_phi_fu_201_p4 <= r_reg_197;
        end if; 
    end process;

    sum_cast_fu_283_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sum_fu_277_p2),32));
    sum_fu_277_p2 <= std_logic_vector(unsigned(tmp_mid2_fu_267_p3) + unsigned(c_cast2_fu_274_p1));
    tmp_1_fu_263_p1 <= c_mid2_fu_243_p3(3 - 1 downto 0);
    tmp_fu_259_p1 <= r_cast4_mid2_v_fu_251_p3(3 - 1 downto 0);
    tmp_mid2_fu_267_p3 <= (tmp_reg_325 & ap_const_lv3_0);
end behav;