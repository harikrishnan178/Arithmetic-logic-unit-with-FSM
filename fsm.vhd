library ieee;
use ieee .std_logic_1164.all;


entity fsm is
port
(
clock : in std_logic;
reset : in std_logic;
acc,start : in std_logic;
state_out : out std_logic_vector(2 downto 0);
WRA,WRB,WRC,SEL : out std_logic
);

end fsm;

architecture Behavioral of fsm is

type state is (init,fetch,procc,write_result,accumulate);
signal current_state,next_state : state;

begin

process (clock,reset)
begin

if (reset ='1') then
current_state<=init;
elsif(falling_edge(clock)) then
current_state <= next_state;
end if;
end process;

process(start,acc)
begin
case(current_state) is
when init => --state_out =000
state_out<="000";
WRA<='0';
WRB<='0';
WRC<='0';
SEL<='0';
if (start='1' and acc='0') then
next_state<=fetch;
elsif (start='1' and acc='1') then
next_state<=accumulate;
else
next_state<=init;
end if;

when fetch=> --state_out =001
state_out<="001";
WRA<='1';
WRB<='1';
WRC<='0';
SEL<='0';
next_state<=procc;

when accumulate=> --state_out =010
state_out<="010";
WRA<='0';
WRB<='0';
WRC<='1';
SEL<='1';
next_state<=procc;

when procc=> --state_out =011
state_out<="011";
WRA<='0';
WRB<='0';
next_state<=write_result;


when write_result=> --state_out =100
state_out<="100";
WRA<='0';
WRB<='0';
WRC<='1';
SEL<='0';
next_state<=init;

end case;
end process;
end Behavioral;