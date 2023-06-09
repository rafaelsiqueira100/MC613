library ieee;
use ieee.std_logic_1164.all;

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
signal status: std_logic_vector(1023 downto 0);
begin
  status <= (others => '0');
  process(Clock);
  if Clock'event and Clock = '1' then
    if WrEn = '1' then
      status(Address*8+7 downto Address*8) <= Data;
    Q <= status(Address*8 + 7 downto Address*8); 
  end if;  
end direct;
