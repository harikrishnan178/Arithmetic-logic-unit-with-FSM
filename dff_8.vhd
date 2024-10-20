library IEEE;
use ieee .std_logic_1164.all;


entity dff_8 is
port
(
d : in std_logic_vector(7 downto 0);
clk,ret : in std_logic;
q : out std_logic_vector(7 downto 0)
);

end dff_8;

architecture Behavioral of dff_8 is

--signal notq : std_logic;

begin

process(clk,ret)

begin
if (ret ='1') then
q<= (others=>'0');
elsif (rising_edge(clk)) then
q<=d;

end if;
end process;
end Behavioral;