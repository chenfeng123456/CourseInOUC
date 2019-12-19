LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY task7_modified_sec1 IS
   PORT (
	       clk_in: IN STD_LOGIC;
			 rst_key: IN STD_LOGIC;
			 stop_key: IN STD_LOGIC;
			 save_key: IN STD_LOGIC;
			 en_key: IN STD_LOGIC;
			 beef: OUT STD_LOGIC;
	       dig: OUT STD_LOGIC_VECTOR(0 TO 3);
			 seg: OUT STD_LOGIC_VECTOR(0 TO 7)
		  );
END task7_modified_sec1;

ARCHITECTURE bhv OF task7_modified_sec1 IS

-----------------------------------------------------------------------
   COMPONENT inverter IS
	   PORT (
		       clk: IN STD_LOGIC;
			    output: OUT STD_LOGIC
		     );
	END COMPONENT;
-----------------------------------------------------------------------  
	COMPONENT cnt IS 
	   GENERIC (n: INTEGER := 9);
	   PORT (
	          input, rst_n : IN STD_LOGIC;
			    cout       : OUT STD_LOGIC;
			    dout       : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
			  );
	END COMPONENT;

-----------------------------------------------------------------------  	
	COMPONENT clock_gen IS
	   PORT (
				 clk        : IN STD_LOGIC; 
				 clk_us     : OUT STD_LOGIC;
				 clk_ms 	   : OUT STD_LOGIC;
				 clk_10ms   : OUT STD_LOGIC;
				 clk_100ms 	: OUT STD_LOGIC;
				 clk_500ms  : OUT STD_LOGIC;
				 clk_second : OUT STD_LOGIC
			  );
	END COMPONENT;

-----------------------------------------------------------------------  	
	COMPONENT xd IS
	   PORT ( 
		       clk,k1 :in std_logic;
             y      :out std_logic
			  );
	END COMPONENT;
	
-----------------------------------------------------------------------  	
	COMPONENT decoder IS
	   PORT (
	          input: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			    --en_input: IN STD_LOGIC_VECTOR(0 TO 3);
			    --en_output: OUT STD_LOGIC_VECTOR(0 TO 3);
			    seg: OUT STD_LOGIC_VECTOR(0 TO 7)
		     );
	END COMPONENT;
		
-----------------------------------------------------------------------  	
   COMPONENT serial_scan IS
	   PORT (
	          clk    : IN STD_LOGIC;
	          data0  : IN STD_LOGIC_VECTOR(0 TO 7);
			    data1  : IN STD_LOGIC_VECTOR(0 TO 7);
			    data2  : IN STD_LOGIC_VECTOR(0 TO 7);
			    data3  : IN STD_LOGIC_VECTOR(0 TO 7);
			    --en_in: IN STD_LOGIC_VECTOR(0 TO 3);
			    en_out : OUT STD_LOGIC_VECTOR(0 TO 3);
			    dataout: OUT STD_LOGIC_VECTOR(0 TO 7)
			 );
	END COMPONENT;
-----------------------------------------------------------------------
   COMPONENT shift IS
	   PORT(
	      clk, en, clr_n: IN STD_LOGIC;
			data0, data1, data2, data3: IN STD_LOGIC_VECTOR(3 DOWNTO 0); 
			reg3_out0, reg3_out1, reg3_out2, reg3_out3: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		   reg2_out0, reg2_out1, reg2_out2, reg2_out3: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		   reg1_out0, reg1_out1, reg1_out2, reg1_out3: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)	
		 );
	END COMPONENT;
-----------------------------------------------------------------------
   COMPONENT sel_state IS
	   PORT (
	       rst_n, save_key, inverter_out: IN STD_LOGIC;
			 reg3_in, reg2_in, reg1_in, in1: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 output: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
			);
	END COMPONENT;
-----------------------------------------------------------------------
   COMPONENT compare IS
      PORT(
	      in0, in1: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			output: OUT STD_LOGIC
		);
   END COMPONENT;	
-----------------------------------------------------------------------
   COMPONENT flicker IS
	   PORT(
	      en_n: IN STD_LOGIC;
			CLK:  IN STD_LOGIC;
			output: OUT STD_LOGIC
		);
   END COMPONENT;
	
-----------------------------------------------------------------------
   COMPONENT switch_delay IS
	   PORT(
	     clk: IN STD_LOGIC;
		  en_n: IN STD_LOGIC;
		  output: OUT STD_LOGIC
		 );
	END COMPONENT;
	
----------------------------------------------------------------------- 
   SIGNAL reset: STD_LOGIC;
	SIGNAL rst_or_inverterout: STD_LOGIC;
	SIGNAL stop : STD_LOGIC;
	SIGNAL inverter_out: STD_LOGIC;
	SIGNAL stop_and_clk: STD_LOGIC;
	SIGNAL save: STD_LOGIC;
	
	SIGNAL clk_10ms: STD_LOGIC;
	SIGNAL clk_1ms : STD_LOGIC;
	
	SIGNAL dout0: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL dout1: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL dout2: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL dout3: STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	SIGNAL sel_out0: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL sel_out1: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL sel_out2: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL sel_out3: STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	SIGNAL reg3_out0: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL reg3_out1: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL reg3_out2: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL reg3_out3: STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	SIGNAL reg2_out0: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL reg2_out1: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL reg2_out2: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL reg2_out3: STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	SIGNAL reg1_out0: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL reg1_out1: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL reg1_out2: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL reg1_out3: STD_LOGIC_VECTOR(3 DOWNTO 0);
   
	SIGNAL cout0: STD_LOGIC;
	SIGNAL cout1: STD_LOGIC;
	SIGNAL cout2: STD_LOGIC;
	SIGNAL cout3: STD_LOGIC;
	
	SIGNAL seg0 : STD_LOGIC_VECTOR(0 TO 7);
	SIGNAL seg1 : STD_LOGIC_VECTOR(0 TO 7);
	SIGNAL seg2 : STD_LOGIC_VECTOR(0 TO 7);
	SIGNAL seg3 : STD_LOGIC_VECTOR(0 TO 7);
	
	SIGNAL temp_dig: STD_LOGIC_VECTOR(0 TO 3);
	
	SIGNAL cmp0: STD_LOGIC;
	SIGNAL cmp1: STD_LOGIC;
	SIGNAL cmp2: STD_LOGIC;
	SIGNAL cmp3: STD_LOGIC;
	SIGNAL cmp : STD_LOGIC;
	
	SIGNAL flk: STD_LOGIC;
	
	SIGNAL beef_ctrl: STD_LOGIC;
	

BEGIN
		
-----------------------------------------------------------------------

   xd_clear:      xd PORT MAP(clk => clk_1ms, k1 => rst_key, y => reset);
	xd_state :      xd PORT MAP(clk => clk_1ms, k1 => stop_key, y => stop);
	xd_save:       xd  PORT MAP(clk => clk_1ms, k1 => save_key, y => save);
-----------------------------------------------------------------------
   inverter0: inverter PORT MAP(
	                              clk    => stop,
											output => inverter_out
										  );
-----------------------------------------------------------------------

   clock_10ms: clock_gen PORT MAP(clk => clk_in, clk_10ms => clk_10ms, clk_ms => clk_1ms);
	
	stop_and_clk <= (inverter_out AND clk_10ms);
	rst_or_inverterout <= (reset or inverter_out);
		
-----------------------------------------------------------------------

	cnt0:       cnt PORT MAP(
	                           input => stop_and_clk,
									   rst_n => rst_or_inverterout,
									   dout  => dout0,
										cout  => cout0
									);
	cnt1:       cnt PORT MAP(
	                           input => cout0,
										rst_n => rst_or_inverterout,
										dout  => dout1,
										cout  => cout1
									);
	cnt2:       cnt PORT MAP(
	                           input => cout1,
										rst_n => rst_or_inverterout,
										dout  => dout2,
										cout  => cout2
									);
	cnt3:       cnt GENERIC MAP (n => 5)
	                PORT MAP(
	                           input => cout2,
										rst_n => rst_or_inverterout,
										dout  => dout3,
										cout  => cout3
									);
		
-----------------------------------------------------------------------
   shift0:     shift PORT MAP(
	                            clk     => save,
										 en      => inverter_out,
                               clr_n   => rst_or_inverterout,
										 data0   => dout0,
										 data1   => dout1,
										 data2   => dout2,
										 data3   => dout3,
										 reg3_out0    => reg3_out0,
										 reg3_out1    => reg3_out1,
										 reg3_out2    => reg3_out2,
										 reg3_out3    => reg3_out3,
										 
										 reg2_out0    => reg2_out0,
										 reg2_out1    => reg2_out1,
										 reg2_out2    => reg2_out2,
										 reg2_out3    => reg2_out3,
										 
										 reg1_out0    => reg1_out0,
										 reg1_out1    => reg1_out1,
										 reg1_out2    => reg1_out2,
										 reg1_out3    => reg1_out3
									   );
-----------------------------------------------------------------------
   sel_state0: sel_state PORT MAP(
	                                rst_n        => rst_or_inverterout,
											  save_key     => save,
											  inverter_out => inverter_out,
											  reg3_in      => reg3_out0,
											  reg2_in      => reg2_out0,
											  reg1_in      => reg1_out0,
											  in1          => dout0,
											  output       => sel_out0
											 );
   sel_state1: sel_state PORT MAP(
	                                rst_n        => rst_or_inverterout,
											  save_key     => save,
											  inverter_out => inverter_out,
											  reg3_in      => reg3_out1,
											  reg2_in      => reg2_out1,
											  reg1_in      => reg1_out1,
											  in1          => dout1,
											  output       => sel_out1
											 );							
   sel_state2: sel_state PORT MAP(
	                                rst_n        => rst_or_inverterout,
											  save_key     => save,
											  inverter_out => inverter_out,
											  reg3_in      => reg3_out2,
											  reg2_in      => reg2_out2,
											  reg1_in      => reg1_out2,
											  in1          => dout2,
											  output       => sel_out2
											 );	                                
   sel_state3: sel_state PORT MAP(
	                                rst_n        => rst_or_inverterout,
											  save_key     => save,
											  inverter_out => inverter_out,
											  reg3_in      => reg3_out3,
											  reg2_in      => reg2_out3,
											  reg1_in      => reg1_out3,
											  in1          => dout3,
											  output       => sel_out3
											 );
-----------------------------------------------------------------------

   compare0: compare PORT MAP(
	                            in0     => dout0,
										 in1     => sel_out0,
										 output  => cmp0
										);
   compare1: compare PORT MAP(
	                            in0     => dout1,
										 in1     => sel_out1,
										 output  => cmp1
										);
   compare2: compare PORT MAP(
	                            in0     => dout2,
										 in1     => sel_out2,
										 output  => cmp2
										);
   compare3: compare PORT MAP(
	                            in0     => dout3,
										 in1     => sel_out3,
										 output  => cmp3
										);
	cmp <= (cmp0 AND cmp1 AND cmp2 AND cmp3);
	
-----------------------------------------------------------------------
   flicker0: flicker PORT MAP(
	                            en_n    => cmp,
										 clk     => clk_1ms,
										 output  => flk
										);
-----------------------------------------------------------------------

   decoder0:    decoder PORT MAP(
	                               input => NOT sel_out0,
											 seg   => seg0
										  );
	decoder1:    decoder PORT MAP(
	                               input => NOT sel_out1,
											 seg   => seg1
										  );
	decoder2:    decoder PORT MAP(
	                               input => NOT sel_out2,
											 seg   => seg2
										  );
	decoder3:    decoder PORT MAP(
	                               input => NOT sel_out3,
											 seg   => seg3
										  );
		
-----------------------------------------------------------------------

 	serial_scan0: serial_scan PORT MAP(
	                                   clk     => clk_1ms,    
	                                   data0   => seg0, 
			                             data1   => seg1,  
			                             data2   => seg2,  
			                             data3   => seg3,  
			                             en_out  => temp_dig, 
			                             dataout => seg
			                           );
	dig <= ( (temp_dig(0) OR flk) & (temp_dig(1) OR flk) & (temp_dig(2) OR flk) & (temp_dig(3) OR flk) );
		
-----------------------------------------------------------------------
   beef_ctrl <= (rst_key AND stop_key AND save_key);
	switch_delay0: switch_delay PORT MAP(
	                                      clk    => clk_10ms,
													  en_n   => beef_ctrl,
													  output => beef
													 );
													 


-----------------------------------------------------------------------
END;                                      	
 	                              