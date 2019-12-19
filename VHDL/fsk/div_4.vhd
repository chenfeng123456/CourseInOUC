LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY div_4 IS
   GENERIC (n: Integer:=4);
   PORT (
	      clk, reset_n: IN STD_LOGIC;
         q: OUT STD_LOGIC
		   );
END div_4;

ARCHITECTURE bhv OF div_4 IS
BEGIN
   PROCESS (reset_n, clk)
	      VARIABLE count: Integer RANGE n DOWNTO 0;
	BEGIN
		IF reset_n = '0' THEN
			q <= '0';
			count := n;
		ELSIF clk'EVENT AND clk = '1' AND clk'LAST_VALUE = '0' THEN
			count := count-1;
			IF count >= (n/2) THEN
				q <= '0';
			ELSE
				q <= '1';
			END IF;
			IF count <= 0 THEN
				count := n;
			END IF;
		END IF;
   END PROCESS;
END bhv;