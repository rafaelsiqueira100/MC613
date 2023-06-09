library ieee;
use ieee.std_logic_1164.all;
-- Este componente faz varias conexoes,
-- transmitindo yi se wi for 1
-- No final, e feito um or entre todos os elementos
-- pois geralmente apenas um dos w valera 1,
-- os demais valerao zero e este y devera ser 
-- transmitido para f

entity extra_logic is
  port(w3, w2, w1, w0 : in std_logic;
       y3, y2, y1, y0 : in std_logic;
       f : out std_logic);
end extra_logic;

architecture rtl of extra_logic is
begin
     	f <= (w0 AND y0) OR (w1 AND y1) OR (w2 AND y2) OR (w3 AND y3);
end;
