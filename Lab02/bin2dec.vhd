LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bin2dec IS
	PORT(
		bin : IN STD_LOGIC_VECTOR (3 downto 0)
		dec : OUT STD_LOGIC_VECTOR (6 downto 0)
	);
END bin2dec;

-- O objetivo deste LAB, alem da minimizaçao de funçoes logicas, eh mapear a entrada de numeros binarios para numeros decimais e hexadecimais
-- Optamos por associar cada faixa do digito a uma funcao F a fim de minimizarmos esta e, consequentemente, escrever as saidas em funcoes logicas
-- A nossa abordagem foi mapear a funcao completa, considerando a conversao diretamente para o haxadecimal. 
-- Observando quais numeros ativavam as faixas de saida. Assim, eh possivel construir a funcao logica.
-- Para confirmar a nossa minimizacao, fizemos a tabela verdade de todos os mapeamentos!

-- Nosso mapeamento segue a ordem alfabetica pelo menos significativo, ou seja, a = dec(0) e g = dec(6).

-- Considere o seguinte padrao de entrada para 4 bits = (w, x, y, z), sendo z o menos significativo
-- Considere o bit 0 como a respectiva letra com aspas simples, exemplo: z=1 e z'=0.

ARCHITECTURE LogicFunction OF bin2dec IS
BEGIN
	IF(9 < to_integer(unsigned(bin)) THEN
		dec(0) <= 1
		dec(3) <= 1
		dec(4) <= 1
		dec(5) <= 1
		dec(6) <= 1
	END IF;
	-- Notamos que a faixa 'a' eh mapeada na funcao logica a = F(0, 2, 3, 5, 6, 7, 8, 9, 10, 12, 14, 15)
	-- A minimizacao resultou em:
	-- wy'z' + wx'y' + w'xz + x'z' + wyz' + xy + w'y
	dec(0) <= (bin(3) AND NOT bin(1) AND NOT bin(0)) OR
				 (bin(3) AND NOT bin(2) AND NOT bin(1)) OR
				 (NOT bin(3) AND bin(2) AND bin(0))     OR
				 (NOT bin(2) AND NOT bin(0))            OR
				 (bin(3) AND bin(1) AND NOT bin(0))     OR
				 (bin(2) AND bin(1))                    OR
				 (NOT bin(3) AND bin(1))
				 
	-- Notamos que a faixa 'b' eh mapeada na funcao logica b = F(0, 1, 2, 3, 4, 7, 8, 9, 10, 13)
	-- A minimizacao resultou em:
	-- w'y'z' + x'y'z + wy'z + x'z' + w'yz + w'x'
	dec(1) <= (NOT bin(3) AND NOT bin(1) AND NOT bin(0)) OR
				 (NOT bin(2) AND NOT bin(1) AND bin(0))     OR
				 (bin(3) AND NOT bin(1) AND bin(0))         OR
				 (NOT bin(2) AND NOT bin(0))                OR
				 (NOT bin(3) AND bin(1) AND bin(0))         OR
				 (NOT bin(3) AND NOT bin(2))
	
	-- Notamos que a faixa 'c' eh mapeada na funcao logica c = F(0, 1, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13)
	-- A minimizacao resultou em:
	-- w'y' + y'z + w'z + x'(y XNOR z) + w'x + wx'
	dec(2) <= (NOT bin(3) AND NOT bin(1))           OR
				 (NOT bin(1) AND bin(0))               OR
				 (NOT bin(3) AND bin(0))               OR
				 (NOT bin(2) AND (bin(1) XNOR bin(0))) OR
				 (NOT bin(3) AND bin(2))               OR
				 (bin(3) AND NOT bin(2))
				 
	-- Notamos que a faixa 'd' eh mapeada na funcao logica d = F(0, 2, 3, 5, 6, 8, 9, 11, 12, 13, 14)
	-- A minimizacao resultou em:
	-- w'x'z' + wy' + x'y'z' + wx'z + x'yz + x(y XOR z) + wxz' + w'yz' + w'x'y
	dec(3) <= (NOT bin(3) AND NOT bin(2) AND NOT bin(0)) OR
				 (bin(3) AND NOT bin(1))                    OR
				 (NOT bin(2) AND NOT bin(1) AND NOT bin(0)) OR
				 (bin(3) AND NOT bin(2) AND bin(0))         OR
				 (NOT bin(2) AND bin(1) AND bin(0))			  OR
				 (bin(2) AND (bin(1) XOR bin(0))				  OR
				 (bin(3) AND bin(2) AND NOT bin(0))			  OR
				 (NOT bin(3) AND bin(1) AND NOT bin(0))	  OR
				 (NOT bin(3) AND NOT bin(2) AND bin(1))
	