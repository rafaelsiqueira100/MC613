library ieee;
use ieee.std_logic_1164.all;

entity ram is
  port (
    Clock : in std_logic;
    Address : in std_logic_vector(9 downto 0);
    DataIn : in std_logic_vector(31 downto 0);
    DataOut : out std_logic_vector(31 downto 0);
    WrEn : in std_logic
  );
end ram;

architecture rtl of ram is
        signal first_q: std_logic_vector(7 downto 0);
        signal second_q: std_logic_vector(7 downto 0);
        signal third_q: std_logic_vector(7 downto 0);
        signal fourth_q: std_logic_vector(7 downto 0);
        signal fifth_q: std_logic_vector(7 downto 0);
        signal sixth_q: std_logic_vector(7 downto 0);
        signal seventh_q: std_logic_vector(7 downto 0);
        signal eighth_q: std_logic_vector(7 downto 0);
        signal wr_enable: std_logic_vector (7 downto 0);
        signal address_out: std_logic_vector(6 downto 0);
        signal ramBlock: std_logic_vector(2 downto 0);
        signal valid_address : std_logic;

        --component ram_map is
--      port (
--               AddressIn : in std_logic_vector(9 downto 0);
--               RamBlock : out std_logic_vector(2 downto 0);
--               AddressOut : out std_logic_vector(6 downto 0);
--               IsValid: out std_logic
--              );
--      end component;

--      component ram_block is
--      port (
--               Clock : in std_logic;
--               Address : in std_logic_vector(6 downto 0);
                 --address : 2^7-1 a 0 = 127 a 0
--               Data : in std_logic_vector(7 downto 0);
--               Q : out std_logic_vector(7 downto 0);
--               WrEn : in std_logic
--              );
--      end component;
begin
ramMap: work.ram_map (AddressIn => Address, AddressOut => address_out, RamBlock => ramBlock, >        ram_block1 : work.ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(3>        ram_block2 : work.ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(2>        ram_block3 : work.ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(1>        ram_block4 : work.ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(7>        ram_block5 : work.ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(3>        ram_block6 : work.ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(2>        ram_block7 : work.ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(1>        ram_block8 : work.ram_block port map(Clock => Clock, Address => address_out, Data => DataIn(7>        process(Clock)
        begin
          if Clock'event and Clock = '1' then
                 if(valid_address = '0') then
                        DataOut <= (others => '0');
                 else
                        case ramBlock is
                          when "000" =>
                                 wr_enable <= WrEn & WrEn & WrEn & WrEn & "0000";
                                 DataOut <= first_q & second_q & third_q & fourth_q;
                          when "100" =>
                                 wr_enable <= "0000" & WrEn & WrEn & WrEn & WrEn;
                                 DataOut <= fifth_q & sixth_q & seventh_q & eighth_q;
                          when others =>
                                DataOut <= (others => '0');
                        end case;
                 end if;
          end if;
end process;
end rtl;
