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

-- DATE "11/09/2019 16:30:37"

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

ENTITY 	task5_sec IS
    PORT (
	clk_in : IN std_logic;
	rst_key : IN std_logic;
	stop_key : IN std_logic;
	dig : BUFFER std_logic_vector(0 TO 3);
	seg : BUFFER std_logic_vector(0 TO 7)
	);
END task5_sec;

-- Design Ports Information
-- dig[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dig[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_key	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop_key	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF task5_sec IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_rst_key : std_logic;
SIGNAL ww_stop_key : std_logic;
SIGNAL ww_dig : std_logic_vector(0 TO 3);
SIGNAL ww_seg : std_logic_vector(0 TO 7);
SIGNAL \cnt2|Equal0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_10ms|clk_ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_10ms|sig_ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_10ms|sig_us~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dig[3]~output_o\ : std_logic;
SIGNAL \dig[2]~output_o\ : std_logic;
SIGNAL \dig[1]~output_o\ : std_logic;
SIGNAL \dig[0]~output_o\ : std_logic;
SIGNAL \seg[7]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock_10ms|q_1us[0]~6_combout\ : std_logic;
SIGNAL \clock_10ms|q_1us[0]~7\ : std_logic;
SIGNAL \clock_10ms|q_1us[1]~8_combout\ : std_logic;
SIGNAL \clock_10ms|q_1us[1]~9\ : std_logic;
SIGNAL \clock_10ms|q_1us[2]~10_combout\ : std_logic;
SIGNAL \clock_10ms|q_1us[2]~11\ : std_logic;
SIGNAL \clock_10ms|q_1us[3]~12_combout\ : std_logic;
SIGNAL \clock_10ms|q_1us[3]~13\ : std_logic;
SIGNAL \clock_10ms|q_1us[4]~14_combout\ : std_logic;
SIGNAL \clock_10ms|q_1us[4]~15\ : std_logic;
SIGNAL \clock_10ms|q_1us[5]~16_combout\ : std_logic;
SIGNAL \clock_10ms|LessThan0~0_combout\ : std_logic;
SIGNAL \clock_10ms|LessThan0~1_combout\ : std_logic;
SIGNAL \clock_10ms|sig_us~feeder_combout\ : std_logic;
SIGNAL \clock_10ms|sig_us~q\ : std_logic;
SIGNAL \clock_10ms|sig_us~clkctrl_outclk\ : std_logic;
SIGNAL \clock_10ms|q_1ms[0]~10_combout\ : std_logic;
SIGNAL \clock_10ms|q_1ms[0]~11\ : std_logic;
SIGNAL \clock_10ms|q_1ms[1]~12_combout\ : std_logic;
SIGNAL \clock_10ms|q_1ms[1]~13\ : std_logic;
SIGNAL \clock_10ms|q_1ms[2]~14_combout\ : std_logic;
SIGNAL \clock_10ms|q_1ms[2]~15\ : std_logic;
SIGNAL \clock_10ms|q_1ms[3]~16_combout\ : std_logic;
SIGNAL \clock_10ms|q_1ms[3]~17\ : std_logic;
SIGNAL \clock_10ms|q_1ms[4]~18_combout\ : std_logic;
SIGNAL \clock_10ms|q_1ms[4]~19\ : std_logic;
SIGNAL \clock_10ms|q_1ms[5]~20_combout\ : std_logic;
SIGNAL \clock_10ms|q_1ms[5]~21\ : std_logic;
SIGNAL \clock_10ms|q_1ms[6]~22_combout\ : std_logic;
SIGNAL \clock_10ms|q_1ms[6]~23\ : std_logic;
SIGNAL \clock_10ms|q_1ms[7]~24_combout\ : std_logic;
SIGNAL \clock_10ms|q_1ms[7]~25\ : std_logic;
SIGNAL \clock_10ms|q_1ms[8]~26_combout\ : std_logic;
SIGNAL \clock_10ms|q_1ms[8]~27\ : std_logic;
SIGNAL \clock_10ms|q_1ms[9]~28_combout\ : std_logic;
SIGNAL \clock_10ms|LessThan1~0_combout\ : std_logic;
SIGNAL \clock_10ms|LessThan1~1_combout\ : std_logic;
SIGNAL \clock_10ms|LessThan1~2_combout\ : std_logic;
SIGNAL \clock_10ms|sig_ms~feeder_combout\ : std_logic;
SIGNAL \clock_10ms|sig_ms~q\ : std_logic;
SIGNAL \clock_10ms|clk_ms~feeder_combout\ : std_logic;
SIGNAL \clock_10ms|clk_ms~q\ : std_logic;
SIGNAL \clock_10ms|clk_ms~clkctrl_outclk\ : std_logic;
SIGNAL \serial_scan0|count[0]~1_combout\ : std_logic;
SIGNAL \serial_scan0|count[1]~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout[5]~0_combout\ : std_logic;
SIGNAL \serial_scan0|Equal2~0_combout\ : std_logic;
SIGNAL \serial_scan0|en_out[2]~feeder_combout\ : std_logic;
SIGNAL \serial_scan0|Equal2~1_combout\ : std_logic;
SIGNAL \serial_scan0|Equal0~0_combout\ : std_logic;
SIGNAL \clock_10ms|sig_ms~clkctrl_outclk\ : std_logic;
SIGNAL \clock_10ms|q_10ms~2_combout\ : std_logic;
SIGNAL \clock_10ms|q_10ms~3_combout\ : std_logic;
SIGNAL \clock_10ms|q_10ms~1_combout\ : std_logic;
SIGNAL \clock_10ms|q_10ms~0_combout\ : std_logic;
SIGNAL \clock_10ms|LessThan2~0_combout\ : std_logic;
SIGNAL \clock_10ms|sig_10ms~q\ : std_logic;
SIGNAL \clock_10ms|clk_10ms~q\ : std_logic;
SIGNAL \stop_key~input_o\ : std_logic;
SIGNAL \state|sum~6_combout\ : std_logic;
SIGNAL \state|sum~0_combout\ : std_logic;
SIGNAL \state|Add0~9\ : std_logic;
SIGNAL \state|Add0~10_combout\ : std_logic;
SIGNAL \state|sum~7_combout\ : std_logic;
SIGNAL \state|Add0~0_combout\ : std_logic;
SIGNAL \state|sum~1_combout\ : std_logic;
SIGNAL \state|sum~5_combout\ : std_logic;
SIGNAL \state|Add0~1\ : std_logic;
SIGNAL \state|Add0~2_combout\ : std_logic;
SIGNAL \state|sum~4_combout\ : std_logic;
SIGNAL \state|Add0~3\ : std_logic;
SIGNAL \state|Add0~4_combout\ : std_logic;
SIGNAL \state|sum~3_combout\ : std_logic;
SIGNAL \state|Add0~5\ : std_logic;
SIGNAL \state|Add0~6_combout\ : std_logic;
SIGNAL \state|sum~2_combout\ : std_logic;
SIGNAL \state|Add0~7\ : std_logic;
SIGNAL \state|Add0~8_combout\ : std_logic;
SIGNAL \state|y~0_combout\ : std_logic;
SIGNAL \state|y~1_combout\ : std_logic;
SIGNAL \state|y~q\ : std_logic;
SIGNAL \inverter0|temp~0_combout\ : std_logic;
SIGNAL \inverter0|temp~q\ : std_logic;
SIGNAL \stop_and_clk~combout\ : std_logic;
SIGNAL \cnt0|temp~1_combout\ : std_logic;
SIGNAL \cnt0|temp[1]~feeder_combout\ : std_logic;
SIGNAL \rst_key~input_o\ : std_logic;
SIGNAL \clear|sum~6_combout\ : std_logic;
SIGNAL \clear|Add0~9\ : std_logic;
SIGNAL \clear|Add0~10_combout\ : std_logic;
SIGNAL \clear|sum~7_combout\ : std_logic;
SIGNAL \clear|Add0~0_combout\ : std_logic;
SIGNAL \clear|sum~0_combout\ : std_logic;
SIGNAL \clear|sum~1_combout\ : std_logic;
SIGNAL \clear|sum~5_combout\ : std_logic;
SIGNAL \clear|Add0~1\ : std_logic;
SIGNAL \clear|Add0~2_combout\ : std_logic;
SIGNAL \clear|sum~4_combout\ : std_logic;
SIGNAL \clear|Add0~3\ : std_logic;
SIGNAL \clear|Add0~4_combout\ : std_logic;
SIGNAL \clear|sum~3_combout\ : std_logic;
SIGNAL \clear|Add0~5\ : std_logic;
SIGNAL \clear|Add0~6_combout\ : std_logic;
SIGNAL \clear|sum~2_combout\ : std_logic;
SIGNAL \clear|Add0~7\ : std_logic;
SIGNAL \clear|Add0~8_combout\ : std_logic;
SIGNAL \clear|y~0_combout\ : std_logic;
SIGNAL \clear|y~1_combout\ : std_logic;
SIGNAL \clear|y~q\ : std_logic;
SIGNAL \rst_or_inverterout~combout\ : std_logic;
SIGNAL \cnt0|temp~2_combout\ : std_logic;
SIGNAL \cnt0|temp~0_combout\ : std_logic;
SIGNAL \cnt0|temp~3_combout\ : std_logic;
SIGNAL \cnt0|Equal0~combout\ : std_logic;
SIGNAL \cnt1|temp~1_combout\ : std_logic;
SIGNAL \cnt1|temp~2_combout\ : std_logic;
SIGNAL \cnt1|temp~0_combout\ : std_logic;
SIGNAL \cnt1|temp~3_combout\ : std_logic;
SIGNAL \decoder1|Mux6~0_combout\ : std_logic;
SIGNAL \cnt1|Equal0~combout\ : std_logic;
SIGNAL \cnt2|temp~0_combout\ : std_logic;
SIGNAL \cnt2|temp~1_combout\ : std_logic;
SIGNAL \cnt2|temp~2_combout\ : std_logic;
SIGNAL \cnt2|temp~3_combout\ : std_logic;
SIGNAL \decoder2|Mux6~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~2_combout\ : std_logic;
SIGNAL \serial_scan0|dataout[5]~1_combout\ : std_logic;
SIGNAL \decoder0|Mux6~0_combout\ : std_logic;
SIGNAL \cnt2|Equal0~combout\ : std_logic;
SIGNAL \cnt2|Equal0~clkctrl_outclk\ : std_logic;
SIGNAL \cnt3|temp~2_combout\ : std_logic;
SIGNAL \cnt3|temp~1_combout\ : std_logic;
SIGNAL \cnt3|temp~0_combout\ : std_logic;
SIGNAL \decoder3|Mux6~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~3_combout\ : std_logic;
SIGNAL \decoder1|Mux5~0_combout\ : std_logic;
SIGNAL \decoder2|Mux5~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~4_combout\ : std_logic;
SIGNAL \decoder3|Mux5~0_combout\ : std_logic;
SIGNAL \decoder0|Mux5~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~5_combout\ : std_logic;
SIGNAL \decoder1|Mux4~0_combout\ : std_logic;
SIGNAL \decoder2|Mux4~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~6_combout\ : std_logic;
SIGNAL \decoder0|Mux4~0_combout\ : std_logic;
SIGNAL \decoder3|Mux4~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~7_combout\ : std_logic;
SIGNAL \decoder1|Mux3~0_combout\ : std_logic;
SIGNAL \decoder2|Mux3~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~8_combout\ : std_logic;
SIGNAL \decoder0|Mux3~0_combout\ : std_logic;
SIGNAL \decoder3|Mux3~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~9_combout\ : std_logic;
SIGNAL \decoder0|Mux2~0_combout\ : std_logic;
SIGNAL \decoder1|Mux2~0_combout\ : std_logic;
SIGNAL \decoder2|Mux2~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~10_combout\ : std_logic;
SIGNAL \decoder3|Mux2~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~11_combout\ : std_logic;
SIGNAL \decoder1|Mux1~0_combout\ : std_logic;
SIGNAL \decoder2|Mux1~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~12_combout\ : std_logic;
SIGNAL \decoder0|Mux1~0_combout\ : std_logic;
SIGNAL \decoder3|Mux1~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~13_combout\ : std_logic;
SIGNAL \decoder2|Mux0~0_combout\ : std_logic;
SIGNAL \decoder0|Mux0~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~14_combout\ : std_logic;
SIGNAL \decoder1|Mux0~0_combout\ : std_logic;
SIGNAL \decoder3|Mux0~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~15_combout\ : std_logic;
SIGNAL \clock_10ms|q_1ms\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \cnt0|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_10ms|q_1us\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \cnt3|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt1|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \serial_scan0|en_out\ : std_logic_vector(0 TO 3);
SIGNAL \serial_scan0|dataout\ : std_logic_vector(0 TO 7);
SIGNAL \serial_scan0|count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock_10ms|q_10ms\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt2|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clear|sum\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \state|sum\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \state|ALT_INV_y~q\ : std_logic;
SIGNAL \ALT_INV_rst_or_inverterout~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_in <= clk_in;
ww_rst_key <= rst_key;
ww_stop_key <= stop_key;
dig <= ww_dig;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cnt2|Equal0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cnt2|Equal0~combout\);

\clock_10ms|clk_ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_10ms|clk_ms~q\);

\clock_10ms|sig_ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_10ms|sig_ms~q\);

\clock_10ms|sig_us~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_10ms|sig_us~q\);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);
\state|ALT_INV_y~q\ <= NOT \state|y~q\;
\ALT_INV_rst_or_inverterout~combout\ <= NOT \rst_or_inverterout~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y24_N2
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_scan0|en_out\(3),
	devoe => ww_devoe,
	o => \dig[3]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\dig[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_scan0|en_out\(2),
	devoe => ww_devoe,
	o => \dig[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\dig[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_scan0|en_out\(1),
	devoe => ww_devoe,
	o => \dig[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\dig[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_scan0|en_out\(0),
	devoe => ww_devoe,
	o => \dig[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\seg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_scan0|dataout\(7),
	devoe => ww_devoe,
	o => \seg[7]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_scan0|dataout\(6),
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_scan0|dataout\(5),
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_scan0|dataout\(4),
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_scan0|dataout\(3),
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_scan0|dataout\(2),
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_scan0|dataout\(1),
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \serial_scan0|dataout\(0),
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G2
\clk_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X32_Y12_N4
\clock_10ms|q_1us[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1us[0]~6_combout\ = \clock_10ms|q_1us\(0) $ (VCC)
-- \clock_10ms|q_1us[0]~7\ = CARRY(\clock_10ms|q_1us\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_1us\(0),
	datad => VCC,
	combout => \clock_10ms|q_1us[0]~6_combout\,
	cout => \clock_10ms|q_1us[0]~7\);

-- Location: FF_X32_Y12_N5
\clock_10ms|q_1us[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_10ms|q_1us[0]~6_combout\,
	sclr => \clock_10ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1us\(0));

-- Location: LCCOMB_X32_Y12_N6
\clock_10ms|q_1us[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1us[1]~8_combout\ = (\clock_10ms|q_1us\(1) & (!\clock_10ms|q_1us[0]~7\)) # (!\clock_10ms|q_1us\(1) & ((\clock_10ms|q_1us[0]~7\) # (GND)))
-- \clock_10ms|q_1us[1]~9\ = CARRY((!\clock_10ms|q_1us[0]~7\) # (!\clock_10ms|q_1us\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1us\(1),
	datad => VCC,
	cin => \clock_10ms|q_1us[0]~7\,
	combout => \clock_10ms|q_1us[1]~8_combout\,
	cout => \clock_10ms|q_1us[1]~9\);

-- Location: FF_X32_Y12_N7
\clock_10ms|q_1us[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_10ms|q_1us[1]~8_combout\,
	sclr => \clock_10ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1us\(1));

-- Location: LCCOMB_X32_Y12_N8
\clock_10ms|q_1us[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1us[2]~10_combout\ = (\clock_10ms|q_1us\(2) & (\clock_10ms|q_1us[1]~9\ $ (GND))) # (!\clock_10ms|q_1us\(2) & (!\clock_10ms|q_1us[1]~9\ & VCC))
-- \clock_10ms|q_1us[2]~11\ = CARRY((\clock_10ms|q_1us\(2) & !\clock_10ms|q_1us[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_1us\(2),
	datad => VCC,
	cin => \clock_10ms|q_1us[1]~9\,
	combout => \clock_10ms|q_1us[2]~10_combout\,
	cout => \clock_10ms|q_1us[2]~11\);

-- Location: FF_X32_Y12_N9
\clock_10ms|q_1us[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_10ms|q_1us[2]~10_combout\,
	sclr => \clock_10ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1us\(2));

-- Location: LCCOMB_X32_Y12_N10
\clock_10ms|q_1us[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1us[3]~12_combout\ = (\clock_10ms|q_1us\(3) & (!\clock_10ms|q_1us[2]~11\)) # (!\clock_10ms|q_1us\(3) & ((\clock_10ms|q_1us[2]~11\) # (GND)))
-- \clock_10ms|q_1us[3]~13\ = CARRY((!\clock_10ms|q_1us[2]~11\) # (!\clock_10ms|q_1us\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1us\(3),
	datad => VCC,
	cin => \clock_10ms|q_1us[2]~11\,
	combout => \clock_10ms|q_1us[3]~12_combout\,
	cout => \clock_10ms|q_1us[3]~13\);

-- Location: FF_X32_Y12_N11
\clock_10ms|q_1us[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_10ms|q_1us[3]~12_combout\,
	sclr => \clock_10ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1us\(3));

-- Location: LCCOMB_X32_Y12_N12
\clock_10ms|q_1us[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1us[4]~14_combout\ = (\clock_10ms|q_1us\(4) & (\clock_10ms|q_1us[3]~13\ $ (GND))) # (!\clock_10ms|q_1us\(4) & (!\clock_10ms|q_1us[3]~13\ & VCC))
-- \clock_10ms|q_1us[4]~15\ = CARRY((\clock_10ms|q_1us\(4) & !\clock_10ms|q_1us[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1us\(4),
	datad => VCC,
	cin => \clock_10ms|q_1us[3]~13\,
	combout => \clock_10ms|q_1us[4]~14_combout\,
	cout => \clock_10ms|q_1us[4]~15\);

-- Location: FF_X32_Y12_N13
\clock_10ms|q_1us[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_10ms|q_1us[4]~14_combout\,
	sclr => \clock_10ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1us\(4));

-- Location: LCCOMB_X32_Y12_N14
\clock_10ms|q_1us[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1us[5]~16_combout\ = \clock_10ms|q_1us\(5) $ (\clock_10ms|q_1us[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_1us\(5),
	cin => \clock_10ms|q_1us[4]~15\,
	combout => \clock_10ms|q_1us[5]~16_combout\);

-- Location: FF_X32_Y12_N15
\clock_10ms|q_1us[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_10ms|q_1us[5]~16_combout\,
	sclr => \clock_10ms|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1us\(5));

-- Location: LCCOMB_X32_Y12_N20
\clock_10ms|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|LessThan0~0_combout\ = (!\clock_10ms|q_1us\(3) & (!\clock_10ms|q_1us\(2) & (!\clock_10ms|q_1us\(0) & !\clock_10ms|q_1us\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1us\(3),
	datab => \clock_10ms|q_1us\(2),
	datac => \clock_10ms|q_1us\(0),
	datad => \clock_10ms|q_1us\(1),
	combout => \clock_10ms|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y12_N18
\clock_10ms|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|LessThan0~1_combout\ = (\clock_10ms|q_1us\(4) & (\clock_10ms|q_1us\(5) & !\clock_10ms|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1us\(4),
	datac => \clock_10ms|q_1us\(5),
	datad => \clock_10ms|LessThan0~0_combout\,
	combout => \clock_10ms|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y12_N24
\clock_10ms|sig_us~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|sig_us~feeder_combout\ = \clock_10ms|LessThan0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clock_10ms|LessThan0~1_combout\,
	combout => \clock_10ms|sig_us~feeder_combout\);

-- Location: FF_X32_Y12_N25
\clock_10ms|sig_us\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_10ms|sig_us~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|sig_us~q\);

-- Location: CLKCTRL_G6
\clock_10ms|sig_us~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_10ms|sig_us~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_10ms|sig_us~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y12_N0
\clock_10ms|q_1ms[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[0]~10_combout\ = \clock_10ms|q_1ms\(0) $ (VCC)
-- \clock_10ms|q_1ms[0]~11\ = CARRY(\clock_10ms|q_1ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_1ms\(0),
	datad => VCC,
	combout => \clock_10ms|q_1ms[0]~10_combout\,
	cout => \clock_10ms|q_1ms[0]~11\);

-- Location: FF_X33_Y12_N1
\clock_10ms|q_1ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_us~clkctrl_outclk\,
	d => \clock_10ms|q_1ms[0]~10_combout\,
	sclr => \clock_10ms|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1ms\(0));

-- Location: LCCOMB_X33_Y12_N2
\clock_10ms|q_1ms[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[1]~12_combout\ = (\clock_10ms|q_1ms\(1) & (!\clock_10ms|q_1ms[0]~11\)) # (!\clock_10ms|q_1ms\(1) & ((\clock_10ms|q_1ms[0]~11\) # (GND)))
-- \clock_10ms|q_1ms[1]~13\ = CARRY((!\clock_10ms|q_1ms[0]~11\) # (!\clock_10ms|q_1ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_1ms\(1),
	datad => VCC,
	cin => \clock_10ms|q_1ms[0]~11\,
	combout => \clock_10ms|q_1ms[1]~12_combout\,
	cout => \clock_10ms|q_1ms[1]~13\);

-- Location: FF_X33_Y12_N3
\clock_10ms|q_1ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_us~clkctrl_outclk\,
	d => \clock_10ms|q_1ms[1]~12_combout\,
	sclr => \clock_10ms|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1ms\(1));

-- Location: LCCOMB_X33_Y12_N4
\clock_10ms|q_1ms[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[2]~14_combout\ = (\clock_10ms|q_1ms\(2) & (\clock_10ms|q_1ms[1]~13\ $ (GND))) # (!\clock_10ms|q_1ms\(2) & (!\clock_10ms|q_1ms[1]~13\ & VCC))
-- \clock_10ms|q_1ms[2]~15\ = CARRY((\clock_10ms|q_1ms\(2) & !\clock_10ms|q_1ms[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_1ms\(2),
	datad => VCC,
	cin => \clock_10ms|q_1ms[1]~13\,
	combout => \clock_10ms|q_1ms[2]~14_combout\,
	cout => \clock_10ms|q_1ms[2]~15\);

-- Location: FF_X33_Y12_N5
\clock_10ms|q_1ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_us~clkctrl_outclk\,
	d => \clock_10ms|q_1ms[2]~14_combout\,
	sclr => \clock_10ms|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1ms\(2));

-- Location: LCCOMB_X33_Y12_N6
\clock_10ms|q_1ms[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[3]~16_combout\ = (\clock_10ms|q_1ms\(3) & (!\clock_10ms|q_1ms[2]~15\)) # (!\clock_10ms|q_1ms\(3) & ((\clock_10ms|q_1ms[2]~15\) # (GND)))
-- \clock_10ms|q_1ms[3]~17\ = CARRY((!\clock_10ms|q_1ms[2]~15\) # (!\clock_10ms|q_1ms\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1ms\(3),
	datad => VCC,
	cin => \clock_10ms|q_1ms[2]~15\,
	combout => \clock_10ms|q_1ms[3]~16_combout\,
	cout => \clock_10ms|q_1ms[3]~17\);

-- Location: FF_X33_Y12_N7
\clock_10ms|q_1ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_us~clkctrl_outclk\,
	d => \clock_10ms|q_1ms[3]~16_combout\,
	sclr => \clock_10ms|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1ms\(3));

-- Location: LCCOMB_X33_Y12_N8
\clock_10ms|q_1ms[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[4]~18_combout\ = (\clock_10ms|q_1ms\(4) & (\clock_10ms|q_1ms[3]~17\ $ (GND))) # (!\clock_10ms|q_1ms\(4) & (!\clock_10ms|q_1ms[3]~17\ & VCC))
-- \clock_10ms|q_1ms[4]~19\ = CARRY((\clock_10ms|q_1ms\(4) & !\clock_10ms|q_1ms[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_1ms\(4),
	datad => VCC,
	cin => \clock_10ms|q_1ms[3]~17\,
	combout => \clock_10ms|q_1ms[4]~18_combout\,
	cout => \clock_10ms|q_1ms[4]~19\);

-- Location: FF_X33_Y12_N9
\clock_10ms|q_1ms[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_us~clkctrl_outclk\,
	d => \clock_10ms|q_1ms[4]~18_combout\,
	sclr => \clock_10ms|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1ms\(4));

-- Location: LCCOMB_X33_Y12_N10
\clock_10ms|q_1ms[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[5]~20_combout\ = (\clock_10ms|q_1ms\(5) & (!\clock_10ms|q_1ms[4]~19\)) # (!\clock_10ms|q_1ms\(5) & ((\clock_10ms|q_1ms[4]~19\) # (GND)))
-- \clock_10ms|q_1ms[5]~21\ = CARRY((!\clock_10ms|q_1ms[4]~19\) # (!\clock_10ms|q_1ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1ms\(5),
	datad => VCC,
	cin => \clock_10ms|q_1ms[4]~19\,
	combout => \clock_10ms|q_1ms[5]~20_combout\,
	cout => \clock_10ms|q_1ms[5]~21\);

-- Location: FF_X33_Y12_N11
\clock_10ms|q_1ms[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_us~clkctrl_outclk\,
	d => \clock_10ms|q_1ms[5]~20_combout\,
	sclr => \clock_10ms|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1ms\(5));

-- Location: LCCOMB_X33_Y12_N12
\clock_10ms|q_1ms[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[6]~22_combout\ = (\clock_10ms|q_1ms\(6) & (\clock_10ms|q_1ms[5]~21\ $ (GND))) # (!\clock_10ms|q_1ms\(6) & (!\clock_10ms|q_1ms[5]~21\ & VCC))
-- \clock_10ms|q_1ms[6]~23\ = CARRY((\clock_10ms|q_1ms\(6) & !\clock_10ms|q_1ms[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1ms\(6),
	datad => VCC,
	cin => \clock_10ms|q_1ms[5]~21\,
	combout => \clock_10ms|q_1ms[6]~22_combout\,
	cout => \clock_10ms|q_1ms[6]~23\);

-- Location: FF_X33_Y12_N13
\clock_10ms|q_1ms[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_us~clkctrl_outclk\,
	d => \clock_10ms|q_1ms[6]~22_combout\,
	sclr => \clock_10ms|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1ms\(6));

-- Location: LCCOMB_X33_Y12_N14
\clock_10ms|q_1ms[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[7]~24_combout\ = (\clock_10ms|q_1ms\(7) & (!\clock_10ms|q_1ms[6]~23\)) # (!\clock_10ms|q_1ms\(7) & ((\clock_10ms|q_1ms[6]~23\) # (GND)))
-- \clock_10ms|q_1ms[7]~25\ = CARRY((!\clock_10ms|q_1ms[6]~23\) # (!\clock_10ms|q_1ms\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_1ms\(7),
	datad => VCC,
	cin => \clock_10ms|q_1ms[6]~23\,
	combout => \clock_10ms|q_1ms[7]~24_combout\,
	cout => \clock_10ms|q_1ms[7]~25\);

-- Location: FF_X33_Y12_N15
\clock_10ms|q_1ms[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_us~clkctrl_outclk\,
	d => \clock_10ms|q_1ms[7]~24_combout\,
	sclr => \clock_10ms|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1ms\(7));

-- Location: LCCOMB_X33_Y12_N16
\clock_10ms|q_1ms[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[8]~26_combout\ = (\clock_10ms|q_1ms\(8) & (\clock_10ms|q_1ms[7]~25\ $ (GND))) # (!\clock_10ms|q_1ms\(8) & (!\clock_10ms|q_1ms[7]~25\ & VCC))
-- \clock_10ms|q_1ms[8]~27\ = CARRY((\clock_10ms|q_1ms\(8) & !\clock_10ms|q_1ms[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_1ms\(8),
	datad => VCC,
	cin => \clock_10ms|q_1ms[7]~25\,
	combout => \clock_10ms|q_1ms[8]~26_combout\,
	cout => \clock_10ms|q_1ms[8]~27\);

-- Location: FF_X33_Y12_N17
\clock_10ms|q_1ms[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_us~clkctrl_outclk\,
	d => \clock_10ms|q_1ms[8]~26_combout\,
	sclr => \clock_10ms|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1ms\(8));

-- Location: LCCOMB_X33_Y12_N18
\clock_10ms|q_1ms[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[9]~28_combout\ = \clock_10ms|q_1ms[8]~27\ $ (\clock_10ms|q_1ms\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock_10ms|q_1ms\(9),
	cin => \clock_10ms|q_1ms[8]~27\,
	combout => \clock_10ms|q_1ms[9]~28_combout\);

-- Location: FF_X33_Y12_N19
\clock_10ms|q_1ms[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_us~clkctrl_outclk\,
	d => \clock_10ms|q_1ms[9]~28_combout\,
	sclr => \clock_10ms|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_1ms\(9));

-- Location: LCCOMB_X33_Y12_N30
\clock_10ms|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|LessThan1~0_combout\ = (((!\clock_10ms|q_1ms\(6)) # (!\clock_10ms|q_1ms\(7))) # (!\clock_10ms|q_1ms\(8))) # (!\clock_10ms|q_1ms\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1ms\(5),
	datab => \clock_10ms|q_1ms\(8),
	datac => \clock_10ms|q_1ms\(7),
	datad => \clock_10ms|q_1ms\(6),
	combout => \clock_10ms|LessThan1~0_combout\);

-- Location: LCCOMB_X33_Y12_N20
\clock_10ms|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|LessThan1~1_combout\ = (!\clock_10ms|q_1ms\(3) & (((!\clock_10ms|q_1ms\(1)) # (!\clock_10ms|q_1ms\(2))) # (!\clock_10ms|q_1ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1ms\(3),
	datab => \clock_10ms|q_1ms\(0),
	datac => \clock_10ms|q_1ms\(2),
	datad => \clock_10ms|q_1ms\(1),
	combout => \clock_10ms|LessThan1~1_combout\);

-- Location: LCCOMB_X33_Y12_N22
\clock_10ms|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|LessThan1~2_combout\ = (\clock_10ms|q_1ms\(9) & (!\clock_10ms|LessThan1~0_combout\ & ((\clock_10ms|q_1ms\(4)) # (!\clock_10ms|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1ms\(9),
	datab => \clock_10ms|q_1ms\(4),
	datac => \clock_10ms|LessThan1~0_combout\,
	datad => \clock_10ms|LessThan1~1_combout\,
	combout => \clock_10ms|LessThan1~2_combout\);

-- Location: LCCOMB_X33_Y12_N28
\clock_10ms|sig_ms~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|sig_ms~feeder_combout\ = \clock_10ms|LessThan1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_10ms|LessThan1~2_combout\,
	combout => \clock_10ms|sig_ms~feeder_combout\);

-- Location: FF_X33_Y12_N29
\clock_10ms|sig_ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_us~clkctrl_outclk\,
	d => \clock_10ms|sig_ms~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|sig_ms~q\);

-- Location: LCCOMB_X33_Y12_N26
\clock_10ms|clk_ms~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|clk_ms~feeder_combout\ = \clock_10ms|sig_ms~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|sig_ms~q\,
	combout => \clock_10ms|clk_ms~feeder_combout\);

-- Location: FF_X33_Y12_N27
\clock_10ms|clk_ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_10ms|clk_ms~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|clk_ms~q\);

-- Location: CLKCTRL_G9
\clock_10ms|clk_ms~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_10ms|clk_ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_10ms|clk_ms~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y23_N4
\serial_scan0|count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|count[0]~1_combout\ = !\serial_scan0|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_scan0|count\(0),
	combout => \serial_scan0|count[0]~1_combout\);

-- Location: FF_X10_Y23_N5
\serial_scan0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \serial_scan0|count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|count\(0));

-- Location: LCCOMB_X10_Y23_N2
\serial_scan0|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|count[1]~0_combout\ = \serial_scan0|count\(0) $ (\serial_scan0|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_scan0|count\(0),
	datac => \serial_scan0|count\(1),
	combout => \serial_scan0|count[1]~0_combout\);

-- Location: FF_X10_Y23_N3
\serial_scan0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \serial_scan0|count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|count\(1));

-- Location: LCCOMB_X10_Y23_N12
\serial_scan0|dataout[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout[5]~0_combout\ = (!\serial_scan0|count\(1)) # (!\serial_scan0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_scan0|count\(0),
	datac => \serial_scan0|count\(1),
	combout => \serial_scan0|dataout[5]~0_combout\);

-- Location: FF_X10_Y23_N13
\serial_scan0|en_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \serial_scan0|dataout[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|en_out\(3));

-- Location: LCCOMB_X10_Y23_N10
\serial_scan0|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|Equal2~0_combout\ = (\serial_scan0|count\(0)) # (!\serial_scan0|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_scan0|count\(0),
	datad => \serial_scan0|count\(1),
	combout => \serial_scan0|Equal2~0_combout\);

-- Location: LCCOMB_X10_Y23_N22
\serial_scan0|en_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|en_out[2]~feeder_combout\ = \serial_scan0|Equal2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \serial_scan0|Equal2~0_combout\,
	combout => \serial_scan0|en_out[2]~feeder_combout\);

-- Location: FF_X10_Y23_N23
\serial_scan0|en_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \serial_scan0|en_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|en_out\(2));

-- Location: LCCOMB_X10_Y23_N24
\serial_scan0|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|Equal2~1_combout\ = (\serial_scan0|count\(1)) # (!\serial_scan0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_scan0|count\(0),
	datac => \serial_scan0|count\(1),
	combout => \serial_scan0|Equal2~1_combout\);

-- Location: FF_X10_Y23_N25
\serial_scan0|en_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \serial_scan0|Equal2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|en_out\(1));

-- Location: LCCOMB_X13_Y23_N0
\serial_scan0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|Equal0~0_combout\ = (\serial_scan0|count\(1)) # (\serial_scan0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_scan0|count\(1),
	datad => \serial_scan0|count\(0),
	combout => \serial_scan0|Equal0~0_combout\);

-- Location: FF_X13_Y23_N1
\serial_scan0|en_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \serial_scan0|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|en_out\(0));

-- Location: FF_X10_Y23_N11
\serial_scan0|dataout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \serial_scan0|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|dataout\(7));

-- Location: CLKCTRL_G7
\clock_10ms|sig_ms~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_10ms|sig_ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_10ms|sig_ms~clkctrl_outclk\);

-- Location: LCCOMB_X14_Y20_N22
\clock_10ms|q_10ms~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_10ms~2_combout\ = (!\clock_10ms|q_10ms\(3) & (\clock_10ms|q_10ms\(2) $ (((\clock_10ms|q_10ms\(1) & \clock_10ms|q_10ms\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_10ms\(1),
	datab => \clock_10ms|q_10ms\(3),
	datac => \clock_10ms|q_10ms\(2),
	datad => \clock_10ms|q_10ms\(0),
	combout => \clock_10ms|q_10ms~2_combout\);

-- Location: FF_X14_Y20_N23
\clock_10ms|q_10ms[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_ms~clkctrl_outclk\,
	d => \clock_10ms|q_10ms~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_10ms\(2));

-- Location: LCCOMB_X14_Y20_N20
\clock_10ms|q_10ms~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_10ms~3_combout\ = (\clock_10ms|q_10ms\(2) & (\clock_10ms|q_10ms\(1) & (!\clock_10ms|q_10ms\(3) & \clock_10ms|q_10ms\(0)))) # (!\clock_10ms|q_10ms\(2) & (!\clock_10ms|q_10ms\(1) & (\clock_10ms|q_10ms\(3) & !\clock_10ms|q_10ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_10ms\(2),
	datab => \clock_10ms|q_10ms\(1),
	datac => \clock_10ms|q_10ms\(3),
	datad => \clock_10ms|q_10ms\(0),
	combout => \clock_10ms|q_10ms~3_combout\);

-- Location: FF_X14_Y20_N21
\clock_10ms|q_10ms[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_ms~clkctrl_outclk\,
	d => \clock_10ms|q_10ms~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_10ms\(3));

-- Location: LCCOMB_X14_Y20_N24
\clock_10ms|q_10ms~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_10ms~1_combout\ = (!\clock_10ms|q_10ms\(3) & (\clock_10ms|q_10ms\(1) $ (\clock_10ms|q_10ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_10ms\(3),
	datac => \clock_10ms|q_10ms\(1),
	datad => \clock_10ms|q_10ms\(0),
	combout => \clock_10ms|q_10ms~1_combout\);

-- Location: FF_X14_Y20_N25
\clock_10ms|q_10ms[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_ms~clkctrl_outclk\,
	d => \clock_10ms|q_10ms~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_10ms\(1));

-- Location: LCCOMB_X14_Y20_N18
\clock_10ms|q_10ms~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_10ms~0_combout\ = (!\clock_10ms|q_10ms\(0) & (((!\clock_10ms|q_10ms\(1) & !\clock_10ms|q_10ms\(2))) # (!\clock_10ms|q_10ms\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_10ms\(1),
	datab => \clock_10ms|q_10ms\(3),
	datac => \clock_10ms|q_10ms\(0),
	datad => \clock_10ms|q_10ms\(2),
	combout => \clock_10ms|q_10ms~0_combout\);

-- Location: FF_X14_Y20_N19
\clock_10ms|q_10ms[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_ms~clkctrl_outclk\,
	d => \clock_10ms|q_10ms~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|q_10ms\(0));

-- Location: LCCOMB_X14_Y20_N28
\clock_10ms|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|LessThan2~0_combout\ = (\clock_10ms|q_10ms\(3) & ((\clock_10ms|q_10ms\(0)) # ((\clock_10ms|q_10ms\(1)) # (\clock_10ms|q_10ms\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_10ms\(0),
	datab => \clock_10ms|q_10ms\(1),
	datac => \clock_10ms|q_10ms\(2),
	datad => \clock_10ms|q_10ms\(3),
	combout => \clock_10ms|LessThan2~0_combout\);

-- Location: FF_X14_Y20_N29
\clock_10ms|sig_10ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|sig_ms~clkctrl_outclk\,
	d => \clock_10ms|LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|sig_10ms~q\);

-- Location: FF_X14_Y20_N31
\clock_10ms|clk_10ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \clock_10ms|sig_10ms~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|clk_10ms~q\);

-- Location: IOIBUF_X34_Y12_N22
\stop_key~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_stop_key,
	o => \stop_key~input_o\);

-- Location: LCCOMB_X23_Y15_N0
\state|sum~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|sum~6_combout\ = (!\stop_key~input_o\ & \state|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop_key~input_o\,
	datad => \state|Add0~8_combout\,
	combout => \state|sum~6_combout\);

-- Location: FF_X23_Y15_N1
\state|sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \state|sum~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state|sum\(4));

-- Location: LCCOMB_X23_Y15_N10
\state|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|sum~0_combout\ = ((\state|sum\(3)) # ((\state|sum\(2)) # (!\state|sum\(0)))) # (!\state|sum\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state|sum\(1),
	datab => \state|sum\(3),
	datac => \state|sum\(2),
	datad => \state|sum\(0),
	combout => \state|sum~0_combout\);

-- Location: LCCOMB_X23_Y15_N20
\state|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|Add0~8_combout\ = (\state|sum\(4) & (\state|Add0~7\ $ (GND))) # (!\state|sum\(4) & (!\state|Add0~7\ & VCC))
-- \state|Add0~9\ = CARRY((\state|sum\(4) & !\state|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state|sum\(4),
	datad => VCC,
	cin => \state|Add0~7\,
	combout => \state|Add0~8_combout\,
	cout => \state|Add0~9\);

-- Location: LCCOMB_X23_Y15_N22
\state|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|Add0~10_combout\ = \state|sum\(5) $ (\state|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state|sum\(5),
	cin => \state|Add0~9\,
	combout => \state|Add0~10_combout\);

-- Location: LCCOMB_X23_Y15_N8
\state|sum~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|sum~7_combout\ = (!\stop_key~input_o\ & \state|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stop_key~input_o\,
	datac => \state|Add0~10_combout\,
	combout => \state|sum~7_combout\);

-- Location: FF_X23_Y15_N9
\state|sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \state|sum~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state|sum\(5));

-- Location: LCCOMB_X23_Y15_N12
\state|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|Add0~0_combout\ = \state|sum\(0) $ (GND)
-- \state|Add0~1\ = CARRY(!\state|sum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state|sum\(0),
	datad => VCC,
	combout => \state|Add0~0_combout\,
	cout => \state|Add0~1\);

-- Location: LCCOMB_X23_Y15_N24
\state|sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|sum~1_combout\ = (\state|Add0~0_combout\ & ((\state|sum~0_combout\) # ((!\state|sum\(5)) # (!\state|sum\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state|sum~0_combout\,
	datab => \state|sum\(4),
	datac => \state|sum\(5),
	datad => \state|Add0~0_combout\,
	combout => \state|sum~1_combout\);

-- Location: LCCOMB_X23_Y15_N26
\state|sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|sum~5_combout\ = (!\stop_key~input_o\ & !\state|sum~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop_key~input_o\,
	datad => \state|sum~1_combout\,
	combout => \state|sum~5_combout\);

-- Location: FF_X23_Y15_N27
\state|sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \state|sum~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state|sum\(0));

-- Location: LCCOMB_X23_Y15_N14
\state|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|Add0~2_combout\ = (\state|sum\(1) & (!\state|Add0~1\)) # (!\state|sum\(1) & ((\state|Add0~1\) # (GND)))
-- \state|Add0~3\ = CARRY((!\state|Add0~1\) # (!\state|sum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \state|sum\(1),
	datad => VCC,
	cin => \state|Add0~1\,
	combout => \state|Add0~2_combout\,
	cout => \state|Add0~3\);

-- Location: LCCOMB_X23_Y15_N6
\state|sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|sum~4_combout\ = (!\stop_key~input_o\ & \state|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stop_key~input_o\,
	datad => \state|Add0~2_combout\,
	combout => \state|sum~4_combout\);

-- Location: FF_X23_Y15_N7
\state|sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \state|sum~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state|sum\(1));

-- Location: LCCOMB_X23_Y15_N16
\state|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|Add0~4_combout\ = (\state|sum\(2) & (\state|Add0~3\ $ (GND))) # (!\state|sum\(2) & (!\state|Add0~3\ & VCC))
-- \state|Add0~5\ = CARRY((\state|sum\(2) & !\state|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state|sum\(2),
	datad => VCC,
	cin => \state|Add0~3\,
	combout => \state|Add0~4_combout\,
	cout => \state|Add0~5\);

-- Location: LCCOMB_X23_Y15_N4
\state|sum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|sum~3_combout\ = (!\stop_key~input_o\ & \state|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop_key~input_o\,
	datad => \state|Add0~4_combout\,
	combout => \state|sum~3_combout\);

-- Location: FF_X23_Y15_N5
\state|sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \state|sum~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state|sum\(2));

-- Location: LCCOMB_X23_Y15_N18
\state|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|Add0~6_combout\ = (\state|sum\(3) & (!\state|Add0~5\)) # (!\state|sum\(3) & ((\state|Add0~5\) # (GND)))
-- \state|Add0~7\ = CARRY((!\state|Add0~5\) # (!\state|sum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \state|sum\(3),
	datad => VCC,
	cin => \state|Add0~5\,
	combout => \state|Add0~6_combout\,
	cout => \state|Add0~7\);

-- Location: LCCOMB_X23_Y15_N2
\state|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|sum~2_combout\ = (!\stop_key~input_o\ & \state|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop_key~input_o\,
	datad => \state|Add0~6_combout\,
	combout => \state|sum~2_combout\);

-- Location: FF_X23_Y15_N3
\state|sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \state|sum~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state|sum\(3));

-- Location: LCCOMB_X23_Y15_N28
\state|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|y~0_combout\ = (\stop_key~input_o\) # ((\state|sum~1_combout\) # ((\state|Add0~4_combout\) # (!\state|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop_key~input_o\,
	datab => \state|sum~1_combout\,
	datac => \state|Add0~2_combout\,
	datad => \state|Add0~4_combout\,
	combout => \state|y~0_combout\);

-- Location: LCCOMB_X23_Y15_N30
\state|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state|y~1_combout\ = ((\state|Add0~6_combout\) # ((\state|y~0_combout\) # (!\state|Add0~10_combout\))) # (!\state|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state|Add0~8_combout\,
	datab => \state|Add0~6_combout\,
	datac => \state|Add0~10_combout\,
	datad => \state|y~0_combout\,
	combout => \state|y~1_combout\);

-- Location: FF_X23_Y15_N31
\state|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \state|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state|y~q\);

-- Location: LCCOMB_X14_Y23_N24
\inverter0|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inverter0|temp~0_combout\ = !\inverter0|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inverter0|temp~q\,
	combout => \inverter0|temp~0_combout\);

-- Location: FF_X14_Y23_N25
\inverter0|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \state|ALT_INV_y~q\,
	d => \inverter0|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inverter0|temp~q\);

-- Location: LCCOMB_X14_Y20_N30
stop_and_clk : cycloneive_lcell_comb
-- Equation(s):
-- \stop_and_clk~combout\ = LCELL((!\inverter0|temp~q\) # (!\clock_10ms|clk_10ms~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_10ms|clk_10ms~q\,
	datad => \inverter0|temp~q\,
	combout => \stop_and_clk~combout\);

-- Location: LCCOMB_X12_Y23_N18
\cnt0|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt0|temp~1_combout\ = (!\cnt0|temp\(3) & (\cnt0|temp\(0) $ (\cnt0|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt0|temp\(0),
	datac => \cnt0|temp\(3),
	datad => \cnt0|temp\(1),
	combout => \cnt0|temp~1_combout\);

-- Location: LCCOMB_X12_Y23_N8
\cnt0|temp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt0|temp[1]~feeder_combout\ = \cnt0|temp~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt0|temp~1_combout\,
	combout => \cnt0|temp[1]~feeder_combout\);

-- Location: IOIBUF_X34_Y12_N15
\rst_key~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_key,
	o => \rst_key~input_o\);

-- Location: LCCOMB_X16_Y23_N16
\clear|sum~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|sum~6_combout\ = (!\rst_key~input_o\ & \clear|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_key~input_o\,
	datad => \clear|Add0~8_combout\,
	combout => \clear|sum~6_combout\);

-- Location: FF_X16_Y23_N17
\clear|sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clear|sum~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear|sum\(4));

-- Location: LCCOMB_X16_Y23_N12
\clear|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|Add0~8_combout\ = (\clear|sum\(4) & (\clear|Add0~7\ $ (GND))) # (!\clear|sum\(4) & (!\clear|Add0~7\ & VCC))
-- \clear|Add0~9\ = CARRY((\clear|sum\(4) & !\clear|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clear|sum\(4),
	datad => VCC,
	cin => \clear|Add0~7\,
	combout => \clear|Add0~8_combout\,
	cout => \clear|Add0~9\);

-- Location: LCCOMB_X16_Y23_N14
\clear|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|Add0~10_combout\ = \clear|Add0~9\ $ (\clear|sum\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clear|sum\(5),
	cin => \clear|Add0~9\,
	combout => \clear|Add0~10_combout\);

-- Location: LCCOMB_X16_Y23_N18
\clear|sum~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|sum~7_combout\ = (!\rst_key~input_o\ & \clear|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_key~input_o\,
	datac => \clear|Add0~10_combout\,
	combout => \clear|sum~7_combout\);

-- Location: FF_X16_Y23_N19
\clear|sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clear|sum~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear|sum\(5));

-- Location: LCCOMB_X16_Y23_N4
\clear|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|Add0~0_combout\ = \clear|sum\(0) $ (GND)
-- \clear|Add0~1\ = CARRY(!\clear|sum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear|sum\(0),
	datad => VCC,
	combout => \clear|Add0~0_combout\,
	cout => \clear|Add0~1\);

-- Location: LCCOMB_X16_Y23_N28
\clear|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|sum~0_combout\ = (\clear|sum\(2)) # (((\clear|sum\(3)) # (!\clear|sum\(0))) # (!\clear|sum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear|sum\(2),
	datab => \clear|sum\(1),
	datac => \clear|sum\(0),
	datad => \clear|sum\(3),
	combout => \clear|sum~0_combout\);

-- Location: LCCOMB_X16_Y23_N22
\clear|sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|sum~1_combout\ = (\clear|Add0~0_combout\ & (((\clear|sum~0_combout\) # (!\clear|sum\(5))) # (!\clear|sum\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear|sum\(4),
	datab => \clear|sum\(5),
	datac => \clear|Add0~0_combout\,
	datad => \clear|sum~0_combout\,
	combout => \clear|sum~1_combout\);

-- Location: LCCOMB_X16_Y23_N26
\clear|sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|sum~5_combout\ = (!\clear|sum~1_combout\ & !\rst_key~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear|sum~1_combout\,
	datac => \rst_key~input_o\,
	combout => \clear|sum~5_combout\);

-- Location: FF_X16_Y23_N27
\clear|sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clear|sum~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear|sum\(0));

-- Location: LCCOMB_X16_Y23_N6
\clear|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|Add0~2_combout\ = (\clear|sum\(1) & (!\clear|Add0~1\)) # (!\clear|sum\(1) & ((\clear|Add0~1\) # (GND)))
-- \clear|Add0~3\ = CARRY((!\clear|Add0~1\) # (!\clear|sum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clear|sum\(1),
	datad => VCC,
	cin => \clear|Add0~1\,
	combout => \clear|Add0~2_combout\,
	cout => \clear|Add0~3\);

-- Location: LCCOMB_X16_Y23_N0
\clear|sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|sum~4_combout\ = (!\rst_key~input_o\ & \clear|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_key~input_o\,
	datad => \clear|Add0~2_combout\,
	combout => \clear|sum~4_combout\);

-- Location: FF_X16_Y23_N1
\clear|sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clear|sum~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear|sum\(1));

-- Location: LCCOMB_X16_Y23_N8
\clear|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|Add0~4_combout\ = (\clear|sum\(2) & (\clear|Add0~3\ $ (GND))) # (!\clear|sum\(2) & (!\clear|Add0~3\ & VCC))
-- \clear|Add0~5\ = CARRY((\clear|sum\(2) & !\clear|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clear|sum\(2),
	datad => VCC,
	cin => \clear|Add0~3\,
	combout => \clear|Add0~4_combout\,
	cout => \clear|Add0~5\);

-- Location: LCCOMB_X16_Y23_N30
\clear|sum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|sum~3_combout\ = (!\rst_key~input_o\ & \clear|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst_key~input_o\,
	datad => \clear|Add0~4_combout\,
	combout => \clear|sum~3_combout\);

-- Location: FF_X16_Y23_N31
\clear|sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clear|sum~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear|sum\(2));

-- Location: LCCOMB_X16_Y23_N10
\clear|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|Add0~6_combout\ = (\clear|sum\(3) & (!\clear|Add0~5\)) # (!\clear|sum\(3) & ((\clear|Add0~5\) # (GND)))
-- \clear|Add0~7\ = CARRY((!\clear|Add0~5\) # (!\clear|sum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clear|sum\(3),
	datad => VCC,
	cin => \clear|Add0~5\,
	combout => \clear|Add0~6_combout\,
	cout => \clear|Add0~7\);

-- Location: LCCOMB_X16_Y23_N24
\clear|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|sum~2_combout\ = (!\rst_key~input_o\ & \clear|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_key~input_o\,
	datad => \clear|Add0~6_combout\,
	combout => \clear|sum~2_combout\);

-- Location: FF_X16_Y23_N25
\clear|sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clear|sum~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear|sum\(3));

-- Location: LCCOMB_X16_Y23_N20
\clear|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|y~0_combout\ = (\clear|sum~1_combout\) # ((\rst_key~input_o\) # ((\clear|Add0~4_combout\) # (!\clear|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear|sum~1_combout\,
	datab => \rst_key~input_o\,
	datac => \clear|Add0~4_combout\,
	datad => \clear|Add0~2_combout\,
	combout => \clear|y~0_combout\);

-- Location: LCCOMB_X14_Y23_N28
\clear|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clear|y~1_combout\ = ((\clear|Add0~6_combout\) # ((\clear|y~0_combout\) # (!\clear|Add0~10_combout\))) # (!\clear|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear|Add0~8_combout\,
	datab => \clear|Add0~6_combout\,
	datac => \clear|Add0~10_combout\,
	datad => \clear|y~0_combout\,
	combout => \clear|y~1_combout\);

-- Location: FF_X14_Y23_N29
\clear|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clear|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clear|y~q\);

-- Location: LCCOMB_X14_Y23_N26
rst_or_inverterout : cycloneive_lcell_comb
-- Equation(s):
-- \rst_or_inverterout~combout\ = (!\inverter0|temp~q\ & !\clear|y~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inverter0|temp~q\,
	datad => \clear|y~q\,
	combout => \rst_or_inverterout~combout\);

-- Location: FF_X12_Y23_N9
\cnt0|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stop_and_clk~combout\,
	d => \cnt0|temp[1]~feeder_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt0|temp\(1));

-- Location: LCCOMB_X12_Y23_N10
\cnt0|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt0|temp~2_combout\ = (!\cnt0|temp\(3) & (\cnt0|temp\(2) $ (((\cnt0|temp\(0) & \cnt0|temp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(0),
	datab => \cnt0|temp\(1),
	datac => \cnt0|temp\(2),
	datad => \cnt0|temp\(3),
	combout => \cnt0|temp~2_combout\);

-- Location: FF_X12_Y23_N11
\cnt0|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stop_and_clk~combout\,
	d => \cnt0|temp~2_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt0|temp\(2));

-- Location: LCCOMB_X12_Y23_N14
\cnt0|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt0|temp~0_combout\ = (!\cnt0|temp\(0) & (((!\cnt0|temp\(1) & !\cnt0|temp\(2))) # (!\cnt0|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(3),
	datab => \cnt0|temp\(0),
	datac => \cnt0|temp\(1),
	datad => \cnt0|temp\(2),
	combout => \cnt0|temp~0_combout\);

-- Location: FF_X12_Y23_N1
\cnt0|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stop_and_clk~combout\,
	asdata => \cnt0|temp~0_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt0|temp\(0));

-- Location: LCCOMB_X12_Y23_N22
\cnt0|temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt0|temp~3_combout\ = (\cnt0|temp\(0) & (\cnt0|temp\(1) & (!\cnt0|temp\(3) & \cnt0|temp\(2)))) # (!\cnt0|temp\(0) & (!\cnt0|temp\(1) & (\cnt0|temp\(3) & !\cnt0|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(0),
	datab => \cnt0|temp\(1),
	datac => \cnt0|temp\(3),
	datad => \cnt0|temp\(2),
	combout => \cnt0|temp~3_combout\);

-- Location: FF_X12_Y23_N23
\cnt0|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stop_and_clk~combout\,
	d => \cnt0|temp~3_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt0|temp\(3));

-- Location: LCCOMB_X12_Y23_N0
\cnt0|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt0|Equal0~combout\ = LCELL(((\cnt0|temp\(1)) # ((\cnt0|temp\(2)) # (!\cnt0|temp\(0)))) # (!\cnt0|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(3),
	datab => \cnt0|temp\(1),
	datac => \cnt0|temp\(0),
	datad => \cnt0|temp\(2),
	combout => \cnt0|Equal0~combout\);

-- Location: LCCOMB_X9_Y23_N16
\cnt1|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1|temp~1_combout\ = (!\cnt1|temp\(3) & (\cnt1|temp\(0) $ (\cnt1|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(0),
	datac => \cnt1|temp\(3),
	datad => \cnt1|temp\(1),
	combout => \cnt1|temp~1_combout\);

-- Location: FF_X9_Y23_N19
\cnt1|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cnt0|Equal0~combout\,
	asdata => \cnt1|temp~1_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt1|temp\(1));

-- Location: LCCOMB_X9_Y23_N26
\cnt1|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1|temp~2_combout\ = (!\cnt1|temp\(3) & (\cnt1|temp\(2) $ (((\cnt1|temp\(1) & \cnt1|temp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(1),
	datab => \cnt1|temp\(3),
	datac => \cnt1|temp\(2),
	datad => \cnt1|temp\(0),
	combout => \cnt1|temp~2_combout\);

-- Location: FF_X9_Y23_N27
\cnt1|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cnt0|Equal0~combout\,
	d => \cnt1|temp~2_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt1|temp\(2));

-- Location: LCCOMB_X9_Y23_N12
\cnt1|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1|temp~0_combout\ = (!\cnt1|temp\(0) & (((!\cnt1|temp\(1) & !\cnt1|temp\(2))) # (!\cnt1|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(0),
	datab => \cnt1|temp\(1),
	datac => \cnt1|temp\(2),
	datad => \cnt1|temp\(3),
	combout => \cnt1|temp~0_combout\);

-- Location: FF_X9_Y23_N1
\cnt1|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cnt0|Equal0~combout\,
	asdata => \cnt1|temp~0_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt1|temp\(0));

-- Location: LCCOMB_X9_Y23_N14
\cnt1|temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1|temp~3_combout\ = (\cnt1|temp\(0) & (\cnt1|temp\(2) & (!\cnt1|temp\(3) & \cnt1|temp\(1)))) # (!\cnt1|temp\(0) & (!\cnt1|temp\(2) & (\cnt1|temp\(3) & !\cnt1|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(0),
	datab => \cnt1|temp\(2),
	datac => \cnt1|temp\(3),
	datad => \cnt1|temp\(1),
	combout => \cnt1|temp~3_combout\);

-- Location: FF_X9_Y23_N15
\cnt1|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cnt0|Equal0~combout\,
	d => \cnt1|temp~3_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt1|temp\(3));

-- Location: LCCOMB_X10_Y23_N6
\decoder1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|Mux6~0_combout\ = (\cnt1|temp\(0) & ((\cnt1|temp\(3)) # (\cnt1|temp\(1) $ (\cnt1|temp\(2))))) # (!\cnt1|temp\(0) & ((\cnt1|temp\(1)) # (\cnt1|temp\(3) $ (\cnt1|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(3),
	datab => \cnt1|temp\(1),
	datac => \cnt1|temp\(2),
	datad => \cnt1|temp\(0),
	combout => \decoder1|Mux6~0_combout\);

-- Location: LCCOMB_X9_Y23_N0
\cnt1|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1|Equal0~combout\ = LCELL((\cnt1|temp\(2)) # ((\cnt1|temp\(1)) # ((!\cnt1|temp\(3)) # (!\cnt1|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(2),
	datab => \cnt1|temp\(1),
	datac => \cnt1|temp\(0),
	datad => \cnt1|temp\(3),
	combout => \cnt1|Equal0~combout\);

-- Location: LCCOMB_X13_Y23_N8
\cnt2|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt2|temp~0_combout\ = (!\cnt2|temp\(0) & (((!\cnt2|temp\(1) & !\cnt2|temp\(2))) # (!\cnt2|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(3),
	datab => \cnt2|temp\(1),
	datac => \cnt2|temp\(2),
	datad => \cnt2|temp\(0),
	combout => \cnt2|temp~0_combout\);

-- Location: FF_X13_Y23_N3
\cnt2|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cnt1|Equal0~combout\,
	asdata => \cnt2|temp~0_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt2|temp\(0));

-- Location: LCCOMB_X13_Y23_N4
\cnt2|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt2|temp~1_combout\ = (!\cnt2|temp\(3) & (\cnt2|temp\(1) $ (\cnt2|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(3),
	datac => \cnt2|temp\(1),
	datad => \cnt2|temp\(0),
	combout => \cnt2|temp~1_combout\);

-- Location: FF_X13_Y23_N15
\cnt2|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cnt1|Equal0~combout\,
	asdata => \cnt2|temp~1_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt2|temp\(1));

-- Location: LCCOMB_X13_Y23_N26
\cnt2|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt2|temp~2_combout\ = (!\cnt2|temp\(3) & (\cnt2|temp\(2) $ (((\cnt2|temp\(1) & \cnt2|temp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(3),
	datab => \cnt2|temp\(1),
	datac => \cnt2|temp\(2),
	datad => \cnt2|temp\(0),
	combout => \cnt2|temp~2_combout\);

-- Location: FF_X13_Y23_N27
\cnt2|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cnt1|Equal0~combout\,
	d => \cnt2|temp~2_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt2|temp\(2));

-- Location: LCCOMB_X13_Y23_N30
\cnt2|temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt2|temp~3_combout\ = (\cnt2|temp\(2) & (\cnt2|temp\(1) & (!\cnt2|temp\(3) & \cnt2|temp\(0)))) # (!\cnt2|temp\(2) & (!\cnt2|temp\(1) & (\cnt2|temp\(3) & !\cnt2|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(2),
	datab => \cnt2|temp\(1),
	datac => \cnt2|temp\(3),
	datad => \cnt2|temp\(0),
	combout => \cnt2|temp~3_combout\);

-- Location: FF_X13_Y23_N31
\cnt2|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cnt1|Equal0~combout\,
	d => \cnt2|temp~3_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt2|temp\(3));

-- Location: LCCOMB_X13_Y23_N18
\decoder2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|Mux6~0_combout\ = (\cnt2|temp\(0) & ((\cnt2|temp\(3)) # (\cnt2|temp\(1) $ (\cnt2|temp\(2))))) # (!\cnt2|temp\(0) & ((\cnt2|temp\(1)) # (\cnt2|temp\(3) $ (\cnt2|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(3),
	datab => \cnt2|temp\(1),
	datac => \cnt2|temp\(2),
	datad => \cnt2|temp\(0),
	combout => \decoder2|Mux6~0_combout\);

-- Location: LCCOMB_X10_Y23_N20
\serial_scan0|dataout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~2_combout\ = (\serial_scan0|count\(1) & (((\serial_scan0|count\(0)) # (!\decoder2|Mux6~0_combout\)))) # (!\serial_scan0|count\(1) & (!\decoder1|Mux6~0_combout\ & ((\serial_scan0|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|count\(1),
	datab => \decoder1|Mux6~0_combout\,
	datac => \decoder2|Mux6~0_combout\,
	datad => \serial_scan0|count\(0),
	combout => \serial_scan0|dataout~2_combout\);

-- Location: LCCOMB_X10_Y23_N28
\serial_scan0|dataout[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout[5]~1_combout\ = \serial_scan0|count\(0) $ (!\serial_scan0|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_scan0|count\(0),
	datad => \serial_scan0|count\(1),
	combout => \serial_scan0|dataout[5]~1_combout\);

-- Location: LCCOMB_X12_Y23_N16
\decoder0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|Mux6~0_combout\ = (\cnt0|temp\(0) & ((\cnt0|temp\(3)) # (\cnt0|temp\(1) $ (\cnt0|temp\(2))))) # (!\cnt0|temp\(0) & ((\cnt0|temp\(1)) # (\cnt0|temp\(3) $ (\cnt0|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(3),
	datab => \cnt0|temp\(1),
	datac => \cnt0|temp\(0),
	datad => \cnt0|temp\(2),
	combout => \decoder0|Mux6~0_combout\);

-- Location: LCCOMB_X13_Y23_N22
\cnt2|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt2|Equal0~combout\ = LCELL(((\cnt2|temp\(1)) # ((\cnt2|temp\(2)) # (!\cnt2|temp\(0)))) # (!\cnt2|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(3),
	datab => \cnt2|temp\(1),
	datac => \cnt2|temp\(2),
	datad => \cnt2|temp\(0),
	combout => \cnt2|Equal0~combout\);

-- Location: CLKCTRL_G4
\cnt2|Equal0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cnt2|Equal0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cnt2|Equal0~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y23_N8
\cnt3|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt3|temp~2_combout\ = (!\cnt3|temp\(0) & ((!\cnt3|temp\(1)) # (!\cnt3|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt3|temp\(2),
	datac => \cnt3|temp\(0),
	datad => \cnt3|temp\(1),
	combout => \cnt3|temp~2_combout\);

-- Location: FF_X11_Y23_N9
\cnt3|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cnt2|Equal0~clkctrl_outclk\,
	d => \cnt3|temp~2_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt3|temp\(0));

-- Location: LCCOMB_X11_Y23_N2
\cnt3|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt3|temp~1_combout\ = (!\cnt3|temp\(2) & (\cnt3|temp\(1) $ (\cnt3|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt3|temp\(2),
	datac => \cnt3|temp\(1),
	datad => \cnt3|temp\(0),
	combout => \cnt3|temp~1_combout\);

-- Location: FF_X11_Y23_N3
\cnt3|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cnt2|Equal0~clkctrl_outclk\,
	d => \cnt3|temp~1_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt3|temp\(1));

-- Location: LCCOMB_X11_Y23_N24
\cnt3|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt3|temp~0_combout\ = (\cnt3|temp\(1) & (!\cnt3|temp\(2) & \cnt3|temp\(0))) # (!\cnt3|temp\(1) & (\cnt3|temp\(2) & !\cnt3|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt3|temp\(1),
	datac => \cnt3|temp\(2),
	datad => \cnt3|temp\(0),
	combout => \cnt3|temp~0_combout\);

-- Location: FF_X11_Y23_N25
\cnt3|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cnt2|Equal0~clkctrl_outclk\,
	d => \cnt3|temp~0_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt3|temp\(2));

-- Location: LCCOMB_X11_Y23_N26
\decoder3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder3|Mux6~0_combout\ = (\cnt3|temp\(2) & ((!\cnt3|temp\(0)) # (!\cnt3|temp\(1)))) # (!\cnt3|temp\(2) & (\cnt3|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt3|temp\(2),
	datac => \cnt3|temp\(1),
	datad => \cnt3|temp\(0),
	combout => \decoder3|Mux6~0_combout\);

-- Location: LCCOMB_X10_Y23_N16
\serial_scan0|dataout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~3_combout\ = (\serial_scan0|dataout~2_combout\ & (((!\decoder3|Mux6~0_combout\)) # (!\serial_scan0|dataout[5]~1_combout\))) # (!\serial_scan0|dataout~2_combout\ & (\serial_scan0|dataout[5]~1_combout\ & (!\decoder0|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|dataout~2_combout\,
	datab => \serial_scan0|dataout[5]~1_combout\,
	datac => \decoder0|Mux6~0_combout\,
	datad => \decoder3|Mux6~0_combout\,
	combout => \serial_scan0|dataout~3_combout\);

-- Location: FF_X10_Y23_N17
\serial_scan0|dataout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \serial_scan0|dataout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|dataout\(6));

-- Location: LCCOMB_X12_Y23_N24
\decoder1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|Mux5~0_combout\ = (\cnt1|temp\(0) & (\cnt1|temp\(3) $ (((\cnt1|temp\(1)) # (!\cnt1|temp\(2)))))) # (!\cnt1|temp\(0) & (\cnt1|temp\(1) & (!\cnt1|temp\(3) & !\cnt1|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(0),
	datab => \cnt1|temp\(1),
	datac => \cnt1|temp\(3),
	datad => \cnt1|temp\(2),
	combout => \decoder1|Mux5~0_combout\);

-- Location: LCCOMB_X13_Y23_N20
\decoder2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|Mux5~0_combout\ = (\cnt2|temp\(2) & (\cnt2|temp\(0) & (\cnt2|temp\(1) $ (\cnt2|temp\(3))))) # (!\cnt2|temp\(2) & (!\cnt2|temp\(3) & ((\cnt2|temp\(1)) # (\cnt2|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(2),
	datab => \cnt2|temp\(1),
	datac => \cnt2|temp\(3),
	datad => \cnt2|temp\(0),
	combout => \decoder2|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y23_N4
\serial_scan0|dataout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~4_combout\ = (\serial_scan0|count\(1) & (((\decoder2|Mux5~0_combout\) # (\serial_scan0|count\(0))))) # (!\serial_scan0|count\(1) & (\decoder1|Mux5~0_combout\ & ((\serial_scan0|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder1|Mux5~0_combout\,
	datab => \decoder2|Mux5~0_combout\,
	datac => \serial_scan0|count\(1),
	datad => \serial_scan0|count\(0),
	combout => \serial_scan0|dataout~4_combout\);

-- Location: LCCOMB_X11_Y23_N20
\decoder3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder3|Mux5~0_combout\ = (\cnt3|temp\(2) & (\cnt3|temp\(1) & \cnt3|temp\(0))) # (!\cnt3|temp\(2) & ((\cnt3|temp\(1)) # (\cnt3|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt3|temp\(2),
	datac => \cnt3|temp\(1),
	datad => \cnt3|temp\(0),
	combout => \decoder3|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y23_N30
\decoder0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|Mux5~0_combout\ = (\cnt0|temp\(1) & (!\cnt0|temp\(3) & ((\cnt0|temp\(0)) # (!\cnt0|temp\(2))))) # (!\cnt0|temp\(1) & (\cnt0|temp\(0) & (\cnt0|temp\(3) $ (!\cnt0|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(3),
	datab => \cnt0|temp\(1),
	datac => \cnt0|temp\(0),
	datad => \cnt0|temp\(2),
	combout => \decoder0|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y23_N6
\serial_scan0|dataout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~5_combout\ = (\serial_scan0|dataout~4_combout\ & ((\decoder3|Mux5~0_combout\) # ((!\serial_scan0|dataout[5]~1_combout\)))) # (!\serial_scan0|dataout~4_combout\ & (((\decoder0|Mux5~0_combout\ & \serial_scan0|dataout[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|dataout~4_combout\,
	datab => \decoder3|Mux5~0_combout\,
	datac => \decoder0|Mux5~0_combout\,
	datad => \serial_scan0|dataout[5]~1_combout\,
	combout => \serial_scan0|dataout~5_combout\);

-- Location: FF_X12_Y23_N7
\serial_scan0|dataout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \serial_scan0|dataout~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|dataout\(5));

-- Location: LCCOMB_X9_Y23_N18
\decoder1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|Mux4~0_combout\ = (\cnt1|temp\(1) & (\cnt1|temp\(0) & (!\cnt1|temp\(3)))) # (!\cnt1|temp\(1) & ((\cnt1|temp\(2) & ((!\cnt1|temp\(3)))) # (!\cnt1|temp\(2) & (\cnt1|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(0),
	datab => \cnt1|temp\(3),
	datac => \cnt1|temp\(1),
	datad => \cnt1|temp\(2),
	combout => \decoder1|Mux4~0_combout\);

-- Location: LCCOMB_X13_Y23_N6
\decoder2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|Mux4~0_combout\ = (\cnt2|temp\(1) & (!\cnt2|temp\(3) & ((\cnt2|temp\(0))))) # (!\cnt2|temp\(1) & ((\cnt2|temp\(2) & (!\cnt2|temp\(3))) # (!\cnt2|temp\(2) & ((\cnt2|temp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(3),
	datab => \cnt2|temp\(1),
	datac => \cnt2|temp\(2),
	datad => \cnt2|temp\(0),
	combout => \decoder2|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y23_N8
\serial_scan0|dataout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~6_combout\ = (\serial_scan0|count\(1) & (((\decoder2|Mux4~0_combout\) # (\serial_scan0|count\(0))))) # (!\serial_scan0|count\(1) & (\decoder1|Mux4~0_combout\ & ((\serial_scan0|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|count\(1),
	datab => \decoder1|Mux4~0_combout\,
	datac => \decoder2|Mux4~0_combout\,
	datad => \serial_scan0|count\(0),
	combout => \serial_scan0|dataout~6_combout\);

-- Location: LCCOMB_X12_Y23_N20
\decoder0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|Mux4~0_combout\ = (\cnt0|temp\(1) & (!\cnt0|temp\(3) & (\cnt0|temp\(0)))) # (!\cnt0|temp\(1) & ((\cnt0|temp\(2) & (!\cnt0|temp\(3))) # (!\cnt0|temp\(2) & ((\cnt0|temp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(3),
	datab => \cnt0|temp\(1),
	datac => \cnt0|temp\(0),
	datad => \cnt0|temp\(2),
	combout => \decoder0|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y23_N18
\decoder3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder3|Mux4~0_combout\ = (\cnt3|temp\(0)) # ((!\cnt3|temp\(1) & \cnt3|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt3|temp\(1),
	datac => \cnt3|temp\(0),
	datad => \cnt3|temp\(2),
	combout => \decoder3|Mux4~0_combout\);

-- Location: LCCOMB_X9_Y23_N10
\serial_scan0|dataout~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~7_combout\ = (\serial_scan0|dataout~6_combout\ & (((\decoder3|Mux4~0_combout\) # (!\serial_scan0|dataout[5]~1_combout\)))) # (!\serial_scan0|dataout~6_combout\ & (\decoder0|Mux4~0_combout\ & (\serial_scan0|dataout[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|dataout~6_combout\,
	datab => \decoder0|Mux4~0_combout\,
	datac => \serial_scan0|dataout[5]~1_combout\,
	datad => \decoder3|Mux4~0_combout\,
	combout => \serial_scan0|dataout~7_combout\);

-- Location: FF_X9_Y23_N11
\serial_scan0|dataout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \serial_scan0|dataout~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|dataout\(4));

-- Location: LCCOMB_X9_Y23_N22
\decoder1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|Mux3~0_combout\ = (\cnt1|temp\(0) & ((\cnt1|temp\(1) $ (!\cnt1|temp\(2))))) # (!\cnt1|temp\(0) & ((\cnt1|temp\(3) & (\cnt1|temp\(1) & !\cnt1|temp\(2))) # (!\cnt1|temp\(3) & (!\cnt1|temp\(1) & \cnt1|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(3),
	datab => \cnt1|temp\(1),
	datac => \cnt1|temp\(0),
	datad => \cnt1|temp\(2),
	combout => \decoder1|Mux3~0_combout\);

-- Location: LCCOMB_X13_Y23_N16
\decoder2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|Mux3~0_combout\ = (\cnt2|temp\(0) & ((\cnt2|temp\(1) $ (!\cnt2|temp\(2))))) # (!\cnt2|temp\(0) & ((\cnt2|temp\(3) & (\cnt2|temp\(1) & !\cnt2|temp\(2))) # (!\cnt2|temp\(3) & (!\cnt2|temp\(1) & \cnt2|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(3),
	datab => \cnt2|temp\(1),
	datac => \cnt2|temp\(2),
	datad => \cnt2|temp\(0),
	combout => \decoder2|Mux3~0_combout\);

-- Location: LCCOMB_X9_Y23_N2
\serial_scan0|dataout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~8_combout\ = (\serial_scan0|count\(1) & (((\decoder2|Mux3~0_combout\) # (\serial_scan0|count\(0))))) # (!\serial_scan0|count\(1) & (\decoder1|Mux3~0_combout\ & ((\serial_scan0|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|count\(1),
	datab => \decoder1|Mux3~0_combout\,
	datac => \decoder2|Mux3~0_combout\,
	datad => \serial_scan0|count\(0),
	combout => \serial_scan0|dataout~8_combout\);

-- Location: LCCOMB_X12_Y23_N12
\decoder0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|Mux3~0_combout\ = (\cnt0|temp\(0) & (\cnt0|temp\(2) $ (((!\cnt0|temp\(1)))))) # (!\cnt0|temp\(0) & ((\cnt0|temp\(2) & (!\cnt0|temp\(3) & !\cnt0|temp\(1))) # (!\cnt0|temp\(2) & (\cnt0|temp\(3) & \cnt0|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(2),
	datab => \cnt0|temp\(0),
	datac => \cnt0|temp\(3),
	datad => \cnt0|temp\(1),
	combout => \decoder0|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y23_N12
\decoder3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder3|Mux3~0_combout\ = (\cnt3|temp\(0) & (\cnt3|temp\(1) $ (!\cnt3|temp\(2)))) # (!\cnt3|temp\(0) & (!\cnt3|temp\(1) & \cnt3|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt3|temp\(0),
	datac => \cnt3|temp\(1),
	datad => \cnt3|temp\(2),
	combout => \decoder3|Mux3~0_combout\);

-- Location: LCCOMB_X9_Y23_N20
\serial_scan0|dataout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~9_combout\ = (\serial_scan0|dataout[5]~1_combout\ & ((\serial_scan0|dataout~8_combout\ & ((\decoder3|Mux3~0_combout\))) # (!\serial_scan0|dataout~8_combout\ & (\decoder0|Mux3~0_combout\)))) # (!\serial_scan0|dataout[5]~1_combout\ & 
-- (\serial_scan0|dataout~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|dataout[5]~1_combout\,
	datab => \serial_scan0|dataout~8_combout\,
	datac => \decoder0|Mux3~0_combout\,
	datad => \decoder3|Mux3~0_combout\,
	combout => \serial_scan0|dataout~9_combout\);

-- Location: FF_X9_Y23_N21
\serial_scan0|dataout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \serial_scan0|dataout~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|dataout\(3));

-- Location: LCCOMB_X12_Y23_N26
\decoder0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|Mux2~0_combout\ = (\cnt0|temp\(3) & (\cnt0|temp\(2) & ((\cnt0|temp\(1)) # (!\cnt0|temp\(0))))) # (!\cnt0|temp\(3) & (!\cnt0|temp\(0) & (\cnt0|temp\(1) & !\cnt0|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(3),
	datab => \cnt0|temp\(0),
	datac => \cnt0|temp\(1),
	datad => \cnt0|temp\(2),
	combout => \decoder0|Mux2~0_combout\);

-- Location: LCCOMB_X9_Y23_N6
\decoder1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|Mux2~0_combout\ = (\cnt1|temp\(3) & (\cnt1|temp\(2) & ((\cnt1|temp\(1)) # (!\cnt1|temp\(0))))) # (!\cnt1|temp\(3) & (!\cnt1|temp\(0) & (\cnt1|temp\(1) & !\cnt1|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(0),
	datab => \cnt1|temp\(1),
	datac => \cnt1|temp\(3),
	datad => \cnt1|temp\(2),
	combout => \decoder1|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y23_N24
\decoder2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|Mux2~0_combout\ = (\cnt2|temp\(3) & (\cnt2|temp\(2) & ((\cnt2|temp\(1)) # (!\cnt2|temp\(0))))) # (!\cnt2|temp\(3) & (!\cnt2|temp\(0) & (!\cnt2|temp\(2) & \cnt2|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(3),
	datab => \cnt2|temp\(0),
	datac => \cnt2|temp\(2),
	datad => \cnt2|temp\(1),
	combout => \decoder2|Mux2~0_combout\);

-- Location: LCCOMB_X9_Y23_N4
\serial_scan0|dataout~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~10_combout\ = (\serial_scan0|count\(1) & (((\decoder2|Mux2~0_combout\) # (\serial_scan0|count\(0))))) # (!\serial_scan0|count\(1) & (\decoder1|Mux2~0_combout\ & ((\serial_scan0|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|count\(1),
	datab => \decoder1|Mux2~0_combout\,
	datac => \decoder2|Mux2~0_combout\,
	datad => \serial_scan0|count\(0),
	combout => \serial_scan0|dataout~10_combout\);

-- Location: LCCOMB_X11_Y23_N10
\decoder3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder3|Mux2~0_combout\ = (!\cnt3|temp\(2) & (!\cnt3|temp\(0) & \cnt3|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt3|temp\(2),
	datac => \cnt3|temp\(0),
	datad => \cnt3|temp\(1),
	combout => \decoder3|Mux2~0_combout\);

-- Location: LCCOMB_X9_Y23_N30
\serial_scan0|dataout~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~11_combout\ = (\serial_scan0|dataout[5]~1_combout\ & ((\serial_scan0|dataout~10_combout\ & ((\decoder3|Mux2~0_combout\))) # (!\serial_scan0|dataout~10_combout\ & (\decoder0|Mux2~0_combout\)))) # (!\serial_scan0|dataout[5]~1_combout\ 
-- & (((\serial_scan0|dataout~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|dataout[5]~1_combout\,
	datab => \decoder0|Mux2~0_combout\,
	datac => \serial_scan0|dataout~10_combout\,
	datad => \decoder3|Mux2~0_combout\,
	combout => \serial_scan0|dataout~11_combout\);

-- Location: FF_X9_Y23_N31
\serial_scan0|dataout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \serial_scan0|dataout~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|dataout\(2));

-- Location: LCCOMB_X9_Y23_N24
\decoder1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|Mux1~0_combout\ = (\cnt1|temp\(1) & ((\cnt1|temp\(0) & ((\cnt1|temp\(3)))) # (!\cnt1|temp\(0) & (\cnt1|temp\(2))))) # (!\cnt1|temp\(1) & (\cnt1|temp\(2) & (\cnt1|temp\(0) $ (\cnt1|temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(0),
	datab => \cnt1|temp\(1),
	datac => \cnt1|temp\(2),
	datad => \cnt1|temp\(3),
	combout => \decoder1|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y23_N12
\decoder2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|Mux1~0_combout\ = (\cnt2|temp\(3) & ((\cnt2|temp\(0) & (\cnt2|temp\(1))) # (!\cnt2|temp\(0) & ((\cnt2|temp\(2)))))) # (!\cnt2|temp\(3) & (\cnt2|temp\(2) & (\cnt2|temp\(1) $ (\cnt2|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(3),
	datab => \cnt2|temp\(1),
	datac => \cnt2|temp\(2),
	datad => \cnt2|temp\(0),
	combout => \decoder2|Mux1~0_combout\);

-- Location: LCCOMB_X10_Y23_N18
\serial_scan0|dataout~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~12_combout\ = (\serial_scan0|count\(1) & (((\decoder2|Mux1~0_combout\) # (\serial_scan0|count\(0))))) # (!\serial_scan0|count\(1) & (\decoder1|Mux1~0_combout\ & ((\serial_scan0|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder1|Mux1~0_combout\,
	datab => \decoder2|Mux1~0_combout\,
	datac => \serial_scan0|count\(1),
	datad => \serial_scan0|count\(0),
	combout => \serial_scan0|dataout~12_combout\);

-- Location: LCCOMB_X12_Y23_N2
\decoder0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|Mux1~0_combout\ = (\cnt0|temp\(3) & ((\cnt0|temp\(0) & (\cnt0|temp\(1))) # (!\cnt0|temp\(0) & ((\cnt0|temp\(2)))))) # (!\cnt0|temp\(3) & (\cnt0|temp\(2) & (\cnt0|temp\(1) $ (\cnt0|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(3),
	datab => \cnt0|temp\(1),
	datac => \cnt0|temp\(0),
	datad => \cnt0|temp\(2),
	combout => \decoder0|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y23_N28
\decoder3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder3|Mux1~0_combout\ = (\cnt3|temp\(2) & (\cnt3|temp\(0) $ (\cnt3|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt3|temp\(2),
	datac => \cnt3|temp\(0),
	datad => \cnt3|temp\(1),
	combout => \decoder3|Mux1~0_combout\);

-- Location: LCCOMB_X10_Y23_N14
\serial_scan0|dataout~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~13_combout\ = (\serial_scan0|dataout~12_combout\ & (((\decoder3|Mux1~0_combout\)) # (!\serial_scan0|dataout[5]~1_combout\))) # (!\serial_scan0|dataout~12_combout\ & (\serial_scan0|dataout[5]~1_combout\ & (\decoder0|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|dataout~12_combout\,
	datab => \serial_scan0|dataout[5]~1_combout\,
	datac => \decoder0|Mux1~0_combout\,
	datad => \decoder3|Mux1~0_combout\,
	combout => \serial_scan0|dataout~13_combout\);

-- Location: FF_X10_Y23_N15
\serial_scan0|dataout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \serial_scan0|dataout~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|dataout\(1));

-- Location: LCCOMB_X13_Y23_N14
\decoder2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|Mux0~0_combout\ = (\cnt2|temp\(0) & ((\cnt2|temp\(2) & (!\cnt2|temp\(1) & \cnt2|temp\(3))) # (!\cnt2|temp\(2) & (\cnt2|temp\(1) $ (!\cnt2|temp\(3)))))) # (!\cnt2|temp\(0) & (\cnt2|temp\(2) & ((!\cnt2|temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(0),
	datab => \cnt2|temp\(2),
	datac => \cnt2|temp\(1),
	datad => \cnt2|temp\(3),
	combout => \decoder2|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y23_N28
\decoder0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|Mux0~0_combout\ = (\cnt0|temp\(0) & ((\cnt0|temp\(1) & (\cnt0|temp\(3) & !\cnt0|temp\(2))) # (!\cnt0|temp\(1) & (\cnt0|temp\(3) $ (!\cnt0|temp\(2)))))) # (!\cnt0|temp\(0) & (((!\cnt0|temp\(3) & \cnt0|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(0),
	datab => \cnt0|temp\(1),
	datac => \cnt0|temp\(3),
	datad => \cnt0|temp\(2),
	combout => \decoder0|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y23_N10
\serial_scan0|dataout~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~14_combout\ = (\serial_scan0|count\(1) & ((\decoder2|Mux0~0_combout\) # ((\serial_scan0|count\(0))))) # (!\serial_scan0|count\(1) & (((\decoder0|Mux0~0_combout\ & !\serial_scan0|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder2|Mux0~0_combout\,
	datab => \decoder0|Mux0~0_combout\,
	datac => \serial_scan0|count\(1),
	datad => \serial_scan0|count\(0),
	combout => \serial_scan0|dataout~14_combout\);

-- Location: LCCOMB_X9_Y23_N28
\decoder1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|Mux0~0_combout\ = (\cnt1|temp\(0) & ((\cnt1|temp\(1) & (\cnt1|temp\(3) & !\cnt1|temp\(2))) # (!\cnt1|temp\(1) & (\cnt1|temp\(3) $ (!\cnt1|temp\(2)))))) # (!\cnt1|temp\(0) & (((!\cnt1|temp\(3) & \cnt1|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(0),
	datab => \cnt1|temp\(1),
	datac => \cnt1|temp\(3),
	datad => \cnt1|temp\(2),
	combout => \decoder1|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y23_N30
\decoder3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder3|Mux0~0_combout\ = (\cnt3|temp\(0) & (!\cnt3|temp\(1) & !\cnt3|temp\(2))) # (!\cnt3|temp\(0) & ((\cnt3|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt3|temp\(1),
	datac => \cnt3|temp\(0),
	datad => \cnt3|temp\(2),
	combout => \decoder3|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y23_N28
\serial_scan0|dataout~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~15_combout\ = (\serial_scan0|count\(0) & ((\serial_scan0|dataout~14_combout\ & ((\decoder3|Mux0~0_combout\))) # (!\serial_scan0|dataout~14_combout\ & (\decoder1|Mux0~0_combout\)))) # (!\serial_scan0|count\(0) & 
-- (\serial_scan0|dataout~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|count\(0),
	datab => \serial_scan0|dataout~14_combout\,
	datac => \decoder1|Mux0~0_combout\,
	datad => \decoder3|Mux0~0_combout\,
	combout => \serial_scan0|dataout~15_combout\);

-- Location: FF_X13_Y23_N29
\serial_scan0|dataout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \serial_scan0|dataout~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|dataout\(0));

ww_dig(3) <= \dig[3]~output_o\;

ww_dig(2) <= \dig[2]~output_o\;

ww_dig(1) <= \dig[1]~output_o\;

ww_dig(0) <= \dig[0]~output_o\;

ww_seg(7) <= \seg[7]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;
END structure;


