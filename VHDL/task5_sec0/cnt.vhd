LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY cnt IS
   PORT (
	       clk, rst_n: IN STD_LOGIC;
			 stop: IN STD_LOGIC;
			 cout: OUT STD_LOGIC;
			 dout: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
			);
END;

ARCHITECTURE bhv OF cnt IS
SIGNAL trans_state: STD_LOGIC;
BEGIN


   PROCESS(stop)
	   VARIABLE s: STD_LOGIC := '1';
	BEGIN
	   IF stop'EVENT AND stop = '1' THEN
		   s := NOT s;
	      trans_state <= s;
		END IF;
	END PROCESS;
   
	
	
   PROCESS(clk, rst_n, trans_state)
	   --VARIABLE state: STD_LOGIC := 1;
		VARIABLE temp: STD_LOGIC_VECTOR(3 DOWNTO 0);
	BEGIN
	   IF trans_state = '0' THEN
			IF rst_n = '0' THEN
				temp := "0000";
				--cout <= '0'
			END IF;
		ELSE
			IF clk'EVENT AND clk = '0' THEN
				IF temp < 9 THEN
					temp := temp + 1;
				ELSE
					temp := (OTHERS => '0');
				END IF;
			END IF;
		END IF;
			dout <= NOT temp;
			IF temp = "1001" THEN
				cout <= '1';
			ELSE
				cout <= '0';
			END IF;
		--END IF;
	END PROCESS;
END bhv;