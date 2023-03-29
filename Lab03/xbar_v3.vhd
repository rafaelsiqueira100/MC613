library ieee;
use ieee.std_logic_1164.all;

entity xbar_v3 is
  port(x1, x2, s: in std_logic;
       y1, y2: out std_logic);
end xbar_v3;

-- xbar usando PROCESS com IF - ELSE
-- Quando S eh 0, entao as entradas seguem para suas respectivas saidas
-- caso contrario, ha a troca de saidas.
architecture rtl of xbar_v3 is
  -- add your code
begin
  process (x1, x2, s)
  begin
    if s = '0' then
      y1 <= x2;
      y2 <= x2;
    else 
      y1 <= x2;
      y2 <= x1;
    end if;
  end process;
end rtl;

