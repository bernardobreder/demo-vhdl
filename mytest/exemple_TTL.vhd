library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity example_TTL is
    Port ( i1, i2, i3, i4, i5, i6, i7, i8 : in  STD_LOGIC;
           o1, o2, o3, o4 : out  STD_LOGIC);
end example_TTL;

-- PORTAS NAND
architecture PORT_NAND of example_TTL is

begin
	o1 <= not(i1 and i2);
	o2 <= not(i3 and i4);
	o3 <= not(i5 and i6);
	o4 <= not(i7 and i8);
end PORT_NAND;

-- PORTAS AND
architecture PORT_AND of example_TTL is

begin
	o1 <= i1 and i2;
	o2 <= i3 and i4;
	o3 <= i5 and i6;
	o4 <= i7 and i8;
end PORT_AND;