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
	
	component adder_with_module is
		port (
			 binOut : out std_logic_vector(3 downto 0);
			 seg : in std_logic_vector(6 downto 0);
			 module : in std_logic_vector(3 downto 0);
			 overflow : out std_logic
		  );
	end component;
	
	signal clk_hz : std_logic;
	signal overflow : std_logic;
	signal binOut : std_logic_vector(3 downto 0);
  
  -- Your code here!
begin
	
	clock_divider : clk_div port map (clk, clk_hz);
	
	hour_dec <= '1000000'; -- essa parte vai ser executada apenas uma vez??
	hour_un <= '1000000'; -- a ideia nao eh ficar zerando a todo momento, apenas começar zerado...
	min_dec <= '1000000';
	min_un <= '1000000';
	sec_dec <= '1000000';
	sec_un <= '1000000';
	
	process(clk)
	begin
		if clk'event and clk = '1' then
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
			
			clock_divider(clk, clk_hz); -- ver se isso ta certo, mas temos que chamar o clock_divider declarado fora do process
			
			-- a ideia desse if eh ir somando +1 em cascata do sec_un at´e o hour_dec
			if clk_hz = '1' then
				add_sec_un : adder_with_module port map (seg => sec_un, module => "1010", binOut => binOut, overflow => overflow);
				b2s_su : bin_to_7seg port map (binOut, sec_un);
				
				if overflow = '1' then
					add_sec_dec : adder_with_module port map (seg => sec_dec, module => "0110", binOut => binOut, overflow => overflow);
					b2s_sd : bin_to_7seg port map (binOut, sec_dec);
				end if;
				
				if overflow = '1' then
					add_min_un : adder_with_module port map (seg => min_un, module => "1010", binOut => binOut, overflow => overflow);
					b2s_mu : bin_to_7seg port map (binOut, min_un);
				end if;
				
				if overflow = '1' then
					add_min_dec : adder_with_module port map (seg => min_dec, module => "0110", binOut => binOut, overflow => overflow);
					b2s_md : bin_to_7seg port map (binOut, min_dec);
				end if;
				
				if overflow = '1' and hour_dec = "1111100" then
					add_hour_un1 : adder_with_module port map (seg => hour_un, module => "1010", binOut => binOut, overflow => overflow);
					b2s_hu1 : bin_to_7seg port map (binOut, hour_un);
				elsif overflow = '1' then
					add_hour_un2 : adder_with_module port map (seg => hour_un, module => "0100", binOut => binOut, overflow => overflow);
					b2s_hu2 : bin_to_7seg port map (binOut, hour_un);
				end if;
				
				if overflow = '1' then
					add_hour_dec : adder_with_module port map (seg => hour_dec, module => "0011", binOut => binOut, overflow => overflow);
					b2s_hd : bin_to_7seg port map (binOut, hour_dec);
				end if;
			end if;
			
		end if;
	end process;
end rtl;