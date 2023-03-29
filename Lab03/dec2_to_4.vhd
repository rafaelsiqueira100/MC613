library ieee;
use ieee.std_logic_1164.all;

--Esta funçao logica gera 4 saidas a partir de en, w1 e w0
-- cada yi sera uma combinacao de w0 e w1,
-- sendo y0 = not(w0) * not(w1) * en
-- pois 0 = 0b00 considerando w0
-- associado ao bit mais significativo
-- e w1 ao menos.
-- en faz parte do produto pois este resultado so sera
-- transmitido caso enable = 1. Caso contrario,
-- o resultado sera 0.

entity dec2_to_4 is
  port(en, w1, w0: in std_logic;
       y3, y2, y1, y0: out std_logic);
end dec2_to_4;

architecture rtl of dec2_to_4 is
begin
     	y0 <= NOT w0 AND NOT w1 AND en;
        y1 <= NOT w0 AND w1 AND en;
        y2 <= w0 AND NOT w1 AND en;
        y3 <= w0 AND w1 AND en;
end rtl;
