
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
  
ENTITY fulladder4_TB IS
END fulladder4_TB;
 
ARCHITECTURE behavior OF fulladder4_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fulladder4
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         Cout : OUT  std_logic;
         S : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal Cout : std_logic;
   signal S : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
 
   signal clock : std_logic := '0';
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fulladder4 PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          Cout => Cout,
          S => S
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		for I in 0 to 1 loop
			for I in 0 to 15 loop
				for I in 0 to 15 loop
					wait for clock_period;
					A <= A + "1";
				end loop;
				B <= B + "1";
			end loop;
			A <= (others => '0');
			B <= (others => '0');
			Cin <= not Cin;
		end loop;

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
