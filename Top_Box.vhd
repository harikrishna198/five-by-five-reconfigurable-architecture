----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/05/2023 02:43:56 PM
-- Design Name: 
-- Module Name: Top_Box - Behavioral
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

entity Top_Box is
Port (A1,A2,A3,A4,A5,B1,B2,B3,B4,B5: IN std_logic_vector(3 downto 0);
SEL11,SEL12,SEL13,SEL14,SEL15,
SEL21,SEL22, SEL23, SEL24,SEL25,
SEL31, SEL32, SEL33, SEL34, SEL35,
SEL41, sel42, sel43, sel44, SEL45,
SEL51,sel52, sel53, sel54, SEL55: in std_logic_vector(4 downto 0);
 t33, t34,  t37, t38, t43, t44, t45, t46, t47, t48: in std_logic;
t11, t12, t19, t110, t21, t22, t29, t210, t31, t32,t39, t310, t41, t42, t49, t410: in std_logic;
f13, f14,f15, f16,f17, f18,f23, f24,f25, f26,f27, f28, f35,f36: in std_logic_vector(1 downto 0);
  z1,z2,z3,z4,z5 : out std_logic_vector(3 downto 0) );
end Top_Box;

architecture str of Top_Box is
signal c11, c12, c13, c14, c15, 
c21, c22, c23 , c24,c25,
c31, c32, c33 , c34,c35,
c41, c42, c43 ,c44, c45 : std_logic_vector( 3 downto 0); 
signal m11 ,m12 ,m13 ,m14 ,m15 ,m16,m17 ,m18,m19 ,m110,
 m21 ,m22 ,m23 ,m24 ,m25 ,m26, m27 ,m28 ,m29 ,m210,
 m31 ,m32 ,m33 ,m34 ,m35 ,m36,m37 ,m38 ,m39 ,m310,
 m41 ,m42 ,m43 ,m44 ,m45 ,m46,m47 ,m48 ,m49 ,m410  : std_logic_vector(3 downto 0);
begin
Cu_R11: entity work.CU(Behavioral)
port map (A => A1,B => B1, sel => sel11, Z => c11);

Cu_R12: entity work.CU(Behavioral)
port map (A => A2,B => B2, sel => sel12, z => c12);

Cu_R13: entity work.CU(Behavioral)
port map (A => A3,B => B3, sel => sel13, z => c13);

Cu_R14: entity work.CU(Behavioral)
port map (A => A4,B => B4, sel => sel14, z => c14);

Cu_R15: entity work.CU(Behavioral)
port map (A => A5,B => B5, sel => sel15, z => c15);

-- floor 2

mx11:entity work.mux2_1(Behavioral)
port map(x1=>"0000" , x2 => c11, t => t11, o => m11);

mx12:entity work.mux2_1(Behavioral)
port map(x1=>c11 , x2 => c12, t => t12, o => m12);

Cu_R21: entity work.CU(Behavioral)
port map (A => m11,B => m12, sel => sel21, Z => c21);

mx13:entity work.mux_4to1(Behavioral)
port map(x1=>"0000" , x2 => c11,x3=>c12 , x4 => c13, f =>f13 , o => m13);

mx14:entity work.mux_4to1(Behavioral)
port map(x1=>c11 , x2 => c12,x3=>c13 , x4 => c14, f =>f14 , o => m14);

Cu_R22: entity work.CU(Behavioral)
port map (A => m13,B => m14, sel => sel22, z => c22);


mx15:entity work.mux_4to1(Behavioral)
port map(x1=>c11 , x2 => c12,x3=>c13 , x4 => c14, f =>f15 , o => m15);

mx16:entity work.mux_4to1(Behavioral)
port map(x1=>c12 , x2 => c13,x3=>c14 , x4 => c15, f =>f16 , o => m16);

Cu_R23: entity work.CU(Behavioral)
port map (A => m15,B => m16, sel => sel23, z => c23);

mx17:entity work.mux_4to1(Behavioral)
port map(x1=>c12 , x2 => c13,x3=>c14 , x4 => c15, f =>f17 , o => m17);

mx18:entity work.mux_4to1(Behavioral)
port map(x1=>c13 , x2 => c14,x3=>c15 , x4 => "0000", f =>f18 , o => m18);


Cu_R24: entity work.CU(Behavioral)
port map (A => m17,B => m18, sel => sel24, z => c24);

mx19:entity work.mux2_1(Behavioral)
port map(x1=>C14 , x2 => c15, t => t19, o => m19);

mx110:entity work.mux2_1(Behavioral)
port map(x1=>c15 , x2 => "0000", t => t110, o => m110);

Cu_R25: entity work.CU(Behavioral)
port map (A => m19,B => m110, sel => sel25, Z => c25);

--floor 3

mx21:entity work.mux2_1(Behavioral)
port map(x1=>"0000" , x2 => c21, t => t21, o => m21);

mx22:entity work.mux2_1(Behavioral)
port map(x1=>c21 , x2 => c22, t => t22, o => m22);

Cu_R31: entity work.CU(Behavioral)
port map (A => m21,B => m22, sel => sel31, Z => c31);

mx23:entity work.mux_4to1(Behavioral)
port map(x1=>"0000" , x2 => c21,x3=>c22 , x4 => c23, f =>f23 , o => m23);

mx24:entity work.mux_4to1(Behavioral)
port map(x1=>c21 , x2 => c22,x3=>c23 , x4 => c24, f =>f24 , o => m24);

Cu_R32: entity work.CU(Behavioral)
port map (A => m23,B => m24, sel => sel32, z => c32);

mx25:entity work.mux_4to1(Behavioral)
port map(x1=>c21 , x2 => c22,x3=>c23 , x4 => c24, f =>f25 , o => m25);

mx26:entity work.mux_4to1(Behavioral)
port map(x1=>c22 , x2 => c23,x3=>c24 , x4 => c25, f =>f26 , o => m26);

Cu_R33: entity work.CU(Behavioral)
port map (A => m25,B => m26, sel => sel33, z => c33);

mx27:entity work.mux_4to1(Behavioral)
port map(x1=>c22 , x2 => c23,x3=>c24 , x4 => c25, f =>f27 , o => m27);

mx28:entity work.mux_4to1(Behavioral)
port map(x1=>c23 , x2 => c24,x3=>c25 , x4 => "0000", f =>f28 , o => m28);


Cu_R34: entity work.CU(Behavioral)
port map (A => m27,B => m28, sel => sel34, z => c34);


mx29:entity work.mux2_1(Behavioral)
port map(x1=>C24 , x2 => c25, t => t29, o => m29);

mx210:entity work.mux2_1(Behavioral)
port map(x1=>c25 , x2 => "0000", t => t210, o => m210);

Cu_R35: entity work.CU(Behavioral)
port map (A => m29,B => m210, sel => seL35, Z => c35);

-- FLOOR 4

mx31:entity work.mux2_1(Behavioral)
port map(x1=>"0000" , x2 => c31, t => t31, o => m31);

mx32:entity work.mux2_1(Behavioral)
port map(x1=>c31 , x2 => c32, t => t32, o => m32);

Cu_R41: entity work.CU(Behavioral)
port map (A => m31,B => m32, sel => sel41, Z => c41);

mx33:entity work.mux2_1(Behavioral)
port map(x1=>c31 , x2 => c32, t => t33, o => m33);

mx34:entity work.mux2_1(Behavioral)
port map(x1=>c32 , x2 => c33, t => t34, o => m34);

Cu_R42: entity work.CU(Behavioral)
port map (A => m33,B => m34, sel => sel42, z => c42);


mx35:entity work.mux_4to1(Behavioral)
port map(x1=>c31 , x2 => c32,x3=>c33 , x4 => c34, f =>f35 , o => m35);

mx36:entity work.mux_4to1(Behavioral)
port map(x1=>c32 , x2 => c33,x3=>c34 , x4 => c35, f =>f36 , o => m36);


Cu_R43: entity work.CU(Behavioral)
port map (A => m35,B => m36, sel => sel43, z => c43);

mx37:entity work.mux2_1(Behavioral)
port map(x1=>c33 , x2 => c34, t => t37, o => m37);

mx38:entity work.mux2_1(Behavioral)
port map(x1=>c34 , x2 => c35, t => t38, o => m38);


Cu_R44: entity work.CU(Behavioral)
port map (A => m37,B => m38, sel => sel44, z => c44);

mx39:entity work.mux2_1(Behavioral)
port map(x1=>C34 , x2 => c35, t => t39, o => m39);

mx310:entity work.mux2_1(Behavioral)
port map(x1=>c35 , x2 => "0000", t => t310, o => m310);

Cu_R45: entity work.CU(Behavioral)
port map (A => m39,B => m310, sel => seL45, Z => c45);


--FLOOR 5

mx41:entity work.mux2_1(Behavioral)
port map(x1=>"0000" , x2 => c41, t => t41, o => m41);

mx42:entity work.mux2_1(Behavioral)
port map(x1=>c41 , x2 => c42, t => t42, o => m42);

Cu_R51: entity work.CU(Behavioral)
port map (A => m41,B => m42, sel => sel51, Z => Z1);


mx43:entity work.mux2_1(Behavioral)
port map(x1=>c41 , x2 => c42, t => t43, o => m43);

mx44:entity work.mux2_1(Behavioral)
port map(x1=>c42 , x2 => c43, t => t44, o => m44);

Cu_R52: entity work.CU(Behavioral)
port map (A => m43,B => m44, sel => sel52, z => z2);

mx45:entity work.mux2_1(Behavioral)
port map(x1=>c42 , x2 => c43, t => t45, o => m45);

mx46:entity work.mux2_1(Behavioral)
port map(x1=>c43 , x2 => c44, t => t46, o => m46);


Cu_R53: entity work.CU(Behavioral)
port map (A => m45,B => m46, sel => sel53, z => z3);

mx47:entity work.mux2_1(Behavioral)
port map(x1=>c43 , x2 => c44, t => t47, o => m47);

mx48:entity work.mux2_1(Behavioral)
port map(x1=>c44 , x2 => c45, t => t48, o => m48);


Cu_R54: entity work.CU(Behavioral)
port map (A => m47,B => m48, sel => sel54, z => z4);

mx49:entity work.mux2_1(Behavioral)
port map(x1=>C44 , x2 => c45, t => t49, o => m49);

mx410:entity work.mux2_1(Behavioral)
port map(x1=>c45 , x2 => "0000", t => t410, o => m410);

Cu_R55: entity work.CU(Behavioral)
port map (A => m49,B => m410, sel => seL55, Z => Z5);

end str;
