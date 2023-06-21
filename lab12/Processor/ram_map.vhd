--Nome: Rafael Andre Alves de Siqueira RA: 243360
--Nome: Natan Rodrigues de Oliveira RA: 175154
library ieee;
-- Esta entidade representa o mapeamento do bloco de memoria que sera lido de acordo com determinado endereco
use ieee.std_logic_1164.all;
entity ram_map is
        port (
                 AddressIn : in std_logic_vector(9 downto 0);
                 RamBlock : out std_logic_vector(2 downto 0);
                 AddressOut : out std_logic_vector(6 downto 0);
                 IsValid: out std_logic
        );
end ram_map;

architecture arq_ram_map of ram_map is
signal is_undefined: std_logic;
signal is_multiple_of_4: std_logic;
signal is_valid: std_logic;
begin
    -- endereços válidos: 0 a 1020
	is_undefined <= AddressIn(9) and AddressIn(8) and AddressIn(7) and AddressIn(6) and AddressIn(5) and AddressIn(4) and AddressIn(3) and AddressIn(2) and (AddressIn(1) or AddressIn(0));
	-- 1 se for maior que "1111111100"
	is_multiple_of_4 <= (not AddressIn(0)) and (not AddressIn(1));
	is_valid <= (not is_undefined) and is_multiple_of_4;
	
	with is_valid select AddressOut <= "0000000" when '0', AddressIn(6 downto 0) when others;

	with is_valid select RamBlock <= "000" when '0', AddressIn(9 downto 7) when others;
	
	IsValid <= is_valid;
end arq_ram_map;

