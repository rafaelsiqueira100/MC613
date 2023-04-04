-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/04/2023 14:25:28"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ripple_carry_board IS
    PORT (
	SW : IN std_logic_vector(7 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(0 DOWNTO 0)
	);
END ripple_carry_board;

-- Design Ports Information
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ripple_carry_board IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \hex4creator|hex[0]~0_combout\ : std_logic;
SIGNAL \hex4creator|hex[1]~1_combout\ : std_logic;
SIGNAL \hex4creator|hex[2]~2_combout\ : std_logic;
SIGNAL \hex4creator|hex[3]~3_combout\ : std_logic;
SIGNAL \hex4creator|hex[4]~4_combout\ : std_logic;
SIGNAL \hex4creator|hex[5]~5_combout\ : std_logic;
SIGNAL \hex4creator|hex[6]~6_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \hex2creator|hex[0]~0_combout\ : std_logic;
SIGNAL \hex2creator|hex[1]~1_combout\ : std_logic;
SIGNAL \hex2creator|hex[2]~2_combout\ : std_logic;
SIGNAL \hex2creator|hex[3]~3_combout\ : std_logic;
SIGNAL \hex2creator|hex[4]~4_combout\ : std_logic;
SIGNAL \hex2creator|hex[5]~5_combout\ : std_logic;
SIGNAL \hex2creator|hex[6]~6_combout\ : std_logic;
SIGNAL \adder|RippleCarryAdder:1:adder|cout~0_combout\ : std_logic;
SIGNAL \adder|RippleCarryAdder:3:adder|r~0_combout\ : std_logic;
SIGNAL \adder|RippleCarryAdder:0:adder|r~0_combout\ : std_logic;
SIGNAL \adder|RippleCarryAdder:1:adder|r~combout\ : std_logic;
SIGNAL \hex0creator|hex[0]~0_combout\ : std_logic;
SIGNAL \hex0creator|hex[1]~1_combout\ : std_logic;
SIGNAL \hex0creator|hex[2]~2_combout\ : std_logic;
SIGNAL \hex0creator|hex[3]~3_combout\ : std_logic;
SIGNAL \hex0creator|hex[4]~4_combout\ : std_logic;
SIGNAL \hex0creator|hex[5]~5_combout\ : std_logic;
SIGNAL \hex0creator|hex[6]~6_combout\ : std_logic;
SIGNAL \adder|overflow~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \adder|RippleCarryAdder:3:adder|ALT_INV_r~0_combout\ : std_logic;
SIGNAL \adder|RippleCarryAdder:1:adder|ALT_INV_r~combout\ : std_logic;
SIGNAL \adder|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \adder|RippleCarryAdder:0:adder|ALT_INV_r~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX4 <= ww_HEX4;
HEX2 <= ww_HEX2;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\adder|RippleCarryAdder:3:adder|ALT_INV_r~0_combout\ <= NOT \adder|RippleCarryAdder:3:adder|r~0_combout\;
\adder|RippleCarryAdder:1:adder|ALT_INV_r~combout\ <= NOT \adder|RippleCarryAdder:1:adder|r~combout\;
\adder|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\ <= NOT \adder|RippleCarryAdder:1:adder|cout~0_combout\;
\adder|RippleCarryAdder:0:adder|ALT_INV_r~0_combout\ <= NOT \adder|RippleCarryAdder:0:adder|r~0_combout\;

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4creator|hex[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4creator|hex[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4creator|hex[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4creator|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4creator|hex[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4creator|hex[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4creator|hex[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2creator|hex[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2creator|hex[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2creator|hex[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2creator|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2creator|hex[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2creator|hex[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2creator|hex[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0creator|hex[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0creator|hex[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0creator|hex[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0creator|hex[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0creator|hex[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0creator|hex[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0creator|hex[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|overflow~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: MLABCELL_X84_Y12_N30
\hex4creator|hex[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4creator|hex[0]~0_combout\ = ( \SW[6]~input_o\ & ( (!\SW[7]~input_o\ $ (!\SW[4]~input_o\)) # (\SW[5]~input_o\) ) ) # ( !\SW[6]~input_o\ & ( (!\SW[4]~input_o\) # (!\SW[7]~input_o\ $ (!\SW[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111100111111110011110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \hex4creator|hex[0]~0_combout\);

-- Location: MLABCELL_X84_Y12_N33
\hex4creator|hex[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4creator|hex[1]~1_combout\ = (!\SW[5]~input_o\ & ((!\SW[6]~input_o\) # (!\SW[7]~input_o\ $ (\SW[4]~input_o\)))) # (\SW[5]~input_o\ & ((!\SW[4]~input_o\ & ((!\SW[6]~input_o\))) # (\SW[4]~input_o\ & (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011100110111110001110011011111000111001101111100011100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	combout => \hex4creator|hex[1]~1_combout\);

-- Location: MLABCELL_X84_Y12_N36
\hex4creator|hex[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4creator|hex[2]~2_combout\ = ( \SW[6]~input_o\ & ( (!\SW[7]~input_o\) # ((!\SW[5]~input_o\ & \SW[4]~input_o\)) ) ) # ( !\SW[6]~input_o\ & ( ((!\SW[5]~input_o\) # (\SW[4]~input_o\)) # (\SW[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111111100111111111111001100111111001100110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \hex4creator|hex[2]~2_combout\);

-- Location: MLABCELL_X84_Y12_N39
\hex4creator|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4creator|hex[3]~3_combout\ = (!\SW[5]~input_o\ & ((!\SW[6]~input_o\ $ (\SW[4]~input_o\)) # (\SW[7]~input_o\))) # (\SW[5]~input_o\ & ((!\SW[6]~input_o\ & ((!\SW[7]~input_o\) # (\SW[4]~input_o\))) # (\SW[6]~input_o\ & ((!\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110011101111010111001110111101011100111011110101110011101111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	combout => \hex4creator|hex[3]~3_combout\);

-- Location: MLABCELL_X84_Y12_N12
\hex4creator|hex[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4creator|hex[4]~4_combout\ = ( \SW[6]~input_o\ & ( ((\SW[5]~input_o\ & !\SW[4]~input_o\)) # (\SW[7]~input_o\) ) ) # ( !\SW[6]~input_o\ & ( (!\SW[4]~input_o\) # ((\SW[7]~input_o\ & \SW[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000011111111110000001100111111001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \hex4creator|hex[4]~4_combout\);

-- Location: MLABCELL_X84_Y12_N15
\hex4creator|hex[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4creator|hex[5]~5_combout\ = (!\SW[5]~input_o\ & ((!\SW[4]~input_o\) # (!\SW[7]~input_o\ $ (!\SW[6]~input_o\)))) # (\SW[5]~input_o\ & (((\SW[6]~input_o\ & !\SW[4]~input_o\)) # (\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111100111001101111110011100110111111001110011011111100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	combout => \hex4creator|hex[5]~5_combout\);

-- Location: MLABCELL_X84_Y12_N18
\hex4creator|hex[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4creator|hex[6]~6_combout\ = ( \SW[6]~input_o\ & ( (!\SW[4]~input_o\ & ((!\SW[7]~input_o\) # (\SW[5]~input_o\))) # (\SW[4]~input_o\ & ((!\SW[5]~input_o\) # (\SW[7]~input_o\))) ) ) # ( !\SW[6]~input_o\ & ( (\SW[7]~input_o\) # (\SW[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111010010111111111101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \hex4creator|hex[6]~6_combout\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X88_Y10_N30
\hex2creator|hex[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2creator|hex[0]~0_combout\ = ( \SW[2]~input_o\ & ( \SW[1]~input_o\ ) ) # ( !\SW[2]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\) # (!\SW[3]~input_o\) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( !\SW[0]~input_o\ $ (!\SW[3]~input_o\) ) ) ) 
-- # ( !\SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[0]~input_o\) # (\SW[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111001111000011110011111100111111001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \hex2creator|hex[0]~0_combout\);

-- Location: LABCELL_X88_Y10_N9
\hex2creator|hex[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2creator|hex[1]~1_combout\ = ( \SW[2]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[3]~input_o\ & \SW[0]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[3]~input_o\) # (!\SW[0]~input_o\) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( 
-- !\SW[3]~input_o\ $ (\SW[0]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101001011010010111111010111110100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \hex2creator|hex[1]~1_combout\);

-- Location: LABCELL_X88_Y10_N12
\hex2creator|hex[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2creator|hex[2]~2_combout\ = ( \SW[2]~input_o\ & ( \SW[1]~input_o\ & ( !\SW[3]~input_o\ ) ) ) # ( !\SW[2]~input_o\ & ( \SW[1]~input_o\ & ( (\SW[3]~input_o\) # (\SW[0]~input_o\) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[3]~input_o\) # 
-- (\SW[0]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100111111001100111111001111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \hex2creator|hex[2]~2_combout\);

-- Location: LABCELL_X88_Y10_N51
\hex2creator|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2creator|hex[3]~3_combout\ = ( \SW[2]~input_o\ & ( \SW[1]~input_o\ & ( !\SW[0]~input_o\ ) ) ) # ( !\SW[2]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[3]~input_o\) # (\SW[0]~input_o\) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[0]~input_o\) # 
-- (\SW[3]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[0]~input_o\) # (\SW[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101010111110101111110101111101011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \hex2creator|hex[3]~3_combout\);

-- Location: LABCELL_X88_Y10_N54
\hex2creator|hex[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2creator|hex[4]~4_combout\ = ( \SW[2]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\) # (\SW[3]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\) # (\SW[3]~input_o\) ) ) ) # ( \SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( 
-- \SW[3]~input_o\ ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( !\SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000011110000111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \hex2creator|hex[4]~4_combout\);

-- Location: LABCELL_X88_Y10_N3
\hex2creator|hex[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2creator|hex[5]~5_combout\ = ( \SW[2]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\) # (\SW[3]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( \SW[1]~input_o\ & ( \SW[3]~input_o\ ) ) ) # ( \SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[3]~input_o\) # 
-- (!\SW[0]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[0]~input_o\) # (\SW[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111110101111101001010101010101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \hex2creator|hex[5]~5_combout\);

-- Location: LABCELL_X88_Y10_N36
\hex2creator|hex[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2creator|hex[6]~6_combout\ = ( \SW[2]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\) # (\SW[3]~input_o\) ) ) ) # ( !\SW[2]~input_o\ & ( \SW[1]~input_o\ ) ) # ( \SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[3]~input_o\) # (\SW[0]~input_o\) ) ) ) 
-- # ( !\SW[2]~input_o\ & ( !\SW[1]~input_o\ & ( \SW[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100111111001111111111111111111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \hex2creator|hex[6]~6_combout\);

-- Location: MLABCELL_X84_Y12_N54
\adder|RippleCarryAdder:1:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|RippleCarryAdder:1:adder|cout~0_combout\ = (!\SW[1]~input_o\ & (\SW[4]~input_o\ & (\SW[0]~input_o\ & \SW[5]~input_o\))) # (\SW[1]~input_o\ & (((\SW[4]~input_o\ & \SW[0]~input_o\)) # (\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111100000001000111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	combout => \adder|RippleCarryAdder:1:adder|cout~0_combout\);

-- Location: MLABCELL_X84_Y12_N0
\adder|RippleCarryAdder:3:adder|r~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|RippleCarryAdder:3:adder|r~0_combout\ = !\SW[3]~input_o\ $ (!\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	combout => \adder|RippleCarryAdder:3:adder|r~0_combout\);

-- Location: MLABCELL_X84_Y12_N57
\adder|RippleCarryAdder:0:adder|r~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|RippleCarryAdder:0:adder|r~0_combout\ = !\SW[4]~input_o\ $ (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	combout => \adder|RippleCarryAdder:0:adder|r~0_combout\);

-- Location: MLABCELL_X84_Y12_N21
\adder|RippleCarryAdder:1:adder|r\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|RippleCarryAdder:1:adder|r~combout\ = ( \SW[1]~input_o\ & ( !\SW[5]~input_o\ $ (((\SW[4]~input_o\ & \SW[0]~input_o\))) ) ) # ( !\SW[1]~input_o\ & ( !\SW[5]~input_o\ $ (((!\SW[4]~input_o\) # (!\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101011111010000001011111101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \adder|RippleCarryAdder:1:adder|r~combout\);

-- Location: MLABCELL_X84_Y12_N6
\hex0creator|hex[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0creator|hex[0]~0_combout\ = ( \adder|RippleCarryAdder:0:adder|r~0_combout\ & ( \adder|RippleCarryAdder:1:adder|r~combout\ & ( (!\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\SW[6]~input_o\ & ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # 
-- (\SW[2]~input_o\))) # (\SW[6]~input_o\ & ((!\SW[2]~input_o\) # (\adder|RippleCarryAdder:3:adder|r~0_combout\))))) # (\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\SW[6]~input_o\ $ (\SW[2]~input_o\)) # 
-- (\adder|RippleCarryAdder:3:adder|r~0_combout\))) ) ) ) # ( !\adder|RippleCarryAdder:0:adder|r~0_combout\ & ( \adder|RippleCarryAdder:1:adder|r~combout\ ) ) # ( \adder|RippleCarryAdder:0:adder|r~0_combout\ & ( !\adder|RippleCarryAdder:1:adder|r~combout\ & 
-- ( !\adder|RippleCarryAdder:3:adder|r~0_combout\ $ (((!\adder|RippleCarryAdder:1:adder|cout~0_combout\ & (!\SW[6]~input_o\ & !\SW[2]~input_o\)) # (\adder|RippleCarryAdder:1:adder|cout~0_combout\ & (\SW[6]~input_o\ & \SW[2]~input_o\)))) ) ) ) # ( 
-- !\adder|RippleCarryAdder:0:adder|r~0_combout\ & ( !\adder|RippleCarryAdder:1:adder|r~combout\ & ( (!\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\SW[6]~input_o\ $ (\SW[2]~input_o\)) # (\adder|RippleCarryAdder:3:adder|r~0_combout\))) # 
-- (\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\SW[6]~input_o\ & ((\SW[2]~input_o\) # (\adder|RippleCarryAdder:3:adder|r~0_combout\))) # (\SW[6]~input_o\ & ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (!\SW[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111101111110011110001110000111111111111111111110011110011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \adder|RippleCarryAdder:3:adder|ALT_INV_r~0_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \adder|RippleCarryAdder:0:adder|ALT_INV_r~0_combout\,
	dataf => \adder|RippleCarryAdder:1:adder|ALT_INV_r~combout\,
	combout => \hex0creator|hex[0]~0_combout\);

-- Location: MLABCELL_X84_Y12_N42
\hex0creator|hex[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0creator|hex[1]~1_combout\ = ( \adder|RippleCarryAdder:0:adder|r~0_combout\ & ( \adder|RippleCarryAdder:1:adder|r~combout\ & ( !\adder|RippleCarryAdder:3:adder|r~0_combout\ $ (((!\adder|RippleCarryAdder:1:adder|cout~0_combout\ & (\SW[6]~input_o\ & 
-- \SW[2]~input_o\)) # (\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((\SW[2]~input_o\) # (\SW[6]~input_o\))))) ) ) ) # ( !\adder|RippleCarryAdder:0:adder|r~0_combout\ & ( \adder|RippleCarryAdder:1:adder|r~combout\ & ( 
-- !\adder|RippleCarryAdder:1:adder|cout~0_combout\ $ (!\SW[6]~input_o\ $ (!\SW[2]~input_o\)) ) ) ) # ( \adder|RippleCarryAdder:0:adder|r~0_combout\ & ( !\adder|RippleCarryAdder:1:adder|r~combout\ & ( (!\adder|RippleCarryAdder:1:adder|cout~0_combout\ & 
-- ((!\SW[6]~input_o\ $ (\SW[2]~input_o\)) # (\adder|RippleCarryAdder:3:adder|r~0_combout\))) # (\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\SW[6]~input_o\ & ((\SW[2]~input_o\) # (\adder|RippleCarryAdder:3:adder|r~0_combout\))) # (\SW[6]~input_o\ & 
-- ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (!\SW[2]~input_o\))))) ) ) ) # ( !\adder|RippleCarryAdder:0:adder|r~0_combout\ & ( !\adder|RippleCarryAdder:1:adder|r~combout\ & ( (!\adder|RippleCarryAdder:1:adder|cout~0_combout\ & 
-- ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (!\SW[6]~input_o\ $ (\SW[2]~input_o\)))) # (\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\SW[6]~input_o\ & ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (\SW[2]~input_o\))) # (\SW[6]~input_o\ 
-- & ((!\SW[2]~input_o\) # (\adder|RippleCarryAdder:3:adder|r~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111100111100111110111111010011001011001101110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \adder|RippleCarryAdder:3:adder|ALT_INV_r~0_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \adder|RippleCarryAdder:0:adder|ALT_INV_r~0_combout\,
	dataf => \adder|RippleCarryAdder:1:adder|ALT_INV_r~combout\,
	combout => \hex0creator|hex[1]~1_combout\);

-- Location: MLABCELL_X84_Y12_N48
\hex0creator|hex[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0creator|hex[2]~2_combout\ = ( \adder|RippleCarryAdder:0:adder|r~0_combout\ & ( \adder|RippleCarryAdder:1:adder|r~combout\ & ( (!\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (!\SW[6]~input_o\ $ 
-- (\SW[2]~input_o\)))) # (\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\SW[6]~input_o\ & ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (\SW[2]~input_o\))) # (\SW[6]~input_o\ & ((!\SW[2]~input_o\) # 
-- (\adder|RippleCarryAdder:3:adder|r~0_combout\))))) ) ) ) # ( !\adder|RippleCarryAdder:0:adder|r~0_combout\ & ( \adder|RippleCarryAdder:1:adder|r~combout\ & ( !\adder|RippleCarryAdder:3:adder|r~0_combout\ $ 
-- (((!\adder|RippleCarryAdder:1:adder|cout~0_combout\ & (!\SW[6]~input_o\ & !\SW[2]~input_o\)) # (\adder|RippleCarryAdder:1:adder|cout~0_combout\ & (\SW[6]~input_o\ & \SW[2]~input_o\)))) ) ) ) # ( \adder|RippleCarryAdder:0:adder|r~0_combout\ & ( 
-- !\adder|RippleCarryAdder:1:adder|r~combout\ ) ) # ( !\adder|RippleCarryAdder:0:adder|r~0_combout\ & ( !\adder|RippleCarryAdder:1:adder|r~combout\ & ( (!\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # 
-- (!\SW[6]~input_o\ $ (\SW[2]~input_o\)))) # (\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\SW[6]~input_o\ & ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (\SW[2]~input_o\))) # (\SW[6]~input_o\ & ((!\SW[2]~input_o\) # 
-- (\adder|RippleCarryAdder:3:adder|r~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100111100111111111111111111101111000111000011111100111100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \adder|RippleCarryAdder:3:adder|ALT_INV_r~0_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \adder|RippleCarryAdder:0:adder|ALT_INV_r~0_combout\,
	dataf => \adder|RippleCarryAdder:1:adder|ALT_INV_r~combout\,
	combout => \hex0creator|hex[2]~2_combout\);

-- Location: MLABCELL_X84_Y12_N24
\hex0creator|hex[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0creator|hex[3]~3_combout\ = ( \adder|RippleCarryAdder:0:adder|r~0_combout\ & ( \adder|RippleCarryAdder:1:adder|r~combout\ & ( !\adder|RippleCarryAdder:1:adder|cout~0_combout\ $ (!\SW[6]~input_o\ $ (!\SW[2]~input_o\)) ) ) ) # ( 
-- !\adder|RippleCarryAdder:0:adder|r~0_combout\ & ( \adder|RippleCarryAdder:1:adder|r~combout\ & ( (!\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\SW[6]~input_o\ & ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (\SW[2]~input_o\))) # 
-- (\SW[6]~input_o\ & ((!\SW[2]~input_o\) # (\adder|RippleCarryAdder:3:adder|r~0_combout\))))) # (\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\SW[6]~input_o\ $ (\SW[2]~input_o\)) # (\adder|RippleCarryAdder:3:adder|r~0_combout\))) ) ) ) # ( 
-- \adder|RippleCarryAdder:0:adder|r~0_combout\ & ( !\adder|RippleCarryAdder:1:adder|r~combout\ & ( (!\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\SW[6]~input_o\ & ((\SW[2]~input_o\) # (\adder|RippleCarryAdder:3:adder|r~0_combout\))) # 
-- (\SW[6]~input_o\ & ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (!\SW[2]~input_o\))))) # (\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (!\SW[6]~input_o\ $ (\SW[2]~input_o\)))) ) ) ) # ( 
-- !\adder|RippleCarryAdder:0:adder|r~0_combout\ & ( !\adder|RippleCarryAdder:1:adder|r~combout\ & ( (!\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\SW[6]~input_o\ $ (\SW[2]~input_o\)) # (\adder|RippleCarryAdder:3:adder|r~0_combout\))) # 
-- (\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ((!\SW[6]~input_o\ & ((\SW[2]~input_o\) # (\adder|RippleCarryAdder:3:adder|r~0_combout\))) # (\SW[6]~input_o\ & ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (!\SW[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111101111110011111101111100111100111100111111001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \adder|RippleCarryAdder:3:adder|ALT_INV_r~0_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \adder|RippleCarryAdder:0:adder|ALT_INV_r~0_combout\,
	dataf => \adder|RippleCarryAdder:1:adder|ALT_INV_r~combout\,
	combout => \hex0creator|hex[3]~3_combout\);

-- Location: LABCELL_X88_Y10_N42
\hex0creator|hex[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0creator|hex[4]~4_combout\ = ( \SW[2]~input_o\ & ( \adder|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\adder|RippleCarryAdder:1:adder|r~combout\ & ((!\SW[6]~input_o\ & (!\adder|RippleCarryAdder:0:adder|r~0_combout\)) # (\SW[6]~input_o\ & 
-- ((!\adder|RippleCarryAdder:3:adder|r~0_combout\))))) # (\adder|RippleCarryAdder:1:adder|r~combout\ & ((!\adder|RippleCarryAdder:0:adder|r~0_combout\) # ((!\adder|RippleCarryAdder:3:adder|r~0_combout\)))) ) ) ) # ( !\SW[2]~input_o\ & ( 
-- \adder|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\SW[6]~input_o\ & (((!\adder|RippleCarryAdder:0:adder|r~0_combout\ & \adder|RippleCarryAdder:1:adder|r~combout\)) # (\adder|RippleCarryAdder:3:adder|r~0_combout\))) # (\SW[6]~input_o\ & 
-- ((!\adder|RippleCarryAdder:0:adder|r~0_combout\) # ((!\adder|RippleCarryAdder:3:adder|r~0_combout\ & \adder|RippleCarryAdder:1:adder|r~combout\)))) ) ) ) # ( \SW[2]~input_o\ & ( !\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\SW[6]~input_o\ & 
-- (((!\adder|RippleCarryAdder:0:adder|r~0_combout\ & \adder|RippleCarryAdder:1:adder|r~combout\)) # (\adder|RippleCarryAdder:3:adder|r~0_combout\))) # (\SW[6]~input_o\ & ((!\adder|RippleCarryAdder:0:adder|r~0_combout\) # 
-- ((!\adder|RippleCarryAdder:3:adder|r~0_combout\ & \adder|RippleCarryAdder:1:adder|r~combout\)))) ) ) ) # ( !\SW[2]~input_o\ & ( !\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\adder|RippleCarryAdder:1:adder|r~combout\ & ((!\SW[6]~input_o\ & 
-- (!\adder|RippleCarryAdder:0:adder|r~0_combout\)) # (\SW[6]~input_o\ & ((\adder|RippleCarryAdder:3:adder|r~0_combout\))))) # (\adder|RippleCarryAdder:1:adder|r~combout\ & ((!\adder|RippleCarryAdder:0:adder|r~0_combout\) # 
-- ((\adder|RippleCarryAdder:3:adder|r~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101110101111001011101011111000101110101111101011100011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|RippleCarryAdder:0:adder|ALT_INV_r~0_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \adder|RippleCarryAdder:3:adder|ALT_INV_r~0_combout\,
	datad => \adder|RippleCarryAdder:1:adder|ALT_INV_r~combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \adder|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\,
	combout => \hex0creator|hex[4]~4_combout\);

-- Location: LABCELL_X88_Y10_N18
\hex0creator|hex[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0creator|hex[5]~5_combout\ = ( \SW[2]~input_o\ & ( \adder|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\adder|RippleCarryAdder:0:adder|r~0_combout\ & (((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (!\adder|RippleCarryAdder:1:adder|r~combout\)) 
-- # (\SW[6]~input_o\))) # (\adder|RippleCarryAdder:0:adder|r~0_combout\ & (!\adder|RippleCarryAdder:3:adder|r~0_combout\ $ (((\SW[6]~input_o\ & !\adder|RippleCarryAdder:1:adder|r~combout\))))) ) ) ) # ( !\SW[2]~input_o\ & ( 
-- \adder|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\adder|RippleCarryAdder:0:adder|r~0_combout\ & ((!\SW[6]~input_o\) # ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (!\adder|RippleCarryAdder:1:adder|r~combout\)))) # 
-- (\adder|RippleCarryAdder:0:adder|r~0_combout\ & (!\adder|RippleCarryAdder:3:adder|r~0_combout\ $ (((!\SW[6]~input_o\ & \adder|RippleCarryAdder:1:adder|r~combout\))))) ) ) ) # ( \SW[2]~input_o\ & ( !\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ( 
-- (!\adder|RippleCarryAdder:0:adder|r~0_combout\ & ((!\SW[6]~input_o\) # ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (!\adder|RippleCarryAdder:1:adder|r~combout\)))) # (\adder|RippleCarryAdder:0:adder|r~0_combout\ & 
-- (!\adder|RippleCarryAdder:3:adder|r~0_combout\ $ (((!\SW[6]~input_o\ & \adder|RippleCarryAdder:1:adder|r~combout\))))) ) ) ) # ( !\SW[2]~input_o\ & ( !\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\adder|RippleCarryAdder:0:adder|r~0_combout\ & 
-- (((!\adder|RippleCarryAdder:1:adder|r~combout\) # (\adder|RippleCarryAdder:3:adder|r~0_combout\)) # (\SW[6]~input_o\))) # (\adder|RippleCarryAdder:0:adder|r~0_combout\ & (!\adder|RippleCarryAdder:3:adder|r~0_combout\ $ (((!\SW[6]~input_o\) # 
-- (\adder|RippleCarryAdder:1:adder|r~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111000101111111110101011110011111010101111001110101111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|RippleCarryAdder:0:adder|ALT_INV_r~0_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \adder|RippleCarryAdder:3:adder|ALT_INV_r~0_combout\,
	datad => \adder|RippleCarryAdder:1:adder|ALT_INV_r~combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \adder|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\,
	combout => \hex0creator|hex[5]~5_combout\);

-- Location: LABCELL_X88_Y10_N24
\hex0creator|hex[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0creator|hex[6]~6_combout\ = ( \SW[2]~input_o\ & ( \adder|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\adder|RippleCarryAdder:0:adder|r~0_combout\ & ((!\SW[6]~input_o\ $ (\adder|RippleCarryAdder:3:adder|r~0_combout\)) # 
-- (\adder|RippleCarryAdder:1:adder|r~combout\))) # (\adder|RippleCarryAdder:0:adder|r~0_combout\ & ((!\adder|RippleCarryAdder:3:adder|r~0_combout\) # (!\SW[6]~input_o\ $ (!\adder|RippleCarryAdder:1:adder|r~combout\)))) ) ) ) # ( !\SW[2]~input_o\ & ( 
-- \adder|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\adder|RippleCarryAdder:3:adder|r~0_combout\ & ((!\adder|RippleCarryAdder:0:adder|r~0_combout\) # ((!\adder|RippleCarryAdder:1:adder|r~combout\) # (\SW[6]~input_o\)))) # 
-- (\adder|RippleCarryAdder:3:adder|r~0_combout\ & (((\adder|RippleCarryAdder:0:adder|r~0_combout\ & !\SW[6]~input_o\)) # (\adder|RippleCarryAdder:1:adder|r~combout\))) ) ) ) # ( \SW[2]~input_o\ & ( !\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ( 
-- (!\adder|RippleCarryAdder:3:adder|r~0_combout\ & ((!\adder|RippleCarryAdder:0:adder|r~0_combout\) # ((!\adder|RippleCarryAdder:1:adder|r~combout\) # (\SW[6]~input_o\)))) # (\adder|RippleCarryAdder:3:adder|r~0_combout\ & 
-- (((\adder|RippleCarryAdder:0:adder|r~0_combout\ & !\SW[6]~input_o\)) # (\adder|RippleCarryAdder:1:adder|r~combout\))) ) ) ) # ( !\SW[2]~input_o\ & ( !\adder|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\adder|RippleCarryAdder:0:adder|r~0_combout\ & 
-- ((!\SW[6]~input_o\ $ (!\adder|RippleCarryAdder:3:adder|r~0_combout\)) # (\adder|RippleCarryAdder:1:adder|r~combout\))) # (\adder|RippleCarryAdder:0:adder|r~0_combout\ & ((!\SW[6]~input_o\ $ (!\adder|RippleCarryAdder:1:adder|r~combout\)) # 
-- (\adder|RippleCarryAdder:3:adder|r~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110111101111111101001011111111110100101111111101001111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \adder|RippleCarryAdder:0:adder|ALT_INV_r~0_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \adder|RippleCarryAdder:3:adder|ALT_INV_r~0_combout\,
	datad => \adder|RippleCarryAdder:1:adder|ALT_INV_r~combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \adder|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\,
	combout => \hex0creator|hex[6]~6_combout\);

-- Location: MLABCELL_X84_Y12_N3
\adder|overflow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|overflow~0_combout\ = ( \SW[2]~input_o\ & ( (!\SW[3]~input_o\ & (!\SW[7]~input_o\ & ((\adder|RippleCarryAdder:1:adder|cout~0_combout\) # (\SW[6]~input_o\)))) # (\SW[3]~input_o\ & (\SW[7]~input_o\ & (!\SW[6]~input_o\ & 
-- !\adder|RippleCarryAdder:1:adder|cout~0_combout\))) ) ) # ( !\SW[2]~input_o\ & ( (!\SW[3]~input_o\ & (!\SW[7]~input_o\ & (\SW[6]~input_o\ & \adder|RippleCarryAdder:1:adder|cout~0_combout\))) # (\SW[3]~input_o\ & (\SW[7]~input_o\ & ((!\SW[6]~input_o\) # 
-- (!\adder|RippleCarryAdder:1:adder|cout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011000000100010001100000011000100010000001100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \adder|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \adder|overflow~0_combout\);

-- Location: MLABCELL_X6_Y39_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


