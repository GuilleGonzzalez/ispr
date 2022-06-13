-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue May 25 17:05:43 2021
-- Host        : HP-Omen-Guille running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/guill/Desktop/final_project/final_project.srcs/sources_1/bd/system/ip/system_fir_0_0/system_fir_0_0_sim_netlist.vhdl
-- Design      : system_fir_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_0_fir_mac_muladd_10cud_DSP48_1 is
  port (
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_0_fir_mac_muladd_10cud_DSP48_1 : entity is "fir_mac_muladd_10cud_DSP48_1";
end system_fir_0_0_fir_mac_muladd_10cud_DSP48_1;

architecture STRUCTURE of system_fir_0_0_fir_mac_muladd_10cud_DSP48_1 is
  signal p_n_100 : STD_LOGIC;
  signal p_n_101 : STD_LOGIC;
  signal p_n_102 : STD_LOGIC;
  signal p_n_103 : STD_LOGIC;
  signal p_n_104 : STD_LOGIC;
  signal p_n_105 : STD_LOGIC;
  signal p_n_106 : STD_LOGIC;
  signal p_n_107 : STD_LOGIC;
  signal p_n_93 : STD_LOGIC;
  signal p_n_94 : STD_LOGIC;
  signal p_n_95 : STD_LOGIC;
  signal p_n_96 : STD_LOGIC;
  signal p_n_97 : STD_LOGIC;
  signal p_n_98 : STD_LOGIC;
  signal p_n_99 : STD_LOGIC;
  signal NLW_p_RnM_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_RnM_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_RnM_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_RnM_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 31 );
  signal NLW_p_RnM_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of p_RnM : label is "{SYNTH-13 {cell *THIS*}}";
begin
p_RnM: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => x(15),
      A(28) => x(15),
      A(27) => x(15),
      A(26) => x(15),
      A(25) => x(15),
      A(24) => x(15),
      A(23) => x(15),
      A(22) => x(15),
      A(21) => x(15),
      A(20) => x(15),
      A(19) => x(15),
      A(18) => x(15),
      A(17) => x(15),
      A(16) => x(15),
      A(15 downto 0) => x(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_RnM_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"111111111010000110",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_RnM_BCOUT_UNCONNECTED(17 downto 0),
      C(47) => P(30),
      C(46) => P(30),
      C(45) => P(30),
      C(44) => P(30),
      C(43) => P(30),
      C(42) => P(30),
      C(41) => P(30),
      C(40) => P(30),
      C(39) => P(30),
      C(38) => P(30),
      C(37) => P(30),
      C(36) => P(30),
      C(35) => P(30),
      C(34) => P(30),
      C(33) => P(30),
      C(32) => P(30),
      C(31) => P(30),
      C(30 downto 0) => P(30 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_RnM_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_RnM_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_RnM_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_p_RnM_OVERFLOW_UNCONNECTED,
      P(47 downto 31) => NLW_p_RnM_P_UNCONNECTED(47 downto 31),
      P(30 downto 15) => y(15 downto 0),
      P(14) => p_n_93,
      P(13) => p_n_94,
      P(12) => p_n_95,
      P(11) => p_n_96,
      P(10) => p_n_97,
      P(9) => p_n_98,
      P(8) => p_n_99,
      P(7) => p_n_100,
      P(6) => p_n_101,
      P(5) => p_n_102,
      P(4) => p_n_103,
      P(3) => p_n_104,
      P(2) => p_n_105,
      P(1) => p_n_106,
      P(0) => p_n_107,
      PATTERNBDETECT => NLW_p_RnM_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_RnM_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_RnM_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_RnM_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_0_fir_mac_muladd_16dEe_DSP48_2 is
  port (
    \q0_reg[15]\ : out STD_LOGIC;
    address0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    CEP : out STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \i_reg_110_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \ap_CS_fsm_reg[5]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \i_cast1_reg_212_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CEB1 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_0_fir_mac_muladd_16dEe_DSP48_2 : entity is "fir_mac_muladd_16dEe_DSP48_2";
end system_fir_0_0_fir_mac_muladd_16dEe_DSP48_2;

architecture STRUCTURE of system_fir_0_0_fir_mac_muladd_16dEe_DSP48_2 is
  signal \^cep\ : STD_LOGIC;
  signal g0_b0_n_2 : STD_LOGIC;
  signal g0_b10_n_2 : STD_LOGIC;
  signal g0_b11_n_2 : STD_LOGIC;
  signal g0_b14_n_2 : STD_LOGIC;
  signal g0_b15_n_2 : STD_LOGIC;
  signal g0_b1_n_2 : STD_LOGIC;
  signal g0_b2_n_2 : STD_LOGIC;
  signal g0_b3_n_2 : STD_LOGIC;
  signal g0_b4_n_2 : STD_LOGIC;
  signal g0_b5_n_2 : STD_LOGIC;
  signal g0_b6_n_2 : STD_LOGIC;
  signal g0_b7_n_2 : STD_LOGIC;
  signal g0_b8_n_2 : STD_LOGIC;
  signal g0_b9_n_2 : STD_LOGIC;
  signal p_i_1_n_2 : STD_LOGIC;
  signal p_n_71 : STD_LOGIC;
  signal p_n_72 : STD_LOGIC;
  signal p_n_73 : STD_LOGIC;
  signal p_n_74 : STD_LOGIC;
  signal p_n_75 : STD_LOGIC;
  signal p_n_76 : STD_LOGIC;
  signal NLW_p_RnM_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_p_RnM_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_p_RnM_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_p_RnM_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_p_RnM_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 37 );
  signal NLW_p_RnM_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
begin
  CEP <= \^cep\;
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \ap_CS_fsm_reg[5]\(1),
      I1 => \ap_CS_fsm_reg[5]\(4),
      O => \^cep\
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300865F27D30806"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => g0_b0_n_2
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07D44194514C115F"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => g0_b1_n_2
    );
g0_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06030CE252398603"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => g0_b10_n_2
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06030FDC89DF8603"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => g0_b11_n_2
    );
g0_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06030FC0F81F8603"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => g0_b14_n_2
    );
g0_b15: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06030FC0D81F8603"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => g0_b15_n_2
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06148EEC71BB8943"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => g0_b2_n_2
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01DC7F6974B7F1DC"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => g0_b3_n_2
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0302EE15DD43BA06"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => g0_b4_n_2
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FAD33222665AFA"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => g0_b5_n_2
    );
g0_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002122E68B3A2420"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => g0_b6_n_2
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"068B6F500057B68B"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => g0_b7_n_2
    );
g0_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0273004888900672"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => g0_b8_n_2
    );
g0_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06030B4E23968603"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => g0_b9_n_2
    );
p_RnM: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 2,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 2,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 2,
      BREG => 2,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => g0_b15_n_2,
      A(28) => g0_b15_n_2,
      A(27) => g0_b15_n_2,
      A(26) => g0_b15_n_2,
      A(25) => g0_b15_n_2,
      A(24) => g0_b15_n_2,
      A(23) => g0_b15_n_2,
      A(22) => g0_b15_n_2,
      A(21) => g0_b15_n_2,
      A(20) => g0_b15_n_2,
      A(19) => g0_b15_n_2,
      A(18) => g0_b15_n_2,
      A(17) => g0_b15_n_2,
      A(16) => g0_b15_n_2,
      A(15) => g0_b15_n_2,
      A(14) => g0_b14_n_2,
      A(13) => g0_b14_n_2,
      A(12) => g0_b14_n_2,
      A(11) => g0_b11_n_2,
      A(10) => g0_b10_n_2,
      A(9) => g0_b9_n_2,
      A(8) => g0_b8_n_2,
      A(7) => g0_b7_n_2,
      A(6) => g0_b6_n_2,
      A(5) => g0_b5_n_2,
      A(4) => g0_b4_n_2,
      A(3) => g0_b3_n_2,
      A(2) => g0_b2_n_2,
      A(1) => g0_b1_n_2,
      A(0) => g0_b0_n_2,
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_p_RnM_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => B(15),
      B(16) => B(15),
      B(15 downto 0) => B(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_p_RnM_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 37) => B"00000000000",
      C(36) => \out\(25),
      C(35) => \out\(25),
      C(34) => \out\(25),
      C(33) => \out\(25),
      C(32) => \out\(25),
      C(31) => \out\(25),
      C(30) => \out\(25),
      C(29) => \out\(25),
      C(28) => \out\(25),
      C(27) => \out\(25),
      C(26) => \out\(25),
      C(25 downto 0) => \out\(25 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_p_RnM_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_p_RnM_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => \ap_CS_fsm_reg[5]\(2),
      CEA2 => \ap_CS_fsm_reg[5]\(3),
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => CEB1,
      CEB2 => \ap_CS_fsm_reg[5]\(3),
      CEC => \ap_CS_fsm_reg[5]\(0),
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => \^cep\,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_p_RnM_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 5) => B"01",
      OPMODE(4) => p_i_1_n_2,
      OPMODE(3) => '0',
      OPMODE(2) => \ap_CS_fsm_reg[5]\(4),
      OPMODE(1) => '0',
      OPMODE(0) => \ap_CS_fsm_reg[5]\(4),
      OVERFLOW => NLW_p_RnM_OVERFLOW_UNCONNECTED,
      P(47 downto 37) => NLW_p_RnM_P_UNCONNECTED(47 downto 37),
      P(36) => p_n_71,
      P(35) => p_n_72,
      P(34) => p_n_73,
      P(33) => p_n_74,
      P(32) => p_n_75,
      P(31) => p_n_76,
      P(30 downto 0) => P(30 downto 0),
      PATTERNBDETECT => NLW_p_RnM_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_p_RnM_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_p_RnM_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_p_RnM_UNDERFLOW_UNCONNECTED
    );
p_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ap_CS_fsm_reg[5]\(4),
      O => p_i_1_n_2
    );
ram_reg_0_31_0_0_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FDFF"
    )
        port map (
      I0 => \i_reg_110_reg[1]\,
      I1 => Q(4),
      I2 => Q(5),
      I3 => \ap_CS_fsm_reg[5]\(2),
      I4 => \ap_CS_fsm_reg[5]\(3),
      O => \q0_reg[15]\
    );
ram_reg_0_31_0_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000D5DDD5DD"
    )
        port map (
      I0 => \ap_CS_fsm_reg[5]\(2),
      I1 => Q(5),
      I2 => Q(4),
      I3 => \i_reg_110_reg[1]\,
      I4 => \i_cast1_reg_212_reg[5]\(0),
      I5 => \ap_CS_fsm_reg[5]\(3),
      O => address0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_0_fir_mul_mul_16s_1bkb_DSP48_0 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 25 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_0_fir_mul_mul_16s_1bkb_DSP48_0 : entity is "fir_mul_mul_16s_1bkb_DSP48_0";
end system_fir_0_0_fir_mul_mul_16s_1bkb_DSP48_0;

architecture STRUCTURE of system_fir_0_0_fir_mul_mul_16s_1bkb_DSP48_0 is
  signal a_cvt : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of a_cvt : signal is "true";
  signal b_cvt : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP of b_cvt : signal is "true";
  signal p_cvt : STD_LOGIC_VECTOR ( 25 downto 0 );
  attribute RTL_KEEP of p_cvt : signal is "true";
  signal NLW_in00_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_in00_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_in00_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_in00_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_in00_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_in00_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_in00_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_in00_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_in00_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_in00_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 26 );
  signal NLW_in00_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of in00 : label is "{SYNTH-13 {cell *THIS*}}";
begin
  a_cvt(15 downto 0) <= Q(15 downto 0);
  \out\(25 downto 0) <= p_cvt(25 downto 0);
i_2_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => b_cvt(9)
    );
i_2_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => b_cvt(8)
    );
i_2_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => b_cvt(7)
    );
i_2_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => b_cvt(6)
    );
i_2_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => b_cvt(5)
    );
i_2_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => b_cvt(4)
    );
i_2_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => b_cvt(3)
    );
i_2_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => b_cvt(2)
    );
i_2_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => b_cvt(1)
    );
i_2_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => b_cvt(0)
    );
in00: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29) => a_cvt(15),
      A(28) => a_cvt(15),
      A(27) => a_cvt(15),
      A(26) => a_cvt(15),
      A(25) => a_cvt(15),
      A(24) => a_cvt(15),
      A(23) => a_cvt(15),
      A(22) => a_cvt(15),
      A(21) => a_cvt(15),
      A(20) => a_cvt(15),
      A(19) => a_cvt(15),
      A(18) => a_cvt(15),
      A(17) => a_cvt(15),
      A(16) => a_cvt(15),
      A(15 downto 0) => a_cvt(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_in00_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17) => b_cvt(9),
      B(16) => b_cvt(9),
      B(15) => b_cvt(9),
      B(14) => b_cvt(9),
      B(13) => b_cvt(9),
      B(12) => b_cvt(9),
      B(11) => b_cvt(9),
      B(10) => b_cvt(9),
      B(9 downto 0) => b_cvt(9 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_in00_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_in00_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_in00_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_in00_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_in00_OVERFLOW_UNCONNECTED,
      P(47 downto 26) => NLW_in00_P_UNCONNECTED(47 downto 26),
      P(25 downto 0) => p_cvt(25 downto 0),
      PATTERNBDETECT => NLW_in00_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_in00_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_in00_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_in00_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_0_fir_shift_reg_ram is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \i_1_reg_220_reg[5]\ : out STD_LOGIC;
    \i_1_reg_220_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i_1_reg_220_reg[5]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i_reg_110_reg[4]\ : in STD_LOGIC;
    \ap_CS_fsm_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \i_cast1_reg_212_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \i_reg_110_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_0_fir_shift_reg_ram : entity is "fir_shift_reg_ram";
end system_fir_0_0_fir_shift_reg_ram;

architecture STRUCTURE of system_fir_0_0_fir_shift_reg_ram is
  signal \^d\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal address0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal d0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^i_1_reg_220_reg[3]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^i_1_reg_220_reg[5]\ : STD_LOGIC;
  signal \^i_1_reg_220_reg[5]_0\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ram_reg_0_15_0_0__0_i_1_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__0_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__10_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__11_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__12_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__13_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__14_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__15_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__16_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__17_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__18_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__19_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__1_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__20_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__21_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__22_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__23_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__24_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__25_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__26_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__27_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__28_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__29_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__2_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__30_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__3_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__4_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__5_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__6_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__7_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__8_n_2\ : STD_LOGIC;
  signal \ram_reg_0_15_0_0__9_n_2\ : STD_LOGIC;
  signal ram_reg_0_15_0_0_i_1_n_2 : STD_LOGIC;
  signal ram_reg_0_15_0_0_n_2 : STD_LOGIC;
  signal \ram_reg_0_31_0_0__0_n_2\ : STD_LOGIC;
  signal \ram_reg_0_31_0_0__10_n_2\ : STD_LOGIC;
  signal \ram_reg_0_31_0_0__11_n_2\ : STD_LOGIC;
  signal \ram_reg_0_31_0_0__12_n_2\ : STD_LOGIC;
  signal \ram_reg_0_31_0_0__13_n_2\ : STD_LOGIC;
  signal \ram_reg_0_31_0_0__14_n_2\ : STD_LOGIC;
  signal \ram_reg_0_31_0_0__1_n_2\ : STD_LOGIC;
  signal \ram_reg_0_31_0_0__2_n_2\ : STD_LOGIC;
  signal \ram_reg_0_31_0_0__3_n_2\ : STD_LOGIC;
  signal \ram_reg_0_31_0_0__4_n_2\ : STD_LOGIC;
  signal \ram_reg_0_31_0_0__5_n_2\ : STD_LOGIC;
  signal \ram_reg_0_31_0_0__6_n_2\ : STD_LOGIC;
  signal \ram_reg_0_31_0_0__7_n_2\ : STD_LOGIC;
  signal \ram_reg_0_31_0_0__8_n_2\ : STD_LOGIC;
  signal \ram_reg_0_31_0_0__9_n_2\ : STD_LOGIC;
  signal ram_reg_0_31_0_0_i_10_n_2 : STD_LOGIC;
  signal ram_reg_0_31_0_0_i_2_n_2 : STD_LOGIC;
  signal ram_reg_0_31_0_0_n_2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \i_1_reg_220[3]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ram_reg_0_15_0_0 : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__0\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__1\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__10\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__11\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__12\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__13\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__14\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__15\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__16\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__17\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__18\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__19\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__2\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__20\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__21\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__22\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__23\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__24\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__25\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__26\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__27\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__28\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__29\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__3\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__30\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__4\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__5\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__6\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__7\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__8\ : label is "RAM16X1S";
  attribute XILINX_LEGACY_PRIM of \ram_reg_0_15_0_0__9\ : label is "RAM16X1S";
  attribute SOFT_HLUTNM of ram_reg_0_31_0_0_i_10 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of y_ap_vld_INST_0_i_1 : label is "soft_lutpair0";
begin
  D(15 downto 0) <= \^d\(15 downto 0);
  E(0) <= \^e\(0);
  Q(15 downto 0) <= \^q\(15 downto 0);
  \i_1_reg_220_reg[3]\(0) <= \^i_1_reg_220_reg[3]\(0);
  \i_1_reg_220_reg[5]\ <= \^i_1_reg_220_reg[5]\;
  \i_1_reg_220_reg[5]_0\ <= \^i_1_reg_220_reg[5]_0\;
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => \ap_CS_fsm_reg[4]\(1),
      I1 => \i_reg_110_reg[5]\(5),
      I2 => \i_reg_110_reg[5]\(4),
      I3 => \^i_1_reg_220_reg[5]_0\,
      O => \^i_1_reg_220_reg[5]\
    );
\i_1_reg_220[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \i_reg_110_reg[5]\(3),
      I1 => \i_reg_110_reg[5]\(2),
      I2 => \i_reg_110_reg[5]\(0),
      I3 => \i_reg_110_reg[5]\(1),
      O => \^i_1_reg_220_reg[3]\(0)
    );
\q0[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(0),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(0),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(0),
      O => \^d\(0)
    );
\q0[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__0_n_2\,
      I1 => address0(4),
      I2 => ram_reg_0_15_0_0_n_2,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => ram_reg_0_31_0_0_n_2,
      O => p_1_out(0)
    );
\q0[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(10),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(10),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(10),
      O => \^d\(10)
    );
\q0[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__20_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__19_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__9_n_2\,
      O => p_1_out(10)
    );
\q0[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(11),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(11),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(11),
      O => \^d\(11)
    );
\q0[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__22_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__21_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__10_n_2\,
      O => p_1_out(11)
    );
\q0[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(12),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(12),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(12),
      O => \^d\(12)
    );
\q0[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__24_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__23_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__11_n_2\,
      O => p_1_out(12)
    );
\q0[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(13),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(13),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(13),
      O => \^d\(13)
    );
\q0[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__26_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__25_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__12_n_2\,
      O => p_1_out(13)
    );
\q0[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(14),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(14),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(14),
      O => \^d\(14)
    );
\q0[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__28_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__27_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__13_n_2\,
      O => p_1_out(14)
    );
\q0[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \ap_CS_fsm_reg[4]\(2),
      I1 => \ap_CS_fsm_reg[4]\(0),
      I2 => \ap_CS_fsm_reg[4]\(1),
      O => \^e\(0)
    );
\q0[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(15),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(15),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(15),
      O => \^d\(15)
    );
\q0[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__30_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__29_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__14_n_2\,
      O => p_1_out(15)
    );
\q0[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(1),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(1),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(1),
      O => \^d\(1)
    );
\q0[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__2_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__1_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__0_n_2\,
      O => p_1_out(1)
    );
\q0[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(2),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(2),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(2),
      O => \^d\(2)
    );
\q0[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__4_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__3_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__1_n_2\,
      O => p_1_out(2)
    );
\q0[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(3),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(3),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(3),
      O => \^d\(3)
    );
\q0[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__6_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__5_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__2_n_2\,
      O => p_1_out(3)
    );
\q0[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(4),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(4),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(4),
      O => \^d\(4)
    );
\q0[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__8_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__7_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__3_n_2\,
      O => p_1_out(4)
    );
\q0[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(5),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(5),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(5),
      O => \^d\(5)
    );
\q0[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__10_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__9_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__4_n_2\,
      O => p_1_out(5)
    );
\q0[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(6),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(6),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(6),
      O => \^d\(6)
    );
\q0[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__12_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__11_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__5_n_2\,
      O => p_1_out(6)
    );
\q0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(7),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(7),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(7),
      O => \^d\(7)
    );
\q0[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__14_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__13_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__6_n_2\,
      O => p_1_out(7)
    );
\q0[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(8),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(8),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(8),
      O => \^d\(8)
    );
\q0[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__16_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__15_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__7_n_2\,
      O => p_1_out(8)
    );
\q0[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => p_1_out(9),
      I1 => \i_reg_110_reg[4]\,
      I2 => \^q\(9),
      I3 => \ap_CS_fsm_reg[4]\(2),
      I4 => x(9),
      O => \^d\(9)
    );
\q0[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \ram_reg_0_15_0_0__18_n_2\,
      I1 => address0(4),
      I2 => \ram_reg_0_15_0_0__17_n_2\,
      I3 => \ap_CS_fsm_reg[3]\(0),
      I4 => \ram_reg_0_31_0_0__8_n_2\,
      O => p_1_out(9)
    );
\q0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(0),
      Q => \^q\(0),
      R => '0'
    );
\q0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(10),
      Q => \^q\(10),
      R => '0'
    );
\q0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(11),
      Q => \^q\(11),
      R => '0'
    );
\q0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(12),
      Q => \^q\(12),
      R => '0'
    );
\q0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(13),
      Q => \^q\(13),
      R => '0'
    );
\q0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(14),
      Q => \^q\(14),
      R => '0'
    );
\q0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(15),
      Q => \^q\(15),
      R => '0'
    );
\q0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(1),
      Q => \^q\(1),
      R => '0'
    );
\q0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(2),
      Q => \^q\(2),
      R => '0'
    );
\q0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(3),
      Q => \^q\(3),
      R => '0'
    );
\q0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(4),
      Q => \^q\(4),
      R => '0'
    );
\q0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(5),
      Q => \^q\(5),
      R => '0'
    );
\q0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(6),
      Q => \^q\(6),
      R => '0'
    );
\q0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(7),
      Q => \^q\(7),
      R => '0'
    );
\q0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(8),
      Q => \^q\(8),
      R => '0'
    );
\q0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^e\(0),
      D => \^d\(9),
      Q => \^q\(9),
      R => '0'
    );
ram_reg_0_15_0_0: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(0),
      O => ram_reg_0_15_0_0_n_2,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__0\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(0),
      O => \ram_reg_0_15_0_0__0_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => address0(4),
      I1 => \ap_CS_fsm_reg[3]\(0),
      I2 => \i_reg_110_reg[4]\,
      O => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__1\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(1),
      O => \ram_reg_0_15_0_0__1_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__10\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(5),
      O => \ram_reg_0_15_0_0__10_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__11\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(6),
      O => \ram_reg_0_15_0_0__11_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__12\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(6),
      O => \ram_reg_0_15_0_0__12_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__13\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(7),
      O => \ram_reg_0_15_0_0__13_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__14\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(7),
      O => \ram_reg_0_15_0_0__14_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__15\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(8),
      O => \ram_reg_0_15_0_0__15_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__16\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(8),
      O => \ram_reg_0_15_0_0__16_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__17\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(9),
      O => \ram_reg_0_15_0_0__17_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__18\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(9),
      O => \ram_reg_0_15_0_0__18_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__19\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(10),
      O => \ram_reg_0_15_0_0__19_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__2\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(1),
      O => \ram_reg_0_15_0_0__2_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__20\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(10),
      O => \ram_reg_0_15_0_0__20_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__21\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(11),
      O => \ram_reg_0_15_0_0__21_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__22\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(11),
      O => \ram_reg_0_15_0_0__22_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__23\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(12),
      O => \ram_reg_0_15_0_0__23_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__24\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(12),
      O => \ram_reg_0_15_0_0__24_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__25\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(13),
      O => \ram_reg_0_15_0_0__25_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__26\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(13),
      O => \ram_reg_0_15_0_0__26_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__27\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(14),
      O => \ram_reg_0_15_0_0__27_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__28\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(14),
      O => \ram_reg_0_15_0_0__28_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__29\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(15),
      O => \ram_reg_0_15_0_0__29_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__3\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(2),
      O => \ram_reg_0_15_0_0__3_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__30\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(15),
      O => \ram_reg_0_15_0_0__30_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__4\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(2),
      O => \ram_reg_0_15_0_0__4_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__5\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(3),
      O => \ram_reg_0_15_0_0__5_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__6\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(3),
      O => \ram_reg_0_15_0_0__6_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__7\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(4),
      O => \ram_reg_0_15_0_0__7_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
\ram_reg_0_15_0_0__8\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(4),
      O => \ram_reg_0_15_0_0__8_n_2\,
      WCLK => ap_clk,
      WE => \ram_reg_0_15_0_0__0_i_1_n_2\
    );
\ram_reg_0_15_0_0__9\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => '0',
      D => d0(5),
      O => \ram_reg_0_15_0_0__9_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_15_0_0_i_1_n_2
    );
ram_reg_0_15_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => address0(4),
      I1 => \ap_CS_fsm_reg[3]\(0),
      I2 => \i_reg_110_reg[4]\,
      O => ram_reg_0_15_0_0_i_1_n_2
    );
ram_reg_0_31_0_0: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(0),
      O => ram_reg_0_31_0_0_n_2,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__0\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(1),
      O => \ram_reg_0_31_0_0__0_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(1),
      O => d0(1)
    );
\ram_reg_0_31_0_0__1\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(2),
      O => \ram_reg_0_31_0_0__1_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__10\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(11),
      O => \ram_reg_0_31_0_0__10_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__10_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(11),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(11),
      O => d0(11)
    );
\ram_reg_0_31_0_0__11\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(12),
      O => \ram_reg_0_31_0_0__11_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__11_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(12),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(12),
      O => d0(12)
    );
\ram_reg_0_31_0_0__12\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(13),
      O => \ram_reg_0_31_0_0__12_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__12_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(13),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(13),
      O => d0(13)
    );
\ram_reg_0_31_0_0__13\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(14),
      O => \ram_reg_0_31_0_0__13_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__13_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(14),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(14),
      O => d0(14)
    );
\ram_reg_0_31_0_0__14\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(15),
      O => \ram_reg_0_31_0_0__14_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__14_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(15),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(15),
      O => d0(15)
    );
\ram_reg_0_31_0_0__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(2),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(2),
      O => d0(2)
    );
\ram_reg_0_31_0_0__2\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(3),
      O => \ram_reg_0_31_0_0__2_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(3),
      O => d0(3)
    );
\ram_reg_0_31_0_0__3\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(4),
      O => \ram_reg_0_31_0_0__3_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(4),
      O => d0(4)
    );
\ram_reg_0_31_0_0__4\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(5),
      O => \ram_reg_0_31_0_0__4_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__4_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(5),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(5),
      O => d0(5)
    );
\ram_reg_0_31_0_0__5\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(6),
      O => \ram_reg_0_31_0_0__5_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__5_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(6),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(6),
      O => d0(6)
    );
\ram_reg_0_31_0_0__6\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(7),
      O => \ram_reg_0_31_0_0__6_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__6_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(7),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(7),
      O => d0(7)
    );
\ram_reg_0_31_0_0__7\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(8),
      O => \ram_reg_0_31_0_0__7_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__7_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(8),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(8),
      O => d0(8)
    );
\ram_reg_0_31_0_0__8\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(9),
      O => \ram_reg_0_31_0_0__8_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__8_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(9),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(9),
      O => d0(9)
    );
\ram_reg_0_31_0_0__9\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => address0(0),
      A1 => address0(1),
      A2 => address0(2),
      A3 => address0(3),
      A4 => address0(4),
      D => d0(10),
      O => \ram_reg_0_31_0_0__9_n_2\,
      WCLK => ap_clk,
      WE => ram_reg_0_31_0_0_i_2_n_2
    );
\ram_reg_0_31_0_0__9_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(10),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(10),
      O => d0(10)
    );
ram_reg_0_31_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => x(0),
      O => d0(0)
    );
ram_reg_0_31_0_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \ap_CS_fsm_reg[4]\(1),
      I1 => \i_reg_110_reg[5]\(5),
      I2 => \i_reg_110_reg[5]\(4),
      I3 => \^i_1_reg_220_reg[5]_0\,
      O => ram_reg_0_31_0_0_i_10_n_2
    );
ram_reg_0_31_0_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg_110_reg[4]\,
      I1 => \ap_CS_fsm_reg[3]\(0),
      O => ram_reg_0_31_0_0_i_2_n_2
    );
ram_reg_0_31_0_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B8B8B8"
    )
        port map (
      I0 => \i_cast1_reg_212_reg[4]\(0),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => ram_reg_0_31_0_0_i_10_n_2,
      I3 => \i_reg_110_reg[5]\(0),
      I4 => \ap_CS_fsm_reg[4]\(1),
      O => address0(0)
    );
ram_reg_0_31_0_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B88888B8"
    )
        port map (
      I0 => \i_cast1_reg_212_reg[4]\(1),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => \^i_1_reg_220_reg[5]\,
      I3 => \i_reg_110_reg[5]\(1),
      I4 => \i_reg_110_reg[5]\(0),
      O => address0(1)
    );
ram_reg_0_31_0_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B888888888B8"
    )
        port map (
      I0 => \i_cast1_reg_212_reg[4]\(2),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => \^i_1_reg_220_reg[5]\,
      I3 => \i_reg_110_reg[5]\(0),
      I4 => \i_reg_110_reg[5]\(1),
      I5 => \i_reg_110_reg[5]\(2),
      O => address0(2)
    );
ram_reg_0_31_0_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD0D0D0"
    )
        port map (
      I0 => \^i_1_reg_220_reg[5]\,
      I1 => \^i_1_reg_220_reg[3]\(0),
      I2 => \i_reg_110_reg[4]\,
      I3 => \i_cast1_reg_212_reg[4]\(3),
      I4 => \ap_CS_fsm_reg[4]\(2),
      O => address0(3)
    );
ram_reg_0_31_0_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BB88BBBBBBBB"
    )
        port map (
      I0 => \i_cast1_reg_212_reg[4]\(4),
      I1 => \ap_CS_fsm_reg[4]\(2),
      I2 => \i_reg_110_reg[5]\(5),
      I3 => \i_reg_110_reg[5]\(4),
      I4 => \^i_1_reg_220_reg[5]_0\,
      I5 => \ap_CS_fsm_reg[4]\(1),
      O => address0(4)
    );
y_ap_vld_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \i_reg_110_reg[5]\(1),
      I1 => \i_reg_110_reg[5]\(0),
      I2 => \i_reg_110_reg[5]\(3),
      I3 => \i_reg_110_reg[5]\(2),
      O => \^i_1_reg_220_reg[5]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_0_fir_mac_muladd_10cud is
  port (
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_0_fir_mac_muladd_10cud : entity is "fir_mac_muladd_10cud";
end system_fir_0_0_fir_mac_muladd_10cud;

architecture STRUCTURE of system_fir_0_0_fir_mac_muladd_10cud is
begin
fir_mac_muladd_10cud_DSP48_1_U: entity work.system_fir_0_0_fir_mac_muladd_10cud_DSP48_1
     port map (
      P(30 downto 0) => P(30 downto 0),
      x(15 downto 0) => x(15 downto 0),
      y(15 downto 0) => y(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_0_fir_mac_muladd_16dEe is
  port (
    \q0_reg[15]\ : out STD_LOGIC;
    address0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    CEP : out STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \i_reg_110_reg[1]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \ap_CS_fsm_reg[5]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \i_cast1_reg_212_reg[5]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CEB1 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_0_fir_mac_muladd_16dEe : entity is "fir_mac_muladd_16dEe";
end system_fir_0_0_fir_mac_muladd_16dEe;

architecture STRUCTURE of system_fir_0_0_fir_mac_muladd_16dEe is
begin
fir_mac_muladd_16dEe_DSP48_2_U: entity work.system_fir_0_0_fir_mac_muladd_16dEe_DSP48_2
     port map (
      B(15 downto 0) => B(15 downto 0),
      CEB1 => CEB1,
      CEP => CEP,
      P(30 downto 0) => P(30 downto 0),
      Q(5 downto 0) => Q(5 downto 0),
      address0(0) => address0(0),
      \ap_CS_fsm_reg[5]\(4 downto 0) => \ap_CS_fsm_reg[5]\(4 downto 0),
      ap_clk => ap_clk,
      \i_cast1_reg_212_reg[5]\(0) => \i_cast1_reg_212_reg[5]\(0),
      \i_reg_110_reg[1]\ => \i_reg_110_reg[1]\,
      \out\(25 downto 0) => \out\(25 downto 0),
      \q0_reg[15]\ => \q0_reg[15]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_0_fir_mul_mul_16s_1bkb is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 25 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_0_fir_mul_mul_16s_1bkb : entity is "fir_mul_mul_16s_1bkb";
end system_fir_0_0_fir_mul_mul_16s_1bkb;

architecture STRUCTURE of system_fir_0_0_fir_mul_mul_16s_1bkb is
begin
fir_mul_mul_16s_1bkb_DSP48_0_U: entity work.system_fir_0_0_fir_mul_mul_16s_1bkb_DSP48_0
     port map (
      Q(15 downto 0) => Q(15 downto 0),
      \out\(25 downto 0) => \out\(25 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_0_fir_shift_reg is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_NS_fsm : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i_1_reg_220_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i_1_reg_220_reg[5]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \i_reg_110_reg[4]\ : in STD_LOGIC;
    \ap_CS_fsm_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \ap_CS_fsm_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \i_cast1_reg_212_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \i_reg_110_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_0_fir_shift_reg : entity is "fir_shift_reg";
end system_fir_0_0_fir_shift_reg;

architecture STRUCTURE of system_fir_0_0_fir_shift_reg is
begin
fir_shift_reg_ram_U: entity work.system_fir_0_0_fir_shift_reg_ram
     port map (
      D(15 downto 0) => D(15 downto 0),
      E(0) => E(0),
      Q(15 downto 0) => Q(15 downto 0),
      \ap_CS_fsm_reg[3]\(0) => \ap_CS_fsm_reg[3]\(0),
      \ap_CS_fsm_reg[4]\(2 downto 0) => \ap_CS_fsm_reg[4]\(2 downto 0),
      ap_clk => ap_clk,
      \i_1_reg_220_reg[3]\(0) => \i_1_reg_220_reg[3]\(0),
      \i_1_reg_220_reg[5]\ => ap_NS_fsm(0),
      \i_1_reg_220_reg[5]_0\ => \i_1_reg_220_reg[5]\,
      \i_cast1_reg_212_reg[4]\(4 downto 0) => \i_cast1_reg_212_reg[4]\(4 downto 0),
      \i_reg_110_reg[4]\ => \i_reg_110_reg[4]\,
      \i_reg_110_reg[5]\(5 downto 0) => \i_reg_110_reg[5]\(5 downto 0),
      x(15 downto 0) => x(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_0_fir is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    y_ap_vld : out STD_LOGIC;
    x : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_fir_0_0_fir : entity is "fir";
end system_fir_0_0_fir;

architecture STRUCTURE of system_fir_0_0_fir is
  signal acc_fu_173_p2 : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal address0 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \ap_CS_fsm_reg_n_2_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal ce0 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_10 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_11 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_12 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_13 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_14 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_15 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_16 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_17 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_18 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_19 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_2 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_20 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_21 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_22 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_23 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_24 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_25 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_26 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_27 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_28 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_29 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_30 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_31 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_32 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_33 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_34 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_35 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_5 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_6 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_7 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_8 : STD_LOGIC;
  signal fir_mac_muladd_16dEe_U2_n_9 : STD_LOGIC;
  signal i_1_reg_220 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal i_cast1_reg_212 : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal i_reg_110 : STD_LOGIC;
  signal \i_reg_110_reg_n_2_[0]\ : STD_LOGIC;
  signal \i_reg_110_reg_n_2_[1]\ : STD_LOGIC;
  signal \i_reg_110_reg_n_2_[2]\ : STD_LOGIC;
  signal \i_reg_110_reg_n_2_[3]\ : STD_LOGIC;
  signal \i_reg_110_reg_n_2_[4]\ : STD_LOGIC;
  signal \i_reg_110_reg_n_2_[5]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal shift_reg_U_n_10 : STD_LOGIC;
  signal shift_reg_U_n_11 : STD_LOGIC;
  signal shift_reg_U_n_12 : STD_LOGIC;
  signal shift_reg_U_n_13 : STD_LOGIC;
  signal shift_reg_U_n_14 : STD_LOGIC;
  signal shift_reg_U_n_15 : STD_LOGIC;
  signal shift_reg_U_n_16 : STD_LOGIC;
  signal shift_reg_U_n_17 : STD_LOGIC;
  signal shift_reg_U_n_2 : STD_LOGIC;
  signal shift_reg_U_n_3 : STD_LOGIC;
  signal shift_reg_U_n_36 : STD_LOGIC;
  signal shift_reg_U_n_37 : STD_LOGIC;
  signal shift_reg_U_n_4 : STD_LOGIC;
  signal shift_reg_U_n_5 : STD_LOGIC;
  signal shift_reg_U_n_6 : STD_LOGIC;
  signal shift_reg_U_n_7 : STD_LOGIC;
  signal shift_reg_U_n_8 : STD_LOGIC;
  signal shift_reg_U_n_9 : STD_LOGIC;
  signal shift_reg_q0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^y_ap_vld\ : STD_LOGIC;
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i_1_reg_220[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_1_reg_220[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \i_1_reg_220[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \i_1_reg_220[4]_i_1\ : label is "soft_lutpair2";
begin
  y_ap_vld <= \^y_ap_vld\;
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => ap_CS_fsm_state6,
      I1 => ap_CS_fsm_state3,
      I2 => ce0,
      I3 => ap_CS_fsm_state5,
      I4 => ap_CS_fsm_state2,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \^y_ap_vld\,
      Q => \ap_CS_fsm_reg_n_2_[0]\,
      S => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state2,
      Q => ap_CS_fsm_state3,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ce0,
      R => ap_rst
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => ap_rst
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state5,
      Q => ap_CS_fsm_state6,
      R => ap_rst
    );
fir_mac_muladd_10cud_U1: entity work.system_fir_0_0_fir_mac_muladd_10cud
     port map (
      P(30) => fir_mac_muladd_16dEe_U2_n_5,
      P(29) => fir_mac_muladd_16dEe_U2_n_6,
      P(28) => fir_mac_muladd_16dEe_U2_n_7,
      P(27) => fir_mac_muladd_16dEe_U2_n_8,
      P(26) => fir_mac_muladd_16dEe_U2_n_9,
      P(25) => fir_mac_muladd_16dEe_U2_n_10,
      P(24) => fir_mac_muladd_16dEe_U2_n_11,
      P(23) => fir_mac_muladd_16dEe_U2_n_12,
      P(22) => fir_mac_muladd_16dEe_U2_n_13,
      P(21) => fir_mac_muladd_16dEe_U2_n_14,
      P(20) => fir_mac_muladd_16dEe_U2_n_15,
      P(19) => fir_mac_muladd_16dEe_U2_n_16,
      P(18) => fir_mac_muladd_16dEe_U2_n_17,
      P(17) => fir_mac_muladd_16dEe_U2_n_18,
      P(16) => fir_mac_muladd_16dEe_U2_n_19,
      P(15) => fir_mac_muladd_16dEe_U2_n_20,
      P(14) => fir_mac_muladd_16dEe_U2_n_21,
      P(13) => fir_mac_muladd_16dEe_U2_n_22,
      P(12) => fir_mac_muladd_16dEe_U2_n_23,
      P(11) => fir_mac_muladd_16dEe_U2_n_24,
      P(10) => fir_mac_muladd_16dEe_U2_n_25,
      P(9) => fir_mac_muladd_16dEe_U2_n_26,
      P(8) => fir_mac_muladd_16dEe_U2_n_27,
      P(7) => fir_mac_muladd_16dEe_U2_n_28,
      P(6) => fir_mac_muladd_16dEe_U2_n_29,
      P(5) => fir_mac_muladd_16dEe_U2_n_30,
      P(4) => fir_mac_muladd_16dEe_U2_n_31,
      P(3) => fir_mac_muladd_16dEe_U2_n_32,
      P(2) => fir_mac_muladd_16dEe_U2_n_33,
      P(1) => fir_mac_muladd_16dEe_U2_n_34,
      P(0) => fir_mac_muladd_16dEe_U2_n_35,
      x(15 downto 0) => x(15 downto 0),
      y(15 downto 0) => y(15 downto 0)
    );
fir_mac_muladd_16dEe_U2: entity work.system_fir_0_0_fir_mac_muladd_16dEe
     port map (
      B(15) => shift_reg_U_n_2,
      B(14) => shift_reg_U_n_3,
      B(13) => shift_reg_U_n_4,
      B(12) => shift_reg_U_n_5,
      B(11) => shift_reg_U_n_6,
      B(10) => shift_reg_U_n_7,
      B(9) => shift_reg_U_n_8,
      B(8) => shift_reg_U_n_9,
      B(7) => shift_reg_U_n_10,
      B(6) => shift_reg_U_n_11,
      B(5) => shift_reg_U_n_12,
      B(4) => shift_reg_U_n_13,
      B(3) => shift_reg_U_n_14,
      B(2) => shift_reg_U_n_15,
      B(1) => shift_reg_U_n_16,
      B(0) => shift_reg_U_n_17,
      CEB1 => shift_reg_U_n_37,
      CEP => ap_NS_fsm(3),
      P(30) => fir_mac_muladd_16dEe_U2_n_5,
      P(29) => fir_mac_muladd_16dEe_U2_n_6,
      P(28) => fir_mac_muladd_16dEe_U2_n_7,
      P(27) => fir_mac_muladd_16dEe_U2_n_8,
      P(26) => fir_mac_muladd_16dEe_U2_n_9,
      P(25) => fir_mac_muladd_16dEe_U2_n_10,
      P(24) => fir_mac_muladd_16dEe_U2_n_11,
      P(23) => fir_mac_muladd_16dEe_U2_n_12,
      P(22) => fir_mac_muladd_16dEe_U2_n_13,
      P(21) => fir_mac_muladd_16dEe_U2_n_14,
      P(20) => fir_mac_muladd_16dEe_U2_n_15,
      P(19) => fir_mac_muladd_16dEe_U2_n_16,
      P(18) => fir_mac_muladd_16dEe_U2_n_17,
      P(17) => fir_mac_muladd_16dEe_U2_n_18,
      P(16) => fir_mac_muladd_16dEe_U2_n_19,
      P(15) => fir_mac_muladd_16dEe_U2_n_20,
      P(14) => fir_mac_muladd_16dEe_U2_n_21,
      P(13) => fir_mac_muladd_16dEe_U2_n_22,
      P(12) => fir_mac_muladd_16dEe_U2_n_23,
      P(11) => fir_mac_muladd_16dEe_U2_n_24,
      P(10) => fir_mac_muladd_16dEe_U2_n_25,
      P(9) => fir_mac_muladd_16dEe_U2_n_26,
      P(8) => fir_mac_muladd_16dEe_U2_n_27,
      P(7) => fir_mac_muladd_16dEe_U2_n_28,
      P(6) => fir_mac_muladd_16dEe_U2_n_29,
      P(5) => fir_mac_muladd_16dEe_U2_n_30,
      P(4) => fir_mac_muladd_16dEe_U2_n_31,
      P(3) => fir_mac_muladd_16dEe_U2_n_32,
      P(2) => fir_mac_muladd_16dEe_U2_n_33,
      P(1) => fir_mac_muladd_16dEe_U2_n_34,
      P(0) => fir_mac_muladd_16dEe_U2_n_35,
      Q(5) => \i_reg_110_reg_n_2_[5]\,
      Q(4) => \i_reg_110_reg_n_2_[4]\,
      Q(3) => \i_reg_110_reg_n_2_[3]\,
      Q(2) => \i_reg_110_reg_n_2_[2]\,
      Q(1) => \i_reg_110_reg_n_2_[1]\,
      Q(0) => \i_reg_110_reg_n_2_[0]\,
      address0(0) => address0(5),
      \ap_CS_fsm_reg[5]\(4) => ap_CS_fsm_state6,
      \ap_CS_fsm_reg[5]\(3) => ap_CS_fsm_state5,
      \ap_CS_fsm_reg[5]\(2) => ce0,
      \ap_CS_fsm_reg[5]\(1) => ap_CS_fsm_state3,
      \ap_CS_fsm_reg[5]\(0) => ap_CS_fsm_state2,
      ap_clk => ap_clk,
      \i_cast1_reg_212_reg[5]\(0) => i_cast1_reg_212(5),
      \i_reg_110_reg[1]\ => shift_reg_U_n_36,
      \out\(25 downto 0) => acc_fu_173_p2(25 downto 0),
      \q0_reg[15]\ => fir_mac_muladd_16dEe_U2_n_2
    );
fir_mul_mul_16s_1bkb_U0: entity work.system_fir_0_0_fir_mul_mul_16s_1bkb
     port map (
      Q(15 downto 0) => shift_reg_q0(15 downto 0),
      \out\(25 downto 0) => acc_fu_173_p2(25 downto 0)
    );
\i_1_reg_220[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg_110_reg_n_2_[0]\,
      O => p_0_in(0)
    );
\i_1_reg_220[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \i_reg_110_reg_n_2_[1]\,
      I1 => \i_reg_110_reg_n_2_[0]\,
      O => p_0_in(1)
    );
\i_1_reg_220[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \i_reg_110_reg_n_2_[0]\,
      I1 => \i_reg_110_reg_n_2_[1]\,
      I2 => \i_reg_110_reg_n_2_[2]\,
      O => p_0_in(2)
    );
\i_1_reg_220[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \i_reg_110_reg_n_2_[4]\,
      I1 => \i_reg_110_reg_n_2_[2]\,
      I2 => \i_reg_110_reg_n_2_[3]\,
      I3 => \i_reg_110_reg_n_2_[0]\,
      I4 => \i_reg_110_reg_n_2_[1]\,
      O => p_0_in(4)
    );
\i_1_reg_220[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \i_reg_110_reg_n_2_[5]\,
      I1 => \i_reg_110_reg_n_2_[4]\,
      I2 => \i_reg_110_reg_n_2_[1]\,
      I3 => \i_reg_110_reg_n_2_[0]\,
      I4 => \i_reg_110_reg_n_2_[3]\,
      I5 => \i_reg_110_reg_n_2_[2]\,
      O => p_0_in(5)
    );
\i_1_reg_220_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(4),
      D => p_0_in(0),
      Q => i_1_reg_220(0),
      R => '0'
    );
\i_1_reg_220_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(4),
      D => p_0_in(1),
      Q => i_1_reg_220(1),
      R => '0'
    );
\i_1_reg_220_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(4),
      D => p_0_in(2),
      Q => i_1_reg_220(2),
      R => '0'
    );
\i_1_reg_220_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(4),
      D => p_0_in(3),
      Q => i_1_reg_220(3),
      R => '0'
    );
\i_1_reg_220_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(4),
      D => p_0_in(4),
      Q => i_1_reg_220(4),
      R => '0'
    );
\i_1_reg_220_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm(4),
      D => p_0_in(5),
      Q => i_1_reg_220(5),
      R => '0'
    );
\i_cast1_reg_212_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce0,
      D => \i_reg_110_reg_n_2_[0]\,
      Q => i_cast1_reg_212(0),
      R => '0'
    );
\i_cast1_reg_212_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce0,
      D => \i_reg_110_reg_n_2_[1]\,
      Q => i_cast1_reg_212(1),
      R => '0'
    );
\i_cast1_reg_212_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce0,
      D => \i_reg_110_reg_n_2_[2]\,
      Q => i_cast1_reg_212(2),
      R => '0'
    );
\i_cast1_reg_212_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce0,
      D => \i_reg_110_reg_n_2_[3]\,
      Q => i_cast1_reg_212(3),
      R => '0'
    );
\i_cast1_reg_212_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce0,
      D => \i_reg_110_reg_n_2_[4]\,
      Q => i_cast1_reg_212(4),
      R => '0'
    );
\i_cast1_reg_212_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ce0,
      D => \i_reg_110_reg_n_2_[5]\,
      Q => i_cast1_reg_212(5),
      R => '0'
    );
\i_reg_110[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => ap_CS_fsm_state6,
      O => i_reg_110
    );
\i_reg_110_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_1_reg_220(0),
      Q => \i_reg_110_reg_n_2_[0]\,
      S => i_reg_110
    );
\i_reg_110_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_1_reg_220(1),
      Q => \i_reg_110_reg_n_2_[1]\,
      R => i_reg_110
    );
\i_reg_110_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_1_reg_220(2),
      Q => \i_reg_110_reg_n_2_[2]\,
      R => i_reg_110
    );
\i_reg_110_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_1_reg_220(3),
      Q => \i_reg_110_reg_n_2_[3]\,
      S => i_reg_110
    );
\i_reg_110_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_1_reg_220(4),
      Q => \i_reg_110_reg_n_2_[4]\,
      S => i_reg_110
    );
\i_reg_110_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state6,
      D => i_1_reg_220(5),
      Q => \i_reg_110_reg_n_2_[5]\,
      S => i_reg_110
    );
shift_reg_U: entity work.system_fir_0_0_fir_shift_reg
     port map (
      D(15) => shift_reg_U_n_2,
      D(14) => shift_reg_U_n_3,
      D(13) => shift_reg_U_n_4,
      D(12) => shift_reg_U_n_5,
      D(11) => shift_reg_U_n_6,
      D(10) => shift_reg_U_n_7,
      D(9) => shift_reg_U_n_8,
      D(8) => shift_reg_U_n_9,
      D(7) => shift_reg_U_n_10,
      D(6) => shift_reg_U_n_11,
      D(5) => shift_reg_U_n_12,
      D(4) => shift_reg_U_n_13,
      D(3) => shift_reg_U_n_14,
      D(2) => shift_reg_U_n_15,
      D(1) => shift_reg_U_n_16,
      D(0) => shift_reg_U_n_17,
      E(0) => shift_reg_U_n_37,
      Q(15 downto 0) => shift_reg_q0(15 downto 0),
      \ap_CS_fsm_reg[3]\(0) => address0(5),
      \ap_CS_fsm_reg[4]\(2) => ap_CS_fsm_state5,
      \ap_CS_fsm_reg[4]\(1) => ce0,
      \ap_CS_fsm_reg[4]\(0) => \ap_CS_fsm_reg_n_2_[0]\,
      ap_NS_fsm(0) => ap_NS_fsm(4),
      ap_clk => ap_clk,
      \i_1_reg_220_reg[3]\(0) => p_0_in(3),
      \i_1_reg_220_reg[5]\ => shift_reg_U_n_36,
      \i_cast1_reg_212_reg[4]\(4 downto 0) => i_cast1_reg_212(4 downto 0),
      \i_reg_110_reg[4]\ => fir_mac_muladd_16dEe_U2_n_2,
      \i_reg_110_reg[5]\(5) => \i_reg_110_reg_n_2_[5]\,
      \i_reg_110_reg[5]\(4) => \i_reg_110_reg_n_2_[4]\,
      \i_reg_110_reg[5]\(3) => \i_reg_110_reg_n_2_[3]\,
      \i_reg_110_reg[5]\(2) => \i_reg_110_reg_n_2_[2]\,
      \i_reg_110_reg[5]\(1) => \i_reg_110_reg_n_2_[1]\,
      \i_reg_110_reg[5]\(0) => \i_reg_110_reg_n_2_[0]\,
      x(15 downto 0) => x(15 downto 0)
    );
y_ap_vld_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => shift_reg_U_n_36,
      I1 => \i_reg_110_reg_n_2_[4]\,
      I2 => \i_reg_110_reg_n_2_[5]\,
      I3 => ce0,
      O => \^y_ap_vld\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_fir_0_0 is
  port (
    y_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    y : out STD_LOGIC_VECTOR ( 15 downto 0 );
    x : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_fir_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_fir_0_0 : entity is "system_fir_0_0,fir,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_fir_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_fir_0_0 : entity is "fir,Vivado 2017.2";
end system_fir_0_0;

architecture STRUCTURE of system_fir_0_0 is
begin
U0: entity work.system_fir_0_0_fir
     port map (
      ap_clk => ap_clk,
      ap_rst => ap_rst,
      x(15 downto 0) => x(15 downto 0),
      y(15 downto 0) => y(15 downto 0),
      y_ap_vld => y_ap_vld
    );
end STRUCTURE;
