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

-- DATE "11/03/2019 22:21:48"

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

ENTITY 	pulse_gen IS
    PORT (
	clk : IN std_logic;
	dir : IN std_logic;
	a : OUT std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic
	);
END pulse_gen;

-- Design Ports Information
-- a	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dir	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pulse_gen IS
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
SIGNAL ww_dir : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dir~input_o\ : std_logic;
SIGNAL \abcd~2_combout\ : std_logic;
SIGNAL \abcd~3_combout\ : std_logic;
SIGNAL \abcd~4_combout\ : std_logic;
SIGNAL \abcd~5_combout\ : std_logic;
SIGNAL \abcd~6_combout\ : std_logic;
SIGNAL \abcd~7_combout\ : std_logic;
SIGNAL \abcd~0_combout\ : std_logic;
SIGNAL \abcd~1_combout\ : std_logic;
SIGNAL \a~1_combout\ : std_logic;
SIGNAL \a~0_combout\ : std_logic;
SIGNAL \a~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \b~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \c~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \d~reg0_q\ : std_logic;
SIGNAL abcd : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_dir <= dir;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y9_N9
\a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a~reg0_q\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\b~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b~reg0_q\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\c~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c~reg0_q\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d~reg0_q\,
	devoe => ww_devoe,
	o => \d~output_o\);

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

-- Location: IOIBUF_X0_Y11_N15
\dir~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dir,
	o => \dir~input_o\);

-- Location: LCCOMB_X1_Y11_N8
\abcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \abcd~2_combout\ = (\dir~input_o\ & (!abcd(3) & !abcd(1))) # (!\dir~input_o\ & (abcd(3) & abcd(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dir~input_o\,
	datac => abcd(3),
	datad => abcd(1),
	combout => \abcd~2_combout\);

-- Location: LCCOMB_X1_Y11_N22
\abcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \abcd~3_combout\ = (!abcd(0) & (!abcd(2) & \abcd~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => abcd(0),
	datac => abcd(2),
	datad => \abcd~2_combout\,
	combout => \abcd~3_combout\);

-- Location: FF_X1_Y11_N23
\abcd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \abcd~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => abcd(2));

-- Location: LCCOMB_X1_Y11_N26
\abcd~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \abcd~4_combout\ = (\dir~input_o\ & (abcd(2) & !abcd(0))) # (!\dir~input_o\ & (!abcd(2) & abcd(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dir~input_o\,
	datac => abcd(2),
	datad => abcd(0),
	combout => \abcd~4_combout\);

-- Location: LCCOMB_X1_Y11_N12
\abcd~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \abcd~5_combout\ = (\abcd~4_combout\ & (!abcd(1) & abcd(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \abcd~4_combout\,
	datac => abcd(1),
	datad => abcd(3),
	combout => \abcd~5_combout\);

-- Location: FF_X1_Y11_N13
\abcd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \abcd~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => abcd(1));

-- Location: LCCOMB_X1_Y11_N24
\abcd~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \abcd~6_combout\ = (abcd(2) & ((abcd(1)) # (!abcd(0)))) # (!abcd(2) & ((abcd(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => abcd(1),
	datac => abcd(2),
	datad => abcd(0),
	combout => \abcd~6_combout\);

-- Location: LCCOMB_X1_Y11_N2
\abcd~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \abcd~7_combout\ = (\dir~input_o\ & (abcd(3) & (abcd(1) & !\abcd~6_combout\))) # (!\dir~input_o\ & ((abcd(1) $ (!\abcd~6_combout\)) # (!abcd(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir~input_o\,
	datab => abcd(3),
	datac => abcd(1),
	datad => \abcd~6_combout\,
	combout => \abcd~7_combout\);

-- Location: FF_X1_Y11_N3
\abcd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \abcd~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => abcd(0));

-- Location: LCCOMB_X1_Y11_N30
\abcd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \abcd~0_combout\ = (abcd(3) & ((!abcd(1)))) # (!abcd(3) & (!abcd(2) & abcd(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => abcd(2),
	datac => abcd(3),
	datad => abcd(1),
	combout => \abcd~0_combout\);

-- Location: LCCOMB_X1_Y11_N4
\abcd~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \abcd~1_combout\ = (abcd(0) & (!\dir~input_o\)) # (!abcd(0) & ((\dir~input_o\ & (\abcd~0_combout\ $ (!abcd(2)))) # (!\dir~input_o\ & ((!abcd(2)) # (!\abcd~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => abcd(0),
	datab => \dir~input_o\,
	datac => \abcd~0_combout\,
	datad => abcd(2),
	combout => \abcd~1_combout\);

-- Location: FF_X1_Y11_N5
\abcd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \abcd~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => abcd(3));

-- Location: LCCOMB_X1_Y11_N16
\a~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a~1_combout\ = !abcd(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => abcd(3),
	combout => \a~1_combout\);

-- Location: LCCOMB_X1_Y11_N28
\a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a~0_combout\ = (abcd(1) & (abcd(3) & (!abcd(2) & !abcd(0)))) # (!abcd(1) & ((abcd(3) & (abcd(2) $ (abcd(0)))) # (!abcd(3) & (!abcd(2) & !abcd(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => abcd(1),
	datab => abcd(3),
	datac => abcd(2),
	datad => abcd(0),
	combout => \a~0_combout\);

-- Location: FF_X1_Y11_N17
\a~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \a~1_combout\,
	ena => \a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a~reg0_q\);

-- Location: LCCOMB_X1_Y11_N14
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (abcd(2) & abcd(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => abcd(2),
	datad => abcd(3),
	combout => \Mux1~0_combout\);

-- Location: FF_X1_Y11_N15
\b~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~0_combout\,
	ena => \a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b~reg0_q\);

-- Location: LCCOMB_X1_Y11_N20
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!abcd(2) & (abcd(1) & abcd(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => abcd(2),
	datac => abcd(1),
	datad => abcd(3),
	combout => \Mux2~0_combout\);

-- Location: FF_X1_Y11_N21
\c~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => \a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c~reg0_q\);

-- Location: LCCOMB_X1_Y11_N6
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (abcd(3) & (!abcd(1) & !abcd(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => abcd(3),
	datac => abcd(1),
	datad => abcd(2),
	combout => \Mux3~0_combout\);

-- Location: FF_X1_Y11_N7
\d~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	ena => \a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d~reg0_q\);

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;
END structure;


