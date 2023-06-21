LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY memory IS
	GENERIC (
		WORDSIZE : NATURAL := 32; -- Tamanho da palavra de dados
		BITS_OF_ADDR : NATURAL := 10; -- Tamanho da palavra de endereços
		MIF_FILE : STRING := "memory.mif" -- Arquivo com a imagem (conteudo) da memoria
	);
	PORT (
		clock   : IN	STD_LOGIC; -- Clock
		we      : IN	STD_LOGIC; -- Permissao de escrita
		address : IN	STD_LOGIC_VECTOR(BITS_OF_ADDR-1 DOWNTO 0); -- Endereço
		datain  : IN	STD_LOGIC_VECTOR(WORDSIZE-1 DOWNTO 0); -- Dado de entrada
		dataout : OUT	STD_LOGIC_VECTOR(WORDSIZE-1 DOWNTO 0) -- Dado de saida
	);
END ENTITY;

ARCHITECTURE RTL OF memory IS
-- Me complete e descomente!
--	TYPE ram_type IS <?>; -- Aqui!
--	SIGNAL ram			: ram_type;
--	ATTRIBUTE ram_init_file			: STRING;
--	ATTRIBUTE ram_init_file OF ram	: SIGNAL IS MIF_FILE;	
BEGIN

end architecture RTL;
