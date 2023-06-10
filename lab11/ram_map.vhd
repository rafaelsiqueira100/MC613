entity ram_map is
port (
    AddressIn : in std_logic_vector(9 downto 0);
    RamBlock : out std_logic_vector(2 downto 0);
    AddressOut : out std_logic_vector(6 downto 0);
    IsValid: out std_logic;
);
end ram_map;
  
architecture rtl of ram_map is
begin
    -- endereços válidos: 0 a 1023
    if(AddressIn(0) = 'u' or AddressIn(1) = 'u' or AddressIn(2) = 'u' or AddressIn(3) = 'u' or address(4) = 'u' 
    or AddressIn(5) = 'u' or AddressIn(6) = 'u' or AddressIn(7) = 'u' or AddressIn(8) = 'u' or address(9) = 'u')
    then
        AddressOut <= (others => '0');
        RamBlock <= (others => '0');
        IsValid <= '0';
    else if (AddressIn(8) = '0' and AdressIn(9) = '0') then-- só seram válidos se o endereço por múltiplo de 4 bytes
        AddressOut <= AddressIn(9 downto 3);
        RamBlock <= AddressIn(2 downto 0);
        IsValid <= '1';
    else
        AddressOut <= (others => '0');
        RamBlock <= (others => '0');
        IsValid <= '0';
    end if;
end rtl;