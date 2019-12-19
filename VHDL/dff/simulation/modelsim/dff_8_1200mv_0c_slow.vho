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

-- DATE "10/04/2019 18:33:49"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	my8259 IS
    PORT (
	D : INOUT std_logic_vector(7 DOWNTO 0);
	CAS : INOUT std_logic_vector(7 DOWNTO 0);
	nSP_nEN : INOUT std_logic_vector(7 DOWNTO 0);
	nRD : IN std_logic;
	nWR : IN std_logic;
	A0 : IN std_logic;
	nCS : IN std_logic;
	nINTA : IN std_logic;
	IR : IN std_logic_vector(7 DOWNTO 0);
	INT : OUT std_logic
	);
END my8259;

-- Design Ports Information
-- nRD	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nWR	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A0	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nCS	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nINTA	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[3]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[4]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[6]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INT	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAS[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAS[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAS[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAS[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAS[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAS[5]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAS[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CAS[7]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSP_nEN[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSP_nEN[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSP_nEN[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSP_nEN[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSP_nEN[4]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSP_nEN[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSP_nEN[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nSP_nEN[7]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF my8259 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nRD : std_logic;
SIGNAL ww_nWR : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_nCS : std_logic;
SIGNAL ww_nINTA : std_logic;
SIGNAL ww_IR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_INT : std_logic;
SIGNAL \nRD~input_o\ : std_logic;
SIGNAL \nWR~input_o\ : std_logic;
SIGNAL \A0~input_o\ : std_logic;
SIGNAL \nCS~input_o\ : std_logic;
SIGNAL \nINTA~input_o\ : std_logic;
SIGNAL \IR[0]~input_o\ : std_logic;
SIGNAL \IR[1]~input_o\ : std_logic;
SIGNAL \IR[2]~input_o\ : std_logic;
SIGNAL \IR[3]~input_o\ : std_logic;
SIGNAL \IR[4]~input_o\ : std_logic;
SIGNAL \IR[5]~input_o\ : std_logic;
SIGNAL \IR[6]~input_o\ : std_logic;
SIGNAL \IR[7]~input_o\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \CAS[0]~input_o\ : std_logic;
SIGNAL \CAS[1]~input_o\ : std_logic;
SIGNAL \CAS[2]~input_o\ : std_logic;
SIGNAL \CAS[3]~input_o\ : std_logic;
SIGNAL \CAS[4]~input_o\ : std_logic;
SIGNAL \CAS[5]~input_o\ : std_logic;
SIGNAL \CAS[6]~input_o\ : std_logic;
SIGNAL \CAS[7]~input_o\ : std_logic;
SIGNAL \nSP_nEN[0]~input_o\ : std_logic;
SIGNAL \nSP_nEN[1]~input_o\ : std_logic;
SIGNAL \nSP_nEN[2]~input_o\ : std_logic;
SIGNAL \nSP_nEN[3]~input_o\ : std_logic;
SIGNAL \nSP_nEN[4]~input_o\ : std_logic;
SIGNAL \nSP_nEN[5]~input_o\ : std_logic;
SIGNAL \nSP_nEN[6]~input_o\ : std_logic;
SIGNAL \nSP_nEN[7]~input_o\ : std_logic;
SIGNAL \D[0]~output_o\ : std_logic;
SIGNAL \D[1]~output_o\ : std_logic;
SIGNAL \D[2]~output_o\ : std_logic;
SIGNAL \D[3]~output_o\ : std_logic;
SIGNAL \D[4]~output_o\ : std_logic;
SIGNAL \D[5]~output_o\ : std_logic;
SIGNAL \D[6]~output_o\ : std_logic;
SIGNAL \D[7]~output_o\ : std_logic;
SIGNAL \CAS[0]~output_o\ : std_logic;
SIGNAL \CAS[1]~output_o\ : std_logic;
SIGNAL \CAS[2]~output_o\ : std_logic;
SIGNAL \CAS[3]~output_o\ : std_logic;
SIGNAL \CAS[4]~output_o\ : std_logic;
SIGNAL \CAS[5]~output_o\ : std_logic;
SIGNAL \CAS[6]~output_o\ : std_logic;
SIGNAL \CAS[7]~output_o\ : std_logic;
SIGNAL \nSP_nEN[0]~output_o\ : std_logic;
SIGNAL \nSP_nEN[1]~output_o\ : std_logic;
SIGNAL \nSP_nEN[2]~output_o\ : std_logic;
SIGNAL \nSP_nEN[3]~output_o\ : std_logic;
SIGNAL \nSP_nEN[4]~output_o\ : std_logic;
SIGNAL \nSP_nEN[5]~output_o\ : std_logic;
SIGNAL \nSP_nEN[6]~output_o\ : std_logic;
SIGNAL \nSP_nEN[7]~output_o\ : std_logic;
SIGNAL \INT~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_nRD <= nRD;
ww_nWR <= nWR;
ww_A0 <= A0;
ww_nCS <= nCS;
ww_nINTA <= nINTA;
ww_IR <= IR;
INT <= ww_INT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X32_Y0_N9
\D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \D[0]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \D[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \D[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \D[3]~output_o\);

-- Location: IOOBUF_X3_Y24_N9
\D[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \D[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\D[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \D[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\D[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \D[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\D[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \D[7]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\CAS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \CAS[0]~output_o\);

-- Location: IOOBUF_X34_Y3_N16
\CAS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \CAS[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\CAS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \CAS[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\CAS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \CAS[3]~output_o\);

-- Location: IOOBUF_X34_Y19_N2
\CAS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \CAS[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\CAS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \CAS[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\CAS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \CAS[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\CAS[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \CAS[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\nSP_nEN[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \nSP_nEN[0]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\nSP_nEN[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \nSP_nEN[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\nSP_nEN[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \nSP_nEN[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\nSP_nEN[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \nSP_nEN[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\nSP_nEN[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \nSP_nEN[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\nSP_nEN[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \nSP_nEN[5]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\nSP_nEN[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \nSP_nEN[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\nSP_nEN[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \nSP_nEN[7]~output_o\);

-- Location: IOOBUF_X3_Y24_N2
\INT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \INT~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\nRD~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nRD,
	o => \nRD~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\nWR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nWR,
	o => \nWR~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\A0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A0,
	o => \A0~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\nCS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nCS,
	o => \nCS~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\nINTA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nINTA,
	o => \nINTA~input_o\);

-- Location: IOIBUF_X25_Y24_N15
\IR[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(0),
	o => \IR[0]~input_o\);

-- Location: IOIBUF_X5_Y24_N22
\IR[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(1),
	o => \IR[1]~input_o\);

-- Location: IOIBUF_X13_Y24_N1
\IR[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(2),
	o => \IR[2]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\IR[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(3),
	o => \IR[3]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\IR[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(4),
	o => \IR[4]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\IR[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(5),
	o => \IR[5]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\IR[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(6),
	o => \IR[6]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\IR[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(7),
	o => \IR[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => D(0),
	o => \D[0]~input_o\);

-- Location: IOIBUF_X34_Y11_N1
\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => D(1),
	o => \D[1]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => D(2),
	o => \D[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => D(3),
	o => \D[3]~input_o\);

-- Location: IOIBUF_X3_Y24_N8
\D[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => D(4),
	o => \D[4]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\D[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => D(5),
	o => \D[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\D[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => D(6),
	o => \D[6]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\D[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => D(7),
	o => \D[7]~input_o\);

-- Location: IOIBUF_X25_Y24_N22
\CAS[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAS(0),
	o => \CAS[0]~input_o\);

-- Location: IOIBUF_X34_Y3_N15
\CAS[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAS(1),
	o => \CAS[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\CAS[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAS(2),
	o => \CAS[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\CAS[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAS(3),
	o => \CAS[3]~input_o\);

-- Location: IOIBUF_X34_Y19_N1
\CAS[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAS(4),
	o => \CAS[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\CAS[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAS(5),
	o => \CAS[5]~input_o\);

-- Location: IOIBUF_X18_Y24_N8
\CAS[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAS(6),
	o => \CAS[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\CAS[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => CAS(7),
	o => \CAS[7]~input_o\);

-- Location: IOIBUF_X23_Y24_N22
\nSP_nEN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => nSP_nEN(0),
	o => \nSP_nEN[0]~input_o\);

-- Location: IOIBUF_X13_Y24_N8
\nSP_nEN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => nSP_nEN(1),
	o => \nSP_nEN[1]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\nSP_nEN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => nSP_nEN(2),
	o => \nSP_nEN[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\nSP_nEN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => nSP_nEN(3),
	o => \nSP_nEN[3]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\nSP_nEN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => nSP_nEN(4),
	o => \nSP_nEN[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\nSP_nEN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => nSP_nEN(5),
	o => \nSP_nEN[5]~input_o\);

-- Location: IOIBUF_X34_Y7_N15
\nSP_nEN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => nSP_nEN(6),
	o => \nSP_nEN[6]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\nSP_nEN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => nSP_nEN(7),
	o => \nSP_nEN[7]~input_o\);

ww_INT <= \INT~output_o\;

D(0) <= \D[0]~output_o\;

D(1) <= \D[1]~output_o\;

D(2) <= \D[2]~output_o\;

D(3) <= \D[3]~output_o\;

D(4) <= \D[4]~output_o\;

D(5) <= \D[5]~output_o\;

D(6) <= \D[6]~output_o\;

D(7) <= \D[7]~output_o\;

CAS(0) <= \CAS[0]~output_o\;

CAS(1) <= \CAS[1]~output_o\;

CAS(2) <= \CAS[2]~output_o\;

CAS(3) <= \CAS[3]~output_o\;

CAS(4) <= \CAS[4]~output_o\;

CAS(5) <= \CAS[5]~output_o\;

CAS(6) <= \CAS[6]~output_o\;

CAS(7) <= \CAS[7]~output_o\;

nSP_nEN(0) <= \nSP_nEN[0]~output_o\;

nSP_nEN(1) <= \nSP_nEN[1]~output_o\;

nSP_nEN(2) <= \nSP_nEN[2]~output_o\;

nSP_nEN(3) <= \nSP_nEN[3]~output_o\;

nSP_nEN(4) <= \nSP_nEN[4]~output_o\;

nSP_nEN(5) <= \nSP_nEN[5]~output_o\;

nSP_nEN(6) <= \nSP_nEN[6]~output_o\;

nSP_nEN(7) <= \nSP_nEN[7]~output_o\;
END structure;


