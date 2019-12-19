LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY switch_delay IS
   PORT(
	     clk: IN STD_LOGIC;
		  en_n: IN STD_LOGIC;
		  output: OUT STD_LOGIC
		 );
END switch_delay;

ARCHITECTURE bhv OF switch_delay IS
   
	
BEGIN
   PROCESS(clk, en_n)
	   VARIABLE cnt: INTEGER := 0;
		VARIABLE temp: STD_LOGIC;
	BEGIN
	   IF en_n = '1' THEN
		   IF cnt = 0 THEN
			   temp := '0';
			ELSE
			   IF clk'EVENT AND clk = '1' THEN
				   cnt := cnt - 1;
				END IF;
				
				temp := clk;
			END IF;
		ELSIF en_n = '0' THEN
		   temp := clk;
			cnt := 30;
		ELSE
		   NULL;
		END IF;
		
		output <= temp;
	END PROCESS;
END;