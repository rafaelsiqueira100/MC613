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

-- DATE "04/11/2023 14:43:17"

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

ENTITY 	alu_board IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0)
	);
END alu_board;

-- Design Ports Information
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu_board IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \HEX5~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \HEX4~0_combout\ : std_logic;
SIGNAL \HEX4~6_combout\ : std_logic;
SIGNAL \HEX4~1_combout\ : std_logic;
SIGNAL \HEX4~5_combout\ : std_logic;
SIGNAL \HEX4~2_combout\ : std_logic;
SIGNAL \HEX4~3_combout\ : std_logic;
SIGNAL \HEX4~4_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \HEX3~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \HEX2~0_combout\ : std_logic;
SIGNAL \HEX2~6_combout\ : std_logic;
SIGNAL \HEX2~1_combout\ : std_logic;
SIGNAL \HEX2~5_combout\ : std_logic;
SIGNAL \HEX2~2_combout\ : std_logic;
SIGNAL \HEX2~3_combout\ : std_logic;
SIGNAL \HEX2~4_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\ : std_logic;
SIGNAL \HEX1~0_combout\ : std_logic;
SIGNAL \my_alu|F[2]~1_combout\ : std_logic;
SIGNAL \my_alu|F[0]~3_combout\ : std_logic;
SIGNAL \my_alu|F[3]~0_combout\ : std_logic;
SIGNAL \my_alu|rc|RippleCarryAdder:0:adder|cout~0_combout\ : std_logic;
SIGNAL \my_alu|F[1]~2_combout\ : std_logic;
SIGNAL \HEX0~0_combout\ : std_logic;
SIGNAL \HEX0~6_combout\ : std_logic;
SIGNAL \HEX0~1_combout\ : std_logic;
SIGNAL \my_alu|F[3]~4_combout\ : std_logic;
SIGNAL \HEX0~5_combout\ : std_logic;
SIGNAL \HEX0~2_combout\ : std_logic;
SIGNAL \HEX0~3_combout\ : std_logic;
SIGNAL \HEX0~4_combout\ : std_logic;
SIGNAL \my_alu|rc|RippleCarryAdder:2:adder|cout~0_combout\ : std_logic;
SIGNAL \my_alu|V~combout\ : std_logic;
SIGNAL \my_alu|C~combout\ : std_logic;
SIGNAL \my_alu|Z~0_combout\ : std_logic;
SIGNAL \my_alu|result_carry_board_inverted\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \my_alu|ALT_INV_Z~0_combout\ : std_logic;
SIGNAL \my_alu|rc|RippleCarryAdder:2:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \my_alu|ALT_INV_result_carry_board_inverted\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \my_alu|ALT_INV_F[3]~4_combout\ : std_logic;
SIGNAL \my_alu|ALT_INV_F[0]~3_combout\ : std_logic;
SIGNAL \my_alu|ALT_INV_F[1]~2_combout\ : std_logic;
SIGNAL \my_alu|rc|RippleCarryAdder:0:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \my_alu|ALT_INV_F[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_HEX1~0_combout\ : std_logic;
SIGNAL \my_alu|ALT_INV_F[3]~0_combout\ : std_logic;
SIGNAL \my_alu|rc|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_HEX3~0_combout\ : std_logic;
SIGNAL \ALT_INV_HEX5~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\my_alu|ALT_INV_Z~0_combout\ <= NOT \my_alu|Z~0_combout\;
\my_alu|rc|RippleCarryAdder:2:adder|ALT_INV_cout~0_combout\ <= NOT \my_alu|rc|RippleCarryAdder:2:adder|cout~0_combout\;
\my_alu|ALT_INV_result_carry_board_inverted\(2) <= NOT \my_alu|result_carry_board_inverted\(2);
\my_alu|ALT_INV_F[3]~4_combout\ <= NOT \my_alu|F[3]~4_combout\;
\my_alu|ALT_INV_F[0]~3_combout\ <= NOT \my_alu|F[0]~3_combout\;
\my_alu|ALT_INV_F[1]~2_combout\ <= NOT \my_alu|F[1]~2_combout\;
\my_alu|rc|RippleCarryAdder:0:adder|ALT_INV_cout~0_combout\ <= NOT \my_alu|rc|RippleCarryAdder:0:adder|cout~0_combout\;
\my_alu|ALT_INV_F[2]~1_combout\ <= NOT \my_alu|F[2]~1_combout\;
\ALT_INV_HEX1~0_combout\ <= NOT \HEX1~0_combout\;
\my_alu|ALT_INV_F[3]~0_combout\ <= NOT \my_alu|F[3]~0_combout\;
\my_alu|ALT_INV_result_carry_board_inverted\(3) <= NOT \my_alu|result_carry_board_inverted\(3);
\my_alu|rc|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\ <= NOT \my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\;
\ALT_INV_HEX3~0_combout\ <= NOT \HEX3~0_combout\;
\ALT_INV_HEX5~0_combout\ <= NOT \HEX5~0_combout\;

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4~0_combout\,
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
	i => \HEX4~6_combout\,
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
	i => \HEX4~1_combout\,
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
	i => \HEX4~5_combout\,
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
	i => \HEX4~2_combout\,
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
	i => \HEX4~3_combout\,
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
	i => \HEX4~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
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
	i => \HEX2~6_combout\,
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
	i => \HEX2~1_combout\,
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
	i => \HEX2~5_combout\,
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
	i => \HEX2~2_combout\,
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
	i => \HEX2~3_combout\,
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
	i => \HEX2~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0~0_combout\,
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
	i => \HEX0~6_combout\,
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
	i => \HEX0~1_combout\,
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
	i => \HEX0~5_combout\,
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
	i => \HEX0~2_combout\,
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
	i => \HEX0~3_combout\,
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
	i => \HEX0~4_combout\,
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
	i => \HEX1~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \my_alu|V~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \my_alu|C~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \my_alu|ALT_INV_Z~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

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

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X83_Y12_N30
\HEX5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5~0_combout\ = ( \SW[8]~input_o\ & ( \SW[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \HEX5~0_combout\);

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

-- Location: LABCELL_X83_Y12_N36
\HEX4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[7]~input_o\ & (((\SW[8]~input_o\)))) # (\SW[7]~input_o\ & ((!\SW[4]~input_o\ & ((\SW[8]~input_o\))) # (\SW[4]~input_o\ & (!\SW[6]~input_o\)))) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[6]~input_o\ & 
-- ((!\SW[7]~input_o\ & (\SW[4]~input_o\ & !\SW[8]~input_o\)) # (\SW[7]~input_o\ & ((\SW[8]~input_o\))))) # (\SW[6]~input_o\ & (!\SW[4]~input_o\ $ (((\SW[8]~input_o\) # (\SW[7]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100101010011001010010101001100010000111111100001000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \HEX4~0_combout\);

-- Location: LABCELL_X83_Y12_N21
\HEX4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4~6_combout\ = ( \SW[5]~input_o\ & ( (!\SW[7]~input_o\ & (!\SW[8]~input_o\ $ (((!\SW[6]~input_o\) # (\SW[4]~input_o\))))) # (\SW[7]~input_o\ & (((\SW[4]~input_o\ & !\SW[8]~input_o\)) # (\SW[6]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[8]~input_o\ 
-- & (\SW[6]~input_o\ & (!\SW[7]~input_o\ $ (!\SW[4]~input_o\)))) # (\SW[8]~input_o\ & ((!\SW[4]~input_o\ $ (!\SW[6]~input_o\)) # (\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101101101000001110110110100011010110101110001101011010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \HEX4~6_combout\);

-- Location: LABCELL_X83_Y12_N42
\HEX4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4~1_combout\ = ( \SW[7]~input_o\ & ( (!\SW[8]~input_o\ & (\SW[6]~input_o\ & ((!\SW[4]~input_o\) # (\SW[5]~input_o\)))) # (\SW[8]~input_o\ & ((!\SW[5]~input_o\) # ((!\SW[6]~input_o\) # (\SW[4]~input_o\)))) ) ) # ( !\SW[7]~input_o\ & ( (!\SW[8]~input_o\ 
-- & (\SW[5]~input_o\ & (!\SW[6]~input_o\ & !\SW[4]~input_o\))) # (\SW[8]~input_o\ & (((\SW[4]~input_o\) # (\SW[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010101010101001001010101010101011110010101110101111001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \HEX4~1_combout\);

-- Location: LABCELL_X83_Y12_N39
\HEX4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4~5_combout\ = ( \SW[8]~input_o\ & ( (!\SW[4]~input_o\ & (((\SW[7]~input_o\ & !\SW[6]~input_o\)) # (\SW[5]~input_o\))) # (\SW[4]~input_o\ & ((!\SW[5]~input_o\ $ (!\SW[6]~input_o\)))) ) ) # ( !\SW[8]~input_o\ & ( (!\SW[5]~input_o\ & (!\SW[7]~input_o\ & 
-- (!\SW[4]~input_o\ $ (!\SW[6]~input_o\)))) # (\SW[5]~input_o\ & ((!\SW[4]~input_o\ & (\SW[7]~input_o\ & !\SW[6]~input_o\)) # (\SW[4]~input_o\ & ((\SW[6]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010010000011001001001000001101001111001111000100111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \HEX4~5_combout\);

-- Location: LABCELL_X83_Y12_N33
\HEX4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4~2_combout\ = ( \SW[5]~input_o\ & ( (!\SW[8]~input_o\ & (!\SW[7]~input_o\ & \SW[4]~input_o\)) # (\SW[8]~input_o\ & ((!\SW[4]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[7]~input_o\ & (!\SW[8]~input_o\ & ((\SW[6]~input_o\) # (\SW[4]~input_o\)))) # 
-- (\SW[7]~input_o\ & (!\SW[6]~input_o\ & (!\SW[8]~input_o\ $ (!\SW[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110010001000000111001000100000111000001110000011100000111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \HEX4~2_combout\);

-- Location: LABCELL_X83_Y12_N45
\HEX4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4~3_combout\ = ( \SW[7]~input_o\ & ( (!\SW[8]~input_o\ & (!\SW[5]~input_o\ & (\SW[4]~input_o\ & \SW[6]~input_o\))) # (\SW[8]~input_o\ & ((!\SW[5]~input_o\ & (!\SW[4]~input_o\)) # (\SW[5]~input_o\ & ((!\SW[6]~input_o\))))) ) ) # ( !\SW[7]~input_o\ & ( 
-- (!\SW[6]~input_o\ & (!\SW[8]~input_o\ & ((\SW[4]~input_o\) # (\SW[5]~input_o\)))) # (\SW[6]~input_o\ & (!\SW[8]~input_o\ $ (((!\SW[5]~input_o\) # (!\SW[4]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101001010110001010100101011001010001010010000101000101001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \HEX4~3_combout\);

-- Location: LABCELL_X83_Y12_N18
\HEX4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4~4_combout\ = ( \SW[5]~input_o\ & ( (!\SW[4]~input_o\ & (((\SW[8]~input_o\)))) # (\SW[4]~input_o\ & ((!\SW[8]~input_o\ & (!\SW[7]~input_o\ & \SW[6]~input_o\)) # (\SW[8]~input_o\ & ((!\SW[6]~input_o\))))) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[7]~input_o\ 
-- & ((!\SW[8]~input_o\ $ (\SW[6]~input_o\)))) # (\SW[7]~input_o\ & ((!\SW[4]~input_o\ & ((\SW[6]~input_o\) # (\SW[8]~input_o\))) # (\SW[4]~input_o\ & (\SW[8]~input_o\ & \SW[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010001001111101001000100111100001111001011000000111100101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \HEX4~4_combout\);

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

-- Location: MLABCELL_X82_Y8_N30
\HEX3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX3~0_combout\ = ( \SW[8]~input_o\ & ( \SW[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \HEX3~0_combout\);

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

-- Location: LABCELL_X83_Y12_N54
\HEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2~0_combout\ = ( \SW[3]~input_o\ & ( (!\SW[8]~input_o\ & (\SW[0]~input_o\ & (!\SW[2]~input_o\ $ (!\SW[1]~input_o\)))) # (\SW[8]~input_o\ & ((!\SW[2]~input_o\) # (!\SW[0]~input_o\ $ (!\SW[1]~input_o\)))) ) ) # ( !\SW[3]~input_o\ & ( (!\SW[8]~input_o\ & 
-- (!\SW[1]~input_o\ & (!\SW[0]~input_o\ $ (!\SW[2]~input_o\)))) # (\SW[8]~input_o\ & (((\SW[0]~input_o\ & \SW[2]~input_o\)) # (\SW[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100110011010010010011001100110101011100100011010101110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \HEX2~0_combout\);

-- Location: LABCELL_X83_Y12_N48
\HEX2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2~6_combout\ = ( \SW[8]~input_o\ & ( (!\SW[3]~input_o\ & ((!\SW[0]~input_o\ & (!\SW[2]~input_o\ $ (!\SW[1]~input_o\))) # (\SW[0]~input_o\ & ((!\SW[2]~input_o\) # (\SW[1]~input_o\))))) # (\SW[3]~input_o\ & (((!\SW[1]~input_o\) # (\SW[2]~input_o\)))) ) 
-- ) # ( !\SW[8]~input_o\ & ( (!\SW[3]~input_o\ & (\SW[2]~input_o\ & (!\SW[0]~input_o\ $ (!\SW[1]~input_o\)))) # (\SW[3]~input_o\ & ((!\SW[0]~input_o\ & (\SW[2]~input_o\)) # (\SW[0]~input_o\ & ((\SW[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101101111011110001110111101111000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \HEX2~6_combout\);

-- Location: LABCELL_X83_Y12_N57
\HEX2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2~1_combout\ = ( \SW[2]~input_o\ & ( (!\SW[8]~input_o\ & (\SW[3]~input_o\ & ((!\SW[0]~input_o\) # (\SW[1]~input_o\)))) # (\SW[8]~input_o\ & (((!\SW[1]~input_o\) # (!\SW[3]~input_o\)) # (\SW[0]~input_o\))) ) ) # ( !\SW[2]~input_o\ & ( (!\SW[0]~input_o\ 
-- & ((!\SW[8]~input_o\ & (\SW[1]~input_o\ & !\SW[3]~input_o\)) # (\SW[8]~input_o\ & ((\SW[3]~input_o\))))) # (\SW[0]~input_o\ & (\SW[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100110011000110010011001100110011101111010011001110111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \HEX2~1_combout\);

-- Location: LABCELL_X83_Y12_N9
\HEX2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2~5_combout\ = ( \SW[2]~input_o\ & ( (!\SW[8]~input_o\ & ((!\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[0]~input_o\)) # (\SW[1]~input_o\ & ((\SW[0]~input_o\))))) # (\SW[8]~input_o\ & (!\SW[1]~input_o\ $ (((!\SW[0]~input_o\))))) ) ) # ( !\SW[2]~input_o\ 
-- & ( (!\SW[8]~input_o\ & ((!\SW[1]~input_o\ & (!\SW[3]~input_o\ & \SW[0]~input_o\)) # (\SW[1]~input_o\ & (\SW[3]~input_o\ & !\SW[0]~input_o\)))) # (\SW[8]~input_o\ & (((\SW[3]~input_o\ & !\SW[0]~input_o\)) # (\SW[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011110010001000101111001000110010001011001101001000101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \HEX2~5_combout\);

-- Location: LABCELL_X83_Y12_N0
\HEX2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2~2_combout\ = ( \SW[2]~input_o\ & ( (!\SW[8]~input_o\ & (!\SW[3]~input_o\ & ((!\SW[1]~input_o\) # (\SW[0]~input_o\)))) # (\SW[8]~input_o\ & (\SW[1]~input_o\ & (!\SW[0]~input_o\))) ) ) # ( !\SW[2]~input_o\ & ( (!\SW[8]~input_o\ & (\SW[0]~input_o\ & 
-- ((!\SW[1]~input_o\) # (!\SW[3]~input_o\)))) # (\SW[8]~input_o\ & (!\SW[0]~input_o\ & ((\SW[3]~input_o\) # (\SW[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101001011000000110100101100010011010000100001001101000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \HEX2~2_combout\);

-- Location: LABCELL_X83_Y12_N3
\HEX2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2~3_combout\ = ( \SW[2]~input_o\ & ( (!\SW[1]~input_o\ & (!\SW[8]~input_o\ $ (((!\SW[3]~input_o\) # (!\SW[0]~input_o\))))) # (\SW[1]~input_o\ & (!\SW[3]~input_o\ & (!\SW[8]~input_o\ $ (!\SW[0]~input_o\)))) ) ) # ( !\SW[2]~input_o\ & ( 
-- (!\SW[8]~input_o\ & (!\SW[3]~input_o\ & ((\SW[0]~input_o\) # (\SW[1]~input_o\)))) # (\SW[8]~input_o\ & (\SW[3]~input_o\ & ((!\SW[0]~input_o\) # (\SW[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010110100001001001011010000101010100011010000101010001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \HEX2~3_combout\);

-- Location: LABCELL_X83_Y12_N6
\HEX2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2~4_combout\ = ( \SW[2]~input_o\ & ( (!\SW[8]~input_o\ & ((!\SW[1]~input_o\ & (!\SW[0]~input_o\ & \SW[3]~input_o\)) # (\SW[1]~input_o\ & (\SW[0]~input_o\ & !\SW[3]~input_o\)))) # (\SW[8]~input_o\ & ((!\SW[1]~input_o\) # ((!\SW[0]~input_o\)))) ) ) # ( 
-- !\SW[2]~input_o\ & ( (!\SW[8]~input_o\ & (!\SW[1]~input_o\ & ((!\SW[3]~input_o\)))) # (\SW[8]~input_o\ & (((!\SW[0]~input_o\ & \SW[3]~input_o\)) # (\SW[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100101010001100110010101000101010110110101000101011011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \HEX2~4_combout\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X83_Y12_N12
\my_alu|rc|RippleCarryAdder:1:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\ = ( \SW[1]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[9]~input_o\) # ((!\SW[4]~input_o\ & (\SW[3]~input_o\ & !\SW[0]~input_o\)) # (\SW[4]~input_o\ & ((!\SW[0]~input_o\) # (\SW[3]~input_o\)))) ) ) ) # ( 
-- !\SW[1]~input_o\ & ( \SW[5]~input_o\ & ( ((\SW[4]~input_o\ & \SW[0]~input_o\)) # (\SW[9]~input_o\) ) ) ) # ( \SW[1]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[4]~input_o\ & (\SW[0]~input_o\ & !\SW[9]~input_o\)) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[5]~input_o\ 
-- & ( (\SW[9]~input_o\ & ((!\SW[4]~input_o\ & (\SW[3]~input_o\ & !\SW[0]~input_o\)) # (\SW[4]~input_o\ & ((!\SW[0]~input_o\) # (\SW[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110001000001010000000000000101111111111111111101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\);

-- Location: MLABCELL_X82_Y8_N36
\my_alu|result_carry_board_inverted[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \my_alu|result_carry_board_inverted\(3) = ( \SW[9]~input_o\ & ( \SW[7]~input_o\ & ( (\SW[3]~input_o\ & ((!\SW[6]~input_o\ & (!\SW[2]~input_o\ & \my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\)) # (\SW[6]~input_o\ & ((!\SW[2]~input_o\) # 
-- (\my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\))))) ) ) ) # ( !\SW[9]~input_o\ & ( \SW[7]~input_o\ & ( !\SW[3]~input_o\ $ (((!\SW[6]~input_o\ & ((!\SW[2]~input_o\) # (!\my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\))) # (\SW[6]~input_o\ & 
-- (!\SW[2]~input_o\ & !\my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\)))) ) ) ) # ( \SW[9]~input_o\ & ( !\SW[7]~input_o\ & ( (\SW[3]~input_o\ & ((!\SW[6]~input_o\ & ((!\my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\) # (\SW[2]~input_o\))) # 
-- (\SW[6]~input_o\ & (\SW[2]~input_o\ & !\my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\)))) ) ) ) # ( !\SW[9]~input_o\ & ( !\SW[7]~input_o\ & ( !\SW[3]~input_o\ $ (((!\SW[6]~input_o\ & (\SW[2]~input_o\ & 
-- \my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\)) # (\SW[6]~input_o\ & ((\my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\) # (\SW[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000110000111000010110000001000011110011110000000010000001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \my_alu|rc|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \my_alu|result_carry_board_inverted\(3));

-- Location: MLABCELL_X82_Y8_N48
\HEX1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX1~0_combout\ = ( \SW[8]~input_o\ & ( !\my_alu|result_carry_board_inverted\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \my_alu|ALT_INV_result_carry_board_inverted\(3),
	datae => \ALT_INV_SW[8]~input_o\,
	combout => \HEX1~0_combout\);

-- Location: MLABCELL_X82_Y8_N24
\my_alu|F[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \my_alu|F[2]~1_combout\ = ( \SW[9]~input_o\ & ( \my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\SW[8]~input_o\ & (((!\SW[6]~input_o\ & !\SW[2]~input_o\)))) # (\SW[8]~input_o\ & (\SW[3]~input_o\ & (!\SW[6]~input_o\ $ (\SW[2]~input_o\)))) ) ) ) # 
-- ( !\SW[9]~input_o\ & ( \my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\SW[6]~input_o\ & ((!\SW[8]~input_o\) # (\SW[2]~input_o\))) # (\SW[6]~input_o\ & ((!\SW[2]~input_o\))) ) ) ) # ( \SW[9]~input_o\ & ( 
-- !\my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\SW[8]~input_o\ & (((!\SW[6]~input_o\ & !\SW[2]~input_o\)))) # (\SW[8]~input_o\ & (\SW[3]~input_o\ & (!\SW[6]~input_o\ $ (!\SW[2]~input_o\)))) ) ) ) # ( !\SW[9]~input_o\ & ( 
-- !\my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\SW[8]~input_o\ & ((!\SW[6]~input_o\) # (!\SW[2]~input_o\))) # (\SW[8]~input_o\ & (!\SW[6]~input_o\ $ (\SW[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011000011110000010001000011001111111100001101000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \my_alu|rc|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\,
	combout => \my_alu|F[2]~1_combout\);

-- Location: MLABCELL_X82_Y8_N3
\my_alu|F[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \my_alu|F[0]~3_combout\ = ( \SW[9]~input_o\ & ( \SW[0]~input_o\ & ( (\SW[4]~input_o\ & (\SW[8]~input_o\ & \SW[3]~input_o\)) ) ) ) # ( !\SW[9]~input_o\ & ( \SW[0]~input_o\ & ( !\SW[4]~input_o\ $ (\SW[8]~input_o\) ) ) ) # ( \SW[9]~input_o\ & ( 
-- !\SW[0]~input_o\ & ( (!\SW[4]~input_o\ & ((!\SW[8]~input_o\) # (\SW[3]~input_o\))) ) ) ) # ( !\SW[9]~input_o\ & ( !\SW[0]~input_o\ & ( (!\SW[4]~input_o\) # (!\SW[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010101000001010101010100101101001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \my_alu|F[0]~3_combout\);

-- Location: MLABCELL_X82_Y8_N42
\my_alu|F[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \my_alu|F[3]~0_combout\ = ( \SW[9]~input_o\ & ( \SW[3]~input_o\ ) ) # ( !\SW[9]~input_o\ & ( \SW[3]~input_o\ & ( \SW[7]~input_o\ ) ) ) # ( \SW[9]~input_o\ & ( !\SW[3]~input_o\ & ( \SW[7]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[7]~input_o\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \my_alu|F[3]~0_combout\);

-- Location: LABCELL_X83_Y12_N51
\my_alu|rc|RippleCarryAdder:0:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \my_alu|rc|RippleCarryAdder:0:adder|cout~0_combout\ = ( \SW[4]~input_o\ & ( (!\SW[0]~input_o\ & ((\SW[9]~input_o\))) # (\SW[0]~input_o\ & ((!\SW[9]~input_o\) # (\SW[3]~input_o\))) ) ) # ( !\SW[4]~input_o\ & ( (!\SW[0]~input_o\ & (\SW[3]~input_o\ & 
-- \SW[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001001011011010110110101101101011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \my_alu|rc|RippleCarryAdder:0:adder|cout~0_combout\);

-- Location: LABCELL_X83_Y12_N24
\my_alu|F[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \my_alu|F[1]~2_combout\ = ( \SW[3]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[8]~input_o\ & (((!\SW[9]~input_o\ & !\SW[1]~input_o\)))) # (\SW[8]~input_o\ & (!\my_alu|rc|RippleCarryAdder:0:adder|cout~0_combout\ $ (!\SW[9]~input_o\ $ (\SW[1]~input_o\)))) ) ) ) 
-- # ( !\SW[3]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[9]~input_o\ & (!\SW[1]~input_o\ $ (((!\my_alu|rc|RippleCarryAdder:0:adder|cout~0_combout\ & \SW[8]~input_o\))))) ) ) ) # ( \SW[3]~input_o\ & ( !\SW[5]~input_o\ & ( (!\SW[8]~input_o\ & (((!\SW[9]~input_o\) 
-- # (!\SW[1]~input_o\)))) # (\SW[8]~input_o\ & (!\my_alu|rc|RippleCarryAdder:0:adder|cout~0_combout\ $ (!\SW[9]~input_o\ $ (!\SW[1]~input_o\)))) ) ) ) # ( !\SW[3]~input_o\ & ( !\SW[5]~input_o\ & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\) # 
-- (!\my_alu|rc|RippleCarryAdder:0:adder|cout~0_combout\ $ (\SW[1]~input_o\)))) # (\SW[9]~input_o\ & (((!\SW[8]~input_o\ & !\SW[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011000100111110011100011011000100000010001100011000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|rc|RippleCarryAdder:0:adder|ALT_INV_cout~0_combout\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \my_alu|F[1]~2_combout\);

-- Location: LABCELL_X83_Y8_N30
\HEX0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~0_combout\ = ( \my_alu|F[3]~0_combout\ & ( \my_alu|F[1]~2_combout\ & ( (!\my_alu|F[2]~1_combout\ & (((!\my_alu|F[0]~3_combout\)))) # (\my_alu|F[2]~1_combout\ & (!\my_alu|result_carry_board_inverted\(3) & (\SW[8]~input_o\))) ) ) ) # ( 
-- !\my_alu|F[3]~0_combout\ & ( \my_alu|F[1]~2_combout\ & ( (!\my_alu|F[2]~1_combout\ & ((!\SW[8]~input_o\ $ (!\my_alu|F[0]~3_combout\)))) # (\my_alu|F[2]~1_combout\ & ((!\SW[8]~input_o\ & ((!\my_alu|F[0]~3_combout\))) # (\SW[8]~input_o\ & 
-- (!\my_alu|result_carry_board_inverted\(3))))) ) ) ) # ( \my_alu|F[3]~0_combout\ & ( !\my_alu|F[1]~2_combout\ & ( (!\my_alu|F[0]~3_combout\ & (((\my_alu|result_carry_board_inverted\(3) & \SW[8]~input_o\)) # (\my_alu|F[2]~1_combout\))) # 
-- (\my_alu|F[0]~3_combout\ & (((\SW[8]~input_o\)))) ) ) ) # ( !\my_alu|F[3]~0_combout\ & ( !\my_alu|F[1]~2_combout\ & ( (\SW[8]~input_o\ & (((\my_alu|F[0]~3_combout\) # (\my_alu|F[2]~1_combout\)) # (\my_alu|result_carry_board_inverted\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111001101110000111100111110110000101100111000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ALT_INV_result_carry_board_inverted\(3),
	datab => \my_alu|ALT_INV_F[2]~1_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \my_alu|ALT_INV_F[0]~3_combout\,
	datae => \my_alu|ALT_INV_F[3]~0_combout\,
	dataf => \my_alu|ALT_INV_F[1]~2_combout\,
	combout => \HEX0~0_combout\);

-- Location: LABCELL_X83_Y8_N18
\HEX0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~6_combout\ = ( \my_alu|F[3]~0_combout\ & ( \my_alu|F[1]~2_combout\ & ( (!\SW[8]~input_o\ & (((!\my_alu|F[2]~1_combout\ & \my_alu|F[0]~3_combout\)))) # (\SW[8]~input_o\ & ((!\my_alu|result_carry_board_inverted\(3)) # (!\my_alu|F[2]~1_combout\ $ 
-- (!\my_alu|F[0]~3_combout\)))) ) ) ) # ( !\my_alu|F[3]~0_combout\ & ( \my_alu|F[1]~2_combout\ & ( (!\SW[8]~input_o\ & (((!\my_alu|F[2]~1_combout\ & !\my_alu|F[0]~3_combout\)))) # (\SW[8]~input_o\ & ((!\my_alu|result_carry_board_inverted\(3)) # 
-- (!\my_alu|F[2]~1_combout\ $ (!\my_alu|F[0]~3_combout\)))) ) ) ) # ( \my_alu|F[3]~0_combout\ & ( !\my_alu|F[1]~2_combout\ & ( (!\my_alu|result_carry_board_inverted\(3) & ((!\my_alu|F[2]~1_combout\) # ((!\SW[8]~input_o\ & !\my_alu|F[0]~3_combout\)))) # 
-- (\my_alu|result_carry_board_inverted\(3) & ((!\my_alu|F[0]~3_combout\) # (!\my_alu|F[2]~1_combout\ $ (\SW[8]~input_o\)))) ) ) ) # ( !\my_alu|F[3]~0_combout\ & ( !\my_alu|F[1]~2_combout\ & ( (!\my_alu|result_carry_board_inverted\(3) & 
-- (!\my_alu|F[2]~1_combout\ & ((\my_alu|F[0]~3_combout\) # (\SW[8]~input_o\)))) # (\my_alu|result_carry_board_inverted\(3) & (!\SW[8]~input_o\ $ (((!\my_alu|F[0]~3_combout\) # (\my_alu|F[2]~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110111001001111111011100100111001011000011100000101111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ALT_INV_result_carry_board_inverted\(3),
	datab => \my_alu|ALT_INV_F[2]~1_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \my_alu|ALT_INV_F[0]~3_combout\,
	datae => \my_alu|ALT_INV_F[3]~0_combout\,
	dataf => \my_alu|ALT_INV_F[1]~2_combout\,
	combout => \HEX0~6_combout\);

-- Location: LABCELL_X83_Y8_N12
\HEX0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~1_combout\ = ( \my_alu|F[3]~0_combout\ & ( \my_alu|F[1]~2_combout\ & ( (!\my_alu|F[0]~3_combout\ & (((\SW[8]~input_o\)))) # (\my_alu|F[0]~3_combout\ & ((!\my_alu|F[2]~1_combout\) # ((!\my_alu|result_carry_board_inverted\(3) & \SW[8]~input_o\)))) ) ) 
-- ) # ( !\my_alu|F[3]~0_combout\ & ( \my_alu|F[1]~2_combout\ & ( (\SW[8]~input_o\ & ((!\my_alu|result_carry_board_inverted\(3)) # ((!\my_alu|F[2]~1_combout\) # (!\my_alu|F[0]~3_combout\)))) ) ) ) # ( \my_alu|F[3]~0_combout\ & ( !\my_alu|F[1]~2_combout\ & ( 
-- (!\SW[8]~input_o\ & (((!\my_alu|F[2]~1_combout\)))) # (\SW[8]~input_o\ & ((!\my_alu|F[0]~3_combout\) # (!\my_alu|result_carry_board_inverted\(3) $ (!\my_alu|F[2]~1_combout\)))) ) ) ) # ( !\my_alu|F[3]~0_combout\ & ( !\my_alu|F[1]~2_combout\ & ( 
-- (!\my_alu|F[0]~3_combout\ & (((\SW[8]~input_o\)))) # (\my_alu|F[0]~3_combout\ & (!\my_alu|F[2]~1_combout\ $ (((!\my_alu|result_carry_board_inverted\(3)) # (!\SW[8]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110110110011111100011000001111000011100000111111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ALT_INV_result_carry_board_inverted\(3),
	datab => \my_alu|ALT_INV_F[2]~1_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \my_alu|ALT_INV_F[0]~3_combout\,
	datae => \my_alu|ALT_INV_F[3]~0_combout\,
	dataf => \my_alu|ALT_INV_F[1]~2_combout\,
	combout => \HEX0~1_combout\);

-- Location: MLABCELL_X82_Y8_N9
\my_alu|result_carry_board_inverted[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \my_alu|result_carry_board_inverted\(2) = ( \SW[9]~input_o\ & ( \my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\ & ( (\SW[3]~input_o\ & (!\SW[6]~input_o\ $ (\SW[2]~input_o\))) ) ) ) # ( !\SW[9]~input_o\ & ( 
-- \my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\ & ( !\SW[6]~input_o\ $ (!\SW[2]~input_o\) ) ) ) # ( \SW[9]~input_o\ & ( !\my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\ & ( (\SW[3]~input_o\ & (!\SW[6]~input_o\ $ (!\SW[2]~input_o\))) ) ) ) # ( 
-- !\SW[9]~input_o\ & ( !\my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\ & ( !\SW[6]~input_o\ $ (\SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101000000000101101001011010010110100000000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \my_alu|rc|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\,
	combout => \my_alu|result_carry_board_inverted\(2));

-- Location: LABCELL_X83_Y8_N39
\my_alu|F[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \my_alu|F[3]~4_combout\ = ( \my_alu|F[3]~0_combout\ & ( \my_alu|result_carry_board_inverted\(3) & ( !\SW[8]~input_o\ ) ) ) # ( \my_alu|F[3]~0_combout\ & ( !\my_alu|result_carry_board_inverted\(3) ) ) # ( !\my_alu|F[3]~0_combout\ & ( 
-- !\my_alu|result_carry_board_inverted\(3) & ( \SW[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datae => \my_alu|ALT_INV_F[3]~0_combout\,
	dataf => \my_alu|ALT_INV_result_carry_board_inverted\(3),
	combout => \my_alu|F[3]~4_combout\);

-- Location: LABCELL_X83_Y8_N42
\HEX0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~5_combout\ = ( \my_alu|F[3]~4_combout\ & ( \my_alu|F[2]~1_combout\ & ( (!\my_alu|F[1]~2_combout\ & (((\SW[8]~input_o\ & \my_alu|result_carry_board_inverted\(2))) # (\my_alu|F[0]~3_combout\))) # (\my_alu|F[1]~2_combout\ & (\SW[8]~input_o\ & 
-- (!\my_alu|F[0]~3_combout\ $ (\my_alu|result_carry_board_inverted\(2))))) ) ) ) # ( !\my_alu|F[3]~4_combout\ & ( \my_alu|F[2]~1_combout\ & ( (!\my_alu|F[0]~3_combout\ & (!\my_alu|F[1]~2_combout\ $ (((!\SW[8]~input_o\) # 
-- (!\my_alu|result_carry_board_inverted\(2)))))) # (\my_alu|F[0]~3_combout\ & (!\my_alu|F[1]~2_combout\ & (\SW[8]~input_o\))) ) ) ) # ( \my_alu|F[3]~4_combout\ & ( !\my_alu|F[2]~1_combout\ & ( (!\my_alu|F[0]~3_combout\ & (!\my_alu|F[1]~2_combout\ $ 
-- (((\SW[8]~input_o\ & !\my_alu|result_carry_board_inverted\(2)))))) # (\my_alu|F[0]~3_combout\ & (\SW[8]~input_o\ & ((!\my_alu|F[1]~2_combout\) # (\my_alu|result_carry_board_inverted\(2))))) ) ) ) # ( !\my_alu|F[3]~4_combout\ & ( !\my_alu|F[2]~1_combout\ & 
-- ( !\my_alu|F[1]~2_combout\ $ (((!\my_alu|F[0]~3_combout\ & (\SW[8]~input_o\ & !\my_alu|result_carry_board_inverted\(2))) # (\my_alu|F[0]~3_combout\ & (!\SW[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010011010100001101000101101000110010010100010011000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ALT_INV_F[1]~2_combout\,
	datab => \my_alu|ALT_INV_F[0]~3_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \my_alu|ALT_INV_result_carry_board_inverted\(2),
	datae => \my_alu|ALT_INV_F[3]~4_combout\,
	dataf => \my_alu|ALT_INV_F[2]~1_combout\,
	combout => \HEX0~5_combout\);

-- Location: LABCELL_X83_Y8_N48
\HEX0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~2_combout\ = ( \my_alu|F[3]~0_combout\ & ( \my_alu|F[1]~2_combout\ & ( (\my_alu|F[2]~1_combout\ & ((!\SW[8]~input_o\ & ((!\my_alu|F[0]~3_combout\))) # (\SW[8]~input_o\ & (!\my_alu|result_carry_board_inverted\(3) & \my_alu|F[0]~3_combout\)))) ) ) ) # 
-- ( !\my_alu|F[3]~0_combout\ & ( \my_alu|F[1]~2_combout\ & ( (!\my_alu|F[2]~1_combout\ & (((!\SW[8]~input_o\)))) # (\my_alu|F[2]~1_combout\ & ((!\SW[8]~input_o\ & ((!\my_alu|F[0]~3_combout\))) # (\SW[8]~input_o\ & (!\my_alu|result_carry_board_inverted\(3) & 
-- \my_alu|F[0]~3_combout\)))) ) ) ) # ( \my_alu|F[3]~0_combout\ & ( !\my_alu|F[1]~2_combout\ & ( (\SW[8]~input_o\ & \my_alu|F[0]~3_combout\) ) ) ) # ( !\my_alu|F[3]~0_combout\ & ( !\my_alu|F[1]~2_combout\ & ( !\SW[8]~input_o\ $ (\my_alu|F[0]~3_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000000000000111111110000110000100011000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ALT_INV_result_carry_board_inverted\(3),
	datab => \my_alu|ALT_INV_F[2]~1_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \my_alu|ALT_INV_F[0]~3_combout\,
	datae => \my_alu|ALT_INV_F[3]~0_combout\,
	dataf => \my_alu|ALT_INV_F[1]~2_combout\,
	combout => \HEX0~2_combout\);

-- Location: LABCELL_X83_Y8_N54
\HEX0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~3_combout\ = ( \my_alu|F[3]~0_combout\ & ( \my_alu|F[1]~2_combout\ & ( (!\SW[8]~input_o\ & (((!\my_alu|F[2]~1_combout\ & !\my_alu|F[0]~3_combout\)))) # (\SW[8]~input_o\ & ((!\my_alu|result_carry_board_inverted\(3) & ((\my_alu|F[0]~3_combout\))) # 
-- (\my_alu|result_carry_board_inverted\(3) & (!\my_alu|F[2]~1_combout\)))) ) ) ) # ( !\my_alu|F[3]~0_combout\ & ( \my_alu|F[1]~2_combout\ & ( (!\SW[8]~input_o\ & (((\my_alu|F[2]~1_combout\ & !\my_alu|F[0]~3_combout\)))) # (\SW[8]~input_o\ & 
-- ((!\my_alu|result_carry_board_inverted\(3) & ((\my_alu|F[0]~3_combout\))) # (\my_alu|result_carry_board_inverted\(3) & (!\my_alu|F[2]~1_combout\)))) ) ) ) # ( \my_alu|F[3]~0_combout\ & ( !\my_alu|F[1]~2_combout\ & ( (\SW[8]~input_o\ & 
-- ((!\my_alu|result_carry_board_inverted\(3) & (\my_alu|F[2]~1_combout\)) # (\my_alu|result_carry_board_inverted\(3) & (!\my_alu|F[2]~1_combout\ & \my_alu|F[0]~3_combout\)))) ) ) ) # ( !\my_alu|F[3]~0_combout\ & ( !\my_alu|F[1]~2_combout\ & ( 
-- (!\my_alu|result_carry_board_inverted\(3) & (((!\SW[8]~input_o\ & !\my_alu|F[0]~3_combout\)) # (\my_alu|F[2]~1_combout\))) # (\my_alu|result_carry_board_inverted\(3) & (!\SW[8]~input_o\ $ (((!\my_alu|F[2]~1_combout\ & \my_alu|F[0]~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001000110110000000100000011000110100000011101100010000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ALT_INV_result_carry_board_inverted\(3),
	datab => \my_alu|ALT_INV_F[2]~1_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \my_alu|ALT_INV_F[0]~3_combout\,
	datae => \my_alu|ALT_INV_F[3]~0_combout\,
	dataf => \my_alu|ALT_INV_F[1]~2_combout\,
	combout => \HEX0~3_combout\);

-- Location: LABCELL_X83_Y8_N0
\HEX0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0~4_combout\ = ( \my_alu|F[3]~0_combout\ & ( \my_alu|F[1]~2_combout\ & ( (!\my_alu|F[2]~1_combout\ & (((\my_alu|F[0]~3_combout\) # (\SW[8]~input_o\)))) # (\my_alu|F[2]~1_combout\ & (!\my_alu|result_carry_board_inverted\(3) & (\SW[8]~input_o\ & 
-- \my_alu|F[0]~3_combout\))) ) ) ) # ( !\my_alu|F[3]~0_combout\ & ( \my_alu|F[1]~2_combout\ & ( (!\my_alu|F[2]~1_combout\ & (((\SW[8]~input_o\)))) # (\my_alu|F[2]~1_combout\ & ((!\SW[8]~input_o\) # ((!\my_alu|result_carry_board_inverted\(3) & 
-- \my_alu|F[0]~3_combout\)))) ) ) ) # ( \my_alu|F[3]~0_combout\ & ( !\my_alu|F[1]~2_combout\ & ( (\SW[8]~input_o\ & ((\my_alu|F[0]~3_combout\) # (\my_alu|F[2]~1_combout\))) ) ) ) # ( !\my_alu|F[3]~0_combout\ & ( !\my_alu|F[1]~2_combout\ & ( !\SW[8]~input_o\ 
-- $ (((\my_alu|F[0]~3_combout\) # (\my_alu|F[2]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100001111000000110000111100111100001111100000110011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ALT_INV_result_carry_board_inverted\(3),
	datab => \my_alu|ALT_INV_F[2]~1_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \my_alu|ALT_INV_F[0]~3_combout\,
	datae => \my_alu|ALT_INV_F[3]~0_combout\,
	dataf => \my_alu|ALT_INV_F[1]~2_combout\,
	combout => \HEX0~4_combout\);

-- Location: MLABCELL_X82_Y8_N15
\my_alu|rc|RippleCarryAdder:2:adder|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \my_alu|rc|RippleCarryAdder:2:adder|cout~0_combout\ = ( \my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\ & ( (!\SW[9]~input_o\ $ (!\SW[2]~input_o\)) # (\SW[6]~input_o\) ) ) # ( !\my_alu|rc|RippleCarryAdder:1:adder|cout~0_combout\ & ( (\SW[6]~input_o\ & 
-- (!\SW[9]~input_o\ $ (!\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \my_alu|rc|RippleCarryAdder:1:adder|ALT_INV_cout~0_combout\,
	combout => \my_alu|rc|RippleCarryAdder:2:adder|cout~0_combout\);

-- Location: MLABCELL_X82_Y8_N12
\my_alu|V\ : cyclonev_lcell_comb
-- Equation(s):
-- \my_alu|V~combout\ = ( \my_alu|rc|RippleCarryAdder:2:adder|cout~0_combout\ & ( (!\SW[7]~input_o\ & (\SW[8]~input_o\ & (!\SW[3]~input_o\ $ (\SW[9]~input_o\)))) ) ) # ( !\my_alu|rc|RippleCarryAdder:2:adder|cout~0_combout\ & ( (\SW[7]~input_o\ & 
-- (\SW[8]~input_o\ & (!\SW[3]~input_o\ $ (!\SW[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000000000011000000000100100000000000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_SW[8]~input_o\,
	dataf => \my_alu|rc|RippleCarryAdder:2:adder|ALT_INV_cout~0_combout\,
	combout => \my_alu|V~combout\);

-- Location: MLABCELL_X82_Y8_N18
\my_alu|C\ : cyclonev_lcell_comb
-- Equation(s):
-- \my_alu|C~combout\ = ( \SW[9]~input_o\ & ( \my_alu|rc|RippleCarryAdder:2:adder|cout~0_combout\ & ( (\SW[8]~input_o\ & ((!\SW[3]~input_o\) # (\SW[7]~input_o\))) ) ) ) # ( !\SW[9]~input_o\ & ( \my_alu|rc|RippleCarryAdder:2:adder|cout~0_combout\ & ( 
-- (\SW[8]~input_o\ & ((\SW[7]~input_o\) # (\SW[3]~input_o\))) ) ) ) # ( \SW[9]~input_o\ & ( !\my_alu|rc|RippleCarryAdder:2:adder|cout~0_combout\ & ( (!\SW[3]~input_o\ & (\SW[8]~input_o\ & \SW[7]~input_o\)) ) ) ) # ( !\SW[9]~input_o\ & ( 
-- !\my_alu|rc|RippleCarryAdder:2:adder|cout~0_combout\ & ( (\SW[3]~input_o\ & (\SW[8]~input_o\ & \SW[7]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000100000001000010011000100110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \my_alu|rc|RippleCarryAdder:2:adder|ALT_INV_cout~0_combout\,
	combout => \my_alu|C~combout\);

-- Location: LABCELL_X83_Y8_N9
\my_alu|Z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \my_alu|Z~0_combout\ = ( \my_alu|F[3]~0_combout\ & ( \my_alu|F[1]~2_combout\ & ( (!\SW[8]~input_o\) # ((!\my_alu|F[0]~3_combout\) # ((!\my_alu|F[2]~1_combout\) # (!\my_alu|result_carry_board_inverted\(3)))) ) ) ) # ( !\my_alu|F[3]~0_combout\ & ( 
-- \my_alu|F[1]~2_combout\ & ( (!\my_alu|F[0]~3_combout\) # ((!\my_alu|F[2]~1_combout\) # ((\SW[8]~input_o\ & !\my_alu|result_carry_board_inverted\(3)))) ) ) ) # ( \my_alu|F[3]~0_combout\ & ( !\my_alu|F[1]~2_combout\ ) ) # ( !\my_alu|F[3]~0_combout\ & ( 
-- !\my_alu|F[1]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111101111111001111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \my_alu|ALT_INV_F[0]~3_combout\,
	datac => \my_alu|ALT_INV_F[2]~1_combout\,
	datad => \my_alu|ALT_INV_result_carry_board_inverted\(3),
	datae => \my_alu|ALT_INV_F[3]~0_combout\,
	dataf => \my_alu|ALT_INV_F[1]~2_combout\,
	combout => \my_alu|Z~0_combout\);

-- Location: LABCELL_X55_Y13_N0
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


