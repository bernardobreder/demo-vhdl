--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:06:46 08/07/2017
-- Design Name:   
-- Module Name:   D:/Users/felipe/Dropbox/PUC-Rio/Curso VHDL/Aula2/Material/aula/example_TTL_TB.vhd
-- Project Name:  aula
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: example_TTL
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY example_TTL_TB IS
END example_TTL_TB;
 
ARCHITECTURE behavior OF example_TTL_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT example_TTL
    PORT(
         i1 : IN  std_logic;
         i2 : IN  std_logic;
         i3 : IN  std_logic;
         i4 : IN  std_logic;
         i5 : IN  std_logic;
         i6 : IN  std_logic;
         i7 : IN  std_logic;
         i8 : IN  std_logic;
         o1 : OUT  std_logic;
         o2 : OUT  std_logic;
         o3 : OUT  std_logic;
         o4 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i1 : std_logic := '0';
   signal i2 : std_logic := '0';
   signal i3 : std_logic := '0';
   signal i4 : std_logic := '0';
   signal i5 : std_logic := '0';
   signal i6 : std_logic := '0';
   signal i7 : std_logic := '0';
   signal i8 : std_logic := '0';

 	--Outputs
   signal o1 : std_logic;
   signal o2 : std_logic;
   signal o3 : std_logic;
   signal o4 : std_logic;
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
 
   signal clock : std_logic := '0';
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.example_TTL(PORT_NAND) PORT MAP (
          i1 => i1,
          i2 => i2,
          i3 => i3,
          i4 => i4,
          i5 => i5,
          i6 => i6,
          i7 => i7,
          i8 => i8,
          o1 => o1,
          o2 => o2,
          o3 => o3,
          o4 => o4
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		i1 <= '0'; i2 <= '0';
		i3 <= '0'; i4 <= '1';
		i5 <= '1'; i6 <= '0';
		i7 <= '1'; i8 <= '1';
      wait for clock_period*10;
		i1 <= '0'; i2 <= '1';
		i3 <= '1'; i4 <= '0';
		i5 <= '1'; i6 <= '1';
		i7 <= '0'; i8 <= '0';
		wait for clock_period*10;
		i1 <= '1'; i2 <= '0';
		i3 <= '1'; i4 <= '1';
		i5 <= '0'; i6 <= '0';
		i7 <= '0'; i8 <= '1';
		wait for clock_period*10;
		i1 <= '1'; i2 <= '1';
		i3 <= '0'; i4 <= '0';
		i5 <= '0'; i6 <= '1';
		i7 <= '1'; i8 <= '0';
		
   end process;

END;
