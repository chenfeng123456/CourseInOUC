LIBRARY IEEE;
USE IEEE.Std_Logic_1164.ALL;
USE IEEE.Std_Logic_Unsigned.ALL;
ENTITY freq_div IS
      GENERIC(n: Integer :=20000);           --  类属声明
      PORT(Clock,Reset:IN Std_Logic;    --  端口声明
                                          clk:OUT Std_Logic);
END freq_div;
ARCHITECTURE behavl_div OF freq_div IS
      SIGNAL count:Integer RANGE n-1 DOWNTO 0;
		BEGIN
    PROCESS(Reset,Clock)
    BEGIN
        IF Reset = '0' THEN
            clk <= '0';
            count <= n-1;
        ELSIF(Clock'Event AND Clock = '1' AND Clock'Last_Value = '0')THEN
            count <= count-1;
            IF count <= 0 THEN count <= n-1;END IF;
            IF count >= (n/2) THEN
                 clk <= '0';
            ELSE
                 clk <= '1';
            END IF;
        END IF;
    END PROCESS;
END behavl_div;
