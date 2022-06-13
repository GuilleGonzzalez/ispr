-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu May 27 16:07:27 2021
-- Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_leds_0_1/system_leds_0_1_sim_netlist.vhdl
-- Design      : system_leds_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_leds_0_1_leds is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    row_V : out STD_LOGIC_VECTOR ( 6 downto 0 );
    col_V : out STD_LOGIC_VECTOR ( 9 downto 0 );
    in_V_V_dout : in STD_LOGIC_VECTOR ( 6 downto 0 );
    in_V_V_empty_n : in STD_LOGIC;
    in_V_V_read : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_leds_0_1_leds : entity is "leds";
end system_leds_0_1_leds;

architecture STRUCTURE of system_leds_0_1_leds is
  signal \<const0>\ : STD_LOGIC;
  signal \ap_CS_fsm[0]_i_1_n_4\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_1_n_4\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_1_n_4\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_4_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_NS_fsm10_out : STD_LOGIC;
  signal \^col_v\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal exitcond_fu_172_p2 : STD_LOGIC;
  signal i_1_reg_130 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \i_1_reg_130[0]_i_1_n_4\ : STD_LOGIC;
  signal \i_1_reg_130[1]_i_1_n_4\ : STD_LOGIC;
  signal \i_1_reg_130[2]_i_1_n_4\ : STD_LOGIC;
  signal i_2_fu_160_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \i_reg_107_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^in_v_v_read\ : STD_LOGIC;
  signal p_Result_1_reg_200 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_s_reg_94[9]_i_1_n_4\ : STD_LOGIC;
  signal \p_s_reg_94[9]_i_2_n_4\ : STD_LOGIC;
  signal \p_s_reg_94[9]_i_3_n_4\ : STD_LOGIC;
  signal tmp_reg_195 : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_1_reg_130[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_1_reg_130[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \i_reg_107[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_reg_107[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_reg_107[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_reg_107[3]_i_1\ : label is "soft_lutpair1";
begin
  col_V(9 downto 0) <= \^col_v\(9 downto 0);
  in_V_V_read <= \^in_v_v_read\;
  row_V(6) <= \<const0>\;
  row_V(5) <= \<const0>\;
  row_V(4) <= \<const0>\;
  row_V(3) <= \<const0>\;
  row_V(2) <= \<const0>\;
  row_V(1) <= \<const0>\;
  row_V(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00007444"
    )
        port map (
      I0 => in_V_V_empty_n,
      I1 => \ap_CS_fsm_reg_n_4_[0]\,
      I2 => ap_CS_fsm_state3,
      I3 => exitcond_fu_172_p2,
      I4 => ap_CS_fsm_state2,
      I5 => ap_rst,
      O => \ap_CS_fsm[0]_i_1_n_4\
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E0EA"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => in_V_V_empty_n,
      I2 => \ap_CS_fsm_reg_n_4_[0]\,
      I3 => ap_NS_fsm10_out,
      I4 => ap_rst,
      O => \ap_CS_fsm[1]_i_1_n_4\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AA3F"
    )
        port map (
      I0 => ap_NS_fsm10_out,
      I1 => ap_CS_fsm_state3,
      I2 => exitcond_fu_172_p2,
      I3 => ap_CS_fsm_state2,
      I4 => \ap_CS_fsm_reg_n_4_[0]\,
      I5 => ap_rst,
      O => \ap_CS_fsm[2]_i_1_n_4\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[0]_i_1_n_4\,
      Q => \ap_CS_fsm_reg_n_4_[0]\,
      R => '0'
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[1]_i_1_n_4\,
      Q => ap_CS_fsm_state2,
      R => '0'
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[2]_i_1_n_4\,
      Q => ap_CS_fsm_state3,
      R => '0'
    );
\i_1_reg_130[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => exitcond_fu_172_p2,
      I2 => i_1_reg_130(0),
      I3 => ap_NS_fsm10_out,
      O => \i_1_reg_130[0]_i_1_n_4\
    );
\i_1_reg_130[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D2F0"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => exitcond_fu_172_p2,
      I2 => i_1_reg_130(1),
      I3 => i_1_reg_130(0),
      I4 => ap_NS_fsm10_out,
      O => \i_1_reg_130[1]_i_1_n_4\
    );
\i_1_reg_130[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D2F0F0F0"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => exitcond_fu_172_p2,
      I2 => i_1_reg_130(2),
      I3 => i_1_reg_130(1),
      I4 => i_1_reg_130(0),
      I5 => ap_NS_fsm10_out,
      O => \i_1_reg_130[2]_i_1_n_4\
    );
\i_1_reg_130[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => i_1_reg_130(0),
      I1 => tmp_reg_195(0),
      I2 => tmp_reg_195(2),
      I3 => i_1_reg_130(2),
      I4 => tmp_reg_195(1),
      I5 => i_1_reg_130(1),
      O => exitcond_fu_172_p2
    );
\i_1_reg_130[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8008"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \p_s_reg_94[9]_i_3_n_4\,
      I2 => p_Result_1_reg_200(3),
      I3 => \i_reg_107_reg__0\(3),
      O => ap_NS_fsm10_out
    );
\i_1_reg_130_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i_1_reg_130[0]_i_1_n_4\,
      Q => i_1_reg_130(0),
      R => '0'
    );
\i_1_reg_130_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i_1_reg_130[1]_i_1_n_4\,
      Q => i_1_reg_130(1),
      R => '0'
    );
\i_1_reg_130_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i_1_reg_130[2]_i_1_n_4\,
      Q => i_1_reg_130(2),
      R => '0'
    );
\i_reg_107[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg_107_reg__0\(0),
      O => i_2_fu_160_p2(0)
    );
\i_reg_107[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \i_reg_107_reg__0\(0),
      I1 => \i_reg_107_reg__0\(1),
      O => i_2_fu_160_p2(1)
    );
\i_reg_107[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \i_reg_107_reg__0\(0),
      I1 => \i_reg_107_reg__0\(1),
      I2 => \i_reg_107_reg__0\(2),
      O => i_2_fu_160_p2(2)
    );
\i_reg_107[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \i_reg_107_reg__0\(1),
      I1 => \i_reg_107_reg__0\(0),
      I2 => \i_reg_107_reg__0\(2),
      I3 => \i_reg_107_reg__0\(3),
      O => i_2_fu_160_p2(3)
    );
\i_reg_107_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \p_s_reg_94[9]_i_2_n_4\,
      D => i_2_fu_160_p2(0),
      Q => \i_reg_107_reg__0\(0),
      R => \p_s_reg_94[9]_i_1_n_4\
    );
\i_reg_107_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \p_s_reg_94[9]_i_2_n_4\,
      D => i_2_fu_160_p2(1),
      Q => \i_reg_107_reg__0\(1),
      R => \p_s_reg_94[9]_i_1_n_4\
    );
\i_reg_107_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \p_s_reg_94[9]_i_2_n_4\,
      D => i_2_fu_160_p2(2),
      Q => \i_reg_107_reg__0\(2),
      R => \p_s_reg_94[9]_i_1_n_4\
    );
\i_reg_107_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \p_s_reg_94[9]_i_2_n_4\,
      D => i_2_fu_160_p2(3),
      Q => \i_reg_107_reg__0\(3),
      R => \p_s_reg_94[9]_i_1_n_4\
    );
in_V_V_read_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_4_[0]\,
      I1 => in_V_V_empty_n,
      O => \^in_v_v_read\
    );
\p_Result_1_reg_200_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^in_v_v_read\,
      D => in_V_V_dout(3),
      Q => p_Result_1_reg_200(0),
      R => '0'
    );
\p_Result_1_reg_200_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^in_v_v_read\,
      D => in_V_V_dout(4),
      Q => p_Result_1_reg_200(1),
      R => '0'
    );
\p_Result_1_reg_200_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^in_v_v_read\,
      D => in_V_V_dout(5),
      Q => p_Result_1_reg_200(2),
      R => '0'
    );
\p_Result_1_reg_200_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^in_v_v_read\,
      D => in_V_V_dout(6),
      Q => p_Result_1_reg_200(3),
      R => '0'
    );
\p_s_reg_94[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D55D000000000000"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \p_s_reg_94[9]_i_3_n_4\,
      I2 => p_Result_1_reg_200(3),
      I3 => \i_reg_107_reg__0\(3),
      I4 => in_V_V_empty_n,
      I5 => \ap_CS_fsm_reg_n_4_[0]\,
      O => \p_s_reg_94[9]_i_1_n_4\
    );
\p_s_reg_94[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AA2"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \p_s_reg_94[9]_i_3_n_4\,
      I2 => p_Result_1_reg_200(3),
      I3 => \i_reg_107_reg__0\(3),
      O => \p_s_reg_94[9]_i_2_n_4\
    );
\p_s_reg_94[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \i_reg_107_reg__0\(0),
      I1 => p_Result_1_reg_200(0),
      I2 => p_Result_1_reg_200(2),
      I3 => \i_reg_107_reg__0\(2),
      I4 => p_Result_1_reg_200(1),
      I5 => \i_reg_107_reg__0\(1),
      O => \p_s_reg_94[9]_i_3_n_4\
    );
\p_s_reg_94_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => \p_s_reg_94[9]_i_2_n_4\,
      D => '0',
      Q => \^col_v\(0),
      S => \p_s_reg_94[9]_i_1_n_4\
    );
\p_s_reg_94_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \p_s_reg_94[9]_i_2_n_4\,
      D => \^col_v\(0),
      Q => \^col_v\(1),
      R => \p_s_reg_94[9]_i_1_n_4\
    );
\p_s_reg_94_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \p_s_reg_94[9]_i_2_n_4\,
      D => \^col_v\(1),
      Q => \^col_v\(2),
      R => \p_s_reg_94[9]_i_1_n_4\
    );
\p_s_reg_94_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \p_s_reg_94[9]_i_2_n_4\,
      D => \^col_v\(2),
      Q => \^col_v\(3),
      R => \p_s_reg_94[9]_i_1_n_4\
    );
\p_s_reg_94_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \p_s_reg_94[9]_i_2_n_4\,
      D => \^col_v\(3),
      Q => \^col_v\(4),
      R => \p_s_reg_94[9]_i_1_n_4\
    );
\p_s_reg_94_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \p_s_reg_94[9]_i_2_n_4\,
      D => \^col_v\(4),
      Q => \^col_v\(5),
      R => \p_s_reg_94[9]_i_1_n_4\
    );
\p_s_reg_94_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \p_s_reg_94[9]_i_2_n_4\,
      D => \^col_v\(5),
      Q => \^col_v\(6),
      R => \p_s_reg_94[9]_i_1_n_4\
    );
\p_s_reg_94_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \p_s_reg_94[9]_i_2_n_4\,
      D => \^col_v\(6),
      Q => \^col_v\(7),
      R => \p_s_reg_94[9]_i_1_n_4\
    );
\p_s_reg_94_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \p_s_reg_94[9]_i_2_n_4\,
      D => \^col_v\(7),
      Q => \^col_v\(8),
      R => \p_s_reg_94[9]_i_1_n_4\
    );
\p_s_reg_94_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \p_s_reg_94[9]_i_2_n_4\,
      D => \^col_v\(8),
      Q => \^col_v\(9),
      R => \p_s_reg_94[9]_i_1_n_4\
    );
\tmp_reg_195_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^in_v_v_read\,
      D => in_V_V_dout(0),
      Q => tmp_reg_195(0),
      R => '0'
    );
\tmp_reg_195_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^in_v_v_read\,
      D => in_V_V_dout(1),
      Q => tmp_reg_195(1),
      R => '0'
    );
\tmp_reg_195_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^in_v_v_read\,
      D => in_V_V_dout(2),
      Q => tmp_reg_195(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_leds_0_1 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    row_V : out STD_LOGIC_VECTOR ( 6 downto 0 );
    col_V : out STD_LOGIC_VECTOR ( 9 downto 0 );
    in_V_V_dout : in STD_LOGIC_VECTOR ( 6 downto 0 );
    in_V_V_empty_n : in STD_LOGIC;
    in_V_V_read : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_leds_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_leds_0_1 : entity is "system_leds_0_1,leds,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_leds_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_leds_0_1 : entity is "leds,Vivado 2017.2";
end system_leds_0_1;

architecture STRUCTURE of system_leds_0_1 is
begin
U0: entity work.system_leds_0_1_leds
     port map (
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      col_V(9 downto 0) => col_V(9 downto 0),
      in_V_V_dout(6 downto 0) => in_V_V_dout(6 downto 0),
      in_V_V_empty_n => in_V_V_empty_n,
      in_V_V_read => in_V_V_read,
      row_V(6 downto 0) => row_V(6 downto 0)
    );
end STRUCTURE;
