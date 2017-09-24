--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: half_adder_1_synthesis.vhd
-- /___/   /\     Timestamp: Tue Aug 08 14:15:15 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm half_adder_1 -w -dir netgen/synthesis -ofmt vhdl -sim half_adder_1.ngc half_adder_1_synthesis.vhd 
-- Device	: xc3s100e-4-vq100
-- Input file	: half_adder_1.ngc
-- Output file	: C:\Users\TEMP.ELE\Desktop\test\mytest\netgen\synthesis\half_adder_1_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: half_adder_1
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity half_adder_1 is
  port (
    a : in STD_LOGIC := 'X'; 
    b : in STD_LOGIC := 'X'; 
    c : out STD_LOGIC; 
    s : out STD_LOGIC 
  );
end half_adder_1;

architecture Structure of half_adder_1 is
  signal a_IBUF_1 : STD_LOGIC; 
  signal b_IBUF_3 : STD_LOGIC; 
  signal c_OBUF_5 : STD_LOGIC; 
  signal s_OBUF_7 : STD_LOGIC; 
begin
  c1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => a_IBUF_1,
      I1 => b_IBUF_3,
      O => c_OBUF_5
    );
  Mxor_s_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => b_IBUF_3,
      I1 => a_IBUF_1,
      O => s_OBUF_7
    );
  a_IBUF : IBUF
    port map (
      I => a,
      O => a_IBUF_1
    );
  b_IBUF : IBUF
    port map (
      I => b,
      O => b_IBUF_3
    );
  c_OBUF : OBUF
    port map (
      I => c_OBUF_5,
      O => c
    );
  s_OBUF : OBUF
    port map (
      I => s_OBUF_7,
      O => s
    );

end Structure;

