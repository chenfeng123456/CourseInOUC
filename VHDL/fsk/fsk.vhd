LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY fsk IS
   PORT (
	       clk, rst_n, code_in: IN STD_LOGIC;
			 output: OUT STD_LOGIC
		  );
END;

ARCHITECTURE bhv OF fsk IS

	COMPONENT div PORT (
							  clk, reset_n: IN STD_LOGIC;
							  q: OUT STD_LOGIC
							  );
	END COMPONENT;

	COMPONENT div_4 PORT (
							    clk, reset_n: IN STD_LOGIC;
							    q: OUT STD_LOGIC
							   );
	END COMPONENT;
	
	COMPONENT sel PORT (
	                    input1, input2: IN STD_LOGIC;
			              code: IN STD_LOGIC;
			              output: OUT STD_LOGIC
		                );
	END COMPONENT;
	
	SIGNAL f1: STD_LOGIC;
	SIGNAL f2: STD_LOGIC;
								

BEGIN
   U1: div PORT MAP (
	                    clk     => clk,
							  reset_n => rst_n,
							  q       => f1
						    );
	U2: div_4 PORT MAP (
	                    clk     => clk,
							  reset_n => rst_n,
							  q       => f2
						    );
	U3: sel PORT MAP (
	                   input1 => f1,
							 input2 => f2,
							 code   => code_in,
							 output => output
						  );
END;
