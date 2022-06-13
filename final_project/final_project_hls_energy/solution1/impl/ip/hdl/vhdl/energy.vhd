-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.2
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity energy is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    y : OUT STD_LOGIC_VECTOR (15 downto 0);
    y_ap_vld : OUT STD_LOGIC;
    x : IN STD_LOGIC_VECTOR (15 downto 0);
    x_ap_vld : IN STD_LOGIC );
end;


architecture behav of energy is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "energy,hls_ip_2017_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.380000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=18,HLS_SYN_LUT=36}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal x_preg : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    signal x_in_sig : STD_LOGIC_VECTOR (15 downto 0);
    signal x_ap_vld_preg : STD_LOGIC := '0';
    signal x_ap_vld_in_sig : STD_LOGIC;
    signal x_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal tmp_1_fu_37_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);

    component energy_mul_mul_16bkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    energy_mul_mul_16bkb_U0 : component energy_mul_mul_16bkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        dout_WIDTH => 16)
    port map (
        din0 => x_in_sig,
        din1 => x_in_sig,
        dout => tmp_1_fu_37_p2);





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


    x_ap_vld_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                x_ap_vld_preg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (x_ap_vld_in_sig = ap_const_logic_1))) then 
                    x_ap_vld_preg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = x_ap_vld)) then 
                    x_ap_vld_preg <= x_ap_vld;
                end if; 
            end if;
        end if;
    end process;


    x_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                x_preg <= ap_const_lv16_0;
            else
                if ((ap_const_logic_1 = x_ap_vld)) then 
                    x_preg <= x;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (x_ap_vld_in_sig, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    x_ap_vld_in_sig_assign_proc : process(x_ap_vld, x_ap_vld_preg)
    begin
        if ((ap_const_logic_1 = x_ap_vld)) then 
            x_ap_vld_in_sig <= x_ap_vld;
        else 
            x_ap_vld_in_sig <= x_ap_vld_preg;
        end if; 
    end process;


    x_blk_n_assign_proc : process(x_ap_vld, ap_CS_fsm_state1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            x_blk_n <= x_ap_vld;
        else 
            x_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    x_in_sig_assign_proc : process(x, x_preg, x_ap_vld)
    begin
        if ((ap_const_logic_1 = x_ap_vld)) then 
            x_in_sig <= x;
        else 
            x_in_sig <= x_preg;
        end if; 
    end process;

    y <= tmp_1_fu_37_p2;

    y_ap_vld_assign_proc : process(x_ap_vld_in_sig, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (x_ap_vld_in_sig = ap_const_logic_1))) then 
            y_ap_vld <= ap_const_logic_1;
        else 
            y_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;