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

-- DATE "11/07/2019 16:15:15"

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

ENTITY 	Responder IS
    PORT (
	Clock : IN std_logic;
	Start : IN std_logic;
	Key : IN std_logic_vector(7 DOWNTO 1);
	Led : OUT std_logic_vector(7 DOWNTO 1);
	a : OUT std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic;
	Speaker : OUT std_logic
	);
END Responder;

-- Design Ports Information
-- Led[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led[3]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led[4]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led[5]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led[6]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led[7]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Speaker	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Key[1]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Key[2]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Key[3]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Key[4]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Key[5]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Key[6]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Key[7]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Responder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_Key : std_logic_vector(7 DOWNTO 1);
SIGNAL ww_Led : std_logic_vector(7 DOWNTO 1);
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_Speaker : std_logic;
SIGNAL \Start~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p3:Seg[2]~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Led[1]~output_o\ : std_logic;
SIGNAL \Led[2]~output_o\ : std_logic;
SIGNAL \Led[3]~output_o\ : std_logic;
SIGNAL \Led[4]~output_o\ : std_logic;
SIGNAL \Led[5]~output_o\ : std_logic;
SIGNAL \Led[6]~output_o\ : std_logic;
SIGNAL \Led[7]~output_o\ : std_logic;
SIGNAL \a~output_o\ : std_logic;
SIGNAL \b~output_o\ : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \f~output_o\ : std_logic;
SIGNAL \g~output_o\ : std_logic;
SIGNAL \Speaker~output_o\ : std_logic;
SIGNAL \Key[3]~input_o\ : std_logic;
SIGNAL \Key[6]~input_o\ : std_logic;
SIGNAL \Key[2]~input_o\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Key[5]~input_o\ : std_logic;
SIGNAL \Key[7]~input_o\ : std_logic;
SIGNAL \Key[4]~input_o\ : std_logic;
SIGNAL \Key[1]~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \mask_off~combout\ : std_logic;
SIGNAL \Key_Keep[1]~0_combout\ : std_logic;
SIGNAL \Start~inputclkctrl_outclk\ : std_logic;
SIGNAL \Key_Keep[2]~1_combout\ : std_logic;
SIGNAL \Key_Keep[3]~2_combout\ : std_logic;
SIGNAL \Key_Keep[4]~3_combout\ : std_logic;
SIGNAL \Key_Keep[5]~4_combout\ : std_logic;
SIGNAL \Key_Keep[6]~5_combout\ : std_logic;
SIGNAL \Key_Keep[7]~6_combout\ : std_logic;
SIGNAL \a~0_combout\ : std_logic;
SIGNAL \a~0clkctrl_outclk\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \p3:Seg[2]~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \p3:Seg[2]~1_combout\ : std_logic;
SIGNAL \p3:Seg[2]~2_combout\ : std_logic;
SIGNAL \p3:Seg[2]~2clkctrl_outclk\ : std_logic;
SIGNAL \p3:Seg[1]~combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \a$latch~combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \p3:Seg[2]~combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \b$latch~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \p3:Seg[3]~combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \c$latch~combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \p3:Seg[4]~combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \d$latch~combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \p3:Seg[5]~combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \e$latch~combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \p3:Seg[6]~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \f$latch~combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \p3:Seg[7]~combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \g$latch~combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \U7|count[0]~16_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U7|LessThan0~1_combout\ : std_logic;
SIGNAL \U7|count[14]~45\ : std_logic;
SIGNAL \U7|count[15]~46_combout\ : std_logic;
SIGNAL \U7|LessThan0~0_combout\ : std_logic;
SIGNAL \U7|LessThan0~2_combout\ : std_logic;
SIGNAL \U7|LessThan1~2_combout\ : std_logic;
SIGNAL \U7|LessThan0~3_combout\ : std_logic;
SIGNAL \U7|count[0]~17\ : std_logic;
SIGNAL \U7|count[1]~18_combout\ : std_logic;
SIGNAL \U7|count[1]~19\ : std_logic;
SIGNAL \U7|count[2]~20_combout\ : std_logic;
SIGNAL \U7|count[2]~21\ : std_logic;
SIGNAL \U7|count[3]~22_combout\ : std_logic;
SIGNAL \U7|count[3]~23\ : std_logic;
SIGNAL \U7|count[4]~24_combout\ : std_logic;
SIGNAL \U7|count[4]~25\ : std_logic;
SIGNAL \U7|count[5]~26_combout\ : std_logic;
SIGNAL \U7|count[5]~27\ : std_logic;
SIGNAL \U7|count[6]~28_combout\ : std_logic;
SIGNAL \U7|count[6]~29\ : std_logic;
SIGNAL \U7|count[7]~30_combout\ : std_logic;
SIGNAL \U7|count[7]~31\ : std_logic;
SIGNAL \U7|count[8]~32_combout\ : std_logic;
SIGNAL \U7|count[8]~33\ : std_logic;
SIGNAL \U7|count[9]~34_combout\ : std_logic;
SIGNAL \U7|count[9]~35\ : std_logic;
SIGNAL \U7|count[10]~36_combout\ : std_logic;
SIGNAL \U7|count[10]~37\ : std_logic;
SIGNAL \U7|count[11]~38_combout\ : std_logic;
SIGNAL \U7|count[11]~39\ : std_logic;
SIGNAL \U7|count[12]~40_combout\ : std_logic;
SIGNAL \U7|count[12]~41\ : std_logic;
SIGNAL \U7|count[13]~42_combout\ : std_logic;
SIGNAL \U7|count[13]~43\ : std_logic;
SIGNAL \U7|count[14]~44_combout\ : std_logic;
SIGNAL \U7|LessThan1~1_combout\ : std_logic;
SIGNAL \U7|LessThan1~0_combout\ : std_logic;
SIGNAL \U7|LessThan1~3_combout\ : std_logic;
SIGNAL \U7|LessThan1~4_combout\ : std_logic;
SIGNAL \U7|LessThan1~5_combout\ : std_logic;
SIGNAL \U7|clk~q\ : std_logic;
SIGNAL \U5|count[0]~16_combout\ : std_logic;
SIGNAL \U5|count[13]~43\ : std_logic;
SIGNAL \U5|count[14]~44_combout\ : std_logic;
SIGNAL \U5|LessThan0~2_combout\ : std_logic;
SIGNAL \U5|LessThan0~1_combout\ : std_logic;
SIGNAL \U5|LessThan0~0_combout\ : std_logic;
SIGNAL \U5|count[14]~45\ : std_logic;
SIGNAL \U5|count[15]~46_combout\ : std_logic;
SIGNAL \U5|LessThan1~0_combout\ : std_logic;
SIGNAL \U5|LessThan0~3_combout\ : std_logic;
SIGNAL \U5|count[0]~17\ : std_logic;
SIGNAL \U5|count[1]~18_combout\ : std_logic;
SIGNAL \U5|count[1]~19\ : std_logic;
SIGNAL \U5|count[2]~20_combout\ : std_logic;
SIGNAL \U5|count[2]~21\ : std_logic;
SIGNAL \U5|count[3]~22_combout\ : std_logic;
SIGNAL \U5|count[3]~23\ : std_logic;
SIGNAL \U5|count[4]~24_combout\ : std_logic;
SIGNAL \U5|count[4]~25\ : std_logic;
SIGNAL \U5|count[5]~26_combout\ : std_logic;
SIGNAL \U5|count[5]~27\ : std_logic;
SIGNAL \U5|count[6]~28_combout\ : std_logic;
SIGNAL \U5|count[6]~29\ : std_logic;
SIGNAL \U5|count[7]~30_combout\ : std_logic;
SIGNAL \U5|count[7]~31\ : std_logic;
SIGNAL \U5|count[8]~32_combout\ : std_logic;
SIGNAL \U5|count[8]~33\ : std_logic;
SIGNAL \U5|count[9]~34_combout\ : std_logic;
SIGNAL \U5|count[9]~35\ : std_logic;
SIGNAL \U5|count[10]~36_combout\ : std_logic;
SIGNAL \U5|count[10]~37\ : std_logic;
SIGNAL \U5|count[11]~38_combout\ : std_logic;
SIGNAL \U5|count[11]~39\ : std_logic;
SIGNAL \U5|count[12]~40_combout\ : std_logic;
SIGNAL \U5|count[12]~41\ : std_logic;
SIGNAL \U5|count[13]~42_combout\ : std_logic;
SIGNAL \U5|LessThan1~1_combout\ : std_logic;
SIGNAL \U5|LessThan1~2_combout\ : std_logic;
SIGNAL \U5|LessThan1~3_combout\ : std_logic;
SIGNAL \U5|LessThan1~4_combout\ : std_logic;
SIGNAL \U5|clk~q\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \U6|count[0]~16_combout\ : std_logic;
SIGNAL \U6|LessThan1~2_combout\ : std_logic;
SIGNAL \U6|LessThan0~0_combout\ : std_logic;
SIGNAL \U6|LessThan1~0_combout\ : std_logic;
SIGNAL \U6|LessThan1~1_combout\ : std_logic;
SIGNAL \U6|LessThan0~1_combout\ : std_logic;
SIGNAL \U6|LessThan0~2_combout\ : std_logic;
SIGNAL \U6|count[0]~17\ : std_logic;
SIGNAL \U6|count[1]~18_combout\ : std_logic;
SIGNAL \U6|count[1]~19\ : std_logic;
SIGNAL \U6|count[2]~20_combout\ : std_logic;
SIGNAL \U6|count[2]~21\ : std_logic;
SIGNAL \U6|count[3]~22_combout\ : std_logic;
SIGNAL \U6|count[3]~feeder_combout\ : std_logic;
SIGNAL \U6|count[3]~23\ : std_logic;
SIGNAL \U6|count[4]~24_combout\ : std_logic;
SIGNAL \U6|count[4]~feeder_combout\ : std_logic;
SIGNAL \U6|count[4]~25\ : std_logic;
SIGNAL \U6|count[5]~26_combout\ : std_logic;
SIGNAL \U6|count[5]~27\ : std_logic;
SIGNAL \U6|count[6]~28_combout\ : std_logic;
SIGNAL \U6|count[6]~29\ : std_logic;
SIGNAL \U6|count[7]~30_combout\ : std_logic;
SIGNAL \U6|count[7]~31\ : std_logic;
SIGNAL \U6|count[8]~32_combout\ : std_logic;
SIGNAL \U6|count[8]~feeder_combout\ : std_logic;
SIGNAL \U6|count[8]~33\ : std_logic;
SIGNAL \U6|count[9]~34_combout\ : std_logic;
SIGNAL \U6|count[9]~feeder_combout\ : std_logic;
SIGNAL \U6|count[9]~35\ : std_logic;
SIGNAL \U6|count[10]~36_combout\ : std_logic;
SIGNAL \U6|count[10]~37\ : std_logic;
SIGNAL \U6|count[11]~38_combout\ : std_logic;
SIGNAL \U6|count[11]~39\ : std_logic;
SIGNAL \U6|count[12]~40_combout\ : std_logic;
SIGNAL \U6|count[12]~41\ : std_logic;
SIGNAL \U6|count[13]~42_combout\ : std_logic;
SIGNAL \U6|count[13]~43\ : std_logic;
SIGNAL \U6|count[14]~44_combout\ : std_logic;
SIGNAL \U6|count[14]~45\ : std_logic;
SIGNAL \U6|count[15]~46_combout\ : std_logic;
SIGNAL \U6|LessThan1~5_combout\ : std_logic;
SIGNAL \U6|LessThan1~3_combout\ : std_logic;
SIGNAL \U6|LessThan1~4_combout\ : std_logic;
SIGNAL \U6|LessThan1~6_combout\ : std_logic;
SIGNAL \U6|clk~feeder_combout\ : std_logic;
SIGNAL \U6|clk~q\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \U2|count[0]~17_combout\ : std_logic;
SIGNAL \U2|count[11]~40\ : std_logic;
SIGNAL \U2|count[12]~41_combout\ : std_logic;
SIGNAL \U2|count[12]~42\ : std_logic;
SIGNAL \U2|count[13]~43_combout\ : std_logic;
SIGNAL \U2|count[13]~44\ : std_logic;
SIGNAL \U2|count[14]~45_combout\ : std_logic;
SIGNAL \U2|count[14]~46\ : std_logic;
SIGNAL \U2|count[15]~47_combout\ : std_logic;
SIGNAL \U2|LessThan0~0_combout\ : std_logic;
SIGNAL \U2|LessThan1~2_combout\ : std_logic;
SIGNAL \U2|LessThan1~3_combout\ : std_logic;
SIGNAL \U2|count[15]~48\ : std_logic;
SIGNAL \U2|count[16]~49_combout\ : std_logic;
SIGNAL \U2|LessThan1~6_combout\ : std_logic;
SIGNAL \U2|LessThan0~1_combout\ : std_logic;
SIGNAL \U2|count[0]~18\ : std_logic;
SIGNAL \U2|count[1]~19_combout\ : std_logic;
SIGNAL \U2|count[1]~20\ : std_logic;
SIGNAL \U2|count[2]~21_combout\ : std_logic;
SIGNAL \U2|count[2]~22\ : std_logic;
SIGNAL \U2|count[3]~23_combout\ : std_logic;
SIGNAL \U2|count[3]~24\ : std_logic;
SIGNAL \U2|count[4]~25_combout\ : std_logic;
SIGNAL \U2|count[4]~26\ : std_logic;
SIGNAL \U2|count[5]~27_combout\ : std_logic;
SIGNAL \U2|count[5]~28\ : std_logic;
SIGNAL \U2|count[6]~29_combout\ : std_logic;
SIGNAL \U2|count[6]~30\ : std_logic;
SIGNAL \U2|count[7]~31_combout\ : std_logic;
SIGNAL \U2|count[7]~32\ : std_logic;
SIGNAL \U2|count[8]~33_combout\ : std_logic;
SIGNAL \U2|count[8]~34\ : std_logic;
SIGNAL \U2|count[9]~35_combout\ : std_logic;
SIGNAL \U2|count[9]~36\ : std_logic;
SIGNAL \U2|count[10]~37_combout\ : std_logic;
SIGNAL \U2|count[10]~38\ : std_logic;
SIGNAL \U2|count[11]~39_combout\ : std_logic;
SIGNAL \U2|LessThan1~5_combout\ : std_logic;
SIGNAL \U2|LessThan1~4_combout\ : std_logic;
SIGNAL \U2|LessThan1~7_combout\ : std_logic;
SIGNAL \U2|clk~q\ : std_logic;
SIGNAL \U3|count[0]~16_combout\ : std_logic;
SIGNAL \U3|LessThan0~0_combout\ : std_logic;
SIGNAL \U3|LessThan1~2_combout\ : std_logic;
SIGNAL \U3|LessThan1~1_combout\ : std_logic;
SIGNAL \U3|LessThan0~1_combout\ : std_logic;
SIGNAL \U3|LessThan0~2_combout\ : std_logic;
SIGNAL \U3|count[0]~17\ : std_logic;
SIGNAL \U3|count[1]~18_combout\ : std_logic;
SIGNAL \U3|count[1]~19\ : std_logic;
SIGNAL \U3|count[2]~20_combout\ : std_logic;
SIGNAL \U3|count[2]~21\ : std_logic;
SIGNAL \U3|count[3]~22_combout\ : std_logic;
SIGNAL \U3|count[3]~23\ : std_logic;
SIGNAL \U3|count[4]~24_combout\ : std_logic;
SIGNAL \U3|count[4]~25\ : std_logic;
SIGNAL \U3|count[5]~26_combout\ : std_logic;
SIGNAL \U3|count[5]~27\ : std_logic;
SIGNAL \U3|count[6]~28_combout\ : std_logic;
SIGNAL \U3|count[6]~29\ : std_logic;
SIGNAL \U3|count[7]~30_combout\ : std_logic;
SIGNAL \U3|count[7]~feeder_combout\ : std_logic;
SIGNAL \U3|count[7]~31\ : std_logic;
SIGNAL \U3|count[8]~32_combout\ : std_logic;
SIGNAL \U3|count[8]~33\ : std_logic;
SIGNAL \U3|count[9]~34_combout\ : std_logic;
SIGNAL \U3|count[9]~35\ : std_logic;
SIGNAL \U3|count[10]~36_combout\ : std_logic;
SIGNAL \U3|count[10]~37\ : std_logic;
SIGNAL \U3|count[11]~38_combout\ : std_logic;
SIGNAL \U3|count[11]~39\ : std_logic;
SIGNAL \U3|count[12]~40_combout\ : std_logic;
SIGNAL \U3|count[12]~41\ : std_logic;
SIGNAL \U3|count[13]~42_combout\ : std_logic;
SIGNAL \U3|count[13]~43\ : std_logic;
SIGNAL \U3|count[14]~44_combout\ : std_logic;
SIGNAL \U3|count[14]~45\ : std_logic;
SIGNAL \U3|count[15]~46_combout\ : std_logic;
SIGNAL \U3|LessThan1~0_combout\ : std_logic;
SIGNAL \U3|LessThan1~3_combout\ : std_logic;
SIGNAL \U3|LessThan1~4_combout\ : std_logic;
SIGNAL \U3|LessThan1~5_combout\ : std_logic;
SIGNAL \U3|clk~q\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \U1|count[0]~17_combout\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|LessThan0~2_combout\ : std_logic;
SIGNAL \U1|LessThan1~1_combout\ : std_logic;
SIGNAL \U1|LessThan1~7_combout\ : std_logic;
SIGNAL \U1|count[15]~48\ : std_logic;
SIGNAL \U1|count[16]~49_combout\ : std_logic;
SIGNAL \U1|LessThan0~1_combout\ : std_logic;
SIGNAL \U1|LessThan0~3_combout\ : std_logic;
SIGNAL \U1|count[0]~18\ : std_logic;
SIGNAL \U1|count[1]~19_combout\ : std_logic;
SIGNAL \U1|count[1]~20\ : std_logic;
SIGNAL \U1|count[2]~21_combout\ : std_logic;
SIGNAL \U1|count[2]~22\ : std_logic;
SIGNAL \U1|count[3]~23_combout\ : std_logic;
SIGNAL \U1|count[3]~24\ : std_logic;
SIGNAL \U1|count[4]~25_combout\ : std_logic;
SIGNAL \U1|count[4]~26\ : std_logic;
SIGNAL \U1|count[5]~27_combout\ : std_logic;
SIGNAL \U1|count[5]~28\ : std_logic;
SIGNAL \U1|count[6]~29_combout\ : std_logic;
SIGNAL \U1|count[6]~30\ : std_logic;
SIGNAL \U1|count[7]~31_combout\ : std_logic;
SIGNAL \U1|count[7]~32\ : std_logic;
SIGNAL \U1|count[8]~33_combout\ : std_logic;
SIGNAL \U1|count[8]~34\ : std_logic;
SIGNAL \U1|count[9]~35_combout\ : std_logic;
SIGNAL \U1|count[9]~feeder_combout\ : std_logic;
SIGNAL \U1|count[9]~36\ : std_logic;
SIGNAL \U1|count[10]~37_combout\ : std_logic;
SIGNAL \U1|count[10]~38\ : std_logic;
SIGNAL \U1|count[11]~39_combout\ : std_logic;
SIGNAL \U1|count[11]~40\ : std_logic;
SIGNAL \U1|count[12]~41_combout\ : std_logic;
SIGNAL \U1|count[12]~42\ : std_logic;
SIGNAL \U1|count[13]~43_combout\ : std_logic;
SIGNAL \U1|count[13]~44\ : std_logic;
SIGNAL \U1|count[14]~45_combout\ : std_logic;
SIGNAL \U1|count[14]~46\ : std_logic;
SIGNAL \U1|count[15]~47_combout\ : std_logic;
SIGNAL \U1|LessThan1~0_combout\ : std_logic;
SIGNAL \U1|LessThan1~2_combout\ : std_logic;
SIGNAL \U1|LessThan1~3_combout\ : std_logic;
SIGNAL \U1|LessThan1~4_combout\ : std_logic;
SIGNAL \U1|LessThan1~5_combout\ : std_logic;
SIGNAL \U1|LessThan1~6_combout\ : std_logic;
SIGNAL \U1|clk~q\ : std_logic;
SIGNAL \U4|count[0]~16_combout\ : std_logic;
SIGNAL \U4|LessThan0~0_combout\ : std_logic;
SIGNAL \U4|LessThan0~1_combout\ : std_logic;
SIGNAL \U4|LessThan0~2_combout\ : std_logic;
SIGNAL \U4|count[13]~43\ : std_logic;
SIGNAL \U4|count[14]~44_combout\ : std_logic;
SIGNAL \U4|count[14]~45\ : std_logic;
SIGNAL \U4|count[15]~46_combout\ : std_logic;
SIGNAL \U4|LessThan0~3_combout\ : std_logic;
SIGNAL \U4|LessThan0~4_combout\ : std_logic;
SIGNAL \U4|count[0]~17\ : std_logic;
SIGNAL \U4|count[1]~18_combout\ : std_logic;
SIGNAL \U4|count[1]~19\ : std_logic;
SIGNAL \U4|count[2]~20_combout\ : std_logic;
SIGNAL \U4|count[2]~21\ : std_logic;
SIGNAL \U4|count[3]~22_combout\ : std_logic;
SIGNAL \U4|count[3]~23\ : std_logic;
SIGNAL \U4|count[4]~24_combout\ : std_logic;
SIGNAL \U4|count[4]~25\ : std_logic;
SIGNAL \U4|count[5]~26_combout\ : std_logic;
SIGNAL \U4|count[5]~27\ : std_logic;
SIGNAL \U4|count[6]~28_combout\ : std_logic;
SIGNAL \U4|count[6]~29\ : std_logic;
SIGNAL \U4|count[7]~30_combout\ : std_logic;
SIGNAL \U4|count[7]~31\ : std_logic;
SIGNAL \U4|count[8]~32_combout\ : std_logic;
SIGNAL \U4|count[8]~33\ : std_logic;
SIGNAL \U4|count[9]~34_combout\ : std_logic;
SIGNAL \U4|count[9]~35\ : std_logic;
SIGNAL \U4|count[10]~36_combout\ : std_logic;
SIGNAL \U4|count[10]~37\ : std_logic;
SIGNAL \U4|count[11]~38_combout\ : std_logic;
SIGNAL \U4|count[11]~39\ : std_logic;
SIGNAL \U4|count[12]~40_combout\ : std_logic;
SIGNAL \U4|count[12]~41\ : std_logic;
SIGNAL \U4|count[13]~42_combout\ : std_logic;
SIGNAL \U4|LessThan1~0_combout\ : std_logic;
SIGNAL \U4|LessThan1~1_combout\ : std_logic;
SIGNAL \U4|LessThan1~2_combout\ : std_logic;
SIGNAL \U4|LessThan1~3_combout\ : std_logic;
SIGNAL \U4|LessThan1~4_combout\ : std_logic;
SIGNAL \U4|clk~q\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Speaker$latch~combout\ : std_logic;
SIGNAL \U5|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U7|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U6|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U4|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U2|count\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \U1|count\ : std_logic_vector(16 DOWNTO 0);
SIGNAL Key_Keep : std_logic_vector(7 DOWNTO 1);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clock <= Clock;
ww_Start <= Start;
ww_Key <= Key;
Led <= ww_Led;
a <= ww_a;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
Speaker <= ww_Speaker;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Start~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Start~input_o\);

\p3:Seg[2]~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \p3:Seg[2]~2_combout\);

\a~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \a~0_combout\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y17_N2
\Led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Key_Keep(1),
	devoe => ww_devoe,
	o => \Led[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\Led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Key_Keep(2),
	devoe => ww_devoe,
	o => \Led[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\Led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Key_Keep(3),
	devoe => ww_devoe,
	o => \Led[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\Led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Key_Keep(4),
	devoe => ww_devoe,
	o => \Led[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\Led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Key_Keep(5),
	devoe => ww_devoe,
	o => \Led[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\Led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Key_Keep(6),
	devoe => ww_devoe,
	o => \Led[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\Led[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Key_Keep(7),
	devoe => ww_devoe,
	o => \Led[7]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a$latch~combout\,
	devoe => ww_devoe,
	o => \a~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\b~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b$latch~combout\,
	devoe => ww_devoe,
	o => \b~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\c~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c$latch~combout\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d$latch~combout\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e$latch~combout\,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\f~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \f$latch~combout\,
	devoe => ww_devoe,
	o => \f~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\g~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \g$latch~combout\,
	devoe => ww_devoe,
	o => \g~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\Speaker~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Speaker$latch~combout\,
	devoe => ww_devoe,
	o => \Speaker~output_o\);

-- Location: IOIBUF_X34_Y9_N1
\Key[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Key(3),
	o => \Key[3]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\Key[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Key(6),
	o => \Key[6]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\Key[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Key(2),
	o => \Key[2]~input_o\);

-- Location: LCCOMB_X23_Y12_N12
\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\Key[3]~input_o\ & (\Key[6]~input_o\ $ (\Key[2]~input_o\))) # (!\Key[3]~input_o\ & (\Key[6]~input_o\ & \Key[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Key[3]~input_o\,
	datac => \Key[6]~input_o\,
	datad => \Key[2]~input_o\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X23_Y12_N24
\Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\Key[3]~input_o\ & (\Key[6]~input_o\ & \Key[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Key[3]~input_o\,
	datac => \Key[6]~input_o\,
	datad => \Key[2]~input_o\,
	combout => \Equal7~1_combout\);

-- Location: IOIBUF_X34_Y9_N8
\Key[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Key(5),
	o => \Key[5]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\Key[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Key(7),
	o => \Key[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\Key[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Key(4),
	o => \Key[4]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\Key[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Key(1),
	o => \Key[1]~input_o\);

-- Location: LCCOMB_X23_Y12_N30
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\Key[5]~input_o\ & ((\Key[7]~input_o\ & (\Key[4]~input_o\ $ (\Key[1]~input_o\))) # (!\Key[7]~input_o\ & (\Key[4]~input_o\ & \Key[1]~input_o\)))) # (!\Key[5]~input_o\ & (\Key[7]~input_o\ & (\Key[4]~input_o\ & \Key[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Key[5]~input_o\,
	datab => \Key[7]~input_o\,
	datac => \Key[4]~input_o\,
	datad => \Key[1]~input_o\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X23_Y12_N10
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\Key[5]~input_o\ & (\Key[7]~input_o\ & (\Key[4]~input_o\ & \Key[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Key[5]~input_o\,
	datab => \Key[7]~input_o\,
	datac => \Key[4]~input_o\,
	datad => \Key[1]~input_o\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X23_Y12_N4
\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\comb~1_combout\ & ((\Equal7~0_combout\) # ((\Equal7~1_combout\ & \comb~0_combout\)))) # (!\comb~1_combout\ & (\Equal7~1_combout\ & (\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~1_combout\,
	datab => \Equal7~1_combout\,
	datac => \comb~0_combout\,
	datad => \Equal7~0_combout\,
	combout => \comb~2_combout\);

-- Location: IOIBUF_X0_Y11_N15
\Start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: LCCOMB_X22_Y14_N28
mask_off : cycloneive_lcell_comb
-- Equation(s):
-- \mask_off~combout\ = (\Start~input_o\ & ((\comb~2_combout\) # (\mask_off~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~2_combout\,
	datac => \Start~input_o\,
	datad => \mask_off~combout\,
	combout => \mask_off~combout\);

-- Location: LCCOMB_X23_Y14_N2
\Key_Keep[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Key_Keep[1]~0_combout\ = !\Key[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Key[1]~input_o\,
	combout => \Key_Keep[1]~0_combout\);

-- Location: CLKCTRL_G1
\Start~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Start~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Start~inputclkctrl_outclk\);

-- Location: FF_X23_Y14_N3
\Key_Keep[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mask_off~combout\,
	d => \Key_Keep[1]~0_combout\,
	clrn => \Start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Key_Keep(1));

-- Location: LCCOMB_X23_Y12_N14
\Key_Keep[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Key_Keep[2]~1_combout\ = !\Key[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Key[2]~input_o\,
	combout => \Key_Keep[2]~1_combout\);

-- Location: FF_X23_Y14_N31
\Key_Keep[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mask_off~combout\,
	asdata => \Key_Keep[2]~1_combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Key_Keep(2));

-- Location: LCCOMB_X23_Y12_N16
\Key_Keep[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Key_Keep[3]~2_combout\ = !\Key[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Key[3]~input_o\,
	combout => \Key_Keep[3]~2_combout\);

-- Location: FF_X23_Y14_N15
\Key_Keep[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mask_off~combout\,
	asdata => \Key_Keep[3]~2_combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Key_Keep(3));

-- Location: LCCOMB_X23_Y12_N0
\Key_Keep[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Key_Keep[4]~3_combout\ = !\Key[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Key[4]~input_o\,
	combout => \Key_Keep[4]~3_combout\);

-- Location: FF_X23_Y14_N7
\Key_Keep[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mask_off~combout\,
	asdata => \Key_Keep[4]~3_combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Key_Keep(4));

-- Location: LCCOMB_X23_Y12_N20
\Key_Keep[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Key_Keep[5]~4_combout\ = !\Key[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Key[5]~input_o\,
	combout => \Key_Keep[5]~4_combout\);

-- Location: FF_X22_Y14_N7
\Key_Keep[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mask_off~combout\,
	asdata => \Key_Keep[5]~4_combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Key_Keep(5));

-- Location: LCCOMB_X23_Y12_N28
\Key_Keep[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Key_Keep[6]~5_combout\ = !\Key[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Key[6]~input_o\,
	combout => \Key_Keep[6]~5_combout\);

-- Location: FF_X23_Y14_N11
\Key_Keep[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mask_off~combout\,
	asdata => \Key_Keep[6]~5_combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Key_Keep(6));

-- Location: LCCOMB_X23_Y12_N6
\Key_Keep[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Key_Keep[7]~6_combout\ = !\Key[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Key[7]~input_o\,
	combout => \Key_Keep[7]~6_combout\);

-- Location: FF_X22_Y14_N13
\Key_Keep[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mask_off~combout\,
	asdata => \Key_Keep[7]~6_combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Key_Keep(7));

-- Location: LCCOMB_X23_Y12_N2
\a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a~0_combout\ = (\Equal7~0_combout\ & (\Equal7~1_combout\ & !\Start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datac => \Equal7~1_combout\,
	datad => \Start~input_o\,
	combout => \a~0_combout\);

-- Location: CLKCTRL_G8
\a~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \a~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \a~0clkctrl_outclk\);

-- Location: LCCOMB_X21_Y14_N8
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!Key_Keep(4) & ((Key_Keep(2)) # (Key_Keep(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Key_Keep(2),
	datac => Key_Keep(4),
	datad => Key_Keep(3),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X22_Y14_N14
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (!Key_Keep(5) & (!Key_Keep(7) & !Key_Keep(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Key_Keep(5),
	datac => Key_Keep(7),
	datad => Key_Keep(6),
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X22_Y14_N20
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (Key_Keep(4) & ((Key_Keep(7) $ (Key_Keep(6))) # (!Key_Keep(5)))) # (!Key_Keep(4) & ((Key_Keep(5)) # (Key_Keep(7) $ (Key_Keep(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(4),
	datab => Key_Keep(7),
	datac => Key_Keep(5),
	datad => Key_Keep(6),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X22_Y14_N4
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (Key_Keep(1) & ((\Mux1~1_combout\) # ((Key_Keep(3)) # (Key_Keep(2))))) # (!Key_Keep(1) & ((\Mux1~1_combout\ & ((Key_Keep(3)) # (Key_Keep(2)))) # (!\Mux1~1_combout\ & (Key_Keep(3) & Key_Keep(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(1),
	datab => \Mux1~1_combout\,
	datac => Key_Keep(3),
	datad => Key_Keep(2),
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X22_Y14_N6
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (Key_Keep(4) & ((Key_Keep(7)) # ((Key_Keep(5)) # (Key_Keep(6))))) # (!Key_Keep(4) & ((Key_Keep(7) & ((Key_Keep(5)) # (Key_Keep(6)))) # (!Key_Keep(7) & (Key_Keep(5) & Key_Keep(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(4),
	datab => Key_Keep(7),
	datac => Key_Keep(5),
	datad => Key_Keep(6),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X22_Y14_N30
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~4_combout\) # ((\Mux1~0_combout\ & ((!Key_Keep(3)) # (!Key_Keep(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~4_combout\,
	datab => Key_Keep(2),
	datac => Key_Keep(3),
	datad => \Mux1~0_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X22_Y14_N12
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (!Key_Keep(2) & (!Key_Keep(3) & \Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(2),
	datab => Key_Keep(3),
	datad => \Mux11~2_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X23_Y14_N26
\p3:Seg[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3:Seg[2]~0_combout\ = (!\Start~input_o\ & ((Key_Keep(6) & (!Key_Keep(5) & !Key_Keep(7))) # (!Key_Keep(6) & (Key_Keep(5) $ (Key_Keep(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(6),
	datab => \Start~input_o\,
	datac => Key_Keep(5),
	datad => Key_Keep(7),
	combout => \p3:Seg[2]~0_combout\);

-- Location: LCCOMB_X23_Y14_N14
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (Key_Keep(2) & ((Key_Keep(4)) # ((Key_Keep(3)) # (Key_Keep(1))))) # (!Key_Keep(2) & ((Key_Keep(4) & ((Key_Keep(3)) # (Key_Keep(1)))) # (!Key_Keep(4) & (Key_Keep(3) & Key_Keep(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(2),
	datab => Key_Keep(4),
	datac => Key_Keep(3),
	datad => Key_Keep(1),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X23_Y14_N22
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!Key_Keep(4) & (!Key_Keep(3) & (!Key_Keep(2) & !Key_Keep(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(4),
	datab => Key_Keep(3),
	datac => Key_Keep(2),
	datad => Key_Keep(1),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X23_Y14_N10
\p3:Seg[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3:Seg[2]~1_combout\ = (\Start~input_o\) # ((Key_Keep(7) & ((Key_Keep(5)) # (Key_Keep(6)))) # (!Key_Keep(7) & (Key_Keep(5) & Key_Keep(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(7),
	datab => Key_Keep(5),
	datac => Key_Keep(6),
	datad => \Start~input_o\,
	combout => \p3:Seg[2]~1_combout\);

-- Location: LCCOMB_X23_Y14_N16
\p3:Seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3:Seg[2]~2_combout\ = (\p3:Seg[2]~0_combout\ & ((\p3:Seg[2]~1_combout\ & (!\Mux10~0_combout\)) # (!\p3:Seg[2]~1_combout\ & ((\Mux9~0_combout\))))) # (!\p3:Seg[2]~0_combout\ & (!\Mux10~0_combout\ & ((!\p3:Seg[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3:Seg[2]~0_combout\,
	datab => \Mux10~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \p3:Seg[2]~1_combout\,
	combout => \p3:Seg[2]~2_combout\);

-- Location: CLKCTRL_G7
\p3:Seg[2]~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \p3:Seg[2]~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \p3:Seg[2]~2clkctrl_outclk\);

-- Location: LCCOMB_X22_Y14_N18
\p3:Seg[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3:Seg[1]~combout\ = (GLOBAL(\p3:Seg[2]~2clkctrl_outclk\) & ((!\Mux0~5_combout\))) # (!GLOBAL(\p3:Seg[2]~2clkctrl_outclk\) & (\p3:Seg[1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p3:Seg[1]~combout\,
	datac => \Mux0~5_combout\,
	datad => \p3:Seg[2]~2clkctrl_outclk\,
	combout => \p3:Seg[1]~combout\);

-- Location: LCCOMB_X22_Y14_N8
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux1~5_combout\ & (((\p3:Seg[1]~combout\)))) # (!\Mux1~5_combout\ & ((\Mux7~0_combout\) # ((!\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Mux11~2_combout\,
	datac => \Mux1~5_combout\,
	datad => \p3:Seg[1]~combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X22_Y14_N26
\a$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \a$latch~combout\ = (GLOBAL(\a~0clkctrl_outclk\) & ((\Mux7~1_combout\))) # (!GLOBAL(\a~0clkctrl_outclk\) & (\a$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a$latch~combout\,
	datab => \a~0clkctrl_outclk\,
	datac => \Mux7~1_combout\,
	combout => \a$latch~combout\);

-- Location: LCCOMB_X23_Y14_N20
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (Key_Keep(7)) # ((!\Mux9~0_combout\ & (!Key_Keep(6) & !Key_Keep(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => Key_Keep(6),
	datac => Key_Keep(7),
	datad => Key_Keep(5),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X24_Y14_N12
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & !Key_Keep(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~0_combout\,
	datad => Key_Keep(7),
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X24_Y14_N18
\p3:Seg[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3:Seg[2]~combout\ = (GLOBAL(\p3:Seg[2]~2clkctrl_outclk\) & ((!\Mux9~1_combout\))) # (!GLOBAL(\p3:Seg[2]~2clkctrl_outclk\) & (\p3:Seg[2]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p3:Seg[2]~combout\,
	datac => \p3:Seg[2]~2clkctrl_outclk\,
	datad => \Mux9~1_combout\,
	combout => \p3:Seg[2]~combout\);

-- Location: LCCOMB_X24_Y14_N20
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux1~5_combout\ & ((\p3:Seg[2]~combout\))) # (!\Mux1~5_combout\ & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~5_combout\,
	datac => \Mux6~0_combout\,
	datad => \p3:Seg[2]~combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X24_Y14_N22
\b$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \b$latch~combout\ = (GLOBAL(\a~0clkctrl_outclk\) & (\Mux6~1_combout\)) # (!GLOBAL(\a~0clkctrl_outclk\) & ((\b$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~1_combout\,
	datac => \b$latch~combout\,
	datad => \a~0clkctrl_outclk\,
	combout => \b$latch~combout\);

-- Location: LCCOMB_X21_Y14_N18
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!Key_Keep(3) & !Key_Keep(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(3),
	datac => Key_Keep(4),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X22_Y14_N0
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (((!Key_Keep(2) & Key_Keep(1))) # (!\Mux11~2_combout\)) # (!\Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => Key_Keep(2),
	datac => Key_Keep(1),
	datad => \Mux11~2_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X22_Y14_N2
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (!Key_Keep(4) & (!Key_Keep(3) & (!Key_Keep(1) & \Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(4),
	datab => Key_Keep(3),
	datac => Key_Keep(1),
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X22_Y14_N16
\p3:Seg[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3:Seg[3]~combout\ = (GLOBAL(\p3:Seg[2]~2clkctrl_outclk\) & ((!\Mux11~3_combout\))) # (!GLOBAL(\p3:Seg[2]~2clkctrl_outclk\) & (\p3:Seg[3]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p3:Seg[3]~combout\,
	datac => \Mux11~3_combout\,
	datad => \p3:Seg[2]~2clkctrl_outclk\,
	combout => \p3:Seg[3]~combout\);

-- Location: LCCOMB_X22_Y14_N22
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux1~5_combout\ & ((\p3:Seg[3]~combout\))) # (!\Mux1~5_combout\ & (\Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~0_combout\,
	datac => \Mux1~5_combout\,
	datad => \p3:Seg[3]~combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X22_Y14_N10
\c$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \c$latch~combout\ = (GLOBAL(\a~0clkctrl_outclk\) & ((\Mux5~1_combout\))) # (!GLOBAL(\a~0clkctrl_outclk\) & (\c$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c$latch~combout\,
	datab => \a~0clkctrl_outclk\,
	datac => \Mux5~1_combout\,
	combout => \c$latch~combout\);

-- Location: LCCOMB_X23_Y14_N6
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (!Key_Keep(2) & !Key_Keep(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(2),
	datad => Key_Keep(3),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X21_Y14_N4
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!Key_Keep(6) & (!Key_Keep(5) & ((\Mux0~4_combout\) # (Key_Keep(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~4_combout\,
	datab => Key_Keep(6),
	datac => Key_Keep(4),
	datad => Key_Keep(5),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X21_Y14_N12
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (Key_Keep(6) & (!Key_Keep(5) & (!Key_Keep(2) & !Key_Keep(3)))) # (!Key_Keep(6) & ((Key_Keep(5) & (!Key_Keep(2) & !Key_Keep(3))) # (!Key_Keep(5) & (Key_Keep(2) $ (Key_Keep(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(6),
	datab => Key_Keep(5),
	datac => Key_Keep(2),
	datad => Key_Keep(3),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X21_Y14_N6
\p3:Seg[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3:Seg[4]~combout\ = (GLOBAL(\p3:Seg[2]~2clkctrl_outclk\) & ((\Mux12~0_combout\))) # (!GLOBAL(\p3:Seg[2]~2clkctrl_outclk\) & (\p3:Seg[4]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p3:Seg[4]~combout\,
	datab => \Mux12~0_combout\,
	datad => \p3:Seg[2]~2clkctrl_outclk\,
	combout => \p3:Seg[4]~combout\);

-- Location: LCCOMB_X21_Y14_N10
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux1~5_combout\ & (((\p3:Seg[4]~combout\)))) # (!\Mux1~5_combout\ & (!\Mux4~0_combout\ & (!Key_Keep(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux1~5_combout\,
	datac => Key_Keep(7),
	datad => \p3:Seg[4]~combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X21_Y14_N20
\d$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \d$latch~combout\ = (GLOBAL(\a~0clkctrl_outclk\) & ((\Mux4~1_combout\))) # (!GLOBAL(\a~0clkctrl_outclk\) & (\d$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d$latch~combout\,
	datac => \Mux4~1_combout\,
	datad => \a~0clkctrl_outclk\,
	combout => \d$latch~combout\);

-- Location: LCCOMB_X21_Y14_N28
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (Key_Keep(6)) # ((Key_Keep(2) & (\Mux3~0_combout\ & !Key_Keep(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(6),
	datab => Key_Keep(2),
	datac => \Mux3~0_combout\,
	datad => Key_Keep(5),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X22_Y14_N24
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!Key_Keep(3) & (!Key_Keep(1) & (Key_Keep(6) $ (Key_Keep(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(6),
	datab => Key_Keep(3),
	datac => Key_Keep(1),
	datad => Key_Keep(2),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X21_Y14_N24
\p3:Seg[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3:Seg[5]~combout\ = (GLOBAL(\p3:Seg[2]~2clkctrl_outclk\) & ((\Mux13~0_combout\))) # (!GLOBAL(\p3:Seg[2]~2clkctrl_outclk\) & (\p3:Seg[5]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p3:Seg[5]~combout\,
	datac => \Mux13~0_combout\,
	datad => \p3:Seg[2]~2clkctrl_outclk\,
	combout => \p3:Seg[5]~combout\);

-- Location: LCCOMB_X21_Y14_N14
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux1~5_combout\ & (((\p3:Seg[5]~combout\)))) # (!\Mux1~5_combout\ & (\Mux3~1_combout\ & (!Key_Keep(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux1~5_combout\,
	datac => Key_Keep(7),
	datad => \p3:Seg[5]~combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X21_Y14_N22
\e$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \e$latch~combout\ = (GLOBAL(\a~0clkctrl_outclk\) & ((\Mux3~2_combout\))) # (!GLOBAL(\a~0clkctrl_outclk\) & (\e$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e$latch~combout\,
	datac => \Mux3~2_combout\,
	datad => \a~0clkctrl_outclk\,
	combout => \e$latch~combout\);

-- Location: LCCOMB_X21_Y14_N26
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (Key_Keep(6) & (!Key_Keep(5) & (!Key_Keep(7) & !Key_Keep(4)))) # (!Key_Keep(6) & ((Key_Keep(5) & (!Key_Keep(7) & !Key_Keep(4))) # (!Key_Keep(5) & (Key_Keep(7) $ (Key_Keep(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(6),
	datab => Key_Keep(5),
	datac => Key_Keep(7),
	datad => Key_Keep(4),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X24_Y14_N28
\p3:Seg[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3:Seg[6]~combout\ = (GLOBAL(\p3:Seg[2]~2clkctrl_outclk\) & (\Mux14~0_combout\)) # (!GLOBAL(\p3:Seg[2]~2clkctrl_outclk\) & ((\p3:Seg[6]~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux14~0_combout\,
	datac => \p3:Seg[2]~2clkctrl_outclk\,
	datad => \p3:Seg[6]~combout\,
	combout => \p3:Seg[6]~combout\);

-- Location: LCCOMB_X24_Y14_N10
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux1~5_combout\ & (((\p3:Seg[6]~combout\)))) # (!\Mux1~5_combout\ & (((Key_Keep(4))) # (!\Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~5_combout\,
	datab => \Mux11~2_combout\,
	datac => Key_Keep(4),
	datad => \p3:Seg[6]~combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X24_Y14_N16
\f$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \f$latch~combout\ = (GLOBAL(\a~0clkctrl_outclk\) & ((\Mux2~0_combout\))) # (!GLOBAL(\a~0clkctrl_outclk\) & (\f$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f$latch~combout\,
	datac => \Mux2~0_combout\,
	datad => \a~0clkctrl_outclk\,
	combout => \f$latch~combout\);

-- Location: LCCOMB_X21_Y14_N0
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (Key_Keep(4)) # ((Key_Keep(5)) # ((Key_Keep(6)) # (!\Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(4),
	datab => Key_Keep(5),
	datac => \Mux0~4_combout\,
	datad => Key_Keep(6),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X21_Y14_N2
\p3:Seg[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \p3:Seg[7]~combout\ = (GLOBAL(\p3:Seg[2]~2clkctrl_outclk\) & ((\Mux1~2_combout\))) # (!GLOBAL(\p3:Seg[2]~2clkctrl_outclk\) & (\p3:Seg[7]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p3:Seg[7]~combout\,
	datac => \Mux1~2_combout\,
	datad => \p3:Seg[2]~2clkctrl_outclk\,
	combout => \p3:Seg[7]~combout\);

-- Location: LCCOMB_X21_Y14_N30
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~5_combout\ & (((\p3:Seg[7]~combout\)))) # (!\Mux1~5_combout\ & (\Mux1~2_combout\ & (!Key_Keep(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux1~5_combout\,
	datac => Key_Keep(7),
	datad => \p3:Seg[7]~combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X21_Y14_N16
\g$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \g$latch~combout\ = (GLOBAL(\a~0clkctrl_outclk\) & ((\Mux1~3_combout\))) # (!GLOBAL(\a~0clkctrl_outclk\) & (\g$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \g$latch~combout\,
	datac => \Mux1~3_combout\,
	datad => \a~0clkctrl_outclk\,
	combout => \g$latch~combout\);

-- Location: LCCOMB_X23_Y12_N26
\Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (((!\Key[2]~input_o\) # (!\Key[6]~input_o\)) # (!\Key[3]~input_o\)) # (!\Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Key[3]~input_o\,
	datac => \Key[6]~input_o\,
	datad => \Key[2]~input_o\,
	combout => \Mux8~9_combout\);

-- Location: IOIBUF_X0_Y11_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y11_N0
\U7|count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[0]~16_combout\ = \U7|count\(0) $ (VCC)
-- \U7|count[0]~17\ = CARRY(\U7|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U7|count\(0),
	datad => VCC,
	combout => \U7|count[0]~16_combout\,
	cout => \U7|count[0]~17\);

-- Location: LCCOMB_X25_Y14_N28
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X23_Y11_N30
\U7|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|LessThan0~1_combout\ = ((\U7|count\(8)) # ((\U7|count\(4)) # (!\U7|count\(1)))) # (!\U7|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|count\(2),
	datab => \U7|count\(8),
	datac => \U7|count\(4),
	datad => \U7|count\(1),
	combout => \U7|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y11_N28
\U7|count[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[14]~44_combout\ = (\U7|count\(14) & ((GND) # (!\U7|count[13]~43\))) # (!\U7|count\(14) & (\U7|count[13]~43\ $ (GND)))
-- \U7|count[14]~45\ = CARRY((\U7|count\(14)) # (!\U7|count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U7|count\(14),
	datad => VCC,
	cin => \U7|count[13]~43\,
	combout => \U7|count[14]~44_combout\,
	cout => \U7|count[14]~45\);

-- Location: LCCOMB_X24_Y11_N30
\U7|count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[15]~46_combout\ = \U7|count\(15) $ (!\U7|count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U7|count\(15),
	cin => \U7|count[14]~45\,
	combout => \U7|count[15]~46_combout\);

-- Location: FF_X24_Y11_N31
\U7|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[15]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(15));

-- Location: LCCOMB_X23_Y11_N4
\U7|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|LessThan0~0_combout\ = (\U7|count\(13)) # ((\U7|count\(0)) # ((!\U7|count\(12)) # (!\U7|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|count\(13),
	datab => \U7|count\(0),
	datac => \U7|count\(15),
	datad => \U7|count\(12),
	combout => \U7|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y11_N8
\U7|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|LessThan0~2_combout\ = (\U7|count\(14)) # (((!\U7|count\(11)) # (!\U7|count\(10))) # (!\U7|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|count\(14),
	datab => \U7|count\(9),
	datac => \U7|count\(10),
	datad => \U7|count\(11),
	combout => \U7|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y11_N2
\U7|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|LessThan1~2_combout\ = (\U7|count\(3) & (!\U7|count\(6) & (!\U7|count\(7) & \U7|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|count\(3),
	datab => \U7|count\(6),
	datac => \U7|count\(7),
	datad => \U7|count\(5),
	combout => \U7|LessThan1~2_combout\);

-- Location: LCCOMB_X23_Y11_N6
\U7|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|LessThan0~3_combout\ = (!\U7|LessThan0~1_combout\ & (!\U7|LessThan0~0_combout\ & (!\U7|LessThan0~2_combout\ & \U7|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|LessThan0~1_combout\,
	datab => \U7|LessThan0~0_combout\,
	datac => \U7|LessThan0~2_combout\,
	datad => \U7|LessThan1~2_combout\,
	combout => \U7|LessThan0~3_combout\);

-- Location: FF_X24_Y11_N1
\U7|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[0]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(0));

-- Location: LCCOMB_X24_Y11_N2
\U7|count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[1]~18_combout\ = (\U7|count\(1) & (\U7|count[0]~17\ $ (GND))) # (!\U7|count\(1) & (!\U7|count[0]~17\ & VCC))
-- \U7|count[1]~19\ = CARRY((\U7|count\(1) & !\U7|count[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U7|count\(1),
	datad => VCC,
	cin => \U7|count[0]~17\,
	combout => \U7|count[1]~18_combout\,
	cout => \U7|count[1]~19\);

-- Location: FF_X24_Y11_N3
\U7|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[1]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(1));

-- Location: LCCOMB_X24_Y11_N4
\U7|count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[2]~20_combout\ = (\U7|count\(2) & (!\U7|count[1]~19\)) # (!\U7|count\(2) & ((\U7|count[1]~19\) # (GND)))
-- \U7|count[2]~21\ = CARRY((!\U7|count[1]~19\) # (!\U7|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U7|count\(2),
	datad => VCC,
	cin => \U7|count[1]~19\,
	combout => \U7|count[2]~20_combout\,
	cout => \U7|count[2]~21\);

-- Location: FF_X24_Y11_N5
\U7|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[2]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(2));

-- Location: LCCOMB_X24_Y11_N6
\U7|count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[3]~22_combout\ = (\U7|count\(3) & (\U7|count[2]~21\ $ (GND))) # (!\U7|count\(3) & (!\U7|count[2]~21\ & VCC))
-- \U7|count[3]~23\ = CARRY((\U7|count\(3) & !\U7|count[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U7|count\(3),
	datad => VCC,
	cin => \U7|count[2]~21\,
	combout => \U7|count[3]~22_combout\,
	cout => \U7|count[3]~23\);

-- Location: FF_X24_Y11_N7
\U7|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[3]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(3));

-- Location: LCCOMB_X24_Y11_N8
\U7|count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[4]~24_combout\ = (\U7|count\(4) & ((GND) # (!\U7|count[3]~23\))) # (!\U7|count\(4) & (\U7|count[3]~23\ $ (GND)))
-- \U7|count[4]~25\ = CARRY((\U7|count\(4)) # (!\U7|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U7|count\(4),
	datad => VCC,
	cin => \U7|count[3]~23\,
	combout => \U7|count[4]~24_combout\,
	cout => \U7|count[4]~25\);

-- Location: FF_X24_Y11_N9
\U7|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[4]~24_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(4));

-- Location: LCCOMB_X24_Y11_N10
\U7|count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[5]~26_combout\ = (\U7|count\(5) & (\U7|count[4]~25\ $ (GND))) # (!\U7|count\(5) & (!\U7|count[4]~25\ & VCC))
-- \U7|count[5]~27\ = CARRY((\U7|count\(5) & !\U7|count[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U7|count\(5),
	datad => VCC,
	cin => \U7|count[4]~25\,
	combout => \U7|count[5]~26_combout\,
	cout => \U7|count[5]~27\);

-- Location: FF_X24_Y11_N11
\U7|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[5]~26_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(5));

-- Location: LCCOMB_X24_Y11_N12
\U7|count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[6]~28_combout\ = (\U7|count\(6) & ((GND) # (!\U7|count[5]~27\))) # (!\U7|count\(6) & (\U7|count[5]~27\ $ (GND)))
-- \U7|count[6]~29\ = CARRY((\U7|count\(6)) # (!\U7|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U7|count\(6),
	datad => VCC,
	cin => \U7|count[5]~27\,
	combout => \U7|count[6]~28_combout\,
	cout => \U7|count[6]~29\);

-- Location: FF_X24_Y11_N13
\U7|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[6]~28_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(6));

-- Location: LCCOMB_X24_Y11_N14
\U7|count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[7]~30_combout\ = (\U7|count\(7) & (\U7|count[6]~29\ & VCC)) # (!\U7|count\(7) & (!\U7|count[6]~29\))
-- \U7|count[7]~31\ = CARRY((!\U7|count\(7) & !\U7|count[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U7|count\(7),
	datad => VCC,
	cin => \U7|count[6]~29\,
	combout => \U7|count[7]~30_combout\,
	cout => \U7|count[7]~31\);

-- Location: FF_X24_Y11_N15
\U7|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[7]~30_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(7));

-- Location: LCCOMB_X24_Y11_N16
\U7|count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[8]~32_combout\ = (\U7|count\(8) & ((GND) # (!\U7|count[7]~31\))) # (!\U7|count\(8) & (\U7|count[7]~31\ $ (GND)))
-- \U7|count[8]~33\ = CARRY((\U7|count\(8)) # (!\U7|count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U7|count\(8),
	datad => VCC,
	cin => \U7|count[7]~31\,
	combout => \U7|count[8]~32_combout\,
	cout => \U7|count[8]~33\);

-- Location: FF_X24_Y11_N17
\U7|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[8]~32_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(8));

-- Location: LCCOMB_X24_Y11_N18
\U7|count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[9]~34_combout\ = (\U7|count\(9) & (\U7|count[8]~33\ $ (GND))) # (!\U7|count\(9) & (!\U7|count[8]~33\ & VCC))
-- \U7|count[9]~35\ = CARRY((\U7|count\(9) & !\U7|count[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U7|count\(9),
	datad => VCC,
	cin => \U7|count[8]~33\,
	combout => \U7|count[9]~34_combout\,
	cout => \U7|count[9]~35\);

-- Location: FF_X24_Y11_N19
\U7|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[9]~34_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(9));

-- Location: LCCOMB_X24_Y11_N20
\U7|count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[10]~36_combout\ = (\U7|count\(10) & (!\U7|count[9]~35\)) # (!\U7|count\(10) & ((\U7|count[9]~35\) # (GND)))
-- \U7|count[10]~37\ = CARRY((!\U7|count[9]~35\) # (!\U7|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U7|count\(10),
	datad => VCC,
	cin => \U7|count[9]~35\,
	combout => \U7|count[10]~36_combout\,
	cout => \U7|count[10]~37\);

-- Location: FF_X24_Y11_N21
\U7|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[10]~36_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(10));

-- Location: LCCOMB_X24_Y11_N22
\U7|count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[11]~38_combout\ = (\U7|count\(11) & (\U7|count[10]~37\ $ (GND))) # (!\U7|count\(11) & (!\U7|count[10]~37\ & VCC))
-- \U7|count[11]~39\ = CARRY((\U7|count\(11) & !\U7|count[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U7|count\(11),
	datad => VCC,
	cin => \U7|count[10]~37\,
	combout => \U7|count[11]~38_combout\,
	cout => \U7|count[11]~39\);

-- Location: FF_X24_Y11_N23
\U7|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[11]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(11));

-- Location: LCCOMB_X24_Y11_N24
\U7|count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[12]~40_combout\ = (\U7|count\(12) & (!\U7|count[11]~39\)) # (!\U7|count\(12) & ((\U7|count[11]~39\) # (GND)))
-- \U7|count[12]~41\ = CARRY((!\U7|count[11]~39\) # (!\U7|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U7|count\(12),
	datad => VCC,
	cin => \U7|count[11]~39\,
	combout => \U7|count[12]~40_combout\,
	cout => \U7|count[12]~41\);

-- Location: FF_X24_Y11_N25
\U7|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[12]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(12));

-- Location: LCCOMB_X24_Y11_N26
\U7|count[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|count[13]~42_combout\ = (\U7|count\(13) & (\U7|count[12]~41\ & VCC)) # (!\U7|count\(13) & (!\U7|count[12]~41\))
-- \U7|count[13]~43\ = CARRY((!\U7|count\(13) & !\U7|count[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U7|count\(13),
	datad => VCC,
	cin => \U7|count[12]~41\,
	combout => \U7|count[13]~42_combout\,
	cout => \U7|count[13]~43\);

-- Location: FF_X24_Y11_N27
\U7|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[13]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(13));

-- Location: FF_X24_Y11_N29
\U7|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|count[14]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U7|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|count\(14));

-- Location: LCCOMB_X23_Y11_N12
\U7|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|LessThan1~1_combout\ = (\U7|count\(9)) # ((\U7|count\(11)) # ((\U7|count\(10)) # (!\U7|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|count\(9),
	datab => \U7|count\(11),
	datac => \U7|count\(10),
	datad => \U7|count\(8),
	combout => \U7|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y11_N26
\U7|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|LessThan1~0_combout\ = (!\U7|count\(7) & (!\U7|count\(6) & (!\U7|count\(4) & \U7|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|count\(7),
	datab => \U7|count\(6),
	datac => \U7|count\(4),
	datad => \U7|count\(5),
	combout => \U7|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y11_N16
\U7|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|LessThan1~3_combout\ = (\U7|LessThan1~2_combout\ & ((\U7|count\(2)) # ((\U7|count\(1)) # (!\U7|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|count\(2),
	datab => \U7|count\(0),
	datac => \U7|LessThan1~2_combout\,
	datad => \U7|count\(1),
	combout => \U7|LessThan1~3_combout\);

-- Location: LCCOMB_X23_Y11_N18
\U7|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|LessThan1~4_combout\ = (!\U7|count\(13) & ((\U7|LessThan1~1_combout\) # ((\U7|LessThan1~0_combout\) # (\U7|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|LessThan1~1_combout\,
	datab => \U7|count\(13),
	datac => \U7|LessThan1~0_combout\,
	datad => \U7|LessThan1~3_combout\,
	combout => \U7|LessThan1~4_combout\);

-- Location: LCCOMB_X23_Y11_N28
\U7|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U7|LessThan1~5_combout\ = (\U7|count\(15) & (((\U7|count\(12) & \U7|LessThan1~4_combout\)) # (!\U7|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U7|count\(14),
	datab => \U7|count\(12),
	datac => \U7|count\(15),
	datad => \U7|LessThan1~4_combout\,
	combout => \U7|LessThan1~5_combout\);

-- Location: FF_X23_Y11_N29
\U7|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U7|LessThan1~5_combout\,
	clrn => \Start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U7|clk~q\);

-- Location: LCCOMB_X23_Y16_N0
\U5|count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[0]~16_combout\ = \U5|count\(0) $ (VCC)
-- \U5|count[0]~17\ = CARRY(\U5|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U5|count\(0),
	datad => VCC,
	combout => \U5|count[0]~16_combout\,
	cout => \U5|count[0]~17\);

-- Location: LCCOMB_X23_Y16_N26
\U5|count[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[13]~42_combout\ = (\U5|count\(13) & (\U5|count[12]~41\ & VCC)) # (!\U5|count\(13) & (!\U5|count[12]~41\))
-- \U5|count[13]~43\ = CARRY((!\U5|count\(13) & !\U5|count[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|count\(13),
	datad => VCC,
	cin => \U5|count[12]~41\,
	combout => \U5|count[13]~42_combout\,
	cout => \U5|count[13]~43\);

-- Location: LCCOMB_X23_Y16_N28
\U5|count[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[14]~44_combout\ = (\U5|count\(14) & (!\U5|count[13]~43\)) # (!\U5|count\(14) & ((\U5|count[13]~43\) # (GND)))
-- \U5|count[14]~45\ = CARRY((!\U5|count[13]~43\) # (!\U5|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|count\(14),
	datad => VCC,
	cin => \U5|count[13]~43\,
	combout => \U5|count[14]~44_combout\,
	cout => \U5|count[14]~45\);

-- Location: FF_X23_Y16_N29
\U5|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[14]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(14));

-- Location: LCCOMB_X22_Y16_N30
\U5|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|LessThan0~2_combout\ = (\U5|count\(13)) # (((\U5|count\(0)) # (!\U5|count\(9))) # (!\U5|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|count\(13),
	datab => \U5|count\(14),
	datac => \U5|count\(0),
	datad => \U5|count\(9),
	combout => \U5|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y16_N8
\U5|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|LessThan0~1_combout\ = ((\U5|count\(5)) # ((\U5|count\(7)) # (!\U5|count\(8)))) # (!\U5|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|count\(2),
	datab => \U5|count\(5),
	datac => \U5|count\(7),
	datad => \U5|count\(8),
	combout => \U5|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y16_N14
\U5|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|LessThan0~0_combout\ = (\U5|count\(1)) # ((\U5|count\(4)) # ((!\U5|count\(3)) # (!\U5|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|count\(1),
	datab => \U5|count\(4),
	datac => \U5|count\(6),
	datad => \U5|count\(3),
	combout => \U5|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y16_N30
\U5|count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[15]~46_combout\ = \U5|count\(15) $ (!\U5|count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|count\(15),
	cin => \U5|count[14]~45\,
	combout => \U5|count[15]~46_combout\);

-- Location: FF_X23_Y16_N31
\U5|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[15]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(15));

-- Location: LCCOMB_X22_Y16_N2
\U5|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|LessThan1~0_combout\ = (\U5|count\(15) & (!\U5|count\(11) & (\U5|count\(10) & !\U5|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|count\(15),
	datab => \U5|count\(11),
	datac => \U5|count\(10),
	datad => \U5|count\(12),
	combout => \U5|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y16_N28
\U5|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|LessThan0~3_combout\ = (!\U5|LessThan0~2_combout\ & (!\U5|LessThan0~1_combout\ & (!\U5|LessThan0~0_combout\ & \U5|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|LessThan0~2_combout\,
	datab => \U5|LessThan0~1_combout\,
	datac => \U5|LessThan0~0_combout\,
	datad => \U5|LessThan1~0_combout\,
	combout => \U5|LessThan0~3_combout\);

-- Location: FF_X23_Y16_N1
\U5|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[0]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(0));

-- Location: LCCOMB_X23_Y16_N2
\U5|count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[1]~18_combout\ = (\U5|count\(1) & (\U5|count[0]~17\ & VCC)) # (!\U5|count\(1) & (!\U5|count[0]~17\))
-- \U5|count[1]~19\ = CARRY((!\U5|count\(1) & !\U5|count[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|count\(1),
	datad => VCC,
	cin => \U5|count[0]~17\,
	combout => \U5|count[1]~18_combout\,
	cout => \U5|count[1]~19\);

-- Location: FF_X23_Y16_N3
\U5|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[1]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(1));

-- Location: LCCOMB_X23_Y16_N4
\U5|count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[2]~20_combout\ = (\U5|count\(2) & (!\U5|count[1]~19\)) # (!\U5|count\(2) & ((\U5|count[1]~19\) # (GND)))
-- \U5|count[2]~21\ = CARRY((!\U5|count[1]~19\) # (!\U5|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|count\(2),
	datad => VCC,
	cin => \U5|count[1]~19\,
	combout => \U5|count[2]~20_combout\,
	cout => \U5|count[2]~21\);

-- Location: FF_X23_Y16_N5
\U5|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[2]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(2));

-- Location: LCCOMB_X23_Y16_N6
\U5|count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[3]~22_combout\ = (\U5|count\(3) & (\U5|count[2]~21\ $ (GND))) # (!\U5|count\(3) & (!\U5|count[2]~21\ & VCC))
-- \U5|count[3]~23\ = CARRY((\U5|count\(3) & !\U5|count[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|count\(3),
	datad => VCC,
	cin => \U5|count[2]~21\,
	combout => \U5|count[3]~22_combout\,
	cout => \U5|count[3]~23\);

-- Location: FF_X23_Y16_N7
\U5|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[3]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(3));

-- Location: LCCOMB_X23_Y16_N8
\U5|count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[4]~24_combout\ = (\U5|count\(4) & ((GND) # (!\U5|count[3]~23\))) # (!\U5|count\(4) & (\U5|count[3]~23\ $ (GND)))
-- \U5|count[4]~25\ = CARRY((\U5|count\(4)) # (!\U5|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|count\(4),
	datad => VCC,
	cin => \U5|count[3]~23\,
	combout => \U5|count[4]~24_combout\,
	cout => \U5|count[4]~25\);

-- Location: FF_X23_Y16_N9
\U5|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[4]~24_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(4));

-- Location: LCCOMB_X23_Y16_N10
\U5|count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[5]~26_combout\ = (\U5|count\(5) & (\U5|count[4]~25\ & VCC)) # (!\U5|count\(5) & (!\U5|count[4]~25\))
-- \U5|count[5]~27\ = CARRY((!\U5|count\(5) & !\U5|count[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|count\(5),
	datad => VCC,
	cin => \U5|count[4]~25\,
	combout => \U5|count[5]~26_combout\,
	cout => \U5|count[5]~27\);

-- Location: FF_X23_Y16_N11
\U5|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[5]~26_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(5));

-- Location: LCCOMB_X23_Y16_N12
\U5|count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[6]~28_combout\ = (\U5|count\(6) & (!\U5|count[5]~27\)) # (!\U5|count\(6) & ((\U5|count[5]~27\) # (GND)))
-- \U5|count[6]~29\ = CARRY((!\U5|count[5]~27\) # (!\U5|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|count\(6),
	datad => VCC,
	cin => \U5|count[5]~27\,
	combout => \U5|count[6]~28_combout\,
	cout => \U5|count[6]~29\);

-- Location: FF_X23_Y16_N13
\U5|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[6]~28_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(6));

-- Location: LCCOMB_X23_Y16_N14
\U5|count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[7]~30_combout\ = (\U5|count\(7) & (\U5|count[6]~29\ & VCC)) # (!\U5|count\(7) & (!\U5|count[6]~29\))
-- \U5|count[7]~31\ = CARRY((!\U5|count\(7) & !\U5|count[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|count\(7),
	datad => VCC,
	cin => \U5|count[6]~29\,
	combout => \U5|count[7]~30_combout\,
	cout => \U5|count[7]~31\);

-- Location: FF_X23_Y16_N15
\U5|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[7]~30_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(7));

-- Location: LCCOMB_X23_Y16_N16
\U5|count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[8]~32_combout\ = (\U5|count\(8) & (!\U5|count[7]~31\)) # (!\U5|count\(8) & ((\U5|count[7]~31\) # (GND)))
-- \U5|count[8]~33\ = CARRY((!\U5|count[7]~31\) # (!\U5|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|count\(8),
	datad => VCC,
	cin => \U5|count[7]~31\,
	combout => \U5|count[8]~32_combout\,
	cout => \U5|count[8]~33\);

-- Location: FF_X23_Y16_N17
\U5|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[8]~32_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(8));

-- Location: LCCOMB_X23_Y16_N18
\U5|count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[9]~34_combout\ = (\U5|count\(9) & (\U5|count[8]~33\ $ (GND))) # (!\U5|count\(9) & (!\U5|count[8]~33\ & VCC))
-- \U5|count[9]~35\ = CARRY((\U5|count\(9) & !\U5|count[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|count\(9),
	datad => VCC,
	cin => \U5|count[8]~33\,
	combout => \U5|count[9]~34_combout\,
	cout => \U5|count[9]~35\);

-- Location: FF_X23_Y16_N19
\U5|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[9]~34_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(9));

-- Location: LCCOMB_X23_Y16_N20
\U5|count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[10]~36_combout\ = (\U5|count\(10) & (!\U5|count[9]~35\)) # (!\U5|count\(10) & ((\U5|count[9]~35\) # (GND)))
-- \U5|count[10]~37\ = CARRY((!\U5|count[9]~35\) # (!\U5|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|count\(10),
	datad => VCC,
	cin => \U5|count[9]~35\,
	combout => \U5|count[10]~36_combout\,
	cout => \U5|count[10]~37\);

-- Location: FF_X23_Y16_N21
\U5|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[10]~36_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(10));

-- Location: LCCOMB_X23_Y16_N22
\U5|count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[11]~38_combout\ = (\U5|count\(11) & (\U5|count[10]~37\ & VCC)) # (!\U5|count\(11) & (!\U5|count[10]~37\))
-- \U5|count[11]~39\ = CARRY((!\U5|count\(11) & !\U5|count[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U5|count\(11),
	datad => VCC,
	cin => \U5|count[10]~37\,
	combout => \U5|count[11]~38_combout\,
	cout => \U5|count[11]~39\);

-- Location: FF_X23_Y16_N23
\U5|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[11]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(11));

-- Location: LCCOMB_X23_Y16_N24
\U5|count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|count[12]~40_combout\ = (\U5|count\(12) & ((GND) # (!\U5|count[11]~39\))) # (!\U5|count\(12) & (\U5|count[11]~39\ $ (GND)))
-- \U5|count[12]~41\ = CARRY((\U5|count\(12)) # (!\U5|count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U5|count\(12),
	datad => VCC,
	cin => \U5|count[11]~39\,
	combout => \U5|count[12]~40_combout\,
	cout => \U5|count[12]~41\);

-- Location: FF_X23_Y16_N25
\U5|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[12]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(12));

-- Location: FF_X23_Y16_N27
\U5|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|count[13]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U5|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|count\(13));

-- Location: LCCOMB_X22_Y16_N20
\U5|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|LessThan1~1_combout\ = (!\U5|count\(4) & (\U5|count\(3) & ((\U5|count\(2)) # (!\U5|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|count\(1),
	datab => \U5|count\(4),
	datac => \U5|count\(2),
	datad => \U5|count\(3),
	combout => \U5|LessThan1~1_combout\);

-- Location: LCCOMB_X22_Y16_N10
\U5|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|LessThan1~2_combout\ = (\U5|count\(8)) # ((\U5|count\(6) & ((\U5|LessThan1~1_combout\) # (!\U5|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|count\(8),
	datab => \U5|count\(6),
	datac => \U5|count\(5),
	datad => \U5|LessThan1~1_combout\,
	combout => \U5|LessThan1~2_combout\);

-- Location: LCCOMB_X22_Y16_N24
\U5|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|LessThan1~3_combout\ = (\U5|LessThan1~0_combout\ & ((\U5|count\(9)) # ((\U5|LessThan1~2_combout\) # (!\U5|count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|LessThan1~0_combout\,
	datab => \U5|count\(9),
	datac => \U5|count\(7),
	datad => \U5|LessThan1~2_combout\,
	combout => \U5|LessThan1~3_combout\);

-- Location: LCCOMB_X22_Y16_N4
\U5|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U5|LessThan1~4_combout\ = (\U5|LessThan1~3_combout\) # ((\U5|count\(15) & ((\U5|count\(14)) # (!\U5|count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U5|count\(13),
	datab => \U5|count\(14),
	datac => \U5|count\(15),
	datad => \U5|LessThan1~3_combout\,
	combout => \U5|LessThan1~4_combout\);

-- Location: FF_X22_Y16_N5
\U5|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U5|LessThan1~4_combout\,
	clrn => \Start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|clk~q\);

-- Location: LCCOMB_X23_Y14_N28
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (Key_Keep(7) & (!Key_Keep(5) & (\U7|clk~q\))) # (!Key_Keep(7) & (Key_Keep(5) & ((\U5|clk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(7),
	datab => Key_Keep(5),
	datac => \U7|clk~q\,
	datad => \U5|clk~q\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X29_Y12_N0
\U6|count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[0]~16_combout\ = \U6|count\(0) $ (VCC)
-- \U6|count[0]~17\ = CARRY(\U6|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(0),
	datad => VCC,
	combout => \U6|count[0]~16_combout\,
	cout => \U6|count[0]~17\);

-- Location: LCCOMB_X28_Y12_N12
\U6|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|LessThan1~2_combout\ = (!\U6|count\(4) & (!\U6|count\(5) & \U6|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(4),
	datac => \U6|count\(5),
	datad => \U6|count\(3),
	combout => \U6|LessThan1~2_combout\);

-- Location: LCCOMB_X28_Y12_N26
\U6|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|LessThan0~0_combout\ = (((\U6|count\(6)) # (!\U6|count\(1))) # (!\U6|count\(7))) # (!\U6|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(2),
	datab => \U6|count\(7),
	datac => \U6|count\(6),
	datad => \U6|count\(1),
	combout => \U6|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y12_N0
\U6|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|LessThan1~0_combout\ = (!\U6|count\(9) & (\U6|count\(8) & (\U6|count\(15) & \U6|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(9),
	datab => \U6|count\(8),
	datac => \U6|count\(15),
	datad => \U6|count\(13),
	combout => \U6|LessThan1~0_combout\);

-- Location: LCCOMB_X28_Y12_N10
\U6|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|LessThan1~1_combout\ = (!\U6|count\(10) & \U6|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U6|count\(10),
	datad => \U6|LessThan1~0_combout\,
	combout => \U6|LessThan1~1_combout\);

-- Location: LCCOMB_X28_Y12_N8
\U6|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|LessThan0~1_combout\ = ((\U6|count\(0)) # ((\U6|LessThan0~0_combout\) # (!\U6|LessThan1~1_combout\))) # (!\U6|LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|LessThan1~2_combout\,
	datab => \U6|count\(0),
	datac => \U6|LessThan0~0_combout\,
	datad => \U6|LessThan1~1_combout\,
	combout => \U6|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y12_N18
\U6|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|LessThan0~2_combout\ = (\U6|count\(12) & (!\U6|count\(11) & (!\U6|LessThan0~1_combout\ & !\U6|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(12),
	datab => \U6|count\(11),
	datac => \U6|LessThan0~1_combout\,
	datad => \U6|count\(14),
	combout => \U6|LessThan0~2_combout\);

-- Location: FF_X29_Y12_N1
\U6|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[0]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(0));

-- Location: LCCOMB_X29_Y12_N2
\U6|count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[1]~18_combout\ = (\U6|count\(1) & (\U6|count[0]~17\ $ (GND))) # (!\U6|count\(1) & (!\U6|count[0]~17\ & VCC))
-- \U6|count[1]~19\ = CARRY((\U6|count\(1) & !\U6|count[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(1),
	datad => VCC,
	cin => \U6|count[0]~17\,
	combout => \U6|count[1]~18_combout\,
	cout => \U6|count[1]~19\);

-- Location: FF_X29_Y12_N3
\U6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[1]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(1));

-- Location: LCCOMB_X29_Y12_N4
\U6|count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[2]~20_combout\ = (\U6|count\(2) & (!\U6|count[1]~19\)) # (!\U6|count\(2) & ((\U6|count[1]~19\) # (GND)))
-- \U6|count[2]~21\ = CARRY((!\U6|count[1]~19\) # (!\U6|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(2),
	datad => VCC,
	cin => \U6|count[1]~19\,
	combout => \U6|count[2]~20_combout\,
	cout => \U6|count[2]~21\);

-- Location: FF_X29_Y12_N5
\U6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[2]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(2));

-- Location: LCCOMB_X29_Y12_N6
\U6|count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[3]~22_combout\ = (\U6|count\(3) & (\U6|count[2]~21\ $ (GND))) # (!\U6|count\(3) & (!\U6|count[2]~21\ & VCC))
-- \U6|count[3]~23\ = CARRY((\U6|count\(3) & !\U6|count[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(3),
	datad => VCC,
	cin => \U6|count[2]~21\,
	combout => \U6|count[3]~22_combout\,
	cout => \U6|count[3]~23\);

-- Location: LCCOMB_X28_Y12_N16
\U6|count[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[3]~feeder_combout\ = \U6|count[3]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U6|count[3]~22_combout\,
	combout => \U6|count[3]~feeder_combout\);

-- Location: FF_X28_Y12_N17
\U6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[3]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(3));

-- Location: LCCOMB_X29_Y12_N8
\U6|count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[4]~24_combout\ = (\U6|count\(4) & ((GND) # (!\U6|count[3]~23\))) # (!\U6|count\(4) & (\U6|count[3]~23\ $ (GND)))
-- \U6|count[4]~25\ = CARRY((\U6|count\(4)) # (!\U6|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(4),
	datad => VCC,
	cin => \U6|count[3]~23\,
	combout => \U6|count[4]~24_combout\,
	cout => \U6|count[4]~25\);

-- Location: LCCOMB_X28_Y12_N6
\U6|count[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[4]~feeder_combout\ = \U6|count[4]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U6|count[4]~24_combout\,
	combout => \U6|count[4]~feeder_combout\);

-- Location: FF_X28_Y12_N7
\U6|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[4]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(4));

-- Location: LCCOMB_X29_Y12_N10
\U6|count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[5]~26_combout\ = (\U6|count\(5) & (\U6|count[4]~25\ & VCC)) # (!\U6|count\(5) & (!\U6|count[4]~25\))
-- \U6|count[5]~27\ = CARRY((!\U6|count\(5) & !\U6|count[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(5),
	datad => VCC,
	cin => \U6|count[4]~25\,
	combout => \U6|count[5]~26_combout\,
	cout => \U6|count[5]~27\);

-- Location: FF_X29_Y12_N11
\U6|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[5]~26_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(5));

-- Location: LCCOMB_X29_Y12_N12
\U6|count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[6]~28_combout\ = (\U6|count\(6) & ((GND) # (!\U6|count[5]~27\))) # (!\U6|count\(6) & (\U6|count[5]~27\ $ (GND)))
-- \U6|count[6]~29\ = CARRY((\U6|count\(6)) # (!\U6|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(6),
	datad => VCC,
	cin => \U6|count[5]~27\,
	combout => \U6|count[6]~28_combout\,
	cout => \U6|count[6]~29\);

-- Location: FF_X29_Y12_N13
\U6|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[6]~28_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(6));

-- Location: LCCOMB_X29_Y12_N14
\U6|count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[7]~30_combout\ = (\U6|count\(7) & (\U6|count[6]~29\ $ (GND))) # (!\U6|count\(7) & (!\U6|count[6]~29\ & VCC))
-- \U6|count[7]~31\ = CARRY((\U6|count\(7) & !\U6|count[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(7),
	datad => VCC,
	cin => \U6|count[6]~29\,
	combout => \U6|count[7]~30_combout\,
	cout => \U6|count[7]~31\);

-- Location: FF_X29_Y12_N15
\U6|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[7]~30_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(7));

-- Location: LCCOMB_X29_Y12_N16
\U6|count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[8]~32_combout\ = (\U6|count\(8) & (!\U6|count[7]~31\)) # (!\U6|count\(8) & ((\U6|count[7]~31\) # (GND)))
-- \U6|count[8]~33\ = CARRY((!\U6|count[7]~31\) # (!\U6|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(8),
	datad => VCC,
	cin => \U6|count[7]~31\,
	combout => \U6|count[8]~32_combout\,
	cout => \U6|count[8]~33\);

-- Location: LCCOMB_X28_Y12_N28
\U6|count[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[8]~feeder_combout\ = \U6|count[8]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U6|count[8]~32_combout\,
	combout => \U6|count[8]~feeder_combout\);

-- Location: FF_X28_Y12_N29
\U6|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[8]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(8));

-- Location: LCCOMB_X29_Y12_N18
\U6|count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[9]~34_combout\ = (\U6|count\(9) & (\U6|count[8]~33\ & VCC)) # (!\U6|count\(9) & (!\U6|count[8]~33\))
-- \U6|count[9]~35\ = CARRY((!\U6|count\(9) & !\U6|count[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(9),
	datad => VCC,
	cin => \U6|count[8]~33\,
	combout => \U6|count[9]~34_combout\,
	cout => \U6|count[9]~35\);

-- Location: LCCOMB_X28_Y12_N22
\U6|count[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[9]~feeder_combout\ = \U6|count[9]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U6|count[9]~34_combout\,
	combout => \U6|count[9]~feeder_combout\);

-- Location: FF_X28_Y12_N23
\U6|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[9]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(9));

-- Location: LCCOMB_X29_Y12_N20
\U6|count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[10]~36_combout\ = (\U6|count\(10) & ((GND) # (!\U6|count[9]~35\))) # (!\U6|count\(10) & (\U6|count[9]~35\ $ (GND)))
-- \U6|count[10]~37\ = CARRY((\U6|count\(10)) # (!\U6|count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(10),
	datad => VCC,
	cin => \U6|count[9]~35\,
	combout => \U6|count[10]~36_combout\,
	cout => \U6|count[10]~37\);

-- Location: FF_X29_Y12_N21
\U6|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[10]~36_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(10));

-- Location: LCCOMB_X29_Y12_N22
\U6|count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[11]~38_combout\ = (\U6|count\(11) & (\U6|count[10]~37\ & VCC)) # (!\U6|count\(11) & (!\U6|count[10]~37\))
-- \U6|count[11]~39\ = CARRY((!\U6|count\(11) & !\U6|count[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(11),
	datad => VCC,
	cin => \U6|count[10]~37\,
	combout => \U6|count[11]~38_combout\,
	cout => \U6|count[11]~39\);

-- Location: FF_X29_Y12_N23
\U6|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[11]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(11));

-- Location: LCCOMB_X29_Y12_N24
\U6|count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[12]~40_combout\ = (\U6|count\(12) & (!\U6|count[11]~39\)) # (!\U6|count\(12) & ((\U6|count[11]~39\) # (GND)))
-- \U6|count[12]~41\ = CARRY((!\U6|count[11]~39\) # (!\U6|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(12),
	datad => VCC,
	cin => \U6|count[11]~39\,
	combout => \U6|count[12]~40_combout\,
	cout => \U6|count[12]~41\);

-- Location: FF_X29_Y12_N25
\U6|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[12]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(12));

-- Location: LCCOMB_X29_Y12_N26
\U6|count[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[13]~42_combout\ = (\U6|count\(13) & (\U6|count[12]~41\ $ (GND))) # (!\U6|count\(13) & (!\U6|count[12]~41\ & VCC))
-- \U6|count[13]~43\ = CARRY((\U6|count\(13) & !\U6|count[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(13),
	datad => VCC,
	cin => \U6|count[12]~41\,
	combout => \U6|count[13]~42_combout\,
	cout => \U6|count[13]~43\);

-- Location: FF_X29_Y12_N27
\U6|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[13]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(13));

-- Location: LCCOMB_X29_Y12_N28
\U6|count[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[14]~44_combout\ = (\U6|count\(14) & ((GND) # (!\U6|count[13]~43\))) # (!\U6|count\(14) & (\U6|count[13]~43\ $ (GND)))
-- \U6|count[14]~45\ = CARRY((\U6|count\(14)) # (!\U6|count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U6|count\(14),
	datad => VCC,
	cin => \U6|count[13]~43\,
	combout => \U6|count[14]~44_combout\,
	cout => \U6|count[14]~45\);

-- Location: FF_X29_Y12_N29
\U6|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[14]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(14));

-- Location: LCCOMB_X29_Y12_N30
\U6|count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|count[15]~46_combout\ = \U6|count\(15) $ (!\U6|count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(15),
	cin => \U6|count[14]~45\,
	combout => \U6|count[15]~46_combout\);

-- Location: FF_X29_Y12_N31
\U6|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|count[15]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U6|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|count\(15));

-- Location: LCCOMB_X28_Y12_N30
\U6|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|LessThan1~5_combout\ = (\U6|count\(15) & (\U6|count\(13) & ((\U6|count\(12)) # (!\U6|count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(15),
	datab => \U6|count\(13),
	datac => \U6|count\(12),
	datad => \U6|count\(11),
	combout => \U6|LessThan1~5_combout\);

-- Location: LCCOMB_X28_Y12_N14
\U6|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|LessThan1~3_combout\ = (\U6|LessThan1~2_combout\ & ((\U6|count\(2)) # ((\U6|count\(1)) # (!\U6|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(2),
	datab => \U6|count\(1),
	datac => \U6|count\(0),
	datad => \U6|LessThan1~2_combout\,
	combout => \U6|LessThan1~3_combout\);

-- Location: LCCOMB_X28_Y12_N20
\U6|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|LessThan1~4_combout\ = (\U6|LessThan1~1_combout\ & ((\U6|count\(7)) # ((\U6|LessThan1~3_combout\) # (!\U6|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(7),
	datab => \U6|count\(6),
	datac => \U6|LessThan1~3_combout\,
	datad => \U6|LessThan1~1_combout\,
	combout => \U6|LessThan1~4_combout\);

-- Location: LCCOMB_X28_Y12_N24
\U6|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|LessThan1~6_combout\ = (\U6|LessThan1~5_combout\) # ((\U6|LessThan1~4_combout\) # ((\U6|count\(15) & !\U6|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U6|count\(15),
	datab => \U6|count\(14),
	datac => \U6|LessThan1~5_combout\,
	datad => \U6|LessThan1~4_combout\,
	combout => \U6|LessThan1~6_combout\);

-- Location: LCCOMB_X24_Y14_N26
\U6|clk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U6|clk~feeder_combout\ = \U6|LessThan1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U6|LessThan1~6_combout\,
	combout => \U6|clk~feeder_combout\);

-- Location: FF_X24_Y14_N27
\U6|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U6|clk~feeder_combout\,
	clrn => \Start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|clk~q\);

-- Location: LCCOMB_X23_Y14_N18
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (!Key_Keep(7) & (!Key_Keep(5) & (Key_Keep(6) & \U6|clk~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(7),
	datab => Key_Keep(5),
	datac => Key_Keep(6),
	datad => \U6|clk~q\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X23_Y14_N24
\Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux9~0_combout\ & ((\Mux8~5_combout\) # ((\Mux8~6_combout\ & !Key_Keep(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \Mux8~6_combout\,
	datac => \Mux8~5_combout\,
	datad => Key_Keep(6),
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X25_Y15_N16
\U2|count[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[0]~17_combout\ = \U2|count\(0) $ (VCC)
-- \U2|count[0]~18\ = CARRY(\U2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(0),
	datad => VCC,
	combout => \U2|count[0]~17_combout\,
	cout => \U2|count[0]~18\);

-- Location: LCCOMB_X25_Y14_N6
\U2|count[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[11]~39_combout\ = (\U2|count\(11) & (\U2|count[10]~38\ $ (GND))) # (!\U2|count\(11) & (!\U2|count[10]~38\ & VCC))
-- \U2|count[11]~40\ = CARRY((\U2|count\(11) & !\U2|count[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(11),
	datad => VCC,
	cin => \U2|count[10]~38\,
	combout => \U2|count[11]~39_combout\,
	cout => \U2|count[11]~40\);

-- Location: LCCOMB_X25_Y14_N8
\U2|count[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[12]~41_combout\ = (\U2|count\(12) & ((GND) # (!\U2|count[11]~40\))) # (!\U2|count\(12) & (\U2|count[11]~40\ $ (GND)))
-- \U2|count[12]~42\ = CARRY((\U2|count\(12)) # (!\U2|count[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(12),
	datad => VCC,
	cin => \U2|count[11]~40\,
	combout => \U2|count[12]~41_combout\,
	cout => \U2|count[12]~42\);

-- Location: FF_X25_Y14_N9
\U2|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[12]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(12));

-- Location: LCCOMB_X25_Y14_N10
\U2|count[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[13]~43_combout\ = (\U2|count\(13) & (\U2|count[12]~42\ & VCC)) # (!\U2|count\(13) & (!\U2|count[12]~42\))
-- \U2|count[13]~44\ = CARRY((!\U2|count\(13) & !\U2|count[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(13),
	datad => VCC,
	cin => \U2|count[12]~42\,
	combout => \U2|count[13]~43_combout\,
	cout => \U2|count[13]~44\);

-- Location: FF_X25_Y14_N11
\U2|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[13]~43_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(13));

-- Location: LCCOMB_X25_Y14_N12
\U2|count[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[14]~45_combout\ = (\U2|count\(14) & ((GND) # (!\U2|count[13]~44\))) # (!\U2|count\(14) & (\U2|count[13]~44\ $ (GND)))
-- \U2|count[14]~46\ = CARRY((\U2|count\(14)) # (!\U2|count[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(14),
	datad => VCC,
	cin => \U2|count[13]~44\,
	combout => \U2|count[14]~45_combout\,
	cout => \U2|count[14]~46\);

-- Location: FF_X25_Y14_N13
\U2|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[14]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(14));

-- Location: LCCOMB_X25_Y14_N14
\U2|count[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[15]~47_combout\ = (\U2|count\(15) & (\U2|count[14]~46\ & VCC)) # (!\U2|count\(15) & (!\U2|count[14]~46\))
-- \U2|count[15]~48\ = CARRY((!\U2|count\(15) & !\U2|count[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(15),
	datad => VCC,
	cin => \U2|count[14]~46\,
	combout => \U2|count[15]~47_combout\,
	cout => \U2|count[15]~48\);

-- Location: FF_X25_Y14_N15
\U2|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[15]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(15));

-- Location: LCCOMB_X25_Y15_N12
\U2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~0_combout\ = (\U2|count\(15)) # ((\U2|count\(0)) # ((\U2|count\(8)) # (\U2|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(15),
	datab => \U2|count\(0),
	datac => \U2|count\(8),
	datad => \U2|count\(10),
	combout => \U2|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y15_N4
\U2|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan1~2_combout\ = (!\U2|count\(5) & (!\U2|count\(4) & (\U2|count\(3) & !\U2|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(5),
	datab => \U2|count\(4),
	datac => \U2|count\(3),
	datad => \U2|count\(2),
	combout => \U2|LessThan1~2_combout\);

-- Location: LCCOMB_X25_Y15_N14
\U2|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan1~3_combout\ = (!\U2|count\(7) & (!\U2|count\(6) & (\U2|LessThan1~2_combout\ & \U2|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(7),
	datab => \U2|count\(6),
	datac => \U2|LessThan1~2_combout\,
	datad => \U2|count\(9),
	combout => \U2|LessThan1~3_combout\);

-- Location: LCCOMB_X25_Y14_N16
\U2|count[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[16]~49_combout\ = \U2|count[15]~48\ $ (\U2|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2|count\(16),
	cin => \U2|count[15]~48\,
	combout => \U2|count[16]~49_combout\);

-- Location: FF_X25_Y14_N17
\U2|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[16]~49_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(16));

-- Location: LCCOMB_X25_Y14_N22
\U2|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan1~6_combout\ = (\U2|count\(16) & \U2|LessThan1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(16),
	datad => \U2|LessThan1~5_combout\,
	combout => \U2|LessThan1~6_combout\);

-- Location: LCCOMB_X25_Y15_N10
\U2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan0~1_combout\ = (!\U2|LessThan0~0_combout\ & (!\U2|count\(1) & (\U2|LessThan1~3_combout\ & \U2|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan0~0_combout\,
	datab => \U2|count\(1),
	datac => \U2|LessThan1~3_combout\,
	datad => \U2|LessThan1~6_combout\,
	combout => \U2|LessThan0~1_combout\);

-- Location: FF_X25_Y15_N17
\U2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[0]~17_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(0));

-- Location: LCCOMB_X25_Y15_N18
\U2|count[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[1]~19_combout\ = (\U2|count\(1) & (\U2|count[0]~18\ & VCC)) # (!\U2|count\(1) & (!\U2|count[0]~18\))
-- \U2|count[1]~20\ = CARRY((!\U2|count\(1) & !\U2|count[0]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(1),
	datad => VCC,
	cin => \U2|count[0]~18\,
	combout => \U2|count[1]~19_combout\,
	cout => \U2|count[1]~20\);

-- Location: FF_X25_Y15_N19
\U2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[1]~19_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(1));

-- Location: LCCOMB_X25_Y15_N20
\U2|count[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[2]~21_combout\ = (\U2|count\(2) & ((GND) # (!\U2|count[1]~20\))) # (!\U2|count\(2) & (\U2|count[1]~20\ $ (GND)))
-- \U2|count[2]~22\ = CARRY((\U2|count\(2)) # (!\U2|count[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(2),
	datad => VCC,
	cin => \U2|count[1]~20\,
	combout => \U2|count[2]~21_combout\,
	cout => \U2|count[2]~22\);

-- Location: FF_X25_Y15_N21
\U2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[2]~21_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(2));

-- Location: LCCOMB_X25_Y15_N22
\U2|count[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[3]~23_combout\ = (\U2|count\(3) & (\U2|count[2]~22\ $ (GND))) # (!\U2|count\(3) & (!\U2|count[2]~22\ & VCC))
-- \U2|count[3]~24\ = CARRY((\U2|count\(3) & !\U2|count[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(3),
	datad => VCC,
	cin => \U2|count[2]~22\,
	combout => \U2|count[3]~23_combout\,
	cout => \U2|count[3]~24\);

-- Location: FF_X25_Y15_N23
\U2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[3]~23_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(3));

-- Location: LCCOMB_X25_Y15_N24
\U2|count[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[4]~25_combout\ = (\U2|count\(4) & ((GND) # (!\U2|count[3]~24\))) # (!\U2|count\(4) & (\U2|count[3]~24\ $ (GND)))
-- \U2|count[4]~26\ = CARRY((\U2|count\(4)) # (!\U2|count[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(4),
	datad => VCC,
	cin => \U2|count[3]~24\,
	combout => \U2|count[4]~25_combout\,
	cout => \U2|count[4]~26\);

-- Location: FF_X25_Y15_N25
\U2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[4]~25_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(4));

-- Location: LCCOMB_X25_Y15_N26
\U2|count[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[5]~27_combout\ = (\U2|count\(5) & (\U2|count[4]~26\ & VCC)) # (!\U2|count\(5) & (!\U2|count[4]~26\))
-- \U2|count[5]~28\ = CARRY((!\U2|count\(5) & !\U2|count[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(5),
	datad => VCC,
	cin => \U2|count[4]~26\,
	combout => \U2|count[5]~27_combout\,
	cout => \U2|count[5]~28\);

-- Location: FF_X25_Y15_N27
\U2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[5]~27_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(5));

-- Location: LCCOMB_X25_Y15_N28
\U2|count[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[6]~29_combout\ = (\U2|count\(6) & ((GND) # (!\U2|count[5]~28\))) # (!\U2|count\(6) & (\U2|count[5]~28\ $ (GND)))
-- \U2|count[6]~30\ = CARRY((\U2|count\(6)) # (!\U2|count[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(6),
	datad => VCC,
	cin => \U2|count[5]~28\,
	combout => \U2|count[6]~29_combout\,
	cout => \U2|count[6]~30\);

-- Location: FF_X25_Y15_N29
\U2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[6]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(6));

-- Location: LCCOMB_X25_Y15_N30
\U2|count[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[7]~31_combout\ = (\U2|count\(7) & (\U2|count[6]~30\ & VCC)) # (!\U2|count\(7) & (!\U2|count[6]~30\))
-- \U2|count[7]~32\ = CARRY((!\U2|count\(7) & !\U2|count[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(7),
	datad => VCC,
	cin => \U2|count[6]~30\,
	combout => \U2|count[7]~31_combout\,
	cout => \U2|count[7]~32\);

-- Location: FF_X25_Y15_N31
\U2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[7]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(7));

-- Location: LCCOMB_X25_Y14_N0
\U2|count[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[8]~33_combout\ = (\U2|count\(8) & ((GND) # (!\U2|count[7]~32\))) # (!\U2|count\(8) & (\U2|count[7]~32\ $ (GND)))
-- \U2|count[8]~34\ = CARRY((\U2|count\(8)) # (!\U2|count[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(8),
	datad => VCC,
	cin => \U2|count[7]~32\,
	combout => \U2|count[8]~33_combout\,
	cout => \U2|count[8]~34\);

-- Location: FF_X25_Y14_N1
\U2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[8]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(8));

-- Location: LCCOMB_X25_Y14_N2
\U2|count[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[9]~35_combout\ = (\U2|count\(9) & (\U2|count[8]~34\ $ (GND))) # (!\U2|count\(9) & (!\U2|count[8]~34\ & VCC))
-- \U2|count[9]~36\ = CARRY((\U2|count\(9) & !\U2|count[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(9),
	datad => VCC,
	cin => \U2|count[8]~34\,
	combout => \U2|count[9]~35_combout\,
	cout => \U2|count[9]~36\);

-- Location: FF_X25_Y14_N3
\U2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[9]~35_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(9));

-- Location: LCCOMB_X25_Y14_N4
\U2|count[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|count[10]~37_combout\ = (\U2|count\(10) & ((GND) # (!\U2|count[9]~36\))) # (!\U2|count\(10) & (\U2|count[9]~36\ $ (GND)))
-- \U2|count[10]~38\ = CARRY((\U2|count\(10)) # (!\U2|count[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2|count\(10),
	datad => VCC,
	cin => \U2|count[9]~36\,
	combout => \U2|count[10]~37_combout\,
	cout => \U2|count[10]~38\);

-- Location: FF_X25_Y14_N5
\U2|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[10]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(10));

-- Location: FF_X25_Y14_N7
\U2|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|count[11]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|count\(11));

-- Location: LCCOMB_X25_Y14_N20
\U2|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan1~5_combout\ = (\U2|count\(11) & (!\U2|count\(14) & (!\U2|count\(12) & !\U2|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(11),
	datab => \U2|count\(14),
	datac => \U2|count\(12),
	datad => \U2|count\(13),
	combout => \U2|LessThan1~5_combout\);

-- Location: LCCOMB_X25_Y14_N26
\U2|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan1~4_combout\ = ((\U2|LessThan1~3_combout\) # ((\U2|count\(9) & !\U2|count\(8)))) # (!\U2|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|count\(10),
	datab => \U2|count\(9),
	datac => \U2|LessThan1~3_combout\,
	datad => \U2|count\(8),
	combout => \U2|LessThan1~4_combout\);

-- Location: LCCOMB_X24_Y14_N4
\U2|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2|LessThan1~7_combout\ = (\U2|count\(16) & (((\U2|LessThan1~5_combout\ & \U2|LessThan1~4_combout\)) # (!\U2|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|LessThan1~5_combout\,
	datab => \U2|count\(15),
	datac => \U2|count\(16),
	datad => \U2|LessThan1~4_combout\,
	combout => \U2|LessThan1~7_combout\);

-- Location: FF_X24_Y14_N5
\U2|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U2|LessThan1~7_combout\,
	clrn => \Start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|clk~q\);

-- Location: LCCOMB_X24_Y13_N0
\U3|count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[0]~16_combout\ = \U3|count\(0) $ (VCC)
-- \U3|count[0]~17\ = CARRY(\U3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(0),
	datad => VCC,
	combout => \U3|count[0]~16_combout\,
	cout => \U3|count[0]~17\);

-- Location: LCCOMB_X23_Y13_N30
\U3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|LessThan0~0_combout\ = (\U3|count\(7)) # ((\U3|count\(9)) # ((\U3|count\(12)) # (!\U3|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(7),
	datab => \U3|count\(9),
	datac => \U3|count\(10),
	datad => \U3|count\(12),
	combout => \U3|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\U3|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|LessThan1~2_combout\ = (!\U3|count\(3) & (!\U3|count\(4) & (!\U3|count\(5) & !\U3|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(3),
	datab => \U3|count\(4),
	datac => \U3|count\(5),
	datad => \U3|count\(2),
	combout => \U3|LessThan1~2_combout\);

-- Location: LCCOMB_X23_Y13_N18
\U3|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|LessThan1~1_combout\ = (\U3|count\(8) & (\U3|count\(11) & (!\U3|count\(0) & \U3|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(8),
	datab => \U3|count\(11),
	datac => \U3|count\(0),
	datad => \U3|count\(1),
	combout => \U3|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y13_N20
\U3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|LessThan0~1_combout\ = (\U3|LessThan0~0_combout\) # ((\U3|count\(6)) # ((!\U3|LessThan1~1_combout\) # (!\U3|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|LessThan0~0_combout\,
	datab => \U3|count\(6),
	datac => \U3|LessThan1~2_combout\,
	datad => \U3|LessThan1~1_combout\,
	combout => \U3|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y13_N6
\U3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|LessThan0~2_combout\ = (\U3|count\(15) & (\U3|count\(14) & (\U3|count\(13) & !\U3|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(15),
	datab => \U3|count\(14),
	datac => \U3|count\(13),
	datad => \U3|LessThan0~1_combout\,
	combout => \U3|LessThan0~2_combout\);

-- Location: FF_X24_Y13_N1
\U3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[0]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(0));

-- Location: LCCOMB_X24_Y13_N2
\U3|count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[1]~18_combout\ = (\U3|count\(1) & (\U3|count[0]~17\ $ (GND))) # (!\U3|count\(1) & (!\U3|count[0]~17\ & VCC))
-- \U3|count[1]~19\ = CARRY((\U3|count\(1) & !\U3|count[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(1),
	datad => VCC,
	cin => \U3|count[0]~17\,
	combout => \U3|count[1]~18_combout\,
	cout => \U3|count[1]~19\);

-- Location: FF_X24_Y13_N3
\U3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[1]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(1));

-- Location: LCCOMB_X24_Y13_N4
\U3|count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[2]~20_combout\ = (\U3|count\(2) & ((GND) # (!\U3|count[1]~19\))) # (!\U3|count\(2) & (\U3|count[1]~19\ $ (GND)))
-- \U3|count[2]~21\ = CARRY((\U3|count\(2)) # (!\U3|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(2),
	datad => VCC,
	cin => \U3|count[1]~19\,
	combout => \U3|count[2]~20_combout\,
	cout => \U3|count[2]~21\);

-- Location: FF_X24_Y13_N5
\U3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[2]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(2));

-- Location: LCCOMB_X24_Y13_N6
\U3|count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[3]~22_combout\ = (\U3|count\(3) & (\U3|count[2]~21\ & VCC)) # (!\U3|count\(3) & (!\U3|count[2]~21\))
-- \U3|count[3]~23\ = CARRY((!\U3|count\(3) & !\U3|count[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(3),
	datad => VCC,
	cin => \U3|count[2]~21\,
	combout => \U3|count[3]~22_combout\,
	cout => \U3|count[3]~23\);

-- Location: FF_X24_Y13_N7
\U3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[3]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(3));

-- Location: LCCOMB_X24_Y13_N8
\U3|count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[4]~24_combout\ = (\U3|count\(4) & ((GND) # (!\U3|count[3]~23\))) # (!\U3|count\(4) & (\U3|count[3]~23\ $ (GND)))
-- \U3|count[4]~25\ = CARRY((\U3|count\(4)) # (!\U3|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(4),
	datad => VCC,
	cin => \U3|count[3]~23\,
	combout => \U3|count[4]~24_combout\,
	cout => \U3|count[4]~25\);

-- Location: FF_X24_Y13_N9
\U3|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[4]~24_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(4));

-- Location: LCCOMB_X24_Y13_N10
\U3|count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[5]~26_combout\ = (\U3|count\(5) & (\U3|count[4]~25\ & VCC)) # (!\U3|count\(5) & (!\U3|count[4]~25\))
-- \U3|count[5]~27\ = CARRY((!\U3|count\(5) & !\U3|count[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(5),
	datad => VCC,
	cin => \U3|count[4]~25\,
	combout => \U3|count[5]~26_combout\,
	cout => \U3|count[5]~27\);

-- Location: FF_X24_Y13_N11
\U3|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[5]~26_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(5));

-- Location: LCCOMB_X24_Y13_N12
\U3|count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[6]~28_combout\ = (\U3|count\(6) & ((GND) # (!\U3|count[5]~27\))) # (!\U3|count\(6) & (\U3|count[5]~27\ $ (GND)))
-- \U3|count[6]~29\ = CARRY((\U3|count\(6)) # (!\U3|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(6),
	datad => VCC,
	cin => \U3|count[5]~27\,
	combout => \U3|count[6]~28_combout\,
	cout => \U3|count[6]~29\);

-- Location: FF_X24_Y13_N13
\U3|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[6]~28_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(6));

-- Location: LCCOMB_X24_Y13_N14
\U3|count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[7]~30_combout\ = (\U3|count\(7) & (\U3|count[6]~29\ & VCC)) # (!\U3|count\(7) & (!\U3|count[6]~29\))
-- \U3|count[7]~31\ = CARRY((!\U3|count\(7) & !\U3|count[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(7),
	datad => VCC,
	cin => \U3|count[6]~29\,
	combout => \U3|count[7]~30_combout\,
	cout => \U3|count[7]~31\);

-- Location: LCCOMB_X23_Y13_N12
\U3|count[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[7]~feeder_combout\ = \U3|count[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U3|count[7]~30_combout\,
	combout => \U3|count[7]~feeder_combout\);

-- Location: FF_X23_Y13_N13
\U3|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[7]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(7));

-- Location: LCCOMB_X24_Y13_N16
\U3|count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[8]~32_combout\ = (\U3|count\(8) & (!\U3|count[7]~31\)) # (!\U3|count\(8) & ((\U3|count[7]~31\) # (GND)))
-- \U3|count[8]~33\ = CARRY((!\U3|count[7]~31\) # (!\U3|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(8),
	datad => VCC,
	cin => \U3|count[7]~31\,
	combout => \U3|count[8]~32_combout\,
	cout => \U3|count[8]~33\);

-- Location: FF_X24_Y13_N17
\U3|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[8]~32_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(8));

-- Location: LCCOMB_X24_Y13_N18
\U3|count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[9]~34_combout\ = (\U3|count\(9) & (\U3|count[8]~33\ & VCC)) # (!\U3|count\(9) & (!\U3|count[8]~33\))
-- \U3|count[9]~35\ = CARRY((!\U3|count\(9) & !\U3|count[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(9),
	datad => VCC,
	cin => \U3|count[8]~33\,
	combout => \U3|count[9]~34_combout\,
	cout => \U3|count[9]~35\);

-- Location: FF_X24_Y13_N19
\U3|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[9]~34_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(9));

-- Location: LCCOMB_X24_Y13_N20
\U3|count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[10]~36_combout\ = (\U3|count\(10) & (!\U3|count[9]~35\)) # (!\U3|count\(10) & ((\U3|count[9]~35\) # (GND)))
-- \U3|count[10]~37\ = CARRY((!\U3|count[9]~35\) # (!\U3|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(10),
	datad => VCC,
	cin => \U3|count[9]~35\,
	combout => \U3|count[10]~36_combout\,
	cout => \U3|count[10]~37\);

-- Location: FF_X24_Y13_N21
\U3|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[10]~36_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(10));

-- Location: LCCOMB_X24_Y13_N22
\U3|count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[11]~38_combout\ = (\U3|count\(11) & (\U3|count[10]~37\ $ (GND))) # (!\U3|count\(11) & (!\U3|count[10]~37\ & VCC))
-- \U3|count[11]~39\ = CARRY((\U3|count\(11) & !\U3|count[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(11),
	datad => VCC,
	cin => \U3|count[10]~37\,
	combout => \U3|count[11]~38_combout\,
	cout => \U3|count[11]~39\);

-- Location: FF_X24_Y13_N23
\U3|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[11]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(11));

-- Location: LCCOMB_X24_Y13_N24
\U3|count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[12]~40_combout\ = (\U3|count\(12) & ((GND) # (!\U3|count[11]~39\))) # (!\U3|count\(12) & (\U3|count[11]~39\ $ (GND)))
-- \U3|count[12]~41\ = CARRY((\U3|count\(12)) # (!\U3|count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(12),
	datad => VCC,
	cin => \U3|count[11]~39\,
	combout => \U3|count[12]~40_combout\,
	cout => \U3|count[12]~41\);

-- Location: FF_X24_Y13_N25
\U3|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[12]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(12));

-- Location: LCCOMB_X24_Y13_N26
\U3|count[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[13]~42_combout\ = (\U3|count\(13) & (\U3|count[12]~41\ $ (GND))) # (!\U3|count\(13) & (!\U3|count[12]~41\ & VCC))
-- \U3|count[13]~43\ = CARRY((\U3|count\(13) & !\U3|count[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(13),
	datad => VCC,
	cin => \U3|count[12]~41\,
	combout => \U3|count[13]~42_combout\,
	cout => \U3|count[13]~43\);

-- Location: FF_X24_Y13_N27
\U3|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[13]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(13));

-- Location: LCCOMB_X24_Y13_N28
\U3|count[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[14]~44_combout\ = (\U3|count\(14) & (!\U3|count[13]~43\)) # (!\U3|count\(14) & ((\U3|count[13]~43\) # (GND)))
-- \U3|count[14]~45\ = CARRY((!\U3|count[13]~43\) # (!\U3|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|count\(14),
	datad => VCC,
	cin => \U3|count[13]~43\,
	combout => \U3|count[14]~44_combout\,
	cout => \U3|count[14]~45\);

-- Location: FF_X24_Y13_N29
\U3|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[14]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(14));

-- Location: LCCOMB_X24_Y13_N30
\U3|count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|count[15]~46_combout\ = \U3|count\(15) $ (!\U3|count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(15),
	cin => \U3|count[14]~45\,
	combout => \U3|count[15]~46_combout\);

-- Location: FF_X24_Y13_N31
\U3|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|count[15]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U3|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|count\(15));

-- Location: LCCOMB_X23_Y13_N24
\U3|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|LessThan1~0_combout\ = (\U3|count\(11) & (((!\U3|count\(7) & \U3|count\(8))) # (!\U3|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(7),
	datab => \U3|count\(11),
	datac => \U3|count\(8),
	datad => \U3|count\(9),
	combout => \U3|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y13_N22
\U3|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|LessThan1~3_combout\ = (\U3|LessThan1~0_combout\) # ((\U3|LessThan1~2_combout\ & (!\U3|count\(6) & \U3|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|LessThan1~2_combout\,
	datab => \U3|count\(6),
	datac => \U3|LessThan1~0_combout\,
	datad => \U3|LessThan1~1_combout\,
	combout => \U3|LessThan1~3_combout\);

-- Location: LCCOMB_X23_Y13_N28
\U3|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|LessThan1~4_combout\ = (\U3|count\(13)) # (((\U3|count\(10) & \U3|count\(11))) # (!\U3|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(13),
	datab => \U3|count\(12),
	datac => \U3|count\(10),
	datad => \U3|count\(11),
	combout => \U3|LessThan1~4_combout\);

-- Location: LCCOMB_X23_Y13_N2
\U3|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U3|LessThan1~5_combout\ = (\U3|count\(15) & ((\U3|count\(14)) # ((\U3|LessThan1~3_combout\) # (\U3|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|count\(15),
	datab => \U3|count\(14),
	datac => \U3|LessThan1~3_combout\,
	datad => \U3|LessThan1~4_combout\,
	combout => \U3|LessThan1~5_combout\);

-- Location: FF_X23_Y13_N3
\U3|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U3|LessThan1~5_combout\,
	clrn => \Start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|clk~q\);

-- Location: LCCOMB_X23_Y14_N4
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (Key_Keep(2) & (\U2|clk~q\ & (!Key_Keep(3)))) # (!Key_Keep(2) & (((Key_Keep(3) & \U3|clk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|clk~q\,
	datab => Key_Keep(2),
	datac => Key_Keep(3),
	datad => \U3|clk~q\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X24_Y16_N16
\U1|count[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[0]~17_combout\ = \U1|count\(0) $ (VCC)
-- \U1|count[0]~18\ = CARRY(\U1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(0),
	datad => VCC,
	combout => \U1|count[0]~17_combout\,
	cout => \U1|count[0]~18\);

-- Location: LCCOMB_X24_Y16_N10
\U1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~0_combout\ = (\U1|count\(0)) # ((\U1|count\(12)) # ((\U1|count\(10)) # (\U1|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(0),
	datab => \U1|count\(12),
	datac => \U1|count\(10),
	datad => \U1|count\(15),
	combout => \U1|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y16_N8
\U1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~2_combout\ = ((\U1|count\(6)) # ((\U1|count\(8)) # (!\U1|count\(2)))) # (!\U1|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(3),
	datab => \U1|count\(6),
	datac => \U1|count\(2),
	datad => \U1|count\(8),
	combout => \U1|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y16_N0
\U1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~1_combout\ = (\U1|count\(9) & (\U1|count\(4) & (!\U1|count\(5) & \U1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(9),
	datab => \U1|count\(4),
	datac => \U1|count\(5),
	datad => \U1|count\(11),
	combout => \U1|LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y16_N14
\U1|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~7_combout\ = (\U1|count\(7) & \U1|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|count\(7),
	datad => \U1|LessThan1~1_combout\,
	combout => \U1|LessThan1~7_combout\);

-- Location: LCCOMB_X24_Y15_N14
\U1|count[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[15]~47_combout\ = (\U1|count\(15) & (\U1|count[14]~46\ & VCC)) # (!\U1|count\(15) & (!\U1|count[14]~46\))
-- \U1|count[15]~48\ = CARRY((!\U1|count\(15) & !\U1|count[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(15),
	datad => VCC,
	cin => \U1|count[14]~46\,
	combout => \U1|count[15]~47_combout\,
	cout => \U1|count[15]~48\);

-- Location: LCCOMB_X24_Y15_N16
\U1|count[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[16]~49_combout\ = \U1|count[15]~48\ $ (\U1|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U1|count\(16),
	cin => \U1|count[15]~48\,
	combout => \U1|count[16]~49_combout\);

-- Location: FF_X24_Y15_N17
\U1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[16]~49_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(16));

-- Location: LCCOMB_X24_Y15_N18
\U1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~1_combout\ = (\U1|count\(14)) # (((\U1|count\(1)) # (!\U1|count\(13))) # (!\U1|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(14),
	datab => \U1|count\(16),
	datac => \U1|count\(13),
	datad => \U1|count\(1),
	combout => \U1|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y16_N4
\U1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan0~3_combout\ = (!\U1|LessThan0~0_combout\ & (!\U1|LessThan0~2_combout\ & (\U1|LessThan1~7_combout\ & !\U1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan0~0_combout\,
	datab => \U1|LessThan0~2_combout\,
	datac => \U1|LessThan1~7_combout\,
	datad => \U1|LessThan0~1_combout\,
	combout => \U1|LessThan0~3_combout\);

-- Location: FF_X24_Y16_N17
\U1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[0]~17_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(0));

-- Location: LCCOMB_X24_Y16_N18
\U1|count[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[1]~19_combout\ = (\U1|count\(1) & (\U1|count[0]~18\ & VCC)) # (!\U1|count\(1) & (!\U1|count[0]~18\))
-- \U1|count[1]~20\ = CARRY((!\U1|count\(1) & !\U1|count[0]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(1),
	datad => VCC,
	cin => \U1|count[0]~18\,
	combout => \U1|count[1]~19_combout\,
	cout => \U1|count[1]~20\);

-- Location: FF_X24_Y16_N19
\U1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[1]~19_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(1));

-- Location: LCCOMB_X24_Y16_N20
\U1|count[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[2]~21_combout\ = (\U1|count\(2) & (!\U1|count[1]~20\)) # (!\U1|count\(2) & ((\U1|count[1]~20\) # (GND)))
-- \U1|count[2]~22\ = CARRY((!\U1|count[1]~20\) # (!\U1|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(2),
	datad => VCC,
	cin => \U1|count[1]~20\,
	combout => \U1|count[2]~21_combout\,
	cout => \U1|count[2]~22\);

-- Location: FF_X24_Y16_N21
\U1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[2]~21_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(2));

-- Location: LCCOMB_X24_Y16_N22
\U1|count[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[3]~23_combout\ = (\U1|count\(3) & (\U1|count[2]~22\ $ (GND))) # (!\U1|count\(3) & (!\U1|count[2]~22\ & VCC))
-- \U1|count[3]~24\ = CARRY((\U1|count\(3) & !\U1|count[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(3),
	datad => VCC,
	cin => \U1|count[2]~22\,
	combout => \U1|count[3]~23_combout\,
	cout => \U1|count[3]~24\);

-- Location: FF_X24_Y16_N23
\U1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[3]~23_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(3));

-- Location: LCCOMB_X24_Y16_N24
\U1|count[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[4]~25_combout\ = (\U1|count\(4) & (!\U1|count[3]~24\)) # (!\U1|count\(4) & ((\U1|count[3]~24\) # (GND)))
-- \U1|count[4]~26\ = CARRY((!\U1|count[3]~24\) # (!\U1|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(4),
	datad => VCC,
	cin => \U1|count[3]~24\,
	combout => \U1|count[4]~25_combout\,
	cout => \U1|count[4]~26\);

-- Location: FF_X24_Y16_N25
\U1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[4]~25_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(4));

-- Location: LCCOMB_X24_Y16_N26
\U1|count[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[5]~27_combout\ = (\U1|count\(5) & (\U1|count[4]~26\ & VCC)) # (!\U1|count\(5) & (!\U1|count[4]~26\))
-- \U1|count[5]~28\ = CARRY((!\U1|count\(5) & !\U1|count[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(5),
	datad => VCC,
	cin => \U1|count[4]~26\,
	combout => \U1|count[5]~27_combout\,
	cout => \U1|count[5]~28\);

-- Location: FF_X24_Y16_N27
\U1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[5]~27_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(5));

-- Location: LCCOMB_X24_Y16_N28
\U1|count[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[6]~29_combout\ = (\U1|count\(6) & ((GND) # (!\U1|count[5]~28\))) # (!\U1|count\(6) & (\U1|count[5]~28\ $ (GND)))
-- \U1|count[6]~30\ = CARRY((\U1|count\(6)) # (!\U1|count[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(6),
	datad => VCC,
	cin => \U1|count[5]~28\,
	combout => \U1|count[6]~29_combout\,
	cout => \U1|count[6]~30\);

-- Location: FF_X24_Y16_N29
\U1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[6]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(6));

-- Location: LCCOMB_X24_Y16_N30
\U1|count[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[7]~31_combout\ = (\U1|count\(7) & (\U1|count[6]~30\ $ (GND))) # (!\U1|count\(7) & (!\U1|count[6]~30\ & VCC))
-- \U1|count[7]~32\ = CARRY((\U1|count\(7) & !\U1|count[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(7),
	datad => VCC,
	cin => \U1|count[6]~30\,
	combout => \U1|count[7]~31_combout\,
	cout => \U1|count[7]~32\);

-- Location: FF_X24_Y16_N31
\U1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[7]~31_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(7));

-- Location: LCCOMB_X24_Y15_N0
\U1|count[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[8]~33_combout\ = (\U1|count\(8) & ((GND) # (!\U1|count[7]~32\))) # (!\U1|count\(8) & (\U1|count[7]~32\ $ (GND)))
-- \U1|count[8]~34\ = CARRY((\U1|count\(8)) # (!\U1|count[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(8),
	datad => VCC,
	cin => \U1|count[7]~32\,
	combout => \U1|count[8]~33_combout\,
	cout => \U1|count[8]~34\);

-- Location: FF_X24_Y15_N1
\U1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[8]~33_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(8));

-- Location: LCCOMB_X24_Y15_N2
\U1|count[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[9]~35_combout\ = (\U1|count\(9) & (\U1|count[8]~34\ $ (GND))) # (!\U1|count\(9) & (!\U1|count[8]~34\ & VCC))
-- \U1|count[9]~36\ = CARRY((\U1|count\(9) & !\U1|count[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(9),
	datad => VCC,
	cin => \U1|count[8]~34\,
	combout => \U1|count[9]~35_combout\,
	cout => \U1|count[9]~36\);

-- Location: LCCOMB_X25_Y16_N4
\U1|count[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[9]~feeder_combout\ = \U1|count[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|count[9]~35_combout\,
	combout => \U1|count[9]~feeder_combout\);

-- Location: FF_X25_Y16_N5
\U1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[9]~feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(9));

-- Location: LCCOMB_X24_Y15_N4
\U1|count[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[10]~37_combout\ = (\U1|count\(10) & ((GND) # (!\U1|count[9]~36\))) # (!\U1|count\(10) & (\U1|count[9]~36\ $ (GND)))
-- \U1|count[10]~38\ = CARRY((\U1|count\(10)) # (!\U1|count[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(10),
	datad => VCC,
	cin => \U1|count[9]~36\,
	combout => \U1|count[10]~37_combout\,
	cout => \U1|count[10]~38\);

-- Location: FF_X24_Y15_N5
\U1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[10]~37_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(10));

-- Location: LCCOMB_X24_Y15_N6
\U1|count[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[11]~39_combout\ = (\U1|count\(11) & (\U1|count[10]~38\ $ (GND))) # (!\U1|count\(11) & (!\U1|count[10]~38\ & VCC))
-- \U1|count[11]~40\ = CARRY((\U1|count\(11) & !\U1|count[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(11),
	datad => VCC,
	cin => \U1|count[10]~38\,
	combout => \U1|count[11]~39_combout\,
	cout => \U1|count[11]~40\);

-- Location: FF_X24_Y15_N7
\U1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[11]~39_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(11));

-- Location: LCCOMB_X24_Y15_N8
\U1|count[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[12]~41_combout\ = (\U1|count\(12) & ((GND) # (!\U1|count[11]~40\))) # (!\U1|count\(12) & (\U1|count[11]~40\ $ (GND)))
-- \U1|count[12]~42\ = CARRY((\U1|count\(12)) # (!\U1|count[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(12),
	datad => VCC,
	cin => \U1|count[11]~40\,
	combout => \U1|count[12]~41_combout\,
	cout => \U1|count[12]~42\);

-- Location: FF_X24_Y15_N9
\U1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[12]~41_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(12));

-- Location: LCCOMB_X24_Y15_N10
\U1|count[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[13]~43_combout\ = (\U1|count\(13) & (\U1|count[12]~42\ $ (GND))) # (!\U1|count\(13) & (!\U1|count[12]~42\ & VCC))
-- \U1|count[13]~44\ = CARRY((\U1|count\(13) & !\U1|count[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(13),
	datad => VCC,
	cin => \U1|count[12]~42\,
	combout => \U1|count[13]~43_combout\,
	cout => \U1|count[13]~44\);

-- Location: FF_X24_Y15_N11
\U1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[13]~43_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(13));

-- Location: LCCOMB_X24_Y15_N12
\U1|count[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|count[14]~45_combout\ = (\U1|count\(14) & ((GND) # (!\U1|count[13]~44\))) # (!\U1|count\(14) & (\U1|count[13]~44\ $ (GND)))
-- \U1|count[14]~46\ = CARRY((\U1|count\(14)) # (!\U1|count[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(14),
	datad => VCC,
	cin => \U1|count[13]~44\,
	combout => \U1|count[14]~45_combout\,
	cout => \U1|count[14]~46\);

-- Location: FF_X24_Y15_N13
\U1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[14]~45_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(14));

-- Location: FF_X24_Y15_N15
\U1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|count[15]~47_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|count\(15));

-- Location: LCCOMB_X24_Y15_N24
\U1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~0_combout\ = (\U1|count\(9) & (((\U1|count\(7) & !\U1|count\(6))) # (!\U1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(7),
	datab => \U1|count\(8),
	datac => \U1|count\(9),
	datad => \U1|count\(6),
	combout => \U1|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y16_N2
\U1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~2_combout\ = ((\U1|count\(3)) # (\U1|count\(2))) # (!\U1|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|count\(1),
	datac => \U1|count\(3),
	datad => \U1|count\(2),
	combout => \U1|LessThan1~2_combout\);

-- Location: LCCOMB_X24_Y16_N12
\U1|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~3_combout\ = (\U1|count\(12) & (((!\U1|LessThan1~1_combout\) # (!\U1|LessThan1~2_combout\)) # (!\U1|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(7),
	datab => \U1|LessThan1~2_combout\,
	datac => \U1|count\(12),
	datad => \U1|LessThan1~1_combout\,
	combout => \U1|LessThan1~3_combout\);

-- Location: LCCOMB_X24_Y15_N26
\U1|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~4_combout\ = ((\U1|count\(11) & ((\U1|LessThan1~0_combout\) # (!\U1|count\(10))))) # (!\U1|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(11),
	datab => \U1|LessThan1~0_combout\,
	datac => \U1|count\(10),
	datad => \U1|LessThan1~3_combout\,
	combout => \U1|LessThan1~4_combout\);

-- Location: LCCOMB_X24_Y15_N28
\U1|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~5_combout\ = (\U1|count\(13) & (\U1|count\(16) & !\U1|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(13),
	datab => \U1|count\(16),
	datad => \U1|count\(14),
	combout => \U1|LessThan1~5_combout\);

-- Location: LCCOMB_X24_Y15_N30
\U1|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1|LessThan1~6_combout\ = (\U1|count\(15) & (((\U1|LessThan1~4_combout\ & \U1|LessThan1~5_combout\)))) # (!\U1|count\(15) & ((\U1|count\(16)) # ((\U1|LessThan1~4_combout\ & \U1|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|count\(15),
	datab => \U1|count\(16),
	datac => \U1|LessThan1~4_combout\,
	datad => \U1|LessThan1~5_combout\,
	combout => \U1|LessThan1~6_combout\);

-- Location: FF_X24_Y15_N31
\U1|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U1|LessThan1~6_combout\,
	clrn => \Start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|clk~q\);

-- Location: LCCOMB_X24_Y18_N0
\U4|count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[0]~16_combout\ = \U4|count\(0) $ (VCC)
-- \U4|count[0]~17\ = CARRY(\U4|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U4|count\(0),
	datad => VCC,
	combout => \U4|count[0]~16_combout\,
	cout => \U4|count[0]~17\);

-- Location: LCCOMB_X23_Y18_N26
\U4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|LessThan0~0_combout\ = (((\U4|count\(1)) # (!\U4|count\(5))) # (!\U4|count\(12))) # (!\U4|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(2),
	datab => \U4|count\(12),
	datac => \U4|count\(5),
	datad => \U4|count\(1),
	combout => \U4|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y18_N8
\U4|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|LessThan0~1_combout\ = (\U4|count\(3)) # (((\U4|count\(6)) # (!\U4|count\(7))) # (!\U4|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(3),
	datab => \U4|count\(4),
	datac => \U4|count\(7),
	datad => \U4|count\(6),
	combout => \U4|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y18_N14
\U4|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|LessThan0~2_combout\ = (((!\U4|count\(8)) # (!\U4|count\(10))) # (!\U4|count\(9))) # (!\U4|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(11),
	datab => \U4|count\(9),
	datac => \U4|count\(10),
	datad => \U4|count\(8),
	combout => \U4|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y18_N26
\U4|count[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[13]~42_combout\ = (\U4|count\(13) & (\U4|count[12]~41\ & VCC)) # (!\U4|count\(13) & (!\U4|count[12]~41\))
-- \U4|count[13]~43\ = CARRY((!\U4|count\(13) & !\U4|count[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(13),
	datad => VCC,
	cin => \U4|count[12]~41\,
	combout => \U4|count[13]~42_combout\,
	cout => \U4|count[13]~43\);

-- Location: LCCOMB_X24_Y18_N28
\U4|count[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[14]~44_combout\ = (\U4|count\(14) & (!\U4|count[13]~43\)) # (!\U4|count\(14) & ((\U4|count[13]~43\) # (GND)))
-- \U4|count[14]~45\ = CARRY((!\U4|count[13]~43\) # (!\U4|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count\(14),
	datad => VCC,
	cin => \U4|count[13]~43\,
	combout => \U4|count[14]~44_combout\,
	cout => \U4|count[14]~45\);

-- Location: FF_X24_Y18_N29
\U4|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[14]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(14));

-- Location: LCCOMB_X24_Y18_N30
\U4|count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[15]~46_combout\ = \U4|count\(15) $ (!\U4|count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(15),
	cin => \U4|count[14]~45\,
	combout => \U4|count[15]~46_combout\);

-- Location: FF_X24_Y18_N31
\U4|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[15]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(15));

-- Location: LCCOMB_X23_Y18_N12
\U4|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|LessThan0~3_combout\ = (\U4|count\(13)) # ((\U4|count\(0)) # ((!\U4|count\(14)) # (!\U4|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(13),
	datab => \U4|count\(0),
	datac => \U4|count\(15),
	datad => \U4|count\(14),
	combout => \U4|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y18_N6
\U4|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|LessThan0~4_combout\ = (!\U4|LessThan0~0_combout\ & (!\U4|LessThan0~1_combout\ & (!\U4|LessThan0~2_combout\ & !\U4|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|LessThan0~0_combout\,
	datab => \U4|LessThan0~1_combout\,
	datac => \U4|LessThan0~2_combout\,
	datad => \U4|LessThan0~3_combout\,
	combout => \U4|LessThan0~4_combout\);

-- Location: FF_X24_Y18_N1
\U4|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[0]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(0));

-- Location: LCCOMB_X24_Y18_N2
\U4|count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[1]~18_combout\ = (\U4|count\(1) & (\U4|count[0]~17\ & VCC)) # (!\U4|count\(1) & (!\U4|count[0]~17\))
-- \U4|count[1]~19\ = CARRY((!\U4|count\(1) & !\U4|count[0]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count\(1),
	datad => VCC,
	cin => \U4|count[0]~17\,
	combout => \U4|count[1]~18_combout\,
	cout => \U4|count[1]~19\);

-- Location: FF_X24_Y18_N3
\U4|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[1]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(1));

-- Location: LCCOMB_X24_Y18_N4
\U4|count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[2]~20_combout\ = (\U4|count\(2) & (!\U4|count[1]~19\)) # (!\U4|count\(2) & ((\U4|count[1]~19\) # (GND)))
-- \U4|count[2]~21\ = CARRY((!\U4|count[1]~19\) # (!\U4|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count\(2),
	datad => VCC,
	cin => \U4|count[1]~19\,
	combout => \U4|count[2]~20_combout\,
	cout => \U4|count[2]~21\);

-- Location: FF_X24_Y18_N5
\U4|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[2]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(2));

-- Location: LCCOMB_X24_Y18_N6
\U4|count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[3]~22_combout\ = (\U4|count\(3) & (\U4|count[2]~21\ & VCC)) # (!\U4|count\(3) & (!\U4|count[2]~21\))
-- \U4|count[3]~23\ = CARRY((!\U4|count\(3) & !\U4|count[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(3),
	datad => VCC,
	cin => \U4|count[2]~21\,
	combout => \U4|count[3]~22_combout\,
	cout => \U4|count[3]~23\);

-- Location: FF_X24_Y18_N7
\U4|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[3]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(3));

-- Location: LCCOMB_X24_Y18_N8
\U4|count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[4]~24_combout\ = (\U4|count\(4) & (!\U4|count[3]~23\)) # (!\U4|count\(4) & ((\U4|count[3]~23\) # (GND)))
-- \U4|count[4]~25\ = CARRY((!\U4|count[3]~23\) # (!\U4|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count\(4),
	datad => VCC,
	cin => \U4|count[3]~23\,
	combout => \U4|count[4]~24_combout\,
	cout => \U4|count[4]~25\);

-- Location: FF_X24_Y18_N9
\U4|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[4]~24_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(4));

-- Location: LCCOMB_X24_Y18_N10
\U4|count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[5]~26_combout\ = (\U4|count\(5) & (\U4|count[4]~25\ $ (GND))) # (!\U4|count\(5) & (!\U4|count[4]~25\ & VCC))
-- \U4|count[5]~27\ = CARRY((\U4|count\(5) & !\U4|count[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(5),
	datad => VCC,
	cin => \U4|count[4]~25\,
	combout => \U4|count[5]~26_combout\,
	cout => \U4|count[5]~27\);

-- Location: FF_X24_Y18_N11
\U4|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[5]~26_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(5));

-- Location: LCCOMB_X24_Y18_N12
\U4|count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[6]~28_combout\ = (\U4|count\(6) & ((GND) # (!\U4|count[5]~27\))) # (!\U4|count\(6) & (\U4|count[5]~27\ $ (GND)))
-- \U4|count[6]~29\ = CARRY((\U4|count\(6)) # (!\U4|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(6),
	datad => VCC,
	cin => \U4|count[5]~27\,
	combout => \U4|count[6]~28_combout\,
	cout => \U4|count[6]~29\);

-- Location: FF_X24_Y18_N13
\U4|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[6]~28_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(6));

-- Location: LCCOMB_X24_Y18_N14
\U4|count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[7]~30_combout\ = (\U4|count\(7) & (\U4|count[6]~29\ $ (GND))) # (!\U4|count\(7) & (!\U4|count[6]~29\ & VCC))
-- \U4|count[7]~31\ = CARRY((\U4|count\(7) & !\U4|count[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count\(7),
	datad => VCC,
	cin => \U4|count[6]~29\,
	combout => \U4|count[7]~30_combout\,
	cout => \U4|count[7]~31\);

-- Location: FF_X24_Y18_N15
\U4|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[7]~30_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(7));

-- Location: LCCOMB_X24_Y18_N16
\U4|count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[8]~32_combout\ = (\U4|count\(8) & (!\U4|count[7]~31\)) # (!\U4|count\(8) & ((\U4|count[7]~31\) # (GND)))
-- \U4|count[8]~33\ = CARRY((!\U4|count[7]~31\) # (!\U4|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count\(8),
	datad => VCC,
	cin => \U4|count[7]~31\,
	combout => \U4|count[8]~32_combout\,
	cout => \U4|count[8]~33\);

-- Location: FF_X24_Y18_N17
\U4|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[8]~32_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(8));

-- Location: LCCOMB_X24_Y18_N18
\U4|count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[9]~34_combout\ = (\U4|count\(9) & (\U4|count[8]~33\ $ (GND))) # (!\U4|count\(9) & (!\U4|count[8]~33\ & VCC))
-- \U4|count[9]~35\ = CARRY((\U4|count\(9) & !\U4|count[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count\(9),
	datad => VCC,
	cin => \U4|count[8]~33\,
	combout => \U4|count[9]~34_combout\,
	cout => \U4|count[9]~35\);

-- Location: FF_X24_Y18_N19
\U4|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[9]~34_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(9));

-- Location: LCCOMB_X24_Y18_N20
\U4|count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[10]~36_combout\ = (\U4|count\(10) & (!\U4|count[9]~35\)) # (!\U4|count\(10) & ((\U4|count[9]~35\) # (GND)))
-- \U4|count[10]~37\ = CARRY((!\U4|count[9]~35\) # (!\U4|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count\(10),
	datad => VCC,
	cin => \U4|count[9]~35\,
	combout => \U4|count[10]~36_combout\,
	cout => \U4|count[10]~37\);

-- Location: FF_X24_Y18_N21
\U4|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[10]~36_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(10));

-- Location: LCCOMB_X24_Y18_N22
\U4|count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[11]~38_combout\ = (\U4|count\(11) & (\U4|count[10]~37\ $ (GND))) # (!\U4|count\(11) & (!\U4|count[10]~37\ & VCC))
-- \U4|count[11]~39\ = CARRY((\U4|count\(11) & !\U4|count[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(11),
	datad => VCC,
	cin => \U4|count[10]~37\,
	combout => \U4|count[11]~38_combout\,
	cout => \U4|count[11]~39\);

-- Location: FF_X24_Y18_N23
\U4|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[11]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(11));

-- Location: LCCOMB_X24_Y18_N24
\U4|count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|count[12]~40_combout\ = (\U4|count\(12) & (!\U4|count[11]~39\)) # (!\U4|count\(12) & ((\U4|count[11]~39\) # (GND)))
-- \U4|count[12]~41\ = CARRY((!\U4|count[11]~39\) # (!\U4|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U4|count\(12),
	datad => VCC,
	cin => \U4|count[11]~39\,
	combout => \U4|count[12]~40_combout\,
	cout => \U4|count[12]~41\);

-- Location: FF_X24_Y18_N25
\U4|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[12]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(12));

-- Location: FF_X24_Y18_N27
\U4|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|count[13]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \Start~inputclkctrl_outclk\,
	sload => \U4|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|count\(13));

-- Location: LCCOMB_X23_Y18_N22
\U4|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|LessThan1~0_combout\ = ((\U4|count\(8)) # ((\U4|count\(7)) # (\U4|count\(9)))) # (!\U4|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(6),
	datab => \U4|count\(8),
	datac => \U4|count\(7),
	datad => \U4|count\(9),
	combout => \U4|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y18_N28
\U4|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|LessThan1~1_combout\ = (\U4|count\(4)) # (((\U4|count\(2) & !\U4|count\(1))) # (!\U4|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(2),
	datab => \U4|count\(1),
	datac => \U4|count\(4),
	datad => \U4|count\(3),
	combout => \U4|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y18_N2
\U4|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|LessThan1~2_combout\ = (\U4|count\(10)) # ((\U4|count\(5) & \U4|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(10),
	datac => \U4|count\(5),
	datad => \U4|LessThan1~1_combout\,
	combout => \U4|LessThan1~2_combout\);

-- Location: LCCOMB_X23_Y18_N16
\U4|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|LessThan1~3_combout\ = (\U4|count\(12) & ((\U4|count\(11)) # ((\U4|LessThan1~0_combout\) # (\U4|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(11),
	datab => \U4|count\(12),
	datac => \U4|LessThan1~0_combout\,
	datad => \U4|LessThan1~2_combout\,
	combout => \U4|LessThan1~3_combout\);

-- Location: LCCOMB_X23_Y18_N0
\U4|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U4|LessThan1~4_combout\ = (\U4|count\(15) & (((\U4|count\(14)) # (\U4|LessThan1~3_combout\)) # (!\U4|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|count\(13),
	datab => \U4|count\(14),
	datac => \U4|count\(15),
	datad => \U4|LessThan1~3_combout\,
	combout => \U4|LessThan1~4_combout\);

-- Location: FF_X23_Y18_N1
\U4|clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \U4|LessThan1~4_combout\,
	clrn => \Start~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|clk~q\);

-- Location: LCCOMB_X23_Y14_N8
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux0~4_combout\ & ((Key_Keep(4) & ((\U4|clk~q\))) # (!Key_Keep(4) & (\U1|clk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|clk~q\,
	datab => Key_Keep(4),
	datac => \U4|clk~q\,
	datad => \Mux0~4_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X23_Y14_N12
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (Key_Keep(1) & (((\Mux8~3_combout\ & !Key_Keep(4))))) # (!Key_Keep(1) & ((Key_Keep(4) & ((\Mux8~3_combout\))) # (!Key_Keep(4) & (\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Key_Keep(1),
	datab => \Mux8~2_combout\,
	datac => \Mux8~3_combout\,
	datad => Key_Keep(4),
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X23_Y14_N0
\Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux8~9_combout\ & ((\Mux8~7_combout\) # ((\Mux8~4_combout\ & \Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~9_combout\,
	datab => \Mux8~7_combout\,
	datac => \Mux8~4_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X23_Y14_N30
\Speaker$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \Speaker$latch~combout\ = (GLOBAL(\Start~inputclkctrl_outclk\) & (\Speaker$latch~combout\)) # (!GLOBAL(\Start~inputclkctrl_outclk\) & ((\Mux8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Speaker$latch~combout\,
	datab => \Mux8~8_combout\,
	datad => \Start~inputclkctrl_outclk\,
	combout => \Speaker$latch~combout\);

ww_Led(1) <= \Led[1]~output_o\;

ww_Led(2) <= \Led[2]~output_o\;

ww_Led(3) <= \Led[3]~output_o\;

ww_Led(4) <= \Led[4]~output_o\;

ww_Led(5) <= \Led[5]~output_o\;

ww_Led(6) <= \Led[6]~output_o\;

ww_Led(7) <= \Led[7]~output_o\;

ww_a <= \a~output_o\;

ww_b <= \b~output_o\;

ww_c <= \c~output_o\;

ww_d <= \d~output_o\;

ww_e <= \e~output_o\;

ww_f <= \f~output_o\;

ww_g <= \g~output_o\;

ww_Speaker <= \Speaker~output_o\;
END structure;


