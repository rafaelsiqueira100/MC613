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
  
	component bin2dec is
	  port (
		 bin : in std_logic_vector(3 downto 0);
		 dec : out std_logic_vector(6 downto 0)
	  );
	end component;
	component multiplier is
		port(
			a : in std_logic_vector(3 downto 0);
			b : in std_logic_vector(3 downto 0);
			clk: in std_logic;
			set: in std_logic;
			r: out std_logic_vector(7 downto 0)
		);
	end component;
	component alu is
		port(
			a, b : in std_logic_vector(7 downto 0);
			set: in std_logic;
			clk : in std_logic;
			result : out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal clk_hz : std_logic;
	signal overflow1, overflow2, overflow3, overflow4, overflow5, overflow6, overflow7 : std_logic;
	signal binOut, binOut1, binOut2, binOut3, binOut4, binOut5, binOut6, binOut7 : std_logic_vector(3 downto 0);
	signal current_hour_dec: std_logic_vector(7 downto 0);
	signal current_hour_un: std_logic_vector(7 downto 0);
	signal current_minute_dec: std_logic_vector(7 downto 0);
	signal current_minute_un: std_logic_vector(7 downto 0);
	signal current_second_dec: std_logic_vector(7 downto 0);
	signal current_second_un: std_logic_vector(7 downto 0);
	signal bin, bin_un, bin1, bin2, bin3, bin4, bin5, bin6, bin7: std_logic_vector(3 downto 0);
	signal segs, segs_un, segs1, segs2, segs3, segs4, segs5, segs6, segs7: std_logic_vector(6 downto 0);
	signal seg1, seg2, seg3, seg4, seg5, seg6, seg7: std_logic_vector(6 downto 0);
	signal module1, module2, module3, module4, module5, module6, module7: std_logic_vector(3 downto 0);
	signal hour_un_inc, hour_dec_inc, minute_dec_inc, minute_un_inc, second_dec_inc: std_logic_vector(7 downto 0);
	signal produto: std_logic_vector(7 downto 0);
	signal soma: std_logic_vector(7 downto 0);
	signal unity_8bits, decimal_8bits: std_logic_vector(7 downto 0);
begin
	
	clock_divider : clk_div port map (clk, clk_hz);
	multiplier_dec : multiplier port map (decimal, "1010", clk, '1', produto);
	somador : alu port map (produto, unity_8bits, '1', clk, soma);
	
	somador_hour_dec: alu port map (current_hour_dec, unity_8bits, '1', clk, hour_dec_inc);
	somador_hour_un: alu port map (current_hour_un, unity_8bits, '1', clk, hour_un_inc);
	somador_minute_dec: alu port map (current_minute_dec, unity_8bits, '1', clk, minute_dec_inc);
	somador_minute_un: alu port map (current_minute_un, unity_8bits, '1', clk, minute_un_inc);
	somador_second_dec: alu port map (current_second_dec, unity_8bits, '1', clk, second_dec_inc);
	
	
	process(clk_hz)-- talvez seja clk_hz
	variable temporary_time: std_logic_vector (7 downto 0);
	begin
		if current_hour_dec(0) = 'U' then
			current_hour_dec <= "00000000"; -- essa parte vai ser executada apenas uma vez??
			current_hour_un <= "00000000"; -- a ideia nao eh ficar zerando a todo momento, apenas começar zerado...
			current_minute_dec <= "00000000";
			current_minute_un <= "00000000";
			current_second_dec <= "00000000";
			current_second_un <= "00000000";
		end if;
		if clk_hz'event and clk_hz = '1' then
			unity_8bits <= unity & "0000";
			decimal_8bits <= decimal & "0000";
			temporary_time := soma;
			if set_hour = '1' then
				if temporary_time < "00011000" then
					current_hour_dec <= decimal_8bits;
					current_hour_un <= unity_8bits;
				end if;
			end if;
			if set_minute = '1' then
				if temporary_time < "00011000" then
					current_minute_dec <= decimal_8bits;
					current_minute_un <= unity_8bits;
				end if;
			end if;
			if set_second = '1' then
				if temporary_time < "00011000" then
					current_second_dec <= decimal_8bits;
					current_second_un <= unity_8bits;
				end if;
			end if;
			
			--clock_divider(clk, clk_hz); -- ver se isso ta certo, mas temos que chamar o clock_divider declarado fora do process
			
			-- a ideia desse if eh ir somando +1 em cascata do sec_un at´e o hour_dec
			if clk_hz = '1' then
				--add_sec_un : adderWmodule(seg => current_second_un, module => "1010", binOut => binOut, overflow => overflow);
				if current_second_un = "1001" then
					current_second_un <= "0000";
					if current_second_dec = "0101" then
						current_second_dec <= "0000";
						if current_minute_un = "1001" then
							current_minute_un <= "0000";
							if current_minute_dec = "0101" then
								current_minute_dec <= "0000";
								if current_hour_un = "1001" then
									current_hour_un <= "0000";
									current_hour_dec <= hour_dec_inc(6 downto 0);
								elsif current_hour_dec = "0010" and current_hour_un = "0011" then
									current_hour_un <= "0000";
									current_hour_dec <= "0000";
								else
									current_hour_un <= hour_un_inc(6 downto 0);
								end if;
							else
								current_minute_dec <= minute_dec_inc(6 downto 0);
							end if;
						else
							current_minute_un <= minute_un_inc(6 downto 0);
						end if;
					else
						current_second_dec <= second_dec_inc(6 downto 0);
					end if;
				end if;
			end if;
		end if;
		end process;
		bin_to_dec_hour_un: bin2dec port map (current_hour_un(3 downto 0), hour_un);
		bin_to_dec_hour_dec: bin2dec port map (current_hour_dec(3 downto 0), hour_dec);
		bin_to_dec_minute_un: bin2dec port map (current_minute_un(3 downto 0), min_un);
		bin_to_dec_minute_dec: bin2dec port map (current_minute_dec(3 downto 0), min_dec);
		bin_to_dec_second_un: bin2dec port map (current_second_un(3 downto 0), sec_un);
		bin_to_dec_second_dec: bin2dec port map (current_second_dec(3 downto 0), sec_dec);		
end rtl;