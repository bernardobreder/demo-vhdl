
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux4_1_TB IS
END mux4_1_TB;
 
ARCHITECTURE behavior OF mux4_1_TB IS 
 
    COMPONENT mux4_1
    PORT(
         x0 : IN  std_logic;
         x1 : IN  std_logic;
         x2 : IN  std_logic;
         x3 : IN  std_logic;
         c0 : IN  std_logic;
         c1 : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal x0 : std_logic := '0';
   signal x1 : std_logic := '0';
   signal x2 : std_logic := '0';
   signal x3 : std_logic := '0';
   signal c0 : std_logic := '0';
   signal c1 : std_logic := '0';

 	--Outputs
   signal y : std_logic;
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
 
	signal clock : std_logic := '0';
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux4_1 PORT MAP (
          x0 => x0,
          x1 => x1,
          x2 => x2,
          x3 => x3,
          c0 => c0,
          c1 => c1,
          y => y
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

			x0 <= '1';
			x1 <= '0';
			x2 <= '0';
			x3 <= '0';
   	-- hold reset state for 100 ns.
      wait for 100 ns;	


			c0 <= '0';
			c1 <= '0';
			wait for clock_period;
			assert (Y = X0) report "Fail, Y = X0" severity note;
			
		wait for 100 ns;	
			c0 <= '1';
			c1 <= '0';
			wait for clock_period;
			assert (Y = X1) report "Fail, Y = X1" severity note;

		wait for 100 ns;	
			c0 <= '0';
			c1 <= '1';

		wait for 100 ns;	

			c0 <= '1';
			c1 <= '1';
		
		wait for 100 ns;
			x0 <= '0';
			x1 <= '1';
			x2 <= '0';
			x3 <= '1';
      wait for 100 ns;	


			c0 <= '0';
			c1 <= '0';
			
		wait for 100 ns;	
			c0 <= '1';
			c1 <= '0';

		wait for 100 ns;	
			c0 <= '0';
			c1 <= '1';

		wait for 100 ns;	

			c0 <= '1';
			c1 <= '1';
	
      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
