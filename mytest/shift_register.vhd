library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_register is
    Port ( data : in  STD_LOGIC_VECTOR (7 downto 0);
           d : in  STD_LOGIC;
			  clock : in  STD_LOGIC;
           load : in std_logic;
			  enable : in std_logic;
			  q : out  STD_LOGIC);
end shift_register;

architecture shift_register of shift_register is

	signal q_r0 : STD_LOGIC := '0';
	signal data_r0 : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');

begin

	process(clock)
	begin
		if clock = '1' and clock'event then
			if load = '1' then
				data_r0 <= data;
			elsif enable = '1' then
				q_r0 <= data_r0(0);
				data_r0 <= d & data_r0(7 downto 1);
			end if;
		end if;
	end process;
	
	q <= q_r0;
	
end shift_register;

