
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY shift_register_TB IS
END shift_register_TB;
 
ARCHITECTURE shift_register OF shift_register_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT shift_register
    PORT(
         data : IN  std_logic_vector(7 downto 0);
         d : IN  std_logic;
         clock : IN  std_logic;
         load : IN  std_logic;
         enable : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic_vector(7 downto 0) := (others => '0');
   signal d : std_logic := '0';
   signal clock : std_logic := '0';
   signal load : std_logic := '0';
   signal enable : std_logic := '0';

 	--Outputs
   signal q : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_register PORT MAP (
          data => data,
          d => d,
          clock => clock,
          load => load,
          enable => enable,
          q => q
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
	
		wait for clock_period * 10;
	
      data <= "10010011";
		d <= '0';
		load <= '1';
		enable <= '0';
		wait for clock_period;
		
		data <= "00000000";
		d <= '0';
		load <= '0';
		enable <= '1';
		wait for clock_period;

      wait;
   end process;

END;
