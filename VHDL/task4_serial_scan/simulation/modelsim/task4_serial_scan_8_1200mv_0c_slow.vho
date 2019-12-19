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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Standard Edition"

-- DATE "11/02/2019 14:40:11"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	task4_serial_scan IS
    PORT (
	dataout : OUT std_logic_vector(0 TO 7);
	clk : IN std_logic;
	en_out : OUT std_logic_vector(0 TO 3)
	);
END task4_serial_scan;

-- Design Ports Information
-- dataout[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_out[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_out[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_out[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_out[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF task4_serial_scan IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dataout : std_logic_vector(0 TO 7);
SIGNAL ww_clk : std_logic;
SIGNAL ww_en_out : std_logic_vector(0 TO 3);
SIGNAL \inst|clk_10ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|sig_ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|sig_us~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataout[0]~output_o\ : std_logic;
SIGNAL \dataout[1]~output_o\ : std_logic;
SIGNAL \dataout[2]~output_o\ : std_logic;
SIGNAL \dataout[3]~output_o\ : std_logic;
SIGNAL \dataout[4]~output_o\ : std_logic;
SIGNAL \dataout[5]~output_o\ : std_logic;
SIGNAL \dataout[6]~output_o\ : std_logic;
SIGNAL \dataout[7]~output_o\ : std_logic;
SIGNAL \en_out[0]~output_o\ : std_logic;
SIGNAL \en_out[1]~output_o\ : std_logic;
SIGNAL \en_out[2]~output_o\ : std_logic;
SIGNAL \en_out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|q_1us[0]~6_combout\ : std_logic;
SIGNAL \inst|q_1us[0]~7\ : std_logic;
SIGNAL \inst|q_1us[1]~8_combout\ : std_logic;
SIGNAL \inst|q_1us[1]~9\ : std_logic;
SIGNAL \inst|q_1us[2]~10_combout\ : std_logic;
SIGNAL \inst|q_1us[2]~11\ : std_logic;
SIGNAL \inst|q_1us[3]~12_combout\ : std_logic;
SIGNAL \inst|q_1us[3]~13\ : std_logic;
SIGNAL \inst|q_1us[4]~14_combout\ : std_logic;
SIGNAL \inst|q_1us[4]~15\ : std_logic;
SIGNAL \inst|q_1us[5]~16_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|sig_us~feeder_combout\ : std_logic;
SIGNAL \inst|sig_us~q\ : std_logic;
SIGNAL \inst|sig_us~clkctrl_outclk\ : std_logic;
SIGNAL \inst|q_1ms[0]~10_combout\ : std_logic;
SIGNAL \inst|q_1ms[0]~11\ : std_logic;
SIGNAL \inst|q_1ms[1]~12_combout\ : std_logic;
SIGNAL \inst|q_1ms[1]~13\ : std_logic;
SIGNAL \inst|q_1ms[2]~14_combout\ : std_logic;
SIGNAL \inst|q_1ms[2]~15\ : std_logic;
SIGNAL \inst|q_1ms[3]~16_combout\ : std_logic;
SIGNAL \inst|q_1ms[3]~17\ : std_logic;
SIGNAL \inst|q_1ms[4]~18_combout\ : std_logic;
SIGNAL \inst|q_1ms[4]~19\ : std_logic;
SIGNAL \inst|q_1ms[5]~20_combout\ : std_logic;
SIGNAL \inst|q_1ms[5]~21\ : std_logic;
SIGNAL \inst|q_1ms[6]~22_combout\ : std_logic;
SIGNAL \inst|q_1ms[6]~23\ : std_logic;
SIGNAL \inst|q_1ms[7]~24_combout\ : std_logic;
SIGNAL \inst|q_1ms[7]~25\ : std_logic;
SIGNAL \inst|q_1ms[8]~26_combout\ : std_logic;
SIGNAL \inst|q_1ms[8]~27\ : std_logic;
SIGNAL \inst|q_1ms[9]~28_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~2_combout\ : std_logic;
SIGNAL \inst|sig_ms~feeder_combout\ : std_logic;
SIGNAL \inst|sig_ms~q\ : std_logic;
SIGNAL \inst|sig_ms~clkctrl_outclk\ : std_logic;
SIGNAL \inst|q_10ms~0_combout\ : std_logic;
SIGNAL \inst|q_10ms~3_combout\ : std_logic;
SIGNAL \inst|q_10ms~1_combout\ : std_logic;
SIGNAL \inst|q_10ms~2_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|sig_10ms~q\ : std_logic;
SIGNAL \inst|clk_10ms~q\ : std_logic;
SIGNAL \inst|clk_10ms~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst4|Add0~65_combout\ : std_logic;
SIGNAL \inst4|Add0~1\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst4|Add0~66_combout\ : std_logic;
SIGNAL \inst4|Add0~3\ : std_logic;
SIGNAL \inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst4|Add0~67_combout\ : std_logic;
SIGNAL \inst4|Add0~5\ : std_logic;
SIGNAL \inst4|Add0~6_combout\ : std_logic;
SIGNAL \inst4|Add0~68_combout\ : std_logic;
SIGNAL \inst4|Add0~7\ : std_logic;
SIGNAL \inst4|Add0~8_combout\ : std_logic;
SIGNAL \inst4|Add0~69_combout\ : std_logic;
SIGNAL \inst4|Add0~9\ : std_logic;
SIGNAL \inst4|Add0~10_combout\ : std_logic;
SIGNAL \inst4|Add0~70_combout\ : std_logic;
SIGNAL \inst4|Add0~11\ : std_logic;
SIGNAL \inst4|Add0~12_combout\ : std_logic;
SIGNAL \inst4|Add0~71_combout\ : std_logic;
SIGNAL \inst4|Add0~13\ : std_logic;
SIGNAL \inst4|Add0~14_combout\ : std_logic;
SIGNAL \inst4|Add0~72_combout\ : std_logic;
SIGNAL \inst4|Add0~15\ : std_logic;
SIGNAL \inst4|Add0~16_combout\ : std_logic;
SIGNAL \inst4|Add0~73_combout\ : std_logic;
SIGNAL \inst4|Add0~17\ : std_logic;
SIGNAL \inst4|Add0~18_combout\ : std_logic;
SIGNAL \inst4|Add0~74_combout\ : std_logic;
SIGNAL \inst4|Add0~19\ : std_logic;
SIGNAL \inst4|Add0~20_combout\ : std_logic;
SIGNAL \inst4|Add0~75_combout\ : std_logic;
SIGNAL \inst4|Add0~21\ : std_logic;
SIGNAL \inst4|Add0~22_combout\ : std_logic;
SIGNAL \inst4|Add0~76_combout\ : std_logic;
SIGNAL \inst4|Add0~23\ : std_logic;
SIGNAL \inst4|Add0~24_combout\ : std_logic;
SIGNAL \inst4|Add0~77_combout\ : std_logic;
SIGNAL \inst4|Add0~25\ : std_logic;
SIGNAL \inst4|Add0~26_combout\ : std_logic;
SIGNAL \inst4|Add0~78_combout\ : std_logic;
SIGNAL \inst4|Add0~27\ : std_logic;
SIGNAL \inst4|Add0~28_combout\ : std_logic;
SIGNAL \inst4|Add0~79_combout\ : std_logic;
SIGNAL \inst4|Add0~29\ : std_logic;
SIGNAL \inst4|Add0~30_combout\ : std_logic;
SIGNAL \inst4|Add0~80_combout\ : std_logic;
SIGNAL \inst4|Add0~31\ : std_logic;
SIGNAL \inst4|Add0~32_combout\ : std_logic;
SIGNAL \inst4|Add0~81_combout\ : std_logic;
SIGNAL \inst4|Add0~33\ : std_logic;
SIGNAL \inst4|Add0~34_combout\ : std_logic;
SIGNAL \inst4|Add0~82_combout\ : std_logic;
SIGNAL \inst4|Add0~35\ : std_logic;
SIGNAL \inst4|Add0~36_combout\ : std_logic;
SIGNAL \inst4|Add0~83_combout\ : std_logic;
SIGNAL \inst4|Add0~37\ : std_logic;
SIGNAL \inst4|Add0~38_combout\ : std_logic;
SIGNAL \inst4|Add0~84_combout\ : std_logic;
SIGNAL \inst4|Add0~39\ : std_logic;
SIGNAL \inst4|Add0~40_combout\ : std_logic;
SIGNAL \inst4|Add0~85_combout\ : std_logic;
SIGNAL \inst4|Add0~41\ : std_logic;
SIGNAL \inst4|Add0~42_combout\ : std_logic;
SIGNAL \inst4|Add0~86_combout\ : std_logic;
SIGNAL \inst4|Add0~43\ : std_logic;
SIGNAL \inst4|Add0~44_combout\ : std_logic;
SIGNAL \inst4|Add0~87_combout\ : std_logic;
SIGNAL \inst4|Add0~45\ : std_logic;
SIGNAL \inst4|Add0~46_combout\ : std_logic;
SIGNAL \inst4|Add0~88_combout\ : std_logic;
SIGNAL \inst4|Add0~47\ : std_logic;
SIGNAL \inst4|Add0~48_combout\ : std_logic;
SIGNAL \inst4|Add0~89_combout\ : std_logic;
SIGNAL \inst4|Add0~49\ : std_logic;
SIGNAL \inst4|Add0~50_combout\ : std_logic;
SIGNAL \inst4|Add0~90_combout\ : std_logic;
SIGNAL \inst4|Add0~51\ : std_logic;
SIGNAL \inst4|Add0~52_combout\ : std_logic;
SIGNAL \inst4|Add0~91_combout\ : std_logic;
SIGNAL \inst4|Add0~53\ : std_logic;
SIGNAL \inst4|Add0~54_combout\ : std_logic;
SIGNAL \inst4|Add0~92_combout\ : std_logic;
SIGNAL \inst4|Add0~55\ : std_logic;
SIGNAL \inst4|Add0~56_combout\ : std_logic;
SIGNAL \inst4|Add0~93_combout\ : std_logic;
SIGNAL \inst4|Add0~57\ : std_logic;
SIGNAL \inst4|Add0~58_combout\ : std_logic;
SIGNAL \inst4|Add0~94_combout\ : std_logic;
SIGNAL \inst4|Add0~59\ : std_logic;
SIGNAL \inst4|Add0~60_combout\ : std_logic;
SIGNAL \inst4|Add0~95_combout\ : std_logic;
SIGNAL \inst4|Add0~61\ : std_logic;
SIGNAL \inst4|Add0~62_combout\ : std_logic;
SIGNAL \inst4|Add0~64_combout\ : std_logic;
SIGNAL \inst4|LessThan0~6_combout\ : std_logic;
SIGNAL \inst4|LessThan0~5_combout\ : std_logic;
SIGNAL \inst4|LessThan0~7_combout\ : std_logic;
SIGNAL \inst4|LessThan0~8_combout\ : std_logic;
SIGNAL \inst4|LessThan0~9_combout\ : std_logic;
SIGNAL \inst4|LessThan0~1_combout\ : std_logic;
SIGNAL \inst4|LessThan0~2_combout\ : std_logic;
SIGNAL \inst4|LessThan0~3_combout\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst4|LessThan0~4_combout\ : std_logic;
SIGNAL \inst4|LessThan0~10_combout\ : std_logic;
SIGNAL \inst4|count[0]~1_combout\ : std_logic;
SIGNAL \inst4|count[1]~0_combout\ : std_logic;
SIGNAL \inst4|Equal2~0_combout\ : std_logic;
SIGNAL \inst4|dataout[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|Equal2~1_combout\ : std_logic;
SIGNAL \inst4|dataout[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|dataout[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|en_out~0_combout\ : std_logic;
SIGNAL \inst4|dataout[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|dataout[6]~0_combout\ : std_logic;
SIGNAL \inst4|en_out[1]~1_combout\ : std_logic;
SIGNAL \inst4|en_out[2]~2_combout\ : std_logic;
SIGNAL \inst4|Equal2~2_combout\ : std_logic;
SIGNAL \inst4|en_out\ : std_logic_vector(0 TO 3);
SIGNAL \inst|q_1ms\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|q_1us\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|q_10ms\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|dataout\ : std_logic_vector(0 TO 7);
SIGNAL \inst4|count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|CNT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst4|ALT_INV_Add0~64_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

dataout <= ww_dataout;
ww_clk <= clk;
en_out <= ww_en_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|clk_10ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clk_10ms~q\);

\inst|sig_ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|sig_ms~q\);

\inst|sig_us~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|sig_us~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst4|ALT_INV_Add0~64_combout\ <= NOT \inst4|Add0~64_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N16
\dataout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|dataout\(0),
	devoe => ww_devoe,
	o => \dataout[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\dataout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dataout[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\dataout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|dataout\(2),
	devoe => ww_devoe,
	o => \dataout[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\dataout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|dataout\(3),
	devoe => ww_devoe,
	o => \dataout[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\dataout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|dataout\(4),
	devoe => ww_devoe,
	o => \dataout[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\dataout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|dataout\(5),
	devoe => ww_devoe,
	o => \dataout[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\dataout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|dataout\(6),
	devoe => ww_devoe,
	o => \dataout[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\dataout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \dataout[7]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\en_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|en_out\(0),
	devoe => ww_devoe,
	o => \en_out[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\en_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|en_out\(1),
	devoe => ww_devoe,
	o => \en_out[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\en_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|en_out\(2),
	devoe => ww_devoe,
	o => \en_out[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\en_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|en_out\(3),
	devoe => ww_devoe,
	o => \en_out[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X33_Y12_N4
\inst|q_1us[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1us[0]~6_combout\ = \inst|q_1us\(0) $ (VCC)
-- \inst|q_1us[0]~7\ = CARRY(\inst|q_1us\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_1us\(0),
	datad => VCC,
	combout => \inst|q_1us[0]~6_combout\,
	cout => \inst|q_1us[0]~7\);

-- Location: FF_X33_Y12_N5
\inst|q_1us[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|q_1us[0]~6_combout\,
	sclr => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1us\(0));

-- Location: LCCOMB_X33_Y12_N6
\inst|q_1us[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1us[1]~8_combout\ = (\inst|q_1us\(1) & (!\inst|q_1us[0]~7\)) # (!\inst|q_1us\(1) & ((\inst|q_1us[0]~7\) # (GND)))
-- \inst|q_1us[1]~9\ = CARRY((!\inst|q_1us[0]~7\) # (!\inst|q_1us\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_1us\(1),
	datad => VCC,
	cin => \inst|q_1us[0]~7\,
	combout => \inst|q_1us[1]~8_combout\,
	cout => \inst|q_1us[1]~9\);

-- Location: FF_X33_Y12_N7
\inst|q_1us[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|q_1us[1]~8_combout\,
	sclr => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1us\(1));

-- Location: LCCOMB_X33_Y12_N8
\inst|q_1us[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1us[2]~10_combout\ = (\inst|q_1us\(2) & (\inst|q_1us[1]~9\ $ (GND))) # (!\inst|q_1us\(2) & (!\inst|q_1us[1]~9\ & VCC))
-- \inst|q_1us[2]~11\ = CARRY((\inst|q_1us\(2) & !\inst|q_1us[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_1us\(2),
	datad => VCC,
	cin => \inst|q_1us[1]~9\,
	combout => \inst|q_1us[2]~10_combout\,
	cout => \inst|q_1us[2]~11\);

-- Location: FF_X33_Y12_N9
\inst|q_1us[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|q_1us[2]~10_combout\,
	sclr => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1us\(2));

-- Location: LCCOMB_X33_Y12_N10
\inst|q_1us[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1us[3]~12_combout\ = (\inst|q_1us\(3) & (!\inst|q_1us[2]~11\)) # (!\inst|q_1us\(3) & ((\inst|q_1us[2]~11\) # (GND)))
-- \inst|q_1us[3]~13\ = CARRY((!\inst|q_1us[2]~11\) # (!\inst|q_1us\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_1us\(3),
	datad => VCC,
	cin => \inst|q_1us[2]~11\,
	combout => \inst|q_1us[3]~12_combout\,
	cout => \inst|q_1us[3]~13\);

-- Location: FF_X33_Y12_N11
\inst|q_1us[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|q_1us[3]~12_combout\,
	sclr => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1us\(3));

-- Location: LCCOMB_X33_Y12_N12
\inst|q_1us[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1us[4]~14_combout\ = (\inst|q_1us\(4) & (\inst|q_1us[3]~13\ $ (GND))) # (!\inst|q_1us\(4) & (!\inst|q_1us[3]~13\ & VCC))
-- \inst|q_1us[4]~15\ = CARRY((\inst|q_1us\(4) & !\inst|q_1us[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_1us\(4),
	datad => VCC,
	cin => \inst|q_1us[3]~13\,
	combout => \inst|q_1us[4]~14_combout\,
	cout => \inst|q_1us[4]~15\);

-- Location: FF_X33_Y12_N13
\inst|q_1us[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|q_1us[4]~14_combout\,
	sclr => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1us\(4));

-- Location: LCCOMB_X33_Y12_N14
\inst|q_1us[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1us[5]~16_combout\ = \inst|q_1us\(5) $ (\inst|q_1us[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_1us\(5),
	cin => \inst|q_1us[4]~15\,
	combout => \inst|q_1us[5]~16_combout\);

-- Location: FF_X33_Y12_N15
\inst|q_1us[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|q_1us[5]~16_combout\,
	sclr => \inst|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1us\(5));

-- Location: LCCOMB_X33_Y12_N20
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|q_1us\(3) & (!\inst|q_1us\(2) & (!\inst|q_1us\(0) & !\inst|q_1us\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_1us\(3),
	datab => \inst|q_1us\(2),
	datac => \inst|q_1us\(0),
	datad => \inst|q_1us\(1),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y12_N18
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|q_1us\(4) & (\inst|q_1us\(5) & !\inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_1us\(4),
	datac => \inst|q_1us\(5),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y12_N22
\inst|sig_us~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sig_us~feeder_combout\ = \inst|LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|sig_us~feeder_combout\);

-- Location: FF_X33_Y12_N23
\inst|sig_us\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|sig_us~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sig_us~q\);

-- Location: CLKCTRL_G9
\inst|sig_us~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|sig_us~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|sig_us~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y12_N2
\inst|q_1ms[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1ms[0]~10_combout\ = \inst|q_1ms\(0) $ (VCC)
-- \inst|q_1ms[0]~11\ = CARRY(\inst|q_1ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_1ms\(0),
	datad => VCC,
	combout => \inst|q_1ms[0]~10_combout\,
	cout => \inst|q_1ms[0]~11\);

-- Location: FF_X31_Y12_N3
\inst|q_1ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_us~clkctrl_outclk\,
	d => \inst|q_1ms[0]~10_combout\,
	sclr => \inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1ms\(0));

-- Location: LCCOMB_X31_Y12_N4
\inst|q_1ms[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1ms[1]~12_combout\ = (\inst|q_1ms\(1) & (!\inst|q_1ms[0]~11\)) # (!\inst|q_1ms\(1) & ((\inst|q_1ms[0]~11\) # (GND)))
-- \inst|q_1ms[1]~13\ = CARRY((!\inst|q_1ms[0]~11\) # (!\inst|q_1ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_1ms\(1),
	datad => VCC,
	cin => \inst|q_1ms[0]~11\,
	combout => \inst|q_1ms[1]~12_combout\,
	cout => \inst|q_1ms[1]~13\);

-- Location: FF_X31_Y12_N5
\inst|q_1ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_us~clkctrl_outclk\,
	d => \inst|q_1ms[1]~12_combout\,
	sclr => \inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1ms\(1));

-- Location: LCCOMB_X31_Y12_N6
\inst|q_1ms[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1ms[2]~14_combout\ = (\inst|q_1ms\(2) & (\inst|q_1ms[1]~13\ $ (GND))) # (!\inst|q_1ms\(2) & (!\inst|q_1ms[1]~13\ & VCC))
-- \inst|q_1ms[2]~15\ = CARRY((\inst|q_1ms\(2) & !\inst|q_1ms[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_1ms\(2),
	datad => VCC,
	cin => \inst|q_1ms[1]~13\,
	combout => \inst|q_1ms[2]~14_combout\,
	cout => \inst|q_1ms[2]~15\);

-- Location: FF_X31_Y12_N7
\inst|q_1ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_us~clkctrl_outclk\,
	d => \inst|q_1ms[2]~14_combout\,
	sclr => \inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1ms\(2));

-- Location: LCCOMB_X31_Y12_N8
\inst|q_1ms[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1ms[3]~16_combout\ = (\inst|q_1ms\(3) & (!\inst|q_1ms[2]~15\)) # (!\inst|q_1ms\(3) & ((\inst|q_1ms[2]~15\) # (GND)))
-- \inst|q_1ms[3]~17\ = CARRY((!\inst|q_1ms[2]~15\) # (!\inst|q_1ms\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_1ms\(3),
	datad => VCC,
	cin => \inst|q_1ms[2]~15\,
	combout => \inst|q_1ms[3]~16_combout\,
	cout => \inst|q_1ms[3]~17\);

-- Location: FF_X31_Y12_N9
\inst|q_1ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_us~clkctrl_outclk\,
	d => \inst|q_1ms[3]~16_combout\,
	sclr => \inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1ms\(3));

-- Location: LCCOMB_X31_Y12_N10
\inst|q_1ms[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1ms[4]~18_combout\ = (\inst|q_1ms\(4) & (\inst|q_1ms[3]~17\ $ (GND))) # (!\inst|q_1ms\(4) & (!\inst|q_1ms[3]~17\ & VCC))
-- \inst|q_1ms[4]~19\ = CARRY((\inst|q_1ms\(4) & !\inst|q_1ms[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_1ms\(4),
	datad => VCC,
	cin => \inst|q_1ms[3]~17\,
	combout => \inst|q_1ms[4]~18_combout\,
	cout => \inst|q_1ms[4]~19\);

-- Location: FF_X31_Y12_N11
\inst|q_1ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_us~clkctrl_outclk\,
	d => \inst|q_1ms[4]~18_combout\,
	sclr => \inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1ms\(4));

-- Location: LCCOMB_X31_Y12_N12
\inst|q_1ms[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1ms[5]~20_combout\ = (\inst|q_1ms\(5) & (!\inst|q_1ms[4]~19\)) # (!\inst|q_1ms\(5) & ((\inst|q_1ms[4]~19\) # (GND)))
-- \inst|q_1ms[5]~21\ = CARRY((!\inst|q_1ms[4]~19\) # (!\inst|q_1ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_1ms\(5),
	datad => VCC,
	cin => \inst|q_1ms[4]~19\,
	combout => \inst|q_1ms[5]~20_combout\,
	cout => \inst|q_1ms[5]~21\);

-- Location: FF_X31_Y12_N13
\inst|q_1ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_us~clkctrl_outclk\,
	d => \inst|q_1ms[5]~20_combout\,
	sclr => \inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1ms\(5));

-- Location: LCCOMB_X31_Y12_N14
\inst|q_1ms[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1ms[6]~22_combout\ = (\inst|q_1ms\(6) & (\inst|q_1ms[5]~21\ $ (GND))) # (!\inst|q_1ms\(6) & (!\inst|q_1ms[5]~21\ & VCC))
-- \inst|q_1ms[6]~23\ = CARRY((\inst|q_1ms\(6) & !\inst|q_1ms[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_1ms\(6),
	datad => VCC,
	cin => \inst|q_1ms[5]~21\,
	combout => \inst|q_1ms[6]~22_combout\,
	cout => \inst|q_1ms[6]~23\);

-- Location: FF_X31_Y12_N15
\inst|q_1ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_us~clkctrl_outclk\,
	d => \inst|q_1ms[6]~22_combout\,
	sclr => \inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1ms\(6));

-- Location: LCCOMB_X31_Y12_N16
\inst|q_1ms[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1ms[7]~24_combout\ = (\inst|q_1ms\(7) & (!\inst|q_1ms[6]~23\)) # (!\inst|q_1ms\(7) & ((\inst|q_1ms[6]~23\) # (GND)))
-- \inst|q_1ms[7]~25\ = CARRY((!\inst|q_1ms[6]~23\) # (!\inst|q_1ms\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_1ms\(7),
	datad => VCC,
	cin => \inst|q_1ms[6]~23\,
	combout => \inst|q_1ms[7]~24_combout\,
	cout => \inst|q_1ms[7]~25\);

-- Location: FF_X31_Y12_N17
\inst|q_1ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_us~clkctrl_outclk\,
	d => \inst|q_1ms[7]~24_combout\,
	sclr => \inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1ms\(7));

-- Location: LCCOMB_X31_Y12_N18
\inst|q_1ms[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1ms[8]~26_combout\ = (\inst|q_1ms\(8) & (\inst|q_1ms[7]~25\ $ (GND))) # (!\inst|q_1ms\(8) & (!\inst|q_1ms[7]~25\ & VCC))
-- \inst|q_1ms[8]~27\ = CARRY((\inst|q_1ms\(8) & !\inst|q_1ms[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_1ms\(8),
	datad => VCC,
	cin => \inst|q_1ms[7]~25\,
	combout => \inst|q_1ms[8]~26_combout\,
	cout => \inst|q_1ms[8]~27\);

-- Location: FF_X31_Y12_N19
\inst|q_1ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_us~clkctrl_outclk\,
	d => \inst|q_1ms[8]~26_combout\,
	sclr => \inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1ms\(8));

-- Location: LCCOMB_X31_Y12_N20
\inst|q_1ms[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_1ms[9]~28_combout\ = \inst|q_1ms[8]~27\ $ (\inst|q_1ms\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|q_1ms\(9),
	cin => \inst|q_1ms[8]~27\,
	combout => \inst|q_1ms[9]~28_combout\);

-- Location: FF_X31_Y12_N21
\inst|q_1ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_us~clkctrl_outclk\,
	d => \inst|q_1ms[9]~28_combout\,
	sclr => \inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_1ms\(9));

-- Location: LCCOMB_X31_Y12_N26
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (((!\inst|q_1ms\(7)) # (!\inst|q_1ms\(6))) # (!\inst|q_1ms\(8))) # (!\inst|q_1ms\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_1ms\(5),
	datab => \inst|q_1ms\(8),
	datac => \inst|q_1ms\(6),
	datad => \inst|q_1ms\(7),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y12_N24
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (!\inst|q_1ms\(3) & (((!\inst|q_1ms\(0)) # (!\inst|q_1ms\(1))) # (!\inst|q_1ms\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_1ms\(2),
	datab => \inst|q_1ms\(3),
	datac => \inst|q_1ms\(1),
	datad => \inst|q_1ms\(0),
	combout => \inst|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y12_N22
\inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~2_combout\ = (\inst|q_1ms\(9) & (!\inst|LessThan1~0_combout\ & ((\inst|q_1ms\(4)) # (!\inst|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_1ms\(4),
	datab => \inst|q_1ms\(9),
	datac => \inst|LessThan1~0_combout\,
	datad => \inst|LessThan1~1_combout\,
	combout => \inst|LessThan1~2_combout\);

-- Location: LCCOMB_X31_Y12_N28
\inst|sig_ms~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sig_ms~feeder_combout\ = \inst|LessThan1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan1~2_combout\,
	combout => \inst|sig_ms~feeder_combout\);

-- Location: FF_X31_Y12_N29
\inst|sig_ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_us~clkctrl_outclk\,
	d => \inst|sig_ms~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sig_ms~q\);

-- Location: CLKCTRL_G8
\inst|sig_ms~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|sig_ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|sig_ms~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y12_N28
\inst|q_10ms~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_10ms~0_combout\ = (!\inst|q_10ms\(0) & (((!\inst|q_10ms\(2) & !\inst|q_10ms\(1))) # (!\inst|q_10ms\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_10ms\(2),
	datab => \inst|q_10ms\(3),
	datac => \inst|q_10ms\(0),
	datad => \inst|q_10ms\(1),
	combout => \inst|q_10ms~0_combout\);

-- Location: FF_X32_Y12_N29
\inst|q_10ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_ms~clkctrl_outclk\,
	d => \inst|q_10ms~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_10ms\(0));

-- Location: LCCOMB_X32_Y12_N24
\inst|q_10ms~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_10ms~3_combout\ = (\inst|q_10ms\(2) & (\inst|q_10ms\(0) & (!\inst|q_10ms\(3) & \inst|q_10ms\(1)))) # (!\inst|q_10ms\(2) & (!\inst|q_10ms\(0) & (\inst|q_10ms\(3) & !\inst|q_10ms\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_10ms\(2),
	datab => \inst|q_10ms\(0),
	datac => \inst|q_10ms\(3),
	datad => \inst|q_10ms\(1),
	combout => \inst|q_10ms~3_combout\);

-- Location: FF_X32_Y12_N25
\inst|q_10ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_ms~clkctrl_outclk\,
	d => \inst|q_10ms~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_10ms\(3));

-- Location: LCCOMB_X32_Y12_N20
\inst|q_10ms~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_10ms~1_combout\ = (!\inst|q_10ms\(3) & (\inst|q_10ms\(1) $ (\inst|q_10ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|q_10ms\(3),
	datac => \inst|q_10ms\(1),
	datad => \inst|q_10ms\(0),
	combout => \inst|q_10ms~1_combout\);

-- Location: FF_X32_Y12_N21
\inst|q_10ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_ms~clkctrl_outclk\,
	d => \inst|q_10ms~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_10ms\(1));

-- Location: LCCOMB_X32_Y12_N26
\inst|q_10ms~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q_10ms~2_combout\ = (!\inst|q_10ms\(3) & (\inst|q_10ms\(2) $ (((\inst|q_10ms\(1) & \inst|q_10ms\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_10ms\(1),
	datab => \inst|q_10ms\(3),
	datac => \inst|q_10ms\(2),
	datad => \inst|q_10ms\(0),
	combout => \inst|q_10ms~2_combout\);

-- Location: FF_X32_Y12_N27
\inst|q_10ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_ms~clkctrl_outclk\,
	d => \inst|q_10ms~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q_10ms\(2));

-- Location: LCCOMB_X32_Y12_N22
\inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = (\inst|q_10ms\(3) & ((\inst|q_10ms\(2)) # ((\inst|q_10ms\(1)) # (\inst|q_10ms\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q_10ms\(2),
	datab => \inst|q_10ms\(1),
	datac => \inst|q_10ms\(0),
	datad => \inst|q_10ms\(3),
	combout => \inst|LessThan2~0_combout\);

-- Location: FF_X32_Y12_N23
\inst|sig_10ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|sig_ms~clkctrl_outclk\,
	d => \inst|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sig_10ms~q\);

-- Location: FF_X32_Y12_N31
\inst|clk_10ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|sig_10ms~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_10ms~q\);

-- Location: CLKCTRL_G6
\inst|clk_10ms~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clk_10ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clk_10ms~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y21_N0
\inst4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = \inst4|CNT\(0) $ (VCC)
-- \inst4|Add0~1\ = CARRY(\inst4|CNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(0),
	datad => VCC,
	combout => \inst4|Add0~0_combout\,
	cout => \inst4|Add0~1\);

-- Location: LCCOMB_X14_Y21_N0
\inst4|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~65_combout\ = (\inst4|Add0~0_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~0_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~65_combout\);

-- Location: FF_X13_Y21_N21
\inst4|CNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	asdata => \inst4|Add0~65_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(0));

-- Location: LCCOMB_X13_Y21_N2
\inst4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = (\inst4|CNT\(1) & (!\inst4|Add0~1\)) # (!\inst4|CNT\(1) & ((\inst4|Add0~1\) # (GND)))
-- \inst4|Add0~3\ = CARRY((!\inst4|Add0~1\) # (!\inst4|CNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(1),
	datad => VCC,
	cin => \inst4|Add0~1\,
	combout => \inst4|Add0~2_combout\,
	cout => \inst4|Add0~3\);

-- Location: LCCOMB_X14_Y21_N10
\inst4|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~66_combout\ = (\inst4|Add0~2_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~2_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~66_combout\);

-- Location: FF_X13_Y21_N9
\inst4|CNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	asdata => \inst4|Add0~66_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(1));

-- Location: LCCOMB_X13_Y21_N4
\inst4|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~4_combout\ = (\inst4|CNT\(2) & (\inst4|Add0~3\ $ (GND))) # (!\inst4|CNT\(2) & (!\inst4|Add0~3\ & VCC))
-- \inst4|Add0~5\ = CARRY((\inst4|CNT\(2) & !\inst4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(2),
	datad => VCC,
	cin => \inst4|Add0~3\,
	combout => \inst4|Add0~4_combout\,
	cout => \inst4|Add0~5\);

-- Location: LCCOMB_X14_Y21_N12
\inst4|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~67_combout\ = (\inst4|Add0~4_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~4_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~67_combout\);

-- Location: FF_X13_Y21_N7
\inst4|CNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	asdata => \inst4|Add0~67_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(2));

-- Location: LCCOMB_X13_Y21_N6
\inst4|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~6_combout\ = (\inst4|CNT\(3) & (!\inst4|Add0~5\)) # (!\inst4|CNT\(3) & ((\inst4|Add0~5\) # (GND)))
-- \inst4|Add0~7\ = CARRY((!\inst4|Add0~5\) # (!\inst4|CNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(3),
	datad => VCC,
	cin => \inst4|Add0~5\,
	combout => \inst4|Add0~6_combout\,
	cout => \inst4|Add0~7\);

-- Location: LCCOMB_X14_Y21_N14
\inst4|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~68_combout\ = (\inst4|Add0~6_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~6_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~68_combout\);

-- Location: FF_X13_Y21_N13
\inst4|CNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	asdata => \inst4|Add0~68_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(3));

-- Location: LCCOMB_X13_Y21_N8
\inst4|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~8_combout\ = (\inst4|CNT\(4) & (\inst4|Add0~7\ $ (GND))) # (!\inst4|CNT\(4) & (!\inst4|Add0~7\ & VCC))
-- \inst4|Add0~9\ = CARRY((\inst4|CNT\(4) & !\inst4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(4),
	datad => VCC,
	cin => \inst4|Add0~7\,
	combout => \inst4|Add0~8_combout\,
	cout => \inst4|Add0~9\);

-- Location: LCCOMB_X12_Y21_N12
\inst4|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~69_combout\ = (\inst4|Add0~8_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~8_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~69_combout\);

-- Location: FF_X12_Y21_N13
\inst4|CNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(4));

-- Location: LCCOMB_X13_Y21_N10
\inst4|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~10_combout\ = (\inst4|CNT\(5) & (!\inst4|Add0~9\)) # (!\inst4|CNT\(5) & ((\inst4|Add0~9\) # (GND)))
-- \inst4|Add0~11\ = CARRY((!\inst4|Add0~9\) # (!\inst4|CNT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(5),
	datad => VCC,
	cin => \inst4|Add0~9\,
	combout => \inst4|Add0~10_combout\,
	cout => \inst4|Add0~11\);

-- Location: LCCOMB_X12_Y21_N6
\inst4|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~70_combout\ = (\inst4|Add0~10_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~10_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~70_combout\);

-- Location: FF_X12_Y21_N7
\inst4|CNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(5));

-- Location: LCCOMB_X13_Y21_N12
\inst4|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~12_combout\ = (\inst4|CNT\(6) & (\inst4|Add0~11\ $ (GND))) # (!\inst4|CNT\(6) & (!\inst4|Add0~11\ & VCC))
-- \inst4|Add0~13\ = CARRY((\inst4|CNT\(6) & !\inst4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(6),
	datad => VCC,
	cin => \inst4|Add0~11\,
	combout => \inst4|Add0~12_combout\,
	cout => \inst4|Add0~13\);

-- Location: LCCOMB_X12_Y21_N8
\inst4|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~71_combout\ = (\inst4|Add0~12_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~12_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~71_combout\);

-- Location: FF_X12_Y21_N9
\inst4|CNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(6));

-- Location: LCCOMB_X13_Y21_N14
\inst4|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~14_combout\ = (\inst4|CNT\(7) & (!\inst4|Add0~13\)) # (!\inst4|CNT\(7) & ((\inst4|Add0~13\) # (GND)))
-- \inst4|Add0~15\ = CARRY((!\inst4|Add0~13\) # (!\inst4|CNT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(7),
	datad => VCC,
	cin => \inst4|Add0~13\,
	combout => \inst4|Add0~14_combout\,
	cout => \inst4|Add0~15\);

-- Location: LCCOMB_X12_Y21_N2
\inst4|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~72_combout\ = (\inst4|Add0~14_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~14_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~72_combout\);

-- Location: FF_X12_Y21_N3
\inst4|CNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(7));

-- Location: LCCOMB_X13_Y21_N16
\inst4|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~16_combout\ = (\inst4|CNT\(8) & (\inst4|Add0~15\ $ (GND))) # (!\inst4|CNT\(8) & (!\inst4|Add0~15\ & VCC))
-- \inst4|Add0~17\ = CARRY((\inst4|CNT\(8) & !\inst4|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(8),
	datad => VCC,
	cin => \inst4|Add0~15\,
	combout => \inst4|Add0~16_combout\,
	cout => \inst4|Add0~17\);

-- Location: LCCOMB_X12_Y21_N14
\inst4|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~73_combout\ = (\inst4|Add0~16_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~16_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~73_combout\);

-- Location: FF_X12_Y21_N15
\inst4|CNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(8));

-- Location: LCCOMB_X13_Y21_N18
\inst4|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~18_combout\ = (\inst4|CNT\(9) & (!\inst4|Add0~17\)) # (!\inst4|CNT\(9) & ((\inst4|Add0~17\) # (GND)))
-- \inst4|Add0~19\ = CARRY((!\inst4|Add0~17\) # (!\inst4|CNT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(9),
	datad => VCC,
	cin => \inst4|Add0~17\,
	combout => \inst4|Add0~18_combout\,
	cout => \inst4|Add0~19\);

-- Location: LCCOMB_X12_Y21_N4
\inst4|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~74_combout\ = (\inst4|Add0~18_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~18_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~74_combout\);

-- Location: FF_X12_Y21_N5
\inst4|CNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(9));

-- Location: LCCOMB_X13_Y21_N20
\inst4|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~20_combout\ = (\inst4|CNT\(10) & (\inst4|Add0~19\ $ (GND))) # (!\inst4|CNT\(10) & (!\inst4|Add0~19\ & VCC))
-- \inst4|Add0~21\ = CARRY((\inst4|CNT\(10) & !\inst4|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(10),
	datad => VCC,
	cin => \inst4|Add0~19\,
	combout => \inst4|Add0~20_combout\,
	cout => \inst4|Add0~21\);

-- Location: LCCOMB_X12_Y21_N10
\inst4|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~75_combout\ = (\inst4|Add0~20_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~20_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~75_combout\);

-- Location: FF_X12_Y21_N11
\inst4|CNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(10));

-- Location: LCCOMB_X13_Y21_N22
\inst4|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~22_combout\ = (\inst4|CNT\(11) & (!\inst4|Add0~21\)) # (!\inst4|CNT\(11) & ((\inst4|Add0~21\) # (GND)))
-- \inst4|Add0~23\ = CARRY((!\inst4|Add0~21\) # (!\inst4|CNT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(11),
	datad => VCC,
	cin => \inst4|Add0~21\,
	combout => \inst4|Add0~22_combout\,
	cout => \inst4|Add0~23\);

-- Location: LCCOMB_X12_Y21_N28
\inst4|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~76_combout\ = (\inst4|Add0~22_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~22_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~76_combout\);

-- Location: FF_X12_Y21_N29
\inst4|CNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(11));

-- Location: LCCOMB_X13_Y21_N24
\inst4|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~24_combout\ = (\inst4|CNT\(12) & (\inst4|Add0~23\ $ (GND))) # (!\inst4|CNT\(12) & (!\inst4|Add0~23\ & VCC))
-- \inst4|Add0~25\ = CARRY((\inst4|CNT\(12) & !\inst4|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(12),
	datad => VCC,
	cin => \inst4|Add0~23\,
	combout => \inst4|Add0~24_combout\,
	cout => \inst4|Add0~25\);

-- Location: LCCOMB_X12_Y21_N24
\inst4|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~77_combout\ = (\inst4|Add0~24_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~24_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~77_combout\);

-- Location: FF_X12_Y21_N25
\inst4|CNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(12));

-- Location: LCCOMB_X13_Y21_N26
\inst4|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~26_combout\ = (\inst4|CNT\(13) & (!\inst4|Add0~25\)) # (!\inst4|CNT\(13) & ((\inst4|Add0~25\) # (GND)))
-- \inst4|Add0~27\ = CARRY((!\inst4|Add0~25\) # (!\inst4|CNT\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(13),
	datad => VCC,
	cin => \inst4|Add0~25\,
	combout => \inst4|Add0~26_combout\,
	cout => \inst4|Add0~27\);

-- Location: LCCOMB_X12_Y21_N26
\inst4|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~78_combout\ = (\inst4|Add0~26_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~26_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~78_combout\);

-- Location: FF_X12_Y21_N27
\inst4|CNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(13));

-- Location: LCCOMB_X13_Y21_N28
\inst4|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~28_combout\ = (\inst4|CNT\(14) & (\inst4|Add0~27\ $ (GND))) # (!\inst4|CNT\(14) & (!\inst4|Add0~27\ & VCC))
-- \inst4|Add0~29\ = CARRY((\inst4|CNT\(14) & !\inst4|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(14),
	datad => VCC,
	cin => \inst4|Add0~27\,
	combout => \inst4|Add0~28_combout\,
	cout => \inst4|Add0~29\);

-- Location: LCCOMB_X12_Y21_N16
\inst4|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~79_combout\ = (\inst4|LessThan0~10_combout\ & \inst4|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~10_combout\,
	datad => \inst4|Add0~28_combout\,
	combout => \inst4|Add0~79_combout\);

-- Location: FF_X12_Y21_N17
\inst4|CNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(14));

-- Location: LCCOMB_X13_Y21_N30
\inst4|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~30_combout\ = (\inst4|CNT\(15) & (!\inst4|Add0~29\)) # (!\inst4|CNT\(15) & ((\inst4|Add0~29\) # (GND)))
-- \inst4|Add0~31\ = CARRY((!\inst4|Add0~29\) # (!\inst4|CNT\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(15),
	datad => VCC,
	cin => \inst4|Add0~29\,
	combout => \inst4|Add0~30_combout\,
	cout => \inst4|Add0~31\);

-- Location: LCCOMB_X12_Y21_N22
\inst4|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~80_combout\ = (\inst4|Add0~30_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~30_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~80_combout\);

-- Location: FF_X12_Y21_N23
\inst4|CNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(15));

-- Location: LCCOMB_X13_Y20_N0
\inst4|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~32_combout\ = (\inst4|CNT\(16) & (\inst4|Add0~31\ $ (GND))) # (!\inst4|CNT\(16) & (!\inst4|Add0~31\ & VCC))
-- \inst4|Add0~33\ = CARRY((\inst4|CNT\(16) & !\inst4|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(16),
	datad => VCC,
	cin => \inst4|Add0~31\,
	combout => \inst4|Add0~32_combout\,
	cout => \inst4|Add0~33\);

-- Location: LCCOMB_X12_Y20_N12
\inst4|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~81_combout\ = (\inst4|Add0~32_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~32_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~81_combout\);

-- Location: FF_X12_Y20_N13
\inst4|CNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(16));

-- Location: LCCOMB_X13_Y20_N2
\inst4|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~34_combout\ = (\inst4|CNT\(17) & (!\inst4|Add0~33\)) # (!\inst4|CNT\(17) & ((\inst4|Add0~33\) # (GND)))
-- \inst4|Add0~35\ = CARRY((!\inst4|Add0~33\) # (!\inst4|CNT\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(17),
	datad => VCC,
	cin => \inst4|Add0~33\,
	combout => \inst4|Add0~34_combout\,
	cout => \inst4|Add0~35\);

-- Location: LCCOMB_X12_Y20_N22
\inst4|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~82_combout\ = (\inst4|LessThan0~10_combout\ & \inst4|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~10_combout\,
	datad => \inst4|Add0~34_combout\,
	combout => \inst4|Add0~82_combout\);

-- Location: FF_X12_Y20_N23
\inst4|CNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(17));

-- Location: LCCOMB_X13_Y20_N4
\inst4|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~36_combout\ = (\inst4|CNT\(18) & (\inst4|Add0~35\ $ (GND))) # (!\inst4|CNT\(18) & (!\inst4|Add0~35\ & VCC))
-- \inst4|Add0~37\ = CARRY((\inst4|CNT\(18) & !\inst4|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(18),
	datad => VCC,
	cin => \inst4|Add0~35\,
	combout => \inst4|Add0~36_combout\,
	cout => \inst4|Add0~37\);

-- Location: LCCOMB_X12_Y20_N28
\inst4|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~83_combout\ = (\inst4|LessThan0~10_combout\ & \inst4|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~10_combout\,
	datad => \inst4|Add0~36_combout\,
	combout => \inst4|Add0~83_combout\);

-- Location: FF_X12_Y20_N29
\inst4|CNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(18));

-- Location: LCCOMB_X13_Y20_N6
\inst4|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~38_combout\ = (\inst4|CNT\(19) & (!\inst4|Add0~37\)) # (!\inst4|CNT\(19) & ((\inst4|Add0~37\) # (GND)))
-- \inst4|Add0~39\ = CARRY((!\inst4|Add0~37\) # (!\inst4|CNT\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(19),
	datad => VCC,
	cin => \inst4|Add0~37\,
	combout => \inst4|Add0~38_combout\,
	cout => \inst4|Add0~39\);

-- Location: LCCOMB_X12_Y20_N18
\inst4|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~84_combout\ = (\inst4|LessThan0~10_combout\ & \inst4|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~10_combout\,
	datad => \inst4|Add0~38_combout\,
	combout => \inst4|Add0~84_combout\);

-- Location: FF_X12_Y20_N19
\inst4|CNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(19));

-- Location: LCCOMB_X13_Y20_N8
\inst4|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~40_combout\ = (\inst4|CNT\(20) & (\inst4|Add0~39\ $ (GND))) # (!\inst4|CNT\(20) & (!\inst4|Add0~39\ & VCC))
-- \inst4|Add0~41\ = CARRY((\inst4|CNT\(20) & !\inst4|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(20),
	datad => VCC,
	cin => \inst4|Add0~39\,
	combout => \inst4|Add0~40_combout\,
	cout => \inst4|Add0~41\);

-- Location: LCCOMB_X12_Y20_N14
\inst4|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~85_combout\ = (\inst4|Add0~40_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~40_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~85_combout\);

-- Location: FF_X12_Y20_N15
\inst4|CNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(20));

-- Location: LCCOMB_X13_Y20_N10
\inst4|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~42_combout\ = (\inst4|CNT\(21) & (!\inst4|Add0~41\)) # (!\inst4|CNT\(21) & ((\inst4|Add0~41\) # (GND)))
-- \inst4|Add0~43\ = CARRY((!\inst4|Add0~41\) # (!\inst4|CNT\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(21),
	datad => VCC,
	cin => \inst4|Add0~41\,
	combout => \inst4|Add0~42_combout\,
	cout => \inst4|Add0~43\);

-- Location: LCCOMB_X12_Y20_N16
\inst4|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~86_combout\ = (\inst4|Add0~42_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~42_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~86_combout\);

-- Location: FF_X12_Y20_N17
\inst4|CNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(21));

-- Location: LCCOMB_X13_Y20_N12
\inst4|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~44_combout\ = (\inst4|CNT\(22) & (\inst4|Add0~43\ $ (GND))) # (!\inst4|CNT\(22) & (!\inst4|Add0~43\ & VCC))
-- \inst4|Add0~45\ = CARRY((\inst4|CNT\(22) & !\inst4|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(22),
	datad => VCC,
	cin => \inst4|Add0~43\,
	combout => \inst4|Add0~44_combout\,
	cout => \inst4|Add0~45\);

-- Location: LCCOMB_X12_Y20_N20
\inst4|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~87_combout\ = (\inst4|Add0~44_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~44_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~87_combout\);

-- Location: FF_X12_Y20_N21
\inst4|CNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(22));

-- Location: LCCOMB_X13_Y20_N14
\inst4|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~46_combout\ = (\inst4|CNT\(23) & (!\inst4|Add0~45\)) # (!\inst4|CNT\(23) & ((\inst4|Add0~45\) # (GND)))
-- \inst4|Add0~47\ = CARRY((!\inst4|Add0~45\) # (!\inst4|CNT\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(23),
	datad => VCC,
	cin => \inst4|Add0~45\,
	combout => \inst4|Add0~46_combout\,
	cout => \inst4|Add0~47\);

-- Location: LCCOMB_X12_Y20_N10
\inst4|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~88_combout\ = (\inst4|Add0~46_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~46_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~88_combout\);

-- Location: FF_X12_Y20_N11
\inst4|CNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(23));

-- Location: LCCOMB_X13_Y20_N16
\inst4|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~48_combout\ = (\inst4|CNT\(24) & (\inst4|Add0~47\ $ (GND))) # (!\inst4|CNT\(24) & (!\inst4|Add0~47\ & VCC))
-- \inst4|Add0~49\ = CARRY((\inst4|CNT\(24) & !\inst4|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(24),
	datad => VCC,
	cin => \inst4|Add0~47\,
	combout => \inst4|Add0~48_combout\,
	cout => \inst4|Add0~49\);

-- Location: LCCOMB_X14_Y21_N6
\inst4|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~89_combout\ = (\inst4|Add0~48_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~48_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~89_combout\);

-- Location: FF_X14_Y21_N7
\inst4|CNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(24));

-- Location: LCCOMB_X13_Y20_N18
\inst4|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~50_combout\ = (\inst4|CNT\(25) & (!\inst4|Add0~49\)) # (!\inst4|CNT\(25) & ((\inst4|Add0~49\) # (GND)))
-- \inst4|Add0~51\ = CARRY((!\inst4|Add0~49\) # (!\inst4|CNT\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(25),
	datad => VCC,
	cin => \inst4|Add0~49\,
	combout => \inst4|Add0~50_combout\,
	cout => \inst4|Add0~51\);

-- Location: LCCOMB_X14_Y21_N16
\inst4|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~90_combout\ = (\inst4|Add0~50_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~50_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~90_combout\);

-- Location: FF_X14_Y21_N17
\inst4|CNT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(25));

-- Location: LCCOMB_X13_Y20_N20
\inst4|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~52_combout\ = (\inst4|CNT\(26) & (\inst4|Add0~51\ $ (GND))) # (!\inst4|CNT\(26) & (!\inst4|Add0~51\ & VCC))
-- \inst4|Add0~53\ = CARRY((\inst4|CNT\(26) & !\inst4|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(26),
	datad => VCC,
	cin => \inst4|Add0~51\,
	combout => \inst4|Add0~52_combout\,
	cout => \inst4|Add0~53\);

-- Location: LCCOMB_X14_Y21_N22
\inst4|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~91_combout\ = (\inst4|Add0~52_combout\ & \inst4|LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add0~52_combout\,
	datad => \inst4|LessThan0~10_combout\,
	combout => \inst4|Add0~91_combout\);

-- Location: FF_X14_Y21_N23
\inst4|CNT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(26));

-- Location: LCCOMB_X13_Y20_N22
\inst4|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~54_combout\ = (\inst4|CNT\(27) & (!\inst4|Add0~53\)) # (!\inst4|CNT\(27) & ((\inst4|Add0~53\) # (GND)))
-- \inst4|Add0~55\ = CARRY((!\inst4|Add0~53\) # (!\inst4|CNT\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(27),
	datad => VCC,
	cin => \inst4|Add0~53\,
	combout => \inst4|Add0~54_combout\,
	cout => \inst4|Add0~55\);

-- Location: LCCOMB_X14_Y21_N28
\inst4|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~92_combout\ = (\inst4|LessThan0~10_combout\ & \inst4|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~10_combout\,
	datad => \inst4|Add0~54_combout\,
	combout => \inst4|Add0~92_combout\);

-- Location: FF_X14_Y21_N29
\inst4|CNT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(27));

-- Location: LCCOMB_X13_Y20_N24
\inst4|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~56_combout\ = (\inst4|CNT\(28) & (\inst4|Add0~55\ $ (GND))) # (!\inst4|CNT\(28) & (!\inst4|Add0~55\ & VCC))
-- \inst4|Add0~57\ = CARRY((\inst4|CNT\(28) & !\inst4|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(28),
	datad => VCC,
	cin => \inst4|Add0~55\,
	combout => \inst4|Add0~56_combout\,
	cout => \inst4|Add0~57\);

-- Location: LCCOMB_X14_Y21_N8
\inst4|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~93_combout\ = (\inst4|LessThan0~10_combout\ & \inst4|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~10_combout\,
	datad => \inst4|Add0~56_combout\,
	combout => \inst4|Add0~93_combout\);

-- Location: FF_X14_Y21_N9
\inst4|CNT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(28));

-- Location: LCCOMB_X13_Y20_N26
\inst4|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~58_combout\ = (\inst4|CNT\(29) & (!\inst4|Add0~57\)) # (!\inst4|CNT\(29) & ((\inst4|Add0~57\) # (GND)))
-- \inst4|Add0~59\ = CARRY((!\inst4|Add0~57\) # (!\inst4|CNT\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|CNT\(29),
	datad => VCC,
	cin => \inst4|Add0~57\,
	combout => \inst4|Add0~58_combout\,
	cout => \inst4|Add0~59\);

-- Location: LCCOMB_X14_Y21_N26
\inst4|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~94_combout\ = (\inst4|LessThan0~10_combout\ & \inst4|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~10_combout\,
	datad => \inst4|Add0~58_combout\,
	combout => \inst4|Add0~94_combout\);

-- Location: FF_X14_Y21_N27
\inst4|CNT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(29));

-- Location: LCCOMB_X13_Y20_N28
\inst4|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~60_combout\ = (\inst4|CNT\(30) & (\inst4|Add0~59\ $ (GND))) # (!\inst4|CNT\(30) & (!\inst4|Add0~59\ & VCC))
-- \inst4|Add0~61\ = CARRY((\inst4|CNT\(30) & !\inst4|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(30),
	datad => VCC,
	cin => \inst4|Add0~59\,
	combout => \inst4|Add0~60_combout\,
	cout => \inst4|Add0~61\);

-- Location: LCCOMB_X14_Y21_N4
\inst4|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~95_combout\ = (\inst4|LessThan0~10_combout\ & \inst4|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~10_combout\,
	datad => \inst4|Add0~60_combout\,
	combout => \inst4|Add0~95_combout\);

-- Location: FF_X14_Y21_N5
\inst4|CNT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(30));

-- Location: LCCOMB_X13_Y20_N30
\inst4|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~62_combout\ = \inst4|Add0~61\ $ (\inst4|CNT\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|CNT\(31),
	cin => \inst4|Add0~61\,
	combout => \inst4|Add0~62_combout\);

-- Location: LCCOMB_X14_Y20_N6
\inst4|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~64_combout\ = (\inst4|LessThan0~10_combout\ & \inst4|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|LessThan0~10_combout\,
	datad => \inst4|Add0~62_combout\,
	combout => \inst4|Add0~64_combout\);

-- Location: FF_X14_Y20_N7
\inst4|CNT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|CNT\(31));

-- Location: LCCOMB_X12_Y20_N26
\inst4|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~6_combout\ = (!\inst4|CNT\(20) & !\inst4|CNT\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|CNT\(20),
	datad => \inst4|CNT\(21),
	combout => \inst4|LessThan0~6_combout\);

-- Location: LCCOMB_X12_Y20_N4
\inst4|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~5_combout\ = (!\inst4|CNT\(16) & (!\inst4|CNT\(18) & (!\inst4|CNT\(17) & !\inst4|CNT\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(16),
	datab => \inst4|CNT\(18),
	datac => \inst4|CNT\(17),
	datad => \inst4|CNT\(19),
	combout => \inst4|LessThan0~5_combout\);

-- Location: LCCOMB_X12_Y20_N8
\inst4|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~7_combout\ = (\inst4|LessThan0~6_combout\ & (!\inst4|CNT\(22) & (\inst4|LessThan0~5_combout\ & !\inst4|CNT\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~6_combout\,
	datab => \inst4|CNT\(22),
	datac => \inst4|LessThan0~5_combout\,
	datad => \inst4|CNT\(23),
	combout => \inst4|LessThan0~7_combout\);

-- Location: LCCOMB_X14_Y21_N18
\inst4|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~8_combout\ = (!\inst4|CNT\(24) & (!\inst4|CNT\(25) & (!\inst4|CNT\(26) & !\inst4|CNT\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(24),
	datab => \inst4|CNT\(25),
	datac => \inst4|CNT\(26),
	datad => \inst4|CNT\(27),
	combout => \inst4|LessThan0~8_combout\);

-- Location: LCCOMB_X14_Y21_N30
\inst4|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~9_combout\ = (!\inst4|CNT\(29) & (!\inst4|CNT\(28) & (!\inst4|CNT\(30) & \inst4|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(29),
	datab => \inst4|CNT\(28),
	datac => \inst4|CNT\(30),
	datad => \inst4|LessThan0~8_combout\,
	combout => \inst4|LessThan0~9_combout\);

-- Location: LCCOMB_X12_Y21_N20
\inst4|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~1_combout\ = (!\inst4|CNT\(5) & (!\inst4|CNT\(7) & (!\inst4|CNT\(6) & !\inst4|CNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(5),
	datab => \inst4|CNT\(7),
	datac => \inst4|CNT\(6),
	datad => \inst4|CNT\(4),
	combout => \inst4|LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y21_N30
\inst4|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~2_combout\ = (!\inst4|CNT\(10) & (!\inst4|CNT\(8) & (!\inst4|CNT\(9) & !\inst4|CNT\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(10),
	datab => \inst4|CNT\(8),
	datac => \inst4|CNT\(9),
	datad => \inst4|CNT\(11),
	combout => \inst4|LessThan0~2_combout\);

-- Location: LCCOMB_X12_Y21_N0
\inst4|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~3_combout\ = (!\inst4|CNT\(13) & (!\inst4|CNT\(12) & (!\inst4|CNT\(15) & !\inst4|CNT\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(13),
	datab => \inst4|CNT\(12),
	datac => \inst4|CNT\(15),
	datad => \inst4|CNT\(14),
	combout => \inst4|LessThan0~3_combout\);

-- Location: LCCOMB_X14_Y21_N20
\inst4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (!\inst4|CNT\(1) & (!\inst4|CNT\(2) & (!\inst4|CNT\(0) & !\inst4|CNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(1),
	datab => \inst4|CNT\(2),
	datac => \inst4|CNT\(0),
	datad => \inst4|CNT\(3),
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y20_N16
\inst4|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~4_combout\ = (\inst4|LessThan0~1_combout\ & (\inst4|LessThan0~2_combout\ & (\inst4|LessThan0~3_combout\ & \inst4|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~1_combout\,
	datab => \inst4|LessThan0~2_combout\,
	datac => \inst4|LessThan0~3_combout\,
	datad => \inst4|LessThan0~0_combout\,
	combout => \inst4|LessThan0~4_combout\);

-- Location: LCCOMB_X14_Y20_N14
\inst4|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~10_combout\ = (\inst4|CNT\(31)) # ((\inst4|LessThan0~7_combout\ & (\inst4|LessThan0~9_combout\ & \inst4|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|CNT\(31),
	datab => \inst4|LessThan0~7_combout\,
	datac => \inst4|LessThan0~9_combout\,
	datad => \inst4|LessThan0~4_combout\,
	combout => \inst4|LessThan0~10_combout\);

-- Location: LCCOMB_X14_Y20_N24
\inst4|count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count[0]~1_combout\ = !\inst4|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count\(0),
	combout => \inst4|count[0]~1_combout\);

-- Location: FF_X14_Y20_N25
\inst4|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|count[0]~1_combout\,
	ena => \inst4|ALT_INV_Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count\(0));

-- Location: LCCOMB_X14_Y20_N30
\inst4|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|count[1]~0_combout\ = \inst4|count\(1) $ (((\inst4|count\(0) & ((!\inst4|Add0~62_combout\) # (!\inst4|LessThan0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~10_combout\,
	datab => \inst4|count\(0),
	datac => \inst4|count\(1),
	datad => \inst4|Add0~62_combout\,
	combout => \inst4|count[1]~0_combout\);

-- Location: FF_X14_Y20_N31
\inst4|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|count\(1));

-- Location: LCCOMB_X14_Y20_N28
\inst4|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~0_combout\ = (!\inst4|count\(1) & \inst4|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count\(1),
	datad => \inst4|count\(0),
	combout => \inst4|Equal2~0_combout\);

-- Location: LCCOMB_X14_Y20_N20
\inst4|dataout[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|dataout[0]~feeder_combout\ = \inst4|Equal2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Equal2~0_combout\,
	combout => \inst4|dataout[0]~feeder_combout\);

-- Location: FF_X14_Y20_N21
\inst4|dataout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|dataout[0]~feeder_combout\,
	ena => \inst4|ALT_INV_Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dataout\(0));

-- Location: LCCOMB_X14_Y20_N10
\inst4|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~1_combout\ = (\inst4|count\(1) & !\inst4|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count\(1),
	datad => \inst4|count\(0),
	combout => \inst4|Equal2~1_combout\);

-- Location: FF_X14_Y20_N11
\inst4|dataout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Equal2~1_combout\,
	ena => \inst4|ALT_INV_Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dataout\(2));

-- Location: LCCOMB_X14_Y20_N8
\inst4|dataout[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|dataout[3]~feeder_combout\ = \inst4|Equal2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Equal2~0_combout\,
	combout => \inst4|dataout[3]~feeder_combout\);

-- Location: FF_X14_Y20_N9
\inst4|dataout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|dataout[3]~feeder_combout\,
	ena => \inst4|ALT_INV_Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dataout\(3));

-- Location: LCCOMB_X14_Y20_N26
\inst4|dataout[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|dataout[4]~feeder_combout\ = \inst4|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|count\(0),
	combout => \inst4|dataout[4]~feeder_combout\);

-- Location: FF_X14_Y20_N27
\inst4|dataout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|dataout[4]~feeder_combout\,
	ena => \inst4|ALT_INV_Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dataout\(4));

-- Location: LCCOMB_X14_Y20_N4
\inst4|en_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|en_out~0_combout\ = (\inst4|count\(1)) # (\inst4|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count\(1),
	datad => \inst4|count\(0),
	combout => \inst4|en_out~0_combout\);

-- Location: LCCOMB_X14_Y20_N12
\inst4|dataout[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|dataout[5]~feeder_combout\ = \inst4|en_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|en_out~0_combout\,
	combout => \inst4|dataout[5]~feeder_combout\);

-- Location: FF_X14_Y20_N13
\inst4|dataout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|dataout[5]~feeder_combout\,
	ena => \inst4|ALT_INV_Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dataout\(5));

-- Location: LCCOMB_X14_Y20_N18
\inst4|dataout[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|dataout[6]~0_combout\ = !\inst4|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count\(1),
	combout => \inst4|dataout[6]~0_combout\);

-- Location: FF_X14_Y20_N19
\inst4|dataout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|dataout[6]~0_combout\,
	ena => \inst4|ALT_INV_Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|dataout\(6));

-- Location: FF_X14_Y20_N5
\inst4|en_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|en_out~0_combout\,
	ena => \inst4|ALT_INV_Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|en_out\(0));

-- Location: LCCOMB_X14_Y20_N22
\inst4|en_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|en_out[1]~1_combout\ = !\inst4|Equal2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Equal2~0_combout\,
	combout => \inst4|en_out[1]~1_combout\);

-- Location: FF_X14_Y20_N23
\inst4|en_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|en_out[1]~1_combout\,
	ena => \inst4|ALT_INV_Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|en_out\(1));

-- Location: LCCOMB_X14_Y20_N0
\inst4|en_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|en_out[2]~2_combout\ = !\inst4|Equal2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|Equal2~1_combout\,
	combout => \inst4|en_out[2]~2_combout\);

-- Location: FF_X14_Y20_N1
\inst4|en_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|en_out[2]~2_combout\,
	ena => \inst4|ALT_INV_Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|en_out\(2));

-- Location: LCCOMB_X14_Y20_N2
\inst4|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~2_combout\ = (!\inst4|count\(0)) # (!\inst4|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|count\(1),
	datad => \inst4|count\(0),
	combout => \inst4|Equal2~2_combout\);

-- Location: FF_X14_Y20_N3
\inst4|en_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_10ms~clkctrl_outclk\,
	d => \inst4|Equal2~2_combout\,
	ena => \inst4|ALT_INV_Add0~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|en_out\(3));

ww_dataout(0) <= \dataout[0]~output_o\;

ww_dataout(1) <= \dataout[1]~output_o\;

ww_dataout(2) <= \dataout[2]~output_o\;

ww_dataout(3) <= \dataout[3]~output_o\;

ww_dataout(4) <= \dataout[4]~output_o\;

ww_dataout(5) <= \dataout[5]~output_o\;

ww_dataout(6) <= \dataout[6]~output_o\;

ww_dataout(7) <= \dataout[7]~output_o\;

ww_en_out(0) <= \en_out[0]~output_o\;

ww_en_out(1) <= \en_out[1]~output_o\;

ww_en_out(2) <= \en_out[2]~output_o\;

ww_en_out(3) <= \en_out[3]~output_o\;
END structure;


