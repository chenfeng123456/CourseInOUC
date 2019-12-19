LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY my_dff IS
    PORT (d, clk, rst: IN STD_LOGIC;
	       q: OUT STD_LOGIC);
END my_dff;

ARCHITECTURE behavior OF my_dff IS
BEGIN
    PROCESS (rst, clk)
	 BEGIN
	     IF (rst = '1') THEN
		      q <= '0';
		  ELSIF (clk'EVENT AND clk = '1') THEN
		      q <= d;
		  END IF;
	 END PROCESS;
END behavior;