LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY shift IS
   PORT(
	      clk, en_n, clr_n: IN STD_LOGIC;
			data0, data1, data2, data3: IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- negative logic
			out0, out1, out2, out3: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) -- negative logic
		 );
END shift;

ARCHITECTURE bhv OF shift IS
   
BEGIN
   
	PROCESS (clk, en_n, clr_n)
	-- negative logic
	VARIABLE reg0: STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE reg1: STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE reg2: STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE reg3: STD_LOGIC_VECTOR(15 DOWNTO 0);
	BEGIN
	   IF en_n = '1' THEN
		   out0 <= (OTHERS => 'Z');
			out1 <= (OTHERS => 'Z');
			out2 <= (OTHERS => 'Z');
			out3 <= (OTHERS => 'Z');
		ELSIF en_n = '0' THEN
		   IF clr_n = '0' THEN
			   -- negative logic
			   out0 <= (OTHERS => '1');
			   out1 <= (OTHERS => '1');
			   out2 <= (OTHERS => '1');
			   out3 <= (OTHERS => '1');
				-- negative logic
				reg0 := (OTHERS => '1');
				reg1 := (OTHERS => '1');
				reg2 := (OTHERS => '1');
				reg3 := (OTHERS => '1');
			ELSE
			   IF clk'EVENT AND clk = '1' THEN
				   reg3 := reg2;
					reg2 := reg1;
					reg1 := reg0;
					reg0 := data0 & data1 & data2 & data3;
				END IF;
				out0 <= reg3(15 DOWNTO 12); out1 <= reg3(11 DOWNTO 8); out2 <= reg3(7 DOWNTO 4); out3 <= reg3(3 DOWNTO 0);
			END IF;
		END IF;
	END PROCESS;
END;
					
				   
		   
			