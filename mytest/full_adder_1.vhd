
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_1 is
    Port ( a,b,cin : in  STD_LOGIC;
           cout,s : out  STD_LOGIC);
end full_adder_1;

architecture Behavioral of full_adder_1 is
	
	COMPONENT half_adder_1
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		s : OUT std_logic;
		c : OUT std_logic
		);
	END COMPONENT;
	
	signal o, orA, orB : std_logic := '0';
	
begin
	
	X1 : half_adder_1 PORT MAP(
		a => a,
		b => b,
		s => o,
		c => orA
	);
	
	X2 : half_adder_1 PORT MAP(
		a => o,
		b => cin,
		s => s,
		c => orB
	);
	
	cout <= orA or orB;

end Behavioral;

