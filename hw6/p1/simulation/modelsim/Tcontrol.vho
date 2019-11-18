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

-- DATE "10/22/2019 20:52:25"

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

ENTITY 	Tcontrol IS
    PORT (
	reset_n : IN std_logic;
	clock : IN std_logic;
	sensor1 : IN std_logic;
	sensor2 : IN std_logic;
	sensor3 : IN std_logic;
	sensor4 : IN std_logic;
	sensor5 : IN std_logic;
	switch1 : BUFFER std_logic;
	switch2 : BUFFER std_logic;
	switch3 : BUFFER std_logic;
	dirA : BUFFER std_logic_vector(1 DOWNTO 0);
	dirB : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END Tcontrol;

-- Design Ports Information
-- sensor5	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch1	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch2	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch3	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dirA[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dirA[1]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dirB[0]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dirB[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor1	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor2	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor3	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor4	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Tcontrol IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_sensor1 : std_logic;
SIGNAL ww_sensor2 : std_logic;
SIGNAL ww_sensor3 : std_logic;
SIGNAL ww_sensor4 : std_logic;
SIGNAL ww_sensor5 : std_logic;
SIGNAL ww_switch1 : std_logic;
SIGNAL ww_switch2 : std_logic;
SIGNAL ww_switch3 : std_logic;
SIGNAL ww_dirA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_dirB : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sensor5~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \switch1~output_o\ : std_logic;
SIGNAL \switch2~output_o\ : std_logic;
SIGNAL \switch3~output_o\ : std_logic;
SIGNAL \dirA[0]~output_o\ : std_logic;
SIGNAL \dirA[1]~output_o\ : std_logic;
SIGNAL \dirB[0]~output_o\ : std_logic;
SIGNAL \dirB[1]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \sensor4~input_o\ : std_logic;
SIGNAL \sensor1~input_o\ : std_logic;
SIGNAL \sensor2~input_o\ : std_logic;
SIGNAL \sensor3~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.ABout~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state.Ain~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.Bstop~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state.Bin~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.Astop~q\ : std_logic;
SIGNAL \switch1~0_combout\ : std_logic;
SIGNAL \dirA~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_dirA~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.Bstop~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_reset_n <= reset_n;
ww_clock <= clock;
ww_sensor1 <= sensor1;
ww_sensor2 <= sensor2;
ww_sensor3 <= sensor3;
ww_sensor4 <= sensor4;
ww_sensor5 <= sensor5;
switch1 <= ww_switch1;
switch2 <= ww_switch2;
switch3 <= ww_switch3;
dirA <= ww_dirA;
dirB <= ww_dirB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset_n~inputclkctrl_outclk\ <= NOT \reset_n~inputclkctrl_outclk\;
\ALT_INV_dirA~0_combout\ <= NOT \dirA~0_combout\;
\ALT_INV_state.Bstop~q\ <= NOT \state.Bstop~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y46_N16
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

-- Location: IOOBUF_X0_Y12_N16
\switch1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \switch1~0_combout\,
	devoe => ww_devoe,
	o => \switch1~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\switch2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \switch1~0_combout\,
	devoe => ww_devoe,
	o => \switch2~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\switch3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \switch3~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\dirA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.Bstop~q\,
	devoe => ww_devoe,
	o => \dirA[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\dirA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_dirA~0_combout\,
	devoe => ww_devoe,
	o => \dirA[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\dirB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.Bstop~q\,
	devoe => ww_devoe,
	o => \dirB[0]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\dirB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dirB[1]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G3
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y10_N8
\sensor4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor4,
	o => \sensor4~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\sensor1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor1,
	o => \sensor1~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\sensor2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor2,
	o => \sensor2~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\sensor3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor3,
	o => \sensor3~input_o\);

-- Location: LCCOMB_X1_Y10_N28
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\sensor1~input_o\ & ((\state.Ain~q\) # ((\sensor3~input_o\ & \state.Bin~q\)))) # (!\sensor1~input_o\ & (\sensor3~input_o\ & ((\state.Bin~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor1~input_o\,
	datab => \sensor3~input_o\,
	datac => \state.Ain~q\,
	datad => \state.Bin~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y10_N30
\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & ((\sensor4~input_o\) # ((\sensor2~input_o\) # (\state.ABout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor4~input_o\,
	datab => \sensor2~input_o\,
	datac => \state.ABout~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: IOIBUF_X0_Y18_N22
\reset_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: CLKCTRL_G4
\reset_n~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~inputclkctrl_outclk\);

-- Location: FF_X1_Y10_N31
\state.ABout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ABout~q\);

-- Location: LCCOMB_X1_Y10_N2
\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\sensor3~input_o\ & ((\state.Astop~q\) # ((\sensor4~input_o\ & !\state.ABout~q\)))) # (!\sensor3~input_o\ & (\sensor4~input_o\ & (!\state.ABout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor3~input_o\,
	datab => \sensor4~input_o\,
	datac => \state.ABout~q\,
	datad => \state.Astop~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X1_Y10_N26
\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((!\sensor1~input_o\ & (!\sensor2~input_o\ & \state.Ain~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor1~input_o\,
	datab => \sensor2~input_o\,
	datac => \state.Ain~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X1_Y10_N27
\state.Ain\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Ain~q\);

-- Location: LCCOMB_X1_Y10_N22
\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\sensor1~input_o\ & ((\state.Bstop~q\) # ((\state.Ain~q\ & \sensor2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Ain~q\,
	datab => \sensor2~input_o\,
	datac => \state.Bstop~q\,
	datad => \sensor1~input_o\,
	combout => \Selector4~0_combout\);

-- Location: FF_X1_Y10_N23
\state.Bstop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Bstop~q\);

-- Location: LCCOMB_X1_Y10_N24
\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\sensor3~input_o\ & (\sensor2~input_o\ & (!\state.ABout~q\))) # (!\sensor3~input_o\ & ((\state.Bin~q\) # ((\sensor2~input_o\ & !\state.ABout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor3~input_o\,
	datab => \sensor2~input_o\,
	datac => \state.ABout~q\,
	datad => \state.Bin~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y10_N16
\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\sensor1~input_o\ & ((\state.Bstop~q\) # ((!\sensor4~input_o\ & \Selector2~0_combout\)))) # (!\sensor1~input_o\ & (!\sensor4~input_o\ & ((\Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor1~input_o\,
	datab => \sensor4~input_o\,
	datac => \state.Bstop~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X1_Y10_N17
\state.Bin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Bin~q\);

-- Location: LCCOMB_X1_Y10_N18
\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\sensor3~input_o\ & ((\state.Astop~q\) # ((\sensor4~input_o\ & \state.Bin~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sensor4~input_o\,
	datab => \state.Bin~q\,
	datac => \state.Astop~q\,
	datad => \sensor3~input_o\,
	combout => \Selector3~0_combout\);

-- Location: FF_X1_Y10_N19
\state.Astop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.Astop~q\);

-- Location: LCCOMB_X1_Y10_N12
\switch1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \switch1~0_combout\ = (\state.Astop~q\) # (\state.Bin~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.Astop~q\,
	datad => \state.Bin~q\,
	combout => \switch1~0_combout\);

-- Location: LCCOMB_X1_Y10_N20
\dirA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dirA~0_combout\ = (\state.Astop~q\) # (\state.Bstop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.Astop~q\,
	datac => \state.Bstop~q\,
	combout => \dirA~0_combout\);

-- Location: IOIBUF_X78_Y18_N22
\sensor5~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor5,
	o => \sensor5~input_o\);

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

ww_switch1 <= \switch1~output_o\;

ww_switch2 <= \switch2~output_o\;

ww_switch3 <= \switch3~output_o\;

ww_dirA(0) <= \dirA[0]~output_o\;

ww_dirA(1) <= \dirA[1]~output_o\;

ww_dirB(0) <= \dirB[0]~output_o\;

ww_dirB(1) <= \dirB[1]~output_o\;
END structure;


