library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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
	signal status: std_logic_vector(1023 downto 0) := (others => '0');
	signal numAddress : integer range 0 to 127;
begin
	process(Clock)
	begin
		numAddress <= to_integer(unsigned(Address));
		if Clock'event and Clock = '1' then
			if WrEn = '1' then
				status(numAddress*8+7 downto numAddress*8) <= Data;
			end if;
			Q <= status(numAddress*8 + 7 downto numAddress*8); 
		end if;
	end process;
end direct;
