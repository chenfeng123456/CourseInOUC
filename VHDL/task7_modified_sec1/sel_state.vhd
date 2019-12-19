LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY sel_state IS
   PORT (
	       rst_n, save_key, inverter_out: IN STD_LOGIC;
			 reg3_in, reg2_in, reg1_in, in1: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 output: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
			);
END sel_state;

ARCHITECTURE bhv OF sel_state IS

   TYPE state IS (state0, state1, state2, state3, state4);
	--SIGNAL pr_state, nx_state: state;
   --SIGNAL cnt: INTEGER RANGE 0 TO 3;
BEGIN

   PROCESS(reg3_in, reg2_in, reg1_in, in1, rst_n, save_key, inverter_out)
	   VARIABLE pr_state: state;
   BEGIN
	   
	   
		IF rst_n = '0' OR inverter_out = '1' THEN
	      pr_state := state1;
	   ELSIF save_key'EVENT AND save_key = '0' THEN
	      CASE pr_state IS
			   WHEN state0 =>
									IF inverter_out = '0' THEN
									   pr_state := state1;
									ELSE
									   NULL;
									END IF;
				WHEN state1 => 
				               IF inverter_out = '0' THEN
									   pr_state := state2;
									ELSE
									   NULL;
									END IF;
				WHEN state2 => 
				               IF inverter_out = '0' THEN
									   pr_state := state3;
									ELSE
									   NULL;
									END IF;
				WHEN state3 => 
				               IF inverter_out = '0' THEN
									   pr_state := state4;
									ELSE
									   NULL;
									END IF;
				WHEN state4 => 
				               IF inverter_out = '0' THEN
									   pr_state := state1;
									ELSE
									   NULL;
									END IF;		
            WHEN OTHERS => NULL;
			END CASE;
     END IF;
	  
	  CASE pr_state IS
	     WHEN state0 => output <= in1;
		  WHEN state1 => output <= in1;
		  WHEN state2 => output <= reg3_in;
		  WHEN state3 => output <= reg2_in;
		  WHEN state4 => output <= reg1_in;
		  WHEN OTHERS => NULL;
	  END CASE;
   END PROCESS;
END;