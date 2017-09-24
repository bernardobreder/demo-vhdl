
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter4 is
    Port ( clock : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           load : in  STD_LOGIC;
           up : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           din : in  STD_LOGIC_VECTOR (7 downto 0);
           dout : out  STD_LOGIC_VECTOR (7 downto 0) );
end counter4;

architecture counter4 of counter4 is

	signal q_r0 : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
	signal data_r0 : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');

begin

	process(clock)
	begin
		if clock = '1' and clock'event then
			if reset = '1' then
				data_r0 <= (others => '0');
			elsif load = '1' then
				data_r0 <= din;
			elsif enable = '1' then
				if up = '1' then
					data_r0 <= data_r0 + "1";
					q_r0 <= data_r0;
				else 
					data_r0 <= data_r0 - "1";
					q_r0 <= data_r0;
				end if;
			end if;
		end if;
	end process;
	
	dout <= q_r0;

end counter4;

