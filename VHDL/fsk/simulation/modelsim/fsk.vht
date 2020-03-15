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
-- Generated on "11/03/2019 23:27:53"
                                                            
-- Vhdl Test Bench template for design  :  fsk
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fsk_vhd_tst IS
END fsk_vhd_tst;
ARCHITECTURE fsk_arch OF fsk_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL code_in : STD_LOGIC;
SIGNAL output : STD_LOGIC;
SIGNAL rst_n : STD_LOGIC;
COMPONENT fsk
	PORT (
	clk : IN STD_LOGIC;
	code_in : IN STD_LOGIC;
	output : BUFFER STD_LOGIC;
	rst_n : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fsk
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	code_in => code_in,
	output => output,
	rst_n => rst_n
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once 
   clk <= '1'; WAIT FOR 10ns;
   clk <= '0'; WAIT FOR 10ns;	
                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list
		rst_n <= '0'; WAIT FOR 10ns;
	   rst_n <= '1';
	   code_in <= '0'; WAIT FOR 340ns;
	   code_in <= '1'; WAIT FOR 340ns;	
                                                        
END PROCESS always;                                          
END fsk_arch;