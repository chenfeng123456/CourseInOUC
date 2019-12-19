LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY fsm2 IS
   PORT (
	       ina: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			 rst, clk: IN STD_LOGIC;
			 outa: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		  );
END fsm2;


ARCHITECTURE bhv OF fsm2 IS
   type state IS (state0, state1, state2, state3);
   SIGNAL pr_state: state;
	
BEGIN
   PROCESS (clk, rst)
	BEGIN
	   IF (rst = '1') THEN
		   pr_state <= state0;
			outa <= "0101";
		ELSIF clk'EVENT AND clk = '1' THEN
		   CASE pr_state IS
			   WHEN state0 => 
				               IF ina = "00" THEN
									   pr_state <= state0;
										outa <= "0101";
									ELSIF ina = "01" OR ina(1) = '1' THEN
									   pr_state <= state1;
										outa <= "1000";
									ELSE
									   NULL;
									END IF;
				WHEN state1 =>
				               IF ina = "00" THEN
									   pr_state <= state1;
										outa <= "1000";
									ELSIF ina = "01" OR ina(1) = '1' THEN
									   pr_state <= state2;
										outa <= "1100";
									ELSE
									   NULL;
									END IF;
				WHEN state2 =>
				               IF ina = "11" THEN
									   pr_state <= state0;
										outa <= "0101";
									ELSIF ina(1) = '0' OR ina = "10" THEN
									   pr_state <= state3;
										outa <= "1101";
									ELSE
									   NULL;
									END IF;
				WHEN state3 =>
				               IF ina = "11" THEN
									   pr_state <= state3;
										outa <= "1101";
									ELSIF ina(1) = '0' OR ina = "10" THEN
									   pr_state <= state0;
										outa <= "0101";
									ELSE
									   NULL;
									END IF;
				WHEN OTHERS => NULL;
		   END CASE;
		END IF;
	END PROCESS;
END;