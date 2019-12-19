LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY pulse_gen IS
   PORT ( 
	       clk, dir: IN STD_LOGIC;
	       a, b, c, d: OUT STD_LOGIC
		  );
END;

ARCHITECTURE bhv OF pulse_gen IS

BEGIN 
   PROCESS (clk, dir)
	   VARIABLE abcd: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1000";
		--VARIABLE stat: STD_LOGIC := '0';
	BEGIN
	   IF clk'EVENT AND clk = '1' THEN
		   CASE abcd IS
				   WHEN "1000" => a <= '1'; b <= '0'; c <= '0'; d <= '0';
					WHEN "0100" => a <= '0'; b <= '1'; c <= '0'; d <= '0';
					WHEN "0010" => a <= '0'; b <= '0'; c <= '1'; d <= '0';
					WHEN "0001" => a <= '0'; b <= '0'; c <= '0'; d <= '1';
					WHEN OTHERS => NULL;
			END CASE;
			
			IF dir = '1' THEN
				CASE abcd IS
					WHEN "1000" => abcd := "0100";
					WHEN "0100" => abcd := "0010";
					WHEN "0010" => abcd := "0001";
					WHEN "0001" => abcd := "1000";
					WHEN OTHERS => abcd := "1000";
				END CASE;
		   ELSE
				CASE abcd IS
					WHEN "1000" => abcd := "0001";
				   WHEN "0100" => abcd := "1000";
					WHEN "0010" => abcd := "0100";
					WHEN "0001" => abcd := "0010";
					WHEN OTHERS => abcd := "0001";
				END CASE;
				--END IF;
			END IF;
		END IF;
	END PROCESS;
END;