
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY counter4_TB IS
END counter4_TB;
 
ARCHITECTURE behavior OF counter4_TB IS 
 
    COMPONENT counter4
    PORT(
         clock : IN  std_logic;
         enable : IN  std_logic;
         load : IN  std_logic;
         up : IN  std_logic;
         reset : IN  std_logic;
         din : IN  std_logic_vector(7 downto 0);
         dout : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal enable : std_logic := '0';
   signal load : std_logic := '0';
   signal up : std_logic := '0';
   signal reset : std_logic := '0';
   signal din : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal dout : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: counter4 PORT MAP (
          clock => clock,
          enable => enable,
          load => load,
          up => up,
          reset => reset,
          din => din,
          dout => dout
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

		load <= '1';
		din <= "10010010";
		
		wait for clock_period;
		
		load <= '0';
		enable <= '1';
		up <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
