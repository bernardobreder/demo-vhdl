
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY full_adder_1_TB IS
END full_adder_1_TB;
 
ARCHITECTURE behavior OF full_adder_1_TB IS 
 
    COMPONENT full_adder_1
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         cin : IN  std_logic;
         cout : OUT  std_logic;
         s : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal cout : std_logic;
   signal s : std_logic;
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
 
   signal clock : std_logic := '0';
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder_1 PORT MAP (
          a => a,
          b => b,
          cin => cin,
          cout => cout,
          s => s
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
		a <= '0'; b <= '0'; cin <= '0';
		wait for clock_period;
		assert (cout = '0') report "Fail, cout = 0" severity note;
		assert (s = '0')    report "Fail, s = 0"    severity note;
		
		wait for 100 ns;	
		a <= '0'; b <= '1'; cin <= '0';
		wait for clock_period;
		assert (cout = '0') report "Fail, cout = 0" severity note;
		assert (s = '1')    report "Fail, s = 1"    severity note;
		
		wait for 100 ns;	
		a <= '1'; b <= '0'; cin <= '0';
		wait for clock_period;
		assert (cout = '0') report "Fail, cout = 0" severity note;
		assert (s = '1')    report "Fail, s = 1"    severity note;
		
		wait for 100 ns;	
		a <= '1'; b <= '1'; cin <= '0';
		wait for clock_period;
		assert (cout = '1') report "Fail, cout = 1" severity note;
		assert (s = '0')    report "Fail, s = 0"    severity note;
		
		wait for 100 ns;	
		a <= '0'; b <= '0'; cin <= '1';
		wait for clock_period;
		assert (cout = '0') report "Fail, cout = 0" severity note;
		assert (s = '1')    report "Fail, s = 1"    severity note;
		
		wait for 100 ns;	
		a <= '0'; b <= '1'; cin <= '1';
		wait for clock_period;
		assert (cout = '1') report "Fail, cout = 1" severity note;
		assert (s = '0')    report "Fail, s = 0"    severity note;
		
		wait for 100 ns;	
		a <= '1'; b <= '0'; cin <= '1';
		wait for clock_period;
		assert (cout = '1') report "Fail, cout = 1" severity note;
		assert (s = '0')    report "Fail, s = 0"    severity note;
		
		wait for 100 ns;	
		a <= '1'; b <= '1'; cin <= '1';
		wait for clock_period;
		assert (cout = '1') report "Fail, cout = 1" severity note;
		assert (s = '1')    report "Fail, s = 1"    severity note;
		
   end process;

END;
