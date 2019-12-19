LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dpram IS
	  GENERIC(width: integer:=8;
             addr: integer:=16);
       PORT(clock, wr, rd: IN Std_Logic;
                   waddress, raddress:
                      IN Std_Logic_Vector(addr-1 DOWNTO 0);
                   datain:
                      IN Std_Logic_Vector(width-1 DOWNTO 0);
                   dataout:
                      OUT Std_Logic_Vector(width-1 DOWNTO 0));
END dpram;

ARCHITECTURE behavior_of_dpram OF dpram IS
--    TYPE vector_array IS ARRAY (0 TO addr-1) OF STD_LOGIC_VECTOR (width-1 DOWNTO 0);
--	 signal memory: vector_array;
	 
BEGIN
    PROCESS (clock, wr, rd)
	 BEGIN
--	     IF (clock'EVENT AND clock = '1' AND wr = '1') THEN 
--		      memory(waddress) <= datain;
--		  ELSIF (clock'EVENT AND clock = '1' AND rd = '1') THEN
--		      dataout <= memory(raddress);
--		  END IF;
	 END PROCESS;
END behavior_of_dpram;