LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY shift IS
   PORT(
	      clk, en, clr_n: IN STD_LOGIC;
			data0, data1, data2, data3: IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
			reg3_out0, reg3_out1, reg3_out2, reg3_out3: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		   reg2_out0, reg2_out1, reg2_out2, reg2_out3: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		   reg1_out0, reg1_out1, reg1_out2, reg1_out3: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)	
		 );
END shift;

ARCHITECTURE bhv OF shift IS
   
BEGIN
   
	PROCESS (clk, en, clr_n)
	-- negative logic
	--VARIABLE reg0: STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE reg1: STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE reg2: STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE reg3: STD_LOGIC_VECTOR(15 DOWNTO 0);
	BEGIN
	   IF en = '0' THEN
		   IF clr_n = '0' THEN
			   
			   reg3_out0 <= (OTHERS => '0');
			   reg3_out1 <= (OTHERS => '0');
			   reg3_out2 <= (OTHERS => '0');
			   reg3_out3 <= (OTHERS => '0');
				
				reg2_out0 <= (OTHERS => '0');
			   reg2_out1 <= (OTHERS => '0');
			   reg2_out2 <= (OTHERS => '0');
			   reg2_out3 <= (OTHERS => '0');
				
				reg1_out0 <= (OTHERS => '0');
			   reg1_out1 <= (OTHERS => '0');
			   reg1_out2 <= (OTHERS => '0');
			   reg1_out3 <= (OTHERS => '0');
			
				--reg0 := (OTHERS => '0');
				reg1 := (OTHERS => '0');
				reg2 := (OTHERS => '0');
				reg3 := (OTHERS => '0');
			END IF;
		ELSIF en = '1' THEN
		   
			   IF clk'EVENT AND clk = '0' THEN
				   reg3 := reg2;
					reg2 := reg1;
					reg1 := data0 & data1 & data2 & data3;
					--reg0 := data0 & data1 & data2 & data3;
				END IF;
				reg3_out0 <= reg3(15 DOWNTO 12); reg3_out1 <= reg3(11 DOWNTO 8); reg3_out2 <= reg3(7 DOWNTO 4); reg3_out3 <= reg3(3 DOWNTO 0);
				reg2_out0 <= reg2(15 DOWNTO 12); reg2_out1 <= reg2(11 DOWNTO 8); reg2_out2 <= reg2(7 DOWNTO 4); reg2_out3 <= reg2(3 DOWNTO 0);
				reg1_out0 <= reg1(15 DOWNTO 12); reg1_out1 <= reg1(11 DOWNTO 8); reg1_out2 <= reg1(7 DOWNTO 4); reg1_out3 <= reg1(3 DOWNTO 0);
		END IF;
		
	END PROCESS;
END;
					
				   
		   
			