library ieee;
use ieee.std_logic_1164.all;

entity ram_map is
        port (
                 AddressIn : in std_logic_vector(9 downto 0);
                 RamBlock : out std_logic_vector(2 downto 0);
                 AddressOut : out std_logic_vector(6 downto 0);
                 IsValid: out std_logic
        );
end ram_map;

architecture rtl of ram_map is
begin
    -- endereços válidos: 0 a 1023
         process(AddressIn)
         begin
                 if AddressIn(0) = 'U' or AddressIn(1) = 'U' or AddressIn(2) = 'U' or AddressIn(3) = >                 or AddressIn(5) = 'U' or AddressIn(6) = 'U' or AddressIn(7) = 'U' or AddressIn(8) = >                 then
                          AddressOut <= (others => '0');
                          RamBlock <= (others => '0');
                          IsValid <= '0';
                 elsif AddressIn(8) = '0' and AddressIn(9) = '0' then-- só seram válidos se o endereç>                          AddressOut <= AddressIn(9 downto 3);
                          RamBlock <= AddressIn(7 downto 9);--só pode ser o 0 e o 4
                          IsValid <= '1';
                 else
                          AddressOut <= (others => '0');
                          RamBlock <= (others => '0');
                          IsValid <= '0';
                 end if;
        end process;
end rtl;


