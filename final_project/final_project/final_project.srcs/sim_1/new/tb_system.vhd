----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.05.2021 16:07:40
-- Design Name: 
-- Module Name: tb_system - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_system is
--  Port ( );
end tb_system;

architecture Behavioral of tb_system is

component system_wrapper
port (
    clk_in1 : in STD_LOGIC;
    col_V : out STD_LOGIC_VECTOR ( 9 downto 0 );
    reset : in STD_LOGIC;
    row_V : out STD_LOGIC_VECTOR ( 6 downto 0 ));
end component;

signal clk_in1 : STD_LOGIC := '0';
signal col_V : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
signal reset : STD_LOGIC := '0';
signal row_V : STD_LOGIC_VECTOR (6 downto 0) := "0000000";

begin

DUT: system_wrapper
    port map(
      clk_in1 => clk_in1,
      col_V => col_V,
      reset => reset,
      row_V => row_V);

clk_p: process begin
    clk_in1 <= '0';
    wait for 5 ns;
    clk_in1 <= '1';
    wait for 5 ns;
end process clk_p;
     
-- Generate the test stimulus
stimulus: process begin
    reset <= '0';
    wait for 100ns;
    reset <= '1';
    wait;
end process stimulus;

end Behavioral;
