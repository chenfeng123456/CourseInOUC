LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.STD_LOGIC_ARITH.all;

------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
ENTITY clock_gen IS
PORT(
	clk     : IN STD_LOGIC; 
	clk_us     : OUT STD_LOGIC;
	clk_ms 	   : OUT STD_LOGIC;
	clk_10ms   : OUT STD_LOGIC;
	clk_100ms 	   : OUT STD_LOGIC;
	clk_500ms   : OUT STD_LOGIC;
	clk_second : OUT STD_LOGIC
	);
END clock_gen;
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
ARCHITECTURE  behav OF clock_gen IS
    CONSTANT shake_constant :integer:=10;    -- shake wait for shake_constant us
    signal q_1us :integer range 0 to 50;    --us��Ƶϵ��
	signal q_1ms :integer range 0 to 1000;  --ms��Ƶϵ��
	signal q_10ms:integer range 0 to 10;    --10ms��Ƶϵ��
	signal q_100ms :integer range 0 to 10;  --100ms��Ƶϵ��
	signal q_500ms:integer range 0 to 5;    --500ms��Ƶϵ��	
	signal q_1s :integer range 0 to 1;   --����Ƶϵ��
	
	SIGNAL sig_second : STD_LOGIC;
	SIGNAL sig_500ms : STD_LOGIC;	
	SIGNAL sig_100ms : STD_LOGIC;	
	SIGNAL sig_ms : STD_LOGIC;
	SIGNAL sig_10ms : STD_LOGIC;
	SIGNAL sig_us : STD_LOGIC;
    
-------------------------------------------------------------------------------------------
begin

output_clock:process(clk)                     
begin	
	if 	clk'event and clk='1' then
		clk_us     <= sig_us;	
		clk_ms     <= sig_ms;
		clk_10ms   <= sig_10ms;clk_100ms   <= sig_100ms;
		clk_second <= sig_second;
	end if;

end process;

-------------------------------------------------------------------------------------------
----**************��Ƶ�� 1 us clock*******************	
u_second:process(clk)         
begin	
	if 	clk'event and clk='1' then
        if  q_1us < 49	then
			q_1us <=  q_1us+1;
			sig_us <= '0';
		else  
			q_1us <= 0;
			sig_us <= '1';
			
		end if;
	end if;
end process;
-------------------------------------------------------------------------------------------
----**************��Ƶ�� 1 ms clock*******************
m_second:process(sig_us)                    
begin
	if sig_us'event and sig_us='1' then
		if  q_1ms < 999 then
			q_1ms <=  q_1ms+1;
			sig_ms <= '0';
		else
			q_1ms <= 0;
			sig_ms <= '1'; 
		end if;
	end if;
end process;

-------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
----**************��Ƶ�� 10 ms clock*******************
m_second10:process(sig_ms)                    
begin
	if sig_ms'event and sig_ms='1' then
		if  q_10ms < 9 then
			q_10ms <=  q_10ms+1;
			sig_10ms <= '0';
		else
			q_10ms <= 0;
			sig_10ms <= '1'; 
		end if;
	end if;
end process;

-------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
----**************��Ƶ�� 100 ms clock*******************
m_second100:process(sig_10ms)                    
begin
	if sig_10ms'event and sig_10ms='1' then
		if  q_100ms < 9 then
			q_100ms <=  q_100ms+1;
			sig_100ms <= '0';
		else
			q_100ms <= 0;
			sig_100ms <= '1'; 
		end if;
	end if;
end process;

-------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
----**************��Ƶ�� 500 ms clock*******************
m_second500:process(sig_100ms)                    
begin
	if sig_100ms'event and sig_100ms='1' then
		if  q_500ms < 4 then
			q_500ms <=  q_500ms+1;
			sig_500ms <= '0';
		else
			q_500ms <= 0;
			sig_500ms <= '1'; 
		end if;
	end if;
end process;

-------------------------------------------------------------------------
----**************��Ƶ�� 1 second clock*******************
second:process(sig_500ms)                    
begin
	if 	sig_500ms'event and sig_500ms='1' then
		if  q_1s < 1 then
			q_1s <= q_1s+1;
			sig_second <= '0';
		else
			q_1s <= 0;
			sig_second <= '1'; 
		end if;
	end if;
end process;
-------------------------------------------------------------------------
END behav;
------------------------------------------------------------------------------------------	
  
  
