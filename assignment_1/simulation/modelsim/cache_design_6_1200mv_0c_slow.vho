-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "01/17/2015 16:35:10"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cache IS
    PORT (
	clock : IN std_logic;
	writedata : IN std_logic_vector(31 DOWNTO 0);
	address : IN std_logic_vector(31 DOWNTO 0);
	memwrite : IN std_logic;
	memread : IN std_logic;
	readdata : OUT std_logic_vector(31 DOWNTO 0);
	waitrequest : OUT std_logic
	);
END cache;

-- Design Ports Information
-- address[10]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[11]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[12]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[13]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[14]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[15]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[16]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[17]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[18]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[19]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[20]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[21]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[22]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[23]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[24]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[25]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[26]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[27]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[28]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[29]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[30]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[31]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memread	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[2]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[3]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[4]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[5]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[6]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[8]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[9]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[10]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[11]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[12]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[13]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[14]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[16]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[17]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[18]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[19]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[20]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[21]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[22]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[23]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[24]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[25]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[26]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[27]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[28]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[29]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[30]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[31]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- waitrequest	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memwrite	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[8]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[9]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[8]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[9]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[10]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[11]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[12]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[13]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[14]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[15]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[16]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[17]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[18]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[19]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[20]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[21]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[22]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[23]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[24]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[25]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[26]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[27]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[28]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[29]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[30]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[31]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cache IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_memwrite : std_logic;
SIGNAL ww_memread : std_logic;
SIGNAL ww_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_waitrequest : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \address[10]~input_o\ : std_logic;
SIGNAL \address[11]~input_o\ : std_logic;
SIGNAL \address[12]~input_o\ : std_logic;
SIGNAL \address[13]~input_o\ : std_logic;
SIGNAL \address[14]~input_o\ : std_logic;
SIGNAL \address[15]~input_o\ : std_logic;
SIGNAL \address[16]~input_o\ : std_logic;
SIGNAL \address[17]~input_o\ : std_logic;
SIGNAL \address[18]~input_o\ : std_logic;
SIGNAL \address[19]~input_o\ : std_logic;
SIGNAL \address[20]~input_o\ : std_logic;
SIGNAL \address[21]~input_o\ : std_logic;
SIGNAL \address[22]~input_o\ : std_logic;
SIGNAL \address[23]~input_o\ : std_logic;
SIGNAL \address[24]~input_o\ : std_logic;
SIGNAL \address[25]~input_o\ : std_logic;
SIGNAL \address[26]~input_o\ : std_logic;
SIGNAL \address[27]~input_o\ : std_logic;
SIGNAL \address[28]~input_o\ : std_logic;
SIGNAL \address[29]~input_o\ : std_logic;
SIGNAL \address[30]~input_o\ : std_logic;
SIGNAL \address[31]~input_o\ : std_logic;
SIGNAL \memread~input_o\ : std_logic;
SIGNAL \readdata[0]~output_o\ : std_logic;
SIGNAL \readdata[1]~output_o\ : std_logic;
SIGNAL \readdata[2]~output_o\ : std_logic;
SIGNAL \readdata[3]~output_o\ : std_logic;
SIGNAL \readdata[4]~output_o\ : std_logic;
SIGNAL \readdata[5]~output_o\ : std_logic;
SIGNAL \readdata[6]~output_o\ : std_logic;
SIGNAL \readdata[7]~output_o\ : std_logic;
SIGNAL \readdata[8]~output_o\ : std_logic;
SIGNAL \readdata[9]~output_o\ : std_logic;
SIGNAL \readdata[10]~output_o\ : std_logic;
SIGNAL \readdata[11]~output_o\ : std_logic;
SIGNAL \readdata[12]~output_o\ : std_logic;
SIGNAL \readdata[13]~output_o\ : std_logic;
SIGNAL \readdata[14]~output_o\ : std_logic;
SIGNAL \readdata[15]~output_o\ : std_logic;
SIGNAL \readdata[16]~output_o\ : std_logic;
SIGNAL \readdata[17]~output_o\ : std_logic;
SIGNAL \readdata[18]~output_o\ : std_logic;
SIGNAL \readdata[19]~output_o\ : std_logic;
SIGNAL \readdata[20]~output_o\ : std_logic;
SIGNAL \readdata[21]~output_o\ : std_logic;
SIGNAL \readdata[22]~output_o\ : std_logic;
SIGNAL \readdata[23]~output_o\ : std_logic;
SIGNAL \readdata[24]~output_o\ : std_logic;
SIGNAL \readdata[25]~output_o\ : std_logic;
SIGNAL \readdata[26]~output_o\ : std_logic;
SIGNAL \readdata[27]~output_o\ : std_logic;
SIGNAL \readdata[28]~output_o\ : std_logic;
SIGNAL \readdata[29]~output_o\ : std_logic;
SIGNAL \readdata[30]~output_o\ : std_logic;
SIGNAL \readdata[31]~output_o\ : std_logic;
SIGNAL \waitrequest~output_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \memwrite~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \writedata[0]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \address[8]~input_o\ : std_logic;
SIGNAL \address[9]~input_o\ : std_logic;
SIGNAL \writedata[1]~input_o\ : std_logic;
SIGNAL \writedata[2]~input_o\ : std_logic;
SIGNAL \writedata[3]~input_o\ : std_logic;
SIGNAL \writedata[4]~input_o\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \writedata[5]~input_o\ : std_logic;
SIGNAL \writedata[6]~input_o\ : std_logic;
SIGNAL \writedata[7]~input_o\ : std_logic;
SIGNAL \writedata[8]~input_o\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \writedata[9]~input_o\ : std_logic;
SIGNAL \writedata[10]~input_o\ : std_logic;
SIGNAL \writedata[11]~input_o\ : std_logic;
SIGNAL \writedata[12]~input_o\ : std_logic;
SIGNAL \writedata[13]~input_o\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \writedata[14]~input_o\ : std_logic;
SIGNAL \writedata[15]~input_o\ : std_logic;
SIGNAL \writedata[16]~input_o\ : std_logic;
SIGNAL \writedata[17]~input_o\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \writedata[18]~input_o\ : std_logic;
SIGNAL \writedata[19]~input_o\ : std_logic;
SIGNAL \writedata[20]~input_o\ : std_logic;
SIGNAL \writedata[21]~input_o\ : std_logic;
SIGNAL \writedata[22]~input_o\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \writedata[23]~input_o\ : std_logic;
SIGNAL \writedata[24]~input_o\ : std_logic;
SIGNAL \writedata[25]~input_o\ : std_logic;
SIGNAL \writedata[26]~input_o\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \writedata[27]~input_o\ : std_logic;
SIGNAL \writedata[28]~input_o\ : std_logic;
SIGNAL \writedata[29]~input_o\ : std_logic;
SIGNAL \writedata[30]~input_o\ : std_logic;
SIGNAL \writedata[31]~input_o\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_writedata <= writedata;
ww_address <= address;
ww_memwrite <= memwrite;
ww_memread <= memread;
readdata <= ww_readdata;
waitrequest <= ww_waitrequest;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\writedata[4]~input_o\ & \writedata[3]~input_o\ & \writedata[2]~input_o\ & \writedata[1]~input_o\ & \writedata[0]~input_o\ & \writedata[4]~input_o\ & \writedata[3]~input_o\
& \writedata[2]~input_o\ & \writedata[1]~input_o\ & \writedata[0]~input_o\ & \writedata[3]~input_o\ & \writedata[2]~input_o\ & \writedata[1]~input_o\ & \writedata[0]~input_o\ & \writedata[3]~input_o\ & \writedata[2]~input_o\ & \writedata[1]~input_o\ & 
\writedata[0]~input_o\);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & 
\address[2]~input_o\);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\writedata[8]~input_o\ & \writedata[7]~input_o\ & \writedata[6]~input_o\ & \writedata[5]~input_o\ & \writedata[8]~input_o\ & \writedata[7]~input_o\ & \writedata[6]~input_o\
& \writedata[5]~input_o\ & \writedata[8]~input_o\ & \writedata[7]~input_o\ & \writedata[6]~input_o\ & \writedata[5]~input_o\ & \writedata[4]~input_o\ & \writedata[8]~input_o\ & \writedata[7]~input_o\ & \writedata[6]~input_o\ & \writedata[5]~input_o\ & 
\writedata[4]~input_o\);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & 
\address[2]~input_o\);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(4);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(5);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(6);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(7);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(8);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(9);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(10);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(11);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(12);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(13);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(14);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(15);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(16);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(17);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ <= (\writedata[13]~input_o\ & \writedata[12]~input_o\ & \writedata[11]~input_o\ & \writedata[10]~input_o\ & \writedata[9]~input_o\ & \writedata[13]~input_o\ & 
\writedata[12]~input_o\ & \writedata[11]~input_o\ & \writedata[10]~input_o\ & \writedata[9]~input_o\ & \writedata[12]~input_o\ & \writedata[11]~input_o\ & \writedata[10]~input_o\ & \writedata[9]~input_o\ & \writedata[12]~input_o\ & \writedata[11]~input_o\
& \writedata[10]~input_o\ & \writedata[9]~input_o\);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & 
\address[2]~input_o\);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9~portadataout\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(2);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(3);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(4);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(5);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(6);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(7);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(8);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(9);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(10);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(11);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(12);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(13);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(14);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(15);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(16);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(17);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ <= (\writedata[17]~input_o\ & \writedata[16]~input_o\ & \writedata[15]~input_o\ & \writedata[14]~input_o\ & \writedata[17]~input_o\ & \writedata[16]~input_o\ & 
\writedata[15]~input_o\ & \writedata[14]~input_o\ & \writedata[17]~input_o\ & \writedata[16]~input_o\ & \writedata[15]~input_o\ & \writedata[14]~input_o\ & \writedata[13]~input_o\ & \writedata[17]~input_o\ & \writedata[16]~input_o\ & 
\writedata[15]~input_o\ & \writedata[14]~input_o\ & \writedata[13]~input_o\);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & 
\address[2]~input_o\);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13~portadataout\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(1);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(2);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(3);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(4);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(5);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(6);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(7);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(8);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(9);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(10);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(11);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(12);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(13);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(14);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(15);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(16);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(17);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (\writedata[22]~input_o\ & \writedata[21]~input_o\ & \writedata[20]~input_o\ & \writedata[19]~input_o\ & \writedata[18]~input_o\ & \writedata[22]~input_o\ & 
\writedata[21]~input_o\ & \writedata[20]~input_o\ & \writedata[19]~input_o\ & \writedata[18]~input_o\ & \writedata[21]~input_o\ & \writedata[20]~input_o\ & \writedata[19]~input_o\ & \writedata[18]~input_o\ & \writedata[21]~input_o\ & 
\writedata[20]~input_o\ & \writedata[19]~input_o\ & \writedata[18]~input_o\);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & 
\address[2]~input_o\);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18~portadataout\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(2);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(3);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(4);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(5);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(6);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(7);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(8);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(9);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(10);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(11);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(12);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(13);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(14);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(15);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(16);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(17);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ <= (\writedata[26]~input_o\ & \writedata[25]~input_o\ & \writedata[24]~input_o\ & \writedata[23]~input_o\ & \writedata[26]~input_o\ & \writedata[25]~input_o\ & 
\writedata[24]~input_o\ & \writedata[23]~input_o\ & \writedata[26]~input_o\ & \writedata[25]~input_o\ & \writedata[24]~input_o\ & \writedata[23]~input_o\ & \writedata[22]~input_o\ & \writedata[26]~input_o\ & \writedata[25]~input_o\ & 
\writedata[24]~input_o\ & \writedata[23]~input_o\ & \writedata[22]~input_o\);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & 
\address[2]~input_o\);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22~portadataout\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(1);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(2);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(3);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(4);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(5);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(6);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(7);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(8);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(9);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(10);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(11);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(12);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(13);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(14);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(15);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(16);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(17);

\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \writedata[27]~input_o\ & \writedata[27]~input_o\);

\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & 
\address[2]~input_o\);

\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27~portadataout\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(1);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ <= (\writedata[31]~input_o\ & \writedata[30]~input_o\ & \writedata[29]~input_o\ & \writedata[28]~input_o\ & \writedata[31]~input_o\ & \writedata[30]~input_o\ & 
\writedata[29]~input_o\ & \writedata[28]~input_o\ & \writedata[31]~input_o\ & \writedata[30]~input_o\ & \writedata[29]~input_o\ & \writedata[28]~input_o\ & \writedata[27]~input_o\ & \writedata[31]~input_o\ & \writedata[30]~input_o\ & 
\writedata[29]~input_o\ & \writedata[28]~input_o\ & \writedata[27]~input_o\);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\address[9]~input_o\ & \address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & 
\address[2]~input_o\);

\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27~portadataout\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(1);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(2);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(3);
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(4);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(5);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(6);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(7);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(8);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(9);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(10);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(11);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(12);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(13);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(14);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(15);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(16);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ <= \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(17);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X29_Y0_N9
\readdata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~1_combout\,
	devoe => ww_devoe,
	o => \readdata[0]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\readdata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~1_combout\,
	devoe => ww_devoe,
	o => \readdata[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\readdata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~1_combout\,
	devoe => ww_devoe,
	o => \readdata[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\readdata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~1_combout\,
	devoe => ww_devoe,
	o => \readdata[3]~output_o\);

-- Location: IOOBUF_X52_Y12_N9
\readdata[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~1_combout\,
	devoe => ww_devoe,
	o => \readdata[4]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\readdata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~1_combout\,
	devoe => ww_devoe,
	o => \readdata[5]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\readdata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~1_combout\,
	devoe => ww_devoe,
	o => \readdata[6]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\readdata[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~1_combout\,
	devoe => ww_devoe,
	o => \readdata[7]~output_o\);

-- Location: IOOBUF_X29_Y41_N2
\readdata[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~1_combout\,
	devoe => ww_devoe,
	o => \readdata[8]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\readdata[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~1_combout\,
	devoe => ww_devoe,
	o => \readdata[9]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\readdata[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~1_combout\,
	devoe => ww_devoe,
	o => \readdata[10]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\readdata[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~1_combout\,
	devoe => ww_devoe,
	o => \readdata[11]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\readdata[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~1_combout\,
	devoe => ww_devoe,
	o => \readdata[12]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\readdata[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~1_combout\,
	devoe => ww_devoe,
	o => \readdata[13]~output_o\);

-- Location: IOOBUF_X18_Y41_N9
\readdata[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~1_combout\,
	devoe => ww_devoe,
	o => \readdata[14]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\readdata[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~1_combout\,
	devoe => ww_devoe,
	o => \readdata[15]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\readdata[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => \readdata[16]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\readdata[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~1_combout\,
	devoe => ww_devoe,
	o => \readdata[17]~output_o\);

-- Location: IOOBUF_X52_Y11_N9
\readdata[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~1_combout\,
	devoe => ww_devoe,
	o => \readdata[18]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\readdata[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~1_combout\,
	devoe => ww_devoe,
	o => \readdata[19]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\readdata[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~1_combout\,
	devoe => ww_devoe,
	o => \readdata[20]~output_o\);

-- Location: IOOBUF_X41_Y0_N9
\readdata[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \readdata[21]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\readdata[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \readdata[22]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\readdata[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \readdata[23]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\readdata[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \readdata[24]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\readdata[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \readdata[25]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\readdata[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \readdata[26]~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\readdata[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \readdata[27]~output_o\);

-- Location: IOOBUF_X12_Y41_N2
\readdata[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \readdata[28]~output_o\);

-- Location: IOOBUF_X52_Y11_N2
\readdata[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \readdata[29]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\readdata[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \readdata[30]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\readdata[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \readdata[31]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\waitrequest~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \waitrequest~output_o\);

-- Location: IOIBUF_X31_Y0_N15
\address[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X36_Y41_N1
\memwrite~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memwrite,
	o => \memwrite~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X52_Y19_N8
\writedata[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(0),
	o => \writedata[0]~input_o\);

-- Location: IOIBUF_X52_Y19_N1
\address[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X36_Y41_N8
\address[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X31_Y41_N8
\address[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X52_Y30_N8
\address[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X34_Y41_N8
\address[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: IOIBUF_X48_Y41_N1
\address[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: IOIBUF_X52_Y32_N15
\address[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(8),
	o => \address[8]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\address[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(9),
	o => \address[9]~input_o\);

-- Location: IOIBUF_X43_Y41_N8
\writedata[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(1),
	o => \writedata[1]~input_o\);

-- Location: IOIBUF_X52_Y28_N1
\writedata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(2),
	o => \writedata[2]~input_o\);

-- Location: IOIBUF_X25_Y41_N8
\writedata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(3),
	o => \writedata[3]~input_o\);

-- Location: IOIBUF_X52_Y16_N8
\writedata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(4),
	o => \writedata[4]~input_o\);

-- Location: M9K_X33_Y28_N0
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_four_SRAM|altsyncram:mem_block_rtl_0|altsyncram_lh81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X41_Y0_N1
\address[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: LCCOMB_X34_Y28_N0
\Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\)) # (!\address[0]~input_o\ & 
-- ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\,
	datad => \address[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X34_Y28_N18
\Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\address[1]~input_o\ & ((\Mux31~0_combout\ & (\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (!\Mux31~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\))))) # 
-- (!\address[1]~input_o\ & (((\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\,
	datad => \Mux31~0_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X34_Y28_N12
\Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\address[1]~input_o\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ & !\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X34_Y28_N6
\Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & (((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\) # (!\address[0]~input_o\)))) # (!\Mux30~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ & ((\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datac => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \address[0]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X34_Y28_N8
\Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\))) # (!\address[0]~input_o\ & 
-- (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \address[0]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X34_Y28_N26
\Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\ & ((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\) # ((!\address[1]~input_o\)))) # (!\Mux29~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ & \address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datac => \Mux29~0_combout\,
	datad => \address[1]~input_o\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X34_Y28_N4
\Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\address[1]~input_o\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\) # (\address[0]~input_o\)))) # (!\address[1]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ & ((!\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	datab => \address[1]~input_o\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	datad => \address[0]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X34_Y28_N14
\Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux28~0_combout\ & ((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\) # ((!\address[0]~input_o\)))) # (!\Mux28~0_combout\ & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ & \address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	datab => \Mux28~0_combout\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	datad => \address[0]~input_o\,
	combout => \Mux28~1_combout\);

-- Location: IOIBUF_X25_Y41_N1
\writedata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(5),
	o => \writedata[5]~input_o\);

-- Location: IOIBUF_X48_Y41_N8
\writedata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(6),
	o => \writedata[6]~input_o\);

-- Location: IOIBUF_X46_Y41_N15
\writedata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(7),
	o => \writedata[7]~input_o\);

-- Location: IOIBUF_X38_Y41_N1
\writedata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(8),
	o => \writedata[8]~input_o\);

-- Location: M9K_X33_Y28_N0
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_four_SRAM|altsyncram:mem_block_rtl_0|altsyncram_lh81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y28_N16
\Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\))) # (!\address[0]~input_o\ & 
-- (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	datad => \address[0]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X34_Y28_N2
\Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux27~0_combout\ & (((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\) # (!\address[1]~input_o\)))) # (!\Mux27~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ & 
-- ((\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	datab => \Mux27~0_combout\,
	datac => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datad => \address[1]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X34_Y28_N28
\Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\address[1]~input_o\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\) # (\address[0]~input_o\)))) # (!\address[1]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ & ((!\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \address[0]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X34_Y28_N30
\Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux26~0_combout\ & (((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\) # (!\address[0]~input_o\)))) # (!\Mux26~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ & ((\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	datab => \Mux26~0_combout\,
	datac => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \address[0]~input_o\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X34_Y28_N24
\Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\address[0]~input_o\ & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\) # (\address[1]~input_o\)))) # (!\address[0]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ & ((!\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \address[0]~input_o\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datad => \address[1]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X34_Y28_N10
\Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\address[1]~input_o\ & ((\Mux25~0_combout\ & (\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\)) # (!\Mux25~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\))))) # (!\address[1]~input_o\ & 
-- (((\Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datac => \address[1]~input_o\,
	datad => \Mux25~0_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X36_Y29_N24
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\address[1]~input_o\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ & !\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X36_Y29_N26
\Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux24~0_combout\ & ((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\) # ((!\address[0]~input_o\)))) # (!\Mux24~0_combout\ & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ & \address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	datab => \Mux24~0_combout\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	datad => \address[0]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X34_Y29_N0
\Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\address[0]~input_o\ & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\) # (\address[1]~input_o\)))) # (!\address[0]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ & ((!\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datac => \address[0]~input_o\,
	datad => \address[1]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X34_Y29_N10
\Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\address[1]~input_o\ & ((\Mux23~0_combout\ & ((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\))) # (!\Mux23~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\)))) # (!\address[1]~input_o\ & 
-- (((\Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datab => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datac => \address[1]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: IOIBUF_X34_Y0_N1
\writedata[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(9),
	o => \writedata[9]~input_o\);

-- Location: IOIBUF_X52_Y23_N1
\writedata[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(10),
	o => \writedata[10]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\writedata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(11),
	o => \writedata[11]~input_o\);

-- Location: IOIBUF_X52_Y23_N8
\writedata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(12),
	o => \writedata[12]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\writedata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(13),
	o => \writedata[13]~input_o\);

-- Location: M9K_X33_Y29_N0
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_four_SRAM|altsyncram:mem_block_rtl_0|altsyncram_lh81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y29_N12
\Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\) # (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\)))) # (!\address[1]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ & (!\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	datac => \address[0]~input_o\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X34_Y29_N22
\Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\address[0]~input_o\ & ((\Mux22~0_combout\ & ((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9~portadataout\))) # (!\Mux22~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\)))) # 
-- (!\address[0]~input_o\ & (((\Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	datab => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9~portadataout\,
	datac => \address[0]~input_o\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X34_Y29_N8
\Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\))) # (!\address[0]~input_o\ & 
-- (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	datab => \address[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X34_Y29_N2
\Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\ & (((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\) # (!\address[1]~input_o\)))) # (!\Mux21~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ & ((\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	datab => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	datac => \Mux21~0_combout\,
	datad => \address[1]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X34_Y29_N28
\Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\address[1]~input_o\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((!\address[0]~input_o\ & 
-- \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datab => \address[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X34_Y29_N30
\Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\address[0]~input_o\ & ((\Mux20~0_combout\ & (\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\)) # (!\Mux20~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\))))) # (!\address[0]~input_o\ & 
-- (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datac => \address[0]~input_o\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X34_Y29_N24
\Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)) # (!\address[0]~input_o\ & 
-- ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	datab => \address[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X34_Y29_N26
\Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\address[1]~input_o\ & ((\Mux19~0_combout\ & (\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)) # (!\Mux19~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\))))) # (!\address[1]~input_o\ & 
-- (((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	datab => \address[1]~input_o\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: IOIBUF_X31_Y0_N8
\writedata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(14),
	o => \writedata[14]~input_o\);

-- Location: IOIBUF_X52_Y32_N8
\writedata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(15),
	o => \writedata[15]~input_o\);

-- Location: IOIBUF_X52_Y13_N8
\writedata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(16),
	o => \writedata[16]~input_o\);

-- Location: IOIBUF_X43_Y41_N1
\writedata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(17),
	o => \writedata[17]~input_o\);

-- Location: M9K_X33_Y29_N0
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_four_SRAM|altsyncram:mem_block_rtl_0|altsyncram_lh81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y29_N4
\Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\address[1]~input_o\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((!\address[0]~input_o\ & 
-- \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	datab => \address[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X34_Y29_N14
\Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & (((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13~portadataout\) # (!\address[0]~input_o\)))) # (!\Mux18~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ & 
-- (\address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	datab => \Mux18~0_combout\,
	datac => \address[0]~input_o\,
	datad => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13~portadataout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X34_Y29_N16
\Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\)) # (!\address[0]~input_o\ & 
-- ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\,
	datab => \address[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X34_Y29_N18
\Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\address[1]~input_o\ & ((\Mux17~0_combout\ & (\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\)) # (!\Mux17~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\))))) # (!\address[1]~input_o\ & 
-- (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\,
	datab => \address[1]~input_o\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X36_Y29_N4
\Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\address[1]~input_o\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\) # (\address[0]~input_o\)))) # (!\address[1]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ & 
-- ((!\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X36_Y29_N30
\Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & ((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\) # ((!\address[0]~input_o\)))) # (!\Mux16~0_combout\ & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ & \address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datab => \Mux16~0_combout\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datad => \address[0]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X36_Y29_N0
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\)) # (!\address[0]~input_o\ & 
-- ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X36_Y29_N10
\Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\address[1]~input_o\ & ((\Mux15~0_combout\ & (\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\)) # (!\Mux15~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\))))) # (!\address[1]~input_o\ & 
-- (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X36_Y29_N28
\Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\address[1]~input_o\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\) # (\address[0]~input_o\)))) # (!\address[1]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ & 
-- ((!\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X36_Y29_N22
\Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\address[0]~input_o\ & ((\Mux14~0_combout\ & (\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\)) # (!\Mux14~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\))))) # (!\address[0]~input_o\ & 
-- (((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[0]~input_o\,
	datab => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: IOIBUF_X14_Y41_N8
\writedata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(18),
	o => \writedata[18]~input_o\);

-- Location: IOIBUF_X27_Y41_N1
\writedata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(19),
	o => \writedata[19]~input_o\);

-- Location: IOIBUF_X27_Y41_N8
\writedata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(20),
	o => \writedata[20]~input_o\);

-- Location: IOIBUF_X31_Y41_N15
\writedata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(21),
	o => \writedata[21]~input_o\);

-- Location: IOIBUF_X52_Y25_N1
\writedata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(22),
	o => \writedata[22]~input_o\);

-- Location: M9K_X33_Y34_N0
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_four_SRAM|altsyncram:mem_block_rtl_0|altsyncram_lh81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y29_N20
\Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\)) # (!\address[0]~input_o\ & 
-- ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datab => \address[1]~input_o\,
	datac => \address[0]~input_o\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X36_Y29_N8
\Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\address[1]~input_o\ & ((\Mux13~0_combout\ & ((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18~portadataout\))) # (!\Mux13~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\)))) # 
-- (!\address[1]~input_o\ & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datab => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18~portadataout\,
	datac => \address[1]~input_o\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X34_Y28_N20
\Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\address[1]~input_o\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\) # (\address[0]~input_o\)))) # (!\address[1]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ & 
-- ((!\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X36_Y29_N18
\Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & (((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\) # (!\address[0]~input_o\)))) # (!\Mux12~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ & ((\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datab => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datac => \Mux12~0_combout\,
	datad => \address[0]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X36_Y29_N20
\Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\)) # (!\address[0]~input_o\ & 
-- ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X36_Y29_N14
\Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\address[1]~input_o\ & ((\Mux11~0_combout\ & ((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\))) # (!\Mux11~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\)))) # (!\address[1]~input_o\ & 
-- (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datac => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X36_Y29_N16
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\address[1]~input_o\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ & 
-- !\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	datad => \address[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X36_Y29_N2
\Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & (((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\) # (!\address[0]~input_o\)))) # (!\Mux10~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ & ((\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	datab => \Mux10~0_combout\,
	datac => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	datad => \address[0]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: IOIBUF_X41_Y41_N8
\writedata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(23),
	o => \writedata[23]~input_o\);

-- Location: IOIBUF_X31_Y41_N22
\writedata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(24),
	o => \writedata[24]~input_o\);

-- Location: IOIBUF_X41_Y41_N15
\writedata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(25),
	o => \writedata[25]~input_o\);

-- Location: IOIBUF_X52_Y32_N22
\writedata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(26),
	o => \writedata[26]~input_o\);

-- Location: M9K_X33_Y34_N0
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_four_SRAM|altsyncram:mem_block_rtl_0|altsyncram_lh81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y35_N24
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\))) # (!\address[0]~input_o\ & 
-- (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X32_Y35_N2
\Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\address[1]~input_o\ & ((\Mux9~0_combout\ & ((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22~portadataout\))) # (!\Mux9~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\)))) # 
-- (!\address[1]~input_o\ & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datab => \address[1]~input_o\,
	datac => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22~portadataout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X32_Y35_N12
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\address[1]~input_o\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\) # (\address[0]~input_o\)))) # (!\address[1]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ & 
-- ((!\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datab => \address[1]~input_o\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \address[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X32_Y35_N30
\Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & ((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\) # ((!\address[0]~input_o\)))) # (!\Mux8~0_combout\ & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ & \address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \address[0]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X34_Y35_N0
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\)) # (!\address[0]~input_o\ & 
-- ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X34_Y35_N10
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\address[1]~input_o\ & ((\Mux7~0_combout\ & (\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\)) # (!\Mux7~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\))))) # (!\address[1]~input_o\ & 
-- (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X34_Y35_N12
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\address[1]~input_o\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\) # (\address[0]~input_o\)))) # (!\address[1]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ & 
-- ((!\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[1]~input_o\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	datad => \address[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X34_Y35_N30
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\) # (!\address[0]~input_o\)))) # (!\Mux6~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ & ((\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	datac => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	datad => \address[0]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X34_Y35_N16
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\)) # (!\address[0]~input_o\ & 
-- ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X34_Y35_N26
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\) # (!\address[1]~input_o\)))) # (!\Mux5~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ & (\address[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	datab => \Mux5~0_combout\,
	datac => \address[1]~input_o\,
	datad => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X10_Y41_N8
\writedata[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(27),
	o => \writedata[27]~input_o\);

-- Location: IOIBUF_X52_Y31_N1
\writedata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(28),
	o => \writedata[28]~input_o\);

-- Location: IOIBUF_X31_Y41_N1
\writedata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(29),
	o => \writedata[29]~input_o\);

-- Location: IOIBUF_X34_Y41_N1
\writedata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(30),
	o => \writedata[30]~input_o\);

-- Location: IOIBUF_X46_Y41_N22
\writedata[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(31),
	o => \writedata[31]~input_o\);

-- Location: M9K_X33_Y35_N0
\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_four_SRAM|altsyncram:mem_block_rtl_0|altsyncram_lh81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: M9K_X33_Y35_N0
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_three_SRAM|altsyncram:mem_block_rtl_0|altsyncram_lh81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y35_N28
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\address[1]~input_o\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27~portadataout\) # (\address[0]~input_o\)))) # (!\address[1]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ & 
-- ((!\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27~portadataout\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X34_Y35_N22
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & ((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27~portadataout\) # ((!\address[0]~input_o\)))) # (!\Mux4~0_combout\ & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ & 
-- \address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27~portadataout\,
	datab => \Mux4~0_combout\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\,
	datad => \address[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X32_Y35_N0
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\)) # (!\address[0]~input_o\ & 
-- ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	datab => \address[1]~input_o\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	datad => \address[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X32_Y35_N18
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & ((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\) # ((!\address[1]~input_o\)))) # (!\Mux3~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ & \address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	datab => \Mux3~0_combout\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	datad => \address[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X32_Y35_N20
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\address[1]~input_o\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\) # ((\address[0]~input_o\)))) # (!\address[1]~input_o\ & (((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ & 
-- !\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datab => \address[1]~input_o\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datad => \address[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X32_Y35_N22
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\) # (!\address[0]~input_o\)))) # (!\Mux2~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ & ((\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datab => \Mux2~0_combout\,
	datac => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datad => \address[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X32_Y35_N8
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\address[1]~input_o\ & (((\address[0]~input_o\)))) # (!\address[1]~input_o\ & ((\address[0]~input_o\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\))) # (!\address[0]~input_o\ & 
-- (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	datab => \address[1]~input_o\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	datad => \address[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X32_Y35_N10
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\address[1]~input_o\ & ((\Mux1~0_combout\ & ((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\))) # (!\Mux1~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\)))) # (!\address[1]~input_o\ & 
-- (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	datab => \address[1]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X34_Y35_N24
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\address[1]~input_o\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\) # (\address[0]~input_o\)))) # (!\address[1]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ & 
-- ((!\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X34_Y35_N18
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((\word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\) # (!\address[0]~input_o\)))) # (!\Mux0~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ & ((\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	datab => \Mux0~0_combout\,
	datac => \word_four_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	datad => \address[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X27_Y0_N8
\address[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(10),
	o => \address[10]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\address[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(11),
	o => \address[11]~input_o\);

-- Location: IOIBUF_X7_Y41_N22
\address[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(12),
	o => \address[12]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\address[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(13),
	o => \address[13]~input_o\);

-- Location: IOIBUF_X52_Y16_N1
\address[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(14),
	o => \address[14]~input_o\);

-- Location: IOIBUF_X43_Y0_N8
\address[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(15),
	o => \address[15]~input_o\);

-- Location: IOIBUF_X16_Y41_N8
\address[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(16),
	o => \address[16]~input_o\);

-- Location: IOIBUF_X52_Y10_N1
\address[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(17),
	o => \address[17]~input_o\);

-- Location: IOIBUF_X52_Y9_N1
\address[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(18),
	o => \address[18]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\address[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(19),
	o => \address[19]~input_o\);

-- Location: IOIBUF_X46_Y0_N22
\address[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(20),
	o => \address[20]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\address[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(21),
	o => \address[21]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\address[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(22),
	o => \address[22]~input_o\);

-- Location: IOIBUF_X12_Y41_N8
\address[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(23),
	o => \address[23]~input_o\);

-- Location: IOIBUF_X5_Y41_N1
\address[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(24),
	o => \address[24]~input_o\);

-- Location: IOIBUF_X41_Y0_N22
\address[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(25),
	o => \address[25]~input_o\);

-- Location: IOIBUF_X46_Y41_N8
\address[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(26),
	o => \address[26]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\address[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(27),
	o => \address[27]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\address[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(28),
	o => \address[28]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\address[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(29),
	o => \address[29]~input_o\);

-- Location: IOIBUF_X18_Y41_N1
\address[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(30),
	o => \address[30]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\address[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(31),
	o => \address[31]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\memread~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memread,
	o => \memread~input_o\);

ww_readdata(0) <= \readdata[0]~output_o\;

ww_readdata(1) <= \readdata[1]~output_o\;

ww_readdata(2) <= \readdata[2]~output_o\;

ww_readdata(3) <= \readdata[3]~output_o\;

ww_readdata(4) <= \readdata[4]~output_o\;

ww_readdata(5) <= \readdata[5]~output_o\;

ww_readdata(6) <= \readdata[6]~output_o\;

ww_readdata(7) <= \readdata[7]~output_o\;

ww_readdata(8) <= \readdata[8]~output_o\;

ww_readdata(9) <= \readdata[9]~output_o\;

ww_readdata(10) <= \readdata[10]~output_o\;

ww_readdata(11) <= \readdata[11]~output_o\;

ww_readdata(12) <= \readdata[12]~output_o\;

ww_readdata(13) <= \readdata[13]~output_o\;

ww_readdata(14) <= \readdata[14]~output_o\;

ww_readdata(15) <= \readdata[15]~output_o\;

ww_readdata(16) <= \readdata[16]~output_o\;

ww_readdata(17) <= \readdata[17]~output_o\;

ww_readdata(18) <= \readdata[18]~output_o\;

ww_readdata(19) <= \readdata[19]~output_o\;

ww_readdata(20) <= \readdata[20]~output_o\;

ww_readdata(21) <= \readdata[21]~output_o\;

ww_readdata(22) <= \readdata[22]~output_o\;

ww_readdata(23) <= \readdata[23]~output_o\;

ww_readdata(24) <= \readdata[24]~output_o\;

ww_readdata(25) <= \readdata[25]~output_o\;

ww_readdata(26) <= \readdata[26]~output_o\;

ww_readdata(27) <= \readdata[27]~output_o\;

ww_readdata(28) <= \readdata[28]~output_o\;

ww_readdata(29) <= \readdata[29]~output_o\;

ww_readdata(30) <= \readdata[30]~output_o\;

ww_readdata(31) <= \readdata[31]~output_o\;

ww_waitrequest <= \waitrequest~output_o\;
END structure;


