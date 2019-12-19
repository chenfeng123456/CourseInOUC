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

-- DATE "11/09/2019 11:57:02"

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

ENTITY 	shift IS
    PORT (
	clk : IN std_logic;
	en_n : IN std_logic;
	clr_n : IN std_logic;
	data0 : IN std_logic_vector(3 DOWNTO 0);
	data1 : IN std_logic_vector(3 DOWNTO 0);
	data2 : IN std_logic_vector(3 DOWNTO 0);
	data3 : IN std_logic_vector(3 DOWNTO 0);
	out0 : OUT std_logic_vector(3 DOWNTO 0);
	out1 : OUT std_logic_vector(3 DOWNTO 0);
	out2 : OUT std_logic_vector(3 DOWNTO 0);
	out3 : OUT std_logic_vector(3 DOWNTO 0)
	);
END shift;

-- Design Ports Information
-- out0[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out0[1]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out0[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out0[3]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[0]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[2]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out1[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[0]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[2]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out2[3]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out3[0]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out3[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out3[2]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out3[3]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_n	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_n	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data0[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data0[1]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data0[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data0[3]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[0]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[1]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[2]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1[3]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[0]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[1]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2[3]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data3[0]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data3[1]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data3[2]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data3[3]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF shift IS
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
SIGNAL ww_en_n : std_logic;
SIGNAL ww_clr_n : std_logic;
SIGNAL ww_data0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \reg0[15]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out0[0]~output_o\ : std_logic;
SIGNAL \out0[1]~output_o\ : std_logic;
SIGNAL \out0[2]~output_o\ : std_logic;
SIGNAL \out0[3]~output_o\ : std_logic;
SIGNAL \out1[0]~output_o\ : std_logic;
SIGNAL \out1[1]~output_o\ : std_logic;
SIGNAL \out1[2]~output_o\ : std_logic;
SIGNAL \out1[3]~output_o\ : std_logic;
SIGNAL \out2[0]~output_o\ : std_logic;
SIGNAL \out2[1]~output_o\ : std_logic;
SIGNAL \out2[2]~output_o\ : std_logic;
SIGNAL \out2[3]~output_o\ : std_logic;
SIGNAL \out3[0]~output_o\ : std_logic;
SIGNAL \out3[1]~output_o\ : std_logic;
SIGNAL \out3[2]~output_o\ : std_logic;
SIGNAL \out3[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data0[0]~input_o\ : std_logic;
SIGNAL \reg0[12]~1_combout\ : std_logic;
SIGNAL \en_n~input_o\ : std_logic;
SIGNAL \clr_n~input_o\ : std_logic;
SIGNAL \reg0[15]~0_combout\ : std_logic;
SIGNAL \reg0[15]~0clkctrl_outclk\ : std_logic;
SIGNAL \reg1[12]~feeder_combout\ : std_logic;
SIGNAL \reg2[12]~feeder_combout\ : std_logic;
SIGNAL \out0~4_combout\ : std_logic;
SIGNAL \data0[1]~input_o\ : std_logic;
SIGNAL \reg0[13]~2_combout\ : std_logic;
SIGNAL \reg1[13]~feeder_combout\ : std_logic;
SIGNAL \reg2[13]~feeder_combout\ : std_logic;
SIGNAL \out0~5_combout\ : std_logic;
SIGNAL \data0[2]~input_o\ : std_logic;
SIGNAL \reg0[14]~3_combout\ : std_logic;
SIGNAL \reg1[14]~feeder_combout\ : std_logic;
SIGNAL \reg2[14]~feeder_combout\ : std_logic;
SIGNAL \out0~6_combout\ : std_logic;
SIGNAL \data0[3]~input_o\ : std_logic;
SIGNAL \reg0[15]~4_combout\ : std_logic;
SIGNAL \reg1[15]~feeder_combout\ : std_logic;
SIGNAL \reg2[15]~feeder_combout\ : std_logic;
SIGNAL \out0~7_combout\ : std_logic;
SIGNAL \data1[0]~input_o\ : std_logic;
SIGNAL \reg0[8]~5_combout\ : std_logic;
SIGNAL \reg1[8]~feeder_combout\ : std_logic;
SIGNAL \reg2[8]~feeder_combout\ : std_logic;
SIGNAL \out1~4_combout\ : std_logic;
SIGNAL \data1[1]~input_o\ : std_logic;
SIGNAL \reg0[9]~6_combout\ : std_logic;
SIGNAL \reg1[9]~feeder_combout\ : std_logic;
SIGNAL \reg2[9]~feeder_combout\ : std_logic;
SIGNAL \out1~5_combout\ : std_logic;
SIGNAL \data1[2]~input_o\ : std_logic;
SIGNAL \reg0[10]~7_combout\ : std_logic;
SIGNAL \reg1[10]~feeder_combout\ : std_logic;
SIGNAL \reg2[10]~feeder_combout\ : std_logic;
SIGNAL \out1~6_combout\ : std_logic;
SIGNAL \data1[3]~input_o\ : std_logic;
SIGNAL \reg0[11]~8_combout\ : std_logic;
SIGNAL \reg1[11]~feeder_combout\ : std_logic;
SIGNAL \reg2[11]~feeder_combout\ : std_logic;
SIGNAL \out1~7_combout\ : std_logic;
SIGNAL \data2[0]~input_o\ : std_logic;
SIGNAL \reg0[4]~9_combout\ : std_logic;
SIGNAL \reg1[4]~feeder_combout\ : std_logic;
SIGNAL \reg2[4]~feeder_combout\ : std_logic;
SIGNAL \out2~4_combout\ : std_logic;
SIGNAL \data2[1]~input_o\ : std_logic;
SIGNAL \reg0[5]~10_combout\ : std_logic;
SIGNAL \reg1[5]~feeder_combout\ : std_logic;
SIGNAL \reg2[5]~feeder_combout\ : std_logic;
SIGNAL \out2~5_combout\ : std_logic;
SIGNAL \data2[2]~input_o\ : std_logic;
SIGNAL \reg0[6]~11_combout\ : std_logic;
SIGNAL \reg1[6]~feeder_combout\ : std_logic;
SIGNAL \reg2[6]~feeder_combout\ : std_logic;
SIGNAL \out2~6_combout\ : std_logic;
SIGNAL \data2[3]~input_o\ : std_logic;
SIGNAL \reg0[7]~12_combout\ : std_logic;
SIGNAL \reg1[7]~feeder_combout\ : std_logic;
SIGNAL \reg2[7]~feeder_combout\ : std_logic;
SIGNAL \out2~7_combout\ : std_logic;
SIGNAL \data3[0]~input_o\ : std_logic;
SIGNAL \reg0[0]~13_combout\ : std_logic;
SIGNAL \reg1[0]~feeder_combout\ : std_logic;
SIGNAL \reg2[0]~feeder_combout\ : std_logic;
SIGNAL \out3~4_combout\ : std_logic;
SIGNAL \data3[1]~input_o\ : std_logic;
SIGNAL \reg0[1]~14_combout\ : std_logic;
SIGNAL \reg1[1]~feeder_combout\ : std_logic;
SIGNAL \reg2[1]~feeder_combout\ : std_logic;
SIGNAL \out3~5_combout\ : std_logic;
SIGNAL \data3[2]~input_o\ : std_logic;
SIGNAL \reg0[2]~15_combout\ : std_logic;
SIGNAL \reg1[2]~feeder_combout\ : std_logic;
SIGNAL \reg2[2]~feeder_combout\ : std_logic;
SIGNAL \out3~6_combout\ : std_logic;
SIGNAL \data3[3]~input_o\ : std_logic;
SIGNAL \reg0[3]~16_combout\ : std_logic;
SIGNAL \reg1[3]~feeder_combout\ : std_logic;
SIGNAL \reg2[3]~feeder_combout\ : std_logic;
SIGNAL \out3~7_combout\ : std_logic;
SIGNAL reg3 : std_logic_vector(15 DOWNTO 0);
SIGNAL reg2 : std_logic_vector(15 DOWNTO 0);
SIGNAL reg1 : std_logic_vector(15 DOWNTO 0);
SIGNAL reg0 : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reg0[15]~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_en_n~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_en_n <= en_n;
ww_clr_n <= clr_n;
ww_data0 <= data0;
ww_data1 <= data1;
ww_data2 <= data2;
ww_data3 <= data3;
out0 <= ww_out0;
out1 <= ww_out1;
out2 <= ww_out2;
out3 <= ww_out3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reg0[15]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reg0[15]~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reg0[15]~0clkctrl_outclk\ <= NOT \reg0[15]~0clkctrl_outclk\;
\ALT_INV_en_n~input_o\ <= NOT \en_n~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y0_N2
\out0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out0~4_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out0[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\out0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out0~5_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out0[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\out0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out0~6_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out0[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\out0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out0~7_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out0[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\out1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~4_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out1[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\out1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~5_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out1[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\out1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~6_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out1[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\out1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out1~7_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out1[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\out2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~4_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out2[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\out2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~5_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out2[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\out2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~6_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out2[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\out2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out2~7_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out2[3]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\out3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out3~4_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out3[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\out3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out3~5_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out3[1]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\out3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out3~6_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out3[2]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\out3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out3~7_combout\,
	oe => \ALT_INV_en_n~input_o\,
	devoe => ww_devoe,
	o => \out3[3]~output_o\);

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

-- Location: IOIBUF_X32_Y0_N22
\data0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data0(0),
	o => \data0[0]~input_o\);

-- Location: LCCOMB_X31_Y4_N10
\reg0[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[12]~1_combout\ = !\data0[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data0[0]~input_o\,
	combout => \reg0[12]~1_combout\);

-- Location: IOIBUF_X28_Y24_N8
\en_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_n,
	o => \en_n~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\clr_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr_n,
	o => \clr_n~input_o\);

-- Location: LCCOMB_X33_Y12_N4
\reg0[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[15]~0_combout\ = (!\en_n~input_o\ & !\clr_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_n~input_o\,
	datad => \clr_n~input_o\,
	combout => \reg0[15]~0_combout\);

-- Location: CLKCTRL_G7
\reg0[15]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reg0[15]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reg0[15]~0clkctrl_outclk\);

-- Location: FF_X31_Y4_N11
\reg0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[12]~1_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(12));

-- Location: LCCOMB_X31_Y4_N6
\reg1[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[12]~feeder_combout\ = reg0(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(12),
	combout => \reg1[12]~feeder_combout\);

-- Location: FF_X31_Y4_N7
\reg1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[12]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(12));

-- Location: LCCOMB_X31_Y4_N8
\reg2[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[12]~feeder_combout\ = reg1(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(12),
	combout => \reg2[12]~feeder_combout\);

-- Location: FF_X31_Y4_N9
\reg2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[12]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(12));

-- Location: FF_X31_Y4_N25
\reg3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(12),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(12));

-- Location: LCCOMB_X31_Y4_N24
\out0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~4_combout\ = (!\clr_n~input_o\) # (!reg3(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg3(12),
	datad => \clr_n~input_o\,
	combout => \out0~4_combout\);

-- Location: IOIBUF_X32_Y0_N15
\data0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data0(1),
	o => \data0[1]~input_o\);

-- Location: LCCOMB_X31_Y4_N12
\reg0[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[13]~2_combout\ = !\data0[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data0[1]~input_o\,
	combout => \reg0[13]~2_combout\);

-- Location: FF_X31_Y4_N13
\reg0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[13]~2_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(13));

-- Location: LCCOMB_X31_Y4_N18
\reg1[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[13]~feeder_combout\ = reg0(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(13),
	combout => \reg1[13]~feeder_combout\);

-- Location: FF_X31_Y4_N19
\reg1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[13]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(13));

-- Location: LCCOMB_X31_Y4_N22
\reg2[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[13]~feeder_combout\ = reg1(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(13),
	combout => \reg2[13]~feeder_combout\);

-- Location: FF_X31_Y4_N23
\reg2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[13]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(13));

-- Location: FF_X31_Y4_N15
\reg3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(13),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(13));

-- Location: LCCOMB_X31_Y4_N14
\out0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~5_combout\ = (!\clr_n~input_o\) # (!reg3(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg3(13),
	datad => \clr_n~input_o\,
	combout => \out0~5_combout\);

-- Location: IOIBUF_X28_Y0_N1
\data0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data0(2),
	o => \data0[2]~input_o\);

-- Location: LCCOMB_X31_Y4_N2
\reg0[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[14]~3_combout\ = !\data0[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data0[2]~input_o\,
	combout => \reg0[14]~3_combout\);

-- Location: FF_X31_Y4_N3
\reg0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[14]~3_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(14));

-- Location: LCCOMB_X31_Y4_N20
\reg1[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[14]~feeder_combout\ = reg0(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(14),
	combout => \reg1[14]~feeder_combout\);

-- Location: FF_X31_Y4_N21
\reg1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[14]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(14));

-- Location: LCCOMB_X31_Y4_N30
\reg2[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[14]~feeder_combout\ = reg1(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(14),
	combout => \reg2[14]~feeder_combout\);

-- Location: FF_X31_Y4_N31
\reg2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[14]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(14));

-- Location: FF_X31_Y4_N29
\reg3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(14),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(14));

-- Location: LCCOMB_X31_Y4_N28
\out0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~6_combout\ = (!\clr_n~input_o\) # (!reg3(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg3(14),
	datad => \clr_n~input_o\,
	combout => \out0~6_combout\);

-- Location: IOIBUF_X32_Y0_N8
\data0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data0(3),
	o => \data0[3]~input_o\);

-- Location: LCCOMB_X31_Y4_N0
\reg0[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[15]~4_combout\ = !\data0[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data0[3]~input_o\,
	combout => \reg0[15]~4_combout\);

-- Location: FF_X31_Y4_N1
\reg0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[15]~4_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(15));

-- Location: LCCOMB_X31_Y4_N16
\reg1[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[15]~feeder_combout\ = reg0(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(15),
	combout => \reg1[15]~feeder_combout\);

-- Location: FF_X31_Y4_N17
\reg1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[15]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(15));

-- Location: LCCOMB_X31_Y4_N4
\reg2[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[15]~feeder_combout\ = reg1(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(15),
	combout => \reg2[15]~feeder_combout\);

-- Location: FF_X31_Y4_N5
\reg2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[15]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(15));

-- Location: FF_X31_Y4_N27
\reg3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(15),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(15));

-- Location: LCCOMB_X31_Y4_N26
\out0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~7_combout\ = (!\clr_n~input_o\) # (!reg3(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg3(15),
	datad => \clr_n~input_o\,
	combout => \out0~7_combout\);

-- Location: IOIBUF_X30_Y24_N22
\data1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data1(0),
	o => \data1[0]~input_o\);

-- Location: LCCOMB_X31_Y20_N20
\reg0[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[8]~5_combout\ = !\data1[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data1[0]~input_o\,
	combout => \reg0[8]~5_combout\);

-- Location: FF_X31_Y20_N21
\reg0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[8]~5_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(8));

-- Location: LCCOMB_X31_Y20_N18
\reg1[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[8]~feeder_combout\ = reg0(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(8),
	combout => \reg1[8]~feeder_combout\);

-- Location: FF_X31_Y20_N19
\reg1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[8]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(8));

-- Location: LCCOMB_X31_Y20_N8
\reg2[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[8]~feeder_combout\ = reg1(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(8),
	combout => \reg2[8]~feeder_combout\);

-- Location: FF_X31_Y20_N9
\reg2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[8]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(8));

-- Location: FF_X31_Y20_N15
\reg3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(8),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(8));

-- Location: LCCOMB_X31_Y20_N14
\out1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~4_combout\ = (!\clr_n~input_o\) # (!reg3(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg3(8),
	datad => \clr_n~input_o\,
	combout => \out1~4_combout\);

-- Location: IOIBUF_X34_Y20_N8
\data1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data1(1),
	o => \data1[1]~input_o\);

-- Location: LCCOMB_X31_Y20_N28
\reg0[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[9]~6_combout\ = !\data1[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data1[1]~input_o\,
	combout => \reg0[9]~6_combout\);

-- Location: FF_X31_Y20_N29
\reg0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[9]~6_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(9));

-- Location: LCCOMB_X31_Y20_N10
\reg1[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[9]~feeder_combout\ = reg0(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(9),
	combout => \reg1[9]~feeder_combout\);

-- Location: FF_X31_Y20_N11
\reg1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[9]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(9));

-- Location: LCCOMB_X31_Y20_N22
\reg2[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[9]~feeder_combout\ = reg1(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(9),
	combout => \reg2[9]~feeder_combout\);

-- Location: FF_X31_Y20_N23
\reg2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[9]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(9));

-- Location: FF_X31_Y20_N27
\reg3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(9),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(9));

-- Location: LCCOMB_X31_Y20_N26
\out1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~5_combout\ = (!\clr_n~input_o\) # (!reg3(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg3(9),
	datad => \clr_n~input_o\,
	combout => \out1~5_combout\);

-- Location: IOIBUF_X30_Y24_N1
\data1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data1(2),
	o => \data1[2]~input_o\);

-- Location: LCCOMB_X31_Y20_N0
\reg0[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[10]~7_combout\ = !\data1[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data1[2]~input_o\,
	combout => \reg0[10]~7_combout\);

-- Location: FF_X31_Y20_N1
\reg0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[10]~7_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(10));

-- Location: LCCOMB_X31_Y20_N12
\reg1[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[10]~feeder_combout\ = reg0(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(10),
	combout => \reg1[10]~feeder_combout\);

-- Location: FF_X31_Y20_N13
\reg1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[10]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(10));

-- Location: LCCOMB_X31_Y20_N4
\reg2[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[10]~feeder_combout\ = reg1(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(10),
	combout => \reg2[10]~feeder_combout\);

-- Location: FF_X31_Y20_N5
\reg2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[10]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(10));

-- Location: FF_X31_Y20_N3
\reg3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(10),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(10));

-- Location: LCCOMB_X31_Y20_N2
\out1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~6_combout\ = (!\clr_n~input_o\) # (!reg3(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg3(10),
	datad => \clr_n~input_o\,
	combout => \out1~6_combout\);

-- Location: IOIBUF_X34_Y17_N15
\data1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data1(3),
	o => \data1[3]~input_o\);

-- Location: LCCOMB_X33_Y9_N18
\reg0[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[11]~8_combout\ = !\data1[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data1[3]~input_o\,
	combout => \reg0[11]~8_combout\);

-- Location: FF_X33_Y9_N19
\reg0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[11]~8_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(11));

-- Location: LCCOMB_X33_Y9_N10
\reg1[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[11]~feeder_combout\ = reg0(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(11),
	combout => \reg1[11]~feeder_combout\);

-- Location: FF_X33_Y9_N11
\reg1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[11]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(11));

-- Location: LCCOMB_X33_Y9_N30
\reg2[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[11]~feeder_combout\ = reg1(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(11),
	combout => \reg2[11]~feeder_combout\);

-- Location: FF_X33_Y9_N31
\reg2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[11]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(11));

-- Location: FF_X33_Y9_N5
\reg3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(11),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(11));

-- Location: LCCOMB_X33_Y9_N4
\out1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \out1~7_combout\ = (!\clr_n~input_o\) # (!reg3(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg3(11),
	datad => \clr_n~input_o\,
	combout => \out1~7_combout\);

-- Location: IOIBUF_X34_Y12_N22
\data2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data2(0),
	o => \data2[0]~input_o\);

-- Location: LCCOMB_X31_Y20_N6
\reg0[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[4]~9_combout\ = !\data2[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data2[0]~input_o\,
	combout => \reg0[4]~9_combout\);

-- Location: FF_X31_Y20_N7
\reg0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[4]~9_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(4));

-- Location: LCCOMB_X31_Y20_N16
\reg1[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[4]~feeder_combout\ = reg0(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(4),
	combout => \reg1[4]~feeder_combout\);

-- Location: FF_X31_Y20_N17
\reg1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[4]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(4));

-- Location: LCCOMB_X31_Y20_N30
\reg2[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[4]~feeder_combout\ = reg1(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(4),
	combout => \reg2[4]~feeder_combout\);

-- Location: FF_X31_Y20_N31
\reg2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[4]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(4));

-- Location: FF_X31_Y20_N25
\reg3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(4),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(4));

-- Location: LCCOMB_X31_Y20_N24
\out2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2~4_combout\ = (!\clr_n~input_o\) # (!reg3(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg3(4),
	datad => \clr_n~input_o\,
	combout => \out2~4_combout\);

-- Location: IOIBUF_X34_Y12_N15
\data2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data2(1),
	o => \data2[1]~input_o\);

-- Location: LCCOMB_X33_Y9_N0
\reg0[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[5]~10_combout\ = !\data2[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data2[1]~input_o\,
	combout => \reg0[5]~10_combout\);

-- Location: FF_X33_Y9_N1
\reg0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[5]~10_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(5));

-- Location: LCCOMB_X33_Y9_N20
\reg1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[5]~feeder_combout\ = reg0(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(5),
	combout => \reg1[5]~feeder_combout\);

-- Location: FF_X33_Y9_N21
\reg1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[5]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(5));

-- Location: LCCOMB_X33_Y9_N26
\reg2[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[5]~feeder_combout\ = reg1(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(5),
	combout => \reg2[5]~feeder_combout\);

-- Location: FF_X33_Y9_N27
\reg2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[5]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(5));

-- Location: FF_X33_Y9_N23
\reg3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(5),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(5));

-- Location: LCCOMB_X33_Y9_N22
\out2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2~5_combout\ = (!\clr_n~input_o\) # (!reg3(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg3(5),
	datad => \clr_n~input_o\,
	combout => \out2~5_combout\);

-- Location: IOIBUF_X34_Y9_N15
\data2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data2(2),
	o => \data2[2]~input_o\);

-- Location: LCCOMB_X33_Y9_N12
\reg0[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[6]~11_combout\ = !\data2[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data2[2]~input_o\,
	combout => \reg0[6]~11_combout\);

-- Location: FF_X33_Y9_N13
\reg0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[6]~11_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(6));

-- Location: LCCOMB_X33_Y9_N16
\reg1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[6]~feeder_combout\ = reg0(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(6),
	combout => \reg1[6]~feeder_combout\);

-- Location: FF_X33_Y9_N17
\reg1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[6]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(6));

-- Location: LCCOMB_X33_Y9_N8
\reg2[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[6]~feeder_combout\ = reg1(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(6),
	combout => \reg2[6]~feeder_combout\);

-- Location: FF_X33_Y9_N9
\reg2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[6]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(6));

-- Location: FF_X33_Y9_N3
\reg3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(6),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(6));

-- Location: LCCOMB_X33_Y9_N2
\out2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2~6_combout\ = (!\clr_n~input_o\) # (!reg3(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg3(6),
	datad => \clr_n~input_o\,
	combout => \out2~6_combout\);

-- Location: IOIBUF_X34_Y12_N8
\data2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data2(3),
	o => \data2[3]~input_o\);

-- Location: LCCOMB_X33_Y9_N28
\reg0[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[7]~12_combout\ = !\data2[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data2[3]~input_o\,
	combout => \reg0[7]~12_combout\);

-- Location: FF_X33_Y9_N29
\reg0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[7]~12_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(7));

-- Location: LCCOMB_X33_Y9_N6
\reg1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[7]~feeder_combout\ = reg0(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(7),
	combout => \reg1[7]~feeder_combout\);

-- Location: FF_X33_Y9_N7
\reg1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[7]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(7));

-- Location: LCCOMB_X33_Y9_N14
\reg2[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[7]~feeder_combout\ = reg1(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(7),
	combout => \reg2[7]~feeder_combout\);

-- Location: FF_X33_Y9_N15
\reg2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[7]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(7));

-- Location: FF_X33_Y9_N25
\reg3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(7),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(7));

-- Location: LCCOMB_X33_Y9_N24
\out2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \out2~7_combout\ = (!\clr_n~input_o\) # (!reg3(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => reg3(7),
	datad => \clr_n~input_o\,
	combout => \out2~7_combout\);

-- Location: IOIBUF_X34_Y12_N1
\data3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data3(0),
	o => \data3[0]~input_o\);

-- Location: LCCOMB_X33_Y4_N0
\reg0[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[0]~13_combout\ = !\data3[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data3[0]~input_o\,
	combout => \reg0[0]~13_combout\);

-- Location: FF_X33_Y4_N1
\reg0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[0]~13_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(0));

-- Location: LCCOMB_X33_Y4_N18
\reg1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[0]~feeder_combout\ = reg0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(0),
	combout => \reg1[0]~feeder_combout\);

-- Location: FF_X33_Y4_N19
\reg1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[0]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(0));

-- Location: LCCOMB_X33_Y4_N14
\reg2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[0]~feeder_combout\ = reg1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(0),
	combout => \reg2[0]~feeder_combout\);

-- Location: FF_X33_Y4_N15
\reg2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[0]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(0));

-- Location: FF_X33_Y4_N31
\reg3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(0),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(0));

-- Location: LCCOMB_X33_Y4_N30
\out3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out3~4_combout\ = (!reg3(0)) # (!\clr_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_n~input_o\,
	datac => reg3(0),
	combout => \out3~4_combout\);

-- Location: IOIBUF_X34_Y4_N22
\data3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data3(1),
	o => \data3[1]~input_o\);

-- Location: LCCOMB_X33_Y4_N2
\reg0[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[1]~14_combout\ = !\data3[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data3[1]~input_o\,
	combout => \reg0[1]~14_combout\);

-- Location: FF_X33_Y4_N3
\reg0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[1]~14_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(1));

-- Location: LCCOMB_X33_Y4_N16
\reg1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[1]~feeder_combout\ = reg0(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(1),
	combout => \reg1[1]~feeder_combout\);

-- Location: FF_X33_Y4_N17
\reg1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[1]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(1));

-- Location: LCCOMB_X33_Y4_N4
\reg2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[1]~feeder_combout\ = reg1(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(1),
	combout => \reg2[1]~feeder_combout\);

-- Location: FF_X33_Y4_N5
\reg2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[1]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(1));

-- Location: FF_X33_Y4_N23
\reg3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(1),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(1));

-- Location: LCCOMB_X33_Y4_N22
\out3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \out3~5_combout\ = (!reg3(1)) # (!\clr_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_n~input_o\,
	datac => reg3(1),
	combout => \out3~5_combout\);

-- Location: IOIBUF_X34_Y4_N15
\data3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data3(2),
	o => \data3[2]~input_o\);

-- Location: LCCOMB_X33_Y4_N6
\reg0[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[2]~15_combout\ = !\data3[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data3[2]~input_o\,
	combout => \reg0[2]~15_combout\);

-- Location: FF_X33_Y4_N7
\reg0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[2]~15_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(2));

-- Location: LCCOMB_X33_Y4_N12
\reg1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[2]~feeder_combout\ = reg0(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(2),
	combout => \reg1[2]~feeder_combout\);

-- Location: FF_X33_Y4_N13
\reg1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[2]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(2));

-- Location: LCCOMB_X33_Y4_N26
\reg2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[2]~feeder_combout\ = reg1(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(2),
	combout => \reg2[2]~feeder_combout\);

-- Location: FF_X33_Y4_N27
\reg2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[2]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(2));

-- Location: FF_X33_Y4_N25
\reg3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(2),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(2));

-- Location: LCCOMB_X33_Y4_N24
\out3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \out3~6_combout\ = (!reg3(2)) # (!\clr_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_n~input_o\,
	datac => reg3(2),
	combout => \out3~6_combout\);

-- Location: IOIBUF_X34_Y7_N8
\data3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data3(3),
	o => \data3[3]~input_o\);

-- Location: LCCOMB_X33_Y4_N28
\reg0[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg0[3]~16_combout\ = !\data3[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data3[3]~input_o\,
	combout => \reg0[3]~16_combout\);

-- Location: FF_X33_Y4_N29
\reg0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg0[3]~16_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg0(3));

-- Location: LCCOMB_X33_Y4_N10
\reg1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg1[3]~feeder_combout\ = reg0(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg0(3),
	combout => \reg1[3]~feeder_combout\);

-- Location: FF_X33_Y4_N11
\reg1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg1[3]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg1(3));

-- Location: LCCOMB_X33_Y4_N8
\reg2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg2[3]~feeder_combout\ = reg1(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => reg1(3),
	combout => \reg2[3]~feeder_combout\);

-- Location: FF_X33_Y4_N9
\reg2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg2[3]~feeder_combout\,
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg2(3));

-- Location: FF_X33_Y4_N21
\reg3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => reg2(3),
	clrn => \ALT_INV_reg0[15]~0clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_en_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => reg3(3));

-- Location: LCCOMB_X33_Y4_N20
\out3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \out3~7_combout\ = (!reg3(3)) # (!\clr_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_n~input_o\,
	datac => reg3(3),
	combout => \out3~7_combout\);

ww_out0(0) <= \out0[0]~output_o\;

ww_out0(1) <= \out0[1]~output_o\;

ww_out0(2) <= \out0[2]~output_o\;

ww_out0(3) <= \out0[3]~output_o\;

ww_out1(0) <= \out1[0]~output_o\;

ww_out1(1) <= \out1[1]~output_o\;

ww_out1(2) <= \out1[2]~output_o\;

ww_out1(3) <= \out1[3]~output_o\;

ww_out2(0) <= \out2[0]~output_o\;

ww_out2(1) <= \out2[1]~output_o\;

ww_out2(2) <= \out2[2]~output_o\;

ww_out2(3) <= \out2[3]~output_o\;

ww_out3(0) <= \out3[0]~output_o\;

ww_out3(1) <= \out3[1]~output_o\;

ww_out3(2) <= \out3[2]~output_o\;

ww_out3(3) <= \out3[3]~output_o\;
END structure;


