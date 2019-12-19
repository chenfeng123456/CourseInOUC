LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY task5_sec IS
   PORT (
	       clk_in: IN STD_LOGIC;
			 rst_key: IN STD_LOGIC;
			 stop_key: IN STD_LOGIC;
	       DIG: OUT STD_LOGIC_VECTOR(0 TO 3);
			 SEG: OUT STD_LOGIC_VECTOR(0 TO 7)
		  );
END task5_sec;

ARCHITECTURE bhv OF task5_sec IS

-----------------------------------------------------------------------  
	COMPONENT cnt IS 
	   PORT (
	          clk, rst_n : IN STD_LOGIC;
				 stop       : IN STD_LOGIC;
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
   SIGNAL reset: STD_LOGIC;
	SIGNAL stop : STD_LOGIC;
	
	SIGNAL clk_10ms: STD_LOGIC;
	SIGNAL clk_1ms : STD_LOGIC;
	
	SIGNAL dout0: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL dout1: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL dout2: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL dout3: STD_LOGIC_VECTOR(3 DOWNTO 0);
   
	SIGNAL cout0: STD_LOGIC;
	SIGNAL cout1: STD_LOGIC;
	SIGNAL cout2: STD_LOGIC;
	SIGNAL cout3: STD_LOGIC;
	
	SIGNAL seg0 : STD_LOGIC_VECTOR(0 TO 7);
	SIGNAL seg1 : STD_LOGIC_VECTOR(0 TO 7);
	SIGNAL seg2 : STD_LOGIC_VECTOR(0 TO 7);
	SIGNAL seg3 : STD_LOGIC_VECTOR(0 TO 7);
	

BEGIN
		
-----------------------------------------------------------------------

   clear:      xd PORT MAP(clk => clk_in, k1 => rst_key, y => reset);
	state :      xd PORT MAP(clk => clk_in, k1 => stop_key, y => stop);
		
-----------------------------------------------------------------------

   clock_10ms: clock_gen PORT MAP(clk => clk_in, clk_10ms => clk_10ms, clk_ms => clk_1ms);
		
-----------------------------------------------------------------------

	cnt0:       cnt PORT MAP(
	                           clk   => clk_10ms,
									   rst_n => reset,
										stop  => stop,
									   dout  => dout0,
										cout  => cout0
									);
	cnt1:       cnt PORT MAP(
	                           clk   => cout0,
										rst_n => reset,
										stop  => stop,
										dout  => dout1,
										cout  => cout1
									);
	cnt2:       cnt PORT MAP(
	                           clk   => cout1,
										rst_n => reset,
										stop  => stop,
										dout  => dout2,
										cout  => cout2
									);
	cnt3:       cnt PORT MAP(
	                           clk   => cout2,
										rst_n => reset,
										stop  => stop,
										dout  => dout3,
										cout  => cout3
									);
		
-----------------------------------------------------------------------

   decoder0:    decoder PORT MAP(
	                               input => dout0,
											 seg   => seg0
										  );
	decoder1:    decoder PORT MAP(
	                               input => dout1,
											 seg   => seg1
										  );
	decoder2:    decoder PORT MAP(
	                               input => dout2,
											 seg   => seg2
										  );
	decoder3:    decoder PORT MAP(
	                               input => dout3,
											 seg   => seg3
										  );
		
-----------------------------------------------------------------------

 	serial_scan0: serial_scan PORT MAP(
	                                   clk     => clk_1ms,    
	                                   data0   => seg0, 
			                             data1   => seg1,  
			                             data2   => seg2,  
			                             data3   => seg3,  
			                             en_out  => DIG, 
			                             dataout => SEG
			                           );
		
-----------------------------------------------------------------------

END;                                      	
 	                              