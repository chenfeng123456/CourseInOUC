LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY compare IS
   PORT(
	      in0, in1: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			output: OUT STD_LOGIC
		);
END compare;

ARCHITECTURE bhv OF compare IS

BEGIN 
   PROCESS(in0, in1)
	BEGIN
	   IF in0 = in1 THEN
		   output <= '1';
		ELSE
		   output <= '0';
		END IF;
	END PROCESS;
END;