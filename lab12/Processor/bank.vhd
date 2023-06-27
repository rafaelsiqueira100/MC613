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
	type t_reg_array is array (WORDSIZE-1 downto 0) of work.reg;
	signal reg_array : t_reg_array;
	
	signal address1_idx, address2_idx : integer;
	signal registerToRead1: std_logic_vector(31 downto 0);
	signal registerToRead2: std_logic_vector(31 downto 0);
	signal registerToWrite : std_logic_vector(31 downto 0);
	signal data_out_aux: std_logic_vector((WORDSIZE * 31) -1 downto 0 );
BEGIN

	decoder5to32write: entity work.5to32 port map (
		enable => '1', 
		data_in => WR_ADDR, 
		data_out => registerToWrite
	);
	decoder5to32read1: entity work.5to32 port map (
		enable => '1', 
		data_in => RD_ADDR1, 
		data_out => registerToRead1
	);
	decoder5to32read2: entity work.5to32 port map (
		enable => '1', 
		data_in => RD_ADDR2, 
		data_out => registerToRead2
	);
	-- Registradores R0_1 e R0_2
	
	zbuffer_r0_1: entity work.zbuffer port map ( 
		e => ,
		x => (others => '0'),
		f => DATA_OUT1
	)
	
	zbuffer_r0_2: entity work.zbuffer port map ( 
		e => ,
		x => (others => '0'),
		f => DATA_OUT2
	)
	
	createRegs: for i in 0 to WORDSIZE-1 generate
		r_i: work.reg port map(clock => clock, 
		load => WR_EN, clear => clear, datain => DATA_IN, dataout => DATA_OUT);
	end generate;
	
	process(clock, RD_EN)
	begin
		if RD_EN = '1' then
			DATA_OUT1 <= 
			DATA_OUT2 <=
		end if;
		if clock'event and clock = '1' then
			if RD_EN = '0' then
				DATA_OUT1 <= (OTHERS => 'Z');
				DATA_OUT2 <= (OTHERS => 'Z');
			else if
				
			end if;
		end if;
		
	end process;
END ARCHITECTURE;