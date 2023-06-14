--Nome: Rafael Andre Alves de Siqueira RA: 243360
--Nome: Natan Rodrigues de Oliveira RA: 175154
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- Esta entidade eh responsavel por  armazenar uma unidade de memoria de 128 bytes
-- e armazenado como um vetor de vetores (128 linhas e 8 colunas de 1 bit)
entity ram_block is
  port (
    Clock : in std_logic;
    Address : in std_logic_vector(6 downto 0);
    --address : 2^7-1 a 0 = 127 a 0
    Data : in std_logic_vector(7 downto 0);
    Q : out std_logic_vector(7 downto 0);
    WrEn : in std_logic
  );
end ram_block;

architecture direct of ram_block is
	signal numAddress : integer range 0 to 127;
	type mem_type is array (0 to 2**7-1)of std_logic_vector(7 downto 0);
	signal status: mem_type;
begin
	process(Clock)
	begin	
		if Clock'event and Clock = '1' then
			numAddress <= to_integer(unsigned(Address));
			if WrEn = '1' then
				--status(numAddress*8+7 downto numAddress*8) <= Data;
				status(numAddress) <= Data;
			end if;
				--Q <= status(numAddress*8 + 7 downto numAddress*8); 
				Q <= status(numAddress);
		end if;
	end process;
end direct;
