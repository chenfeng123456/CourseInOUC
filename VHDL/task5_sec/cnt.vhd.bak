LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY CNT10 IS
   PORT(
	      clk, rst: IN STD_LOGIC;
	      cout: OUT STD_LOGIC;
			dout: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		 );
END;

ARCHITECTURE bhv OF CNT10 IS

BEGIN
   PROCESS(clk, rst)
	VARIABLE temp: STD_LOGIC_VECTOR(3 DOWNTO 0);
	BEGIN
	   IF (rst = '1') THEN
		   dout <= "0000";
			cout <= '0';
		ELSIF clk'EVENT AND clk='1' THEN
		   --temp := dout;
		   IF temp < 9 THEN
			   temp := temp + 1;
			ELSE
			   temp := (OTHERS => '0');
			END IF;
		END IF;
		dout <= temp;
		IF temp = "1001" THEN 
		   cout <= '1';
		ELSE
		   cout <= '0';
		END IF;
	END PROCESS;
END bhv;
