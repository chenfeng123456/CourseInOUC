LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY my8259 IS
    GENERIC(width: integer := 8);
	 PORT(
	       D: INOUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
			 CAS: INOUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
			 nSP_nEN: INOUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
			 nRD, nWR, A0, nCS, nINTA: IN STD_LOGIC;
			 IR: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
			 INT: OUT STD_LOGIC
			 );
END my8259;

ARCHITECTURE behavior_of_my8259 OF my8259 IS
BEGIN
    PROCESS(IR, nRD, nWR, A0, nCS, nINTA, nSP_nEN)
	 BEGIN
	 END PROCESS;
END behavior_of_my8259;