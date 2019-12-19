LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sel IS
   PORT (
	       input1, input2: IN STD_LOGIC;
			 code: IN STD_LOGIC;
			 output: OUT STD_LOGIC
		  );
END;

ARCHITECTURE bhv OF sel IS
BEGIN
   PROCESS(input1, input2, code)
	BEGIN
	   IF code = '0' THEN
		   output <= input1;
		ELSIF code = '1' THEN
		   output <= input2;
		ELSE
		   output <= 'Z';
		END IF;
	END PROCESS;
END;
