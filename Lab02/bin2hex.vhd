LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bin2hex IS
        PORT(
             	bin : IN STD_LOGIC_VECTOR (3 downto 0);
                hex : OUT STD_LOGIC_VECTOR (6 downto 0)
        );
END bin2hex;

-- O objetivo deste LAB, alem da minimizaçao de funçoes logicas, eh mapear a entrada de numeros binarios para numeros decimais $
-- Optamos por associar cada faixa do digito a uma funcao F a fim de minimizarmos esta e, consequentemente, escrever as saidas $
-- A nossa abordagem foi mapear a funcao completa, considerando a conversao diretamente para o haxadecimal.
-- Observando quais numeros ativavam as faixas de saida. Assim, eh possivel construir a funcao logica.
-- Para confirmar a nossa minimizacao, fizemos a tabela verdade de todos os mapeamentos!

-- Nosso mapeamento segue a ordem alfabetica pelo menos significativo, ou seja, a = hex(0) e g = hex(6).

-- Considere o seguinte padrao de entrada para 4 bits = (w, x, y, z), sendo z o menos significativo
-- Considere o bit 0 como a respectiva letra com aspas simples, exemplo: z=1 e z'=0.

ARCHITECTURE LogicFunction2 OF bin2hex IS
BEGIN
     	-- Notamos que a faixa 'a' eh mapeada na funcao logica a = F(0, 2, 3, 5, 6, 7, 8, 9, 10, 12, 14, 15)
        -- A minimizacao resultou em:
        -- wy'z' + wx'y' + w'xz + x'z' + wyz' + xy + w'y
        hex(0) <= (bin(3) AND NOT bin(1) AND NOT bin(0)) OR
                                 (bin(3) AND NOT bin(2) AND NOT bin(1)) OR
                                 (NOT bin(3) AND bin(2) AND bin(0))     OR
                                 (NOT bin(2) AND NOT bin(0))            OR
                                 (bin(3) AND bin(1) AND NOT bin(0))     OR
                                 (bin(2) AND bin(1))                    OR
                                 (NOT bin(3) AND bin(1));

        -- Notamos que a faixa 'b' eh mapeada na funcao logica b = F(0, 1, 2, 3, 4, 7, 8, 9, 10, 13)
        -- A minimizacao resultou em:
        -- w'y'z' + x'y'z + wy'z + x'z' + w'yz + w'x'
        hex(1) <= (NOT bin(3) AND NOT bin(1) AND NOT bin(0)) OR
                                 (NOT bin(2) AND NOT bin(1) AND bin(0))     OR
                                 (bin(3) AND NOT bin(1) AND bin(0))         OR
                                 (NOT bin(2) AND NOT bin(0))                OR
                                 (NOT bin(3) AND bin(1) AND bin(0))         OR
                                 (NOT bin(3) AND NOT bin(2));

        -- Notamos que a faixa 'c' eh mapeada na funcao logica c = F(0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13)
        -- A minimizacao resultou em:
        -- w'y' + y'z + w'z + x'(y XNOR z) + w'x + wx'
        hex(2) <= (NOT bin(3) AND NOT bin(1))           OR
                                 (NOT bin(1) AND bin(0))               OR
                                 (NOT bin(3) AND bin(0))               OR
                                 (NOT bin(2) AND (bin(1) XNOR bin(0))) OR
                                 (NOT bin(3) AND bin(2))               OR
                                 (bin(3) AND NOT bin(2));

        -- Notamos que a faixa 'd' eh mapeada na funcao logica d = F(0, 2, 3, 5, 6, 8, 9, 11, 12, 13, 14)
        -- A minimizacao resultou em:
        -- w'x'z' + wy' + x'y'z' + wx'z + x'yz + x(y XOR z) + wxz' + w'yz' + w'x'y
        hex(3) <= (NOT bin(3) AND NOT bin(2) AND NOT bin(0)) OR
                                 (bin(3) AND NOT bin(1))                    OR
                                 (NOT bin(2) AND NOT bin(1) AND NOT bin(0)) OR
                                 (bin(3) AND NOT bin(2) AND bin(0))         OR
                                 (NOT bin(2) AND bin(1) AND bin(0))                       OR
                                 (bin(2) AND (bin(1) XOR bin(0)))                         OR
                                 (bin(3) AND bin(2) AND NOT bin(0))                       OR
                                 (NOT bin(3) AND bin(1) AND NOT bin(0))   OR
                                 (NOT bin(3) AND NOT bin(2) AND bin(1));

        -- Notamos que a faixa 'e' eh mapeada na funcao logica e = F(0, 2, 6, 8, 10, 11, 12, 13, 14, 15)
        -- A minimizacao resultou em:
        -- wx + wy'z' + x'z' + wy + xyz' + w'yz'
        hex(4) <= (bin(3) AND bin(2)) or
                                 (bin(3) AND NOT bin(1) AND NOT bin(0)) OR
                                 (NOT bin(2) AND NOT bin(0)) OR
                                 (bin(3) AND bin(1)) OR
                                 (bin(2) AND bin(1) AND (NOT bin(0))) OR
                                 (NOT(bin(3)) AND bin(1) AND NOT(bin(0)));

        -- Notamos que a faixa 'f' eh mapeada na funcao logica f = F(4, 5, 6, 8, 9, 10, 11, 12, 14, 15)
        -- A minimizacao resultou em:
        -- wx' + yw + z'x + w'xy'

        hex(5) <=
        (NOT(bin(3)) AND bin(2) AND NOT(bin(1))) OR
        (NOT(bin(1)) AND NOT(bin(0))) OR
        (bin(3) AND bin(1)) OR
        (bin(3) AND NOT(bin(2))) OR
        (bin(2) AND bin(1) AND NOT(bin(0)));

        -- Notamos que a faixa 'g' eh mapeada na funcao logica g = F(2, 3, 4, 5, 6, 8, 9, 10, 11, 13, 14, 15)
        -- A minimizacao resultou em:
        hex(6) <=
                                 (NOT(bin(3)) AND bin(2) AND NOT(bin(1))) OR
                                  (NOT(bin(2)) AND bin(1) AND NOT(bin(0))) OR
                                 (bin(3) AND NOT(bin(2))) OR
                                 (bin(3) AND bin(0)) OR
                                 (NOT(bin(2)) AND bin(1) AND bin(0)) OR
                                 (bin(3) AND bin(1)) OR
                                 (NOT(bin(3)) AND bin(2) AND NOT(bin(0))) OR
                                 (NOT(bin(3)) AND NOT(bin(2)) AND bin(1)) OR
                                 (bin(1) AND NOT(bin(0)));

END LogicFunction2;


