-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "10/26/2019 14:09:57"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	HW3Q5 IS
    PORT (
	CP : IN std_logic;
	SR : IN std_logic;
	P : IN std_logic_vector(3 DOWNTO 0);
	PE : IN std_logic;
	CEP : IN std_logic;
	CET : IN std_logic;
	Q : BUFFER std_logic_vector(3 DOWNTO 0);
	TC : BUFFER std_logic
	);
END HW3Q5;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TC	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CET	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SR	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PE	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CP	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CEP	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[3]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HW3Q5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CP : std_logic;
SIGNAL ww_SR : std_logic;
SIGNAL ww_P : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PE : std_logic;
SIGNAL ww_CEP : std_logic;
SIGNAL ww_CET : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_TC : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CP~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \TC~output_o\ : std_logic;
SIGNAL \CP~input_o\ : std_logic;
SIGNAL \CP~inputclkctrl_outclk\ : std_logic;
SIGNAL \PE~input_o\ : std_logic;
SIGNAL \SR~input_o\ : std_logic;
SIGNAL \P[0]~input_o\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \CEP~input_o\ : std_logic;
SIGNAL \CET~input_o\ : std_logic;
SIGNAL \counter[0]~1_combout\ : std_logic;
SIGNAL \P[1]~input_o\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \P[2]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \P[3]~input_o\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \TC~0_combout\ : std_logic;
SIGNAL \TC~1_combout\ : std_logic;
SIGNAL counter : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CP <= CP;
ww_SR <= SR;
ww_P <= P;
ww_PE <= PE;
ww_CEP <= CEP;
ww_CET <= CET;
Q <= ww_Q;
TC <= ww_TC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CP~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CP~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X54_Y54_N9
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\TC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TC~1_combout\,
	devoe => ww_devoe,
	o => \TC~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CP~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CP,
	o => \CP~input_o\);

-- Location: CLKCTRL_G3
\CP~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CP~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CP~inputclkctrl_outclk\);

-- Location: IOIBUF_X54_Y54_N22
\PE~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PE,
	o => \PE~input_o\);

-- Location: IOIBUF_X56_Y54_N15
\SR~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SR,
	o => \SR~input_o\);

-- Location: IOIBUF_X58_Y54_N1
\P[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(0),
	o => \P[0]~input_o\);

-- Location: LCCOMB_X55_Y53_N24
\counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (\SR~input_o\ & ((\PE~input_o\ & (!counter(0))) # (!\PE~input_o\ & ((\P[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE~input_o\,
	datab => \SR~input_o\,
	datac => counter(0),
	datad => \P[0]~input_o\,
	combout => \counter~0_combout\);

-- Location: IOIBUF_X56_Y54_N1
\CEP~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CEP,
	o => \CEP~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\CET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CET,
	o => \CET~input_o\);

-- Location: LCCOMB_X55_Y53_N12
\counter[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~1_combout\ = (((\CEP~input_o\ & \CET~input_o\)) # (!\SR~input_o\)) # (!\PE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CEP~input_o\,
	datab => \PE~input_o\,
	datac => \CET~input_o\,
	datad => \SR~input_o\,
	combout => \counter[0]~1_combout\);

-- Location: FF_X55_Y53_N25
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	ena => \counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: IOIBUF_X56_Y54_N8
\P[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(1),
	o => \P[1]~input_o\);

-- Location: LCCOMB_X55_Y53_N6
\counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (\PE~input_o\ & (\SR~input_o\ & (counter(1) $ (counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => \PE~input_o\,
	datad => \SR~input_o\,
	combout => \counter~2_combout\);

-- Location: LCCOMB_X55_Y53_N10
\counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (\counter~2_combout\) # ((!\PE~input_o\ & (\P[1]~input_o\ & \SR~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PE~input_o\,
	datab => \P[1]~input_o\,
	datac => \counter~2_combout\,
	datad => \SR~input_o\,
	combout => \counter~3_combout\);

-- Location: FF_X55_Y53_N11
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputclkctrl_outclk\,
	d => \counter~3_combout\,
	ena => \counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: IOIBUF_X58_Y54_N15
\P[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(2),
	o => \P[2]~input_o\);

-- Location: LCCOMB_X55_Y53_N16
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(2) $ (((counter(1) & counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datad => counter(2),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X55_Y53_N28
\counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\SR~input_o\ & ((\PE~input_o\ & ((\Add0~0_combout\))) # (!\PE~input_o\ & (\P[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P[2]~input_o\,
	datab => \Add0~0_combout\,
	datac => \PE~input_o\,
	datad => \SR~input_o\,
	combout => \counter~4_combout\);

-- Location: FF_X55_Y53_N29
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputclkctrl_outclk\,
	d => \counter~4_combout\,
	ena => \counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X55_Y53_N18
\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = counter(3) $ (((counter(1) & (counter(0) & counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(2),
	combout => \Add0~1_combout\);

-- Location: IOIBUF_X56_Y54_N22
\P[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(3),
	o => \P[3]~input_o\);

-- Location: LCCOMB_X55_Y53_N22
\counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\SR~input_o\ & ((\PE~input_o\ & (\Add0~1_combout\)) # (!\PE~input_o\ & ((\P[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \SR~input_o\,
	datac => \PE~input_o\,
	datad => \P[3]~input_o\,
	combout => \counter~5_combout\);

-- Location: FF_X55_Y53_N23
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CP~inputclkctrl_outclk\,
	d => \counter~5_combout\,
	ena => \counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X55_Y53_N0
\TC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TC~0_combout\ = (counter(1) & (counter(0) & (counter(3) & counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(0),
	datac => counter(3),
	datad => counter(2),
	combout => \TC~0_combout\);

-- Location: LCCOMB_X55_Y53_N26
\TC~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TC~1_combout\ = (\CET~input_o\ & \TC~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CET~input_o\,
	datad => \TC~0_combout\,
	combout => \TC~1_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_TC <= \TC~output_o\;
END structure;


