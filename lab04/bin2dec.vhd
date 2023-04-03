LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY bin2dec IS
        PORT(
                bin : IN STD_LOGIC_VECTOR (3 downto 0);
                dec : OUT STD_LOGIC_VECTOR (6 downto 0)
        );
END bin2dec;

-- Usamos a estrutura WHEN - ELSE para setar o array de saida conforme a definiçao do LAB
-- onde a faixa 'a' representa a posiçao menos significativa do vetor DEC enquanto a faixa 'g' a mais significativa.
-- No caso de entrada maiores que 10, usamos o padrao E.

ARCHITECTURE Bin2DecLogicFunction OF bin2dec IS
BEGIN
        dec <= "1111001" when 9 < to_integer(unsigned(bin)) else
                         "1111111" when 8 = to_integer(unsigned(bin)) else
                         "0000111" when 7 = to_integer(unsigned(bin)) else
                         "1111101" when 6 = to_integer(unsigned(bin)) else
                         "1101101" when 5 = to_integer(unsigned(bin)) else
                         "1100110" when 4 = to_integer(unsigned(bin)) else
                         "1001111" when 3 = to_integer(unsigned(bin)) else
                         "1011011" when 2 = to_integer(unsigned(bin)) else
                         "0000110" when 1 = to_integer(unsigned(bin)) else
                         "0000000";
END Bin2DecLogicFunction;

