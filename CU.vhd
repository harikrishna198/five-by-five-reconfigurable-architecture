----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2023 12:56:56 PM
-- Design Name: 
-- Module Name: CU - Behavioral
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
use IEEE.std_logic_unsigned.ALL;
USE IEEE.numeric_std.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CU is
  Port (A,B : in std_logic_vector(3 downto 0);
  SEL: in std_logic_vector(4 downto 0);
  Z: out std_logic_vector(3 downto 0) );
end CU;

architecture Behavioral of CU is
signal temp: std_logic_vector(3 downto 0);
begin
process(a, b, sel)
begin
case sel is
when "00000" => temp <= a + b;
when "00001" => temp <= a - b;
when "00010" => temp <= std_logic_vector(to_unsigned(to_integer(unsigned(a)) * to_integer(unsigned(b)),4));
when "00011" => temp <= a or b;
when "00100" => temp <= a and b;
when "00101" => temp <= a nand b;
when "00110" => temp <= a xor b;
when "00111" => temp <= a xnor b;
when "01000" => temp <= a nor b;
when "01001" => IF(a > b) Then temp <= "1111"; else temp <= "0000"; END IF;
when "01010" => IF(a < b) Then temp <= "1111"; else temp <= "0000"; END IF;
when "01011" => IF(a = b) Then temp <= "1111"; else temp <= "0000"; END IF;
when "01100" => temp <= to_stdlogicvector(to_bitvector(A) ROR to_integer(unsigned(B)));
when "01101" => temp <= to_stdlogicvector(to_bitvector(A) ROL to_integer(unsigned(B)));
when "01110" => temp <= to_stdlogicvector(to_bitvector(A) SLA to_integer(unsigned(B)));
when "01111" => temp <= to_stdlogicvector(to_bitvector(A) SRL to_integer(unsigned(B)));
when "10000" => temp <= to_stdlogicvector(to_bitvector(A) SLL to_integer(unsigned(B)));
when "10001" => temp <= A;
when "10010" => temp <= B;
when "10011" => temp <= "0000";
when OTHERS => temp <= (others => '0');
END CASE;
END process;
z <= temp;
end Behavioral;
