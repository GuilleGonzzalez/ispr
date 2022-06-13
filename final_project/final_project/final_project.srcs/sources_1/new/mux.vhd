----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.05.2022 15:52:13
-- Design Name: 
-- Module Name: mux - Behavioral
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

entity mux is
    Port ( x0 : in STD_LOGIC_VECTOR (15 downto 0);
           x1 : in STD_LOGIC_VECTOR (15 downto 0);
           x2 : in STD_LOGIC_VECTOR (15 downto 0);
           x3 : in STD_LOGIC_VECTOR (15 downto 0);
           x4 : in STD_LOGIC_VECTOR (15 downto 0);
           x5 : in STD_LOGIC_VECTOR (15 downto 0);
           x6 : in STD_LOGIC_VECTOR (15 downto 0);
           x7 : in STD_LOGIC_VECTOR (15 downto 0);
           x8 : in STD_LOGIC_VECTOR (15 downto 0);
           x9 : in STD_LOGIC_VECTOR (15 downto 0);
           ctl : in STD_LOGIC_VECTOR (3 downto 0);
           y : out STD_LOGIC_VECTOR (15 downto 0));
end mux;

architecture Behavioral of mux is

begin

process (x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, ctl)
begin

if ctl = "0000" then
    y <= x0;
elsif ctl = "0001" then
    y <= x1;
elsif ctl = "0010" then
    y <= x2;
elsif ctl = "0011" then
    y <= x3;
elsif ctl = "0100" then
    y <= x4;
elsif ctl = "0101" then
    y <= x5;
elsif ctl = "0110" then
    y <= x6;
elsif ctl = "0111" then
    y <= x7;
elsif ctl = "1000" then
    y <= x8;
elsif ctl = "1001" then
    y <= x9;
end if;

end process;

end Behavioral;
