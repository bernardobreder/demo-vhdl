
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_1 is
    Port ( a,b : in  STD_LOGIC;
           s,c : out  STD_LOGIC);
end half_adder_1;

architecture half_adder of half_adder_1 is

begin
	s <= a xor b;
	c <= a and b;
end half_adder;
