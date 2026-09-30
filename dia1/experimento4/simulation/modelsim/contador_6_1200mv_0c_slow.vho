-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/29/2026 12:23:31"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	q_out : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- q_out[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[8]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[9]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[10]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[11]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[12]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[13]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[14]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[15]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[16]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[17]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[18]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[19]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[20]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[21]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[22]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[23]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[24]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[25]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[26]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[27]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[28]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[29]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[30]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q_out[31]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_q_out : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst2|count_reg[22]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q_out[0]~output_o\ : std_logic;
SIGNAL \q_out[1]~output_o\ : std_logic;
SIGNAL \q_out[2]~output_o\ : std_logic;
SIGNAL \q_out[3]~output_o\ : std_logic;
SIGNAL \q_out[4]~output_o\ : std_logic;
SIGNAL \q_out[5]~output_o\ : std_logic;
SIGNAL \q_out[6]~output_o\ : std_logic;
SIGNAL \q_out[7]~output_o\ : std_logic;
SIGNAL \q_out[8]~output_o\ : std_logic;
SIGNAL \q_out[9]~output_o\ : std_logic;
SIGNAL \q_out[10]~output_o\ : std_logic;
SIGNAL \q_out[11]~output_o\ : std_logic;
SIGNAL \q_out[12]~output_o\ : std_logic;
SIGNAL \q_out[13]~output_o\ : std_logic;
SIGNAL \q_out[14]~output_o\ : std_logic;
SIGNAL \q_out[15]~output_o\ : std_logic;
SIGNAL \q_out[16]~output_o\ : std_logic;
SIGNAL \q_out[17]~output_o\ : std_logic;
SIGNAL \q_out[18]~output_o\ : std_logic;
SIGNAL \q_out[19]~output_o\ : std_logic;
SIGNAL \q_out[20]~output_o\ : std_logic;
SIGNAL \q_out[21]~output_o\ : std_logic;
SIGNAL \q_out[22]~output_o\ : std_logic;
SIGNAL \q_out[23]~output_o\ : std_logic;
SIGNAL \q_out[24]~output_o\ : std_logic;
SIGNAL \q_out[25]~output_o\ : std_logic;
SIGNAL \q_out[26]~output_o\ : std_logic;
SIGNAL \q_out[27]~output_o\ : std_logic;
SIGNAL \q_out[28]~output_o\ : std_logic;
SIGNAL \q_out[29]~output_o\ : std_logic;
SIGNAL \q_out[30]~output_o\ : std_logic;
SIGNAL \q_out[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst2|count_reg[0]~66_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \b2v_inst2|count_reg[1]~22_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[1]~23\ : std_logic;
SIGNAL \b2v_inst2|count_reg[2]~24_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[2]~25\ : std_logic;
SIGNAL \b2v_inst2|count_reg[3]~26_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[3]~27\ : std_logic;
SIGNAL \b2v_inst2|count_reg[4]~28_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[4]~29\ : std_logic;
SIGNAL \b2v_inst2|count_reg[5]~30_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[5]~31\ : std_logic;
SIGNAL \b2v_inst2|count_reg[6]~32_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[6]~33\ : std_logic;
SIGNAL \b2v_inst2|count_reg[7]~34_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[7]~35\ : std_logic;
SIGNAL \b2v_inst2|count_reg[8]~36_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[8]~37\ : std_logic;
SIGNAL \b2v_inst2|count_reg[9]~38_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[9]~39\ : std_logic;
SIGNAL \b2v_inst2|count_reg[10]~40_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[10]~41\ : std_logic;
SIGNAL \b2v_inst2|count_reg[11]~42_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[11]~43\ : std_logic;
SIGNAL \b2v_inst2|count_reg[12]~44_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[12]~45\ : std_logic;
SIGNAL \b2v_inst2|count_reg[13]~46_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[13]~47\ : std_logic;
SIGNAL \b2v_inst2|count_reg[14]~48_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[14]~49\ : std_logic;
SIGNAL \b2v_inst2|count_reg[15]~50_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[15]~51\ : std_logic;
SIGNAL \b2v_inst2|count_reg[16]~52_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[16]~53\ : std_logic;
SIGNAL \b2v_inst2|count_reg[17]~54_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[17]~55\ : std_logic;
SIGNAL \b2v_inst2|count_reg[18]~56_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[18]~57\ : std_logic;
SIGNAL \b2v_inst2|count_reg[19]~58_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[19]~59\ : std_logic;
SIGNAL \b2v_inst2|count_reg[20]~60_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[20]~61\ : std_logic;
SIGNAL \b2v_inst2|count_reg[21]~62_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[21]~63\ : std_logic;
SIGNAL \b2v_inst2|count_reg[22]~64_combout\ : std_logic;
SIGNAL \b2v_inst2|count_reg[22]~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|count_reg[0]~93_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[1]~31_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[1]~32\ : std_logic;
SIGNAL \b2v_inst|count_reg[2]~33_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[2]~34\ : std_logic;
SIGNAL \b2v_inst|count_reg[3]~35_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[3]~36\ : std_logic;
SIGNAL \b2v_inst|count_reg[4]~37_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[4]~38\ : std_logic;
SIGNAL \b2v_inst|count_reg[5]~39_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[5]~40\ : std_logic;
SIGNAL \b2v_inst|count_reg[6]~41_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[6]~42\ : std_logic;
SIGNAL \b2v_inst|count_reg[7]~43_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[7]~44\ : std_logic;
SIGNAL \b2v_inst|count_reg[8]~45_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[8]~46\ : std_logic;
SIGNAL \b2v_inst|count_reg[9]~47_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[9]~48\ : std_logic;
SIGNAL \b2v_inst|count_reg[10]~49_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[10]~50\ : std_logic;
SIGNAL \b2v_inst|count_reg[11]~51_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[11]~52\ : std_logic;
SIGNAL \b2v_inst|count_reg[12]~53_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[12]~54\ : std_logic;
SIGNAL \b2v_inst|count_reg[13]~55_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[13]~56\ : std_logic;
SIGNAL \b2v_inst|count_reg[14]~57_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[14]~58\ : std_logic;
SIGNAL \b2v_inst|count_reg[15]~59_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[15]~60\ : std_logic;
SIGNAL \b2v_inst|count_reg[16]~61_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[16]~62\ : std_logic;
SIGNAL \b2v_inst|count_reg[17]~63_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[17]~64\ : std_logic;
SIGNAL \b2v_inst|count_reg[18]~65_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[18]~66\ : std_logic;
SIGNAL \b2v_inst|count_reg[19]~67_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[19]~68\ : std_logic;
SIGNAL \b2v_inst|count_reg[20]~69_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[20]~70\ : std_logic;
SIGNAL \b2v_inst|count_reg[21]~71_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[21]~72\ : std_logic;
SIGNAL \b2v_inst|count_reg[22]~73_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[22]~74\ : std_logic;
SIGNAL \b2v_inst|count_reg[23]~75_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[23]~76\ : std_logic;
SIGNAL \b2v_inst|count_reg[24]~77_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[24]~78\ : std_logic;
SIGNAL \b2v_inst|count_reg[25]~79_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[25]~80\ : std_logic;
SIGNAL \b2v_inst|count_reg[26]~81_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[26]~82\ : std_logic;
SIGNAL \b2v_inst|count_reg[27]~83_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[27]~84\ : std_logic;
SIGNAL \b2v_inst|count_reg[28]~85_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[28]~86\ : std_logic;
SIGNAL \b2v_inst|count_reg[29]~87_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[29]~88\ : std_logic;
SIGNAL \b2v_inst|count_reg[30]~89_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg[30]~90\ : std_logic;
SIGNAL \b2v_inst|count_reg[31]~91_combout\ : std_logic;
SIGNAL \b2v_inst|count_reg\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst2|count_reg\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
q_out <= ww_q_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst2|count_reg[22]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst2|count_reg\(22));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X38_Y34_N16
\q_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(0),
	devoe => ww_devoe,
	o => \q_out[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\q_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(1),
	devoe => ww_devoe,
	o => \q_out[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\q_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(2),
	devoe => ww_devoe,
	o => \q_out[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\q_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(3),
	devoe => ww_devoe,
	o => \q_out[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\q_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(4),
	devoe => ww_devoe,
	o => \q_out[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\q_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(5),
	devoe => ww_devoe,
	o => \q_out[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\q_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(6),
	devoe => ww_devoe,
	o => \q_out[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\q_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(7),
	devoe => ww_devoe,
	o => \q_out[7]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\q_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(8),
	devoe => ww_devoe,
	o => \q_out[8]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\q_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(9),
	devoe => ww_devoe,
	o => \q_out[9]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\q_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(10),
	devoe => ww_devoe,
	o => \q_out[10]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\q_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(11),
	devoe => ww_devoe,
	o => \q_out[11]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\q_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(12),
	devoe => ww_devoe,
	o => \q_out[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\q_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(13),
	devoe => ww_devoe,
	o => \q_out[13]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\q_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(14),
	devoe => ww_devoe,
	o => \q_out[14]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\q_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(15),
	devoe => ww_devoe,
	o => \q_out[15]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\q_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(16),
	devoe => ww_devoe,
	o => \q_out[16]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\q_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(17),
	devoe => ww_devoe,
	o => \q_out[17]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\q_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(18),
	devoe => ww_devoe,
	o => \q_out[18]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\q_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(19),
	devoe => ww_devoe,
	o => \q_out[19]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\q_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(20),
	devoe => ww_devoe,
	o => \q_out[20]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\q_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(21),
	devoe => ww_devoe,
	o => \q_out[21]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\q_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(22),
	devoe => ww_devoe,
	o => \q_out[22]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\q_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(23),
	devoe => ww_devoe,
	o => \q_out[23]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\q_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(24),
	devoe => ww_devoe,
	o => \q_out[24]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\q_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(25),
	devoe => ww_devoe,
	o => \q_out[25]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\q_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(26),
	devoe => ww_devoe,
	o => \q_out[26]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\q_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(27),
	devoe => ww_devoe,
	o => \q_out[27]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\q_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(28),
	devoe => ww_devoe,
	o => \q_out[28]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\q_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(29),
	devoe => ww_devoe,
	o => \q_out[29]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\q_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(30),
	devoe => ww_devoe,
	o => \q_out[30]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\q_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|count_reg\(31),
	devoe => ww_devoe,
	o => \q_out[31]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X52_Y18_N4
\b2v_inst2|count_reg[0]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[0]~66_combout\ = !\b2v_inst2|count_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|count_reg\(0),
	combout => \b2v_inst2|count_reg[0]~66_combout\);

-- Location: IOIBUF_X53_Y14_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X52_Y18_N5
\b2v_inst2|count_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[0]~66_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(0));

-- Location: LCCOMB_X52_Y18_N10
\b2v_inst2|count_reg[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[1]~22_combout\ = (\b2v_inst2|count_reg\(1) & (\b2v_inst2|count_reg\(0) $ (VCC))) # (!\b2v_inst2|count_reg\(1) & (\b2v_inst2|count_reg\(0) & VCC))
-- \b2v_inst2|count_reg[1]~23\ = CARRY((\b2v_inst2|count_reg\(1) & \b2v_inst2|count_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|count_reg\(1),
	datab => \b2v_inst2|count_reg\(0),
	datad => VCC,
	combout => \b2v_inst2|count_reg[1]~22_combout\,
	cout => \b2v_inst2|count_reg[1]~23\);

-- Location: FF_X52_Y18_N11
\b2v_inst2|count_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[1]~22_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(1));

-- Location: LCCOMB_X52_Y18_N12
\b2v_inst2|count_reg[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[2]~24_combout\ = (\b2v_inst2|count_reg\(2) & (!\b2v_inst2|count_reg[1]~23\)) # (!\b2v_inst2|count_reg\(2) & ((\b2v_inst2|count_reg[1]~23\) # (GND)))
-- \b2v_inst2|count_reg[2]~25\ = CARRY((!\b2v_inst2|count_reg[1]~23\) # (!\b2v_inst2|count_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|count_reg\(2),
	datad => VCC,
	cin => \b2v_inst2|count_reg[1]~23\,
	combout => \b2v_inst2|count_reg[2]~24_combout\,
	cout => \b2v_inst2|count_reg[2]~25\);

-- Location: FF_X52_Y18_N13
\b2v_inst2|count_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[2]~24_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(2));

-- Location: LCCOMB_X52_Y18_N14
\b2v_inst2|count_reg[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[3]~26_combout\ = (\b2v_inst2|count_reg\(3) & (\b2v_inst2|count_reg[2]~25\ $ (GND))) # (!\b2v_inst2|count_reg\(3) & (!\b2v_inst2|count_reg[2]~25\ & VCC))
-- \b2v_inst2|count_reg[3]~27\ = CARRY((\b2v_inst2|count_reg\(3) & !\b2v_inst2|count_reg[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|count_reg\(3),
	datad => VCC,
	cin => \b2v_inst2|count_reg[2]~25\,
	combout => \b2v_inst2|count_reg[3]~26_combout\,
	cout => \b2v_inst2|count_reg[3]~27\);

-- Location: FF_X52_Y18_N15
\b2v_inst2|count_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[3]~26_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(3));

-- Location: LCCOMB_X52_Y18_N16
\b2v_inst2|count_reg[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[4]~28_combout\ = (\b2v_inst2|count_reg\(4) & (!\b2v_inst2|count_reg[3]~27\)) # (!\b2v_inst2|count_reg\(4) & ((\b2v_inst2|count_reg[3]~27\) # (GND)))
-- \b2v_inst2|count_reg[4]~29\ = CARRY((!\b2v_inst2|count_reg[3]~27\) # (!\b2v_inst2|count_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|count_reg\(4),
	datad => VCC,
	cin => \b2v_inst2|count_reg[3]~27\,
	combout => \b2v_inst2|count_reg[4]~28_combout\,
	cout => \b2v_inst2|count_reg[4]~29\);

-- Location: FF_X52_Y18_N17
\b2v_inst2|count_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[4]~28_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(4));

-- Location: LCCOMB_X52_Y18_N18
\b2v_inst2|count_reg[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[5]~30_combout\ = (\b2v_inst2|count_reg\(5) & (\b2v_inst2|count_reg[4]~29\ $ (GND))) # (!\b2v_inst2|count_reg\(5) & (!\b2v_inst2|count_reg[4]~29\ & VCC))
-- \b2v_inst2|count_reg[5]~31\ = CARRY((\b2v_inst2|count_reg\(5) & !\b2v_inst2|count_reg[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|count_reg\(5),
	datad => VCC,
	cin => \b2v_inst2|count_reg[4]~29\,
	combout => \b2v_inst2|count_reg[5]~30_combout\,
	cout => \b2v_inst2|count_reg[5]~31\);

-- Location: FF_X52_Y18_N19
\b2v_inst2|count_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[5]~30_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(5));

-- Location: LCCOMB_X52_Y18_N20
\b2v_inst2|count_reg[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[6]~32_combout\ = (\b2v_inst2|count_reg\(6) & (!\b2v_inst2|count_reg[5]~31\)) # (!\b2v_inst2|count_reg\(6) & ((\b2v_inst2|count_reg[5]~31\) # (GND)))
-- \b2v_inst2|count_reg[6]~33\ = CARRY((!\b2v_inst2|count_reg[5]~31\) # (!\b2v_inst2|count_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|count_reg\(6),
	datad => VCC,
	cin => \b2v_inst2|count_reg[5]~31\,
	combout => \b2v_inst2|count_reg[6]~32_combout\,
	cout => \b2v_inst2|count_reg[6]~33\);

-- Location: FF_X52_Y18_N21
\b2v_inst2|count_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[6]~32_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(6));

-- Location: LCCOMB_X52_Y18_N22
\b2v_inst2|count_reg[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[7]~34_combout\ = (\b2v_inst2|count_reg\(7) & (\b2v_inst2|count_reg[6]~33\ $ (GND))) # (!\b2v_inst2|count_reg\(7) & (!\b2v_inst2|count_reg[6]~33\ & VCC))
-- \b2v_inst2|count_reg[7]~35\ = CARRY((\b2v_inst2|count_reg\(7) & !\b2v_inst2|count_reg[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|count_reg\(7),
	datad => VCC,
	cin => \b2v_inst2|count_reg[6]~33\,
	combout => \b2v_inst2|count_reg[7]~34_combout\,
	cout => \b2v_inst2|count_reg[7]~35\);

-- Location: FF_X52_Y18_N23
\b2v_inst2|count_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[7]~34_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(7));

-- Location: LCCOMB_X52_Y18_N24
\b2v_inst2|count_reg[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[8]~36_combout\ = (\b2v_inst2|count_reg\(8) & (!\b2v_inst2|count_reg[7]~35\)) # (!\b2v_inst2|count_reg\(8) & ((\b2v_inst2|count_reg[7]~35\) # (GND)))
-- \b2v_inst2|count_reg[8]~37\ = CARRY((!\b2v_inst2|count_reg[7]~35\) # (!\b2v_inst2|count_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|count_reg\(8),
	datad => VCC,
	cin => \b2v_inst2|count_reg[7]~35\,
	combout => \b2v_inst2|count_reg[8]~36_combout\,
	cout => \b2v_inst2|count_reg[8]~37\);

-- Location: FF_X52_Y18_N25
\b2v_inst2|count_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[8]~36_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(8));

-- Location: LCCOMB_X52_Y18_N26
\b2v_inst2|count_reg[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[9]~38_combout\ = (\b2v_inst2|count_reg\(9) & (\b2v_inst2|count_reg[8]~37\ $ (GND))) # (!\b2v_inst2|count_reg\(9) & (!\b2v_inst2|count_reg[8]~37\ & VCC))
-- \b2v_inst2|count_reg[9]~39\ = CARRY((\b2v_inst2|count_reg\(9) & !\b2v_inst2|count_reg[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|count_reg\(9),
	datad => VCC,
	cin => \b2v_inst2|count_reg[8]~37\,
	combout => \b2v_inst2|count_reg[9]~38_combout\,
	cout => \b2v_inst2|count_reg[9]~39\);

-- Location: FF_X52_Y18_N27
\b2v_inst2|count_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[9]~38_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(9));

-- Location: LCCOMB_X52_Y18_N28
\b2v_inst2|count_reg[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[10]~40_combout\ = (\b2v_inst2|count_reg\(10) & (!\b2v_inst2|count_reg[9]~39\)) # (!\b2v_inst2|count_reg\(10) & ((\b2v_inst2|count_reg[9]~39\) # (GND)))
-- \b2v_inst2|count_reg[10]~41\ = CARRY((!\b2v_inst2|count_reg[9]~39\) # (!\b2v_inst2|count_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|count_reg\(10),
	datad => VCC,
	cin => \b2v_inst2|count_reg[9]~39\,
	combout => \b2v_inst2|count_reg[10]~40_combout\,
	cout => \b2v_inst2|count_reg[10]~41\);

-- Location: FF_X52_Y18_N29
\b2v_inst2|count_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[10]~40_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(10));

-- Location: LCCOMB_X52_Y18_N30
\b2v_inst2|count_reg[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[11]~42_combout\ = (\b2v_inst2|count_reg\(11) & (\b2v_inst2|count_reg[10]~41\ $ (GND))) # (!\b2v_inst2|count_reg\(11) & (!\b2v_inst2|count_reg[10]~41\ & VCC))
-- \b2v_inst2|count_reg[11]~43\ = CARRY((\b2v_inst2|count_reg\(11) & !\b2v_inst2|count_reg[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|count_reg\(11),
	datad => VCC,
	cin => \b2v_inst2|count_reg[10]~41\,
	combout => \b2v_inst2|count_reg[11]~42_combout\,
	cout => \b2v_inst2|count_reg[11]~43\);

-- Location: FF_X52_Y18_N31
\b2v_inst2|count_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[11]~42_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(11));

-- Location: LCCOMB_X52_Y17_N0
\b2v_inst2|count_reg[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[12]~44_combout\ = (\b2v_inst2|count_reg\(12) & (!\b2v_inst2|count_reg[11]~43\)) # (!\b2v_inst2|count_reg\(12) & ((\b2v_inst2|count_reg[11]~43\) # (GND)))
-- \b2v_inst2|count_reg[12]~45\ = CARRY((!\b2v_inst2|count_reg[11]~43\) # (!\b2v_inst2|count_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|count_reg\(12),
	datad => VCC,
	cin => \b2v_inst2|count_reg[11]~43\,
	combout => \b2v_inst2|count_reg[12]~44_combout\,
	cout => \b2v_inst2|count_reg[12]~45\);

-- Location: FF_X52_Y17_N1
\b2v_inst2|count_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[12]~44_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(12));

-- Location: LCCOMB_X52_Y17_N2
\b2v_inst2|count_reg[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[13]~46_combout\ = (\b2v_inst2|count_reg\(13) & (\b2v_inst2|count_reg[12]~45\ $ (GND))) # (!\b2v_inst2|count_reg\(13) & (!\b2v_inst2|count_reg[12]~45\ & VCC))
-- \b2v_inst2|count_reg[13]~47\ = CARRY((\b2v_inst2|count_reg\(13) & !\b2v_inst2|count_reg[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|count_reg\(13),
	datad => VCC,
	cin => \b2v_inst2|count_reg[12]~45\,
	combout => \b2v_inst2|count_reg[13]~46_combout\,
	cout => \b2v_inst2|count_reg[13]~47\);

-- Location: FF_X52_Y17_N3
\b2v_inst2|count_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[13]~46_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(13));

-- Location: LCCOMB_X52_Y17_N4
\b2v_inst2|count_reg[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[14]~48_combout\ = (\b2v_inst2|count_reg\(14) & (!\b2v_inst2|count_reg[13]~47\)) # (!\b2v_inst2|count_reg\(14) & ((\b2v_inst2|count_reg[13]~47\) # (GND)))
-- \b2v_inst2|count_reg[14]~49\ = CARRY((!\b2v_inst2|count_reg[13]~47\) # (!\b2v_inst2|count_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|count_reg\(14),
	datad => VCC,
	cin => \b2v_inst2|count_reg[13]~47\,
	combout => \b2v_inst2|count_reg[14]~48_combout\,
	cout => \b2v_inst2|count_reg[14]~49\);

-- Location: FF_X52_Y17_N5
\b2v_inst2|count_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[14]~48_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(14));

-- Location: LCCOMB_X52_Y17_N6
\b2v_inst2|count_reg[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[15]~50_combout\ = (\b2v_inst2|count_reg\(15) & (\b2v_inst2|count_reg[14]~49\ $ (GND))) # (!\b2v_inst2|count_reg\(15) & (!\b2v_inst2|count_reg[14]~49\ & VCC))
-- \b2v_inst2|count_reg[15]~51\ = CARRY((\b2v_inst2|count_reg\(15) & !\b2v_inst2|count_reg[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|count_reg\(15),
	datad => VCC,
	cin => \b2v_inst2|count_reg[14]~49\,
	combout => \b2v_inst2|count_reg[15]~50_combout\,
	cout => \b2v_inst2|count_reg[15]~51\);

-- Location: FF_X52_Y17_N7
\b2v_inst2|count_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[15]~50_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(15));

-- Location: LCCOMB_X52_Y17_N8
\b2v_inst2|count_reg[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[16]~52_combout\ = (\b2v_inst2|count_reg\(16) & (!\b2v_inst2|count_reg[15]~51\)) # (!\b2v_inst2|count_reg\(16) & ((\b2v_inst2|count_reg[15]~51\) # (GND)))
-- \b2v_inst2|count_reg[16]~53\ = CARRY((!\b2v_inst2|count_reg[15]~51\) # (!\b2v_inst2|count_reg\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|count_reg\(16),
	datad => VCC,
	cin => \b2v_inst2|count_reg[15]~51\,
	combout => \b2v_inst2|count_reg[16]~52_combout\,
	cout => \b2v_inst2|count_reg[16]~53\);

-- Location: FF_X52_Y17_N9
\b2v_inst2|count_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[16]~52_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(16));

-- Location: LCCOMB_X52_Y17_N10
\b2v_inst2|count_reg[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[17]~54_combout\ = (\b2v_inst2|count_reg\(17) & (\b2v_inst2|count_reg[16]~53\ $ (GND))) # (!\b2v_inst2|count_reg\(17) & (!\b2v_inst2|count_reg[16]~53\ & VCC))
-- \b2v_inst2|count_reg[17]~55\ = CARRY((\b2v_inst2|count_reg\(17) & !\b2v_inst2|count_reg[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|count_reg\(17),
	datad => VCC,
	cin => \b2v_inst2|count_reg[16]~53\,
	combout => \b2v_inst2|count_reg[17]~54_combout\,
	cout => \b2v_inst2|count_reg[17]~55\);

-- Location: FF_X52_Y17_N11
\b2v_inst2|count_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[17]~54_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(17));

-- Location: LCCOMB_X52_Y17_N12
\b2v_inst2|count_reg[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[18]~56_combout\ = (\b2v_inst2|count_reg\(18) & (!\b2v_inst2|count_reg[17]~55\)) # (!\b2v_inst2|count_reg\(18) & ((\b2v_inst2|count_reg[17]~55\) # (GND)))
-- \b2v_inst2|count_reg[18]~57\ = CARRY((!\b2v_inst2|count_reg[17]~55\) # (!\b2v_inst2|count_reg\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|count_reg\(18),
	datad => VCC,
	cin => \b2v_inst2|count_reg[17]~55\,
	combout => \b2v_inst2|count_reg[18]~56_combout\,
	cout => \b2v_inst2|count_reg[18]~57\);

-- Location: FF_X52_Y17_N13
\b2v_inst2|count_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[18]~56_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(18));

-- Location: LCCOMB_X52_Y17_N14
\b2v_inst2|count_reg[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[19]~58_combout\ = (\b2v_inst2|count_reg\(19) & (\b2v_inst2|count_reg[18]~57\ $ (GND))) # (!\b2v_inst2|count_reg\(19) & (!\b2v_inst2|count_reg[18]~57\ & VCC))
-- \b2v_inst2|count_reg[19]~59\ = CARRY((\b2v_inst2|count_reg\(19) & !\b2v_inst2|count_reg[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|count_reg\(19),
	datad => VCC,
	cin => \b2v_inst2|count_reg[18]~57\,
	combout => \b2v_inst2|count_reg[19]~58_combout\,
	cout => \b2v_inst2|count_reg[19]~59\);

-- Location: FF_X52_Y17_N15
\b2v_inst2|count_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[19]~58_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(19));

-- Location: LCCOMB_X52_Y17_N16
\b2v_inst2|count_reg[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[20]~60_combout\ = (\b2v_inst2|count_reg\(20) & (!\b2v_inst2|count_reg[19]~59\)) # (!\b2v_inst2|count_reg\(20) & ((\b2v_inst2|count_reg[19]~59\) # (GND)))
-- \b2v_inst2|count_reg[20]~61\ = CARRY((!\b2v_inst2|count_reg[19]~59\) # (!\b2v_inst2|count_reg\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|count_reg\(20),
	datad => VCC,
	cin => \b2v_inst2|count_reg[19]~59\,
	combout => \b2v_inst2|count_reg[20]~60_combout\,
	cout => \b2v_inst2|count_reg[20]~61\);

-- Location: FF_X52_Y17_N17
\b2v_inst2|count_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[20]~60_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(20));

-- Location: LCCOMB_X52_Y17_N18
\b2v_inst2|count_reg[21]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[21]~62_combout\ = (\b2v_inst2|count_reg\(21) & (\b2v_inst2|count_reg[20]~61\ $ (GND))) # (!\b2v_inst2|count_reg\(21) & (!\b2v_inst2|count_reg[20]~61\ & VCC))
-- \b2v_inst2|count_reg[21]~63\ = CARRY((\b2v_inst2|count_reg\(21) & !\b2v_inst2|count_reg[20]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|count_reg\(21),
	datad => VCC,
	cin => \b2v_inst2|count_reg[20]~61\,
	combout => \b2v_inst2|count_reg[21]~62_combout\,
	cout => \b2v_inst2|count_reg[21]~63\);

-- Location: FF_X52_Y17_N19
\b2v_inst2|count_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[21]~62_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(21));

-- Location: LCCOMB_X52_Y17_N20
\b2v_inst2|count_reg[22]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst2|count_reg[22]~64_combout\ = \b2v_inst2|count_reg\(22) $ (\b2v_inst2|count_reg[21]~63\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|count_reg\(22),
	cin => \b2v_inst2|count_reg[21]~63\,
	combout => \b2v_inst2|count_reg[22]~64_combout\);

-- Location: FF_X52_Y17_N21
\b2v_inst2|count_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst2|count_reg[22]~64_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst2|count_reg\(22));

-- Location: CLKCTRL_G8
\b2v_inst2|count_reg[22]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst2|count_reg[22]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst2|count_reg[22]~clkctrl_outclk\);

-- Location: LCCOMB_X7_Y4_N0
\b2v_inst|count_reg[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[0]~93_combout\ = !\b2v_inst|count_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|count_reg\(0),
	combout => \b2v_inst|count_reg[0]~93_combout\);

-- Location: FF_X7_Y4_N1
\b2v_inst|count_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[0]~93_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(0));

-- Location: LCCOMB_X7_Y4_N2
\b2v_inst|count_reg[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[1]~31_combout\ = (\b2v_inst|count_reg\(0) & (\b2v_inst|count_reg\(1) $ (VCC))) # (!\b2v_inst|count_reg\(0) & (\b2v_inst|count_reg\(1) & VCC))
-- \b2v_inst|count_reg[1]~32\ = CARRY((\b2v_inst|count_reg\(0) & \b2v_inst|count_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_reg\(0),
	datab => \b2v_inst|count_reg\(1),
	datad => VCC,
	combout => \b2v_inst|count_reg[1]~31_combout\,
	cout => \b2v_inst|count_reg[1]~32\);

-- Location: FF_X7_Y4_N3
\b2v_inst|count_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[1]~31_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(1));

-- Location: LCCOMB_X7_Y4_N4
\b2v_inst|count_reg[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[2]~33_combout\ = (\b2v_inst|count_reg\(2) & (!\b2v_inst|count_reg[1]~32\)) # (!\b2v_inst|count_reg\(2) & ((\b2v_inst|count_reg[1]~32\) # (GND)))
-- \b2v_inst|count_reg[2]~34\ = CARRY((!\b2v_inst|count_reg[1]~32\) # (!\b2v_inst|count_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(2),
	datad => VCC,
	cin => \b2v_inst|count_reg[1]~32\,
	combout => \b2v_inst|count_reg[2]~33_combout\,
	cout => \b2v_inst|count_reg[2]~34\);

-- Location: FF_X7_Y4_N5
\b2v_inst|count_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[2]~33_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(2));

-- Location: LCCOMB_X7_Y4_N6
\b2v_inst|count_reg[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[3]~35_combout\ = (\b2v_inst|count_reg\(3) & (\b2v_inst|count_reg[2]~34\ $ (GND))) # (!\b2v_inst|count_reg\(3) & (!\b2v_inst|count_reg[2]~34\ & VCC))
-- \b2v_inst|count_reg[3]~36\ = CARRY((\b2v_inst|count_reg\(3) & !\b2v_inst|count_reg[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_reg\(3),
	datad => VCC,
	cin => \b2v_inst|count_reg[2]~34\,
	combout => \b2v_inst|count_reg[3]~35_combout\,
	cout => \b2v_inst|count_reg[3]~36\);

-- Location: FF_X7_Y4_N7
\b2v_inst|count_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[3]~35_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(3));

-- Location: LCCOMB_X7_Y4_N8
\b2v_inst|count_reg[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[4]~37_combout\ = (\b2v_inst|count_reg\(4) & (!\b2v_inst|count_reg[3]~36\)) # (!\b2v_inst|count_reg\(4) & ((\b2v_inst|count_reg[3]~36\) # (GND)))
-- \b2v_inst|count_reg[4]~38\ = CARRY((!\b2v_inst|count_reg[3]~36\) # (!\b2v_inst|count_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(4),
	datad => VCC,
	cin => \b2v_inst|count_reg[3]~36\,
	combout => \b2v_inst|count_reg[4]~37_combout\,
	cout => \b2v_inst|count_reg[4]~38\);

-- Location: FF_X7_Y4_N9
\b2v_inst|count_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[4]~37_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(4));

-- Location: LCCOMB_X7_Y4_N10
\b2v_inst|count_reg[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[5]~39_combout\ = (\b2v_inst|count_reg\(5) & (\b2v_inst|count_reg[4]~38\ $ (GND))) # (!\b2v_inst|count_reg\(5) & (!\b2v_inst|count_reg[4]~38\ & VCC))
-- \b2v_inst|count_reg[5]~40\ = CARRY((\b2v_inst|count_reg\(5) & !\b2v_inst|count_reg[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_reg\(5),
	datad => VCC,
	cin => \b2v_inst|count_reg[4]~38\,
	combout => \b2v_inst|count_reg[5]~39_combout\,
	cout => \b2v_inst|count_reg[5]~40\);

-- Location: FF_X7_Y4_N11
\b2v_inst|count_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[5]~39_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(5));

-- Location: LCCOMB_X7_Y4_N12
\b2v_inst|count_reg[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[6]~41_combout\ = (\b2v_inst|count_reg\(6) & (!\b2v_inst|count_reg[5]~40\)) # (!\b2v_inst|count_reg\(6) & ((\b2v_inst|count_reg[5]~40\) # (GND)))
-- \b2v_inst|count_reg[6]~42\ = CARRY((!\b2v_inst|count_reg[5]~40\) # (!\b2v_inst|count_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(6),
	datad => VCC,
	cin => \b2v_inst|count_reg[5]~40\,
	combout => \b2v_inst|count_reg[6]~41_combout\,
	cout => \b2v_inst|count_reg[6]~42\);

-- Location: FF_X7_Y4_N13
\b2v_inst|count_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[6]~41_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(6));

-- Location: LCCOMB_X7_Y4_N14
\b2v_inst|count_reg[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[7]~43_combout\ = (\b2v_inst|count_reg\(7) & (\b2v_inst|count_reg[6]~42\ $ (GND))) # (!\b2v_inst|count_reg\(7) & (!\b2v_inst|count_reg[6]~42\ & VCC))
-- \b2v_inst|count_reg[7]~44\ = CARRY((\b2v_inst|count_reg\(7) & !\b2v_inst|count_reg[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(7),
	datad => VCC,
	cin => \b2v_inst|count_reg[6]~42\,
	combout => \b2v_inst|count_reg[7]~43_combout\,
	cout => \b2v_inst|count_reg[7]~44\);

-- Location: FF_X7_Y4_N15
\b2v_inst|count_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[7]~43_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(7));

-- Location: LCCOMB_X7_Y4_N16
\b2v_inst|count_reg[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[8]~45_combout\ = (\b2v_inst|count_reg\(8) & (!\b2v_inst|count_reg[7]~44\)) # (!\b2v_inst|count_reg\(8) & ((\b2v_inst|count_reg[7]~44\) # (GND)))
-- \b2v_inst|count_reg[8]~46\ = CARRY((!\b2v_inst|count_reg[7]~44\) # (!\b2v_inst|count_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(8),
	datad => VCC,
	cin => \b2v_inst|count_reg[7]~44\,
	combout => \b2v_inst|count_reg[8]~45_combout\,
	cout => \b2v_inst|count_reg[8]~46\);

-- Location: FF_X7_Y4_N17
\b2v_inst|count_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[8]~45_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(8));

-- Location: LCCOMB_X7_Y4_N18
\b2v_inst|count_reg[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[9]~47_combout\ = (\b2v_inst|count_reg\(9) & (\b2v_inst|count_reg[8]~46\ $ (GND))) # (!\b2v_inst|count_reg\(9) & (!\b2v_inst|count_reg[8]~46\ & VCC))
-- \b2v_inst|count_reg[9]~48\ = CARRY((\b2v_inst|count_reg\(9) & !\b2v_inst|count_reg[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(9),
	datad => VCC,
	cin => \b2v_inst|count_reg[8]~46\,
	combout => \b2v_inst|count_reg[9]~47_combout\,
	cout => \b2v_inst|count_reg[9]~48\);

-- Location: FF_X7_Y4_N19
\b2v_inst|count_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[9]~47_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(9));

-- Location: LCCOMB_X7_Y4_N20
\b2v_inst|count_reg[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[10]~49_combout\ = (\b2v_inst|count_reg\(10) & (!\b2v_inst|count_reg[9]~48\)) # (!\b2v_inst|count_reg\(10) & ((\b2v_inst|count_reg[9]~48\) # (GND)))
-- \b2v_inst|count_reg[10]~50\ = CARRY((!\b2v_inst|count_reg[9]~48\) # (!\b2v_inst|count_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(10),
	datad => VCC,
	cin => \b2v_inst|count_reg[9]~48\,
	combout => \b2v_inst|count_reg[10]~49_combout\,
	cout => \b2v_inst|count_reg[10]~50\);

-- Location: FF_X7_Y4_N21
\b2v_inst|count_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[10]~49_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(10));

-- Location: LCCOMB_X7_Y4_N22
\b2v_inst|count_reg[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[11]~51_combout\ = (\b2v_inst|count_reg\(11) & (\b2v_inst|count_reg[10]~50\ $ (GND))) # (!\b2v_inst|count_reg\(11) & (!\b2v_inst|count_reg[10]~50\ & VCC))
-- \b2v_inst|count_reg[11]~52\ = CARRY((\b2v_inst|count_reg\(11) & !\b2v_inst|count_reg[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_reg\(11),
	datad => VCC,
	cin => \b2v_inst|count_reg[10]~50\,
	combout => \b2v_inst|count_reg[11]~51_combout\,
	cout => \b2v_inst|count_reg[11]~52\);

-- Location: FF_X7_Y4_N23
\b2v_inst|count_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[11]~51_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(11));

-- Location: LCCOMB_X7_Y4_N24
\b2v_inst|count_reg[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[12]~53_combout\ = (\b2v_inst|count_reg\(12) & (!\b2v_inst|count_reg[11]~52\)) # (!\b2v_inst|count_reg\(12) & ((\b2v_inst|count_reg[11]~52\) # (GND)))
-- \b2v_inst|count_reg[12]~54\ = CARRY((!\b2v_inst|count_reg[11]~52\) # (!\b2v_inst|count_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(12),
	datad => VCC,
	cin => \b2v_inst|count_reg[11]~52\,
	combout => \b2v_inst|count_reg[12]~53_combout\,
	cout => \b2v_inst|count_reg[12]~54\);

-- Location: FF_X7_Y4_N25
\b2v_inst|count_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[12]~53_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(12));

-- Location: LCCOMB_X7_Y4_N26
\b2v_inst|count_reg[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[13]~55_combout\ = (\b2v_inst|count_reg\(13) & (\b2v_inst|count_reg[12]~54\ $ (GND))) # (!\b2v_inst|count_reg\(13) & (!\b2v_inst|count_reg[12]~54\ & VCC))
-- \b2v_inst|count_reg[13]~56\ = CARRY((\b2v_inst|count_reg\(13) & !\b2v_inst|count_reg[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_reg\(13),
	datad => VCC,
	cin => \b2v_inst|count_reg[12]~54\,
	combout => \b2v_inst|count_reg[13]~55_combout\,
	cout => \b2v_inst|count_reg[13]~56\);

-- Location: FF_X7_Y4_N27
\b2v_inst|count_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[13]~55_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(13));

-- Location: LCCOMB_X7_Y4_N28
\b2v_inst|count_reg[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[14]~57_combout\ = (\b2v_inst|count_reg\(14) & (!\b2v_inst|count_reg[13]~56\)) # (!\b2v_inst|count_reg\(14) & ((\b2v_inst|count_reg[13]~56\) # (GND)))
-- \b2v_inst|count_reg[14]~58\ = CARRY((!\b2v_inst|count_reg[13]~56\) # (!\b2v_inst|count_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(14),
	datad => VCC,
	cin => \b2v_inst|count_reg[13]~56\,
	combout => \b2v_inst|count_reg[14]~57_combout\,
	cout => \b2v_inst|count_reg[14]~58\);

-- Location: FF_X7_Y4_N29
\b2v_inst|count_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[14]~57_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(14));

-- Location: LCCOMB_X7_Y4_N30
\b2v_inst|count_reg[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[15]~59_combout\ = (\b2v_inst|count_reg\(15) & (\b2v_inst|count_reg[14]~58\ $ (GND))) # (!\b2v_inst|count_reg\(15) & (!\b2v_inst|count_reg[14]~58\ & VCC))
-- \b2v_inst|count_reg[15]~60\ = CARRY((\b2v_inst|count_reg\(15) & !\b2v_inst|count_reg[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_reg\(15),
	datad => VCC,
	cin => \b2v_inst|count_reg[14]~58\,
	combout => \b2v_inst|count_reg[15]~59_combout\,
	cout => \b2v_inst|count_reg[15]~60\);

-- Location: FF_X7_Y4_N31
\b2v_inst|count_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[15]~59_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(15));

-- Location: LCCOMB_X7_Y3_N0
\b2v_inst|count_reg[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[16]~61_combout\ = (\b2v_inst|count_reg\(16) & (!\b2v_inst|count_reg[15]~60\)) # (!\b2v_inst|count_reg\(16) & ((\b2v_inst|count_reg[15]~60\) # (GND)))
-- \b2v_inst|count_reg[16]~62\ = CARRY((!\b2v_inst|count_reg[15]~60\) # (!\b2v_inst|count_reg\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(16),
	datad => VCC,
	cin => \b2v_inst|count_reg[15]~60\,
	combout => \b2v_inst|count_reg[16]~61_combout\,
	cout => \b2v_inst|count_reg[16]~62\);

-- Location: FF_X7_Y3_N1
\b2v_inst|count_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[16]~61_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(16));

-- Location: LCCOMB_X7_Y3_N2
\b2v_inst|count_reg[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[17]~63_combout\ = (\b2v_inst|count_reg\(17) & (\b2v_inst|count_reg[16]~62\ $ (GND))) # (!\b2v_inst|count_reg\(17) & (!\b2v_inst|count_reg[16]~62\ & VCC))
-- \b2v_inst|count_reg[17]~64\ = CARRY((\b2v_inst|count_reg\(17) & !\b2v_inst|count_reg[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(17),
	datad => VCC,
	cin => \b2v_inst|count_reg[16]~62\,
	combout => \b2v_inst|count_reg[17]~63_combout\,
	cout => \b2v_inst|count_reg[17]~64\);

-- Location: FF_X7_Y3_N3
\b2v_inst|count_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[17]~63_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(17));

-- Location: LCCOMB_X7_Y3_N4
\b2v_inst|count_reg[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[18]~65_combout\ = (\b2v_inst|count_reg\(18) & (!\b2v_inst|count_reg[17]~64\)) # (!\b2v_inst|count_reg\(18) & ((\b2v_inst|count_reg[17]~64\) # (GND)))
-- \b2v_inst|count_reg[18]~66\ = CARRY((!\b2v_inst|count_reg[17]~64\) # (!\b2v_inst|count_reg\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(18),
	datad => VCC,
	cin => \b2v_inst|count_reg[17]~64\,
	combout => \b2v_inst|count_reg[18]~65_combout\,
	cout => \b2v_inst|count_reg[18]~66\);

-- Location: FF_X7_Y3_N5
\b2v_inst|count_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[18]~65_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(18));

-- Location: LCCOMB_X7_Y3_N6
\b2v_inst|count_reg[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[19]~67_combout\ = (\b2v_inst|count_reg\(19) & (\b2v_inst|count_reg[18]~66\ $ (GND))) # (!\b2v_inst|count_reg\(19) & (!\b2v_inst|count_reg[18]~66\ & VCC))
-- \b2v_inst|count_reg[19]~68\ = CARRY((\b2v_inst|count_reg\(19) & !\b2v_inst|count_reg[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_reg\(19),
	datad => VCC,
	cin => \b2v_inst|count_reg[18]~66\,
	combout => \b2v_inst|count_reg[19]~67_combout\,
	cout => \b2v_inst|count_reg[19]~68\);

-- Location: FF_X7_Y3_N7
\b2v_inst|count_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[19]~67_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(19));

-- Location: LCCOMB_X7_Y3_N8
\b2v_inst|count_reg[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[20]~69_combout\ = (\b2v_inst|count_reg\(20) & (!\b2v_inst|count_reg[19]~68\)) # (!\b2v_inst|count_reg\(20) & ((\b2v_inst|count_reg[19]~68\) # (GND)))
-- \b2v_inst|count_reg[20]~70\ = CARRY((!\b2v_inst|count_reg[19]~68\) # (!\b2v_inst|count_reg\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(20),
	datad => VCC,
	cin => \b2v_inst|count_reg[19]~68\,
	combout => \b2v_inst|count_reg[20]~69_combout\,
	cout => \b2v_inst|count_reg[20]~70\);

-- Location: FF_X7_Y3_N9
\b2v_inst|count_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[20]~69_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(20));

-- Location: LCCOMB_X7_Y3_N10
\b2v_inst|count_reg[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[21]~71_combout\ = (\b2v_inst|count_reg\(21) & (\b2v_inst|count_reg[20]~70\ $ (GND))) # (!\b2v_inst|count_reg\(21) & (!\b2v_inst|count_reg[20]~70\ & VCC))
-- \b2v_inst|count_reg[21]~72\ = CARRY((\b2v_inst|count_reg\(21) & !\b2v_inst|count_reg[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_reg\(21),
	datad => VCC,
	cin => \b2v_inst|count_reg[20]~70\,
	combout => \b2v_inst|count_reg[21]~71_combout\,
	cout => \b2v_inst|count_reg[21]~72\);

-- Location: FF_X7_Y3_N11
\b2v_inst|count_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[21]~71_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(21));

-- Location: LCCOMB_X7_Y3_N12
\b2v_inst|count_reg[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[22]~73_combout\ = (\b2v_inst|count_reg\(22) & (!\b2v_inst|count_reg[21]~72\)) # (!\b2v_inst|count_reg\(22) & ((\b2v_inst|count_reg[21]~72\) # (GND)))
-- \b2v_inst|count_reg[22]~74\ = CARRY((!\b2v_inst|count_reg[21]~72\) # (!\b2v_inst|count_reg\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_reg\(22),
	datad => VCC,
	cin => \b2v_inst|count_reg[21]~72\,
	combout => \b2v_inst|count_reg[22]~73_combout\,
	cout => \b2v_inst|count_reg[22]~74\);

-- Location: FF_X7_Y3_N13
\b2v_inst|count_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[22]~73_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(22));

-- Location: LCCOMB_X7_Y3_N14
\b2v_inst|count_reg[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[23]~75_combout\ = (\b2v_inst|count_reg\(23) & (\b2v_inst|count_reg[22]~74\ $ (GND))) # (!\b2v_inst|count_reg\(23) & (!\b2v_inst|count_reg[22]~74\ & VCC))
-- \b2v_inst|count_reg[23]~76\ = CARRY((\b2v_inst|count_reg\(23) & !\b2v_inst|count_reg[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(23),
	datad => VCC,
	cin => \b2v_inst|count_reg[22]~74\,
	combout => \b2v_inst|count_reg[23]~75_combout\,
	cout => \b2v_inst|count_reg[23]~76\);

-- Location: FF_X7_Y3_N15
\b2v_inst|count_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[23]~75_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(23));

-- Location: LCCOMB_X7_Y3_N16
\b2v_inst|count_reg[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[24]~77_combout\ = (\b2v_inst|count_reg\(24) & (!\b2v_inst|count_reg[23]~76\)) # (!\b2v_inst|count_reg\(24) & ((\b2v_inst|count_reg[23]~76\) # (GND)))
-- \b2v_inst|count_reg[24]~78\ = CARRY((!\b2v_inst|count_reg[23]~76\) # (!\b2v_inst|count_reg\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(24),
	datad => VCC,
	cin => \b2v_inst|count_reg[23]~76\,
	combout => \b2v_inst|count_reg[24]~77_combout\,
	cout => \b2v_inst|count_reg[24]~78\);

-- Location: FF_X7_Y3_N17
\b2v_inst|count_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[24]~77_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(24));

-- Location: LCCOMB_X7_Y3_N18
\b2v_inst|count_reg[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[25]~79_combout\ = (\b2v_inst|count_reg\(25) & (\b2v_inst|count_reg[24]~78\ $ (GND))) # (!\b2v_inst|count_reg\(25) & (!\b2v_inst|count_reg[24]~78\ & VCC))
-- \b2v_inst|count_reg[25]~80\ = CARRY((\b2v_inst|count_reg\(25) & !\b2v_inst|count_reg[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(25),
	datad => VCC,
	cin => \b2v_inst|count_reg[24]~78\,
	combout => \b2v_inst|count_reg[25]~79_combout\,
	cout => \b2v_inst|count_reg[25]~80\);

-- Location: FF_X7_Y3_N19
\b2v_inst|count_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[25]~79_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(25));

-- Location: LCCOMB_X7_Y3_N20
\b2v_inst|count_reg[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[26]~81_combout\ = (\b2v_inst|count_reg\(26) & (!\b2v_inst|count_reg[25]~80\)) # (!\b2v_inst|count_reg\(26) & ((\b2v_inst|count_reg[25]~80\) # (GND)))
-- \b2v_inst|count_reg[26]~82\ = CARRY((!\b2v_inst|count_reg[25]~80\) # (!\b2v_inst|count_reg\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(26),
	datad => VCC,
	cin => \b2v_inst|count_reg[25]~80\,
	combout => \b2v_inst|count_reg[26]~81_combout\,
	cout => \b2v_inst|count_reg[26]~82\);

-- Location: FF_X7_Y3_N21
\b2v_inst|count_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[26]~81_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(26));

-- Location: LCCOMB_X7_Y3_N22
\b2v_inst|count_reg[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[27]~83_combout\ = (\b2v_inst|count_reg\(27) & (\b2v_inst|count_reg[26]~82\ $ (GND))) # (!\b2v_inst|count_reg\(27) & (!\b2v_inst|count_reg[26]~82\ & VCC))
-- \b2v_inst|count_reg[27]~84\ = CARRY((\b2v_inst|count_reg\(27) & !\b2v_inst|count_reg[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_reg\(27),
	datad => VCC,
	cin => \b2v_inst|count_reg[26]~82\,
	combout => \b2v_inst|count_reg[27]~83_combout\,
	cout => \b2v_inst|count_reg[27]~84\);

-- Location: FF_X7_Y3_N23
\b2v_inst|count_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[27]~83_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(27));

-- Location: LCCOMB_X7_Y3_N24
\b2v_inst|count_reg[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[28]~85_combout\ = (\b2v_inst|count_reg\(28) & (!\b2v_inst|count_reg[27]~84\)) # (!\b2v_inst|count_reg\(28) & ((\b2v_inst|count_reg[27]~84\) # (GND)))
-- \b2v_inst|count_reg[28]~86\ = CARRY((!\b2v_inst|count_reg[27]~84\) # (!\b2v_inst|count_reg\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(28),
	datad => VCC,
	cin => \b2v_inst|count_reg[27]~84\,
	combout => \b2v_inst|count_reg[28]~85_combout\,
	cout => \b2v_inst|count_reg[28]~86\);

-- Location: FF_X7_Y3_N25
\b2v_inst|count_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[28]~85_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(28));

-- Location: LCCOMB_X7_Y3_N26
\b2v_inst|count_reg[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[29]~87_combout\ = (\b2v_inst|count_reg\(29) & (\b2v_inst|count_reg[28]~86\ $ (GND))) # (!\b2v_inst|count_reg\(29) & (!\b2v_inst|count_reg[28]~86\ & VCC))
-- \b2v_inst|count_reg[29]~88\ = CARRY((\b2v_inst|count_reg\(29) & !\b2v_inst|count_reg[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_reg\(29),
	datad => VCC,
	cin => \b2v_inst|count_reg[28]~86\,
	combout => \b2v_inst|count_reg[29]~87_combout\,
	cout => \b2v_inst|count_reg[29]~88\);

-- Location: FF_X7_Y3_N27
\b2v_inst|count_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[29]~87_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(29));

-- Location: LCCOMB_X7_Y3_N28
\b2v_inst|count_reg[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[30]~89_combout\ = (\b2v_inst|count_reg\(30) & (!\b2v_inst|count_reg[29]~88\)) # (!\b2v_inst|count_reg\(30) & ((\b2v_inst|count_reg[29]~88\) # (GND)))
-- \b2v_inst|count_reg[30]~90\ = CARRY((!\b2v_inst|count_reg[29]~88\) # (!\b2v_inst|count_reg\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_reg\(30),
	datad => VCC,
	cin => \b2v_inst|count_reg[29]~88\,
	combout => \b2v_inst|count_reg[30]~89_combout\,
	cout => \b2v_inst|count_reg[30]~90\);

-- Location: FF_X7_Y3_N29
\b2v_inst|count_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[30]~89_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(30));

-- Location: LCCOMB_X7_Y3_N30
\b2v_inst|count_reg[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|count_reg[31]~91_combout\ = \b2v_inst|count_reg\(31) $ (!\b2v_inst|count_reg[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_reg\(31),
	cin => \b2v_inst|count_reg[30]~90\,
	combout => \b2v_inst|count_reg[31]~91_combout\);

-- Location: FF_X7_Y3_N31
\b2v_inst|count_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst2|count_reg[22]~clkctrl_outclk\,
	d => \b2v_inst|count_reg[31]~91_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|count_reg\(31));

ww_q_out(0) <= \q_out[0]~output_o\;

ww_q_out(1) <= \q_out[1]~output_o\;

ww_q_out(2) <= \q_out[2]~output_o\;

ww_q_out(3) <= \q_out[3]~output_o\;

ww_q_out(4) <= \q_out[4]~output_o\;

ww_q_out(5) <= \q_out[5]~output_o\;

ww_q_out(6) <= \q_out[6]~output_o\;

ww_q_out(7) <= \q_out[7]~output_o\;

ww_q_out(8) <= \q_out[8]~output_o\;

ww_q_out(9) <= \q_out[9]~output_o\;

ww_q_out(10) <= \q_out[10]~output_o\;

ww_q_out(11) <= \q_out[11]~output_o\;

ww_q_out(12) <= \q_out[12]~output_o\;

ww_q_out(13) <= \q_out[13]~output_o\;

ww_q_out(14) <= \q_out[14]~output_o\;

ww_q_out(15) <= \q_out[15]~output_o\;

ww_q_out(16) <= \q_out[16]~output_o\;

ww_q_out(17) <= \q_out[17]~output_o\;

ww_q_out(18) <= \q_out[18]~output_o\;

ww_q_out(19) <= \q_out[19]~output_o\;

ww_q_out(20) <= \q_out[20]~output_o\;

ww_q_out(21) <= \q_out[21]~output_o\;

ww_q_out(22) <= \q_out[22]~output_o\;

ww_q_out(23) <= \q_out[23]~output_o\;

ww_q_out(24) <= \q_out[24]~output_o\;

ww_q_out(25) <= \q_out[25]~output_o\;

ww_q_out(26) <= \q_out[26]~output_o\;

ww_q_out(27) <= \q_out[27]~output_o\;

ww_q_out(28) <= \q_out[28]~output_o\;

ww_q_out(29) <= \q_out[29]~output_o\;

ww_q_out(30) <= \q_out[30]~output_o\;

ww_q_out(31) <= \q_out[31]~output_o\;
END structure;


