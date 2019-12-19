LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY inverter IS
   PORT(
	      clk: IN STD_LOGIC;
			output: OUT STD_LOGIC
		  );
END inverter;

ARCHITECTURE bhv OF inverter IS

BEGIN
   PROCESS(clk)
	   VARIABLE temp: STD_LOGIC := '0';
	BEGIN
	   IF clk'EVENT AND clk = '0' THEN
		   temp := NOT temp;
		END IF;
		
		output <= temp;
	END PROCESS;
END;