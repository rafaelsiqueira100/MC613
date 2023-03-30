library ieee;
use ieee.std_logic_1164.all;

entity ripple_carry is
  generic (
    N : integer := 4
  );
  port (
    x,y : in std_logic_vector(N-1 downto 0);
    r : out std_logic_vector(N-1 downto 0);
    cin : in std_logic;
    cout : out std_logic;
    overflow : out std_logic
  );
end ripple_carry;

architecture rtl of ripple_carry is
	signal carry : std_logic_vector(N downto 0);
begin
  -- add your code
	carry(0) <= cin;
	RippleCarryAdder: for i in 0 to N-1 generate
		adder: entity work.full_adder port map (x => x(i), y => y(i), cin => carry(i), r => r(i), cout => carry(i+1));
	end generate;
	
	cout <= carry(N);
	overflow <= carry(N-1) XOR carry(N);
	
end rtl;
