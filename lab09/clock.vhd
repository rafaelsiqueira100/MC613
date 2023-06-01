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
	signal overflow1, overflow2, overflow3, overflow4, overflow5, overflow6, overflow7 : std_logic;
	signal binOut, binOut1, binOut2, binOut3, binOut4, binOut5, binOut6, binOut7 : std_logic_vector(3 downto 0);
	signal current_hour_dec: std_logic_vector(6 downto 0);
	signal current_hour_un: std_logic_vector(6 downto 0);
	signal current_minute_dec: std_logic_vector(6 downto 0);
	signal current_minute_un: std_logic_vector(6 downto 0);
	signal current_second_dec: std_logic_vector(6 downto 0);
	signal current_second_un: std_logic_vector(6 downto 0);
	signal bin, bin_un, bin1, bin2, bin3, bin4, bin5, bin6, bin7: std_logic_vector(3 downto 0);
	signal segs, segs_un, segs1, segs2, segs3, segs4, segs5, segs6, segs7: std_logic_vector(6 downto 0);
	signal seg1, seg2, seg3, seg4, seg5, seg6, seg7: std_logic_vector(6 downto 0);
	signal module1, module2, module3, module4, module5, module6, module7: std_logic_vector(3 downto 0);
begin
	
	clock_divider : clk_div port map (clk, clk_hz);
	bin2dec : bin_to_7seg port map (bin, segs);
	bin2un: bin_to_7seg port map (bin_un, segs_un);
	
	add_sec_un: adder_with_module port map (binOut1,seg1, module1, overflow1);
	b2s_su: bin_to_7seg port map (bin1, segs1);
	add_sec_dec: adder_with_module port map (binOut <= binOut2,seg <= seg2,module <= module2,overflow <= overflow2);
	b2s_sd: bin_to_7seg port map (bin2, segs2);
	add_min_un: adder_with_module port map (binOut <= binOut3,seg <= seg3,module <= module3,overflow <= overflow3);
	b2s_mu: bin_to_7seg port map (bin3, segs3);
	add_min_dec: adder_with_module port map (binOut <= binOut4,seg <= seg4,module <= module4,overflow <= overflow4);
	b2s_md: bin_to_7seg port map (bin4, segs4);
	add_hour_un1: adder_with_module port map (binOut <= binOut5,seg <= seg5,module <= module5,overflow <= overflow5);
	b2s_hu1: bin_to_7seg port map (bin5, segs5);
	add_hour_un2: adder_with_module port map (binOut <= binOut6,seg <= seg6,module <= module6,overflow <= overflow6);
	b2s_hu2: bin_to_7seg port map (bin6, segs6);
	add_hour_dec: adder_with_module port map (binOut <= binOut7,seg <= seg7,module <= module7,overflow <= overflow7);
	b2s_hd: bin_to_7seg port map (bin7, segs7);
	
	current_hour_dec <= "1000000"; -- essa parte vai ser executada apenas uma vez??
	current_hour_un <= "1000000"; -- a ideia nao eh ficar zerando a todo momento, apenas começar zerado...
	current_minute_dec <= "1000000";
	current_minute_un <= "1000000";
	current_second_dec <= "1000000";
	current_second_un <= "1000000";
	overflow7 <= '0';
	process(clk)
	begin
		if clk'event and clk = '1' then
			if set_hour = '1' then
				bin <= decimal;
				segs <= current_hour_dec;
				bin_un <= unity;
				segs_un <= segs_un;
			elsif set_minute = '1' then
				bin<= decimal;
				segs <= current_minute_dec;
				bin_un <= unity;
				segs_un <= current_minute_un;
			elsif set_second = '1' then
				bin <= decimal;
				segs <= current_second_dec;
				bin_un <= unity;
				segs_un <= current_second_un;
			end if;
			
			--clock_divider(clk, clk_hz); -- ver se isso ta certo, mas temos que chamar o clock_divider declarado fora do process
			
			-- a ideia desse if eh ir somando +1 em cascata do sec_un at´e o hour_dec
			if clk_hz = '1' then
				--add_sec_un : adderWmodule(seg => current_second_un, module => "1010", binOut => binOut, overflow => overflow);
				binOut1 <= bin2;
				seg1 <=  current_second_un;
				module1 <= "1010";
				overflow1 <= overflow7;
				
				bin1 <= binOut;
				segs1 <=	current_second_un;
				
				if overflow1 = '1' then
					--add_sec_dec : adderWmodule(seg => current_second_dec, module => "0110", binOut => binOut, overflow => overflow);
					seg2 <= current_second_dec;
					module2 <= "0110";
					binOut2 <= bin1;
					overflow2<=overflow1;
					--b2s_sd : bin2seg(binOut, current_second_dec);
					bin2 <= binOut2;
					segs2 <= current_second_dec;
				end if;
				
				if overflow2 = '1' then
					--add_min_un : adderWmodule(seg => current_minute_un, module => "1010", binOut => binOut, overflow => overflow);
					seg3 <= current_minute_un;
					module3 <= "1010";
					binOut3 <= bin2;
					overflow3<=overflow2;
					--b2s_mu : bin2seg(binOut, current_minute_un);
					bin3 <= binOut3;
					segs3 <= current_minute_un;
				end if;
				
				if overflow3 = '1' then
					--add_min_dec : adderWmodule(seg => current_minute_dec, module => "0110", binOut => binOut, overflow => overflow);
					seg4 <= current_minute_dec;
					module4 <= "0110";
					binOut4 <= bin3;
					overflow4<=overflow3;
					--b2s_md : bin2seg(binOut, current_minute_dec);
					bin4 <= binOut4;
					segs4 <= current_minute_dec;
				end if;
				
				if overflow4 = '1' and current_hour_dec = "1111100" then
					--add_hour_un1 : adderWmodule(seg => current_hour_un, module => "1010", binOut => binOut, overflow => overflow);
					seg5 <= current_hour_un;
					module5 <= "1010";
					binOut5 <= bin4;
					overflow5<=overflow4;
					--b2s_hu1 : bin2seg (binOut, current_hour_un);
					bin5 <= binOut5;
					segs5 <= current_hour_un;
				elsif overflow5 = '1' then
					--add_hour_un2 : adderWmodule(seg => current_hour_un, module => "0100", binOut => binOut, overflow => overflow);
					seg6 <= current_hour_un;
					module6 <= "0100";
					binOut6 <= bin5;
					overflow6<=overflow5;
					
					--b2s_hu2 : bin2seg(binOut, current_hour_un);
					bin6 <= binOut6;
					segs6 <= current_hour_un;
				end if;
				
				if overflow6 = '1' then
					--add_hour_dec : adderWmodule(seg => current_hour_dec, module => "0011", binOut => binOut, overflow => overflow);
					seg7 <= current_hour_dec;
					module7 <= "0011";
					binOut7 <= bin6;
					overflow7<=overflow6;
					--b2s_hd : bin2seg(binOut, current_hour_dec);
					bin7 <= binOut7;
					segs7 <= current_hour_dec;
				end if;
			end if;
		 hour_dec <= current_hour_dec	;
		 hour_un <= current_hour_un	;
		 min_dec <= current_minute_dec	;
		 min_un <= current_minute_un	;
		 sec_dec <= current_second_dec	;
		 sec_un <= current_second_un	;
		end if;
	end process;
end rtl;