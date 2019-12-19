LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY fsm1 IS
   PORT (
	       ina: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			 reset, clk: IN STD_LOGIC;
			 outa: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		  );
END fsm1;

ARCHITECTURE bhv OF fsm1 IS
   TYPE state IS (state0, state1, state2, state3);
	SIGNAL pr_state, nx_state: state;
BEGIN
----------------------LOWER SECTION----------------------
   PROCESS (clk, reset)
	BEGIN
	   IF reset = '1' THEN
		   pr_state <= state0;
		ELSIF clk'EVENT AND clk = '1' THEN
		   pr_state <= nx_state;
		END IF;
	END PROCESS;
	
----------------------UPPER SECTION----------------------
   PROCESS (ina, pr_state)
	BEGIN
	   CASE pr_state IS
		WHEN state0 => 
		               IF ina = "00" THEN
							   outa <= "0101";
								nx_state <= state0;
							ELSIF ina = "01" OR ina(1) = '1' THEN
							   outa <= "1000";
								nx_state <= state1;
							ELSE
			  			      NULL;
			  				END IF;
	   WHEN state1 => 
			            IF ina = "00" THEN
							   outa <= "1000";
								nx_state <= state1;
							ELSIF ina = "01" OR ina(1) = '1' THEN
							   outa <= "1100";
								nx_state <= state2;
							ELSE
							   NULL;
							END IF;
		WHEN state2 =>
			            IF ina = "11" THEN
							   outa <= "0101";
								nx_state <= state0;
							ELSIF ina(1) = '0' OR ina = "10" THEN
							   outa <= "1101";
								nx_state <= state3;
							ELSE
							   NULL;
							END IF;
		WHEN state3 => 
			            IF ina = "11" THEN
							   outa <= "1101";
								nx_state <= state3;
							ELSIF ina(1) = '0' OR ina = "10" THEN
							   outa <= "0101";
								nx_state <= state0;
							ELSE
							   NULL;
							END IF;
		END CASE;
	END PROCESS;
END;
								
				         