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
signal ram_block: std_logic_vector(2 downto 0);
signal valid_address : std_logic;
begin
ram_map: ram_map(AddressIn <= Address, AddressOut <= address_out, RamBlock <= ram_block, IsValid <= valid_address);
ram_block1 : ram_block(Clock <= Clock, Address <= address_out, DataIn <= DataIn(31 downto 24), Q <= first_q, WrEn <= wr_enable(0));
ram_block2 : ram_block(Clock <= Clock, Address <= address_out, DataIn <= DataIn(23 downto 16), Q <= second_q, WrEn <= wr_enable(1));
ram_block3 : ram_block(Clock <= Clock, Address <= address_out, DataIn <= DataIn(15 downto 8), Q <= third_q, WrEn <= wr_enable(2));
ram_block4 : ram_block(Clock <= Clock, Address <= address_out, DataIn <= DataIn(7 downto 0), Q <= fourth_q, WrEn <= wr_enable(3));
ram_block5 : ram_block(Clock <= Clock, Address <= address_out, DataIn <= DataIn(31 downto 24), Q <= fifth_q, WrEn <= wr_enable(4));
ram_block6 : ram_block(Clock <= Clock, Address <= address_out, DataIn <= DataIn(23 downto 16), Q <= sixth_q, WrEn <= wr_enable(5));
ram_block7 : ram_block(Clock <= Clock, Address <= address_out, DataIn <= DataIn(15 downto 8), Q <= seventh_q, WrEn <= wr_enable(6));
ram_block8 : ram_block(Clock <= Clock, Address <= address_out, DataIn <= DataIn(7 downto 0), Q <= eighth_q, WrEn <= wr_enable(7));
process(Clock);
begin
  if Clock'event and Clock = '1' then
  begin
    if(is_valid = '0') then
      DataOut <= (others => '0');
    else
      case ram_block is
        when "000" =>
          wr_enable <= WrEn & "0000000";
          DataOut <= first_q;
        when "001" =>
          wr_enable <= "0" & WrEn & "000000";
          DataOut <= second_q;
        when "010" =>
          wr_enable <= "00" & WrEn & "00000";
          DataOut <= third_q;
        when "011" =>
          wr_enable <= "000" & WrEn & "0000";
          DataOut <= fourth_q;
        when "100" =>
          wr_enable <= "0000" & WrEn & "000";
          DataOut <= fifth_q;
        when "101" =>
          wr_enable <= "00000" & WrEn & "00"; 
          DataOut <= sixth_q;
        when "110" =>
          wr_enable <= "000000" & WrEn & "0"; 
          DataOut <= seventh_q;
        when "111" =>
          wr_enable <= "0000000" & WrEn; 
          DataOut <= eighth_q;
      end case; 
    end if;
  end if;
end process;
end rtl;