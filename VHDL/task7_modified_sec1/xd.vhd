library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity xd is
generic(n:integer:=50);
port(clk,k1:in std_logic;
     y :out std_logic);
end xd;

architecture a of xd is
begin
process(clk)
variable sum:integer range 1 to n;
begin
if rising_edge (clk) then 
if k1='0' then 
if sum=n then sum:=sum; else
sum:=sum+1;end if;
if sum=n then y<='0';else y<='1' ;end if;
else sum:=1;y<='1';
end if;end if;
end process;
end;