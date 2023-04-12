--Nome: Rafael Andre Alves de Siqueira RA: 243360
--Nome: Natan Rodrigues de Oliveira    RA: 175154
-- Este circuito lógico foi feito para realizar o problema
-- de transformada uma entrada (4 bits)
-- em duas saídas :
-- um bit de sinal (neg) indicando se o resultado é negativo ou não
-- e um vetor de 7 bits (segs) que indica os segmentos a serem acesos
-- no display de 7 segmentos 
-- O resultado leva em conta números binários com sinal
-- retornando os segmentos de "0" caso não seja o resultado 
-- em decimal não seja um número 
-- de -7 a -1 ou 1 a 7
library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity two_comp_to_7seg is
  port (
    bin : in std_logic_vector(3 downto 0);
    segs : out std_logic_vector(6 downto 0);
    neg : out std_logic
  );
end two_comp_to_7seg;

architecture behavioral of two_comp_to_7seg is
begin
  -- add your code
  segs <= "0000110" when -1 = to_integer(signed(bin)) else
                        "1011011" when -2 = to_integer(signed(bin)) else
                        "1001111" when -3 = to_integer(signed(bin)) else
                        "1100110" when -4 = to_integer(signed(bin)) else
                        "1101101" when -5 = to_integer(signed(bin)) else
                        "1111101" when -6 = to_integer(signed(bin)) else
                        "0000111" when -7 = to_integer(signed(bin)) else
                        "1111111" when -8 = to_integer(signed(bin)) else
         "0000111" when 7 = to_integer(signed(bin)) else
         "1111101" when 6 = to_integer(signed(bin)) else
         "1101101" when 5 = to_integer(signed(bin)) else
         "1100110" when 4 = to_integer(signed(bin)) else
         "1001111" when 3 = to_integer(signed(bin)) else
         "1011011" when 2 = to_integer(signed(bin)) else
         "0000110" when 1 = to_integer(signed(bin)) else
                        "0000000";

        neg <=  bin(3) ;

end behavioral;













