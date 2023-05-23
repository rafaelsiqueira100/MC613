library ieee;
use ieee.std_logic_1164.all;

entity clock is
  port (
    clk : in std_logic;
    decimal : in std_logic_vector(3 downto 0);
    unity : in std_logic_vector(3 downto 0);
    set_hour : in std_logic;
    set_minute : in std_logic;
    set_second : in std_logic;
    hour_dec, hour_un : out std_logic_vector(6 downto 0);
    min_dec, min_un : out std_logic_vector(6 downto 0);
    sec_dec, sec_un : out std_logic_vector(6 downto 0)
  );
end clock;

architecture rtl of clock is
	component clk_div is
	 port (
		clk : in std_logic;
		clk_hz : out std_logic
	 );
	end component;
  
	component bin_to_7seg is
	  port (
		 bin : in std_logic_vector(3 downto 0);
		 segs : out std_logic_vector(6 downto 0)
	  );
	end component;
	
	signal clk_hz : std_logic;
  
  -- Your code here!
begin
	
	clock_divider : clk_div port map (clk, clk_hz);
	
	hour_dec <= '0000000'; // essa parte vai ser executada apenas uma vez??
	hour_un <= '0000000'; // a ideia nao eh ficar zerando a todo momento...
	min_dec <= '0000000';
	min_un <= '0000000';
	sec_dec <= '0000000';
	sec_un <= '0000000';
	
	process(clk)
	begin
		if set_hour then
			bin2seg_dec : bin_to_7seg port map (decimal, hour_dec);
			bin2seg_un : bin_to_7seg port map (unity, hour_un);
		elsif set_minute then
			bin2seg_dec : bin_to_7seg port map (decimal, min_dec);
			bin2seg_un : bin_to_7seg port map (unity, min_un);
		elsif set_second then
			bin2seg_dec : bin_to_7seg port map (decimal, sec_dec);
			bin2seg_un : bin_to_7seg port map (unity, sec_un);
		end if;
		
		// agora eh reutilizar o componente do clk_divider declarado acima
		// para fazer as interacoes com o clk de 0 a 49999999
	end process;
end rtl;