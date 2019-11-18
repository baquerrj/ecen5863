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

-- DATE "09/18/2019 19:08:51"

-- 
-- Device: Altera 10M08DAF484C8GES Package FBGA484
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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DualPortRam IS
    PORT (
	clk : IN std_logic;
	we : IN std_logic;
	d : IN std_logic_vector(7 DOWNTO 0);
	w_add : IN std_logic_vector(9 DOWNTO 0);
	r_add : IN std_logic_vector(9 DOWNTO 0);
	q : OUT std_logic_vector(7 DOWNTO 0)
	);
END DualPortRam;

-- Design Ports Information
-- q[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- we	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_add[0]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_add[1]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_add[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_add[3]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_add[4]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_add[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_add[6]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_add[7]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_add[8]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_add[9]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_add[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_add[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_add[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_add[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_add[4]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_add[5]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_add[6]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_add[7]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_add[8]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_add[9]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DualPortRam IS
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
SIGNAL ww_we : std_logic;
SIGNAL ww_d : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w_add : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_r_add : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_q : std_logic_vector(7 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \we~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \w_add[0]~input_o\ : std_logic;
SIGNAL \w_add[1]~input_o\ : std_logic;
SIGNAL \w_add[2]~input_o\ : std_logic;
SIGNAL \w_add[3]~input_o\ : std_logic;
SIGNAL \w_add[4]~input_o\ : std_logic;
SIGNAL \w_add[5]~input_o\ : std_logic;
SIGNAL \w_add[6]~input_o\ : std_logic;
SIGNAL \w_add[7]~input_o\ : std_logic;
SIGNAL \w_add[8]~input_o\ : std_logic;
SIGNAL \w_add[9]~input_o\ : std_logic;
SIGNAL \r_add[0]~input_o\ : std_logic;
SIGNAL \r_add[1]~input_o\ : std_logic;
SIGNAL \r_add[2]~input_o\ : std_logic;
SIGNAL \r_add[3]~input_o\ : std_logic;
SIGNAL \r_add[4]~input_o\ : std_logic;
SIGNAL \r_add[5]~input_o\ : std_logic;
SIGNAL \r_add[6]~input_o\ : std_logic;
SIGNAL \r_add[7]~input_o\ : std_logic;
SIGNAL \r_add[8]~input_o\ : std_logic;
SIGNAL \r_add[9]~input_o\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_we <= we;
ww_d <= d;
ww_w_add <= w_add;
ww_r_add <= r_add;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & \d[7]~input_o\ & \d[6]~input_o\ & \d[5]~input_o\ & \d[4]~input_o\ & \d[3]~input_o\ & \d[2]~input_o\ & \d[1]~input_o\ & \d[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\w_add[9]~input_o\ & \w_add[8]~input_o\ & \w_add[7]~input_o\ & \w_add[6]~input_o\ & \w_add[5]~input_o\ & \w_add[4]~input_o\ & \w_add[3]~input_o\ & \w_add[2]~input_o\ & \w_add[1]~input_o\ & 
\w_add[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\r_add[9]~input_o\ & \r_add[8]~input_o\ & \r_add[7]~input_o\ & \r_add[6]~input_o\ & \r_add[5]~input_o\ & \r_add[4]~input_o\ & \r_add[3]~input_o\ & \r_add[2]~input_o\ & \r_add[1]~input_o\ & 
\r_add[0]~input_o\);

\ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ram_rtl_0|auto_generated|ram_block1a1\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\ram_rtl_0|auto_generated|ram_block1a2\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\ram_rtl_0|auto_generated|ram_block1a3\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\ram_rtl_0|auto_generated|ram_block1a4\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\ram_rtl_0|auto_generated|ram_block1a5\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\ram_rtl_0|auto_generated|ram_block1a6\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\ram_rtl_0|auto_generated|ram_block1a7\ <= \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y22_N16
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

-- Location: IOOBUF_X31_Y13_N2
\q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X10_Y15_N23
\q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X31_Y11_N2
\q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X31_Y12_N23
\q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\q[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X31_Y9_N2
\q[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X31_Y11_N9
\q[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X31_Y12_N9
\q[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ram_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOIBUF_X10_Y15_N8
\we~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_we,
	o => \we~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: IOIBUF_X31_Y14_N8
\d[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: IOIBUF_X31_Y19_N1
\w_add[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_add(0),
	o => \w_add[0]~input_o\);

-- Location: IOIBUF_X31_Y14_N22
\w_add[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_add(1),
	o => \w_add[1]~input_o\);

-- Location: IOIBUF_X31_Y12_N15
\w_add[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_add(2),
	o => \w_add[2]~input_o\);

-- Location: IOIBUF_X31_Y13_N22
\w_add[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_add(3),
	o => \w_add[3]~input_o\);

-- Location: IOIBUF_X31_Y19_N15
\w_add[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_add(4),
	o => \w_add[4]~input_o\);

-- Location: IOIBUF_X10_Y15_N1
\w_add[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_add(5),
	o => \w_add[5]~input_o\);

-- Location: IOIBUF_X31_Y19_N8
\w_add[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_add(6),
	o => \w_add[6]~input_o\);

-- Location: IOIBUF_X31_Y17_N1
\w_add[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_add(7),
	o => \w_add[7]~input_o\);

-- Location: IOIBUF_X31_Y15_N22
\w_add[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_add(8),
	o => \w_add[8]~input_o\);

-- Location: IOIBUF_X31_Y13_N8
\w_add[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_add(9),
	o => \w_add[9]~input_o\);

-- Location: IOIBUF_X31_Y14_N15
\r_add[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_add(0),
	o => \r_add[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\r_add[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_add(1),
	o => \r_add[1]~input_o\);

-- Location: IOIBUF_X31_Y12_N1
\r_add[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_add(2),
	o => \r_add[2]~input_o\);

-- Location: IOIBUF_X31_Y17_N15
\r_add[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_add(3),
	o => \r_add[3]~input_o\);

-- Location: IOIBUF_X31_Y14_N1
\r_add[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_add(4),
	o => \r_add[4]~input_o\);

-- Location: IOIBUF_X31_Y13_N15
\r_add[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_add(5),
	o => \r_add[5]~input_o\);

-- Location: IOIBUF_X31_Y17_N8
\r_add[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_add(6),
	o => \r_add[6]~input_o\);

-- Location: IOIBUF_X31_Y9_N22
\r_add[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_add(7),
	o => \r_add[7]~input_o\);

-- Location: IOIBUF_X31_Y9_N8
\r_add[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_add(8),
	o => \r_add[8]~input_o\);

-- Location: IOIBUF_X31_Y15_N8
\r_add[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r_add(9),
	o => \r_add[9]~input_o\);

-- Location: IOIBUF_X31_Y17_N22
\d[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: IOIBUF_X31_Y15_N1
\d[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: IOIBUF_X31_Y15_N15
\d[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: IOIBUF_X31_Y11_N22
\d[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

-- Location: IOIBUF_X31_Y21_N8
\d[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(5),
	o => \d[5]~input_o\);

-- Location: IOIBUF_X24_Y25_N8
\d[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(6),
	o => \d[6]~input_o\);

-- Location: IOIBUF_X31_Y9_N15
\d[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(7),
	o => \d[7]~input_o\);

-- Location: M9K_X26_Y15_N0
\ram_rtl_0|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:ram_rtl_0|altsyncram_s9d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 9,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \we~input_o\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \we~input_o\,
	ena1 => \we~input_o\,
	portadatain => \ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: UNVM_X0_Y11_N40
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

-- Location: ADCBLOCK_X10_Y24_N0
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

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;
END structure;


