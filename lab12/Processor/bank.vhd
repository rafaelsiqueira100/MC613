LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY Processor;
USE Processor.Processor_pack.reg;

ENTITY bank IS
	GENERIC (
		WORDSIZE : NATURAL := 32 -- Tamanho da palavra de dados
	);
	PORT (
		WR_EN : IN STD_LOGIC; -- Permissao de escrita (ativo em nivel alto)
		RD_EN : IN STD_LOGIC; -- Permissao de leitura (ativo em nivel alto)
		clear : IN STD_LOGIC; -- Limpar todos os registradores (ativo em nivel alto)
		clock : IN STD_LOGIC; -- Clock
		WR_ADDR : IN STD_LOGIC_VECTOR (4 DOWNTO 0); -- Registrador para escrita
		RD_ADDR1 : IN STD_LOGIC_VECTOR (4 DOWNTO 0); -- Registrador para leitura 1
		RD_ADDR2 : IN STD_LOGIC_VECTOR (4 DOWNTO 0); -- Registrador para leitura 2
		DATA_IN : IN STD_LOGIC_VECTOR (WORDSIZE-1 DOWNTO 0); -- Entrada de dados
		DATA_OUT1 : OUT STD_LOGIC_VECTOR (WORDSIZE-1 DOWNTO 0); -- Saida de dados 1
		DATA_OUT2 : OUT STD_LOGIC_VECTOR (WORDSIZE-1 DOWNTO 0) -- Saida de dados 2
	);
END ENTITY;

ARCHITECTURE Behavior OF bank IS
	--type t_reg_array is array (WORDSIZE-1 downto 0) of work.reg;
	--signal reg_array : t_reg_array;
	
	signal address1_idx, address2_idx : integer;
	signal registerToRead1: std_logic_vector(31 downto 0);
	signal registerToRead2: std_logic_vector(31 downto 0);
	signal registerToWrite : std_logic_vector(31 downto 0);
	signal data_out_aux: std_logic_vector((WORDSIZE * 31) -1 downto 0 );
BEGIN

	decoder5to32write: entity work.decoder5to32 port map (
		enable => '1', 
		data_in => WR_ADDR, 
		data_out => registerToWrite
	);
	decoder5to32read1: entity work.decoder5to32 port map (
		enable => '1', 
		data_in => RD_ADDR1, 
		data_out => registerToRead1
	);
	decoder5to32read2: entity work.decoder5to32 port map (
		enable => '1', 
		data_in => RD_ADDR2, 
		data_out => registerToRead2
	);
	-- Registradores R0_1 e R0_2
	
--	zbuffer_r0_1: entity work.zbuffer port map ( 
--		e => registerToRead1(0) and RD_EN,
--		x => (others => '0'),
--		f => DATA_OUT1
--	)
--	
--	zbuffer_r0_2: entity work.zbuffer port map ( 
--		e => registerToRead2(0) and RD_EN,
--		x => (others => '0'),
--		f => DATA_OUT2
--	)
	
	zbuffer_r0_2: entity work.zbuffer port map ( 
		e => registerToRead2(0) and RD_EN,
		x => (others => '0'),
		f => DATA_OUT2
	)
	
	createRegs: for i in 0 to WORDSIZE-1 generate
		r_i: entity work.reg port map(clock => clock, 
		load => WR_EN, clear => clear, datain => DATA_IN, dataout => DATA_OUT);
		
		zbuffer1_i : entity work.zbuffer port map (
			x => data_out_auxiliar(i * WORDSIZE - 1 downto (i - 1) * WORDSIZE),
			e => registerToRead1(i) and rd_en,
			f => DATA_OUT1
		);
		zbuffer2_i : entity work.zbuffer port map (
			x => data_out_auxiliar (i * WORDSIZE -1 downto (i-1) * WORDSIZE),
			e => registerToRead2(i) and rd_en,
			f => DATA_OUT2
		);
	end generate;
	
	process(clock)
	begin
	-- escrita ou clear
		if clock'event and clock = '1' then
			if clear = '1' then
				DATA_OUT1 <= (OTHERS => 'Z');
				DATA_OUT2 <= (OTHERS => 'Z');
				clearRegs: for i in 1 to WORDSIZE-1 loop
					--R0 sempre zero. Limpar todos os registradores
					r_i(clock => clock, load => WR_EN, clear => clear, 
						datain => (OTHERS => '0'), dataout => data_out_auxiliar(i * WORDSIZE -1 downto (i-1) * WORDSIZE));
				end loop;
			elsif WR_EN = '1' then
				decoder5to32write(
					enable => WR_EN, 
					data_in => WR_ADDR, 
					data_out => registerToWrite
				);
				-- Pular o R0 pois somente leitura
				writeToReg: for i in 1 to WORDSIZE-1 loop
					r_i(clock => clock, load => registerToWrite(i), clear => clear, 
						datain => DATA_IN, dataout => data_out_auxiliar(i * WORDSIZE -1 downto (i-1) * WORDSIZE));
				end loop;
			end if;
		end if;
		
		-- leitura dos registradores de maneira assincrona
		decoder5to32read1(
			enable => RD_EN, 
			data_in => RD_ADDR1, 
			data_out => registerToRead1
		);
		decoder5to32read2(
			enable => RD_EN, 
			data_in => RD_ADDR2, 
			data_out => registerToRead2
		);
		-- Permitir leitura do R0
		readFromReg: for i in 0 to WORDSIZE-1 loop
			r_i(clock => clock, load => registerToRead1(i), clear => clear, 
				datain => DATA_IN, dataout => DATA_OUT1);
			r_i(clock => clock, load => registerToRead2(i), clear => clear, 
				datain => DATA_IN, dataout => DATA_OUT2);
		end loop;
		
	end process;
END ARCHITECTURE;