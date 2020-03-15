-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/03/2019 21:46:37"
                                                            
-- Vhdl Test Bench template for design  :  pulse_gen
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY pulse_gen_vhd_tst IS
END pulse_gen_vhd_tst;
ARCHITECTURE pulse_gen_arch OF pulse_gen_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL dir : STD_LOGIC;
COMPONENT pulse_gen
	PORT (
	a : OUT STD_LOGIC;
	b : OUT STD_LOGIC;
	c : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	d : OUT STD_LOGIC;
	dir : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : pulse_gen
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c => c,
	clk => clk,
	d => d,
	dir => dir
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once 
        clk <= '1'; WAIT FOR 10ns;
		  clk <= '0'; WAIT FOR 10ns;
--        a <= '0'; WAIT FOR 10ns;
--		  b <= '0'; WAIT FOR 10ns;
--		  c <= '0'; WAIT FOR 10ns;
--		  d <= '0'; WAIT FOR 10ns;
END PROCESS init; 

--clock: PROCESS
--BEGIN
--   clk <= '1'; WAIT FOR 10ns;
--	clk <= '0'; WAIT FOR 10ns;
--END PROCESS clock;
                                          
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list
		dir <= '1'; WAIT FOR 160ns;
      dir <= '0'; WAIT FOR 160ns;		                             
END PROCESS always;                                          
END pulse_gen_arch;