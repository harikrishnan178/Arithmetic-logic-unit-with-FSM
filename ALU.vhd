library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity ALU is
    Port (
        A       : in  std_logic_vector(7 downto 0); -- 8-bit input A
        B       : in  std_logic_vector(7 downto 0); -- 8-bit input B
        ALU_Sel : in  std_logic_vector(2 downto 0); -- ALU operation select
        Result  : out std_logic_vector(7 downto 0); -- 8-bit output result
        carryout    : out std_logic                  -- Zero flag
    );
end ALU;

architecture Behavioral of ALU is

signal temp : std_logic_vector(8 downto 0);


begin
    process(A, B, ALU_Sel)
    begin
        case ALU_Sel is
            -- Addition
            when "000" => 
                Result <= A + B;
					 temp<= ('0' & A) + ('0' & B);
                
            -- Subtraction
            when "001" => 
                Result <= A - B;
					 temp<= ('0' & A) - ('0' & B);
                
            -- multi
            when "010" => 
                Result <= std_logic_vector(to_unsigned(to_integer(unsigned(A)) * to_integer(unsigned(B)),8));
                
					 
            -- divition
            when "011" => 
                Result <= std_logic_vector(to_unsigned(to_integer(unsigned(A)) / to_integer(unsigned(B)),8));
					 
                
            -- XOR
            when "100" => 
                Result <= A xor B;
				
				-- XNOR
            when "101" => 
                Result <= A xnor B;
				
				when "110" => --a eq b
				if (A=B) then
				Result <= x"01";
				else
				Result <= x"00";
				end if;
				
				when "111" => --a not eq b
				if (A>B) then
				Result<= x"01";
				else
--				Result <= x"00";
				end if;
					 
					 
            -- Default to 0 if undefined operation
            when others => 
                Result <= (others => '0');
        end case;

    end process;
	 
	 carryout<= temp(8);
end Behavioral;
