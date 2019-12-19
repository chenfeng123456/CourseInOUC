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

-- DATE "11/23/2019 23:05:52"

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

ENTITY 	task7_modified_sec1 IS
    PORT (
	clk_in : IN std_logic;
	rst_key : IN std_logic;
	stop_key : IN std_logic;
	save_key : IN std_logic;
	en_key : IN std_logic;
	beef : BUFFER std_logic;
	dig : BUFFER std_logic_vector(0 TO 3);
	seg : BUFFER std_logic_vector(0 TO 7)
	);
END task7_modified_sec1;

-- Design Ports Information
-- en_key	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- beef	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- rst_key	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stop_key	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- save_key	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF task7_modified_sec1 IS
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
SIGNAL ww_save_key : std_logic;
SIGNAL ww_en_key : std_logic;
SIGNAL ww_beef : std_logic;
SIGNAL ww_dig : std_logic_vector(0 TO 3);
SIGNAL ww_seg : std_logic_vector(0 TO 7);
SIGNAL \shift0|reg3_out0[3]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_10ms|clk_ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inverter0|temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \xd_save|y~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_10ms|sig_us~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_10ms|clk_10ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \beef_ctrl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt2|Equal0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_10ms|sig_ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \en_key~input_o\ : std_logic;
SIGNAL \beef~output_o\ : std_logic;
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
SIGNAL \clock_10ms|LessThan1~1_combout\ : std_logic;
SIGNAL \clock_10ms|LessThan1~0_combout\ : std_logic;
SIGNAL \clock_10ms|LessThan1~2_combout\ : std_logic;
SIGNAL \clock_10ms|sig_ms~feeder_combout\ : std_logic;
SIGNAL \clock_10ms|sig_ms~q\ : std_logic;
SIGNAL \clock_10ms|sig_ms~clkctrl_outclk\ : std_logic;
SIGNAL \clock_10ms|q_10ms~0_combout\ : std_logic;
SIGNAL \clock_10ms|q_10ms~1_combout\ : std_logic;
SIGNAL \clock_10ms|q_10ms~2_combout\ : std_logic;
SIGNAL \clock_10ms|q_10ms~3_combout\ : std_logic;
SIGNAL \clock_10ms|LessThan2~0_combout\ : std_logic;
SIGNAL \clock_10ms|sig_10ms~q\ : std_logic;
SIGNAL \clock_10ms|clk_10ms~feeder_combout\ : std_logic;
SIGNAL \clock_10ms|clk_10ms~q\ : std_logic;
SIGNAL \clock_10ms|clk_10ms~clkctrl_outclk\ : std_logic;
SIGNAL \switch_delay0|cnt[0]~0_combout\ : std_logic;
SIGNAL \rst_key~input_o\ : std_logic;
SIGNAL \save_key~input_o\ : std_logic;
SIGNAL \stop_key~input_o\ : std_logic;
SIGNAL \beef_ctrl~0_combout\ : std_logic;
SIGNAL \beef_ctrl~0clkctrl_outclk\ : std_logic;
SIGNAL \switch_delay0|Add0~1_cout\ : std_logic;
SIGNAL \switch_delay0|Add0~2_combout\ : std_logic;
SIGNAL \switch_delay0|cnt[1]~4_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~3\ : std_logic;
SIGNAL \switch_delay0|Add0~4_combout\ : std_logic;
SIGNAL \switch_delay0|cnt[2]~3_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~5\ : std_logic;
SIGNAL \switch_delay0|Add0~6_combout\ : std_logic;
SIGNAL \switch_delay0|cnt[3]~2_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~7\ : std_logic;
SIGNAL \switch_delay0|Add0~8_combout\ : std_logic;
SIGNAL \switch_delay0|cnt[4]~1_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~9\ : std_logic;
SIGNAL \switch_delay0|Add0~10_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~11\ : std_logic;
SIGNAL \switch_delay0|Add0~12_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~13\ : std_logic;
SIGNAL \switch_delay0|Add0~14_combout\ : std_logic;
SIGNAL \switch_delay0|Equal0~8_combout\ : std_logic;
SIGNAL \switch_delay0|Equal0~9_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~15\ : std_logic;
SIGNAL \switch_delay0|Add0~16_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~17\ : std_logic;
SIGNAL \switch_delay0|Add0~18_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~19\ : std_logic;
SIGNAL \switch_delay0|Add0~20_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~21\ : std_logic;
SIGNAL \switch_delay0|Add0~22_combout\ : std_logic;
SIGNAL \switch_delay0|Equal0~6_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~23\ : std_logic;
SIGNAL \switch_delay0|Add0~24_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~25\ : std_logic;
SIGNAL \switch_delay0|Add0~26_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~27\ : std_logic;
SIGNAL \switch_delay0|Add0~28_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~29\ : std_logic;
SIGNAL \switch_delay0|Add0~30_combout\ : std_logic;
SIGNAL \switch_delay0|Equal0~5_combout\ : std_logic;
SIGNAL \switch_delay0|Equal0~7_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~31\ : std_logic;
SIGNAL \switch_delay0|Add0~32_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~33\ : std_logic;
SIGNAL \switch_delay0|Add0~34_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~35\ : std_logic;
SIGNAL \switch_delay0|Add0~36_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~37\ : std_logic;
SIGNAL \switch_delay0|Add0~38_combout\ : std_logic;
SIGNAL \switch_delay0|Equal0~3_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~39\ : std_logic;
SIGNAL \switch_delay0|Add0~40_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~41\ : std_logic;
SIGNAL \switch_delay0|Add0~42_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~43\ : std_logic;
SIGNAL \switch_delay0|Add0~44_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~45\ : std_logic;
SIGNAL \switch_delay0|Add0~46_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~47\ : std_logic;
SIGNAL \switch_delay0|Add0~48_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~49\ : std_logic;
SIGNAL \switch_delay0|Add0~50_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~51\ : std_logic;
SIGNAL \switch_delay0|Add0~52_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~53\ : std_logic;
SIGNAL \switch_delay0|Add0~54_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~55\ : std_logic;
SIGNAL \switch_delay0|Add0~56_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~57\ : std_logic;
SIGNAL \switch_delay0|Add0~58_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~59\ : std_logic;
SIGNAL \switch_delay0|Add0~60_combout\ : std_logic;
SIGNAL \switch_delay0|Add0~61\ : std_logic;
SIGNAL \switch_delay0|Add0~62_combout\ : std_logic;
SIGNAL \switch_delay0|Equal0~0_combout\ : std_logic;
SIGNAL \switch_delay0|Equal0~2_combout\ : std_logic;
SIGNAL \switch_delay0|Equal0~1_combout\ : std_logic;
SIGNAL \switch_delay0|Equal0~4_combout\ : std_logic;
SIGNAL \switch_delay0|Equal0~10_combout\ : std_logic;
SIGNAL \switch_delay0|output~0_combout\ : std_logic;
SIGNAL \clock_10ms|clk_ms~feeder_combout\ : std_logic;
SIGNAL \clock_10ms|clk_ms~q\ : std_logic;
SIGNAL \clock_10ms|clk_ms~clkctrl_outclk\ : std_logic;
SIGNAL \xd_state|sum~2_combout\ : std_logic;
SIGNAL \xd_state|Add0~0_combout\ : std_logic;
SIGNAL \xd_state|Add0~7\ : std_logic;
SIGNAL \xd_state|Add0~8_combout\ : std_logic;
SIGNAL \xd_state|sum~6_combout\ : std_logic;
SIGNAL \xd_state|sum~0_combout\ : std_logic;
SIGNAL \xd_state|Add0~9\ : std_logic;
SIGNAL \xd_state|Add0~10_combout\ : std_logic;
SIGNAL \xd_state|sum~7_combout\ : std_logic;
SIGNAL \xd_state|sum~1_combout\ : std_logic;
SIGNAL \xd_state|sum~5_combout\ : std_logic;
SIGNAL \xd_state|Add0~1\ : std_logic;
SIGNAL \xd_state|Add0~2_combout\ : std_logic;
SIGNAL \xd_state|sum~4_combout\ : std_logic;
SIGNAL \xd_state|Add0~3\ : std_logic;
SIGNAL \xd_state|Add0~4_combout\ : std_logic;
SIGNAL \xd_state|sum~3_combout\ : std_logic;
SIGNAL \xd_state|Add0~5\ : std_logic;
SIGNAL \xd_state|Add0~6_combout\ : std_logic;
SIGNAL \xd_state|y~0_combout\ : std_logic;
SIGNAL \xd_state|y~1_combout\ : std_logic;
SIGNAL \xd_state|y~q\ : std_logic;
SIGNAL \inverter0|temp~0_combout\ : std_logic;
SIGNAL \inverter0|temp~q\ : std_logic;
SIGNAL \stop_and_clk~combout\ : std_logic;
SIGNAL \cnt0|temp~3_combout\ : std_logic;
SIGNAL \xd_clear|sum~7_combout\ : std_logic;
SIGNAL \xd_clear|sum~0_combout\ : std_logic;
SIGNAL \xd_clear|Add0~0_combout\ : std_logic;
SIGNAL \xd_clear|sum~1_combout\ : std_logic;
SIGNAL \xd_clear|sum~5_combout\ : std_logic;
SIGNAL \xd_clear|Add0~1\ : std_logic;
SIGNAL \xd_clear|Add0~2_combout\ : std_logic;
SIGNAL \xd_clear|sum~4_combout\ : std_logic;
SIGNAL \xd_clear|Add0~3\ : std_logic;
SIGNAL \xd_clear|Add0~4_combout\ : std_logic;
SIGNAL \xd_clear|sum~3_combout\ : std_logic;
SIGNAL \xd_clear|Add0~5\ : std_logic;
SIGNAL \xd_clear|Add0~6_combout\ : std_logic;
SIGNAL \xd_clear|sum~2_combout\ : std_logic;
SIGNAL \xd_clear|Add0~7\ : std_logic;
SIGNAL \xd_clear|Add0~8_combout\ : std_logic;
SIGNAL \xd_clear|sum~6_combout\ : std_logic;
SIGNAL \xd_clear|Add0~9\ : std_logic;
SIGNAL \xd_clear|Add0~10_combout\ : std_logic;
SIGNAL \xd_clear|y~0_combout\ : std_logic;
SIGNAL \xd_clear|y~1_combout\ : std_logic;
SIGNAL \xd_clear|y~q\ : std_logic;
SIGNAL \rst_or_inverterout~combout\ : std_logic;
SIGNAL \cnt0|temp~0_combout\ : std_logic;
SIGNAL \cnt0|temp~1_combout\ : std_logic;
SIGNAL \cnt0|temp~2_combout\ : std_logic;
SIGNAL \cnt0|Equal0~combout\ : std_logic;
SIGNAL \cnt1|temp~3_combout\ : std_logic;
SIGNAL \cnt1|temp~2_combout\ : std_logic;
SIGNAL \cnt1|temp~0_combout\ : std_logic;
SIGNAL \cnt1|temp~1_combout\ : std_logic;
SIGNAL \cnt1|Equal0~combout\ : std_logic;
SIGNAL \cnt2|temp~2_combout\ : std_logic;
SIGNAL \cnt2|temp~3_combout\ : std_logic;
SIGNAL \cnt2|temp~1_combout\ : std_logic;
SIGNAL \cnt2|temp~0_combout\ : std_logic;
SIGNAL \cnt2|temp[0]~feeder_combout\ : std_logic;
SIGNAL \xd_save|sum~6_combout\ : std_logic;
SIGNAL \xd_save|sum~0_combout\ : std_logic;
SIGNAL \xd_save|Add0~9\ : std_logic;
SIGNAL \xd_save|Add0~10_combout\ : std_logic;
SIGNAL \xd_save|sum~7_combout\ : std_logic;
SIGNAL \xd_save|Add0~0_combout\ : std_logic;
SIGNAL \xd_save|sum~1_combout\ : std_logic;
SIGNAL \xd_save|sum~5_combout\ : std_logic;
SIGNAL \xd_save|Add0~1\ : std_logic;
SIGNAL \xd_save|Add0~2_combout\ : std_logic;
SIGNAL \xd_save|sum~4_combout\ : std_logic;
SIGNAL \xd_save|Add0~3\ : std_logic;
SIGNAL \xd_save|Add0~4_combout\ : std_logic;
SIGNAL \xd_save|sum~3_combout\ : std_logic;
SIGNAL \xd_save|Add0~5\ : std_logic;
SIGNAL \xd_save|Add0~6_combout\ : std_logic;
SIGNAL \xd_save|sum~2_combout\ : std_logic;
SIGNAL \xd_save|Add0~7\ : std_logic;
SIGNAL \xd_save|Add0~8_combout\ : std_logic;
SIGNAL \xd_save|y~0_combout\ : std_logic;
SIGNAL \xd_save|y~1_combout\ : std_logic;
SIGNAL \xd_save|y~q\ : std_logic;
SIGNAL \xd_save|y~clkctrl_outclk\ : std_logic;
SIGNAL \sel_state0|Selector3~0_combout\ : std_logic;
SIGNAL \sel_state3|process_0~0_combout\ : std_logic;
SIGNAL \sel_state0|pr_state.state4~q\ : std_logic;
SIGNAL \sel_state0|pr_state.state1~0_combout\ : std_logic;
SIGNAL \sel_state0|pr_state.state1~q\ : std_logic;
SIGNAL \sel_state0|Selector1~0_combout\ : std_logic;
SIGNAL \sel_state0|pr_state.state2~q\ : std_logic;
SIGNAL \sel_state0|Selector2~0_combout\ : std_logic;
SIGNAL \sel_state0|pr_state.state3~q\ : std_logic;
SIGNAL \sel_state0|Selector6~0_combout\ : std_logic;
SIGNAL \shift0|reg2~104_combout\ : std_logic;
SIGNAL \inverter0|temp~clkctrl_outclk\ : std_logic;
SIGNAL \shift0|reg2[5]~37_combout\ : std_logic;
SIGNAL \shift0|reg1~104_combout\ : std_logic;
SIGNAL \shift0|reg1[5]~37_combout\ : std_logic;
SIGNAL \shift0|reg1[5]~39_combout\ : std_logic;
SIGNAL \shift0|reg1[5]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[5]~38_combout\ : std_logic;
SIGNAL \shift0|reg2[5]~39_combout\ : std_logic;
SIGNAL \shift0|reg2[5]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[5]~38_combout\ : std_logic;
SIGNAL \shift0|reg2_out2[1]~0_combout\ : std_logic;
SIGNAL \shift0|reg3_out0[3]~0_combout\ : std_logic;
SIGNAL \shift0|reg3_out0[3]~0clkctrl_outclk\ : std_logic;
SIGNAL \shift0|reg1_out2[1]~0_combout\ : std_logic;
SIGNAL \sel_state0|Selector6~1_combout\ : std_logic;
SIGNAL \shift0|reg3~104_combout\ : std_logic;
SIGNAL \shift0|reg3[5]~37_combout\ : std_logic;
SIGNAL \shift0|reg3[5]~39_combout\ : std_logic;
SIGNAL \shift0|reg3[5]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[5]~38_combout\ : std_logic;
SIGNAL \shift0|reg3_out2[1]~0_combout\ : std_logic;
SIGNAL \sel_state2|Selector6~0_combout\ : std_logic;
SIGNAL \sel_state2|Selector6~1_combout\ : std_logic;
SIGNAL \shift0|reg3~105_combout\ : std_logic;
SIGNAL \shift0|reg3[4]~33_combout\ : std_logic;
SIGNAL \shift0|reg2~105_combout\ : std_logic;
SIGNAL \shift0|reg2[4]~33_combout\ : std_logic;
SIGNAL \shift0|reg1~105_combout\ : std_logic;
SIGNAL \shift0|reg1[4]~33_combout\ : std_logic;
SIGNAL \shift0|reg1[4]~35_combout\ : std_logic;
SIGNAL \shift0|reg1[4]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[4]~34_combout\ : std_logic;
SIGNAL \shift0|reg2[4]~35_combout\ : std_logic;
SIGNAL \shift0|reg2[4]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[4]~34_combout\ : std_logic;
SIGNAL \shift0|reg3[4]~35_combout\ : std_logic;
SIGNAL \shift0|reg3[4]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[4]~34_combout\ : std_logic;
SIGNAL \shift0|reg3_out2[0]~1_combout\ : std_logic;
SIGNAL \shift0|reg2_out2[0]~1_combout\ : std_logic;
SIGNAL \sel_state2|Selector7~0_combout\ : std_logic;
SIGNAL \shift0|reg1_out2[0]~1_combout\ : std_logic;
SIGNAL \sel_state2|Selector7~1_combout\ : std_logic;
SIGNAL \cmp~5_combout\ : std_logic;
SIGNAL \shift0|reg2~100_combout\ : std_logic;
SIGNAL \shift0|reg2[9]~21_combout\ : std_logic;
SIGNAL \shift0|reg1~100_combout\ : std_logic;
SIGNAL \shift0|reg1[9]~21_combout\ : std_logic;
SIGNAL \shift0|reg1[9]~23_combout\ : std_logic;
SIGNAL \shift0|reg1[9]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[9]~22_combout\ : std_logic;
SIGNAL \shift0|reg2[9]~23_combout\ : std_logic;
SIGNAL \shift0|reg2[9]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[9]~22_combout\ : std_logic;
SIGNAL \shift0|reg2_out1[1]~0_combout\ : std_logic;
SIGNAL \shift0|reg1_out1[1]~0_combout\ : std_logic;
SIGNAL \shift0|reg3~100_combout\ : std_logic;
SIGNAL \shift0|reg3[9]~21_combout\ : std_logic;
SIGNAL \shift0|reg3[9]~23_combout\ : std_logic;
SIGNAL \shift0|reg3[9]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[9]~22_combout\ : std_logic;
SIGNAL \shift0|reg3_out1[1]~0_combout\ : std_logic;
SIGNAL \sel_state1|Selector6~0_combout\ : std_logic;
SIGNAL \sel_state1|Selector6~1_combout\ : std_logic;
SIGNAL \shift0|reg2~101_combout\ : std_logic;
SIGNAL \shift0|reg2[8]~17_combout\ : std_logic;
SIGNAL \shift0|reg1~101_combout\ : std_logic;
SIGNAL \shift0|reg1[8]~17_combout\ : std_logic;
SIGNAL \shift0|reg1[8]~19_combout\ : std_logic;
SIGNAL \shift0|reg1[8]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[8]~18_combout\ : std_logic;
SIGNAL \shift0|reg2[8]~19_combout\ : std_logic;
SIGNAL \shift0|reg2[8]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[8]~18_combout\ : std_logic;
SIGNAL \shift0|reg2_out1[0]~1_combout\ : std_logic;
SIGNAL \sel_state1|Selector7~0_combout\ : std_logic;
SIGNAL \shift0|reg3~101_combout\ : std_logic;
SIGNAL \shift0|reg3[8]~17_combout\ : std_logic;
SIGNAL \shift0|reg3[8]~19_combout\ : std_logic;
SIGNAL \shift0|reg3[8]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[8]~18_combout\ : std_logic;
SIGNAL \shift0|reg3_out1[0]~1_combout\ : std_logic;
SIGNAL \shift0|reg1_out1[0]~1_combout\ : std_logic;
SIGNAL \sel_state1|Selector7~1_combout\ : std_logic;
SIGNAL \cmp~2_combout\ : std_logic;
SIGNAL \shift0|reg1~102_combout\ : std_logic;
SIGNAL \shift0|reg1[11]~29_combout\ : std_logic;
SIGNAL \shift0|reg1[11]~31_combout\ : std_logic;
SIGNAL \shift0|reg1[11]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[11]~30_combout\ : std_logic;
SIGNAL \shift0|reg1_out1[3]~2_combout\ : std_logic;
SIGNAL \shift0|reg2~102_combout\ : std_logic;
SIGNAL \shift0|reg2[11]~29_combout\ : std_logic;
SIGNAL \shift0|reg2[11]~31_combout\ : std_logic;
SIGNAL \shift0|reg2[11]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[11]~30_combout\ : std_logic;
SIGNAL \shift0|reg2_out1[3]~2_combout\ : std_logic;
SIGNAL \shift0|reg3~102_combout\ : std_logic;
SIGNAL \shift0|reg3[11]~29_combout\ : std_logic;
SIGNAL \shift0|reg3[11]~31_combout\ : std_logic;
SIGNAL \shift0|reg3[11]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[11]~30_combout\ : std_logic;
SIGNAL \shift0|reg3_out1[3]~2_combout\ : std_logic;
SIGNAL \sel_state1|Selector4~0_combout\ : std_logic;
SIGNAL \sel_state1|Selector4~1_combout\ : std_logic;
SIGNAL \shift0|reg3~103_combout\ : std_logic;
SIGNAL \shift0|reg3[10]~25_combout\ : std_logic;
SIGNAL \shift0|reg2~103_combout\ : std_logic;
SIGNAL \shift0|reg2[10]~25_combout\ : std_logic;
SIGNAL \shift0|reg1~103_combout\ : std_logic;
SIGNAL \shift0|reg1[10]~25_combout\ : std_logic;
SIGNAL \shift0|reg1[10]~27_combout\ : std_logic;
SIGNAL \shift0|reg1[10]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[10]~26_combout\ : std_logic;
SIGNAL \shift0|reg2[10]~27_combout\ : std_logic;
SIGNAL \shift0|reg2[10]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[10]~26_combout\ : std_logic;
SIGNAL \shift0|reg3[10]~27_combout\ : std_logic;
SIGNAL \shift0|reg3[10]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[10]~26_combout\ : std_logic;
SIGNAL \shift0|reg3_out1[2]~3_combout\ : std_logic;
SIGNAL \shift0|reg1_out1[2]~3_combout\ : std_logic;
SIGNAL \shift0|reg2_out1[2]~3_combout\ : std_logic;
SIGNAL \sel_state1|Selector5~0_combout\ : std_logic;
SIGNAL \sel_state1|Selector5~1_combout\ : std_logic;
SIGNAL \cmp~3_combout\ : std_logic;
SIGNAL \shift0|reg1~99_combout\ : std_logic;
SIGNAL \shift0|reg1[14]~9_combout\ : std_logic;
SIGNAL \shift0|reg1[14]~11_combout\ : std_logic;
SIGNAL \shift0|reg1[14]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[14]~10_combout\ : std_logic;
SIGNAL \shift0|reg1_out0[2]~3_combout\ : std_logic;
SIGNAL \shift0|reg3~99_combout\ : std_logic;
SIGNAL \shift0|reg3[14]~9_combout\ : std_logic;
SIGNAL \shift0|reg2~99_combout\ : std_logic;
SIGNAL \shift0|reg2[14]~9_combout\ : std_logic;
SIGNAL \shift0|reg2[14]~11_combout\ : std_logic;
SIGNAL \shift0|reg2[14]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[14]~10_combout\ : std_logic;
SIGNAL \shift0|reg3[14]~11_combout\ : std_logic;
SIGNAL \shift0|reg3[14]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[14]~10_combout\ : std_logic;
SIGNAL \shift0|reg3_out0[2]~4_combout\ : std_logic;
SIGNAL \shift0|reg2_out0[2]~3_combout\ : std_logic;
SIGNAL \sel_state0|Selector5~0_combout\ : std_logic;
SIGNAL \sel_state0|Selector5~1_combout\ : std_logic;
SIGNAL \shift0|reg1~98_combout\ : std_logic;
SIGNAL \shift0|reg1[15]~13_combout\ : std_logic;
SIGNAL \shift0|reg1[15]~15_combout\ : std_logic;
SIGNAL \shift0|reg1[15]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[15]~14_combout\ : std_logic;
SIGNAL \shift0|reg1_out0[3]~2_combout\ : std_logic;
SIGNAL \shift0|reg2~98_combout\ : std_logic;
SIGNAL \shift0|reg2[15]~13_combout\ : std_logic;
SIGNAL \shift0|reg2[15]~15_combout\ : std_logic;
SIGNAL \shift0|reg2[15]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[15]~14_combout\ : std_logic;
SIGNAL \shift0|reg2_out0[3]~2_combout\ : std_logic;
SIGNAL \shift0|reg3~98_combout\ : std_logic;
SIGNAL \shift0|reg3[15]~13_combout\ : std_logic;
SIGNAL \shift0|reg3[15]~15_combout\ : std_logic;
SIGNAL \shift0|reg3[15]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[15]~14_combout\ : std_logic;
SIGNAL \shift0|reg3_out0[3]~3_combout\ : std_logic;
SIGNAL \sel_state0|Selector4~0_combout\ : std_logic;
SIGNAL \sel_state0|Selector4~1_combout\ : std_logic;
SIGNAL \cmp~1_combout\ : std_logic;
SIGNAL \shift0|reg3~97_combout\ : std_logic;
SIGNAL \shift0|reg3[12]~1_combout\ : std_logic;
SIGNAL \shift0|reg2~97_combout\ : std_logic;
SIGNAL \shift0|reg2[12]~1_combout\ : std_logic;
SIGNAL \shift0|reg1~97_combout\ : std_logic;
SIGNAL \shift0|reg1[12]~1_combout\ : std_logic;
SIGNAL \shift0|reg1[12]~3_combout\ : std_logic;
SIGNAL \shift0|reg1[12]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[12]~2_combout\ : std_logic;
SIGNAL \shift0|reg2[12]~3_combout\ : std_logic;
SIGNAL \shift0|reg2[12]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[12]~2_combout\ : std_logic;
SIGNAL \shift0|reg3[12]~3_combout\ : std_logic;
SIGNAL \shift0|reg3[12]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[12]~2_combout\ : std_logic;
SIGNAL \shift0|reg3_out0[0]~2_combout\ : std_logic;
SIGNAL \shift0|reg2_out0[0]~1_combout\ : std_logic;
SIGNAL \sel_state0|Selector7~0_combout\ : std_logic;
SIGNAL \shift0|reg1_out0[0]~1_combout\ : std_logic;
SIGNAL \sel_state0|Selector7~1_combout\ : std_logic;
SIGNAL \shift0|reg1~96_combout\ : std_logic;
SIGNAL \shift0|reg1[13]~5_combout\ : std_logic;
SIGNAL \shift0|reg1[13]~7_combout\ : std_logic;
SIGNAL \shift0|reg1[13]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[13]~6_combout\ : std_logic;
SIGNAL \shift0|reg1_out0[1]~0_combout\ : std_logic;
SIGNAL \shift0|reg2~96_combout\ : std_logic;
SIGNAL \shift0|reg2[13]~5_combout\ : std_logic;
SIGNAL \shift0|reg2[13]~7_combout\ : std_logic;
SIGNAL \shift0|reg2[13]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[13]~6_combout\ : std_logic;
SIGNAL \shift0|reg2_out0[1]~0_combout\ : std_logic;
SIGNAL \shift0|reg3~96_combout\ : std_logic;
SIGNAL \shift0|reg3[13]~5_combout\ : std_logic;
SIGNAL \shift0|reg3[13]~7_combout\ : std_logic;
SIGNAL \shift0|reg3[13]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[13]~6_combout\ : std_logic;
SIGNAL \shift0|reg3_out0[1]~1_combout\ : std_logic;
SIGNAL \sel_state0|Selector6~2_combout\ : std_logic;
SIGNAL \sel_state0|Selector6~3_combout\ : std_logic;
SIGNAL \cmp~0_combout\ : std_logic;
SIGNAL \cmp~4_combout\ : std_logic;
SIGNAL \shift0|reg3~110_combout\ : std_logic;
SIGNAL \shift0|reg3[2]~57_combout\ : std_logic;
SIGNAL \shift0|reg2~110_combout\ : std_logic;
SIGNAL \shift0|reg2[2]~57_combout\ : std_logic;
SIGNAL \shift0|reg1~110_combout\ : std_logic;
SIGNAL \shift0|reg1[2]~57_combout\ : std_logic;
SIGNAL \cnt2|Equal0~combout\ : std_logic;
SIGNAL \cnt2|Equal0~clkctrl_outclk\ : std_logic;
SIGNAL \cnt3|temp~1_combout\ : std_logic;
SIGNAL \cnt3|temp~0_combout\ : std_logic;
SIGNAL \cnt3|temp~2_combout\ : std_logic;
SIGNAL \shift0|reg1[2]~59_combout\ : std_logic;
SIGNAL \shift0|reg1[2]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[2]~58_combout\ : std_logic;
SIGNAL \shift0|reg2[2]~59_combout\ : std_logic;
SIGNAL \shift0|reg2[2]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[2]~58_combout\ : std_logic;
SIGNAL \shift0|reg3[2]~59_combout\ : std_logic;
SIGNAL \shift0|reg3[2]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[2]~58_combout\ : std_logic;
SIGNAL \shift0|reg3_out3[2]~2_combout\ : std_logic;
SIGNAL \shift0|reg1_out3[2]~2_combout\ : std_logic;
SIGNAL \shift0|reg2_out3[2]~2_combout\ : std_logic;
SIGNAL \sel_state3|Selector5~0_combout\ : std_logic;
SIGNAL \sel_state3|Selector5~1_combout\ : std_logic;
SIGNAL \shift0|reg1~111_combout\ : std_logic;
SIGNAL \shift0|reg1[3]~61_combout\ : std_logic;
SIGNAL \shift0|reg1[3]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[3]~62_combout\ : std_logic;
SIGNAL \shift0|reg1_out3[3]~3_combout\ : std_logic;
SIGNAL \shift0|reg2~111_combout\ : std_logic;
SIGNAL \shift0|reg2[3]~61_combout\ : std_logic;
SIGNAL \shift0|reg2[3]~63_combout\ : std_logic;
SIGNAL \shift0|reg2[3]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[3]~62_combout\ : std_logic;
SIGNAL \shift0|reg2_out3[3]~3_combout\ : std_logic;
SIGNAL \shift0|reg3~111_combout\ : std_logic;
SIGNAL \shift0|reg3[3]~61_combout\ : std_logic;
SIGNAL \shift0|reg3[3]~63_combout\ : std_logic;
SIGNAL \shift0|reg3[3]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[3]~62_combout\ : std_logic;
SIGNAL \shift0|reg3_out3[3]~3_combout\ : std_logic;
SIGNAL \sel_state3|Selector4~0_combout\ : std_logic;
SIGNAL \sel_state3|Selector4~1_combout\ : std_logic;
SIGNAL \shift0|reg1~108_combout\ : std_logic;
SIGNAL \shift0|reg1[1]~53_combout\ : std_logic;
SIGNAL \shift0|reg1[1]~55_combout\ : std_logic;
SIGNAL \shift0|reg1[1]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[1]~54_combout\ : std_logic;
SIGNAL \shift0|reg1_out3[1]~0_combout\ : std_logic;
SIGNAL \shift0|reg2~108_combout\ : std_logic;
SIGNAL \shift0|reg2[1]~53_combout\ : std_logic;
SIGNAL \shift0|reg2[1]~55_combout\ : std_logic;
SIGNAL \shift0|reg2[1]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[1]~54_combout\ : std_logic;
SIGNAL \shift0|reg2_out3[1]~0_combout\ : std_logic;
SIGNAL \shift0|reg3~108_combout\ : std_logic;
SIGNAL \shift0|reg3[1]~53_combout\ : std_logic;
SIGNAL \shift0|reg3[1]~55_combout\ : std_logic;
SIGNAL \shift0|reg3[1]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[1]~54_combout\ : std_logic;
SIGNAL \shift0|reg3_out3[1]~0_combout\ : std_logic;
SIGNAL \sel_state3|Selector6~0_combout\ : std_logic;
SIGNAL \sel_state3|Selector6~1_combout\ : std_logic;
SIGNAL \shift0|reg3~109_combout\ : std_logic;
SIGNAL \shift0|reg2~109_combout\ : std_logic;
SIGNAL \shift0|reg2[0]~49_combout\ : std_logic;
SIGNAL \shift0|reg1~109_combout\ : std_logic;
SIGNAL \shift0|reg1[0]~49_combout\ : std_logic;
SIGNAL \shift0|reg1[0]~51_combout\ : std_logic;
SIGNAL \shift0|reg1[0]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[0]~50_combout\ : std_logic;
SIGNAL \shift0|reg2[0]~51_combout\ : std_logic;
SIGNAL \shift0|reg2[0]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[0]~50_combout\ : std_logic;
SIGNAL \shift0|reg3[0]~49_combout\ : std_logic;
SIGNAL \shift0|reg3[0]~51_combout\ : std_logic;
SIGNAL \shift0|reg3[0]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[0]~50_combout\ : std_logic;
SIGNAL \shift0|reg3_out3[0]~1_combout\ : std_logic;
SIGNAL \shift0|reg1_out3[0]~1_combout\ : std_logic;
SIGNAL \shift0|reg2_out3[0]~1_combout\ : std_logic;
SIGNAL \sel_state3|Selector7~0_combout\ : std_logic;
SIGNAL \sel_state3|Selector7~1_combout\ : std_logic;
SIGNAL \cmp~7_combout\ : std_logic;
SIGNAL \cmp~8_combout\ : std_logic;
SIGNAL \shift0|reg1~106_combout\ : std_logic;
SIGNAL \shift0|reg1[7]~45_combout\ : std_logic;
SIGNAL \shift0|reg1[7]~47_combout\ : std_logic;
SIGNAL \shift0|reg1[7]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[7]~46_combout\ : std_logic;
SIGNAL \shift0|reg1_out2[3]~2_combout\ : std_logic;
SIGNAL \shift0|reg2~106_combout\ : std_logic;
SIGNAL \shift0|reg2[7]~45_combout\ : std_logic;
SIGNAL \shift0|reg2[7]~47_combout\ : std_logic;
SIGNAL \shift0|reg2[7]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[7]~46_combout\ : std_logic;
SIGNAL \shift0|reg2_out2[3]~2_combout\ : std_logic;
SIGNAL \shift0|reg3~106_combout\ : std_logic;
SIGNAL \shift0|reg3[7]~45_combout\ : std_logic;
SIGNAL \shift0|reg3[7]~47_combout\ : std_logic;
SIGNAL \shift0|reg3[7]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[7]~46_combout\ : std_logic;
SIGNAL \shift0|reg3_out2[3]~2_combout\ : std_logic;
SIGNAL \sel_state2|Selector4~0_combout\ : std_logic;
SIGNAL \sel_state2|Selector4~1_combout\ : std_logic;
SIGNAL \shift0|reg3~107_combout\ : std_logic;
SIGNAL \shift0|reg3[6]~41_combout\ : std_logic;
SIGNAL \shift0|reg2~107_combout\ : std_logic;
SIGNAL \shift0|reg2[6]~41_combout\ : std_logic;
SIGNAL \shift0|reg1~107_combout\ : std_logic;
SIGNAL \shift0|reg1[6]~41_combout\ : std_logic;
SIGNAL \shift0|reg1[6]~43_combout\ : std_logic;
SIGNAL \shift0|reg1[6]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg1[6]~42_combout\ : std_logic;
SIGNAL \shift0|reg2[6]~43_combout\ : std_logic;
SIGNAL \shift0|reg2[6]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg2[6]~42_combout\ : std_logic;
SIGNAL \shift0|reg3[6]~43_combout\ : std_logic;
SIGNAL \shift0|reg3[6]~_emulated_q\ : std_logic;
SIGNAL \shift0|reg3[6]~42_combout\ : std_logic;
SIGNAL \shift0|reg3_out2[2]~3_combout\ : std_logic;
SIGNAL \shift0|reg1_out2[2]~3_combout\ : std_logic;
SIGNAL \shift0|reg2_out2[2]~3_combout\ : std_logic;
SIGNAL \sel_state2|Selector5~0_combout\ : std_logic;
SIGNAL \sel_state2|Selector5~1_combout\ : std_logic;
SIGNAL \cmp~6_combout\ : std_logic;
SIGNAL \cmp~combout\ : std_logic;
SIGNAL \flicker0|Add0~0_combout\ : std_logic;
SIGNAL \flicker0|Add0~1\ : std_logic;
SIGNAL \flicker0|Add0~2_combout\ : std_logic;
SIGNAL \flicker0|Add0~3\ : std_logic;
SIGNAL \flicker0|Add0~4_combout\ : std_logic;
SIGNAL \flicker0|Add0~5\ : std_logic;
SIGNAL \flicker0|Add0~6_combout\ : std_logic;
SIGNAL \flicker0|cnt~2_combout\ : std_logic;
SIGNAL \flicker0|Add0~7\ : std_logic;
SIGNAL \flicker0|Add0~8_combout\ : std_logic;
SIGNAL \flicker0|Add0~9\ : std_logic;
SIGNAL \flicker0|Add0~10_combout\ : std_logic;
SIGNAL \flicker0|Add0~11\ : std_logic;
SIGNAL \flicker0|Add0~13\ : std_logic;
SIGNAL \flicker0|Add0~15\ : std_logic;
SIGNAL \flicker0|Add0~16_combout\ : std_logic;
SIGNAL \flicker0|Add0~17\ : std_logic;
SIGNAL \flicker0|Add0~18_combout\ : std_logic;
SIGNAL \flicker0|Add0~19\ : std_logic;
SIGNAL \flicker0|Add0~20_combout\ : std_logic;
SIGNAL \flicker0|Add0~21\ : std_logic;
SIGNAL \flicker0|Add0~22_combout\ : std_logic;
SIGNAL \flicker0|Add0~23\ : std_logic;
SIGNAL \flicker0|Add0~24_combout\ : std_logic;
SIGNAL \flicker0|Add0~25\ : std_logic;
SIGNAL \flicker0|Add0~26_combout\ : std_logic;
SIGNAL \flicker0|Add0~27\ : std_logic;
SIGNAL \flicker0|Add0~28_combout\ : std_logic;
SIGNAL \flicker0|Add0~29\ : std_logic;
SIGNAL \flicker0|Add0~30_combout\ : std_logic;
SIGNAL \flicker0|Add0~31\ : std_logic;
SIGNAL \flicker0|Add0~32_combout\ : std_logic;
SIGNAL \flicker0|Add0~33\ : std_logic;
SIGNAL \flicker0|Add0~34_combout\ : std_logic;
SIGNAL \flicker0|Add0~35\ : std_logic;
SIGNAL \flicker0|Add0~36_combout\ : std_logic;
SIGNAL \flicker0|Add0~37\ : std_logic;
SIGNAL \flicker0|Add0~38_combout\ : std_logic;
SIGNAL \flicker0|Add0~39\ : std_logic;
SIGNAL \flicker0|Add0~40_combout\ : std_logic;
SIGNAL \flicker0|Add0~41\ : std_logic;
SIGNAL \flicker0|Add0~42_combout\ : std_logic;
SIGNAL \flicker0|Add0~43\ : std_logic;
SIGNAL \flicker0|Add0~44_combout\ : std_logic;
SIGNAL \flicker0|Add0~45\ : std_logic;
SIGNAL \flicker0|Add0~46_combout\ : std_logic;
SIGNAL \flicker0|Add0~47\ : std_logic;
SIGNAL \flicker0|Add0~48_combout\ : std_logic;
SIGNAL \flicker0|Add0~49\ : std_logic;
SIGNAL \flicker0|Add0~50_combout\ : std_logic;
SIGNAL \flicker0|Add0~51\ : std_logic;
SIGNAL \flicker0|Add0~52_combout\ : std_logic;
SIGNAL \flicker0|Add0~53\ : std_logic;
SIGNAL \flicker0|Add0~54_combout\ : std_logic;
SIGNAL \flicker0|Add0~55\ : std_logic;
SIGNAL \flicker0|Add0~56_combout\ : std_logic;
SIGNAL \flicker0|Add0~57\ : std_logic;
SIGNAL \flicker0|Add0~58_combout\ : std_logic;
SIGNAL \flicker0|Add0~59\ : std_logic;
SIGNAL \flicker0|Add0~60_combout\ : std_logic;
SIGNAL \flicker0|Add0~61\ : std_logic;
SIGNAL \flicker0|Add0~62_combout\ : std_logic;
SIGNAL \flicker0|Equal0~1_combout\ : std_logic;
SIGNAL \flicker0|Equal0~0_combout\ : std_logic;
SIGNAL \flicker0|Equal0~8_combout\ : std_logic;
SIGNAL \flicker0|Equal0~9_combout\ : std_logic;
SIGNAL \flicker0|Equal0~3_combout\ : std_logic;
SIGNAL \flicker0|Equal0~2_combout\ : std_logic;
SIGNAL \flicker0|Equal0~4_combout\ : std_logic;
SIGNAL \flicker0|Equal0~5_combout\ : std_logic;
SIGNAL \flicker0|Equal0~6_combout\ : std_logic;
SIGNAL \flicker0|Equal0~10_combout\ : std_logic;
SIGNAL \flicker0|Equal0~11_combout\ : std_logic;
SIGNAL \flicker0|cnt~1_combout\ : std_logic;
SIGNAL \flicker0|Add0~12_combout\ : std_logic;
SIGNAL \flicker0|Equal0~7_combout\ : std_logic;
SIGNAL \flicker0|LessThan3~0_combout\ : std_logic;
SIGNAL \flicker0|LessThan3~1_combout\ : std_logic;
SIGNAL \flicker0|cnt~0_combout\ : std_logic;
SIGNAL \flicker0|Add0~14_combout\ : std_logic;
SIGNAL \flicker0|LessThan2~0_combout\ : std_logic;
SIGNAL \flicker0|LessThan2~1_combout\ : std_logic;
SIGNAL \flicker0|LessThan2~2_combout\ : std_logic;
SIGNAL \flicker0|temp~0_combout\ : std_logic;
SIGNAL \flicker0|temp~1_combout\ : std_logic;
SIGNAL \flicker0|temp~q\ : std_logic;
SIGNAL \serial_scan0|count[0]~1_combout\ : std_logic;
SIGNAL \serial_scan0|count[1]~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout[5]~0_combout\ : std_logic;
SIGNAL \dig~0_combout\ : std_logic;
SIGNAL \serial_scan0|Equal2~0_combout\ : std_logic;
SIGNAL \dig~1_combout\ : std_logic;
SIGNAL \serial_scan0|Equal2~1_combout\ : std_logic;
SIGNAL \dig~2_combout\ : std_logic;
SIGNAL \serial_scan0|Equal0~0_combout\ : std_logic;
SIGNAL \dig~3_combout\ : std_logic;
SIGNAL \decoder0|Mux6~0_combout\ : std_logic;
SIGNAL \decoder1|Mux6~0_combout\ : std_logic;
SIGNAL \decoder2|Mux6~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~2_combout\ : std_logic;
SIGNAL \serial_scan0|dataout[5]~1_combout\ : std_logic;
SIGNAL \decoder3|Mux6~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~3_combout\ : std_logic;
SIGNAL \decoder1|Mux5~0_combout\ : std_logic;
SIGNAL \decoder2|Mux5~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~4_combout\ : std_logic;
SIGNAL \decoder0|Mux5~0_combout\ : std_logic;
SIGNAL \decoder3|Mux5~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~5_combout\ : std_logic;
SIGNAL \decoder0|Mux4~0_combout\ : std_logic;
SIGNAL \decoder1|Mux4~0_combout\ : std_logic;
SIGNAL \decoder2|Mux4~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~6_combout\ : std_logic;
SIGNAL \decoder3|Mux4~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~7_combout\ : std_logic;
SIGNAL \decoder1|Mux3~0_combout\ : std_logic;
SIGNAL \decoder2|Mux3~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~8_combout\ : std_logic;
SIGNAL \decoder0|Mux3~0_combout\ : std_logic;
SIGNAL \decoder3|Mux3~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~9_combout\ : std_logic;
SIGNAL \decoder1|Mux2~0_combout\ : std_logic;
SIGNAL \decoder2|Mux2~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~10_combout\ : std_logic;
SIGNAL \decoder0|Mux2~0_combout\ : std_logic;
SIGNAL \decoder3|Mux2~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~11_combout\ : std_logic;
SIGNAL \decoder2|Mux1~0_combout\ : std_logic;
SIGNAL \decoder1|Mux1~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~12_combout\ : std_logic;
SIGNAL \decoder0|Mux1~0_combout\ : std_logic;
SIGNAL \decoder3|Mux1~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~13_combout\ : std_logic;
SIGNAL \decoder0|Mux0~0_combout\ : std_logic;
SIGNAL \decoder2|Mux0~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~14_combout\ : std_logic;
SIGNAL \decoder1|Mux0~0_combout\ : std_logic;
SIGNAL \decoder3|Mux0~0_combout\ : std_logic;
SIGNAL \serial_scan0|dataout~15_combout\ : std_logic;
SIGNAL \clock_10ms|q_1ms\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \shift0|reg3_out0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt2|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt0|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_10ms|q_1us\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \switch_delay0|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \shift0|reg3_out3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \flicker0|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \serial_scan0|en_out\ : std_logic_vector(0 TO 3);
SIGNAL \serial_scan0|dataout\ : std_logic_vector(0 TO 7);
SIGNAL \cnt1|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt3|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \serial_scan0|count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock_10ms|q_10ms\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \xd_clear|sum\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \xd_save|sum\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \xd_state|sum\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \shift0|reg2_out0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \shift0|reg1_out0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \shift0|reg2_out1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \shift0|reg3_out1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \shift0|reg1_out1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \shift0|reg2_out2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \shift0|reg3_out2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \shift0|reg1_out2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \shift0|reg2_out3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \shift0|reg1_out3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_beef_ctrl~0clkctrl_outclk\ : std_logic;
SIGNAL \xd_save|ALT_INV_y~clkctrl_outclk\ : std_logic;
SIGNAL \xd_state|ALT_INV_y~q\ : std_logic;
SIGNAL \sel_state3|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst_or_inverterout~combout\ : std_logic;
SIGNAL \inverter0|ALT_INV_temp~q\ : std_logic;
SIGNAL \ALT_INV_cmp~combout\ : std_logic;

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
ww_save_key <= save_key;
ww_en_key <= en_key;
beef <= ww_beef;
dig <= ww_dig;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\shift0|reg3_out0[3]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \shift0|reg3_out0[3]~0_combout\);

\clock_10ms|clk_ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_10ms|clk_ms~q\);

\inverter0|temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inverter0|temp~q\);

\xd_save|y~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \xd_save|y~q\);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);

\clock_10ms|sig_us~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_10ms|sig_us~q\);

\clock_10ms|clk_10ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_10ms|clk_10ms~q\);

\beef_ctrl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \beef_ctrl~0_combout\);

\cnt2|Equal0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cnt2|Equal0~combout\);

\clock_10ms|sig_ms~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_10ms|sig_ms~q\);
\ALT_INV_beef_ctrl~0clkctrl_outclk\ <= NOT \beef_ctrl~0clkctrl_outclk\;
\xd_save|ALT_INV_y~clkctrl_outclk\ <= NOT \xd_save|y~clkctrl_outclk\;
\xd_state|ALT_INV_y~q\ <= NOT \xd_state|y~q\;
\sel_state3|ALT_INV_process_0~0_combout\ <= NOT \sel_state3|process_0~0_combout\;
\ALT_INV_rst_or_inverterout~combout\ <= NOT \rst_or_inverterout~combout\;
\inverter0|ALT_INV_temp~q\ <= NOT \inverter0|temp~q\;
\ALT_INV_cmp~combout\ <= NOT \cmp~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y24_N2
\beef~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \switch_delay0|output~0_combout\,
	devoe => ww_devoe,
	o => \beef~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\dig[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig~0_combout\,
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
	i => \dig~1_combout\,
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
	i => \dig~2_combout\,
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
	i => \dig~3_combout\,
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

-- Location: LCCOMB_X2_Y11_N14
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

-- Location: FF_X2_Y11_N15
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

-- Location: LCCOMB_X2_Y11_N16
\clock_10ms|q_1us[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1us[1]~8_combout\ = (\clock_10ms|q_1us\(1) & (!\clock_10ms|q_1us[0]~7\)) # (!\clock_10ms|q_1us\(1) & ((\clock_10ms|q_1us[0]~7\) # (GND)))
-- \clock_10ms|q_1us[1]~9\ = CARRY((!\clock_10ms|q_1us[0]~7\) # (!\clock_10ms|q_1us\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_1us\(1),
	datad => VCC,
	cin => \clock_10ms|q_1us[0]~7\,
	combout => \clock_10ms|q_1us[1]~8_combout\,
	cout => \clock_10ms|q_1us[1]~9\);

-- Location: FF_X2_Y11_N17
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

-- Location: LCCOMB_X2_Y11_N18
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

-- Location: FF_X2_Y11_N19
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

-- Location: LCCOMB_X2_Y11_N20
\clock_10ms|q_1us[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1us[3]~12_combout\ = (\clock_10ms|q_1us\(3) & (!\clock_10ms|q_1us[2]~11\)) # (!\clock_10ms|q_1us\(3) & ((\clock_10ms|q_1us[2]~11\) # (GND)))
-- \clock_10ms|q_1us[3]~13\ = CARRY((!\clock_10ms|q_1us[2]~11\) # (!\clock_10ms|q_1us\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_1us\(3),
	datad => VCC,
	cin => \clock_10ms|q_1us[2]~11\,
	combout => \clock_10ms|q_1us[3]~12_combout\,
	cout => \clock_10ms|q_1us[3]~13\);

-- Location: FF_X2_Y11_N21
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

-- Location: LCCOMB_X2_Y11_N22
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

-- Location: FF_X2_Y11_N23
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

-- Location: LCCOMB_X2_Y11_N24
\clock_10ms|q_1us[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1us[5]~16_combout\ = \clock_10ms|q_1us[4]~15\ $ (\clock_10ms|q_1us\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock_10ms|q_1us\(5),
	cin => \clock_10ms|q_1us[4]~15\,
	combout => \clock_10ms|q_1us[5]~16_combout\);

-- Location: FF_X2_Y11_N25
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

-- Location: LCCOMB_X2_Y11_N28
\clock_10ms|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|LessThan0~0_combout\ = (!\clock_10ms|q_1us\(1) & (!\clock_10ms|q_1us\(2) & (!\clock_10ms|q_1us\(0) & !\clock_10ms|q_1us\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1us\(1),
	datab => \clock_10ms|q_1us\(2),
	datac => \clock_10ms|q_1us\(0),
	datad => \clock_10ms|q_1us\(3),
	combout => \clock_10ms|LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y11_N12
\clock_10ms|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|LessThan0~1_combout\ = (\clock_10ms|q_1us\(5) & (\clock_10ms|q_1us\(4) & !\clock_10ms|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_1us\(5),
	datac => \clock_10ms|q_1us\(4),
	datad => \clock_10ms|LessThan0~0_combout\,
	combout => \clock_10ms|LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y11_N2
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

-- Location: FF_X2_Y11_N3
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X5_Y11_N4
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

-- Location: FF_X5_Y11_N5
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

-- Location: LCCOMB_X5_Y11_N6
\clock_10ms|q_1ms[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[1]~12_combout\ = (\clock_10ms|q_1ms\(1) & (!\clock_10ms|q_1ms[0]~11\)) # (!\clock_10ms|q_1ms\(1) & ((\clock_10ms|q_1ms[0]~11\) # (GND)))
-- \clock_10ms|q_1ms[1]~13\ = CARRY((!\clock_10ms|q_1ms[0]~11\) # (!\clock_10ms|q_1ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1ms\(1),
	datad => VCC,
	cin => \clock_10ms|q_1ms[0]~11\,
	combout => \clock_10ms|q_1ms[1]~12_combout\,
	cout => \clock_10ms|q_1ms[1]~13\);

-- Location: FF_X5_Y11_N7
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

-- Location: LCCOMB_X5_Y11_N8
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

-- Location: FF_X5_Y11_N9
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

-- Location: LCCOMB_X5_Y11_N10
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

-- Location: FF_X5_Y11_N11
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

-- Location: LCCOMB_X5_Y11_N12
\clock_10ms|q_1ms[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[4]~18_combout\ = (\clock_10ms|q_1ms\(4) & (\clock_10ms|q_1ms[3]~17\ $ (GND))) # (!\clock_10ms|q_1ms\(4) & (!\clock_10ms|q_1ms[3]~17\ & VCC))
-- \clock_10ms|q_1ms[4]~19\ = CARRY((\clock_10ms|q_1ms\(4) & !\clock_10ms|q_1ms[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1ms\(4),
	datad => VCC,
	cin => \clock_10ms|q_1ms[3]~17\,
	combout => \clock_10ms|q_1ms[4]~18_combout\,
	cout => \clock_10ms|q_1ms[4]~19\);

-- Location: FF_X5_Y11_N13
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

-- Location: LCCOMB_X5_Y11_N14
\clock_10ms|q_1ms[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[5]~20_combout\ = (\clock_10ms|q_1ms\(5) & (!\clock_10ms|q_1ms[4]~19\)) # (!\clock_10ms|q_1ms\(5) & ((\clock_10ms|q_1ms[4]~19\) # (GND)))
-- \clock_10ms|q_1ms[5]~21\ = CARRY((!\clock_10ms|q_1ms[4]~19\) # (!\clock_10ms|q_1ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_1ms\(5),
	datad => VCC,
	cin => \clock_10ms|q_1ms[4]~19\,
	combout => \clock_10ms|q_1ms[5]~20_combout\,
	cout => \clock_10ms|q_1ms[5]~21\);

-- Location: FF_X5_Y11_N15
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

-- Location: LCCOMB_X5_Y11_N16
\clock_10ms|q_1ms[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[6]~22_combout\ = (\clock_10ms|q_1ms\(6) & (\clock_10ms|q_1ms[5]~21\ $ (GND))) # (!\clock_10ms|q_1ms\(6) & (!\clock_10ms|q_1ms[5]~21\ & VCC))
-- \clock_10ms|q_1ms[6]~23\ = CARRY((\clock_10ms|q_1ms\(6) & !\clock_10ms|q_1ms[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_10ms|q_1ms\(6),
	datad => VCC,
	cin => \clock_10ms|q_1ms[5]~21\,
	combout => \clock_10ms|q_1ms[6]~22_combout\,
	cout => \clock_10ms|q_1ms[6]~23\);

-- Location: FF_X5_Y11_N17
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

-- Location: LCCOMB_X5_Y11_N18
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

-- Location: FF_X5_Y11_N19
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

-- Location: LCCOMB_X5_Y11_N20
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

-- Location: FF_X5_Y11_N21
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

-- Location: LCCOMB_X5_Y11_N22
\clock_10ms|q_1ms[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_1ms[9]~28_combout\ = \clock_10ms|q_1ms\(9) $ (\clock_10ms|q_1ms[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1ms\(9),
	cin => \clock_10ms|q_1ms[8]~27\,
	combout => \clock_10ms|q_1ms[9]~28_combout\);

-- Location: FF_X5_Y11_N23
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

-- Location: LCCOMB_X5_Y11_N30
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

-- Location: LCCOMB_X5_Y11_N28
\clock_10ms|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|LessThan1~0_combout\ = (((!\clock_10ms|q_1ms\(8)) # (!\clock_10ms|q_1ms\(5))) # (!\clock_10ms|q_1ms\(6))) # (!\clock_10ms|q_1ms\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1ms\(7),
	datab => \clock_10ms|q_1ms\(6),
	datac => \clock_10ms|q_1ms\(5),
	datad => \clock_10ms|q_1ms\(8),
	combout => \clock_10ms|LessThan1~0_combout\);

-- Location: LCCOMB_X5_Y11_N24
\clock_10ms|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|LessThan1~2_combout\ = (\clock_10ms|q_1ms\(9) & (!\clock_10ms|LessThan1~0_combout\ & ((\clock_10ms|q_1ms\(4)) # (!\clock_10ms|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_1ms\(9),
	datab => \clock_10ms|q_1ms\(4),
	datac => \clock_10ms|LessThan1~1_combout\,
	datad => \clock_10ms|LessThan1~0_combout\,
	combout => \clock_10ms|LessThan1~2_combout\);

-- Location: LCCOMB_X5_Y11_N0
\clock_10ms|sig_ms~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|sig_ms~feeder_combout\ = \clock_10ms|LessThan1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clock_10ms|LessThan1~2_combout\,
	combout => \clock_10ms|sig_ms~feeder_combout\);

-- Location: FF_X5_Y11_N1
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

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X30_Y14_N28
\clock_10ms|q_10ms~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_10ms~0_combout\ = (!\clock_10ms|q_10ms\(0) & (((!\clock_10ms|q_10ms\(1) & !\clock_10ms|q_10ms\(2))) # (!\clock_10ms|q_10ms\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_10ms\(3),
	datab => \clock_10ms|q_10ms\(1),
	datac => \clock_10ms|q_10ms\(0),
	datad => \clock_10ms|q_10ms\(2),
	combout => \clock_10ms|q_10ms~0_combout\);

-- Location: FF_X30_Y14_N29
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

-- Location: LCCOMB_X30_Y14_N18
\clock_10ms|q_10ms~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_10ms~1_combout\ = (!\clock_10ms|q_10ms\(3) & (\clock_10ms|q_10ms\(1) $ (\clock_10ms|q_10ms\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_10ms\(3),
	datac => \clock_10ms|q_10ms\(1),
	datad => \clock_10ms|q_10ms\(0),
	combout => \clock_10ms|q_10ms~1_combout\);

-- Location: FF_X30_Y14_N19
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

-- Location: LCCOMB_X30_Y14_N26
\clock_10ms|q_10ms~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|q_10ms~2_combout\ = (!\clock_10ms|q_10ms\(3) & (\clock_10ms|q_10ms\(2) $ (((\clock_10ms|q_10ms\(1) & \clock_10ms|q_10ms\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_10ms\(3),
	datab => \clock_10ms|q_10ms\(1),
	datac => \clock_10ms|q_10ms\(2),
	datad => \clock_10ms|q_10ms\(0),
	combout => \clock_10ms|q_10ms~2_combout\);

-- Location: FF_X30_Y14_N27
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

-- Location: LCCOMB_X30_Y14_N12
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

-- Location: FF_X30_Y14_N13
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

-- Location: LCCOMB_X30_Y14_N20
\clock_10ms|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|LessThan2~0_combout\ = (\clock_10ms|q_10ms\(3) & ((\clock_10ms|q_10ms\(1)) # ((\clock_10ms|q_10ms\(2)) # (\clock_10ms|q_10ms\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|q_10ms\(3),
	datab => \clock_10ms|q_10ms\(1),
	datac => \clock_10ms|q_10ms\(2),
	datad => \clock_10ms|q_10ms\(0),
	combout => \clock_10ms|LessThan2~0_combout\);

-- Location: FF_X30_Y14_N21
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

-- Location: LCCOMB_X30_Y14_N24
\clock_10ms|clk_10ms~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|clk_10ms~feeder_combout\ = \clock_10ms|sig_10ms~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_10ms|sig_10ms~q\,
	combout => \clock_10ms|clk_10ms~feeder_combout\);

-- Location: FF_X30_Y14_N25
\clock_10ms|clk_10ms\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_10ms|clk_10ms~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_10ms|clk_10ms~q\);

-- Location: CLKCTRL_G9
\clock_10ms|clk_10ms~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_10ms|clk_10ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_10ms|clk_10ms~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y11_N16
\switch_delay0|cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|cnt[0]~0_combout\ = (!\switch_delay0|cnt\(0) & \switch_delay0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch_delay0|cnt\(0),
	datad => \switch_delay0|Equal0~10_combout\,
	combout => \switch_delay0|cnt[0]~0_combout\);

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

-- Location: IOIBUF_X34_Y12_N8
\save_key~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_save_key,
	o => \save_key~input_o\);

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

-- Location: LCCOMB_X33_Y12_N8
\beef_ctrl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \beef_ctrl~0_combout\ = ((!\stop_key~input_o\) # (!\save_key~input_o\)) # (!\rst_key~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_key~input_o\,
	datac => \save_key~input_o\,
	datad => \stop_key~input_o\,
	combout => \beef_ctrl~0_combout\);

-- Location: CLKCTRL_G1
\beef_ctrl~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \beef_ctrl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \beef_ctrl~0clkctrl_outclk\);

-- Location: FF_X29_Y11_N17
\switch_delay0|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|cnt[0]~0_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(0));

-- Location: LCCOMB_X30_Y11_N0
\switch_delay0|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~1_cout\ = CARRY(\switch_delay0|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(0),
	datad => VCC,
	cout => \switch_delay0|Add0~1_cout\);

-- Location: LCCOMB_X30_Y11_N2
\switch_delay0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~2_combout\ = (\switch_delay0|cnt\(1) & (!\switch_delay0|Add0~1_cout\)) # (!\switch_delay0|cnt\(1) & (\switch_delay0|Add0~1_cout\ & VCC))
-- \switch_delay0|Add0~3\ = CARRY((\switch_delay0|cnt\(1) & !\switch_delay0|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(1),
	datad => VCC,
	cin => \switch_delay0|Add0~1_cout\,
	combout => \switch_delay0|Add0~2_combout\,
	cout => \switch_delay0|Add0~3\);

-- Location: LCCOMB_X29_Y11_N6
\switch_delay0|cnt[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|cnt[1]~4_combout\ = !\switch_delay0|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch_delay0|Add0~2_combout\,
	combout => \switch_delay0|cnt[1]~4_combout\);

-- Location: FF_X29_Y11_N7
\switch_delay0|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|cnt[1]~4_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(1));

-- Location: LCCOMB_X30_Y11_N4
\switch_delay0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~4_combout\ = (\switch_delay0|cnt\(2) & (\switch_delay0|Add0~3\ $ (GND))) # (!\switch_delay0|cnt\(2) & ((GND) # (!\switch_delay0|Add0~3\)))
-- \switch_delay0|Add0~5\ = CARRY((!\switch_delay0|Add0~3\) # (!\switch_delay0|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(2),
	datad => VCC,
	cin => \switch_delay0|Add0~3\,
	combout => \switch_delay0|Add0~4_combout\,
	cout => \switch_delay0|Add0~5\);

-- Location: LCCOMB_X29_Y11_N24
\switch_delay0|cnt[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|cnt[2]~3_combout\ = !\switch_delay0|Add0~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch_delay0|Add0~4_combout\,
	combout => \switch_delay0|cnt[2]~3_combout\);

-- Location: FF_X29_Y11_N25
\switch_delay0|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|cnt[2]~3_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(2));

-- Location: LCCOMB_X30_Y11_N6
\switch_delay0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~6_combout\ = (\switch_delay0|cnt\(3) & (!\switch_delay0|Add0~5\)) # (!\switch_delay0|cnt\(3) & (\switch_delay0|Add0~5\ & VCC))
-- \switch_delay0|Add0~7\ = CARRY((\switch_delay0|cnt\(3) & !\switch_delay0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(3),
	datad => VCC,
	cin => \switch_delay0|Add0~5\,
	combout => \switch_delay0|Add0~6_combout\,
	cout => \switch_delay0|Add0~7\);

-- Location: LCCOMB_X29_Y11_N14
\switch_delay0|cnt[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|cnt[3]~2_combout\ = !\switch_delay0|Add0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \switch_delay0|Add0~6_combout\,
	combout => \switch_delay0|cnt[3]~2_combout\);

-- Location: FF_X29_Y11_N15
\switch_delay0|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|cnt[3]~2_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(3));

-- Location: LCCOMB_X30_Y11_N8
\switch_delay0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~8_combout\ = (\switch_delay0|cnt\(4) & (\switch_delay0|Add0~7\ $ (GND))) # (!\switch_delay0|cnt\(4) & ((GND) # (!\switch_delay0|Add0~7\)))
-- \switch_delay0|Add0~9\ = CARRY((!\switch_delay0|Add0~7\) # (!\switch_delay0|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(4),
	datad => VCC,
	cin => \switch_delay0|Add0~7\,
	combout => \switch_delay0|Add0~8_combout\,
	cout => \switch_delay0|Add0~9\);

-- Location: LCCOMB_X29_Y11_N26
\switch_delay0|cnt[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|cnt[4]~1_combout\ = !\switch_delay0|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch_delay0|Add0~8_combout\,
	combout => \switch_delay0|cnt[4]~1_combout\);

-- Location: FF_X30_Y11_N7
\switch_delay0|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	asdata => \switch_delay0|cnt[4]~1_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	sload => VCC,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(4));

-- Location: LCCOMB_X30_Y11_N10
\switch_delay0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~10_combout\ = (\switch_delay0|cnt\(5) & (\switch_delay0|Add0~9\ & VCC)) # (!\switch_delay0|cnt\(5) & (!\switch_delay0|Add0~9\))
-- \switch_delay0|Add0~11\ = CARRY((!\switch_delay0|cnt\(5) & !\switch_delay0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(5),
	datad => VCC,
	cin => \switch_delay0|Add0~9\,
	combout => \switch_delay0|Add0~10_combout\,
	cout => \switch_delay0|Add0~11\);

-- Location: FF_X30_Y11_N11
\switch_delay0|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~10_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(5));

-- Location: LCCOMB_X30_Y11_N12
\switch_delay0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~12_combout\ = (\switch_delay0|cnt\(6) & ((GND) # (!\switch_delay0|Add0~11\))) # (!\switch_delay0|cnt\(6) & (\switch_delay0|Add0~11\ $ (GND)))
-- \switch_delay0|Add0~13\ = CARRY((\switch_delay0|cnt\(6)) # (!\switch_delay0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(6),
	datad => VCC,
	cin => \switch_delay0|Add0~11\,
	combout => \switch_delay0|Add0~12_combout\,
	cout => \switch_delay0|Add0~13\);

-- Location: FF_X30_Y11_N13
\switch_delay0|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~12_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(6));

-- Location: LCCOMB_X30_Y11_N14
\switch_delay0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~14_combout\ = (\switch_delay0|cnt\(7) & (\switch_delay0|Add0~13\ & VCC)) # (!\switch_delay0|cnt\(7) & (!\switch_delay0|Add0~13\))
-- \switch_delay0|Add0~15\ = CARRY((!\switch_delay0|cnt\(7) & !\switch_delay0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(7),
	datad => VCC,
	cin => \switch_delay0|Add0~13\,
	combout => \switch_delay0|Add0~14_combout\,
	cout => \switch_delay0|Add0~15\);

-- Location: FF_X30_Y11_N15
\switch_delay0|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~14_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(7));

-- Location: LCCOMB_X29_Y11_N12
\switch_delay0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Equal0~8_combout\ = (!\switch_delay0|cnt\(6) & (!\switch_delay0|cnt\(5) & (!\switch_delay0|cnt\(7) & \switch_delay0|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(6),
	datab => \switch_delay0|cnt\(5),
	datac => \switch_delay0|cnt\(7),
	datad => \switch_delay0|cnt\(4),
	combout => \switch_delay0|Equal0~8_combout\);

-- Location: LCCOMB_X29_Y11_N2
\switch_delay0|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Equal0~9_combout\ = (\switch_delay0|cnt\(1) & (\switch_delay0|cnt\(2) & (\switch_delay0|cnt\(3) & !\switch_delay0|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(1),
	datab => \switch_delay0|cnt\(2),
	datac => \switch_delay0|cnt\(3),
	datad => \switch_delay0|cnt\(0),
	combout => \switch_delay0|Equal0~9_combout\);

-- Location: LCCOMB_X30_Y11_N16
\switch_delay0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~16_combout\ = (\switch_delay0|cnt\(8) & ((GND) # (!\switch_delay0|Add0~15\))) # (!\switch_delay0|cnt\(8) & (\switch_delay0|Add0~15\ $ (GND)))
-- \switch_delay0|Add0~17\ = CARRY((\switch_delay0|cnt\(8)) # (!\switch_delay0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(8),
	datad => VCC,
	cin => \switch_delay0|Add0~15\,
	combout => \switch_delay0|Add0~16_combout\,
	cout => \switch_delay0|Add0~17\);

-- Location: FF_X30_Y11_N17
\switch_delay0|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~16_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(8));

-- Location: LCCOMB_X30_Y11_N18
\switch_delay0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~18_combout\ = (\switch_delay0|cnt\(9) & (\switch_delay0|Add0~17\ & VCC)) # (!\switch_delay0|cnt\(9) & (!\switch_delay0|Add0~17\))
-- \switch_delay0|Add0~19\ = CARRY((!\switch_delay0|cnt\(9) & !\switch_delay0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(9),
	datad => VCC,
	cin => \switch_delay0|Add0~17\,
	combout => \switch_delay0|Add0~18_combout\,
	cout => \switch_delay0|Add0~19\);

-- Location: FF_X30_Y11_N19
\switch_delay0|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~18_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(9));

-- Location: LCCOMB_X30_Y11_N20
\switch_delay0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~20_combout\ = (\switch_delay0|cnt\(10) & ((GND) # (!\switch_delay0|Add0~19\))) # (!\switch_delay0|cnt\(10) & (\switch_delay0|Add0~19\ $ (GND)))
-- \switch_delay0|Add0~21\ = CARRY((\switch_delay0|cnt\(10)) # (!\switch_delay0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(10),
	datad => VCC,
	cin => \switch_delay0|Add0~19\,
	combout => \switch_delay0|Add0~20_combout\,
	cout => \switch_delay0|Add0~21\);

-- Location: FF_X30_Y11_N21
\switch_delay0|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~20_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(10));

-- Location: LCCOMB_X30_Y11_N22
\switch_delay0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~22_combout\ = (\switch_delay0|cnt\(11) & (\switch_delay0|Add0~21\ & VCC)) # (!\switch_delay0|cnt\(11) & (!\switch_delay0|Add0~21\))
-- \switch_delay0|Add0~23\ = CARRY((!\switch_delay0|cnt\(11) & !\switch_delay0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(11),
	datad => VCC,
	cin => \switch_delay0|Add0~21\,
	combout => \switch_delay0|Add0~22_combout\,
	cout => \switch_delay0|Add0~23\);

-- Location: FF_X30_Y11_N23
\switch_delay0|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~22_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(11));

-- Location: LCCOMB_X29_Y11_N8
\switch_delay0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Equal0~6_combout\ = (!\switch_delay0|cnt\(10) & !\switch_delay0|cnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch_delay0|cnt\(10),
	datad => \switch_delay0|cnt\(11),
	combout => \switch_delay0|Equal0~6_combout\);

-- Location: LCCOMB_X30_Y11_N24
\switch_delay0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~24_combout\ = (\switch_delay0|cnt\(12) & ((GND) # (!\switch_delay0|Add0~23\))) # (!\switch_delay0|cnt\(12) & (\switch_delay0|Add0~23\ $ (GND)))
-- \switch_delay0|Add0~25\ = CARRY((\switch_delay0|cnt\(12)) # (!\switch_delay0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(12),
	datad => VCC,
	cin => \switch_delay0|Add0~23\,
	combout => \switch_delay0|Add0~24_combout\,
	cout => \switch_delay0|Add0~25\);

-- Location: FF_X30_Y11_N25
\switch_delay0|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~24_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(12));

-- Location: LCCOMB_X30_Y11_N26
\switch_delay0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~26_combout\ = (\switch_delay0|cnt\(13) & (\switch_delay0|Add0~25\ & VCC)) # (!\switch_delay0|cnt\(13) & (!\switch_delay0|Add0~25\))
-- \switch_delay0|Add0~27\ = CARRY((!\switch_delay0|cnt\(13) & !\switch_delay0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(13),
	datad => VCC,
	cin => \switch_delay0|Add0~25\,
	combout => \switch_delay0|Add0~26_combout\,
	cout => \switch_delay0|Add0~27\);

-- Location: FF_X30_Y11_N27
\switch_delay0|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~26_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(13));

-- Location: LCCOMB_X30_Y11_N28
\switch_delay0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~28_combout\ = (\switch_delay0|cnt\(14) & ((GND) # (!\switch_delay0|Add0~27\))) # (!\switch_delay0|cnt\(14) & (\switch_delay0|Add0~27\ $ (GND)))
-- \switch_delay0|Add0~29\ = CARRY((\switch_delay0|cnt\(14)) # (!\switch_delay0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(14),
	datad => VCC,
	cin => \switch_delay0|Add0~27\,
	combout => \switch_delay0|Add0~28_combout\,
	cout => \switch_delay0|Add0~29\);

-- Location: FF_X30_Y11_N29
\switch_delay0|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~28_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(14));

-- Location: LCCOMB_X30_Y11_N30
\switch_delay0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~30_combout\ = (\switch_delay0|cnt\(15) & (\switch_delay0|Add0~29\ & VCC)) # (!\switch_delay0|cnt\(15) & (!\switch_delay0|Add0~29\))
-- \switch_delay0|Add0~31\ = CARRY((!\switch_delay0|cnt\(15) & !\switch_delay0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(15),
	datad => VCC,
	cin => \switch_delay0|Add0~29\,
	combout => \switch_delay0|Add0~30_combout\,
	cout => \switch_delay0|Add0~31\);

-- Location: FF_X30_Y11_N31
\switch_delay0|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~30_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(15));

-- Location: LCCOMB_X29_Y11_N10
\switch_delay0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Equal0~5_combout\ = (!\switch_delay0|cnt\(15) & (!\switch_delay0|cnt\(14) & (!\switch_delay0|cnt\(13) & !\switch_delay0|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(15),
	datab => \switch_delay0|cnt\(14),
	datac => \switch_delay0|cnt\(13),
	datad => \switch_delay0|cnt\(12),
	combout => \switch_delay0|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y11_N22
\switch_delay0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Equal0~7_combout\ = (!\switch_delay0|cnt\(8) & (!\switch_delay0|cnt\(9) & (\switch_delay0|Equal0~6_combout\ & \switch_delay0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(8),
	datab => \switch_delay0|cnt\(9),
	datac => \switch_delay0|Equal0~6_combout\,
	datad => \switch_delay0|Equal0~5_combout\,
	combout => \switch_delay0|Equal0~7_combout\);

-- Location: LCCOMB_X30_Y10_N0
\switch_delay0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~32_combout\ = (\switch_delay0|cnt\(16) & ((GND) # (!\switch_delay0|Add0~31\))) # (!\switch_delay0|cnt\(16) & (\switch_delay0|Add0~31\ $ (GND)))
-- \switch_delay0|Add0~33\ = CARRY((\switch_delay0|cnt\(16)) # (!\switch_delay0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(16),
	datad => VCC,
	cin => \switch_delay0|Add0~31\,
	combout => \switch_delay0|Add0~32_combout\,
	cout => \switch_delay0|Add0~33\);

-- Location: FF_X30_Y10_N1
\switch_delay0|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~32_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(16));

-- Location: LCCOMB_X30_Y10_N2
\switch_delay0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~34_combout\ = (\switch_delay0|cnt\(17) & (\switch_delay0|Add0~33\ & VCC)) # (!\switch_delay0|cnt\(17) & (!\switch_delay0|Add0~33\))
-- \switch_delay0|Add0~35\ = CARRY((!\switch_delay0|cnt\(17) & !\switch_delay0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(17),
	datad => VCC,
	cin => \switch_delay0|Add0~33\,
	combout => \switch_delay0|Add0~34_combout\,
	cout => \switch_delay0|Add0~35\);

-- Location: FF_X30_Y10_N3
\switch_delay0|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~34_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(17));

-- Location: LCCOMB_X30_Y10_N4
\switch_delay0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~36_combout\ = (\switch_delay0|cnt\(18) & ((GND) # (!\switch_delay0|Add0~35\))) # (!\switch_delay0|cnt\(18) & (\switch_delay0|Add0~35\ $ (GND)))
-- \switch_delay0|Add0~37\ = CARRY((\switch_delay0|cnt\(18)) # (!\switch_delay0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(18),
	datad => VCC,
	cin => \switch_delay0|Add0~35\,
	combout => \switch_delay0|Add0~36_combout\,
	cout => \switch_delay0|Add0~37\);

-- Location: FF_X30_Y10_N5
\switch_delay0|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~36_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(18));

-- Location: LCCOMB_X30_Y10_N6
\switch_delay0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~38_combout\ = (\switch_delay0|cnt\(19) & (\switch_delay0|Add0~37\ & VCC)) # (!\switch_delay0|cnt\(19) & (!\switch_delay0|Add0~37\))
-- \switch_delay0|Add0~39\ = CARRY((!\switch_delay0|cnt\(19) & !\switch_delay0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(19),
	datad => VCC,
	cin => \switch_delay0|Add0~37\,
	combout => \switch_delay0|Add0~38_combout\,
	cout => \switch_delay0|Add0~39\);

-- Location: FF_X30_Y10_N7
\switch_delay0|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~38_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(19));

-- Location: LCCOMB_X29_Y11_N30
\switch_delay0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Equal0~3_combout\ = (!\switch_delay0|cnt\(18) & (!\switch_delay0|cnt\(16) & (!\switch_delay0|cnt\(19) & !\switch_delay0|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(18),
	datab => \switch_delay0|cnt\(16),
	datac => \switch_delay0|cnt\(19),
	datad => \switch_delay0|cnt\(17),
	combout => \switch_delay0|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y10_N8
\switch_delay0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~40_combout\ = (\switch_delay0|cnt\(20) & ((GND) # (!\switch_delay0|Add0~39\))) # (!\switch_delay0|cnt\(20) & (\switch_delay0|Add0~39\ $ (GND)))
-- \switch_delay0|Add0~41\ = CARRY((\switch_delay0|cnt\(20)) # (!\switch_delay0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(20),
	datad => VCC,
	cin => \switch_delay0|Add0~39\,
	combout => \switch_delay0|Add0~40_combout\,
	cout => \switch_delay0|Add0~41\);

-- Location: FF_X30_Y10_N9
\switch_delay0|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~40_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(20));

-- Location: LCCOMB_X30_Y10_N10
\switch_delay0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~42_combout\ = (\switch_delay0|cnt\(21) & (\switch_delay0|Add0~41\ & VCC)) # (!\switch_delay0|cnt\(21) & (!\switch_delay0|Add0~41\))
-- \switch_delay0|Add0~43\ = CARRY((!\switch_delay0|cnt\(21) & !\switch_delay0|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(21),
	datad => VCC,
	cin => \switch_delay0|Add0~41\,
	combout => \switch_delay0|Add0~42_combout\,
	cout => \switch_delay0|Add0~43\);

-- Location: FF_X30_Y10_N11
\switch_delay0|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~42_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(21));

-- Location: LCCOMB_X30_Y10_N12
\switch_delay0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~44_combout\ = (\switch_delay0|cnt\(22) & ((GND) # (!\switch_delay0|Add0~43\))) # (!\switch_delay0|cnt\(22) & (\switch_delay0|Add0~43\ $ (GND)))
-- \switch_delay0|Add0~45\ = CARRY((\switch_delay0|cnt\(22)) # (!\switch_delay0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(22),
	datad => VCC,
	cin => \switch_delay0|Add0~43\,
	combout => \switch_delay0|Add0~44_combout\,
	cout => \switch_delay0|Add0~45\);

-- Location: FF_X30_Y10_N13
\switch_delay0|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~44_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(22));

-- Location: LCCOMB_X30_Y10_N14
\switch_delay0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~46_combout\ = (\switch_delay0|cnt\(23) & (\switch_delay0|Add0~45\ & VCC)) # (!\switch_delay0|cnt\(23) & (!\switch_delay0|Add0~45\))
-- \switch_delay0|Add0~47\ = CARRY((!\switch_delay0|cnt\(23) & !\switch_delay0|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(23),
	datad => VCC,
	cin => \switch_delay0|Add0~45\,
	combout => \switch_delay0|Add0~46_combout\,
	cout => \switch_delay0|Add0~47\);

-- Location: FF_X30_Y10_N15
\switch_delay0|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~46_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(23));

-- Location: LCCOMB_X30_Y10_N16
\switch_delay0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~48_combout\ = (\switch_delay0|cnt\(24) & ((GND) # (!\switch_delay0|Add0~47\))) # (!\switch_delay0|cnt\(24) & (\switch_delay0|Add0~47\ $ (GND)))
-- \switch_delay0|Add0~49\ = CARRY((\switch_delay0|cnt\(24)) # (!\switch_delay0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(24),
	datad => VCC,
	cin => \switch_delay0|Add0~47\,
	combout => \switch_delay0|Add0~48_combout\,
	cout => \switch_delay0|Add0~49\);

-- Location: FF_X30_Y10_N17
\switch_delay0|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~48_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(24));

-- Location: LCCOMB_X30_Y10_N18
\switch_delay0|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~50_combout\ = (\switch_delay0|cnt\(25) & (\switch_delay0|Add0~49\ & VCC)) # (!\switch_delay0|cnt\(25) & (!\switch_delay0|Add0~49\))
-- \switch_delay0|Add0~51\ = CARRY((!\switch_delay0|cnt\(25) & !\switch_delay0|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(25),
	datad => VCC,
	cin => \switch_delay0|Add0~49\,
	combout => \switch_delay0|Add0~50_combout\,
	cout => \switch_delay0|Add0~51\);

-- Location: FF_X30_Y10_N19
\switch_delay0|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~50_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(25));

-- Location: LCCOMB_X30_Y10_N20
\switch_delay0|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~52_combout\ = (\switch_delay0|cnt\(26) & ((GND) # (!\switch_delay0|Add0~51\))) # (!\switch_delay0|cnt\(26) & (\switch_delay0|Add0~51\ $ (GND)))
-- \switch_delay0|Add0~53\ = CARRY((\switch_delay0|cnt\(26)) # (!\switch_delay0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(26),
	datad => VCC,
	cin => \switch_delay0|Add0~51\,
	combout => \switch_delay0|Add0~52_combout\,
	cout => \switch_delay0|Add0~53\);

-- Location: FF_X30_Y10_N21
\switch_delay0|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~52_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(26));

-- Location: LCCOMB_X30_Y10_N22
\switch_delay0|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~54_combout\ = (\switch_delay0|cnt\(27) & (\switch_delay0|Add0~53\ & VCC)) # (!\switch_delay0|cnt\(27) & (!\switch_delay0|Add0~53\))
-- \switch_delay0|Add0~55\ = CARRY((!\switch_delay0|cnt\(27) & !\switch_delay0|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(27),
	datad => VCC,
	cin => \switch_delay0|Add0~53\,
	combout => \switch_delay0|Add0~54_combout\,
	cout => \switch_delay0|Add0~55\);

-- Location: FF_X30_Y10_N23
\switch_delay0|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~54_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(27));

-- Location: LCCOMB_X30_Y10_N24
\switch_delay0|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~56_combout\ = (\switch_delay0|cnt\(28) & ((GND) # (!\switch_delay0|Add0~55\))) # (!\switch_delay0|cnt\(28) & (\switch_delay0|Add0~55\ $ (GND)))
-- \switch_delay0|Add0~57\ = CARRY((\switch_delay0|cnt\(28)) # (!\switch_delay0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(28),
	datad => VCC,
	cin => \switch_delay0|Add0~55\,
	combout => \switch_delay0|Add0~56_combout\,
	cout => \switch_delay0|Add0~57\);

-- Location: FF_X30_Y10_N25
\switch_delay0|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~56_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(28));

-- Location: LCCOMB_X30_Y10_N26
\switch_delay0|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~58_combout\ = (\switch_delay0|cnt\(29) & (\switch_delay0|Add0~57\ & VCC)) # (!\switch_delay0|cnt\(29) & (!\switch_delay0|Add0~57\))
-- \switch_delay0|Add0~59\ = CARRY((!\switch_delay0|cnt\(29) & !\switch_delay0|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(29),
	datad => VCC,
	cin => \switch_delay0|Add0~57\,
	combout => \switch_delay0|Add0~58_combout\,
	cout => \switch_delay0|Add0~59\);

-- Location: FF_X30_Y10_N27
\switch_delay0|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~58_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(29));

-- Location: LCCOMB_X30_Y10_N28
\switch_delay0|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~60_combout\ = (\switch_delay0|cnt\(30) & ((GND) # (!\switch_delay0|Add0~59\))) # (!\switch_delay0|cnt\(30) & (\switch_delay0|Add0~59\ $ (GND)))
-- \switch_delay0|Add0~61\ = CARRY((\switch_delay0|cnt\(30)) # (!\switch_delay0|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|cnt\(30),
	datad => VCC,
	cin => \switch_delay0|Add0~59\,
	combout => \switch_delay0|Add0~60_combout\,
	cout => \switch_delay0|Add0~61\);

-- Location: FF_X30_Y10_N29
\switch_delay0|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~60_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(30));

-- Location: LCCOMB_X30_Y10_N30
\switch_delay0|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Add0~62_combout\ = \switch_delay0|cnt\(31) $ (!\switch_delay0|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(31),
	cin => \switch_delay0|Add0~61\,
	combout => \switch_delay0|Add0~62_combout\);

-- Location: FF_X30_Y10_N31
\switch_delay0|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_10ms~clkctrl_outclk\,
	d => \switch_delay0|Add0~62_combout\,
	clrn => \ALT_INV_beef_ctrl~0clkctrl_outclk\,
	ena => \switch_delay0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \switch_delay0|cnt\(31));

-- Location: LCCOMB_X29_Y11_N20
\switch_delay0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Equal0~0_combout\ = (!\switch_delay0|cnt\(31) & (!\switch_delay0|cnt\(28) & (!\switch_delay0|cnt\(30) & !\switch_delay0|cnt\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(31),
	datab => \switch_delay0|cnt\(28),
	datac => \switch_delay0|cnt\(30),
	datad => \switch_delay0|cnt\(29),
	combout => \switch_delay0|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y11_N4
\switch_delay0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Equal0~2_combout\ = (!\switch_delay0|cnt\(21) & (!\switch_delay0|cnt\(23) & (!\switch_delay0|cnt\(20) & !\switch_delay0|cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(21),
	datab => \switch_delay0|cnt\(23),
	datac => \switch_delay0|cnt\(20),
	datad => \switch_delay0|cnt\(22),
	combout => \switch_delay0|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y11_N18
\switch_delay0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Equal0~1_combout\ = (!\switch_delay0|cnt\(25) & (!\switch_delay0|cnt\(26) & (!\switch_delay0|cnt\(27) & !\switch_delay0|cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|cnt\(25),
	datab => \switch_delay0|cnt\(26),
	datac => \switch_delay0|cnt\(27),
	datad => \switch_delay0|cnt\(24),
	combout => \switch_delay0|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y11_N28
\switch_delay0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Equal0~4_combout\ = (\switch_delay0|Equal0~3_combout\ & (\switch_delay0|Equal0~0_combout\ & (\switch_delay0|Equal0~2_combout\ & \switch_delay0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|Equal0~3_combout\,
	datab => \switch_delay0|Equal0~0_combout\,
	datac => \switch_delay0|Equal0~2_combout\,
	datad => \switch_delay0|Equal0~1_combout\,
	combout => \switch_delay0|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y11_N0
\switch_delay0|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|Equal0~10_combout\ = (((!\switch_delay0|Equal0~4_combout\) # (!\switch_delay0|Equal0~7_combout\)) # (!\switch_delay0|Equal0~9_combout\)) # (!\switch_delay0|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_delay0|Equal0~8_combout\,
	datab => \switch_delay0|Equal0~9_combout\,
	datac => \switch_delay0|Equal0~7_combout\,
	datad => \switch_delay0|Equal0~4_combout\,
	combout => \switch_delay0|Equal0~10_combout\);

-- Location: LCCOMB_X30_Y14_N16
\switch_delay0|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \switch_delay0|output~0_combout\ = (\clock_10ms|clk_10ms~q\ & ((\switch_delay0|Equal0~10_combout\) # (\beef_ctrl~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch_delay0|Equal0~10_combout\,
	datac => \beef_ctrl~0_combout\,
	datad => \clock_10ms|clk_10ms~q\,
	combout => \switch_delay0|output~0_combout\);

-- Location: LCCOMB_X5_Y11_N2
\clock_10ms|clk_ms~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clock_10ms|clk_ms~feeder_combout\ = \clock_10ms|sig_ms~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_10ms|sig_ms~q\,
	combout => \clock_10ms|clk_ms~feeder_combout\);

-- Location: FF_X5_Y11_N3
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

-- Location: CLKCTRL_G0
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

-- Location: LCCOMB_X32_Y12_N2
\xd_state|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|sum~2_combout\ = (!\stop_key~input_o\ & \xd_state|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop_key~input_o\,
	datad => \xd_state|Add0~6_combout\,
	combout => \xd_state|sum~2_combout\);

-- Location: FF_X32_Y12_N3
\xd_state|sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_state|sum~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_state|sum\(3));

-- Location: LCCOMB_X32_Y12_N6
\xd_state|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|Add0~0_combout\ = \xd_state|sum\(0) $ (GND)
-- \xd_state|Add0~1\ = CARRY(!\xd_state|sum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xd_state|sum\(0),
	datad => VCC,
	combout => \xd_state|Add0~0_combout\,
	cout => \xd_state|Add0~1\);

-- Location: LCCOMB_X32_Y12_N12
\xd_state|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|Add0~6_combout\ = (\xd_state|sum\(3) & (!\xd_state|Add0~5\)) # (!\xd_state|sum\(3) & ((\xd_state|Add0~5\) # (GND)))
-- \xd_state|Add0~7\ = CARRY((!\xd_state|Add0~5\) # (!\xd_state|sum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xd_state|sum\(3),
	datad => VCC,
	cin => \xd_state|Add0~5\,
	combout => \xd_state|Add0~6_combout\,
	cout => \xd_state|Add0~7\);

-- Location: LCCOMB_X32_Y12_N14
\xd_state|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|Add0~8_combout\ = (\xd_state|sum\(4) & (\xd_state|Add0~7\ $ (GND))) # (!\xd_state|sum\(4) & (!\xd_state|Add0~7\ & VCC))
-- \xd_state|Add0~9\ = CARRY((\xd_state|sum\(4) & !\xd_state|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xd_state|sum\(4),
	datad => VCC,
	cin => \xd_state|Add0~7\,
	combout => \xd_state|Add0~8_combout\,
	cout => \xd_state|Add0~9\);

-- Location: LCCOMB_X32_Y12_N20
\xd_state|sum~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|sum~6_combout\ = (!\stop_key~input_o\ & \xd_state|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stop_key~input_o\,
	datac => \xd_state|Add0~8_combout\,
	combout => \xd_state|sum~6_combout\);

-- Location: FF_X32_Y12_N21
\xd_state|sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_state|sum~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_state|sum\(4));

-- Location: LCCOMB_X32_Y12_N4
\xd_state|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|sum~0_combout\ = (\xd_state|sum\(2)) # (((\xd_state|sum\(3)) # (!\xd_state|sum\(1))) # (!\xd_state|sum\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xd_state|sum\(2),
	datab => \xd_state|sum\(0),
	datac => \xd_state|sum\(1),
	datad => \xd_state|sum\(3),
	combout => \xd_state|sum~0_combout\);

-- Location: LCCOMB_X32_Y12_N16
\xd_state|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|Add0~10_combout\ = \xd_state|Add0~9\ $ (\xd_state|sum\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \xd_state|sum\(5),
	cin => \xd_state|Add0~9\,
	combout => \xd_state|Add0~10_combout\);

-- Location: LCCOMB_X32_Y12_N0
\xd_state|sum~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|sum~7_combout\ = (!\stop_key~input_o\ & \xd_state|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop_key~input_o\,
	datad => \xd_state|Add0~10_combout\,
	combout => \xd_state|sum~7_combout\);

-- Location: FF_X32_Y12_N1
\xd_state|sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_state|sum~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_state|sum\(5));

-- Location: LCCOMB_X32_Y12_N24
\xd_state|sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|sum~1_combout\ = (\xd_state|Add0~0_combout\ & (((\xd_state|sum~0_combout\) # (!\xd_state|sum\(5))) # (!\xd_state|sum\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xd_state|Add0~0_combout\,
	datab => \xd_state|sum\(4),
	datac => \xd_state|sum~0_combout\,
	datad => \xd_state|sum\(5),
	combout => \xd_state|sum~1_combout\);

-- Location: LCCOMB_X32_Y12_N26
\xd_state|sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|sum~5_combout\ = (!\stop_key~input_o\ & !\xd_state|sum~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop_key~input_o\,
	datad => \xd_state|sum~1_combout\,
	combout => \xd_state|sum~5_combout\);

-- Location: FF_X32_Y12_N27
\xd_state|sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_state|sum~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_state|sum\(0));

-- Location: LCCOMB_X32_Y12_N8
\xd_state|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|Add0~2_combout\ = (\xd_state|sum\(1) & (!\xd_state|Add0~1\)) # (!\xd_state|sum\(1) & ((\xd_state|Add0~1\) # (GND)))
-- \xd_state|Add0~3\ = CARRY((!\xd_state|Add0~1\) # (!\xd_state|sum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xd_state|sum\(1),
	datad => VCC,
	cin => \xd_state|Add0~1\,
	combout => \xd_state|Add0~2_combout\,
	cout => \xd_state|Add0~3\);

-- Location: LCCOMB_X32_Y12_N22
\xd_state|sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|sum~4_combout\ = (!\stop_key~input_o\ & \xd_state|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stop_key~input_o\,
	datac => \xd_state|Add0~2_combout\,
	combout => \xd_state|sum~4_combout\);

-- Location: FF_X32_Y12_N23
\xd_state|sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_state|sum~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_state|sum\(1));

-- Location: LCCOMB_X32_Y12_N10
\xd_state|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|Add0~4_combout\ = (\xd_state|sum\(2) & (\xd_state|Add0~3\ $ (GND))) # (!\xd_state|sum\(2) & (!\xd_state|Add0~3\ & VCC))
-- \xd_state|Add0~5\ = CARRY((\xd_state|sum\(2) & !\xd_state|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xd_state|sum\(2),
	datad => VCC,
	cin => \xd_state|Add0~3\,
	combout => \xd_state|Add0~4_combout\,
	cout => \xd_state|Add0~5\);

-- Location: LCCOMB_X32_Y12_N30
\xd_state|sum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|sum~3_combout\ = (!\stop_key~input_o\ & \xd_state|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stop_key~input_o\,
	datad => \xd_state|Add0~4_combout\,
	combout => \xd_state|sum~3_combout\);

-- Location: FF_X32_Y12_N31
\xd_state|sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_state|sum~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_state|sum\(2));

-- Location: LCCOMB_X32_Y12_N28
\xd_state|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|y~0_combout\ = (\xd_state|Add0~4_combout\) # ((\stop_key~input_o\) # ((!\xd_state|Add0~10_combout\) # (!\xd_state|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xd_state|Add0~4_combout\,
	datab => \stop_key~input_o\,
	datac => \xd_state|Add0~2_combout\,
	datad => \xd_state|Add0~10_combout\,
	combout => \xd_state|y~0_combout\);

-- Location: LCCOMB_X32_Y12_N18
\xd_state|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_state|y~1_combout\ = (\xd_state|Add0~6_combout\) # ((\xd_state|sum~1_combout\) # ((\xd_state|y~0_combout\) # (!\xd_state|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xd_state|Add0~6_combout\,
	datab => \xd_state|sum~1_combout\,
	datac => \xd_state|Add0~8_combout\,
	datad => \xd_state|y~0_combout\,
	combout => \xd_state|y~1_combout\);

-- Location: FF_X32_Y12_N19
\xd_state|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_state|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_state|y~q\);

-- Location: LCCOMB_X29_Y12_N24
\inverter0|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inverter0|temp~0_combout\ = !\inverter0|temp~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inverter0|temp~q\,
	combout => \inverter0|temp~0_combout\);

-- Location: FF_X29_Y12_N11
\inverter0|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_state|ALT_INV_y~q\,
	asdata => \inverter0|temp~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inverter0|temp~q\);

-- Location: LCCOMB_X30_Y14_N22
stop_and_clk : cycloneive_lcell_comb
-- Equation(s):
-- \stop_and_clk~combout\ = LCELL((!\clock_10ms|clk_10ms~q\) # (!\inverter0|temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inverter0|temp~q\,
	datad => \clock_10ms|clk_10ms~q\,
	combout => \stop_and_clk~combout\);

-- Location: LCCOMB_X24_Y12_N28
\cnt0|temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt0|temp~3_combout\ = (\cnt0|temp\(0) & (\cnt0|temp\(2) & (!\cnt0|temp\(3) & \cnt0|temp\(1)))) # (!\cnt0|temp\(0) & (!\cnt0|temp\(2) & (\cnt0|temp\(3) & !\cnt0|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(0),
	datab => \cnt0|temp\(2),
	datac => \cnt0|temp\(3),
	datad => \cnt0|temp\(1),
	combout => \cnt0|temp~3_combout\);

-- Location: LCCOMB_X28_Y12_N6
\xd_clear|sum~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|sum~7_combout\ = (!\rst_key~input_o\ & \xd_clear|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_key~input_o\,
	datad => \xd_clear|Add0~10_combout\,
	combout => \xd_clear|sum~7_combout\);

-- Location: FF_X28_Y12_N7
\xd_clear|sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_clear|sum~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_clear|sum\(5));

-- Location: LCCOMB_X28_Y12_N4
\xd_clear|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|sum~0_combout\ = (\xd_clear|sum\(2)) # (((\xd_clear|sum\(3)) # (!\xd_clear|sum\(0))) # (!\xd_clear|sum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xd_clear|sum\(2),
	datab => \xd_clear|sum\(1),
	datac => \xd_clear|sum\(0),
	datad => \xd_clear|sum\(3),
	combout => \xd_clear|sum~0_combout\);

-- Location: LCCOMB_X28_Y12_N10
\xd_clear|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|Add0~0_combout\ = \xd_clear|sum\(0) $ (GND)
-- \xd_clear|Add0~1\ = CARRY(!\xd_clear|sum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xd_clear|sum\(0),
	datad => VCC,
	combout => \xd_clear|Add0~0_combout\,
	cout => \xd_clear|Add0~1\);

-- Location: LCCOMB_X28_Y12_N2
\xd_clear|sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|sum~1_combout\ = (\xd_clear|Add0~0_combout\ & (((\xd_clear|sum~0_combout\) # (!\xd_clear|sum\(4))) # (!\xd_clear|sum\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xd_clear|sum\(5),
	datab => \xd_clear|sum\(4),
	datac => \xd_clear|sum~0_combout\,
	datad => \xd_clear|Add0~0_combout\,
	combout => \xd_clear|sum~1_combout\);

-- Location: LCCOMB_X28_Y12_N22
\xd_clear|sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|sum~5_combout\ = (!\rst_key~input_o\ & !\xd_clear|sum~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_key~input_o\,
	datad => \xd_clear|sum~1_combout\,
	combout => \xd_clear|sum~5_combout\);

-- Location: FF_X28_Y12_N23
\xd_clear|sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_clear|sum~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_clear|sum\(0));

-- Location: LCCOMB_X28_Y12_N12
\xd_clear|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|Add0~2_combout\ = (\xd_clear|sum\(1) & (!\xd_clear|Add0~1\)) # (!\xd_clear|sum\(1) & ((\xd_clear|Add0~1\) # (GND)))
-- \xd_clear|Add0~3\ = CARRY((!\xd_clear|Add0~1\) # (!\xd_clear|sum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xd_clear|sum\(1),
	datad => VCC,
	cin => \xd_clear|Add0~1\,
	combout => \xd_clear|Add0~2_combout\,
	cout => \xd_clear|Add0~3\);

-- Location: LCCOMB_X28_Y12_N30
\xd_clear|sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|sum~4_combout\ = (!\rst_key~input_o\ & \xd_clear|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_key~input_o\,
	datad => \xd_clear|Add0~2_combout\,
	combout => \xd_clear|sum~4_combout\);

-- Location: FF_X28_Y12_N31
\xd_clear|sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_clear|sum~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_clear|sum\(1));

-- Location: LCCOMB_X28_Y12_N14
\xd_clear|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|Add0~4_combout\ = (\xd_clear|sum\(2) & (\xd_clear|Add0~3\ $ (GND))) # (!\xd_clear|sum\(2) & (!\xd_clear|Add0~3\ & VCC))
-- \xd_clear|Add0~5\ = CARRY((\xd_clear|sum\(2) & !\xd_clear|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xd_clear|sum\(2),
	datad => VCC,
	cin => \xd_clear|Add0~3\,
	combout => \xd_clear|Add0~4_combout\,
	cout => \xd_clear|Add0~5\);

-- Location: LCCOMB_X28_Y12_N26
\xd_clear|sum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|sum~3_combout\ = (!\rst_key~input_o\ & \xd_clear|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_key~input_o\,
	datab => \xd_clear|Add0~4_combout\,
	combout => \xd_clear|sum~3_combout\);

-- Location: FF_X28_Y12_N27
\xd_clear|sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_clear|sum~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_clear|sum\(2));

-- Location: LCCOMB_X28_Y12_N16
\xd_clear|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|Add0~6_combout\ = (\xd_clear|sum\(3) & (!\xd_clear|Add0~5\)) # (!\xd_clear|sum\(3) & ((\xd_clear|Add0~5\) # (GND)))
-- \xd_clear|Add0~7\ = CARRY((!\xd_clear|Add0~5\) # (!\xd_clear|sum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xd_clear|sum\(3),
	datad => VCC,
	cin => \xd_clear|Add0~5\,
	combout => \xd_clear|Add0~6_combout\,
	cout => \xd_clear|Add0~7\);

-- Location: LCCOMB_X28_Y12_N8
\xd_clear|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|sum~2_combout\ = (!\rst_key~input_o\ & \xd_clear|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_key~input_o\,
	datad => \xd_clear|Add0~6_combout\,
	combout => \xd_clear|sum~2_combout\);

-- Location: FF_X28_Y12_N9
\xd_clear|sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_clear|sum~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_clear|sum\(3));

-- Location: LCCOMB_X28_Y12_N18
\xd_clear|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|Add0~8_combout\ = (\xd_clear|sum\(4) & (\xd_clear|Add0~7\ $ (GND))) # (!\xd_clear|sum\(4) & (!\xd_clear|Add0~7\ & VCC))
-- \xd_clear|Add0~9\ = CARRY((\xd_clear|sum\(4) & !\xd_clear|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xd_clear|sum\(4),
	datad => VCC,
	cin => \xd_clear|Add0~7\,
	combout => \xd_clear|Add0~8_combout\,
	cout => \xd_clear|Add0~9\);

-- Location: LCCOMB_X28_Y12_N0
\xd_clear|sum~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|sum~6_combout\ = (!\rst_key~input_o\ & \xd_clear|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst_key~input_o\,
	datad => \xd_clear|Add0~8_combout\,
	combout => \xd_clear|sum~6_combout\);

-- Location: FF_X28_Y12_N1
\xd_clear|sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_clear|sum~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_clear|sum\(4));

-- Location: LCCOMB_X28_Y12_N20
\xd_clear|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|Add0~10_combout\ = \xd_clear|Add0~9\ $ (\xd_clear|sum\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \xd_clear|sum\(5),
	cin => \xd_clear|Add0~9\,
	combout => \xd_clear|Add0~10_combout\);

-- Location: LCCOMB_X28_Y12_N28
\xd_clear|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|y~0_combout\ = (\rst_key~input_o\) # ((\xd_clear|sum~1_combout\) # ((\xd_clear|Add0~4_combout\) # (!\xd_clear|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_key~input_o\,
	datab => \xd_clear|sum~1_combout\,
	datac => \xd_clear|Add0~4_combout\,
	datad => \xd_clear|Add0~2_combout\,
	combout => \xd_clear|y~0_combout\);

-- Location: LCCOMB_X28_Y12_N24
\xd_clear|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_clear|y~1_combout\ = ((\xd_clear|Add0~6_combout\) # ((\xd_clear|y~0_combout\) # (!\xd_clear|Add0~8_combout\))) # (!\xd_clear|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xd_clear|Add0~10_combout\,
	datab => \xd_clear|Add0~6_combout\,
	datac => \xd_clear|Add0~8_combout\,
	datad => \xd_clear|y~0_combout\,
	combout => \xd_clear|y~1_combout\);

-- Location: FF_X28_Y12_N25
\xd_clear|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~q\,
	d => \xd_clear|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_clear|y~q\);

-- Location: LCCOMB_X29_Y12_N12
rst_or_inverterout : cycloneive_lcell_comb
-- Equation(s):
-- \rst_or_inverterout~combout\ = (!\inverter0|temp~q\ & !\xd_clear|y~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datad => \xd_clear|y~q\,
	combout => \rst_or_inverterout~combout\);

-- Location: FF_X24_Y12_N29
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

-- Location: LCCOMB_X24_Y12_N4
\cnt0|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt0|temp~0_combout\ = (!\cnt0|temp\(0) & (((!\cnt0|temp\(2) & !\cnt0|temp\(1))) # (!\cnt0|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(2),
	datab => \cnt0|temp\(3),
	datac => \cnt0|temp\(0),
	datad => \cnt0|temp\(1),
	combout => \cnt0|temp~0_combout\);

-- Location: FF_X24_Y12_N11
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

-- Location: LCCOMB_X24_Y12_N2
\cnt0|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt0|temp~1_combout\ = (!\cnt0|temp\(3) & (\cnt0|temp\(1) $ (\cnt0|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(1),
	datac => \cnt0|temp\(0),
	datad => \cnt0|temp\(3),
	combout => \cnt0|temp~1_combout\);

-- Location: FF_X24_Y12_N13
\cnt0|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stop_and_clk~combout\,
	asdata => \cnt0|temp~1_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt0|temp\(1));

-- Location: LCCOMB_X24_Y12_N30
\cnt0|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt0|temp~2_combout\ = (!\cnt0|temp\(3) & (\cnt0|temp\(2) $ (((\cnt0|temp\(1) & \cnt0|temp\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(1),
	datab => \cnt0|temp\(3),
	datac => \cnt0|temp\(2),
	datad => \cnt0|temp\(0),
	combout => \cnt0|temp~2_combout\);

-- Location: FF_X24_Y12_N31
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

-- Location: LCCOMB_X24_Y12_N12
\cnt0|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt0|Equal0~combout\ = LCELL((\cnt0|temp\(2)) # (((\cnt0|temp\(1)) # (!\cnt0|temp\(3))) # (!\cnt0|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(2),
	datab => \cnt0|temp\(0),
	datac => \cnt0|temp\(1),
	datad => \cnt0|temp\(3),
	combout => \cnt0|Equal0~combout\);

-- Location: LCCOMB_X23_Y12_N24
\cnt1|temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1|temp~3_combout\ = (\cnt1|temp\(2) & (\cnt1|temp\(1) & (!\cnt1|temp\(3) & \cnt1|temp\(0)))) # (!\cnt1|temp\(2) & (!\cnt1|temp\(1) & (\cnt1|temp\(3) & !\cnt1|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(2),
	datab => \cnt1|temp\(1),
	datac => \cnt1|temp\(3),
	datad => \cnt1|temp\(0),
	combout => \cnt1|temp~3_combout\);

-- Location: FF_X23_Y12_N25
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

-- Location: LCCOMB_X23_Y12_N22
\cnt1|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1|temp~2_combout\ = (!\cnt1|temp\(3) & (\cnt1|temp\(2) $ (((\cnt1|temp\(0) & \cnt1|temp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(0),
	datab => \cnt1|temp\(1),
	datac => \cnt1|temp\(2),
	datad => \cnt1|temp\(3),
	combout => \cnt1|temp~2_combout\);

-- Location: FF_X23_Y12_N23
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

-- Location: LCCOMB_X23_Y12_N28
\cnt1|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1|temp~0_combout\ = (!\cnt1|temp\(0) & (((!\cnt1|temp\(1) & !\cnt1|temp\(2))) # (!\cnt1|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(1),
	datab => \cnt1|temp\(0),
	datac => \cnt1|temp\(2),
	datad => \cnt1|temp\(3),
	combout => \cnt1|temp~0_combout\);

-- Location: FF_X23_Y12_N31
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

-- Location: LCCOMB_X23_Y12_N18
\cnt1|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1|temp~1_combout\ = (!\cnt1|temp\(3) & (\cnt1|temp\(0) $ (\cnt1|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt1|temp\(0),
	datac => \cnt1|temp\(1),
	datad => \cnt1|temp\(3),
	combout => \cnt1|temp~1_combout\);

-- Location: FF_X23_Y12_N9
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

-- Location: LCCOMB_X25_Y12_N6
\cnt1|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt1|Equal0~combout\ = LCELL((\cnt1|temp\(1)) # (((\cnt1|temp\(2)) # (!\cnt1|temp\(0))) # (!\cnt1|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(1),
	datab => \cnt1|temp\(3),
	datac => \cnt1|temp\(0),
	datad => \cnt1|temp\(2),
	combout => \cnt1|Equal0~combout\);

-- Location: LCCOMB_X26_Y12_N20
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

-- Location: FF_X26_Y12_N21
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

-- Location: LCCOMB_X26_Y12_N4
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

-- Location: FF_X26_Y12_N5
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

-- Location: LCCOMB_X26_Y12_N12
\cnt2|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt2|temp~1_combout\ = (!\cnt2|temp\(3) & (\cnt2|temp\(0) $ (\cnt2|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt2|temp\(0),
	datac => \cnt2|temp\(3),
	datad => \cnt2|temp\(1),
	combout => \cnt2|temp~1_combout\);

-- Location: FF_X26_Y12_N25
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

-- Location: LCCOMB_X26_Y12_N28
\cnt2|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt2|temp~0_combout\ = (!\cnt2|temp\(0) & (((!\cnt2|temp\(1) & !\cnt2|temp\(2))) # (!\cnt2|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(1),
	datab => \cnt2|temp\(0),
	datac => \cnt2|temp\(3),
	datad => \cnt2|temp\(2),
	combout => \cnt2|temp~0_combout\);

-- Location: LCCOMB_X26_Y12_N14
\cnt2|temp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt2|temp[0]~feeder_combout\ = \cnt2|temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp~0_combout\,
	combout => \cnt2|temp[0]~feeder_combout\);

-- Location: FF_X26_Y12_N15
\cnt2|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cnt1|Equal0~combout\,
	d => \cnt2|temp[0]~feeder_combout\,
	clrn => \ALT_INV_rst_or_inverterout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt2|temp\(0));

-- Location: LCCOMB_X33_Y13_N12
\xd_save|sum~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|sum~6_combout\ = (!\save_key~input_o\ & \xd_save|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \save_key~input_o\,
	datac => \xd_save|Add0~8_combout\,
	combout => \xd_save|sum~6_combout\);

-- Location: FF_X33_Y13_N13
\xd_save|sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_save|sum~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_save|sum\(4));

-- Location: LCCOMB_X33_Y13_N16
\xd_save|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|sum~0_combout\ = (\xd_save|sum\(3)) # (((\xd_save|sum\(2)) # (!\xd_save|sum\(0))) # (!\xd_save|sum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xd_save|sum\(3),
	datab => \xd_save|sum\(1),
	datac => \xd_save|sum\(2),
	datad => \xd_save|sum\(0),
	combout => \xd_save|sum~0_combout\);

-- Location: LCCOMB_X33_Y13_N26
\xd_save|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|Add0~8_combout\ = (\xd_save|sum\(4) & (\xd_save|Add0~7\ $ (GND))) # (!\xd_save|sum\(4) & (!\xd_save|Add0~7\ & VCC))
-- \xd_save|Add0~9\ = CARRY((\xd_save|sum\(4) & !\xd_save|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xd_save|sum\(4),
	datad => VCC,
	cin => \xd_save|Add0~7\,
	combout => \xd_save|Add0~8_combout\,
	cout => \xd_save|Add0~9\);

-- Location: LCCOMB_X33_Y13_N28
\xd_save|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|Add0~10_combout\ = \xd_save|sum\(5) $ (\xd_save|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xd_save|sum\(5),
	cin => \xd_save|Add0~9\,
	combout => \xd_save|Add0~10_combout\);

-- Location: LCCOMB_X33_Y13_N14
\xd_save|sum~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|sum~7_combout\ = (!\save_key~input_o\ & \xd_save|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \save_key~input_o\,
	datad => \xd_save|Add0~10_combout\,
	combout => \xd_save|sum~7_combout\);

-- Location: FF_X33_Y13_N15
\xd_save|sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_save|sum~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_save|sum\(5));

-- Location: LCCOMB_X33_Y13_N18
\xd_save|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|Add0~0_combout\ = \xd_save|sum\(0) $ (GND)
-- \xd_save|Add0~1\ = CARRY(!\xd_save|sum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xd_save|sum\(0),
	datad => VCC,
	combout => \xd_save|Add0~0_combout\,
	cout => \xd_save|Add0~1\);

-- Location: LCCOMB_X33_Y13_N4
\xd_save|sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|sum~1_combout\ = (\xd_save|Add0~0_combout\ & (((\xd_save|sum~0_combout\) # (!\xd_save|sum\(5))) # (!\xd_save|sum\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xd_save|sum\(4),
	datab => \xd_save|sum~0_combout\,
	datac => \xd_save|sum\(5),
	datad => \xd_save|Add0~0_combout\,
	combout => \xd_save|sum~1_combout\);

-- Location: LCCOMB_X33_Y13_N6
\xd_save|sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|sum~5_combout\ = (!\save_key~input_o\ & !\xd_save|sum~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \save_key~input_o\,
	datac => \xd_save|sum~1_combout\,
	combout => \xd_save|sum~5_combout\);

-- Location: FF_X33_Y13_N7
\xd_save|sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_save|sum~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_save|sum\(0));

-- Location: LCCOMB_X33_Y13_N20
\xd_save|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|Add0~2_combout\ = (\xd_save|sum\(1) & (!\xd_save|Add0~1\)) # (!\xd_save|sum\(1) & ((\xd_save|Add0~1\) # (GND)))
-- \xd_save|Add0~3\ = CARRY((!\xd_save|Add0~1\) # (!\xd_save|sum\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xd_save|sum\(1),
	datad => VCC,
	cin => \xd_save|Add0~1\,
	combout => \xd_save|Add0~2_combout\,
	cout => \xd_save|Add0~3\);

-- Location: LCCOMB_X33_Y13_N8
\xd_save|sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|sum~4_combout\ = (!\save_key~input_o\ & \xd_save|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \save_key~input_o\,
	datad => \xd_save|Add0~2_combout\,
	combout => \xd_save|sum~4_combout\);

-- Location: FF_X33_Y13_N9
\xd_save|sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_save|sum~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_save|sum\(1));

-- Location: LCCOMB_X33_Y13_N22
\xd_save|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|Add0~4_combout\ = (\xd_save|sum\(2) & (\xd_save|Add0~3\ $ (GND))) # (!\xd_save|sum\(2) & (!\xd_save|Add0~3\ & VCC))
-- \xd_save|Add0~5\ = CARRY((\xd_save|sum\(2) & !\xd_save|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \xd_save|sum\(2),
	datad => VCC,
	cin => \xd_save|Add0~3\,
	combout => \xd_save|Add0~4_combout\,
	cout => \xd_save|Add0~5\);

-- Location: LCCOMB_X33_Y13_N2
\xd_save|sum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|sum~3_combout\ = (!\save_key~input_o\ & \xd_save|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \save_key~input_o\,
	datad => \xd_save|Add0~4_combout\,
	combout => \xd_save|sum~3_combout\);

-- Location: FF_X33_Y13_N3
\xd_save|sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_save|sum~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_save|sum\(2));

-- Location: LCCOMB_X33_Y13_N24
\xd_save|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|Add0~6_combout\ = (\xd_save|sum\(3) & (!\xd_save|Add0~5\)) # (!\xd_save|sum\(3) & ((\xd_save|Add0~5\) # (GND)))
-- \xd_save|Add0~7\ = CARRY((!\xd_save|Add0~5\) # (!\xd_save|sum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \xd_save|sum\(3),
	datad => VCC,
	cin => \xd_save|Add0~5\,
	combout => \xd_save|Add0~6_combout\,
	cout => \xd_save|Add0~7\);

-- Location: LCCOMB_X33_Y13_N10
\xd_save|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|sum~2_combout\ = (!\save_key~input_o\ & \xd_save|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \save_key~input_o\,
	datad => \xd_save|Add0~6_combout\,
	combout => \xd_save|sum~2_combout\);

-- Location: FF_X33_Y13_N11
\xd_save|sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_save|sum~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_save|sum\(3));

-- Location: LCCOMB_X33_Y13_N0
\xd_save|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|y~0_combout\ = (\save_key~input_o\) # ((\xd_save|sum~1_combout\) # ((\xd_save|Add0~4_combout\) # (!\xd_save|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \save_key~input_o\,
	datab => \xd_save|sum~1_combout\,
	datac => \xd_save|Add0~4_combout\,
	datad => \xd_save|Add0~2_combout\,
	combout => \xd_save|y~0_combout\);

-- Location: LCCOMB_X33_Y13_N30
\xd_save|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \xd_save|y~1_combout\ = (((\xd_save|Add0~6_combout\) # (\xd_save|y~0_combout\)) # (!\xd_save|Add0~10_combout\)) # (!\xd_save|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xd_save|Add0~8_combout\,
	datab => \xd_save|Add0~10_combout\,
	datac => \xd_save|Add0~6_combout\,
	datad => \xd_save|y~0_combout\,
	combout => \xd_save|y~1_combout\);

-- Location: FF_X33_Y13_N31
\xd_save|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \xd_save|y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \xd_save|y~q\);

-- Location: CLKCTRL_G7
\xd_save|y~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \xd_save|y~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \xd_save|y~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y12_N30
\sel_state0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state0|Selector3~0_combout\ = (\sel_state0|pr_state.state3~q\ & ((!\inverter0|temp~q\))) # (!\sel_state0|pr_state.state3~q\ & (\sel_state0|pr_state.state4~q\ & \inverter0|temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sel_state0|pr_state.state3~q\,
	datac => \sel_state0|pr_state.state4~q\,
	datad => \inverter0|temp~q\,
	combout => \sel_state0|Selector3~0_combout\);

-- Location: LCCOMB_X25_Y12_N22
\sel_state3|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state3|process_0~0_combout\ = (\inverter0|temp~q\) # (!\xd_clear|y~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xd_clear|y~q\,
	datad => \inverter0|temp~q\,
	combout => \sel_state3|process_0~0_combout\);

-- Location: FF_X25_Y12_N31
\sel_state0|pr_state.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \sel_state0|Selector3~0_combout\,
	clrn => \sel_state3|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_state0|pr_state.state4~q\);

-- Location: LCCOMB_X25_Y12_N4
\sel_state0|pr_state.state1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state0|pr_state.state1~0_combout\ = !\sel_state0|pr_state.state4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sel_state0|pr_state.state4~q\,
	combout => \sel_state0|pr_state.state1~0_combout\);

-- Location: FF_X25_Y12_N5
\sel_state0|pr_state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \sel_state0|pr_state.state1~0_combout\,
	clrn => \sel_state3|ALT_INV_process_0~0_combout\,
	ena => \inverter0|ALT_INV_temp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_state0|pr_state.state1~q\);

-- Location: LCCOMB_X25_Y12_N20
\sel_state0|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state0|Selector1~0_combout\ = (\inverter0|temp~q\ & (\sel_state0|pr_state.state1~q\ & \sel_state0|pr_state.state2~q\)) # (!\inverter0|temp~q\ & (!\sel_state0|pr_state.state1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \sel_state0|pr_state.state1~q\,
	datad => \sel_state0|pr_state.state2~q\,
	combout => \sel_state0|Selector1~0_combout\);

-- Location: FF_X25_Y12_N13
\sel_state0|pr_state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	asdata => \sel_state0|Selector1~0_combout\,
	clrn => \sel_state3|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_state0|pr_state.state2~q\);

-- Location: LCCOMB_X25_Y12_N14
\sel_state0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state0|Selector2~0_combout\ = (\sel_state0|pr_state.state2~q\ & ((!\inverter0|temp~q\))) # (!\sel_state0|pr_state.state2~q\ & (\sel_state0|pr_state.state3~q\ & \inverter0|temp~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|pr_state.state2~q\,
	datac => \sel_state0|pr_state.state3~q\,
	datad => \inverter0|temp~q\,
	combout => \sel_state0|Selector2~0_combout\);

-- Location: FF_X25_Y12_N15
\sel_state0|pr_state.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \sel_state0|Selector2~0_combout\,
	clrn => \sel_state3|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_state0|pr_state.state3~q\);

-- Location: LCCOMB_X25_Y12_N0
\sel_state0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state0|Selector6~0_combout\ = (\sel_state0|pr_state.state3~q\) # (\sel_state0|pr_state.state4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sel_state0|pr_state.state3~q\,
	datad => \sel_state0|pr_state.state4~q\,
	combout => \sel_state0|Selector6~0_combout\);

-- Location: LCCOMB_X26_Y11_N4
\shift0|reg2~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~104_combout\ = (\shift0|reg2[5]~38_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg2[5]~38_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg2~104_combout\);

-- Location: CLKCTRL_G5
\inverter0|temp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inverter0|temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inverter0|temp~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y11_N30
\shift0|reg2[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[5]~37_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2[5]~37_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[5]~37_combout\,
	datac => \inverter0|temp~clkctrl_outclk\,
	datad => \shift0|reg2~104_combout\,
	combout => \shift0|reg2[5]~37_combout\);

-- Location: LCCOMB_X26_Y11_N16
\shift0|reg1~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~104_combout\ = (\shift0|reg1[5]~38_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[5]~38_combout\,
	datab => \inverter0|temp~q\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg1~104_combout\);

-- Location: LCCOMB_X26_Y11_N26
\shift0|reg1[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[5]~37_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1[5]~37_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[5]~37_combout\,
	datac => \shift0|reg1~104_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg1[5]~37_combout\);

-- Location: LCCOMB_X26_Y11_N28
\shift0|reg1[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[5]~39_combout\ = \cnt2|temp\(1) $ (\shift0|reg1[5]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt2|temp\(1),
	datad => \shift0|reg1[5]~37_combout\,
	combout => \shift0|reg1[5]~39_combout\);

-- Location: FF_X26_Y11_N29
\shift0|reg1[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[5]~39_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[5]~_emulated_q\);

-- Location: LCCOMB_X26_Y11_N6
\shift0|reg1[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[5]~38_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[5]~37_combout\ $ (\shift0|reg1[5]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg1~104_combout\,
	datac => \shift0|reg1[5]~37_combout\,
	datad => \shift0|reg1[5]~_emulated_q\,
	combout => \shift0|reg1[5]~38_combout\);

-- Location: LCCOMB_X26_Y11_N0
\shift0|reg2[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[5]~39_combout\ = \shift0|reg2[5]~37_combout\ $ (\shift0|reg1[5]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[5]~37_combout\,
	datac => \shift0|reg1[5]~38_combout\,
	combout => \shift0|reg2[5]~39_combout\);

-- Location: FF_X26_Y11_N1
\shift0|reg2[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[5]~39_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[5]~_emulated_q\);

-- Location: LCCOMB_X26_Y11_N18
\shift0|reg2[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[5]~38_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[5]~37_combout\ $ (\shift0|reg2[5]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg2~104_combout\,
	datac => \shift0|reg2[5]~37_combout\,
	datad => \shift0|reg2[5]~_emulated_q\,
	combout => \shift0|reg2[5]~38_combout\);

-- Location: LCCOMB_X26_Y12_N2
\shift0|reg2_out2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out2[1]~0_combout\ = (\shift0|reg2[5]~38_combout\ & \inverter0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shift0|reg2[5]~38_combout\,
	datad => \inverter0|temp~q\,
	combout => \shift0|reg2_out2[1]~0_combout\);

-- Location: LCCOMB_X31_Y12_N6
\shift0|reg3_out0[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out0[3]~0_combout\ = (!\inverter0|temp~q\ & \xd_clear|y~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inverter0|temp~q\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg3_out0[3]~0_combout\);

-- Location: CLKCTRL_G6
\shift0|reg3_out0[3]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \shift0|reg3_out0[3]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \shift0|reg3_out0[3]~0clkctrl_outclk\);

-- Location: LCCOMB_X26_Y12_N8
\shift0|reg2_out2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out2\(1) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out2\(1)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out2[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2_out2[1]~0_combout\,
	datac => \shift0|reg2_out2\(1),
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg2_out2\(1));

-- Location: LCCOMB_X26_Y11_N2
\shift0|reg1_out2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out2[1]~0_combout\ = (\inverter0|temp~q\ & \shift0|reg1[5]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datad => \shift0|reg1[5]~38_combout\,
	combout => \shift0|reg1_out2[1]~0_combout\);

-- Location: LCCOMB_X26_Y11_N20
\shift0|reg1_out2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out2\(1) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out2\(1))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out2[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1_out2\(1),
	datac => \shift0|reg1_out2[1]~0_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out2\(1));

-- Location: LCCOMB_X25_Y12_N28
\sel_state0|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state0|Selector6~1_combout\ = (\sel_state0|pr_state.state4~q\) # ((!\sel_state0|pr_state.state3~q\ & \sel_state0|pr_state.state2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|pr_state.state4~q\,
	datac => \sel_state0|pr_state.state3~q\,
	datad => \sel_state0|pr_state.state2~q\,
	combout => \sel_state0|Selector6~1_combout\);

-- Location: LCCOMB_X26_Y11_N14
\shift0|reg3~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~104_combout\ = (\shift0|reg3[5]~38_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg3[5]~38_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg3~104_combout\);

-- Location: LCCOMB_X26_Y11_N8
\shift0|reg3[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[5]~37_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3[5]~37_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3[5]~37_combout\,
	datac => \shift0|reg3~104_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg3[5]~37_combout\);

-- Location: LCCOMB_X26_Y11_N12
\shift0|reg3[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[5]~39_combout\ = \shift0|reg2[5]~38_combout\ $ (\shift0|reg3[5]~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[5]~38_combout\,
	datac => \shift0|reg3[5]~37_combout\,
	combout => \shift0|reg3[5]~39_combout\);

-- Location: FF_X26_Y11_N13
\shift0|reg3[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[5]~39_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[5]~_emulated_q\);

-- Location: LCCOMB_X26_Y11_N22
\shift0|reg3[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[5]~38_combout\ = (\inverter0|temp~q\ & ((\shift0|reg3[5]~37_combout\ $ (\shift0|reg3[5]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg3~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg3~104_combout\,
	datac => \shift0|reg3[5]~37_combout\,
	datad => \shift0|reg3[5]~_emulated_q\,
	combout => \shift0|reg3[5]~38_combout\);

-- Location: LCCOMB_X26_Y11_N24
\shift0|reg3_out2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out2[1]~0_combout\ = (\inverter0|temp~q\ & \shift0|reg3[5]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg3[5]~38_combout\,
	combout => \shift0|reg3_out2[1]~0_combout\);

-- Location: LCCOMB_X26_Y11_N10
\shift0|reg3_out2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out2\(1) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out2\(1)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out2[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out2[1]~0_combout\,
	datac => \shift0|reg3_out2\(1),
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg3_out2\(1));

-- Location: LCCOMB_X26_Y12_N6
\sel_state2|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state2|Selector6~0_combout\ = (\sel_state0|Selector6~1_combout\ & ((\shift0|reg3_out2\(1)) # ((\sel_state0|Selector6~0_combout\)))) # (!\sel_state0|Selector6~1_combout\ & (((!\sel_state0|Selector6~0_combout\ & \cnt2|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector6~1_combout\,
	datab => \shift0|reg3_out2\(1),
	datac => \sel_state0|Selector6~0_combout\,
	datad => \cnt2|temp\(1),
	combout => \sel_state2|Selector6~0_combout\);

-- Location: LCCOMB_X26_Y12_N18
\sel_state2|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state2|Selector6~1_combout\ = (\sel_state0|Selector6~0_combout\ & ((\sel_state2|Selector6~0_combout\ & ((\shift0|reg1_out2\(1)))) # (!\sel_state2|Selector6~0_combout\ & (\shift0|reg2_out2\(1))))) # (!\sel_state0|Selector6~0_combout\ & 
-- (((\sel_state2|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector6~0_combout\,
	datab => \shift0|reg2_out2\(1),
	datac => \shift0|reg1_out2\(1),
	datad => \sel_state2|Selector6~0_combout\,
	combout => \sel_state2|Selector6~1_combout\);

-- Location: LCCOMB_X29_Y12_N18
\shift0|reg3~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~105_combout\ = (\shift0|reg3[4]~34_combout\ & ((\xd_clear|y~q\) # (\inverter0|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xd_clear|y~q\,
	datac => \inverter0|temp~q\,
	datad => \shift0|reg3[4]~34_combout\,
	combout => \shift0|reg3~105_combout\);

-- Location: LCCOMB_X29_Y12_N8
\shift0|reg3[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[4]~33_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3[4]~33_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3[4]~33_combout\,
	datac => \shift0|reg3~105_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg3[4]~33_combout\);

-- Location: LCCOMB_X29_Y12_N6
\shift0|reg2~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~105_combout\ = (\shift0|reg2[4]~34_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[4]~34_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg2~105_combout\);

-- Location: LCCOMB_X29_Y12_N4
\shift0|reg2[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[4]~33_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2[4]~33_combout\))) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~clkctrl_outclk\,
	datac => \shift0|reg2~105_combout\,
	datad => \shift0|reg2[4]~33_combout\,
	combout => \shift0|reg2[4]~33_combout\);

-- Location: LCCOMB_X29_Y12_N16
\shift0|reg1~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~105_combout\ = (\shift0|reg1[4]~34_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg1[4]~34_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg1~105_combout\);

-- Location: LCCOMB_X29_Y12_N0
\shift0|reg1[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[4]~33_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1[4]~33_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~clkctrl_outclk\,
	datab => \shift0|reg1[4]~33_combout\,
	datad => \shift0|reg1~105_combout\,
	combout => \shift0|reg1[4]~33_combout\);

-- Location: LCCOMB_X29_Y12_N30
\shift0|reg1[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[4]~35_combout\ = \shift0|reg1[4]~33_combout\ $ (\cnt2|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[4]~33_combout\,
	datad => \cnt2|temp\(0),
	combout => \shift0|reg1[4]~35_combout\);

-- Location: FF_X29_Y12_N31
\shift0|reg1[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[4]~35_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[4]~_emulated_q\);

-- Location: LCCOMB_X29_Y12_N14
\shift0|reg1[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[4]~34_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[4]~_emulated_q\ $ (\shift0|reg1[4]~33_combout\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg1~105_combout\,
	datac => \shift0|reg1[4]~_emulated_q\,
	datad => \shift0|reg1[4]~33_combout\,
	combout => \shift0|reg1[4]~34_combout\);

-- Location: LCCOMB_X29_Y12_N28
\shift0|reg2[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[4]~35_combout\ = \shift0|reg1[4]~34_combout\ $ (\shift0|reg2[4]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[4]~34_combout\,
	datad => \shift0|reg2[4]~33_combout\,
	combout => \shift0|reg2[4]~35_combout\);

-- Location: FF_X29_Y12_N29
\shift0|reg2[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[4]~35_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[4]~_emulated_q\);

-- Location: LCCOMB_X29_Y12_N26
\shift0|reg2[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[4]~34_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[4]~33_combout\ $ (\shift0|reg2[4]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2~105_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[4]~33_combout\,
	datad => \shift0|reg2[4]~_emulated_q\,
	combout => \shift0|reg2[4]~34_combout\);

-- Location: LCCOMB_X29_Y12_N2
\shift0|reg3[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[4]~35_combout\ = \shift0|reg2[4]~34_combout\ $ (\shift0|reg3[4]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[4]~34_combout\,
	datac => \shift0|reg3[4]~33_combout\,
	combout => \shift0|reg3[4]~35_combout\);

-- Location: FF_X29_Y12_N3
\shift0|reg3[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[4]~35_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[4]~_emulated_q\);

-- Location: LCCOMB_X29_Y12_N20
\shift0|reg3[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[4]~34_combout\ = (\inverter0|temp~q\ & ((\shift0|reg3[4]~33_combout\ $ (\shift0|reg3[4]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg3~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg3~105_combout\,
	datac => \shift0|reg3[4]~33_combout\,
	datad => \shift0|reg3[4]~_emulated_q\,
	combout => \shift0|reg3[4]~34_combout\);

-- Location: LCCOMB_X28_Y11_N16
\shift0|reg3_out2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out2[0]~1_combout\ = (\inverter0|temp~q\ & \shift0|reg3[4]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg3[4]~34_combout\,
	combout => \shift0|reg3_out2[0]~1_combout\);

-- Location: LCCOMB_X28_Y11_N30
\shift0|reg3_out2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out2\(0) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out2\(0))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out2[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out2\(0),
	datac => \shift0|reg3_out2[0]~1_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg3_out2\(0));

-- Location: LCCOMB_X29_Y12_N22
\shift0|reg2_out2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out2[0]~1_combout\ = (\shift0|reg2[4]~34_combout\ & \inverter0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[4]~34_combout\,
	datad => \inverter0|temp~q\,
	combout => \shift0|reg2_out2[0]~1_combout\);

-- Location: LCCOMB_X26_Y12_N26
\shift0|reg2_out2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out2\(0) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out2\(0)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out2[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2_out2[0]~1_combout\,
	datac => \shift0|reg2_out2\(0),
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg2_out2\(0));

-- Location: LCCOMB_X26_Y12_N0
\sel_state2|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state2|Selector7~0_combout\ = (\sel_state0|Selector6~0_combout\ & ((\shift0|reg2_out2\(0)) # ((\sel_state0|Selector6~1_combout\)))) # (!\sel_state0|Selector6~0_combout\ & (((\cnt2|temp\(0) & !\sel_state0|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out2\(0),
	datab => \cnt2|temp\(0),
	datac => \sel_state0|Selector6~0_combout\,
	datad => \sel_state0|Selector6~1_combout\,
	combout => \sel_state2|Selector7~0_combout\);

-- Location: LCCOMB_X29_Y10_N16
\shift0|reg1_out2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out2[0]~1_combout\ = (\inverter0|temp~q\ & \shift0|reg1[4]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg1[4]~34_combout\,
	combout => \shift0|reg1_out2[0]~1_combout\);

-- Location: LCCOMB_X29_Y10_N30
\shift0|reg1_out2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out2\(0) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out2\(0))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out2[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1_out2\(0),
	datac => \shift0|reg1_out2[0]~1_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out2\(0));

-- Location: LCCOMB_X22_Y12_N20
\sel_state2|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state2|Selector7~1_combout\ = (\sel_state0|Selector6~1_combout\ & ((\sel_state2|Selector7~0_combout\ & ((\shift0|reg1_out2\(0)))) # (!\sel_state2|Selector7~0_combout\ & (\shift0|reg3_out2\(0))))) # (!\sel_state0|Selector6~1_combout\ & 
-- (((\sel_state2|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out2\(0),
	datab => \sel_state0|Selector6~1_combout\,
	datac => \sel_state2|Selector7~0_combout\,
	datad => \shift0|reg1_out2\(0),
	combout => \sel_state2|Selector7~1_combout\);

-- Location: LCCOMB_X22_Y12_N10
\cmp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmp~5_combout\ = (\cnt2|temp\(0) & (\sel_state2|Selector7~1_combout\ & (\cnt2|temp\(1) $ (!\sel_state2|Selector6~1_combout\)))) # (!\cnt2|temp\(0) & (!\sel_state2|Selector7~1_combout\ & (\cnt2|temp\(1) $ (!\sel_state2|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(0),
	datab => \cnt2|temp\(1),
	datac => \sel_state2|Selector6~1_combout\,
	datad => \sel_state2|Selector7~1_combout\,
	combout => \cmp~5_combout\);

-- Location: LCCOMB_X22_Y11_N14
\shift0|reg2~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~100_combout\ = (\shift0|reg2[9]~22_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[9]~22_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg2~100_combout\);

-- Location: LCCOMB_X22_Y11_N22
\shift0|reg2[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[9]~21_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2[9]~21_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[9]~21_combout\,
	datac => \shift0|reg2~100_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg2[9]~21_combout\);

-- Location: LCCOMB_X22_Y11_N30
\shift0|reg1~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~100_combout\ = (\shift0|reg1[9]~22_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg1[9]~22_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg1~100_combout\);

-- Location: LCCOMB_X22_Y11_N18
\shift0|reg1[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[9]~21_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1[9]~21_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[9]~21_combout\,
	datac => \shift0|reg1~100_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg1[9]~21_combout\);

-- Location: LCCOMB_X22_Y11_N6
\shift0|reg1[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[9]~23_combout\ = \cnt1|temp\(1) $ (\shift0|reg1[9]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(1),
	datab => \shift0|reg1[9]~21_combout\,
	combout => \shift0|reg1[9]~23_combout\);

-- Location: FF_X22_Y11_N7
\shift0|reg1[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[9]~23_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[9]~_emulated_q\);

-- Location: LCCOMB_X22_Y11_N20
\shift0|reg1[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[9]~22_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[9]~21_combout\ $ (\shift0|reg1[9]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1~100_combout\,
	datab => \shift0|reg1[9]~21_combout\,
	datac => \inverter0|temp~q\,
	datad => \shift0|reg1[9]~_emulated_q\,
	combout => \shift0|reg1[9]~22_combout\);

-- Location: LCCOMB_X22_Y11_N2
\shift0|reg2[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[9]~23_combout\ = \shift0|reg1[9]~22_combout\ $ (\shift0|reg2[9]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[9]~22_combout\,
	datad => \shift0|reg2[9]~21_combout\,
	combout => \shift0|reg2[9]~23_combout\);

-- Location: FF_X22_Y11_N3
\shift0|reg2[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[9]~23_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[9]~_emulated_q\);

-- Location: LCCOMB_X22_Y11_N0
\shift0|reg2[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[9]~22_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[9]~21_combout\ $ (\shift0|reg2[9]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg2~100_combout\,
	datac => \shift0|reg2[9]~21_combout\,
	datad => \shift0|reg2[9]~_emulated_q\,
	combout => \shift0|reg2[9]~22_combout\);

-- Location: LCCOMB_X22_Y11_N24
\shift0|reg2_out1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out1[1]~0_combout\ = (\inverter0|temp~q\ & \shift0|reg2[9]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[9]~22_combout\,
	combout => \shift0|reg2_out1[1]~0_combout\);

-- Location: LCCOMB_X21_Y11_N4
\shift0|reg2_out1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out1\(1) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out1\(1)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out1[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out1[1]~0_combout\,
	datac => \shift0|reg2_out1\(1),
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg2_out1\(1));

-- Location: LCCOMB_X22_Y11_N28
\shift0|reg1_out1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out1[1]~0_combout\ = (\shift0|reg1[9]~22_combout\ & \inverter0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[9]~22_combout\,
	datac => \inverter0|temp~q\,
	combout => \shift0|reg1_out1[1]~0_combout\);

-- Location: LCCOMB_X21_Y15_N14
\shift0|reg1_out1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out1\(1) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out1\(1))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out1[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1_out1\(1),
	datac => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	datad => \shift0|reg1_out1[1]~0_combout\,
	combout => \shift0|reg1_out1\(1));

-- Location: LCCOMB_X22_Y11_N4
\shift0|reg3~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~100_combout\ = (\shift0|reg3[9]~22_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3[9]~22_combout\,
	datab => \inverter0|temp~q\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg3~100_combout\);

-- Location: LCCOMB_X22_Y11_N8
\shift0|reg3[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[9]~21_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3[9]~21_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3[9]~21_combout\,
	datac => \shift0|reg3~100_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg3[9]~21_combout\);

-- Location: LCCOMB_X22_Y11_N10
\shift0|reg3[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[9]~23_combout\ = \shift0|reg2[9]~22_combout\ $ (\shift0|reg3[9]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[9]~22_combout\,
	datac => \shift0|reg3[9]~21_combout\,
	combout => \shift0|reg3[9]~23_combout\);

-- Location: FF_X22_Y11_N11
\shift0|reg3[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[9]~23_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[9]~_emulated_q\);

-- Location: LCCOMB_X22_Y11_N12
\shift0|reg3[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[9]~22_combout\ = (\inverter0|temp~q\ & ((\shift0|reg3[9]~21_combout\ $ (\shift0|reg3[9]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg3~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg3~100_combout\,
	datac => \shift0|reg3[9]~21_combout\,
	datad => \shift0|reg3[9]~_emulated_q\,
	combout => \shift0|reg3[9]~22_combout\);

-- Location: LCCOMB_X22_Y11_N26
\shift0|reg3_out1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out1[1]~0_combout\ = (\inverter0|temp~q\ & \shift0|reg3[9]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg3[9]~22_combout\,
	combout => \shift0|reg3_out1[1]~0_combout\);

-- Location: LCCOMB_X22_Y11_N16
\shift0|reg3_out1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out1\(1) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out1\(1)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out1[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out1[1]~0_combout\,
	datab => \shift0|reg3_out1\(1),
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg3_out1\(1));

-- Location: LCCOMB_X23_Y12_N8
\sel_state1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state1|Selector6~0_combout\ = (\sel_state0|Selector6~0_combout\ & (((\sel_state0|Selector6~1_combout\)))) # (!\sel_state0|Selector6~0_combout\ & ((\sel_state0|Selector6~1_combout\ & (\shift0|reg3_out1\(1))) # (!\sel_state0|Selector6~1_combout\ & 
-- ((\cnt1|temp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out1\(1),
	datab => \sel_state0|Selector6~0_combout\,
	datac => \cnt1|temp\(1),
	datad => \sel_state0|Selector6~1_combout\,
	combout => \sel_state1|Selector6~0_combout\);

-- Location: LCCOMB_X22_Y15_N6
\sel_state1|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state1|Selector6~1_combout\ = (\sel_state0|Selector6~0_combout\ & ((\sel_state1|Selector6~0_combout\ & ((\shift0|reg1_out1\(1)))) # (!\sel_state1|Selector6~0_combout\ & (\shift0|reg2_out1\(1))))) # (!\sel_state0|Selector6~0_combout\ & 
-- (((\sel_state1|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out1\(1),
	datab => \shift0|reg1_out1\(1),
	datac => \sel_state0|Selector6~0_combout\,
	datad => \sel_state1|Selector6~0_combout\,
	combout => \sel_state1|Selector6~1_combout\);

-- Location: LCCOMB_X24_Y14_N2
\shift0|reg2~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~101_combout\ = (\shift0|reg2[8]~18_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[8]~18_combout\,
	datab => \inverter0|temp~q\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg2~101_combout\);

-- Location: LCCOMB_X24_Y14_N4
\shift0|reg2[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[8]~17_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2[8]~17_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[8]~17_combout\,
	datac => \shift0|reg2~101_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg2[8]~17_combout\);

-- Location: LCCOMB_X24_Y14_N8
\shift0|reg1~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~101_combout\ = (\shift0|reg1[8]~18_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[8]~18_combout\,
	datab => \inverter0|temp~q\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg1~101_combout\);

-- Location: LCCOMB_X24_Y14_N22
\shift0|reg1[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[8]~17_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1[8]~17_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[8]~17_combout\,
	datac => \shift0|reg1~101_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg1[8]~17_combout\);

-- Location: LCCOMB_X24_Y14_N16
\shift0|reg1[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[8]~19_combout\ = \cnt1|temp\(0) $ (\shift0|reg1[8]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt1|temp\(0),
	datad => \shift0|reg1[8]~17_combout\,
	combout => \shift0|reg1[8]~19_combout\);

-- Location: FF_X24_Y14_N17
\shift0|reg1[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[8]~19_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[8]~_emulated_q\);

-- Location: LCCOMB_X24_Y14_N10
\shift0|reg1[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[8]~18_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[8]~17_combout\ $ (\shift0|reg1[8]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg1~101_combout\,
	datac => \shift0|reg1[8]~17_combout\,
	datad => \shift0|reg1[8]~_emulated_q\,
	combout => \shift0|reg1[8]~18_combout\);

-- Location: LCCOMB_X24_Y14_N24
\shift0|reg2[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[8]~19_combout\ = \shift0|reg1[8]~18_combout\ $ (\shift0|reg2[8]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[8]~18_combout\,
	datad => \shift0|reg2[8]~17_combout\,
	combout => \shift0|reg2[8]~19_combout\);

-- Location: FF_X24_Y14_N25
\shift0|reg2[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[8]~19_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[8]~_emulated_q\);

-- Location: LCCOMB_X24_Y14_N6
\shift0|reg2[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[8]~18_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[8]~17_combout\ $ (\shift0|reg2[8]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg2~101_combout\,
	datac => \shift0|reg2[8]~17_combout\,
	datad => \shift0|reg2[8]~_emulated_q\,
	combout => \shift0|reg2[8]~18_combout\);

-- Location: LCCOMB_X24_Y14_N28
\shift0|reg2_out1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out1[0]~1_combout\ = (\inverter0|temp~q\ & \shift0|reg2[8]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inverter0|temp~q\,
	datad => \shift0|reg2[8]~18_combout\,
	combout => \shift0|reg2_out1[0]~1_combout\);

-- Location: LCCOMB_X24_Y14_N26
\shift0|reg2_out1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out1\(0) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out1\(0))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out1[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out1\(0),
	datac => \shift0|reg2_out1[0]~1_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg2_out1\(0));

-- Location: LCCOMB_X23_Y12_N30
\sel_state1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state1|Selector7~0_combout\ = (\sel_state0|Selector6~0_combout\ & ((\shift0|reg2_out1\(0)) # ((\sel_state0|Selector6~1_combout\)))) # (!\sel_state0|Selector6~0_combout\ & (((\cnt1|temp\(0) & !\sel_state0|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out1\(0),
	datab => \sel_state0|Selector6~0_combout\,
	datac => \cnt1|temp\(0),
	datad => \sel_state0|Selector6~1_combout\,
	combout => \sel_state1|Selector7~0_combout\);

-- Location: LCCOMB_X24_Y14_N20
\shift0|reg3~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~101_combout\ = (\shift0|reg3[8]~18_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg3[8]~18_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg3~101_combout\);

-- Location: LCCOMB_X24_Y14_N30
\shift0|reg3[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[8]~17_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3[8]~17_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3[8]~17_combout\,
	datac => \shift0|reg3~101_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg3[8]~17_combout\);

-- Location: LCCOMB_X24_Y14_N0
\shift0|reg3[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[8]~19_combout\ = \shift0|reg2[8]~18_combout\ $ (\shift0|reg3[8]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[8]~18_combout\,
	datac => \shift0|reg3[8]~17_combout\,
	combout => \shift0|reg3[8]~19_combout\);

-- Location: FF_X24_Y14_N1
\shift0|reg3[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[8]~19_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[8]~_emulated_q\);

-- Location: LCCOMB_X24_Y14_N18
\shift0|reg3[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[8]~18_combout\ = (\inverter0|temp~q\ & ((\shift0|reg3[8]~17_combout\ $ (\shift0|reg3[8]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg3~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg3~101_combout\,
	datac => \shift0|reg3[8]~17_combout\,
	datad => \shift0|reg3[8]~_emulated_q\,
	combout => \shift0|reg3[8]~18_combout\);

-- Location: LCCOMB_X23_Y14_N4
\shift0|reg3_out1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out1[0]~1_combout\ = (\shift0|reg3[8]~18_combout\ & \inverter0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3[8]~18_combout\,
	datab => \inverter0|temp~q\,
	combout => \shift0|reg3_out1[0]~1_combout\);

-- Location: LCCOMB_X23_Y14_N6
\shift0|reg3_out1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out1\(0) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out1\(0))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out1[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out1\(0),
	datac => \shift0|reg3_out1[0]~1_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg3_out1\(0));

-- Location: LCCOMB_X24_Y14_N14
\shift0|reg1_out1[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out1[0]~1_combout\ = (\inverter0|temp~q\ & \shift0|reg1[8]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inverter0|temp~q\,
	datad => \shift0|reg1[8]~18_combout\,
	combout => \shift0|reg1_out1[0]~1_combout\);

-- Location: LCCOMB_X24_Y14_N12
\shift0|reg1_out1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out1\(0) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out1\(0))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out1[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1_out1\(0),
	datac => \shift0|reg1_out1[0]~1_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out1\(0));

-- Location: LCCOMB_X23_Y12_N16
\sel_state1|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state1|Selector7~1_combout\ = (\sel_state1|Selector7~0_combout\ & (((\shift0|reg1_out1\(0)) # (!\sel_state0|Selector6~1_combout\)))) # (!\sel_state1|Selector7~0_combout\ & (\shift0|reg3_out1\(0) & ((\sel_state0|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state1|Selector7~0_combout\,
	datab => \shift0|reg3_out1\(0),
	datac => \shift0|reg1_out1\(0),
	datad => \sel_state0|Selector6~1_combout\,
	combout => \sel_state1|Selector7~1_combout\);

-- Location: LCCOMB_X23_Y12_N26
\cmp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmp~2_combout\ = (\cnt1|temp\(1) & (\sel_state1|Selector6~1_combout\ & (\cnt1|temp\(0) $ (!\sel_state1|Selector7~1_combout\)))) # (!\cnt1|temp\(1) & (!\sel_state1|Selector6~1_combout\ & (\cnt1|temp\(0) $ (!\sel_state1|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(1),
	datab => \cnt1|temp\(0),
	datac => \sel_state1|Selector6~1_combout\,
	datad => \sel_state1|Selector7~1_combout\,
	combout => \cmp~2_combout\);

-- Location: LCCOMB_X24_Y10_N30
\shift0|reg1~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~102_combout\ = (\shift0|reg1[11]~30_combout\ & ((\xd_clear|y~q\) # (\inverter0|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[11]~30_combout\,
	datac => \xd_clear|y~q\,
	datad => \inverter0|temp~q\,
	combout => \shift0|reg1~102_combout\);

-- Location: LCCOMB_X24_Y10_N14
\shift0|reg1[11]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[11]~29_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1[11]~29_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[11]~29_combout\,
	datac => \shift0|reg1~102_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg1[11]~29_combout\);

-- Location: LCCOMB_X24_Y10_N10
\shift0|reg1[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[11]~31_combout\ = \cnt1|temp\(3) $ (\shift0|reg1[11]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt1|temp\(3),
	datac => \shift0|reg1[11]~29_combout\,
	combout => \shift0|reg1[11]~31_combout\);

-- Location: FF_X24_Y10_N11
\shift0|reg1[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[11]~31_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[11]~_emulated_q\);

-- Location: LCCOMB_X24_Y10_N24
\shift0|reg1[11]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[11]~30_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[11]~29_combout\ $ (\shift0|reg1[11]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1~102_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg1[11]~29_combout\,
	datad => \shift0|reg1[11]~_emulated_q\,
	combout => \shift0|reg1[11]~30_combout\);

-- Location: LCCOMB_X24_Y10_N12
\shift0|reg1_out1[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out1[3]~2_combout\ = (\inverter0|temp~q\ & \shift0|reg1[11]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datad => \shift0|reg1[11]~30_combout\,
	combout => \shift0|reg1_out1[3]~2_combout\);

-- Location: LCCOMB_X24_Y10_N28
\shift0|reg1_out1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out1\(3) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out1\(3))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out1[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1_out1\(3),
	datac => \shift0|reg1_out1[3]~2_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out1\(3));

-- Location: LCCOMB_X24_Y10_N26
\shift0|reg2~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~102_combout\ = (\shift0|reg2[11]~30_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg2[11]~30_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg2~102_combout\);

-- Location: LCCOMB_X24_Y10_N22
\shift0|reg2[11]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[11]~29_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2[11]~29_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[11]~29_combout\,
	datac => \shift0|reg2~102_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg2[11]~29_combout\);

-- Location: LCCOMB_X24_Y10_N2
\shift0|reg2[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[11]~31_combout\ = \shift0|reg1[11]~30_combout\ $ (\shift0|reg2[11]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[11]~30_combout\,
	datad => \shift0|reg2[11]~29_combout\,
	combout => \shift0|reg2[11]~31_combout\);

-- Location: FF_X24_Y10_N3
\shift0|reg2[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[11]~31_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[11]~_emulated_q\);

-- Location: LCCOMB_X24_Y10_N0
\shift0|reg2[11]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[11]~30_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[11]~29_combout\ $ (\shift0|reg2[11]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2~102_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[11]~29_combout\,
	datad => \shift0|reg2[11]~_emulated_q\,
	combout => \shift0|reg2[11]~30_combout\);

-- Location: LCCOMB_X24_Y10_N16
\shift0|reg2_out1[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out1[3]~2_combout\ = (\shift0|reg2[11]~30_combout\ & \inverter0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shift0|reg2[11]~30_combout\,
	datad => \inverter0|temp~q\,
	combout => \shift0|reg2_out1[3]~2_combout\);

-- Location: LCCOMB_X23_Y10_N24
\shift0|reg2_out1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out1\(3) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out1\(3)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out1[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out1[3]~2_combout\,
	datac => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	datad => \shift0|reg2_out1\(3),
	combout => \shift0|reg2_out1\(3));

-- Location: LCCOMB_X24_Y10_N4
\shift0|reg3~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~102_combout\ = (\shift0|reg3[11]~30_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg3[11]~30_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg3~102_combout\);

-- Location: LCCOMB_X24_Y10_N8
\shift0|reg3[11]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[11]~29_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3[11]~29_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3[11]~29_combout\,
	datac => \shift0|reg3~102_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg3[11]~29_combout\);

-- Location: LCCOMB_X24_Y10_N6
\shift0|reg3[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[11]~31_combout\ = \shift0|reg2[11]~30_combout\ $ (\shift0|reg3[11]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[11]~30_combout\,
	datac => \shift0|reg3[11]~29_combout\,
	combout => \shift0|reg3[11]~31_combout\);

-- Location: FF_X24_Y10_N7
\shift0|reg3[11]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[11]~31_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[11]~_emulated_q\);

-- Location: LCCOMB_X24_Y10_N20
\shift0|reg3[11]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[11]~30_combout\ = (\inverter0|temp~q\ & ((\shift0|reg3[11]~29_combout\ $ (\shift0|reg3[11]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg3~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg3~102_combout\,
	datac => \shift0|reg3[11]~29_combout\,
	datad => \shift0|reg3[11]~_emulated_q\,
	combout => \shift0|reg3[11]~30_combout\);

-- Location: LCCOMB_X24_Y10_N18
\shift0|reg3_out1[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out1[3]~2_combout\ = (\shift0|reg3[11]~30_combout\ & \inverter0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3[11]~30_combout\,
	datad => \inverter0|temp~q\,
	combout => \shift0|reg3_out1[3]~2_combout\);

-- Location: LCCOMB_X23_Y10_N26
\shift0|reg3_out1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out1\(3) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out1\(3)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out1[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3_out1[3]~2_combout\,
	datac => \shift0|reg3_out1\(3),
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg3_out1\(3));

-- Location: LCCOMB_X23_Y12_N6
\sel_state1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state1|Selector4~0_combout\ = (\sel_state0|Selector6~0_combout\ & (((\sel_state0|Selector6~1_combout\)))) # (!\sel_state0|Selector6~0_combout\ & ((\sel_state0|Selector6~1_combout\ & (\shift0|reg3_out1\(3))) # (!\sel_state0|Selector6~1_combout\ & 
-- ((\cnt1|temp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out1\(3),
	datab => \sel_state0|Selector6~0_combout\,
	datac => \sel_state0|Selector6~1_combout\,
	datad => \cnt1|temp\(3),
	combout => \sel_state1|Selector4~0_combout\);

-- Location: LCCOMB_X23_Y12_N0
\sel_state1|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state1|Selector4~1_combout\ = (\sel_state0|Selector6~0_combout\ & ((\sel_state1|Selector4~0_combout\ & (\shift0|reg1_out1\(3))) # (!\sel_state1|Selector4~0_combout\ & ((\shift0|reg2_out1\(3)))))) # (!\sel_state0|Selector6~0_combout\ & 
-- (((\sel_state1|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1_out1\(3),
	datab => \sel_state0|Selector6~0_combout\,
	datac => \shift0|reg2_out1\(3),
	datad => \sel_state1|Selector4~0_combout\,
	combout => \sel_state1|Selector4~1_combout\);

-- Location: LCCOMB_X24_Y11_N8
\shift0|reg3~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~103_combout\ = (\shift0|reg3[10]~26_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3[10]~26_combout\,
	datab => \inverter0|temp~q\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg3~103_combout\);

-- Location: LCCOMB_X24_Y11_N2
\shift0|reg3[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[10]~25_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3[10]~25_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3[10]~25_combout\,
	datac => \shift0|reg3~103_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg3[10]~25_combout\);

-- Location: LCCOMB_X24_Y11_N22
\shift0|reg2~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~103_combout\ = (\shift0|reg2[10]~26_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[10]~26_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg2~103_combout\);

-- Location: LCCOMB_X24_Y11_N4
\shift0|reg2[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[10]~25_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2[10]~25_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[10]~25_combout\,
	datac => \shift0|reg2~103_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg2[10]~25_combout\);

-- Location: LCCOMB_X24_Y11_N24
\shift0|reg1~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~103_combout\ = (\shift0|reg1[10]~26_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg1[10]~26_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg1~103_combout\);

-- Location: LCCOMB_X24_Y11_N26
\shift0|reg1[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[10]~25_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1[10]~25_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[10]~25_combout\,
	datac => \shift0|reg1~103_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg1[10]~25_combout\);

-- Location: LCCOMB_X24_Y11_N20
\shift0|reg1[10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[10]~27_combout\ = \cnt1|temp\(2) $ (\shift0|reg1[10]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt1|temp\(2),
	datad => \shift0|reg1[10]~25_combout\,
	combout => \shift0|reg1[10]~27_combout\);

-- Location: FF_X24_Y11_N21
\shift0|reg1[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[10]~27_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[10]~_emulated_q\);

-- Location: LCCOMB_X24_Y11_N10
\shift0|reg1[10]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[10]~26_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[10]~25_combout\ $ (\shift0|reg1[10]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg1~103_combout\,
	datac => \shift0|reg1[10]~25_combout\,
	datad => \shift0|reg1[10]~_emulated_q\,
	combout => \shift0|reg1[10]~26_combout\);

-- Location: LCCOMB_X24_Y11_N28
\shift0|reg2[10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[10]~27_combout\ = \shift0|reg1[10]~26_combout\ $ (\shift0|reg2[10]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[10]~26_combout\,
	datac => \shift0|reg2[10]~25_combout\,
	combout => \shift0|reg2[10]~27_combout\);

-- Location: FF_X24_Y11_N29
\shift0|reg2[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[10]~27_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[10]~_emulated_q\);

-- Location: LCCOMB_X24_Y11_N30
\shift0|reg2[10]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[10]~26_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[10]~25_combout\ $ (\shift0|reg2[10]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2~103_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[10]~25_combout\,
	datad => \shift0|reg2[10]~_emulated_q\,
	combout => \shift0|reg2[10]~26_combout\);

-- Location: LCCOMB_X24_Y11_N16
\shift0|reg3[10]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[10]~27_combout\ = \shift0|reg2[10]~26_combout\ $ (\shift0|reg3[10]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[10]~26_combout\,
	datad => \shift0|reg3[10]~25_combout\,
	combout => \shift0|reg3[10]~27_combout\);

-- Location: FF_X24_Y11_N17
\shift0|reg3[10]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[10]~27_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[10]~_emulated_q\);

-- Location: LCCOMB_X24_Y11_N6
\shift0|reg3[10]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[10]~26_combout\ = (\inverter0|temp~q\ & (\shift0|reg3[10]~25_combout\ $ (((\shift0|reg3[10]~_emulated_q\))))) # (!\inverter0|temp~q\ & (((\shift0|reg3~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg3[10]~25_combout\,
	datac => \shift0|reg3~103_combout\,
	datad => \shift0|reg3[10]~_emulated_q\,
	combout => \shift0|reg3[10]~26_combout\);

-- Location: LCCOMB_X24_Y11_N0
\shift0|reg3_out1[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out1[2]~3_combout\ = (\inverter0|temp~q\ & \shift0|reg3[10]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg3[10]~26_combout\,
	combout => \shift0|reg3_out1[2]~3_combout\);

-- Location: LCCOMB_X24_Y11_N14
\shift0|reg3_out1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out1\(2) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out1\(2)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out1[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3_out1[2]~3_combout\,
	datac => \shift0|reg3_out1\(2),
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg3_out1\(2));

-- Location: LCCOMB_X24_Y11_N18
\shift0|reg1_out1[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out1[2]~3_combout\ = (\inverter0|temp~q\ & \shift0|reg1[10]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datad => \shift0|reg1[10]~26_combout\,
	combout => \shift0|reg1_out1[2]~3_combout\);

-- Location: LCCOMB_X24_Y11_N12
\shift0|reg1_out1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out1\(2) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out1\(2))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out1[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1_out1\(2),
	datac => \shift0|reg1_out1[2]~3_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out1\(2));

-- Location: LCCOMB_X22_Y12_N22
\shift0|reg2_out1[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out1[2]~3_combout\ = (\inverter0|temp~q\ & \shift0|reg2[10]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg2[10]~26_combout\,
	combout => \shift0|reg2_out1[2]~3_combout\);

-- Location: LCCOMB_X22_Y12_N24
\shift0|reg2_out1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out1\(2) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out1\(2))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out1[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2_out1\(2),
	datac => \shift0|reg2_out1[2]~3_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg2_out1\(2));

-- Location: LCCOMB_X22_Y12_N16
\sel_state1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state1|Selector5~0_combout\ = (\sel_state0|Selector6~0_combout\ & ((\sel_state0|Selector6~1_combout\) # ((\shift0|reg2_out1\(2))))) # (!\sel_state0|Selector6~0_combout\ & (!\sel_state0|Selector6~1_combout\ & ((\cnt1|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector6~0_combout\,
	datab => \sel_state0|Selector6~1_combout\,
	datac => \shift0|reg2_out1\(2),
	datad => \cnt1|temp\(2),
	combout => \sel_state1|Selector5~0_combout\);

-- Location: LCCOMB_X22_Y12_N2
\sel_state1|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state1|Selector5~1_combout\ = (\sel_state0|Selector6~1_combout\ & ((\sel_state1|Selector5~0_combout\ & ((\shift0|reg1_out1\(2)))) # (!\sel_state1|Selector5~0_combout\ & (\shift0|reg3_out1\(2))))) # (!\sel_state0|Selector6~1_combout\ & 
-- (((\sel_state1|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out1\(2),
	datab => \shift0|reg1_out1\(2),
	datac => \sel_state0|Selector6~1_combout\,
	datad => \sel_state1|Selector5~0_combout\,
	combout => \sel_state1|Selector5~1_combout\);

-- Location: LCCOMB_X23_Y12_N14
\cmp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmp~3_combout\ = (\cnt1|temp\(3) & (\sel_state1|Selector4~1_combout\ & (\cnt1|temp\(2) $ (!\sel_state1|Selector5~1_combout\)))) # (!\cnt1|temp\(3) & (!\sel_state1|Selector4~1_combout\ & (\cnt1|temp\(2) $ (!\sel_state1|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|temp\(3),
	datab => \sel_state1|Selector4~1_combout\,
	datac => \cnt1|temp\(2),
	datad => \sel_state1|Selector5~1_combout\,
	combout => \cmp~3_combout\);

-- Location: LCCOMB_X25_Y13_N28
\shift0|reg1~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~99_combout\ = (\shift0|reg1[14]~10_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg1[14]~10_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg1~99_combout\);

-- Location: LCCOMB_X25_Y13_N8
\shift0|reg1[14]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[14]~9_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1[14]~9_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[14]~9_combout\,
	datac => \shift0|reg1~99_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg1[14]~9_combout\);

-- Location: LCCOMB_X25_Y13_N24
\shift0|reg1[14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[14]~11_combout\ = \cnt0|temp\(2) $ (\shift0|reg1[14]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt0|temp\(2),
	datad => \shift0|reg1[14]~9_combout\,
	combout => \shift0|reg1[14]~11_combout\);

-- Location: FF_X25_Y13_N25
\shift0|reg1[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[14]~11_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[14]~_emulated_q\);

-- Location: LCCOMB_X25_Y13_N6
\shift0|reg1[14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[14]~10_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[14]~9_combout\ $ (\shift0|reg1[14]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg1~99_combout\,
	datac => \shift0|reg1[14]~9_combout\,
	datad => \shift0|reg1[14]~_emulated_q\,
	combout => \shift0|reg1[14]~10_combout\);

-- Location: LCCOMB_X25_Y13_N26
\shift0|reg1_out0[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out0[2]~3_combout\ = (\inverter0|temp~q\ & \shift0|reg1[14]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg1[14]~10_combout\,
	combout => \shift0|reg1_out0[2]~3_combout\);

-- Location: LCCOMB_X25_Y13_N18
\shift0|reg1_out0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out0\(2) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out0\(2))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out0[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1_out0\(2),
	datac => \shift0|reg1_out0[2]~3_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out0\(2));

-- Location: LCCOMB_X25_Y13_N16
\shift0|reg3~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~99_combout\ = (\shift0|reg3[14]~10_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg3[14]~10_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg3~99_combout\);

-- Location: LCCOMB_X25_Y13_N4
\shift0|reg3[14]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[14]~9_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3[14]~9_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3[14]~9_combout\,
	datac => \shift0|reg3~99_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg3[14]~9_combout\);

-- Location: LCCOMB_X25_Y13_N10
\shift0|reg2~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~99_combout\ = (\shift0|reg2[14]~10_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[14]~10_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg2~99_combout\);

-- Location: LCCOMB_X25_Y13_N14
\shift0|reg2[14]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[14]~9_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2[14]~9_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[14]~9_combout\,
	datac => \shift0|reg2~99_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg2[14]~9_combout\);

-- Location: LCCOMB_X25_Y13_N0
\shift0|reg2[14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[14]~11_combout\ = \shift0|reg2[14]~9_combout\ $ (\shift0|reg1[14]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shift0|reg2[14]~9_combout\,
	datad => \shift0|reg1[14]~10_combout\,
	combout => \shift0|reg2[14]~11_combout\);

-- Location: FF_X25_Y13_N1
\shift0|reg2[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[14]~11_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[14]~_emulated_q\);

-- Location: LCCOMB_X25_Y13_N22
\shift0|reg2[14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[14]~10_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[14]~9_combout\ $ (\shift0|reg2[14]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2~99_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[14]~9_combout\,
	datad => \shift0|reg2[14]~_emulated_q\,
	combout => \shift0|reg2[14]~10_combout\);

-- Location: LCCOMB_X25_Y13_N20
\shift0|reg3[14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[14]~11_combout\ = \shift0|reg2[14]~10_combout\ $ (\shift0|reg3[14]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[14]~10_combout\,
	datac => \shift0|reg3[14]~9_combout\,
	combout => \shift0|reg3[14]~11_combout\);

-- Location: FF_X25_Y13_N21
\shift0|reg3[14]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[14]~11_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[14]~_emulated_q\);

-- Location: LCCOMB_X25_Y13_N30
\shift0|reg3[14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[14]~10_combout\ = (\inverter0|temp~q\ & ((\shift0|reg3[14]~9_combout\ $ (\shift0|reg3[14]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg3~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg3~99_combout\,
	datac => \shift0|reg3[14]~9_combout\,
	datad => \shift0|reg3[14]~_emulated_q\,
	combout => \shift0|reg3[14]~10_combout\);

-- Location: LCCOMB_X25_Y12_N26
\shift0|reg3_out0[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out0[2]~4_combout\ = (\shift0|reg3[14]~10_combout\ & \inverter0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shift0|reg3[14]~10_combout\,
	datad => \inverter0|temp~q\,
	combout => \shift0|reg3_out0[2]~4_combout\);

-- Location: LCCOMB_X25_Y12_N10
\shift0|reg3_out0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out0\(2) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out0\(2))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out0[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out0\(2),
	datab => \shift0|reg3_out0[2]~4_combout\,
	datac => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg3_out0\(2));

-- Location: LCCOMB_X25_Y13_N12
\shift0|reg2_out0[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out0[2]~3_combout\ = (\inverter0|temp~q\ & \shift0|reg2[14]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datad => \shift0|reg2[14]~10_combout\,
	combout => \shift0|reg2_out0[2]~3_combout\);

-- Location: LCCOMB_X24_Y12_N10
\shift0|reg2_out0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out0\(2) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out0\(2)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out0[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out0[2]~3_combout\,
	datab => \shift0|reg2_out0\(2),
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg2_out0\(2));

-- Location: LCCOMB_X24_Y12_N24
\sel_state0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state0|Selector5~0_combout\ = (\sel_state0|Selector6~0_combout\ & ((\shift0|reg2_out0\(2)) # ((\sel_state0|Selector6~1_combout\)))) # (!\sel_state0|Selector6~0_combout\ & (((\cnt0|temp\(2) & !\sel_state0|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out0\(2),
	datab => \sel_state0|Selector6~0_combout\,
	datac => \cnt0|temp\(2),
	datad => \sel_state0|Selector6~1_combout\,
	combout => \sel_state0|Selector5~0_combout\);

-- Location: LCCOMB_X24_Y12_N14
\sel_state0|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state0|Selector5~1_combout\ = (\sel_state0|Selector6~1_combout\ & ((\sel_state0|Selector5~0_combout\ & (\shift0|reg1_out0\(2))) # (!\sel_state0|Selector5~0_combout\ & ((\shift0|reg3_out0\(2)))))) # (!\sel_state0|Selector6~1_combout\ & 
-- (((\sel_state0|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1_out0\(2),
	datab => \sel_state0|Selector6~1_combout\,
	datac => \shift0|reg3_out0\(2),
	datad => \sel_state0|Selector5~0_combout\,
	combout => \sel_state0|Selector5~1_combout\);

-- Location: LCCOMB_X23_Y11_N28
\shift0|reg1~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~98_combout\ = (\shift0|reg1[15]~14_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg1[15]~14_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg1~98_combout\);

-- Location: LCCOMB_X23_Y11_N14
\shift0|reg1[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[15]~13_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1[15]~13_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[15]~13_combout\,
	datac => \shift0|reg1~98_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg1[15]~13_combout\);

-- Location: LCCOMB_X23_Y11_N0
\shift0|reg1[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[15]~15_combout\ = \shift0|reg1[15]~13_combout\ $ (\cnt0|temp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[15]~13_combout\,
	datad => \cnt0|temp\(3),
	combout => \shift0|reg1[15]~15_combout\);

-- Location: FF_X23_Y11_N1
\shift0|reg1[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[15]~15_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[15]~_emulated_q\);

-- Location: LCCOMB_X23_Y11_N22
\shift0|reg1[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[15]~14_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[15]~13_combout\ $ (\shift0|reg1[15]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg1~98_combout\,
	datac => \shift0|reg1[15]~13_combout\,
	datad => \shift0|reg1[15]~_emulated_q\,
	combout => \shift0|reg1[15]~14_combout\);

-- Location: LCCOMB_X22_Y12_N4
\shift0|reg1_out0[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out0[3]~2_combout\ = (\inverter0|temp~q\ & \shift0|reg1[15]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg1[15]~14_combout\,
	combout => \shift0|reg1_out0[3]~2_combout\);

-- Location: LCCOMB_X22_Y12_N18
\shift0|reg1_out0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out0\(3) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out0\(3))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out0[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1_out0\(3),
	datac => \shift0|reg1_out0[3]~2_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out0\(3));

-- Location: LCCOMB_X23_Y11_N4
\shift0|reg2~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~98_combout\ = (\shift0|reg2[15]~14_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg2[15]~14_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg2~98_combout\);

-- Location: LCCOMB_X23_Y11_N30
\shift0|reg2[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[15]~13_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2[15]~13_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[15]~13_combout\,
	datac => \shift0|reg2~98_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg2[15]~13_combout\);

-- Location: LCCOMB_X23_Y11_N24
\shift0|reg2[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[15]~15_combout\ = \shift0|reg1[15]~14_combout\ $ (\shift0|reg2[15]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[15]~14_combout\,
	datac => \shift0|reg2[15]~13_combout\,
	combout => \shift0|reg2[15]~15_combout\);

-- Location: FF_X23_Y11_N25
\shift0|reg2[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[15]~15_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[15]~_emulated_q\);

-- Location: LCCOMB_X23_Y11_N26
\shift0|reg2[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[15]~14_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[15]~13_combout\ $ (\shift0|reg2[15]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg2~98_combout\,
	datac => \shift0|reg2[15]~13_combout\,
	datad => \shift0|reg2[15]~_emulated_q\,
	combout => \shift0|reg2[15]~14_combout\);

-- Location: LCCOMB_X23_Y11_N20
\shift0|reg2_out0[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out0[3]~2_combout\ = (\inverter0|temp~q\ & \shift0|reg2[15]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datad => \shift0|reg2[15]~14_combout\,
	combout => \shift0|reg2_out0[3]~2_combout\);

-- Location: LCCOMB_X23_Y11_N10
\shift0|reg2_out0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out0\(3) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out0\(3))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out0[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out0\(3),
	datac => \shift0|reg2_out0[3]~2_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg2_out0\(3));

-- Location: LCCOMB_X23_Y11_N18
\shift0|reg3~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~98_combout\ = (\shift0|reg3[15]~14_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3[15]~14_combout\,
	datac => \inverter0|temp~q\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg3~98_combout\);

-- Location: LCCOMB_X23_Y11_N12
\shift0|reg3[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[15]~13_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3[15]~13_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3[15]~13_combout\,
	datac => \shift0|reg3~98_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg3[15]~13_combout\);

-- Location: LCCOMB_X23_Y11_N16
\shift0|reg3[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[15]~15_combout\ = \shift0|reg2[15]~14_combout\ $ (\shift0|reg3[15]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[15]~14_combout\,
	datad => \shift0|reg3[15]~13_combout\,
	combout => \shift0|reg3[15]~15_combout\);

-- Location: FF_X23_Y11_N17
\shift0|reg3[15]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[15]~15_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[15]~_emulated_q\);

-- Location: LCCOMB_X23_Y11_N6
\shift0|reg3[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[15]~14_combout\ = (\inverter0|temp~q\ & (\shift0|reg3[15]~13_combout\ $ (((\shift0|reg3[15]~_emulated_q\))))) # (!\inverter0|temp~q\ & (((\shift0|reg3~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3[15]~13_combout\,
	datab => \shift0|reg3~98_combout\,
	datac => \inverter0|temp~q\,
	datad => \shift0|reg3[15]~_emulated_q\,
	combout => \shift0|reg3[15]~14_combout\);

-- Location: LCCOMB_X23_Y11_N2
\shift0|reg3_out0[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out0[3]~3_combout\ = (\inverter0|temp~q\ & \shift0|reg3[15]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg3[15]~14_combout\,
	combout => \shift0|reg3_out0[3]~3_combout\);

-- Location: LCCOMB_X23_Y11_N8
\shift0|reg3_out0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out0\(3) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out0\(3)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out0[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3_out0[3]~3_combout\,
	datac => \shift0|reg3_out0\(3),
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg3_out0\(3));

-- Location: LCCOMB_X23_Y12_N10
\sel_state0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state0|Selector4~0_combout\ = (\sel_state0|Selector6~0_combout\ & (((\sel_state0|Selector6~1_combout\)))) # (!\sel_state0|Selector6~0_combout\ & ((\sel_state0|Selector6~1_combout\ & (\shift0|reg3_out0\(3))) # (!\sel_state0|Selector6~1_combout\ & 
-- ((\cnt0|temp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out0\(3),
	datab => \sel_state0|Selector6~0_combout\,
	datac => \sel_state0|Selector6~1_combout\,
	datad => \cnt0|temp\(3),
	combout => \sel_state0|Selector4~0_combout\);

-- Location: LCCOMB_X23_Y12_N2
\sel_state0|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state0|Selector4~1_combout\ = (\sel_state0|Selector6~0_combout\ & ((\sel_state0|Selector4~0_combout\ & (\shift0|reg1_out0\(3))) # (!\sel_state0|Selector4~0_combout\ & ((\shift0|reg2_out0\(3)))))) # (!\sel_state0|Selector6~0_combout\ & 
-- (((\sel_state0|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1_out0\(3),
	datab => \sel_state0|Selector6~0_combout\,
	datac => \shift0|reg2_out0\(3),
	datad => \sel_state0|Selector4~0_combout\,
	combout => \sel_state0|Selector4~1_combout\);

-- Location: LCCOMB_X23_Y12_N4
\cmp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmp~1_combout\ = (\cnt0|temp\(2) & (\sel_state0|Selector5~1_combout\ & (\cnt0|temp\(3) $ (!\sel_state0|Selector4~1_combout\)))) # (!\cnt0|temp\(2) & (!\sel_state0|Selector5~1_combout\ & (\cnt0|temp\(3) $ (!\sel_state0|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(2),
	datab => \cnt0|temp\(3),
	datac => \sel_state0|Selector5~1_combout\,
	datad => \sel_state0|Selector4~1_combout\,
	combout => \cmp~1_combout\);

-- Location: LCCOMB_X26_Y14_N2
\shift0|reg3~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~97_combout\ = (\shift0|reg3[12]~2_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg3[12]~2_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg3~97_combout\);

-- Location: LCCOMB_X26_Y14_N30
\shift0|reg3[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[12]~1_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3[12]~1_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3[12]~1_combout\,
	datac => \shift0|reg3~97_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg3[12]~1_combout\);

-- Location: LCCOMB_X26_Y14_N16
\shift0|reg2~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~97_combout\ = (\shift0|reg2[12]~2_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg2[12]~2_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg2~97_combout\);

-- Location: LCCOMB_X26_Y14_N4
\shift0|reg2[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[12]~1_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2[12]~1_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[12]~1_combout\,
	datac => \shift0|reg2~97_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg2[12]~1_combout\);

-- Location: LCCOMB_X26_Y14_N22
\shift0|reg1~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~97_combout\ = (\shift0|reg1[12]~2_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg1[12]~2_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg1~97_combout\);

-- Location: LCCOMB_X26_Y14_N14
\shift0|reg1[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[12]~1_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1[12]~1_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[12]~1_combout\,
	datac => \shift0|reg1~97_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg1[12]~1_combout\);

-- Location: LCCOMB_X26_Y14_N10
\shift0|reg1[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[12]~3_combout\ = \shift0|reg1[12]~1_combout\ $ (\cnt0|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[12]~1_combout\,
	datad => \cnt0|temp\(0),
	combout => \shift0|reg1[12]~3_combout\);

-- Location: FF_X26_Y14_N11
\shift0|reg1[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[12]~3_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[12]~_emulated_q\);

-- Location: LCCOMB_X26_Y14_N24
\shift0|reg1[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[12]~2_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[12]~1_combout\ $ (\shift0|reg1[12]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1~97_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg1[12]~1_combout\,
	datad => \shift0|reg1[12]~_emulated_q\,
	combout => \shift0|reg1[12]~2_combout\);

-- Location: LCCOMB_X26_Y14_N18
\shift0|reg2[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[12]~3_combout\ = \shift0|reg1[12]~2_combout\ $ (\shift0|reg2[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[12]~2_combout\,
	datad => \shift0|reg2[12]~1_combout\,
	combout => \shift0|reg2[12]~3_combout\);

-- Location: FF_X26_Y14_N19
\shift0|reg2[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[12]~3_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[12]~_emulated_q\);

-- Location: LCCOMB_X26_Y14_N28
\shift0|reg2[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[12]~2_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[12]~1_combout\ $ (\shift0|reg2[12]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg2~97_combout\,
	datac => \shift0|reg2[12]~1_combout\,
	datad => \shift0|reg2[12]~_emulated_q\,
	combout => \shift0|reg2[12]~2_combout\);

-- Location: LCCOMB_X26_Y14_N6
\shift0|reg3[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[12]~3_combout\ = \shift0|reg2[12]~2_combout\ $ (\shift0|reg3[12]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[12]~2_combout\,
	datac => \shift0|reg3[12]~1_combout\,
	combout => \shift0|reg3[12]~3_combout\);

-- Location: FF_X26_Y14_N7
\shift0|reg3[12]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[12]~3_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[12]~_emulated_q\);

-- Location: LCCOMB_X26_Y14_N20
\shift0|reg3[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[12]~2_combout\ = (\inverter0|temp~q\ & ((\shift0|reg3[12]~1_combout\ $ (\shift0|reg3[12]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg3~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3~97_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg3[12]~1_combout\,
	datad => \shift0|reg3[12]~_emulated_q\,
	combout => \shift0|reg3[12]~2_combout\);

-- Location: LCCOMB_X25_Y12_N24
\shift0|reg3_out0[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out0[0]~2_combout\ = (\shift0|reg3[12]~2_combout\ & \inverter0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3[12]~2_combout\,
	datad => \inverter0|temp~q\,
	combout => \shift0|reg3_out0[0]~2_combout\);

-- Location: LCCOMB_X25_Y12_N12
\shift0|reg3_out0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out0\(0) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out0\(0))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out0[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out0\(0),
	datab => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	datad => \shift0|reg3_out0[0]~2_combout\,
	combout => \shift0|reg3_out0\(0));

-- Location: LCCOMB_X25_Y15_N16
\shift0|reg2_out0[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out0[0]~1_combout\ = (\inverter0|temp~q\ & \shift0|reg2[12]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg2[12]~2_combout\,
	combout => \shift0|reg2_out0[0]~1_combout\);

-- Location: LCCOMB_X25_Y15_N30
\shift0|reg2_out0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out0\(0) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out0\(0))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out0[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out0\(0),
	datac => \shift0|reg2_out0[0]~1_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg2_out0\(0));

-- Location: LCCOMB_X24_Y12_N20
\sel_state0|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state0|Selector7~0_combout\ = (\sel_state0|Selector6~1_combout\ & (((\sel_state0|Selector6~0_combout\)))) # (!\sel_state0|Selector6~1_combout\ & ((\sel_state0|Selector6~0_combout\ & ((\shift0|reg2_out0\(0)))) # (!\sel_state0|Selector6~0_combout\ & 
-- (\cnt0|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(0),
	datab => \sel_state0|Selector6~1_combout\,
	datac => \sel_state0|Selector6~0_combout\,
	datad => \shift0|reg2_out0\(0),
	combout => \sel_state0|Selector7~0_combout\);

-- Location: LCCOMB_X26_Y14_N0
\shift0|reg1_out0[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out0[0]~1_combout\ = (\inverter0|temp~q\ & \shift0|reg1[12]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inverter0|temp~q\,
	datad => \shift0|reg1[12]~2_combout\,
	combout => \shift0|reg1_out0[0]~1_combout\);

-- Location: LCCOMB_X26_Y14_N12
\shift0|reg1_out0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out0\(0) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out0\(0))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out0[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1_out0\(0),
	datac => \shift0|reg1_out0[0]~1_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out0\(0));

-- Location: LCCOMB_X24_Y12_N0
\sel_state0|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state0|Selector7~1_combout\ = (\sel_state0|Selector6~1_combout\ & ((\sel_state0|Selector7~0_combout\ & ((\shift0|reg1_out0\(0)))) # (!\sel_state0|Selector7~0_combout\ & (\shift0|reg3_out0\(0))))) # (!\sel_state0|Selector6~1_combout\ & 
-- (((\sel_state0|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out0\(0),
	datab => \sel_state0|Selector6~1_combout\,
	datac => \sel_state0|Selector7~0_combout\,
	datad => \shift0|reg1_out0\(0),
	combout => \sel_state0|Selector7~1_combout\);

-- Location: LCCOMB_X31_Y12_N14
\shift0|reg1~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~96_combout\ = (\shift0|reg1[13]~6_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \xd_clear|y~q\,
	datad => \shift0|reg1[13]~6_combout\,
	combout => \shift0|reg1~96_combout\);

-- Location: LCCOMB_X31_Y12_N8
\shift0|reg1[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[13]~5_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1[13]~5_combout\))) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~clkctrl_outclk\,
	datac => \shift0|reg1~96_combout\,
	datad => \shift0|reg1[13]~5_combout\,
	combout => \shift0|reg1[13]~5_combout\);

-- Location: LCCOMB_X31_Y12_N10
\shift0|reg1[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[13]~7_combout\ = \shift0|reg1[13]~5_combout\ $ (\cnt0|temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shift0|reg1[13]~5_combout\,
	datad => \cnt0|temp\(1),
	combout => \shift0|reg1[13]~7_combout\);

-- Location: FF_X31_Y12_N11
\shift0|reg1[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[13]~7_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[13]~_emulated_q\);

-- Location: LCCOMB_X31_Y12_N16
\shift0|reg1[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[13]~6_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[13]~5_combout\ $ (\shift0|reg1[13]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg1~96_combout\,
	datac => \shift0|reg1[13]~5_combout\,
	datad => \shift0|reg1[13]~_emulated_q\,
	combout => \shift0|reg1[13]~6_combout\);

-- Location: LCCOMB_X31_Y12_N12
\shift0|reg1_out0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out0[1]~0_combout\ = (\inverter0|temp~q\ & \shift0|reg1[13]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datad => \shift0|reg1[13]~6_combout\,
	combout => \shift0|reg1_out0[1]~0_combout\);

-- Location: LCCOMB_X31_Y12_N20
\shift0|reg1_out0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out0\(1) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out0\(1))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out0[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1_out0\(1),
	datac => \shift0|reg1_out0[1]~0_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out0\(1));

-- Location: LCCOMB_X31_Y12_N30
\shift0|reg2~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~96_combout\ = (\shift0|reg2[13]~6_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[13]~6_combout\,
	datab => \inverter0|temp~q\,
	datac => \xd_clear|y~q\,
	combout => \shift0|reg2~96_combout\);

-- Location: LCCOMB_X31_Y12_N4
\shift0|reg2[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[13]~5_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2[13]~5_combout\))) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~clkctrl_outclk\,
	datac => \shift0|reg2~96_combout\,
	datad => \shift0|reg2[13]~5_combout\,
	combout => \shift0|reg2[13]~5_combout\);

-- Location: LCCOMB_X31_Y12_N0
\shift0|reg2[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[13]~7_combout\ = \shift0|reg2[13]~5_combout\ $ (\shift0|reg1[13]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[13]~5_combout\,
	datac => \shift0|reg1[13]~6_combout\,
	combout => \shift0|reg2[13]~7_combout\);

-- Location: FF_X31_Y12_N1
\shift0|reg2[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[13]~7_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[13]~_emulated_q\);

-- Location: LCCOMB_X31_Y12_N22
\shift0|reg2[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[13]~6_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[13]~5_combout\ $ (\shift0|reg2[13]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2~96_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[13]~5_combout\,
	datad => \shift0|reg2[13]~_emulated_q\,
	combout => \shift0|reg2[13]~6_combout\);

-- Location: LCCOMB_X26_Y12_N10
\shift0|reg2_out0[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out0[1]~0_combout\ = (\inverter0|temp~q\ & \shift0|reg2[13]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datad => \shift0|reg2[13]~6_combout\,
	combout => \shift0|reg2_out0[1]~0_combout\);

-- Location: LCCOMB_X26_Y12_N24
\shift0|reg2_out0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out0\(1) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out0\(1)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out0[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out0[1]~0_combout\,
	datab => \shift0|reg2_out0\(1),
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg2_out0\(1));

-- Location: LCCOMB_X31_Y12_N28
\shift0|reg3~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~96_combout\ = (\shift0|reg3[13]~6_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \xd_clear|y~q\,
	datad => \shift0|reg3[13]~6_combout\,
	combout => \shift0|reg3~96_combout\);

-- Location: LCCOMB_X31_Y12_N26
\shift0|reg3[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[13]~5_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3[13]~5_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3[13]~5_combout\,
	datab => \inverter0|temp~clkctrl_outclk\,
	datac => \shift0|reg3~96_combout\,
	combout => \shift0|reg3[13]~5_combout\);

-- Location: LCCOMB_X31_Y12_N24
\shift0|reg3[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[13]~7_combout\ = \shift0|reg2[13]~6_combout\ $ (\shift0|reg3[13]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shift0|reg2[13]~6_combout\,
	datad => \shift0|reg3[13]~5_combout\,
	combout => \shift0|reg3[13]~7_combout\);

-- Location: FF_X31_Y12_N25
\shift0|reg3[13]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[13]~7_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[13]~_emulated_q\);

-- Location: LCCOMB_X31_Y12_N18
\shift0|reg3[13]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[13]~6_combout\ = (\inverter0|temp~q\ & ((\shift0|reg3[13]~5_combout\ $ (\shift0|reg3[13]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg3~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg3~96_combout\,
	datac => \shift0|reg3[13]~5_combout\,
	datad => \shift0|reg3[13]~_emulated_q\,
	combout => \shift0|reg3[13]~6_combout\);

-- Location: LCCOMB_X26_Y12_N16
\shift0|reg3_out0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out0[1]~1_combout\ = (\inverter0|temp~q\ & \shift0|reg3[13]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datad => \shift0|reg3[13]~6_combout\,
	combout => \shift0|reg3_out0[1]~1_combout\);

-- Location: LCCOMB_X26_Y12_N30
\shift0|reg3_out0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out0\(1) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out0\(1))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out0[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out0\(1),
	datac => \shift0|reg3_out0[1]~1_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg3_out0\(1));

-- Location: LCCOMB_X24_Y12_N16
\sel_state0|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state0|Selector6~2_combout\ = (\sel_state0|Selector6~1_combout\ & ((\shift0|reg3_out0\(1)) # ((\sel_state0|Selector6~0_combout\)))) # (!\sel_state0|Selector6~1_combout\ & (((!\sel_state0|Selector6~0_combout\ & \cnt0|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out0\(1),
	datab => \sel_state0|Selector6~1_combout\,
	datac => \sel_state0|Selector6~0_combout\,
	datad => \cnt0|temp\(1),
	combout => \sel_state0|Selector6~2_combout\);

-- Location: LCCOMB_X24_Y12_N18
\sel_state0|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state0|Selector6~3_combout\ = (\sel_state0|Selector6~0_combout\ & ((\sel_state0|Selector6~2_combout\ & (\shift0|reg1_out0\(1))) # (!\sel_state0|Selector6~2_combout\ & ((\shift0|reg2_out0\(1)))))) # (!\sel_state0|Selector6~0_combout\ & 
-- (((\sel_state0|Selector6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1_out0\(1),
	datab => \shift0|reg2_out0\(1),
	datac => \sel_state0|Selector6~0_combout\,
	datad => \sel_state0|Selector6~2_combout\,
	combout => \sel_state0|Selector6~3_combout\);

-- Location: LCCOMB_X23_Y12_N20
\cmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmp~0_combout\ = (\cnt0|temp\(0) & (\sel_state0|Selector7~1_combout\ & (\cnt0|temp\(1) $ (!\sel_state0|Selector6~3_combout\)))) # (!\cnt0|temp\(0) & (!\sel_state0|Selector7~1_combout\ & (\cnt0|temp\(1) $ (!\sel_state0|Selector6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt0|temp\(0),
	datab => \cnt0|temp\(1),
	datac => \sel_state0|Selector7~1_combout\,
	datad => \sel_state0|Selector6~3_combout\,
	combout => \cmp~0_combout\);

-- Location: LCCOMB_X23_Y12_N12
\cmp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmp~4_combout\ = (\cmp~2_combout\ & (\cmp~3_combout\ & (\cmp~1_combout\ & \cmp~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp~2_combout\,
	datab => \cmp~3_combout\,
	datac => \cmp~1_combout\,
	datad => \cmp~0_combout\,
	combout => \cmp~4_combout\);

-- Location: LCCOMB_X19_Y12_N20
\shift0|reg3~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~110_combout\ = (\shift0|reg3[2]~58_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg3[2]~58_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg3~110_combout\);

-- Location: LCCOMB_X19_Y12_N22
\shift0|reg3[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[2]~57_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3[2]~57_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3[2]~57_combout\,
	datab => \inverter0|temp~clkctrl_outclk\,
	datac => \shift0|reg3~110_combout\,
	combout => \shift0|reg3[2]~57_combout\);

-- Location: LCCOMB_X19_Y12_N30
\shift0|reg2~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~110_combout\ = (\shift0|reg2[2]~58_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[2]~58_combout\,
	datac => \inverter0|temp~q\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg2~110_combout\);

-- Location: LCCOMB_X19_Y12_N4
\shift0|reg2[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[2]~57_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2[2]~57_combout\))) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~clkctrl_outclk\,
	datac => \shift0|reg2~110_combout\,
	datad => \shift0|reg2[2]~57_combout\,
	combout => \shift0|reg2[2]~57_combout\);

-- Location: LCCOMB_X19_Y12_N16
\shift0|reg1~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~110_combout\ = (\shift0|reg1[2]~58_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[2]~58_combout\,
	datac => \inverter0|temp~q\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg1~110_combout\);

-- Location: LCCOMB_X19_Y12_N14
\shift0|reg1[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[2]~57_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1[2]~57_combout\))) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~clkctrl_outclk\,
	datac => \shift0|reg1~110_combout\,
	datad => \shift0|reg1[2]~57_combout\,
	combout => \shift0|reg1[2]~57_combout\);

-- Location: LCCOMB_X26_Y12_N22
\cnt2|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt2|Equal0~combout\ = LCELL((\cnt2|temp\(2)) # (((\cnt2|temp\(1)) # (!\cnt2|temp\(3))) # (!\cnt2|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(2),
	datab => \cnt2|temp\(0),
	datac => \cnt2|temp\(3),
	datad => \cnt2|temp\(1),
	combout => \cnt2|Equal0~combout\);

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X21_Y12_N10
\cnt3|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt3|temp~1_combout\ = (!\cnt3|temp\(2) & (\cnt3|temp\(0) $ (\cnt3|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt3|temp\(0),
	datac => \cnt3|temp\(1),
	datad => \cnt3|temp\(2),
	combout => \cnt3|temp~1_combout\);

-- Location: FF_X21_Y12_N11
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

-- Location: LCCOMB_X21_Y12_N0
\cnt3|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt3|temp~0_combout\ = (!\cnt3|temp\(0) & ((!\cnt3|temp\(2)) # (!\cnt3|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt3|temp\(1),
	datac => \cnt3|temp\(0),
	datad => \cnt3|temp\(2),
	combout => \cnt3|temp~0_combout\);

-- Location: FF_X21_Y12_N1
\cnt3|temp[0]\ : dffeas
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
	q => \cnt3|temp\(0));

-- Location: LCCOMB_X21_Y12_N16
\cnt3|temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cnt3|temp~2_combout\ = (\cnt3|temp\(0) & (!\cnt3|temp\(2) & \cnt3|temp\(1))) # (!\cnt3|temp\(0) & (\cnt3|temp\(2) & !\cnt3|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cnt3|temp\(0),
	datac => \cnt3|temp\(2),
	datad => \cnt3|temp\(1),
	combout => \cnt3|temp~2_combout\);

-- Location: FF_X21_Y12_N17
\cnt3|temp[2]\ : dffeas
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
	q => \cnt3|temp\(2));

-- Location: LCCOMB_X19_Y12_N28
\shift0|reg1[2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[2]~59_combout\ = \shift0|reg1[2]~57_combout\ $ (\cnt3|temp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shift0|reg1[2]~57_combout\,
	datad => \cnt3|temp\(2),
	combout => \shift0|reg1[2]~59_combout\);

-- Location: FF_X19_Y12_N29
\shift0|reg1[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[2]~59_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[2]~_emulated_q\);

-- Location: LCCOMB_X19_Y12_N18
\shift0|reg1[2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[2]~58_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[2]~57_combout\ $ (\shift0|reg1[2]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg1~110_combout\,
	datac => \shift0|reg1[2]~57_combout\,
	datad => \shift0|reg1[2]~_emulated_q\,
	combout => \shift0|reg1[2]~58_combout\);

-- Location: LCCOMB_X19_Y12_N0
\shift0|reg2[2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[2]~59_combout\ = \shift0|reg1[2]~58_combout\ $ (\shift0|reg2[2]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[2]~58_combout\,
	datad => \shift0|reg2[2]~57_combout\,
	combout => \shift0|reg2[2]~59_combout\);

-- Location: FF_X19_Y12_N1
\shift0|reg2[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[2]~59_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[2]~_emulated_q\);

-- Location: LCCOMB_X19_Y12_N6
\shift0|reg2[2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[2]~58_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[2]~57_combout\ $ (\shift0|reg2[2]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2~110_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[2]~57_combout\,
	datad => \shift0|reg2[2]~_emulated_q\,
	combout => \shift0|reg2[2]~58_combout\);

-- Location: LCCOMB_X19_Y12_N12
\shift0|reg3[2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[2]~59_combout\ = \shift0|reg2[2]~58_combout\ $ (\shift0|reg3[2]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[2]~58_combout\,
	datac => \shift0|reg3[2]~57_combout\,
	combout => \shift0|reg3[2]~59_combout\);

-- Location: FF_X19_Y12_N13
\shift0|reg3[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[2]~59_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[2]~_emulated_q\);

-- Location: LCCOMB_X19_Y12_N10
\shift0|reg3[2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[2]~58_combout\ = (\inverter0|temp~q\ & ((\shift0|reg3[2]~57_combout\ $ (\shift0|reg3[2]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg3~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg3~110_combout\,
	datac => \shift0|reg3[2]~57_combout\,
	datad => \shift0|reg3[2]~_emulated_q\,
	combout => \shift0|reg3[2]~58_combout\);

-- Location: LCCOMB_X21_Y12_N26
\shift0|reg3_out3[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out3[2]~2_combout\ = (\shift0|reg3[2]~58_combout\ & \inverter0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3[2]~58_combout\,
	datac => \inverter0|temp~q\,
	combout => \shift0|reg3_out3[2]~2_combout\);

-- Location: LCCOMB_X21_Y12_N30
\shift0|reg3_out3[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out3\(2) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out3\(2)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out3[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3_out3[2]~2_combout\,
	datac => \shift0|reg3_out3\(2),
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg3_out3\(2));

-- Location: LCCOMB_X19_Y12_N2
\shift0|reg1_out3[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out3[2]~2_combout\ = (\inverter0|temp~q\ & \shift0|reg1[2]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datad => \shift0|reg1[2]~58_combout\,
	combout => \shift0|reg1_out3[2]~2_combout\);

-- Location: LCCOMB_X19_Y12_N24
\shift0|reg1_out3[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out3\(2) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out3\(2))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out3[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1_out3\(2),
	datac => \shift0|reg1_out3[2]~2_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out3\(2));

-- Location: LCCOMB_X19_Y12_N8
\shift0|reg2_out3[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out3[2]~2_combout\ = (\inverter0|temp~q\ & \shift0|reg2[2]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datad => \shift0|reg2[2]~58_combout\,
	combout => \shift0|reg2_out3[2]~2_combout\);

-- Location: LCCOMB_X19_Y12_N26
\shift0|reg2_out3[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out3\(2) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out3\(2))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out3[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out3\(2),
	datac => \shift0|reg2_out3[2]~2_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg2_out3\(2));

-- Location: LCCOMB_X21_Y12_N2
\sel_state3|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state3|Selector5~0_combout\ = (\sel_state0|Selector6~1_combout\ & (((\sel_state0|Selector6~0_combout\)))) # (!\sel_state0|Selector6~1_combout\ & ((\sel_state0|Selector6~0_combout\ & (\shift0|reg2_out3\(2))) # (!\sel_state0|Selector6~0_combout\ & 
-- ((\cnt3|temp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector6~1_combout\,
	datab => \shift0|reg2_out3\(2),
	datac => \sel_state0|Selector6~0_combout\,
	datad => \cnt3|temp\(2),
	combout => \sel_state3|Selector5~0_combout\);

-- Location: LCCOMB_X21_Y12_N12
\sel_state3|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state3|Selector5~1_combout\ = (\sel_state0|Selector6~1_combout\ & ((\sel_state3|Selector5~0_combout\ & ((\shift0|reg1_out3\(2)))) # (!\sel_state3|Selector5~0_combout\ & (\shift0|reg3_out3\(2))))) # (!\sel_state0|Selector6~1_combout\ & 
-- (((\sel_state3|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out3\(2),
	datab => \shift0|reg1_out3\(2),
	datac => \sel_state0|Selector6~1_combout\,
	datad => \sel_state3|Selector5~0_combout\,
	combout => \sel_state3|Selector5~1_combout\);

-- Location: LCCOMB_X26_Y13_N14
\shift0|reg1~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~111_combout\ = (\shift0|reg1[3]~62_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[3]~62_combout\,
	datac => \inverter0|temp~q\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg1~111_combout\);

-- Location: LCCOMB_X26_Y13_N12
\shift0|reg1[3]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[3]~61_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1[3]~61_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[3]~61_combout\,
	datac => \shift0|reg1~111_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg1[3]~61_combout\);

-- Location: FF_X26_Y13_N25
\shift0|reg1[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	asdata => \shift0|reg1[3]~61_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[3]~_emulated_q\);

-- Location: LCCOMB_X26_Y13_N24
\shift0|reg1[3]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[3]~62_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[3]~_emulated_q\ $ (\shift0|reg1[3]~61_combout\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg1~111_combout\,
	datac => \shift0|reg1[3]~_emulated_q\,
	datad => \shift0|reg1[3]~61_combout\,
	combout => \shift0|reg1[3]~62_combout\);

-- Location: LCCOMB_X26_Y13_N18
\shift0|reg1_out3[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out3[3]~3_combout\ = (\inverter0|temp~q\ & \shift0|reg1[3]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datad => \shift0|reg1[3]~62_combout\,
	combout => \shift0|reg1_out3[3]~3_combout\);

-- Location: LCCOMB_X26_Y13_N22
\shift0|reg1_out3[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out3\(3) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out3\(3))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out3[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1_out3\(3),
	datac => \shift0|reg1_out3[3]~3_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out3\(3));

-- Location: LCCOMB_X26_Y13_N10
\shift0|reg2~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~111_combout\ = (\shift0|reg2[3]~62_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[3]~62_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg2~111_combout\);

-- Location: LCCOMB_X26_Y13_N8
\shift0|reg2[3]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[3]~61_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2[3]~61_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~clkctrl_outclk\,
	datac => \shift0|reg2[3]~61_combout\,
	datad => \shift0|reg2~111_combout\,
	combout => \shift0|reg2[3]~61_combout\);

-- Location: LCCOMB_X26_Y13_N0
\shift0|reg2[3]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[3]~63_combout\ = \shift0|reg1[3]~62_combout\ $ (\shift0|reg2[3]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[3]~62_combout\,
	datad => \shift0|reg2[3]~61_combout\,
	combout => \shift0|reg2[3]~63_combout\);

-- Location: FF_X26_Y13_N1
\shift0|reg2[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[3]~63_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[3]~_emulated_q\);

-- Location: LCCOMB_X26_Y13_N26
\shift0|reg2[3]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[3]~62_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[3]~61_combout\ $ (\shift0|reg2[3]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2~111_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[3]~61_combout\,
	datad => \shift0|reg2[3]~_emulated_q\,
	combout => \shift0|reg2[3]~62_combout\);

-- Location: LCCOMB_X25_Y12_N2
\shift0|reg2_out3[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out3[3]~3_combout\ = (\shift0|reg2[3]~62_combout\ & \inverter0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shift0|reg2[3]~62_combout\,
	datad => \inverter0|temp~q\,
	combout => \shift0|reg2_out3[3]~3_combout\);

-- Location: LCCOMB_X25_Y12_N16
\shift0|reg2_out3[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out3\(3) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out3\(3)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out3[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	datac => \shift0|reg2_out3[3]~3_combout\,
	datad => \shift0|reg2_out3\(3),
	combout => \shift0|reg2_out3\(3));

-- Location: LCCOMB_X26_Y13_N28
\shift0|reg3~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~111_combout\ = (\shift0|reg3[3]~62_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3[3]~62_combout\,
	datac => \inverter0|temp~q\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg3~111_combout\);

-- Location: LCCOMB_X26_Y13_N30
\shift0|reg3[3]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[3]~61_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3[3]~61_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3[3]~61_combout\,
	datac => \shift0|reg3~111_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg3[3]~61_combout\);

-- Location: LCCOMB_X26_Y13_N20
\shift0|reg3[3]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[3]~63_combout\ = \shift0|reg2[3]~62_combout\ $ (\shift0|reg3[3]~61_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[3]~62_combout\,
	datac => \shift0|reg3[3]~61_combout\,
	combout => \shift0|reg3[3]~63_combout\);

-- Location: FF_X26_Y13_N21
\shift0|reg3[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[3]~63_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[3]~_emulated_q\);

-- Location: LCCOMB_X26_Y13_N2
\shift0|reg3[3]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[3]~62_combout\ = (\inverter0|temp~q\ & ((\shift0|reg3[3]~61_combout\ $ (\shift0|reg3[3]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg3~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg3~111_combout\,
	datac => \shift0|reg3[3]~61_combout\,
	datad => \shift0|reg3[3]~_emulated_q\,
	combout => \shift0|reg3[3]~62_combout\);

-- Location: LCCOMB_X26_Y13_N16
\shift0|reg3_out3[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out3[3]~3_combout\ = (\inverter0|temp~q\ & \shift0|reg3[3]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg3[3]~62_combout\,
	combout => \shift0|reg3_out3[3]~3_combout\);

-- Location: LCCOMB_X26_Y13_N4
\shift0|reg3_out3[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out3\(3) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out3\(3)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out3[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out3[3]~3_combout\,
	datac => \shift0|reg3_out3\(3),
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg3_out3\(3));

-- Location: LCCOMB_X25_Y12_N8
\sel_state3|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state3|Selector4~0_combout\ = (\sel_state0|pr_state.state4~q\) # ((!\sel_state0|pr_state.state3~q\ & (\shift0|reg3_out3\(3) & \sel_state0|pr_state.state2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|pr_state.state4~q\,
	datab => \sel_state0|pr_state.state3~q\,
	datac => \shift0|reg3_out3\(3),
	datad => \sel_state0|pr_state.state2~q\,
	combout => \sel_state3|Selector4~0_combout\);

-- Location: LCCOMB_X25_Y12_N18
\sel_state3|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state3|Selector4~1_combout\ = (\sel_state3|Selector4~0_combout\ & ((\shift0|reg1_out3\(3)) # ((!\sel_state0|Selector6~0_combout\)))) # (!\sel_state3|Selector4~0_combout\ & (((\shift0|reg2_out3\(3) & \sel_state0|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1_out3\(3),
	datab => \shift0|reg2_out3\(3),
	datac => \sel_state3|Selector4~0_combout\,
	datad => \sel_state0|Selector6~0_combout\,
	combout => \sel_state3|Selector4~1_combout\);

-- Location: LCCOMB_X30_Y12_N10
\shift0|reg1~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~108_combout\ = (\shift0|reg1[1]~54_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \xd_clear|y~q\,
	datad => \shift0|reg1[1]~54_combout\,
	combout => \shift0|reg1~108_combout\);

-- Location: LCCOMB_X30_Y12_N26
\shift0|reg1[1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[1]~53_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1[1]~53_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[1]~53_combout\,
	datab => \inverter0|temp~clkctrl_outclk\,
	datac => \shift0|reg1~108_combout\,
	combout => \shift0|reg1[1]~53_combout\);

-- Location: LCCOMB_X30_Y12_N18
\shift0|reg1[1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[1]~55_combout\ = \shift0|reg1[1]~53_combout\ $ (\cnt3|temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shift0|reg1[1]~53_combout\,
	datad => \cnt3|temp\(1),
	combout => \shift0|reg1[1]~55_combout\);

-- Location: FF_X30_Y12_N19
\shift0|reg1[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[1]~55_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[1]~_emulated_q\);

-- Location: LCCOMB_X30_Y12_N8
\shift0|reg1[1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[1]~54_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[1]~53_combout\ $ (\shift0|reg1[1]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg1~108_combout\,
	datac => \shift0|reg1[1]~53_combout\,
	datad => \shift0|reg1[1]~_emulated_q\,
	combout => \shift0|reg1[1]~54_combout\);

-- Location: LCCOMB_X30_Y12_N12
\shift0|reg1_out3[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out3[1]~0_combout\ = (\shift0|reg1[1]~54_combout\ & \inverter0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shift0|reg1[1]~54_combout\,
	datad => \inverter0|temp~q\,
	combout => \shift0|reg1_out3[1]~0_combout\);

-- Location: LCCOMB_X21_Y12_N22
\shift0|reg1_out3[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out3\(1) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out3\(1))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out3[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1_out3\(1),
	datac => \shift0|reg1_out3[1]~0_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out3\(1));

-- Location: LCCOMB_X30_Y12_N30
\shift0|reg2~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~108_combout\ = (\shift0|reg2[1]~54_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \xd_clear|y~q\,
	datad => \shift0|reg2[1]~54_combout\,
	combout => \shift0|reg2~108_combout\);

-- Location: LCCOMB_X30_Y12_N14
\shift0|reg2[1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[1]~53_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2[1]~53_combout\))) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~clkctrl_outclk\,
	datac => \shift0|reg2~108_combout\,
	datad => \shift0|reg2[1]~53_combout\,
	combout => \shift0|reg2[1]~53_combout\);

-- Location: LCCOMB_X30_Y12_N6
\shift0|reg2[1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[1]~55_combout\ = \shift0|reg1[1]~54_combout\ $ (\shift0|reg2[1]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[1]~54_combout\,
	datac => \shift0|reg2[1]~53_combout\,
	combout => \shift0|reg2[1]~55_combout\);

-- Location: FF_X30_Y12_N7
\shift0|reg2[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[1]~55_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[1]~_emulated_q\);

-- Location: LCCOMB_X30_Y12_N0
\shift0|reg2[1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[1]~54_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[1]~53_combout\ $ (\shift0|reg2[1]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2~108_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[1]~53_combout\,
	datad => \shift0|reg2[1]~_emulated_q\,
	combout => \shift0|reg2[1]~54_combout\);

-- Location: LCCOMB_X30_Y12_N28
\shift0|reg2_out3[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out3[1]~0_combout\ = (\inverter0|temp~q\ & \shift0|reg2[1]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[1]~54_combout\,
	combout => \shift0|reg2_out3[1]~0_combout\);

-- Location: LCCOMB_X29_Y12_N10
\shift0|reg2_out3[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out3\(1) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out3\(1)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out3[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out3[1]~0_combout\,
	datab => \shift0|reg2_out3\(1),
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg2_out3\(1));

-- Location: LCCOMB_X30_Y12_N16
\shift0|reg3~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~108_combout\ = (\shift0|reg3[1]~54_combout\ & ((\xd_clear|y~q\) # (\inverter0|temp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xd_clear|y~q\,
	datac => \inverter0|temp~q\,
	datad => \shift0|reg3[1]~54_combout\,
	combout => \shift0|reg3~108_combout\);

-- Location: LCCOMB_X30_Y12_N24
\shift0|reg3[1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[1]~53_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3[1]~53_combout\))) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~clkctrl_outclk\,
	datac => \shift0|reg3~108_combout\,
	datad => \shift0|reg3[1]~53_combout\,
	combout => \shift0|reg3[1]~53_combout\);

-- Location: LCCOMB_X30_Y12_N2
\shift0|reg3[1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[1]~55_combout\ = \shift0|reg2[1]~54_combout\ $ (\shift0|reg3[1]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[1]~54_combout\,
	datad => \shift0|reg3[1]~53_combout\,
	combout => \shift0|reg3[1]~55_combout\);

-- Location: FF_X30_Y12_N3
\shift0|reg3[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[1]~55_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[1]~_emulated_q\);

-- Location: LCCOMB_X30_Y12_N4
\shift0|reg3[1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[1]~54_combout\ = (\inverter0|temp~q\ & (\shift0|reg3[1]~_emulated_q\ $ (((\shift0|reg3[1]~53_combout\))))) # (!\inverter0|temp~q\ & (((\shift0|reg3~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg3[1]~_emulated_q\,
	datac => \shift0|reg3~108_combout\,
	datad => \shift0|reg3[1]~53_combout\,
	combout => \shift0|reg3[1]~54_combout\);

-- Location: LCCOMB_X30_Y12_N22
\shift0|reg3_out3[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out3[1]~0_combout\ = (\inverter0|temp~q\ & \shift0|reg3[1]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg3[1]~54_combout\,
	combout => \shift0|reg3_out3[1]~0_combout\);

-- Location: LCCOMB_X30_Y12_N20
\shift0|reg3_out3[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out3\(1) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out3\(1))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out3[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3_out3\(1),
	datac => \shift0|reg3_out3[1]~0_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg3_out3\(1));

-- Location: LCCOMB_X21_Y12_N24
\sel_state3|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state3|Selector6~0_combout\ = (\sel_state0|Selector6~1_combout\ & ((\sel_state0|Selector6~0_combout\) # ((\shift0|reg3_out3\(1))))) # (!\sel_state0|Selector6~1_combout\ & (!\sel_state0|Selector6~0_combout\ & ((\cnt3|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector6~1_combout\,
	datab => \sel_state0|Selector6~0_combout\,
	datac => \shift0|reg3_out3\(1),
	datad => \cnt3|temp\(1),
	combout => \sel_state3|Selector6~0_combout\);

-- Location: LCCOMB_X21_Y12_N6
\sel_state3|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state3|Selector6~1_combout\ = (\sel_state0|Selector6~0_combout\ & ((\sel_state3|Selector6~0_combout\ & (\shift0|reg1_out3\(1))) # (!\sel_state3|Selector6~0_combout\ & ((\shift0|reg2_out3\(1)))))) # (!\sel_state0|Selector6~0_combout\ & 
-- (((\sel_state3|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1_out3\(1),
	datab => \sel_state0|Selector6~0_combout\,
	datac => \shift0|reg2_out3\(1),
	datad => \sel_state3|Selector6~0_combout\,
	combout => \sel_state3|Selector6~1_combout\);

-- Location: LCCOMB_X24_Y13_N22
\shift0|reg3~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~109_combout\ = (\shift0|reg3[0]~50_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg3[0]~50_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg3~109_combout\);

-- Location: LCCOMB_X24_Y13_N20
\shift0|reg2~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~109_combout\ = (\shift0|reg2[0]~50_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg2[0]~50_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg2~109_combout\);

-- Location: LCCOMB_X24_Y13_N8
\shift0|reg2[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[0]~49_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2[0]~49_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[0]~49_combout\,
	datac => \shift0|reg2~109_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg2[0]~49_combout\);

-- Location: LCCOMB_X24_Y13_N10
\shift0|reg1~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~109_combout\ = (\shift0|reg1[0]~50_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[0]~50_combout\,
	datac => \inverter0|temp~q\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg1~109_combout\);

-- Location: LCCOMB_X24_Y13_N14
\shift0|reg1[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[0]~49_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1[0]~49_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[0]~49_combout\,
	datac => \shift0|reg1~109_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg1[0]~49_combout\);

-- Location: LCCOMB_X24_Y13_N6
\shift0|reg1[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[0]~51_combout\ = \shift0|reg1[0]~49_combout\ $ (\cnt3|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1[0]~49_combout\,
	datac => \cnt3|temp\(0),
	combout => \shift0|reg1[0]~51_combout\);

-- Location: FF_X24_Y13_N7
\shift0|reg1[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[0]~51_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[0]~_emulated_q\);

-- Location: LCCOMB_X24_Y13_N12
\shift0|reg1[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[0]~50_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[0]~49_combout\ $ (\shift0|reg1[0]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1~109_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg1[0]~49_combout\,
	datad => \shift0|reg1[0]~_emulated_q\,
	combout => \shift0|reg1[0]~50_combout\);

-- Location: LCCOMB_X24_Y13_N2
\shift0|reg2[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[0]~51_combout\ = \shift0|reg1[0]~50_combout\ $ (\shift0|reg2[0]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[0]~50_combout\,
	datad => \shift0|reg2[0]~49_combout\,
	combout => \shift0|reg2[0]~51_combout\);

-- Location: FF_X24_Y13_N3
\shift0|reg2[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[0]~51_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[0]~_emulated_q\);

-- Location: LCCOMB_X24_Y13_N16
\shift0|reg2[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[0]~50_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[0]~49_combout\ $ (\shift0|reg2[0]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg2~109_combout\,
	datac => \shift0|reg2[0]~49_combout\,
	datad => \shift0|reg2[0]~_emulated_q\,
	combout => \shift0|reg2[0]~50_combout\);

-- Location: LCCOMB_X24_Y13_N18
\shift0|reg3[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[0]~49_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3[0]~49_combout\))) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3~109_combout\,
	datab => \shift0|reg3[0]~49_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg3[0]~49_combout\);

-- Location: LCCOMB_X24_Y13_N26
\shift0|reg3[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[0]~51_combout\ = \shift0|reg2[0]~50_combout\ $ (\shift0|reg3[0]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[0]~50_combout\,
	datad => \shift0|reg3[0]~49_combout\,
	combout => \shift0|reg3[0]~51_combout\);

-- Location: FF_X24_Y13_N27
\shift0|reg3[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[0]~51_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[0]~_emulated_q\);

-- Location: LCCOMB_X24_Y13_N4
\shift0|reg3[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[0]~50_combout\ = (\inverter0|temp~q\ & ((\shift0|reg3[0]~_emulated_q\ $ (\shift0|reg3[0]~49_combout\)))) # (!\inverter0|temp~q\ & (\shift0|reg3~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3~109_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg3[0]~_emulated_q\,
	datad => \shift0|reg3[0]~49_combout\,
	combout => \shift0|reg3[0]~50_combout\);

-- Location: LCCOMB_X24_Y13_N0
\shift0|reg3_out3[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out3[0]~1_combout\ = (\inverter0|temp~q\ & \shift0|reg3[0]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datad => \shift0|reg3[0]~50_combout\,
	combout => \shift0|reg3_out3[0]~1_combout\);

-- Location: LCCOMB_X21_Y12_N8
\shift0|reg3_out3[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out3\(0) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out3\(0)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out3[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out3[0]~1_combout\,
	datac => \shift0|reg3_out3\(0),
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg3_out3\(0));

-- Location: LCCOMB_X24_Y13_N28
\shift0|reg1_out3[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out3[0]~1_combout\ = (\inverter0|temp~q\ & \shift0|reg1[0]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datad => \shift0|reg1[0]~50_combout\,
	combout => \shift0|reg1_out3[0]~1_combout\);

-- Location: LCCOMB_X24_Y13_N24
\shift0|reg1_out3[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out3\(0) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out3\(0))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out3[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1_out3\(0),
	datac => \shift0|reg1_out3[0]~1_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out3\(0));

-- Location: LCCOMB_X24_Y13_N30
\shift0|reg2_out3[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out3[0]~1_combout\ = (\inverter0|temp~q\ & \shift0|reg2[0]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg2[0]~50_combout\,
	combout => \shift0|reg2_out3[0]~1_combout\);

-- Location: LCCOMB_X23_Y13_N16
\shift0|reg2_out3[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out3\(0) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out3\(0)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out3[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out3[0]~1_combout\,
	datac => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	datad => \shift0|reg2_out3\(0),
	combout => \shift0|reg2_out3\(0));

-- Location: LCCOMB_X21_Y12_N20
\sel_state3|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state3|Selector7~0_combout\ = (\sel_state0|Selector6~0_combout\ & ((\shift0|reg2_out3\(0)) # ((\sel_state0|Selector6~1_combout\)))) # (!\sel_state0|Selector6~0_combout\ & (((!\sel_state0|Selector6~1_combout\ & \cnt3|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out3\(0),
	datab => \sel_state0|Selector6~0_combout\,
	datac => \sel_state0|Selector6~1_combout\,
	datad => \cnt3|temp\(0),
	combout => \sel_state3|Selector7~0_combout\);

-- Location: LCCOMB_X21_Y12_N18
\sel_state3|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state3|Selector7~1_combout\ = (\sel_state0|Selector6~1_combout\ & ((\sel_state3|Selector7~0_combout\ & ((\shift0|reg1_out3\(0)))) # (!\sel_state3|Selector7~0_combout\ & (\shift0|reg3_out3\(0))))) # (!\sel_state0|Selector6~1_combout\ & 
-- (((\sel_state3|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out3\(0),
	datab => \shift0|reg1_out3\(0),
	datac => \sel_state0|Selector6~1_combout\,
	datad => \sel_state3|Selector7~0_combout\,
	combout => \sel_state3|Selector7~1_combout\);

-- Location: LCCOMB_X22_Y12_N6
\cmp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmp~7_combout\ = (\cnt3|temp\(1) & (\sel_state3|Selector6~1_combout\ & (\cnt3|temp\(0) $ (!\sel_state3|Selector7~1_combout\)))) # (!\cnt3|temp\(1) & (!\sel_state3|Selector6~1_combout\ & (\cnt3|temp\(0) $ (!\sel_state3|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt3|temp\(1),
	datab => \cnt3|temp\(0),
	datac => \sel_state3|Selector6~1_combout\,
	datad => \sel_state3|Selector7~1_combout\,
	combout => \cmp~7_combout\);

-- Location: LCCOMB_X22_Y12_N8
\cmp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmp~8_combout\ = (!\sel_state3|Selector4~1_combout\ & (\cmp~7_combout\ & (\sel_state3|Selector5~1_combout\ $ (!\cnt3|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state3|Selector5~1_combout\,
	datab => \sel_state3|Selector4~1_combout\,
	datac => \cnt3|temp\(2),
	datad => \cmp~7_combout\,
	combout => \cmp~8_combout\);

-- Location: LCCOMB_X25_Y10_N16
\shift0|reg1~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~106_combout\ = (\shift0|reg1[7]~46_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg1[7]~46_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg1~106_combout\);

-- Location: LCCOMB_X25_Y10_N30
\shift0|reg1[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[7]~45_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1[7]~45_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[7]~45_combout\,
	datac => \shift0|reg1~106_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg1[7]~45_combout\);

-- Location: LCCOMB_X25_Y10_N28
\shift0|reg1[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[7]~47_combout\ = \shift0|reg1[7]~45_combout\ $ (\cnt2|temp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[7]~45_combout\,
	datac => \cnt2|temp\(3),
	combout => \shift0|reg1[7]~47_combout\);

-- Location: FF_X25_Y10_N29
\shift0|reg1[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[7]~47_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[7]~_emulated_q\);

-- Location: LCCOMB_X25_Y10_N18
\shift0|reg1[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[7]~46_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[7]~45_combout\ $ (\shift0|reg1[7]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg1~106_combout\,
	datac => \shift0|reg1[7]~45_combout\,
	datad => \shift0|reg1[7]~_emulated_q\,
	combout => \shift0|reg1[7]~46_combout\);

-- Location: LCCOMB_X25_Y10_N2
\shift0|reg1_out2[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out2[3]~2_combout\ = (\shift0|reg1[7]~46_combout\ & \inverter0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[7]~46_combout\,
	datab => \inverter0|temp~q\,
	combout => \shift0|reg1_out2[3]~2_combout\);

-- Location: LCCOMB_X25_Y10_N4
\shift0|reg1_out2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out2\(3) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out2\(3))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out2[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1_out2\(3),
	datac => \shift0|reg1_out2[3]~2_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out2\(3));

-- Location: LCCOMB_X25_Y10_N12
\shift0|reg2~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~106_combout\ = (\shift0|reg2[7]~46_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg2[7]~46_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg2~106_combout\);

-- Location: LCCOMB_X25_Y10_N22
\shift0|reg2[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[7]~45_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2[7]~45_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[7]~45_combout\,
	datac => \shift0|reg2~106_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg2[7]~45_combout\);

-- Location: LCCOMB_X25_Y10_N0
\shift0|reg2[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[7]~47_combout\ = \shift0|reg1[7]~46_combout\ $ (\shift0|reg2[7]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[7]~46_combout\,
	datad => \shift0|reg2[7]~45_combout\,
	combout => \shift0|reg2[7]~47_combout\);

-- Location: FF_X25_Y10_N1
\shift0|reg2[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[7]~47_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[7]~_emulated_q\);

-- Location: LCCOMB_X25_Y10_N26
\shift0|reg2[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[7]~46_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[7]~45_combout\ $ (\shift0|reg2[7]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2~106_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg2[7]~45_combout\,
	datad => \shift0|reg2[7]~_emulated_q\,
	combout => \shift0|reg2[7]~46_combout\);

-- Location: LCCOMB_X25_Y10_N20
\shift0|reg2_out2[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out2[3]~2_combout\ = (\inverter0|temp~q\ & \shift0|reg2[7]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datad => \shift0|reg2[7]~46_combout\,
	combout => \shift0|reg2_out2[3]~2_combout\);

-- Location: LCCOMB_X25_Y10_N6
\shift0|reg2_out2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out2\(3) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out2\(3)))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out2[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	datac => \shift0|reg2_out2[3]~2_combout\,
	datad => \shift0|reg2_out2\(3),
	combout => \shift0|reg2_out2\(3));

-- Location: LCCOMB_X25_Y10_N10
\shift0|reg3~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~106_combout\ = (\shift0|reg3[7]~46_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inverter0|temp~q\,
	datac => \shift0|reg3[7]~46_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg3~106_combout\);

-- Location: LCCOMB_X25_Y10_N8
\shift0|reg3[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[7]~45_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3[7]~45_combout\))) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3~106_combout\,
	datac => \shift0|reg3[7]~45_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg3[7]~45_combout\);

-- Location: LCCOMB_X25_Y10_N24
\shift0|reg3[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[7]~47_combout\ = \shift0|reg2[7]~46_combout\ $ (\shift0|reg3[7]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[7]~46_combout\,
	datad => \shift0|reg3[7]~45_combout\,
	combout => \shift0|reg3[7]~47_combout\);

-- Location: FF_X25_Y10_N25
\shift0|reg3[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[7]~47_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[7]~_emulated_q\);

-- Location: LCCOMB_X25_Y10_N14
\shift0|reg3[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[7]~46_combout\ = (\inverter0|temp~q\ & ((\shift0|reg3[7]~45_combout\ $ (\shift0|reg3[7]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg3~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3~106_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg3[7]~45_combout\,
	datad => \shift0|reg3[7]~_emulated_q\,
	combout => \shift0|reg3[7]~46_combout\);

-- Location: LCCOMB_X22_Y12_N28
\shift0|reg3_out2[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out2[3]~2_combout\ = (\inverter0|temp~q\ & \shift0|reg3[7]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg3[7]~46_combout\,
	combout => \shift0|reg3_out2[3]~2_combout\);

-- Location: LCCOMB_X22_Y12_N14
\shift0|reg3_out2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out2\(3) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out2\(3))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out2[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	datac => \shift0|reg3_out2\(3),
	datad => \shift0|reg3_out2[3]~2_combout\,
	combout => \shift0|reg3_out2\(3));

-- Location: LCCOMB_X22_Y12_N12
\sel_state2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state2|Selector4~0_combout\ = (\sel_state0|Selector6~1_combout\ & ((\shift0|reg3_out2\(3)) # ((\sel_state0|Selector6~0_combout\)))) # (!\sel_state0|Selector6~1_combout\ & (((\cnt2|temp\(3) & !\sel_state0|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector6~1_combout\,
	datab => \shift0|reg3_out2\(3),
	datac => \cnt2|temp\(3),
	datad => \sel_state0|Selector6~0_combout\,
	combout => \sel_state2|Selector4~0_combout\);

-- Location: LCCOMB_X22_Y12_N26
\sel_state2|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state2|Selector4~1_combout\ = (\sel_state0|Selector6~0_combout\ & ((\sel_state2|Selector4~0_combout\ & (\shift0|reg1_out2\(3))) # (!\sel_state2|Selector4~0_combout\ & ((\shift0|reg2_out2\(3)))))) # (!\sel_state0|Selector6~0_combout\ & 
-- (((\sel_state2|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector6~0_combout\,
	datab => \shift0|reg1_out2\(3),
	datac => \shift0|reg2_out2\(3),
	datad => \sel_state2|Selector4~0_combout\,
	combout => \sel_state2|Selector4~1_combout\);

-- Location: LCCOMB_X25_Y11_N14
\shift0|reg3~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3~107_combout\ = (\shift0|reg3[6]~42_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg3[6]~42_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg3~107_combout\);

-- Location: LCCOMB_X25_Y11_N22
\shift0|reg3[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[6]~41_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg3[6]~41_combout\))) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg3~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg3~107_combout\,
	datac => \shift0|reg3[6]~41_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg3[6]~41_combout\);

-- Location: LCCOMB_X25_Y11_N24
\shift0|reg2~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2~107_combout\ = (\shift0|reg2[6]~42_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[6]~42_combout\,
	datab => \inverter0|temp~q\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg2~107_combout\);

-- Location: LCCOMB_X25_Y11_N4
\shift0|reg2[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[6]~41_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg2[6]~41_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg2~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg2[6]~41_combout\,
	datac => \shift0|reg2~107_combout\,
	datad => \inverter0|temp~clkctrl_outclk\,
	combout => \shift0|reg2[6]~41_combout\);

-- Location: LCCOMB_X25_Y11_N30
\shift0|reg1~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1~107_combout\ = (\shift0|reg1[6]~42_combout\ & ((\inverter0|temp~q\) # (\xd_clear|y~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datac => \shift0|reg1[6]~42_combout\,
	datad => \xd_clear|y~q\,
	combout => \shift0|reg1~107_combout\);

-- Location: LCCOMB_X25_Y11_N26
\shift0|reg1[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[6]~41_combout\ = (GLOBAL(\inverter0|temp~clkctrl_outclk\) & (\shift0|reg1[6]~41_combout\)) # (!GLOBAL(\inverter0|temp~clkctrl_outclk\) & ((\shift0|reg1~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[6]~41_combout\,
	datac => \inverter0|temp~clkctrl_outclk\,
	datad => \shift0|reg1~107_combout\,
	combout => \shift0|reg1[6]~41_combout\);

-- Location: LCCOMB_X25_Y11_N2
\shift0|reg1[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[6]~43_combout\ = \shift0|reg1[6]~41_combout\ $ (\cnt2|temp\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shift0|reg1[6]~41_combout\,
	datad => \cnt2|temp\(2),
	combout => \shift0|reg1[6]~43_combout\);

-- Location: FF_X25_Y11_N3
\shift0|reg1[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg1[6]~43_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg1[6]~_emulated_q\);

-- Location: LCCOMB_X25_Y11_N8
\shift0|reg1[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1[6]~42_combout\ = (\inverter0|temp~q\ & ((\shift0|reg1[6]~41_combout\ $ (\shift0|reg1[6]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg1~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1~107_combout\,
	datab => \inverter0|temp~q\,
	datac => \shift0|reg1[6]~41_combout\,
	datad => \shift0|reg1[6]~_emulated_q\,
	combout => \shift0|reg1[6]~42_combout\);

-- Location: LCCOMB_X25_Y11_N10
\shift0|reg2[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[6]~43_combout\ = \shift0|reg1[6]~42_combout\ $ (\shift0|reg2[6]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg1[6]~42_combout\,
	datac => \shift0|reg2[6]~41_combout\,
	combout => \shift0|reg2[6]~43_combout\);

-- Location: FF_X25_Y11_N11
\shift0|reg2[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg2[6]~43_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg2[6]~_emulated_q\);

-- Location: LCCOMB_X25_Y11_N12
\shift0|reg2[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2[6]~42_combout\ = (\inverter0|temp~q\ & ((\shift0|reg2[6]~41_combout\ $ (\shift0|reg2[6]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg2~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg2~107_combout\,
	datac => \shift0|reg2[6]~41_combout\,
	datad => \shift0|reg2[6]~_emulated_q\,
	combout => \shift0|reg2[6]~42_combout\);

-- Location: LCCOMB_X25_Y11_N6
\shift0|reg3[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[6]~43_combout\ = \shift0|reg2[6]~42_combout\ $ (\shift0|reg3[6]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2[6]~42_combout\,
	datac => \shift0|reg3[6]~41_combout\,
	combout => \shift0|reg3[6]~43_combout\);

-- Location: FF_X25_Y11_N7
\shift0|reg3[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \xd_save|ALT_INV_y~clkctrl_outclk\,
	d => \shift0|reg3[6]~43_combout\,
	clrn => \inverter0|temp~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shift0|reg3[6]~_emulated_q\);

-- Location: LCCOMB_X25_Y11_N0
\shift0|reg3[6]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3[6]~42_combout\ = (\inverter0|temp~q\ & ((\shift0|reg3[6]~41_combout\ $ (\shift0|reg3[6]~_emulated_q\)))) # (!\inverter0|temp~q\ & (\shift0|reg3~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg3~107_combout\,
	datac => \shift0|reg3[6]~41_combout\,
	datad => \shift0|reg3[6]~_emulated_q\,
	combout => \shift0|reg3[6]~42_combout\);

-- Location: LCCOMB_X25_Y11_N16
\shift0|reg3_out2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out2[2]~3_combout\ = (\shift0|reg3[6]~42_combout\ & \inverter0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shift0|reg3[6]~42_combout\,
	datad => \inverter0|temp~q\,
	combout => \shift0|reg3_out2[2]~3_combout\);

-- Location: LCCOMB_X21_Y11_N10
\shift0|reg3_out2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg3_out2\(2) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg3_out2\(2))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg3_out2[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out2\(2),
	datac => \shift0|reg3_out2[2]~3_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg3_out2\(2));

-- Location: LCCOMB_X25_Y11_N28
\shift0|reg1_out2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out2[2]~3_combout\ = (\shift0|reg1[6]~42_combout\ & \inverter0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shift0|reg1[6]~42_combout\,
	datad => \inverter0|temp~q\,
	combout => \shift0|reg1_out2[2]~3_combout\);

-- Location: LCCOMB_X21_Y12_N4
\shift0|reg1_out2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg1_out2\(2) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg1_out2\(2))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg1_out2[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shift0|reg1_out2\(2),
	datac => \shift0|reg1_out2[2]~3_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg1_out2\(2));

-- Location: LCCOMB_X25_Y11_N18
\shift0|reg2_out2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out2[2]~3_combout\ = (\inverter0|temp~q\ & \shift0|reg2[6]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inverter0|temp~q\,
	datab => \shift0|reg2[6]~42_combout\,
	combout => \shift0|reg2_out2[2]~3_combout\);

-- Location: LCCOMB_X25_Y11_N20
\shift0|reg2_out2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \shift0|reg2_out2\(2) = (GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & (\shift0|reg2_out2\(2))) # (!GLOBAL(\shift0|reg3_out0[3]~0clkctrl_outclk\) & ((\shift0|reg2_out2[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg2_out2\(2),
	datac => \shift0|reg2_out2[2]~3_combout\,
	datad => \shift0|reg3_out0[3]~0clkctrl_outclk\,
	combout => \shift0|reg2_out2\(2));

-- Location: LCCOMB_X21_Y12_N28
\sel_state2|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state2|Selector5~0_combout\ = (\sel_state0|Selector6~1_combout\ & (\sel_state0|Selector6~0_combout\)) # (!\sel_state0|Selector6~1_combout\ & ((\sel_state0|Selector6~0_combout\ & (\shift0|reg2_out2\(2))) # (!\sel_state0|Selector6~0_combout\ & 
-- ((\cnt2|temp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector6~1_combout\,
	datab => \sel_state0|Selector6~0_combout\,
	datac => \shift0|reg2_out2\(2),
	datad => \cnt2|temp\(2),
	combout => \sel_state2|Selector5~0_combout\);

-- Location: LCCOMB_X21_Y12_N14
\sel_state2|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sel_state2|Selector5~1_combout\ = (\sel_state0|Selector6~1_combout\ & ((\sel_state2|Selector5~0_combout\ & ((\shift0|reg1_out2\(2)))) # (!\sel_state2|Selector5~0_combout\ & (\shift0|reg3_out2\(2))))) # (!\sel_state0|Selector6~1_combout\ & 
-- (((\sel_state2|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift0|reg3_out2\(2),
	datab => \shift0|reg1_out2\(2),
	datac => \sel_state0|Selector6~1_combout\,
	datad => \sel_state2|Selector5~0_combout\,
	combout => \sel_state2|Selector5~1_combout\);

-- Location: LCCOMB_X22_Y12_N0
\cmp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmp~6_combout\ = (\cnt2|temp\(2) & (\sel_state2|Selector5~1_combout\ & (\cnt2|temp\(3) $ (!\sel_state2|Selector4~1_combout\)))) # (!\cnt2|temp\(2) & (!\sel_state2|Selector5~1_combout\ & (\cnt2|temp\(3) $ (!\sel_state2|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt2|temp\(2),
	datab => \cnt2|temp\(3),
	datac => \sel_state2|Selector4~1_combout\,
	datad => \sel_state2|Selector5~1_combout\,
	combout => \cmp~6_combout\);

-- Location: LCCOMB_X22_Y12_N30
cmp : cycloneive_lcell_comb
-- Equation(s):
-- \cmp~combout\ = (\cmp~5_combout\ & (\cmp~4_combout\ & (\cmp~8_combout\ & \cmp~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmp~5_combout\,
	datab => \cmp~4_combout\,
	datac => \cmp~8_combout\,
	datad => \cmp~6_combout\,
	combout => \cmp~combout\);

-- Location: FF_X21_Y13_N31
\flicker0|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~62_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(31));

-- Location: LCCOMB_X21_Y14_N0
\flicker0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~0_combout\ = \flicker0|cnt\(0) $ (VCC)
-- \flicker0|Add0~1\ = CARRY(\flicker0|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(0),
	datad => VCC,
	combout => \flicker0|Add0~0_combout\,
	cout => \flicker0|Add0~1\);

-- Location: FF_X21_Y14_N1
\flicker0|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~0_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(0));

-- Location: LCCOMB_X21_Y14_N2
\flicker0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~2_combout\ = (\flicker0|cnt\(1) & (!\flicker0|Add0~1\)) # (!\flicker0|cnt\(1) & ((\flicker0|Add0~1\) # (GND)))
-- \flicker0|Add0~3\ = CARRY((!\flicker0|Add0~1\) # (!\flicker0|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(1),
	datad => VCC,
	cin => \flicker0|Add0~1\,
	combout => \flicker0|Add0~2_combout\,
	cout => \flicker0|Add0~3\);

-- Location: FF_X21_Y14_N3
\flicker0|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~2_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(1));

-- Location: LCCOMB_X21_Y14_N4
\flicker0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~4_combout\ = (\flicker0|cnt\(2) & (\flicker0|Add0~3\ $ (GND))) # (!\flicker0|cnt\(2) & (!\flicker0|Add0~3\ & VCC))
-- \flicker0|Add0~5\ = CARRY((\flicker0|cnt\(2) & !\flicker0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(2),
	datad => VCC,
	cin => \flicker0|Add0~3\,
	combout => \flicker0|Add0~4_combout\,
	cout => \flicker0|Add0~5\);

-- Location: FF_X21_Y14_N5
\flicker0|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~4_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(2));

-- Location: LCCOMB_X21_Y14_N6
\flicker0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~6_combout\ = (\flicker0|cnt\(3) & (!\flicker0|Add0~5\)) # (!\flicker0|cnt\(3) & ((\flicker0|Add0~5\) # (GND)))
-- \flicker0|Add0~7\ = CARRY((!\flicker0|Add0~5\) # (!\flicker0|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|cnt\(3),
	datad => VCC,
	cin => \flicker0|Add0~5\,
	combout => \flicker0|Add0~6_combout\,
	cout => \flicker0|Add0~7\);

-- Location: LCCOMB_X22_Y13_N10
\flicker0|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|cnt~2_combout\ = (\flicker0|Add0~6_combout\ & (((\flicker0|LessThan3~1_combout\) # (!\flicker0|Equal0~11_combout\)) # (!\flicker0|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|LessThan2~2_combout\,
	datab => \flicker0|LessThan3~1_combout\,
	datac => \flicker0|Equal0~11_combout\,
	datad => \flicker0|Add0~6_combout\,
	combout => \flicker0|cnt~2_combout\);

-- Location: FF_X22_Y13_N11
\flicker0|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|cnt~2_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(3));

-- Location: LCCOMB_X21_Y14_N8
\flicker0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~8_combout\ = (\flicker0|cnt\(4) & (\flicker0|Add0~7\ $ (GND))) # (!\flicker0|cnt\(4) & (!\flicker0|Add0~7\ & VCC))
-- \flicker0|Add0~9\ = CARRY((\flicker0|cnt\(4) & !\flicker0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(4),
	datad => VCC,
	cin => \flicker0|Add0~7\,
	combout => \flicker0|Add0~8_combout\,
	cout => \flicker0|Add0~9\);

-- Location: FF_X21_Y14_N9
\flicker0|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~8_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(4));

-- Location: LCCOMB_X21_Y14_N10
\flicker0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~10_combout\ = (\flicker0|cnt\(5) & (!\flicker0|Add0~9\)) # (!\flicker0|cnt\(5) & ((\flicker0|Add0~9\) # (GND)))
-- \flicker0|Add0~11\ = CARRY((!\flicker0|Add0~9\) # (!\flicker0|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|cnt\(5),
	datad => VCC,
	cin => \flicker0|Add0~9\,
	combout => \flicker0|Add0~10_combout\,
	cout => \flicker0|Add0~11\);

-- Location: FF_X21_Y14_N11
\flicker0|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~10_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(5));

-- Location: LCCOMB_X21_Y14_N12
\flicker0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~12_combout\ = (\flicker0|cnt\(6) & (\flicker0|Add0~11\ $ (GND))) # (!\flicker0|cnt\(6) & (!\flicker0|Add0~11\ & VCC))
-- \flicker0|Add0~13\ = CARRY((\flicker0|cnt\(6) & !\flicker0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(6),
	datad => VCC,
	cin => \flicker0|Add0~11\,
	combout => \flicker0|Add0~12_combout\,
	cout => \flicker0|Add0~13\);

-- Location: LCCOMB_X21_Y14_N14
\flicker0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~14_combout\ = (\flicker0|cnt\(7) & (!\flicker0|Add0~13\)) # (!\flicker0|cnt\(7) & ((\flicker0|Add0~13\) # (GND)))
-- \flicker0|Add0~15\ = CARRY((!\flicker0|Add0~13\) # (!\flicker0|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|cnt\(7),
	datad => VCC,
	cin => \flicker0|Add0~13\,
	combout => \flicker0|Add0~14_combout\,
	cout => \flicker0|Add0~15\);

-- Location: LCCOMB_X21_Y14_N16
\flicker0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~16_combout\ = (\flicker0|cnt\(8) & (\flicker0|Add0~15\ $ (GND))) # (!\flicker0|cnt\(8) & (!\flicker0|Add0~15\ & VCC))
-- \flicker0|Add0~17\ = CARRY((\flicker0|cnt\(8) & !\flicker0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(8),
	datad => VCC,
	cin => \flicker0|Add0~15\,
	combout => \flicker0|Add0~16_combout\,
	cout => \flicker0|Add0~17\);

-- Location: FF_X21_Y14_N17
\flicker0|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~16_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(8));

-- Location: LCCOMB_X21_Y14_N18
\flicker0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~18_combout\ = (\flicker0|cnt\(9) & (!\flicker0|Add0~17\)) # (!\flicker0|cnt\(9) & ((\flicker0|Add0~17\) # (GND)))
-- \flicker0|Add0~19\ = CARRY((!\flicker0|Add0~17\) # (!\flicker0|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(9),
	datad => VCC,
	cin => \flicker0|Add0~17\,
	combout => \flicker0|Add0~18_combout\,
	cout => \flicker0|Add0~19\);

-- Location: FF_X21_Y14_N19
\flicker0|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~18_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(9));

-- Location: LCCOMB_X21_Y14_N20
\flicker0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~20_combout\ = (\flicker0|cnt\(10) & (\flicker0|Add0~19\ $ (GND))) # (!\flicker0|cnt\(10) & (!\flicker0|Add0~19\ & VCC))
-- \flicker0|Add0~21\ = CARRY((\flicker0|cnt\(10) & !\flicker0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(10),
	datad => VCC,
	cin => \flicker0|Add0~19\,
	combout => \flicker0|Add0~20_combout\,
	cout => \flicker0|Add0~21\);

-- Location: FF_X21_Y14_N21
\flicker0|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~20_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(10));

-- Location: LCCOMB_X21_Y14_N22
\flicker0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~22_combout\ = (\flicker0|cnt\(11) & (!\flicker0|Add0~21\)) # (!\flicker0|cnt\(11) & ((\flicker0|Add0~21\) # (GND)))
-- \flicker0|Add0~23\ = CARRY((!\flicker0|Add0~21\) # (!\flicker0|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|cnt\(11),
	datad => VCC,
	cin => \flicker0|Add0~21\,
	combout => \flicker0|Add0~22_combout\,
	cout => \flicker0|Add0~23\);

-- Location: FF_X21_Y14_N23
\flicker0|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~22_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(11));

-- Location: LCCOMB_X21_Y14_N24
\flicker0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~24_combout\ = (\flicker0|cnt\(12) & (\flicker0|Add0~23\ $ (GND))) # (!\flicker0|cnt\(12) & (!\flicker0|Add0~23\ & VCC))
-- \flicker0|Add0~25\ = CARRY((\flicker0|cnt\(12) & !\flicker0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(12),
	datad => VCC,
	cin => \flicker0|Add0~23\,
	combout => \flicker0|Add0~24_combout\,
	cout => \flicker0|Add0~25\);

-- Location: FF_X21_Y14_N25
\flicker0|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~24_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(12));

-- Location: LCCOMB_X21_Y14_N26
\flicker0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~26_combout\ = (\flicker0|cnt\(13) & (!\flicker0|Add0~25\)) # (!\flicker0|cnt\(13) & ((\flicker0|Add0~25\) # (GND)))
-- \flicker0|Add0~27\ = CARRY((!\flicker0|Add0~25\) # (!\flicker0|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|cnt\(13),
	datad => VCC,
	cin => \flicker0|Add0~25\,
	combout => \flicker0|Add0~26_combout\,
	cout => \flicker0|Add0~27\);

-- Location: FF_X21_Y14_N27
\flicker0|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~26_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(13));

-- Location: LCCOMB_X21_Y14_N28
\flicker0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~28_combout\ = (\flicker0|cnt\(14) & (\flicker0|Add0~27\ $ (GND))) # (!\flicker0|cnt\(14) & (!\flicker0|Add0~27\ & VCC))
-- \flicker0|Add0~29\ = CARRY((\flicker0|cnt\(14) & !\flicker0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(14),
	datad => VCC,
	cin => \flicker0|Add0~27\,
	combout => \flicker0|Add0~28_combout\,
	cout => \flicker0|Add0~29\);

-- Location: FF_X21_Y14_N29
\flicker0|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~28_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(14));

-- Location: LCCOMB_X21_Y14_N30
\flicker0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~30_combout\ = (\flicker0|cnt\(15) & (!\flicker0|Add0~29\)) # (!\flicker0|cnt\(15) & ((\flicker0|Add0~29\) # (GND)))
-- \flicker0|Add0~31\ = CARRY((!\flicker0|Add0~29\) # (!\flicker0|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|cnt\(15),
	datad => VCC,
	cin => \flicker0|Add0~29\,
	combout => \flicker0|Add0~30_combout\,
	cout => \flicker0|Add0~31\);

-- Location: FF_X21_Y14_N31
\flicker0|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~30_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(15));

-- Location: LCCOMB_X21_Y13_N0
\flicker0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~32_combout\ = (\flicker0|cnt\(16) & (\flicker0|Add0~31\ $ (GND))) # (!\flicker0|cnt\(16) & (!\flicker0|Add0~31\ & VCC))
-- \flicker0|Add0~33\ = CARRY((\flicker0|cnt\(16) & !\flicker0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(16),
	datad => VCC,
	cin => \flicker0|Add0~31\,
	combout => \flicker0|Add0~32_combout\,
	cout => \flicker0|Add0~33\);

-- Location: FF_X21_Y13_N1
\flicker0|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~32_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(16));

-- Location: LCCOMB_X21_Y13_N2
\flicker0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~34_combout\ = (\flicker0|cnt\(17) & (!\flicker0|Add0~33\)) # (!\flicker0|cnt\(17) & ((\flicker0|Add0~33\) # (GND)))
-- \flicker0|Add0~35\ = CARRY((!\flicker0|Add0~33\) # (!\flicker0|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(17),
	datad => VCC,
	cin => \flicker0|Add0~33\,
	combout => \flicker0|Add0~34_combout\,
	cout => \flicker0|Add0~35\);

-- Location: FF_X21_Y13_N3
\flicker0|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~34_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(17));

-- Location: LCCOMB_X21_Y13_N4
\flicker0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~36_combout\ = (\flicker0|cnt\(18) & (\flicker0|Add0~35\ $ (GND))) # (!\flicker0|cnt\(18) & (!\flicker0|Add0~35\ & VCC))
-- \flicker0|Add0~37\ = CARRY((\flicker0|cnt\(18) & !\flicker0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(18),
	datad => VCC,
	cin => \flicker0|Add0~35\,
	combout => \flicker0|Add0~36_combout\,
	cout => \flicker0|Add0~37\);

-- Location: FF_X21_Y13_N5
\flicker0|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~36_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(18));

-- Location: LCCOMB_X21_Y13_N6
\flicker0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~38_combout\ = (\flicker0|cnt\(19) & (!\flicker0|Add0~37\)) # (!\flicker0|cnt\(19) & ((\flicker0|Add0~37\) # (GND)))
-- \flicker0|Add0~39\ = CARRY((!\flicker0|Add0~37\) # (!\flicker0|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|cnt\(19),
	datad => VCC,
	cin => \flicker0|Add0~37\,
	combout => \flicker0|Add0~38_combout\,
	cout => \flicker0|Add0~39\);

-- Location: FF_X21_Y13_N7
\flicker0|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~38_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(19));

-- Location: LCCOMB_X21_Y13_N8
\flicker0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~40_combout\ = (\flicker0|cnt\(20) & (\flicker0|Add0~39\ $ (GND))) # (!\flicker0|cnt\(20) & (!\flicker0|Add0~39\ & VCC))
-- \flicker0|Add0~41\ = CARRY((\flicker0|cnt\(20) & !\flicker0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(20),
	datad => VCC,
	cin => \flicker0|Add0~39\,
	combout => \flicker0|Add0~40_combout\,
	cout => \flicker0|Add0~41\);

-- Location: FF_X21_Y13_N9
\flicker0|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~40_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(20));

-- Location: LCCOMB_X21_Y13_N10
\flicker0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~42_combout\ = (\flicker0|cnt\(21) & (!\flicker0|Add0~41\)) # (!\flicker0|cnt\(21) & ((\flicker0|Add0~41\) # (GND)))
-- \flicker0|Add0~43\ = CARRY((!\flicker0|Add0~41\) # (!\flicker0|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|cnt\(21),
	datad => VCC,
	cin => \flicker0|Add0~41\,
	combout => \flicker0|Add0~42_combout\,
	cout => \flicker0|Add0~43\);

-- Location: FF_X21_Y13_N11
\flicker0|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~42_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(21));

-- Location: LCCOMB_X21_Y13_N12
\flicker0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~44_combout\ = (\flicker0|cnt\(22) & (\flicker0|Add0~43\ $ (GND))) # (!\flicker0|cnt\(22) & (!\flicker0|Add0~43\ & VCC))
-- \flicker0|Add0~45\ = CARRY((\flicker0|cnt\(22) & !\flicker0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|cnt\(22),
	datad => VCC,
	cin => \flicker0|Add0~43\,
	combout => \flicker0|Add0~44_combout\,
	cout => \flicker0|Add0~45\);

-- Location: FF_X21_Y13_N13
\flicker0|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~44_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(22));

-- Location: LCCOMB_X21_Y13_N14
\flicker0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~46_combout\ = (\flicker0|cnt\(23) & (!\flicker0|Add0~45\)) # (!\flicker0|cnt\(23) & ((\flicker0|Add0~45\) # (GND)))
-- \flicker0|Add0~47\ = CARRY((!\flicker0|Add0~45\) # (!\flicker0|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(23),
	datad => VCC,
	cin => \flicker0|Add0~45\,
	combout => \flicker0|Add0~46_combout\,
	cout => \flicker0|Add0~47\);

-- Location: FF_X21_Y13_N15
\flicker0|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~46_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(23));

-- Location: LCCOMB_X21_Y13_N16
\flicker0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~48_combout\ = (\flicker0|cnt\(24) & (\flicker0|Add0~47\ $ (GND))) # (!\flicker0|cnt\(24) & (!\flicker0|Add0~47\ & VCC))
-- \flicker0|Add0~49\ = CARRY((\flicker0|cnt\(24) & !\flicker0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(24),
	datad => VCC,
	cin => \flicker0|Add0~47\,
	combout => \flicker0|Add0~48_combout\,
	cout => \flicker0|Add0~49\);

-- Location: FF_X21_Y13_N17
\flicker0|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~48_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(24));

-- Location: LCCOMB_X21_Y13_N18
\flicker0|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~50_combout\ = (\flicker0|cnt\(25) & (!\flicker0|Add0~49\)) # (!\flicker0|cnt\(25) & ((\flicker0|Add0~49\) # (GND)))
-- \flicker0|Add0~51\ = CARRY((!\flicker0|Add0~49\) # (!\flicker0|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(25),
	datad => VCC,
	cin => \flicker0|Add0~49\,
	combout => \flicker0|Add0~50_combout\,
	cout => \flicker0|Add0~51\);

-- Location: FF_X21_Y13_N19
\flicker0|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~50_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(25));

-- Location: LCCOMB_X21_Y13_N20
\flicker0|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~52_combout\ = (\flicker0|cnt\(26) & (\flicker0|Add0~51\ $ (GND))) # (!\flicker0|cnt\(26) & (!\flicker0|Add0~51\ & VCC))
-- \flicker0|Add0~53\ = CARRY((\flicker0|cnt\(26) & !\flicker0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(26),
	datad => VCC,
	cin => \flicker0|Add0~51\,
	combout => \flicker0|Add0~52_combout\,
	cout => \flicker0|Add0~53\);

-- Location: FF_X21_Y13_N21
\flicker0|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~52_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(26));

-- Location: LCCOMB_X21_Y13_N22
\flicker0|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~54_combout\ = (\flicker0|cnt\(27) & (!\flicker0|Add0~53\)) # (!\flicker0|cnt\(27) & ((\flicker0|Add0~53\) # (GND)))
-- \flicker0|Add0~55\ = CARRY((!\flicker0|Add0~53\) # (!\flicker0|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|cnt\(27),
	datad => VCC,
	cin => \flicker0|Add0~53\,
	combout => \flicker0|Add0~54_combout\,
	cout => \flicker0|Add0~55\);

-- Location: FF_X21_Y13_N23
\flicker0|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~54_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(27));

-- Location: LCCOMB_X21_Y13_N24
\flicker0|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~56_combout\ = (\flicker0|cnt\(28) & (\flicker0|Add0~55\ $ (GND))) # (!\flicker0|cnt\(28) & (!\flicker0|Add0~55\ & VCC))
-- \flicker0|Add0~57\ = CARRY((\flicker0|cnt\(28) & !\flicker0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(28),
	datad => VCC,
	cin => \flicker0|Add0~55\,
	combout => \flicker0|Add0~56_combout\,
	cout => \flicker0|Add0~57\);

-- Location: FF_X21_Y13_N25
\flicker0|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~56_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(28));

-- Location: LCCOMB_X21_Y13_N26
\flicker0|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~58_combout\ = (\flicker0|cnt\(29) & (!\flicker0|Add0~57\)) # (!\flicker0|cnt\(29) & ((\flicker0|Add0~57\) # (GND)))
-- \flicker0|Add0~59\ = CARRY((!\flicker0|Add0~57\) # (!\flicker0|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|cnt\(29),
	datad => VCC,
	cin => \flicker0|Add0~57\,
	combout => \flicker0|Add0~58_combout\,
	cout => \flicker0|Add0~59\);

-- Location: FF_X21_Y13_N27
\flicker0|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~58_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(29));

-- Location: LCCOMB_X21_Y13_N28
\flicker0|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~60_combout\ = (\flicker0|cnt\(30) & (\flicker0|Add0~59\ $ (GND))) # (!\flicker0|cnt\(30) & (!\flicker0|Add0~59\ & VCC))
-- \flicker0|Add0~61\ = CARRY((\flicker0|cnt\(30) & !\flicker0|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \flicker0|cnt\(30),
	datad => VCC,
	cin => \flicker0|Add0~59\,
	combout => \flicker0|Add0~60_combout\,
	cout => \flicker0|Add0~61\);

-- Location: FF_X21_Y13_N29
\flicker0|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|Add0~60_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(30));

-- Location: LCCOMB_X21_Y13_N30
\flicker0|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Add0~62_combout\ = \flicker0|cnt\(31) $ (\flicker0|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|cnt\(31),
	cin => \flicker0|Add0~61\,
	combout => \flicker0|Add0~62_combout\);

-- Location: LCCOMB_X22_Y13_N14
\flicker0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Equal0~1_combout\ = (!\flicker0|Add0~48_combout\ & (!\flicker0|Add0~54_combout\ & (!\flicker0|Add0~50_combout\ & !\flicker0|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Add0~48_combout\,
	datab => \flicker0|Add0~54_combout\,
	datac => \flicker0|Add0~50_combout\,
	datad => \flicker0|Add0~52_combout\,
	combout => \flicker0|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y13_N8
\flicker0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Equal0~0_combout\ = (!\flicker0|Add0~58_combout\ & (!\flicker0|Add0~56_combout\ & !\flicker0|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Add0~58_combout\,
	datac => \flicker0|Add0~56_combout\,
	datad => \flicker0|Add0~60_combout\,
	combout => \flicker0|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y14_N0
\flicker0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Equal0~8_combout\ = (!\flicker0|Add0~0_combout\ & !\flicker0|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flicker0|Add0~0_combout\,
	datad => \flicker0|Add0~2_combout\,
	combout => \flicker0|Equal0~8_combout\);

-- Location: LCCOMB_X22_Y14_N30
\flicker0|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Equal0~9_combout\ = (!\flicker0|Add0~8_combout\ & (\flicker0|Add0~6_combout\ & (!\flicker0|Add0~4_combout\ & !\flicker0|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Add0~8_combout\,
	datab => \flicker0|Add0~6_combout\,
	datac => \flicker0|Add0~4_combout\,
	datad => \flicker0|Add0~10_combout\,
	combout => \flicker0|Equal0~9_combout\);

-- Location: LCCOMB_X22_Y13_N30
\flicker0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Equal0~3_combout\ = (!\flicker0|Add0~26_combout\ & (!\flicker0|Add0~30_combout\ & (!\flicker0|Add0~28_combout\ & !\flicker0|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Add0~26_combout\,
	datab => \flicker0|Add0~30_combout\,
	datac => \flicker0|Add0~28_combout\,
	datad => \flicker0|Add0~24_combout\,
	combout => \flicker0|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y13_N28
\flicker0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Equal0~2_combout\ = (!\flicker0|Add0~16_combout\ & (!\flicker0|Add0~18_combout\ & (!\flicker0|Add0~20_combout\ & !\flicker0|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Add0~16_combout\,
	datab => \flicker0|Add0~18_combout\,
	datac => \flicker0|Add0~20_combout\,
	datad => \flicker0|Add0~22_combout\,
	combout => \flicker0|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y13_N4
\flicker0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Equal0~4_combout\ = (!\flicker0|Add0~34_combout\ & (!\flicker0|Add0~38_combout\ & (!\flicker0|Add0~36_combout\ & !\flicker0|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Add0~34_combout\,
	datab => \flicker0|Add0~38_combout\,
	datac => \flicker0|Add0~36_combout\,
	datad => \flicker0|Add0~32_combout\,
	combout => \flicker0|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y13_N6
\flicker0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Equal0~5_combout\ = (!\flicker0|Add0~46_combout\ & (!\flicker0|Add0~40_combout\ & (!\flicker0|Add0~42_combout\ & !\flicker0|Add0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Add0~46_combout\,
	datab => \flicker0|Add0~40_combout\,
	datac => \flicker0|Add0~42_combout\,
	datad => \flicker0|Add0~44_combout\,
	combout => \flicker0|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y13_N20
\flicker0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Equal0~6_combout\ = (\flicker0|Equal0~3_combout\ & (\flicker0|Equal0~2_combout\ & (\flicker0|Equal0~4_combout\ & \flicker0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Equal0~3_combout\,
	datab => \flicker0|Equal0~2_combout\,
	datac => \flicker0|Equal0~4_combout\,
	datad => \flicker0|Equal0~5_combout\,
	combout => \flicker0|Equal0~6_combout\);

-- Location: LCCOMB_X22_Y13_N16
\flicker0|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Equal0~10_combout\ = (\flicker0|Equal0~8_combout\ & (\flicker0|Equal0~7_combout\ & (\flicker0|Equal0~9_combout\ & \flicker0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Equal0~8_combout\,
	datab => \flicker0|Equal0~7_combout\,
	datac => \flicker0|Equal0~9_combout\,
	datad => \flicker0|Equal0~6_combout\,
	combout => \flicker0|Equal0~10_combout\);

-- Location: LCCOMB_X22_Y13_N26
\flicker0|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Equal0~11_combout\ = (!\flicker0|Add0~62_combout\ & (\flicker0|Equal0~1_combout\ & (\flicker0|Equal0~0_combout\ & \flicker0|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Add0~62_combout\,
	datab => \flicker0|Equal0~1_combout\,
	datac => \flicker0|Equal0~0_combout\,
	datad => \flicker0|Equal0~10_combout\,
	combout => \flicker0|Equal0~11_combout\);

-- Location: LCCOMB_X22_Y13_N0
\flicker0|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|cnt~1_combout\ = (\flicker0|Add0~12_combout\ & (((\flicker0|LessThan3~1_combout\) # (!\flicker0|Equal0~11_combout\)) # (!\flicker0|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|LessThan2~2_combout\,
	datab => \flicker0|LessThan3~1_combout\,
	datac => \flicker0|Equal0~11_combout\,
	datad => \flicker0|Add0~12_combout\,
	combout => \flicker0|cnt~1_combout\);

-- Location: FF_X22_Y13_N1
\flicker0|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|cnt~1_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(6));

-- Location: LCCOMB_X22_Y14_N10
\flicker0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|Equal0~7_combout\ = (\flicker0|Add0~12_combout\ & \flicker0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Add0~12_combout\,
	datad => \flicker0|Add0~14_combout\,
	combout => \flicker0|Equal0~7_combout\);

-- Location: LCCOMB_X22_Y14_N28
\flicker0|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|LessThan3~0_combout\ = (!\flicker0|Add0~8_combout\ & (!\flicker0|Add0~6_combout\ & !\flicker0|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Add0~8_combout\,
	datac => \flicker0|Add0~6_combout\,
	datad => \flicker0|Add0~10_combout\,
	combout => \flicker0|LessThan3~0_combout\);

-- Location: LCCOMB_X22_Y13_N2
\flicker0|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|LessThan3~1_combout\ = (\flicker0|Equal0~1_combout\ & (\flicker0|Equal0~6_combout\ & ((\flicker0|LessThan3~0_combout\) # (!\flicker0|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Equal0~7_combout\,
	datab => \flicker0|LessThan3~0_combout\,
	datac => \flicker0|Equal0~1_combout\,
	datad => \flicker0|Equal0~6_combout\,
	combout => \flicker0|LessThan3~1_combout\);

-- Location: LCCOMB_X22_Y13_N18
\flicker0|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|cnt~0_combout\ = (\flicker0|Add0~14_combout\ & (((\flicker0|LessThan3~1_combout\) # (!\flicker0|Equal0~11_combout\)) # (!\flicker0|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|LessThan2~2_combout\,
	datab => \flicker0|LessThan3~1_combout\,
	datac => \flicker0|Equal0~11_combout\,
	datad => \flicker0|Add0~14_combout\,
	combout => \flicker0|cnt~0_combout\);

-- Location: FF_X22_Y13_N19
\flicker0|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|cnt~0_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|cnt\(7));

-- Location: LCCOMB_X22_Y14_N26
\flicker0|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|LessThan2~0_combout\ = (\flicker0|Add0~8_combout\) # ((\flicker0|Add0~6_combout\) # ((\flicker0|Add0~4_combout\ & !\flicker0|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Add0~8_combout\,
	datab => \flicker0|Add0~6_combout\,
	datac => \flicker0|Add0~4_combout\,
	datad => \flicker0|Equal0~8_combout\,
	combout => \flicker0|LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y14_N12
\flicker0|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|LessThan2~1_combout\ = (\flicker0|Add0~14_combout\) # ((\flicker0|Add0~12_combout\ & (\flicker0|LessThan2~0_combout\ & \flicker0|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|Add0~14_combout\,
	datab => \flicker0|Add0~12_combout\,
	datac => \flicker0|LessThan2~0_combout\,
	datad => \flicker0|Add0~10_combout\,
	combout => \flicker0|LessThan2~1_combout\);

-- Location: LCCOMB_X22_Y13_N22
\flicker0|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|LessThan2~2_combout\ = (\flicker0|LessThan2~1_combout\) # (((!\flicker0|Equal0~6_combout\) # (!\flicker0|Equal0~0_combout\)) # (!\flicker0|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|LessThan2~1_combout\,
	datab => \flicker0|Equal0~1_combout\,
	datac => \flicker0|Equal0~0_combout\,
	datad => \flicker0|Equal0~6_combout\,
	combout => \flicker0|LessThan2~2_combout\);

-- Location: LCCOMB_X22_Y13_N24
\flicker0|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|temp~0_combout\ = (!\flicker0|temp~q\ & ((\flicker0|Add0~62_combout\) # ((!\flicker0|LessThan3~1_combout\) # (!\flicker0|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|temp~q\,
	datab => \flicker0|Add0~62_combout\,
	datac => \flicker0|Equal0~0_combout\,
	datad => \flicker0|LessThan3~1_combout\,
	combout => \flicker0|temp~0_combout\);

-- Location: LCCOMB_X22_Y13_N12
\flicker0|temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \flicker0|temp~1_combout\ = (\flicker0|LessThan2~2_combout\ & (((\flicker0|Equal0~11_combout\) # (!\flicker0|temp~0_combout\)))) # (!\flicker0|LessThan2~2_combout\ & (\flicker0|Add0~62_combout\ & ((\flicker0|Equal0~11_combout\) # 
-- (!\flicker0|temp~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flicker0|LessThan2~2_combout\,
	datab => \flicker0|Add0~62_combout\,
	datac => \flicker0|Equal0~11_combout\,
	datad => \flicker0|temp~0_combout\,
	combout => \flicker0|temp~1_combout\);

-- Location: FF_X22_Y13_N13
\flicker0|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	d => \flicker0|temp~1_combout\,
	clrn => \ALT_INV_cmp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flicker0|temp~q\);

-- Location: LCCOMB_X22_Y15_N0
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

-- Location: FF_X22_Y15_N1
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

-- Location: LCCOMB_X22_Y15_N26
\serial_scan0|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|count[1]~0_combout\ = \serial_scan0|count\(0) $ (\serial_scan0|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|count\(0),
	datac => \serial_scan0|count\(1),
	combout => \serial_scan0|count[1]~0_combout\);

-- Location: FF_X22_Y15_N27
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

-- Location: LCCOMB_X24_Y15_N28
\serial_scan0|dataout[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout[5]~0_combout\ = (!\serial_scan0|count\(0)) # (!\serial_scan0|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_scan0|count\(1),
	datad => \serial_scan0|count\(0),
	combout => \serial_scan0|dataout[5]~0_combout\);

-- Location: FF_X24_Y15_N29
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

-- Location: LCCOMB_X24_Y15_N6
\dig~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dig~0_combout\ = (\flicker0|temp~q\) # (\serial_scan0|en_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flicker0|temp~q\,
	datad => \serial_scan0|en_out\(3),
	combout => \dig~0_combout\);

-- Location: LCCOMB_X22_Y15_N8
\serial_scan0|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|Equal2~0_combout\ = (\serial_scan0|count\(0)) # (!\serial_scan0|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_scan0|count\(1),
	datad => \serial_scan0|count\(0),
	combout => \serial_scan0|Equal2~0_combout\);

-- Location: FF_X21_Y15_N25
\serial_scan0|en_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_10ms|clk_ms~clkctrl_outclk\,
	asdata => \serial_scan0|Equal2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \serial_scan0|en_out\(2));

-- Location: LCCOMB_X21_Y15_N24
\dig~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dig~1_combout\ = (\serial_scan0|en_out\(2)) # (\flicker0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_scan0|en_out\(2),
	datad => \flicker0|temp~q\,
	combout => \dig~1_combout\);

-- Location: LCCOMB_X21_Y15_N10
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

-- Location: FF_X21_Y15_N11
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

-- Location: LCCOMB_X21_Y15_N0
\dig~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dig~2_combout\ = (\serial_scan0|en_out\(1)) # (\flicker0|temp~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|en_out\(1),
	datad => \flicker0|temp~q\,
	combout => \dig~2_combout\);

-- Location: LCCOMB_X23_Y15_N20
\serial_scan0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|Equal0~0_combout\ = (\serial_scan0|count\(0)) # (\serial_scan0|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \serial_scan0|count\(0),
	datad => \serial_scan0|count\(1),
	combout => \serial_scan0|Equal0~0_combout\);

-- Location: FF_X23_Y15_N21
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

-- Location: LCCOMB_X24_Y15_N4
\dig~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dig~3_combout\ = (\flicker0|temp~q\) # (\serial_scan0|en_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \flicker0|temp~q\,
	datad => \serial_scan0|en_out\(0),
	combout => \dig~3_combout\);

-- Location: FF_X22_Y15_N9
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

-- Location: LCCOMB_X24_Y12_N22
\decoder0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|Mux6~0_combout\ = (\sel_state0|Selector7~1_combout\ & ((\sel_state0|Selector4~1_combout\) # (\sel_state0|Selector6~3_combout\ $ (\sel_state0|Selector5~1_combout\)))) # (!\sel_state0|Selector7~1_combout\ & ((\sel_state0|Selector6~3_combout\) # 
-- (\sel_state0|Selector5~1_combout\ $ (\sel_state0|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector7~1_combout\,
	datab => \sel_state0|Selector6~3_combout\,
	datac => \sel_state0|Selector5~1_combout\,
	datad => \sel_state0|Selector4~1_combout\,
	combout => \decoder0|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y15_N10
\decoder1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|Mux6~0_combout\ = (\sel_state1|Selector7~1_combout\ & ((\sel_state1|Selector4~1_combout\) # (\sel_state1|Selector6~1_combout\ $ (\sel_state1|Selector5~1_combout\)))) # (!\sel_state1|Selector7~1_combout\ & ((\sel_state1|Selector6~1_combout\) # 
-- (\sel_state1|Selector4~1_combout\ $ (\sel_state1|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state1|Selector4~1_combout\,
	datab => \sel_state1|Selector7~1_combout\,
	datac => \sel_state1|Selector6~1_combout\,
	datad => \sel_state1|Selector5~1_combout\,
	combout => \decoder1|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y15_N8
\decoder2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|Mux6~0_combout\ = (\sel_state2|Selector7~1_combout\ & ((\sel_state2|Selector4~1_combout\) # (\sel_state2|Selector6~1_combout\ $ (\sel_state2|Selector5~1_combout\)))) # (!\sel_state2|Selector7~1_combout\ & ((\sel_state2|Selector6~1_combout\) # 
-- (\sel_state2|Selector4~1_combout\ $ (\sel_state2|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state2|Selector4~1_combout\,
	datab => \sel_state2|Selector6~1_combout\,
	datac => \sel_state2|Selector7~1_combout\,
	datad => \sel_state2|Selector5~1_combout\,
	combout => \decoder2|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y15_N16
\serial_scan0|dataout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~2_combout\ = (\serial_scan0|count\(0) & (((\serial_scan0|count\(1))) # (!\decoder1|Mux6~0_combout\))) # (!\serial_scan0|count\(0) & (((!\decoder2|Mux6~0_combout\ & \serial_scan0|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder1|Mux6~0_combout\,
	datab => \decoder2|Mux6~0_combout\,
	datac => \serial_scan0|count\(0),
	datad => \serial_scan0|count\(1),
	combout => \serial_scan0|dataout~2_combout\);

-- Location: LCCOMB_X22_Y15_N12
\serial_scan0|dataout[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout[5]~1_combout\ = \serial_scan0|count\(0) $ (!\serial_scan0|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \serial_scan0|count\(0),
	datac => \serial_scan0|count\(1),
	combout => \serial_scan0|dataout[5]~1_combout\);

-- Location: LCCOMB_X23_Y15_N18
\decoder3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder3|Mux6~0_combout\ = (\sel_state3|Selector7~1_combout\ & ((\sel_state3|Selector4~1_combout\) # (\sel_state3|Selector5~1_combout\ $ (\sel_state3|Selector6~1_combout\)))) # (!\sel_state3|Selector7~1_combout\ & ((\sel_state3|Selector6~1_combout\) # 
-- (\sel_state3|Selector4~1_combout\ $ (\sel_state3|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state3|Selector4~1_combout\,
	datab => \sel_state3|Selector5~1_combout\,
	datac => \sel_state3|Selector7~1_combout\,
	datad => \sel_state3|Selector6~1_combout\,
	combout => \decoder3|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y15_N30
\serial_scan0|dataout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~3_combout\ = (\serial_scan0|dataout~2_combout\ & (((!\decoder3|Mux6~0_combout\) # (!\serial_scan0|dataout[5]~1_combout\)))) # (!\serial_scan0|dataout~2_combout\ & (!\decoder0|Mux6~0_combout\ & (\serial_scan0|dataout[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder0|Mux6~0_combout\,
	datab => \serial_scan0|dataout~2_combout\,
	datac => \serial_scan0|dataout[5]~1_combout\,
	datad => \decoder3|Mux6~0_combout\,
	combout => \serial_scan0|dataout~3_combout\);

-- Location: FF_X23_Y15_N31
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

-- Location: LCCOMB_X22_Y15_N16
\decoder1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|Mux5~0_combout\ = (\sel_state1|Selector6~1_combout\ & (!\sel_state1|Selector4~1_combout\ & ((\sel_state1|Selector7~1_combout\) # (!\sel_state1|Selector5~1_combout\)))) # (!\sel_state1|Selector6~1_combout\ & (\sel_state1|Selector7~1_combout\ & 
-- (\sel_state1|Selector4~1_combout\ $ (!\sel_state1|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state1|Selector6~1_combout\,
	datab => \sel_state1|Selector7~1_combout\,
	datac => \sel_state1|Selector4~1_combout\,
	datad => \sel_state1|Selector5~1_combout\,
	combout => \decoder1|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y15_N22
\decoder2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|Mux5~0_combout\ = (\sel_state2|Selector5~1_combout\ & (\sel_state2|Selector7~1_combout\ & (\sel_state2|Selector4~1_combout\ $ (\sel_state2|Selector6~1_combout\)))) # (!\sel_state2|Selector5~1_combout\ & (!\sel_state2|Selector4~1_combout\ & 
-- ((\sel_state2|Selector7~1_combout\) # (\sel_state2|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state2|Selector5~1_combout\,
	datab => \sel_state2|Selector7~1_combout\,
	datac => \sel_state2|Selector4~1_combout\,
	datad => \sel_state2|Selector6~1_combout\,
	combout => \decoder2|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y15_N2
\serial_scan0|dataout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~4_combout\ = (\serial_scan0|count\(1) & ((\serial_scan0|count\(0)) # ((\decoder2|Mux5~0_combout\)))) # (!\serial_scan0|count\(1) & (\serial_scan0|count\(0) & (\decoder1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|count\(1),
	datab => \serial_scan0|count\(0),
	datac => \decoder1|Mux5~0_combout\,
	datad => \decoder2|Mux5~0_combout\,
	combout => \serial_scan0|dataout~4_combout\);

-- Location: LCCOMB_X24_Y12_N6
\decoder0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|Mux5~0_combout\ = (\sel_state0|Selector7~1_combout\ & (\sel_state0|Selector4~1_combout\ $ (((\sel_state0|Selector6~3_combout\) # (!\sel_state0|Selector5~1_combout\))))) # (!\sel_state0|Selector7~1_combout\ & (\sel_state0|Selector6~3_combout\ & 
-- (!\sel_state0|Selector5~1_combout\ & !\sel_state0|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector7~1_combout\,
	datab => \sel_state0|Selector6~3_combout\,
	datac => \sel_state0|Selector5~1_combout\,
	datad => \sel_state0|Selector4~1_combout\,
	combout => \decoder0|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y15_N28
\decoder3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder3|Mux5~0_combout\ = (\sel_state3|Selector7~1_combout\ & (\sel_state3|Selector4~1_combout\ $ (((\sel_state3|Selector6~1_combout\) # (!\sel_state3|Selector5~1_combout\))))) # (!\sel_state3|Selector7~1_combout\ & (!\sel_state3|Selector5~1_combout\ & 
-- (\sel_state3|Selector6~1_combout\ & !\sel_state3|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state3|Selector7~1_combout\,
	datab => \sel_state3|Selector5~1_combout\,
	datac => \sel_state3|Selector6~1_combout\,
	datad => \sel_state3|Selector4~1_combout\,
	combout => \decoder3|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y15_N18
\serial_scan0|dataout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~5_combout\ = (\serial_scan0|dataout[5]~1_combout\ & ((\serial_scan0|dataout~4_combout\ & ((\decoder3|Mux5~0_combout\))) # (!\serial_scan0|dataout~4_combout\ & (\decoder0|Mux5~0_combout\)))) # (!\serial_scan0|dataout[5]~1_combout\ & 
-- (\serial_scan0|dataout~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|dataout[5]~1_combout\,
	datab => \serial_scan0|dataout~4_combout\,
	datac => \decoder0|Mux5~0_combout\,
	datad => \decoder3|Mux5~0_combout\,
	combout => \serial_scan0|dataout~5_combout\);

-- Location: FF_X22_Y15_N19
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

-- Location: LCCOMB_X21_Y15_N2
\decoder0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|Mux4~0_combout\ = (\sel_state0|Selector6~3_combout\ & (\sel_state0|Selector7~1_combout\ & ((!\sel_state0|Selector4~1_combout\)))) # (!\sel_state0|Selector6~3_combout\ & ((\sel_state0|Selector5~1_combout\ & ((!\sel_state0|Selector4~1_combout\))) 
-- # (!\sel_state0|Selector5~1_combout\ & (\sel_state0|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector6~3_combout\,
	datab => \sel_state0|Selector7~1_combout\,
	datac => \sel_state0|Selector5~1_combout\,
	datad => \sel_state0|Selector4~1_combout\,
	combout => \decoder0|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y15_N18
\decoder1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|Mux4~0_combout\ = (\sel_state1|Selector6~1_combout\ & (\sel_state1|Selector7~1_combout\ & (!\sel_state1|Selector4~1_combout\))) # (!\sel_state1|Selector6~1_combout\ & ((\sel_state1|Selector5~1_combout\ & ((!\sel_state1|Selector4~1_combout\))) # 
-- (!\sel_state1|Selector5~1_combout\ & (\sel_state1|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state1|Selector6~1_combout\,
	datab => \sel_state1|Selector7~1_combout\,
	datac => \sel_state1|Selector4~1_combout\,
	datad => \sel_state1|Selector5~1_combout\,
	combout => \decoder1|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y15_N8
\decoder2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|Mux4~0_combout\ = (\sel_state2|Selector6~1_combout\ & (((!\sel_state2|Selector4~1_combout\ & \sel_state2|Selector7~1_combout\)))) # (!\sel_state2|Selector6~1_combout\ & ((\sel_state2|Selector5~1_combout\ & (!\sel_state2|Selector4~1_combout\)) # 
-- (!\sel_state2|Selector5~1_combout\ & ((\sel_state2|Selector7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state2|Selector5~1_combout\,
	datab => \sel_state2|Selector4~1_combout\,
	datac => \sel_state2|Selector7~1_combout\,
	datad => \sel_state2|Selector6~1_combout\,
	combout => \decoder2|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y15_N28
\serial_scan0|dataout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~6_combout\ = (\serial_scan0|count\(1) & (((\serial_scan0|count\(0)) # (\decoder2|Mux4~0_combout\)))) # (!\serial_scan0|count\(1) & (\decoder1|Mux4~0_combout\ & (\serial_scan0|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|count\(1),
	datab => \decoder1|Mux4~0_combout\,
	datac => \serial_scan0|count\(0),
	datad => \decoder2|Mux4~0_combout\,
	combout => \serial_scan0|dataout~6_combout\);

-- Location: LCCOMB_X21_Y15_N30
\decoder3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder3|Mux4~0_combout\ = (\sel_state3|Selector6~1_combout\ & (!\sel_state3|Selector4~1_combout\ & (\sel_state3|Selector7~1_combout\))) # (!\sel_state3|Selector6~1_combout\ & ((\sel_state3|Selector5~1_combout\ & (!\sel_state3|Selector4~1_combout\)) # 
-- (!\sel_state3|Selector5~1_combout\ & ((\sel_state3|Selector7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state3|Selector4~1_combout\,
	datab => \sel_state3|Selector7~1_combout\,
	datac => \sel_state3|Selector5~1_combout\,
	datad => \sel_state3|Selector6~1_combout\,
	combout => \decoder3|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y15_N6
\serial_scan0|dataout~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~7_combout\ = (\serial_scan0|dataout~6_combout\ & (((\decoder3|Mux4~0_combout\) # (!\serial_scan0|dataout[5]~1_combout\)))) # (!\serial_scan0|dataout~6_combout\ & (\decoder0|Mux4~0_combout\ & ((\serial_scan0|dataout[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder0|Mux4~0_combout\,
	datab => \serial_scan0|dataout~6_combout\,
	datac => \decoder3|Mux4~0_combout\,
	datad => \serial_scan0|dataout[5]~1_combout\,
	combout => \serial_scan0|dataout~7_combout\);

-- Location: FF_X21_Y15_N7
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

-- Location: LCCOMB_X22_Y15_N20
\decoder1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|Mux3~0_combout\ = (\sel_state1|Selector7~1_combout\ & (\sel_state1|Selector6~1_combout\ $ (((!\sel_state1|Selector5~1_combout\))))) # (!\sel_state1|Selector7~1_combout\ & ((\sel_state1|Selector6~1_combout\ & (\sel_state1|Selector4~1_combout\ & 
-- !\sel_state1|Selector5~1_combout\)) # (!\sel_state1|Selector6~1_combout\ & (!\sel_state1|Selector4~1_combout\ & \sel_state1|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state1|Selector6~1_combout\,
	datab => \sel_state1|Selector7~1_combout\,
	datac => \sel_state1|Selector4~1_combout\,
	datad => \sel_state1|Selector5~1_combout\,
	combout => \decoder1|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y15_N30
\decoder2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|Mux3~0_combout\ = (\sel_state2|Selector7~1_combout\ & (\sel_state2|Selector5~1_combout\ $ (((!\sel_state2|Selector6~1_combout\))))) # (!\sel_state2|Selector7~1_combout\ & ((\sel_state2|Selector5~1_combout\ & (!\sel_state2|Selector4~1_combout\ & 
-- !\sel_state2|Selector6~1_combout\)) # (!\sel_state2|Selector5~1_combout\ & (\sel_state2|Selector4~1_combout\ & \sel_state2|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state2|Selector5~1_combout\,
	datab => \sel_state2|Selector7~1_combout\,
	datac => \sel_state2|Selector4~1_combout\,
	datad => \sel_state2|Selector6~1_combout\,
	combout => \decoder2|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y15_N14
\serial_scan0|dataout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~8_combout\ = (\serial_scan0|count\(0) & ((\decoder1|Mux3~0_combout\) # ((\serial_scan0|count\(1))))) # (!\serial_scan0|count\(0) & (((\serial_scan0|count\(1) & \decoder2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|count\(0),
	datab => \decoder1|Mux3~0_combout\,
	datac => \serial_scan0|count\(1),
	datad => \decoder2|Mux3~0_combout\,
	combout => \serial_scan0|dataout~8_combout\);

-- Location: LCCOMB_X24_Y12_N26
\decoder0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|Mux3~0_combout\ = (\sel_state0|Selector7~1_combout\ & (\sel_state0|Selector6~3_combout\ $ ((!\sel_state0|Selector5~1_combout\)))) # (!\sel_state0|Selector7~1_combout\ & ((\sel_state0|Selector6~3_combout\ & (!\sel_state0|Selector5~1_combout\ & 
-- \sel_state0|Selector4~1_combout\)) # (!\sel_state0|Selector6~3_combout\ & (\sel_state0|Selector5~1_combout\ & !\sel_state0|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector7~1_combout\,
	datab => \sel_state0|Selector6~3_combout\,
	datac => \sel_state0|Selector5~1_combout\,
	datad => \sel_state0|Selector4~1_combout\,
	combout => \decoder0|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y15_N24
\decoder3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder3|Mux3~0_combout\ = (\sel_state3|Selector7~1_combout\ & (\sel_state3|Selector5~1_combout\ $ ((!\sel_state3|Selector6~1_combout\)))) # (!\sel_state3|Selector7~1_combout\ & ((\sel_state3|Selector5~1_combout\ & (!\sel_state3|Selector6~1_combout\ & 
-- !\sel_state3|Selector4~1_combout\)) # (!\sel_state3|Selector5~1_combout\ & (\sel_state3|Selector6~1_combout\ & \sel_state3|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state3|Selector7~1_combout\,
	datab => \sel_state3|Selector5~1_combout\,
	datac => \sel_state3|Selector6~1_combout\,
	datad => \sel_state3|Selector4~1_combout\,
	combout => \decoder3|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y15_N4
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

-- Location: FF_X22_Y15_N5
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

-- Location: LCCOMB_X23_Y15_N22
\decoder1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|Mux2~0_combout\ = (\sel_state1|Selector4~1_combout\ & (\sel_state1|Selector5~1_combout\ & ((\sel_state1|Selector6~1_combout\) # (!\sel_state1|Selector7~1_combout\)))) # (!\sel_state1|Selector4~1_combout\ & (!\sel_state1|Selector7~1_combout\ & 
-- (\sel_state1|Selector6~1_combout\ & !\sel_state1|Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state1|Selector4~1_combout\,
	datab => \sel_state1|Selector7~1_combout\,
	datac => \sel_state1|Selector6~1_combout\,
	datad => \sel_state1|Selector5~1_combout\,
	combout => \decoder1|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y15_N4
\decoder2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|Mux2~0_combout\ = (\sel_state2|Selector4~1_combout\ & (\sel_state2|Selector5~1_combout\ & ((\sel_state2|Selector6~1_combout\) # (!\sel_state2|Selector7~1_combout\)))) # (!\sel_state2|Selector4~1_combout\ & (\sel_state2|Selector6~1_combout\ & 
-- (!\sel_state2|Selector7~1_combout\ & !\sel_state2|Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state2|Selector4~1_combout\,
	datab => \sel_state2|Selector6~1_combout\,
	datac => \sel_state2|Selector7~1_combout\,
	datad => \sel_state2|Selector5~1_combout\,
	combout => \decoder2|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y15_N12
\serial_scan0|dataout~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~10_combout\ = (\serial_scan0|count\(1) & (((\decoder2|Mux2~0_combout\) # (\serial_scan0|count\(0))))) # (!\serial_scan0|count\(1) & (\decoder1|Mux2~0_combout\ & ((\serial_scan0|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder1|Mux2~0_combout\,
	datab => \serial_scan0|count\(1),
	datac => \decoder2|Mux2~0_combout\,
	datad => \serial_scan0|count\(0),
	combout => \serial_scan0|dataout~10_combout\);

-- Location: LCCOMB_X24_Y12_N8
\decoder0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|Mux2~0_combout\ = (\sel_state0|Selector5~1_combout\ & (\sel_state0|Selector4~1_combout\ & ((\sel_state0|Selector6~3_combout\) # (!\sel_state0|Selector7~1_combout\)))) # (!\sel_state0|Selector5~1_combout\ & (!\sel_state0|Selector7~1_combout\ & 
-- (\sel_state0|Selector6~3_combout\ & !\sel_state0|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector7~1_combout\,
	datab => \sel_state0|Selector6~3_combout\,
	datac => \sel_state0|Selector5~1_combout\,
	datad => \sel_state0|Selector4~1_combout\,
	combout => \decoder0|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y15_N6
\decoder3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder3|Mux2~0_combout\ = (\sel_state3|Selector4~1_combout\ & (\sel_state3|Selector5~1_combout\ & ((\sel_state3|Selector6~1_combout\) # (!\sel_state3|Selector7~1_combout\)))) # (!\sel_state3|Selector4~1_combout\ & (!\sel_state3|Selector5~1_combout\ & 
-- (!\sel_state3|Selector7~1_combout\ & \sel_state3|Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state3|Selector4~1_combout\,
	datab => \sel_state3|Selector5~1_combout\,
	datac => \sel_state3|Selector7~1_combout\,
	datad => \sel_state3|Selector6~1_combout\,
	combout => \decoder3|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y15_N0
\serial_scan0|dataout~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~11_combout\ = (\serial_scan0|dataout~10_combout\ & (((\decoder3|Mux2~0_combout\) # (!\serial_scan0|dataout[5]~1_combout\)))) # (!\serial_scan0|dataout~10_combout\ & (\decoder0|Mux2~0_combout\ & (\serial_scan0|dataout[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|dataout~10_combout\,
	datab => \decoder0|Mux2~0_combout\,
	datac => \serial_scan0|dataout[5]~1_combout\,
	datad => \decoder3|Mux2~0_combout\,
	combout => \serial_scan0|dataout~11_combout\);

-- Location: FF_X23_Y15_N1
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

-- Location: LCCOMB_X21_Y15_N26
\decoder2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|Mux1~0_combout\ = (\sel_state2|Selector6~1_combout\ & ((\sel_state2|Selector7~1_combout\ & ((\sel_state2|Selector4~1_combout\))) # (!\sel_state2|Selector7~1_combout\ & (\sel_state2|Selector5~1_combout\)))) # (!\sel_state2|Selector6~1_combout\ & 
-- (\sel_state2|Selector5~1_combout\ & (\sel_state2|Selector7~1_combout\ $ (\sel_state2|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state2|Selector5~1_combout\,
	datab => \sel_state2|Selector6~1_combout\,
	datac => \sel_state2|Selector7~1_combout\,
	datad => \sel_state2|Selector4~1_combout\,
	combout => \decoder2|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y15_N16
\decoder1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|Mux1~0_combout\ = (\sel_state1|Selector6~1_combout\ & ((\sel_state1|Selector7~1_combout\ & (\sel_state1|Selector4~1_combout\)) # (!\sel_state1|Selector7~1_combout\ & ((\sel_state1|Selector5~1_combout\))))) # (!\sel_state1|Selector6~1_combout\ & 
-- (\sel_state1|Selector5~1_combout\ & (\sel_state1|Selector7~1_combout\ $ (\sel_state1|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state1|Selector6~1_combout\,
	datab => \sel_state1|Selector7~1_combout\,
	datac => \sel_state1|Selector4~1_combout\,
	datad => \sel_state1|Selector5~1_combout\,
	combout => \decoder1|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y15_N22
\serial_scan0|dataout~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~12_combout\ = (\serial_scan0|count\(0) & (((\decoder1|Mux1~0_combout\) # (\serial_scan0|count\(1))))) # (!\serial_scan0|count\(0) & (\decoder2|Mux1~0_combout\ & ((\serial_scan0|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder2|Mux1~0_combout\,
	datab => \decoder1|Mux1~0_combout\,
	datac => \serial_scan0|count\(0),
	datad => \serial_scan0|count\(1),
	combout => \serial_scan0|dataout~12_combout\);

-- Location: LCCOMB_X21_Y15_N4
\decoder0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|Mux1~0_combout\ = (\sel_state0|Selector6~3_combout\ & ((\sel_state0|Selector7~1_combout\ & ((\sel_state0|Selector4~1_combout\))) # (!\sel_state0|Selector7~1_combout\ & (\sel_state0|Selector5~1_combout\)))) # (!\sel_state0|Selector6~3_combout\ & 
-- (\sel_state0|Selector5~1_combout\ & (\sel_state0|Selector7~1_combout\ $ (\sel_state0|Selector4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector6~3_combout\,
	datab => \sel_state0|Selector7~1_combout\,
	datac => \sel_state0|Selector5~1_combout\,
	datad => \sel_state0|Selector4~1_combout\,
	combout => \decoder0|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y15_N20
\decoder3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder3|Mux1~0_combout\ = (\sel_state3|Selector4~1_combout\ & ((\sel_state3|Selector7~1_combout\ & ((\sel_state3|Selector6~1_combout\))) # (!\sel_state3|Selector7~1_combout\ & (\sel_state3|Selector5~1_combout\)))) # (!\sel_state3|Selector4~1_combout\ & 
-- (\sel_state3|Selector5~1_combout\ & (\sel_state3|Selector7~1_combout\ $ (\sel_state3|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state3|Selector4~1_combout\,
	datab => \sel_state3|Selector7~1_combout\,
	datac => \sel_state3|Selector5~1_combout\,
	datad => \sel_state3|Selector6~1_combout\,
	combout => \decoder3|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y15_N12
\serial_scan0|dataout~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~13_combout\ = (\serial_scan0|dataout~12_combout\ & (((\decoder3|Mux1~0_combout\) # (!\serial_scan0|dataout[5]~1_combout\)))) # (!\serial_scan0|dataout~12_combout\ & (\decoder0|Mux1~0_combout\ & (\serial_scan0|dataout[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|dataout~12_combout\,
	datab => \decoder0|Mux1~0_combout\,
	datac => \serial_scan0|dataout[5]~1_combout\,
	datad => \decoder3|Mux1~0_combout\,
	combout => \serial_scan0|dataout~13_combout\);

-- Location: FF_X21_Y15_N13
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

-- Location: LCCOMB_X23_Y15_N14
\decoder0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder0|Mux0~0_combout\ = (\sel_state0|Selector7~1_combout\ & ((\sel_state0|Selector5~1_combout\ & (\sel_state0|Selector4~1_combout\ & !\sel_state0|Selector6~3_combout\)) # (!\sel_state0|Selector5~1_combout\ & (\sel_state0|Selector4~1_combout\ $ 
-- (!\sel_state0|Selector6~3_combout\))))) # (!\sel_state0|Selector7~1_combout\ & (\sel_state0|Selector5~1_combout\ & (!\sel_state0|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state0|Selector7~1_combout\,
	datab => \sel_state0|Selector5~1_combout\,
	datac => \sel_state0|Selector4~1_combout\,
	datad => \sel_state0|Selector6~3_combout\,
	combout => \decoder0|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y15_N28
\decoder2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder2|Mux0~0_combout\ = (\sel_state2|Selector4~1_combout\ & (\sel_state2|Selector7~1_combout\ & (\sel_state2|Selector6~1_combout\ $ (\sel_state2|Selector5~1_combout\)))) # (!\sel_state2|Selector4~1_combout\ & ((\sel_state2|Selector7~1_combout\ & 
-- (!\sel_state2|Selector6~1_combout\ & !\sel_state2|Selector5~1_combout\)) # (!\sel_state2|Selector7~1_combout\ & ((\sel_state2|Selector5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state2|Selector4~1_combout\,
	datab => \sel_state2|Selector6~1_combout\,
	datac => \sel_state2|Selector7~1_combout\,
	datad => \sel_state2|Selector5~1_combout\,
	combout => \decoder2|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y15_N24
\serial_scan0|dataout~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \serial_scan0|dataout~14_combout\ = (\serial_scan0|count\(1) & (((\serial_scan0|count\(0)) # (\decoder2|Mux0~0_combout\)))) # (!\serial_scan0|count\(1) & (\decoder0|Mux0~0_combout\ & (!\serial_scan0|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \serial_scan0|count\(1),
	datab => \decoder0|Mux0~0_combout\,
	datac => \serial_scan0|count\(0),
	datad => \decoder2|Mux0~0_combout\,
	combout => \serial_scan0|dataout~14_combout\);

-- Location: LCCOMB_X22_Y15_N10
\decoder1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder1|Mux0~0_combout\ = (\sel_state1|Selector4~1_combout\ & (\sel_state1|Selector7~1_combout\ & (\sel_state1|Selector6~1_combout\ $ (\sel_state1|Selector5~1_combout\)))) # (!\sel_state1|Selector4~1_combout\ & ((\sel_state1|Selector7~1_combout\ & 
-- (!\sel_state1|Selector6~1_combout\ & !\sel_state1|Selector5~1_combout\)) # (!\sel_state1|Selector7~1_combout\ & ((\sel_state1|Selector5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state1|Selector6~1_combout\,
	datab => \sel_state1|Selector4~1_combout\,
	datac => \sel_state1|Selector7~1_combout\,
	datad => \sel_state1|Selector5~1_combout\,
	combout => \decoder1|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y15_N2
\decoder3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder3|Mux0~0_combout\ = (\sel_state3|Selector4~1_combout\ & (\sel_state3|Selector7~1_combout\ & (\sel_state3|Selector5~1_combout\ $ (\sel_state3|Selector6~1_combout\)))) # (!\sel_state3|Selector4~1_combout\ & ((\sel_state3|Selector5~1_combout\ & 
-- (!\sel_state3|Selector7~1_combout\)) # (!\sel_state3|Selector5~1_combout\ & (\sel_state3|Selector7~1_combout\ & !\sel_state3|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel_state3|Selector4~1_combout\,
	datab => \sel_state3|Selector5~1_combout\,
	datac => \sel_state3|Selector7~1_combout\,
	datad => \sel_state3|Selector6~1_combout\,
	combout => \decoder3|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y15_N26
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

-- Location: FF_X23_Y15_N27
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

-- Location: IOIBUF_X34_Y12_N1
\en_key~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_key,
	o => \en_key~input_o\);

ww_beef <= \beef~output_o\;

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


