
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4_1 is
    Port ( x0,x1,x2,x3 : in  STD_LOGIC;
           c0,c1 : in  STD_LOGIC;
           y : out  STD_LOGIC);
end mux4_1;

architecture MUX4 of mux4_1 is
	signal v0, v1, v2, v3 : std_logic := '0';
begin
	
	v0 <= x0 and not(c1) and not(c0);
	v1 <= x1 and not(c1) and c0;
	v2 <= x2 and c1 and not(c0);
	v3 <= x3 and c1 and c0;
	y <= v0 or v1 or v2 or v3;

end MUX4;

