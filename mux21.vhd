library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux21 is
port
(
INPUT_A,INPUT_B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
SEL : IN STD_LOGIC;
OUTPUT_C : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)

);
end mux21;

Architecture behavioral of mux21 is
begin
OUTPUT_C <= INPUT_A WHEN (SEL = '0')
				ELSE
				INPUT_B WHEN (SEL = '1');



end behavioral;