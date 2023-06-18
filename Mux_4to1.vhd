----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/15/2023 09:53:47 AM
-- Design Name: 
-- Module Name: Mux_4to1 - Behavioral
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

entity Mux_4to1 is
  Port (x1,x2,x3,x4: in std_logic_vector(3 downto 0);
  f: in std_logic_vector(1 downto 0);
  o : out std_logic_vector(3 downto 0) );
end Mux_4to1;

architecture Behavioral of Mux_4to1 is

begin
process( x1, x2,X3,X4, f)
begin
case f is
when "00" => o <= x1;
when "01" => o <= x2;
when "10" => o <= x3;
when "11" => o <= x4;
when others => o <= (others => '0'); 
end case;
end process;
end Behavioral;
