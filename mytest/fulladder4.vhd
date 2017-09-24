
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder4 is
    Port ( A : in  STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
           B : in  STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
           Cin : in  STD_LOGIC := '0';
           Cout : out  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR(3 downto 0));
end fulladder4;

architecture fulladder4 of fulladder4 is

	COMPONENT full_adder_1
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		cin : IN std_logic;          
		cout : OUT std_logic;
		s : OUT std_logic
		);
	END COMPONENT;
	
	signal O : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

begin

	X1: full_adder_1 PORT MAP(
		a => A(0),
		b => B(0),
		cin => Cin,
		cout => O(0),
		s => S(0)
	);

	X2: full_adder_1 PORT MAP(
		a => A(1),
		b => B(1),
		cin => O(0),
		cout => O(1),
		s => S(1)
	);
	
	X3: full_adder_1 PORT MAP(
		a => A(2),
		b => B(2),
		cin => O(1),
		cout => O(2),
		s => S(2)
	);
	
	X4: full_adder_1 PORT MAP(
		a => A(3),
		b => B(3),
		cin => O(2),
		cout => O(3),
		s => S(3)
	);
	
	Cout <= O(3);

end fulladder4;

