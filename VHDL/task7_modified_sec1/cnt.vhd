LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY cnt IS
   GENERIC(n: INTEGER := 9);
   PORT(
	      input, rst_n: IN STD_LOGIC;
	      cout: OUT STD_LOGIC;
			dout: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		 );
END;

ARCHITECTURE bhv OF cnt IS

BEGIN
   PROCESS(input, rst_n)
	   VARIABLE temp: STD_LOGIC_VECTOR(3 DOWNTO 0);
	BEGIN
	   IF (rst_n = '0') THEN
		   temp := "0000";
		ELSIF input'EVENT AND input='0' THEN
		   IF temp < n THEN
			   temp := temp + 1;
			ELSE
			   temp := (OTHERS => '0');
			END IF;
		END IF;
		dout <= temp;
		IF temp = n THEN 
		   cout <= '1';
		ELSE
		   cout <= '0';
		END IF;
	END PROCESS;
END bhv;
