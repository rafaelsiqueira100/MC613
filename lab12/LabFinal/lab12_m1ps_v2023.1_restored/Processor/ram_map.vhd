--Nome: Rafael Andre Alves de Siqueira RA: 243360
--Nome: Natan Rodrigues de Oliveira RA: 175154
library ieee;
-- Esta entidade representa o mapeamento do bloco de memoria que sera lido de acordo com determinado endereco
use ieee.std_logic_1164.all;
entity ram_map is
        port (
                 AddressIn : in std_logic_vector(9 downto 0);
                 AddressOut : out std_logic_vector(6 downto 0);
					  LineToRead : out std_logic;
                 IsValid: out std_logic
        );
end ram_map;

architecture arq_ram_map of ram_map is
signal is_undefined: std_logic;
signal is_multiple_of_4: std_logic;
signal is_valid: std_logic;
begin
    -- endereços válidos: 0 a 1020
	 
	is_undefined <= AddressIn(9) or AddressIn(8);
	is_valid <= (not is_undefined); 
	LineToRead <= AddressIn(7);
	with is_valid select AddressOut <= "0000000" when '0', AddressIn(6 downto 0) when others;	
	IsValid <= is_valid;
end arq_ram_map;

