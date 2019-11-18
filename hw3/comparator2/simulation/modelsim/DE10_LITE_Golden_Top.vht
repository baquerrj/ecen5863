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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/29/2019 12:34:16"
                                                            
-- Vhdl Test Bench template for design  :  DE10_LITE_Golden_Top
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DE10_LITE_Golden_Top_vhd_tst IS
END DE10_LITE_Golden_Top_vhd_tst;
ARCHITECTURE DE10_LITE_Golden_Top_arch OF DE10_LITE_Golden_Top_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADC_CLK_10 : STD_LOGIC;
SIGNAL ARDUINO_IO : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ARDUINO_RESET_N : STD_LOGIC;
SIGNAL DRAM_ADDR : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL DRAM_BA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL DRAM_CAS_N : STD_LOGIC;
SIGNAL DRAM_CKE : STD_LOGIC;
SIGNAL DRAM_CLK : STD_LOGIC;
SIGNAL DRAM_CS_N : STD_LOGIC;
SIGNAL DRAM_DQ : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DRAM_LDQM : STD_LOGIC;
SIGNAL DRAM_RAS_N : STD_LOGIC;
SIGNAL DRAM_UDQM : STD_LOGIC;
SIGNAL DRAM_WE_N : STD_LOGIC;
SIGNAL GPIO : STD_LOGIC_VECTOR(35 DOWNTO 0);
SIGNAL GSENSOR_CS_N : STD_LOGIC;
SIGNAL GSENSOR_INT : STD_LOGIC_VECTOR(2 DOWNTO 1);
SIGNAL GSENSOR_SCLK : STD_LOGIC;
SIGNAL GSENSOR_SDI : STD_LOGIC;
SIGNAL GSENSOR_SDO : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL MAX10_CLK1_50 : STD_LOGIC;
SIGNAL MAX10_CLK2_50 : STD_LOGIC;
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL VGA_B : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL VGA_G : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL VGA_HS : STD_LOGIC;
SIGNAL VGA_R : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL VGA_VS : STD_LOGIC;
COMPONENT DE10_LITE_Golden_Top
	PORT (
	ADC_CLK_10 : IN STD_LOGIC;
	ARDUINO_IO : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ARDUINO_RESET_N : INOUT STD_LOGIC;
	DRAM_ADDR : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
	DRAM_BA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	DRAM_CAS_N : OUT STD_LOGIC;
	DRAM_CKE : OUT STD_LOGIC;
	DRAM_CLK : OUT STD_LOGIC;
	DRAM_CS_N : OUT STD_LOGIC;
	DRAM_DQ : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	DRAM_LDQM : OUT STD_LOGIC;
	DRAM_RAS_N : OUT STD_LOGIC;
	DRAM_UDQM : OUT STD_LOGIC;
	DRAM_WE_N : OUT STD_LOGIC;
	GPIO : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
	GSENSOR_CS_N : OUT STD_LOGIC;
	GSENSOR_INT : IN STD_LOGIC_VECTOR(2 DOWNTO 1);
	GSENSOR_SCLK : OUT STD_LOGIC;
	GSENSOR_SDI : INOUT STD_LOGIC;
	GSENSOR_SDO : INOUT STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	MAX10_CLK1_50 : IN STD_LOGIC;
	MAX10_CLK2_50 : IN STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	VGA_B : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	VGA_G : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	VGA_HS : OUT STD_LOGIC;
	VGA_R : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	VGA_VS : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DE10_LITE_Golden_Top
	PORT MAP (
-- list connections between master ports and signals
	ADC_CLK_10 => ADC_CLK_10,
	ARDUINO_IO => ARDUINO_IO,
	ARDUINO_RESET_N => ARDUINO_RESET_N,
	DRAM_ADDR => DRAM_ADDR,
	DRAM_BA => DRAM_BA,
	DRAM_CAS_N => DRAM_CAS_N,
	DRAM_CKE => DRAM_CKE,
	DRAM_CLK => DRAM_CLK,
	DRAM_CS_N => DRAM_CS_N,
	DRAM_DQ => DRAM_DQ,
	DRAM_LDQM => DRAM_LDQM,
	DRAM_RAS_N => DRAM_RAS_N,
	DRAM_UDQM => DRAM_UDQM,
	DRAM_WE_N => DRAM_WE_N,
	GPIO => GPIO,
	GSENSOR_CS_N => GSENSOR_CS_N,
	GSENSOR_INT => GSENSOR_INT,
	GSENSOR_SCLK => GSENSOR_SCLK,
	GSENSOR_SDI => GSENSOR_SDI,
	GSENSOR_SDO => GSENSOR_SDO,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY => KEY,
	LEDR => LEDR,
	MAX10_CLK1_50 => MAX10_CLK1_50,
	MAX10_CLK2_50 => MAX10_CLK2_50,
	SW => SW,
	VGA_B => VGA_B,
	VGA_G => VGA_G,
	VGA_HS => VGA_HS,
	VGA_R => VGA_R,
	VGA_VS => VGA_VS
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END DE10_LITE_Golden_Top_arch;
