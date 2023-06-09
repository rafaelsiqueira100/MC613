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
begin
ram_block1 : ram_block(Clock, address(9 downto 3), DataIn(31 downto 24), first_q, wr_enable(0));
ram_block1 : ram_block(Clock, address(9 downto 3), DataIn(23 downto 16), second_q, wr_enable(1));
ram_block1 : ram_block(Clock, address(9 downto 3), DataIn(15 downto 8), third_q, wr_enable(2));
ram_block1 : ram_block(Clock, address(9 downto 3), DataIn(7 downto 0), fourth_q, wr_enable(3));
ram_block1 : ram_block(Clock, address(9 downto 3), DataIn(31 downto 24), fifth_q, wr_enable(4));
ram_block1 : ram_block(Clock, address(9 downto 3), DataIn(23 downto 16), sixth_q, wr_enable(5));
ram_block1 : ram_block(Clock, address(9 downto 3), DataIn(15 downto 8), seventh_q, wr_enable(6));
ram_block1 : ram_block(Clock, address(9 downto 3), DataIn(7 downto 0), eighth_q, wr_enable(7));
process(Clock);
begin
  if Clock'event and Clock = '1' then
  begin 
    if address(0) = '0' then
      if(address(1) = '0') then
        if(address(2) = '0') then

        else
        end if;
      else
        if(address(2) = '0') then
        else
        end if;
      
      end if;
    else
      if(address(1) = '0') then
        if(address(2) = '0') then
        else
        end if;
      else
        if(address(2) = '0') then
          else
        end if;
        
      end if;
    
  end if;
end process;
end rtl;
