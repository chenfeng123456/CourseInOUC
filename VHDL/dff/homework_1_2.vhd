LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY homework_1_2 IS
    GENERIC(width: integer := 8);
	 PORT(
	      clk, rd, wr: IN STD_LOGIC;
	      myin: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
			myout: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0)
			);
END homework_1_2;

ARCHITECTURE behavior_of_homework_1_2 OF homework_1_2 IS
BEGIN
    PROCESS (clk, wr, rd)
	 BEGIN

	 END PROCESS;
END behavior_of_homework_1_2;