LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY decoder IS
   PORT (
	       input: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 --en_input: IN STD_LOGIC_VECTOR(0 TO 3);
			 --en_output: OUT STD_LOGIC_VECTOR(0 TO 3);
			 seg: OUT STD_LOGIC_VECTOR(0 TO 7)
		  );
END decoder;

ARCHITECTURE bhv OF decoder IS
   
BEGIN
   
	--en_output <= en_input;
	
	PROCESS(input)
	   VARIABLE temp_in: STD_LOGIC_VECTOR(3 DOWNTO 0);
		VARIABLE temp_out: STD_LOGIC_VECTOR(0 TO 7);
	BEGIN
	   temp_in := input;
		CASE NOT temp_in IS
		   WHEN "0000" => temp_out := NOT "11111100"; -- 0
			WHEN "0001" => temp_out := NOT "01100000"; -- 1
			WHEN "0010" => temp_out := NOT "11011010"; -- 2
			WHEN "0011" => temp_out := NOT "11110010"; -- 3
			WHEN "0100" => temp_out := NOT "01100110"; -- 4
			WHEN "0101" => temp_out := NOT "10110110"; -- 5
			WHEN "0110" => temp_out := NOT "00111110"; -- 6
			WHEN "0111" => temp_out := NOT "11100000"; -- 7
			WHEN "1000" => temp_out := NOT "11111110"; -- 8
			WHEN "1001" => temp_out := NOT "11100110"; -- 9
			WHEN "1010" => temp_out := NOT "11101110"; -- A
			WHEN "1011" => temp_out := NOT "00111110"; -- b
			WHEN "1100" => temp_out := NOT "10011100"; -- C
			WHEN "1101" => temp_out := NOT "01111010"; -- d
			WHEN "1110" => temp_out := NOT "10011110"; -- E
			WHEN "1111" => temp_out := NOT "10001110"; --F
			WHEN OTHERS => temp_out := (OTHERS => '1');
		END CASE;
		
		seg <= temp_out;
	END PROCESS;
END;