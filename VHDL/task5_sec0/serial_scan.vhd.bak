LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY serial_scan IS
   PORT (
	       clk: IN STD_LOGIC;
	       --datain: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 --en_in: IN STD_LOGIC_VECTOR(0 TO 3);
			 en_out: OUT STD_LOGIC_VECTOR(0 TO 3);
			 dataout: OUT STD_LOGIC_VECTOR(0 TO 7)
			 );
END serial_scan;

ARCHITECTURE bhv OF serial_scan IS

CONSTANT data0: STD_LOGIC_VECTOR := NOT "11111100";
CONSTANT data1: STD_LOGIC_VECTOR := NOT "01100000";
CONSTANT data2: STD_LOGIC_VECTOR := NOT "11011010";
CONSTANT data3: STD_LOGIC_VECTOR := NOT "11110010";
--SIGNAL CNT: INTEGER RANGE 0 TO 50000000;

BEGIN


   
	PROCESS(clk)
	   VARIABLE count: STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
	   VARIABLE CNT: INTEGER := 0;
	BEGIN
		IF clk'event AND clk = '1'THEN
			
				IF CNT >= 1 THEN 
			      CNT := 0;
			   ELSE 
			      CNT := CNT + 1;
			   END IF;
					
			IF CNT >= 0 THEN
				IF count = "00" THEN
					en_out <= "0111";
					dataout <= data0;
					--count := "01";
				ELSIF count = "01" THEN
					en_out <= "1011";
					dataout <= data1;
					--count := "10";
				ELSIF count = "10" THEN
					en_out <= "1101";
					dataout <= data2;
					--count := "11";
				ELSIF count = "11" THEN
					en_out <= "1110";
					dataout <= data3;
					--count := "00";
				ELSE
					en_out <= "0110";
					dataout <= data0;
					--count := "00";
				END IF;
				
				count := count + 1;
			END IF;
		END IF;
	END PROCESS;
	
END;