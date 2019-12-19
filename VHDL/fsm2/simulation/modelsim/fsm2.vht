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
-- Generated on "11/05/2019 20:10:59"
                                                            
-- Vhdl Test Bench template for design  :  fsm2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY fsm2_vhd_tst IS
END fsm2_vhd_tst;
ARCHITECTURE fsm2_arch OF fsm2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL ina : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL outa : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT fsm2
	PORT (
	clk : IN STD_LOGIC;
	ina : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	outa : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : fsm2
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	ina => ina,
	outa => outa,
	rst => rst
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
		rst <= '1'; WAIT FOR 20ns;
      rst <= '0';
      ina <= "00"; WAIT FOR 20ns;
      ina <= "01"; WAIT FOR 20ns;
      ina <= "00"; WAIT FOR 20ns;
      ina <= "11"; WAIT FOR 20ns;
		ina <= "11"; WAIT FOR 20ns;
      ina <= "10"; WAIT FOR 20ns;
      ina <= "11"; WAIT FOR 20ns;
      ina <= "00"; WAIT FOR 20ns;
      ina <= "11"; WAIT FOR 20ns;
      ina <= "10"; WAIT FOR 20ns;		
                            
END PROCESS always;                                          
END fsm2_arch;
