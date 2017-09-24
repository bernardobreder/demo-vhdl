LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY half_adder_1_TB IS
END half_adder_1_TB;
 
ARCHITECTURE behavior OF half_adder_1_TB IS 
 
    COMPONENT half_adder_1
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         s : OUT  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal c : std_logic;
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
 
   signal clock : std_logic := '0';
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: half_adder_1 PORT MAP (
          a => a,
          b => b,
          s => s,
          c => c
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '1';
		wait for clock_period/2;
		clock <= '0';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		

      wait for 100 ns;	
		a <= '0'; b <= '0';
		wait for clock_period;
		assert (c = '0') report "Fail, c = 0" severity note;
		assert (s = '0') report "Fail, s = 0" severity note;

		wait for 100 ns;	
		a <= '0'; b <= '1';
		wait for clock_period;
		assert (c = '0') report "Fail, c = 0" severity note;
		assert (s = '1') report "Fail, s = 1" severity note;

		wait for 100 ns;	
		a <= '1'; b <= '0';
		wait for clock_period;
		assert (c = '0') report "Fail, c = 0" severity note;
		assert (s = '1') report "Fail, s = 1" severity note;

		wait for 100 ns;	
		a <= '1'; b <= '1';
		wait for clock_period;
		assert (c = '1') report "Fail, c = 1" severity note;
		assert (s = '0') report "Fail, s = 0" severity note;

   end process;

END;
