library ieee;
use ieee.std_logic_1164.all;

entity xbar_v2 is
  port(x1, x2, s: in std_logic;
       y1, y2: out std_logic);
end xbar_v2;

-- xbar usando WHEN - ELSE
-- Quando S eh 0, entao as entradas seguem para suas respectivas saidas
-- caso contrario, ha a troca de saidas.
architecture rtl of xbar_v2 is
  -- add your code
begin
  y1 <= x1 when s = '0' else x2;
  y2 <= x2 when s = '0' else x1;
end rtl;

