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

-- DATE "01/23/2015 12:45:41"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cache IS
    PORT (
	clock : IN std_logic;
	writedata : IN std_logic_vector(31 DOWNTO 0);
	addr : IN std_logic_vector(31 DOWNTO 0);
	memwrite : IN std_logic;
	memread : IN std_logic;
	reset : IN std_logic;
	readdata : OUT std_logic_vector(31 DOWNTO 0);
	waitrequest : OUT std_logic
	);
END cache;

-- Design Ports Information
-- readdata[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[2]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[8]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[9]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[10]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[11]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[12]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[13]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[14]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[15]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[16]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[17]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[18]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[19]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[20]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[21]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[22]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[23]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[24]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[25]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[26]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[27]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[28]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[29]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[30]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[31]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- waitrequest	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memwrite	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[5]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[7]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[8]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[8]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[9]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[10]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[11]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[12]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[13]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[14]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[15]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[16]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[17]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[18]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[19]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[20]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[21]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[22]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[23]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[24]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[25]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[26]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[27]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[28]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[29]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[30]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[31]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[10]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[11]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[12]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[13]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[14]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[15]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[16]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[17]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[18]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[19]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[20]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[21]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[22]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[23]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[24]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[25]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[26]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[27]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[28]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[29]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[30]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[31]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memread	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_memwrite : std_logic;
SIGNAL ww_memread : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_waitrequest : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \memwrite~input_o\ : std_logic;
SIGNAL \memwrite_zero~0_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \writedata[0]~input_o\ : std_logic;
SIGNAL \addr[2]~input_o\ : std_logic;
SIGNAL \addr[3]~input_o\ : std_logic;
SIGNAL \addr[4]~input_o\ : std_logic;
SIGNAL \addr[5]~input_o\ : std_logic;
SIGNAL \addr[6]~input_o\ : std_logic;
SIGNAL \addr[7]~input_o\ : std_logic;
SIGNAL \addr[8]~input_o\ : std_logic;
SIGNAL \addr[9]~input_o\ : std_logic;
SIGNAL \writedata[1]~input_o\ : std_logic;
SIGNAL \writedata[2]~input_o\ : std_logic;
SIGNAL \writedata[3]~input_o\ : std_logic;
SIGNAL \writedata[4]~input_o\ : std_logic;
SIGNAL \writedata[5]~input_o\ : std_logic;
SIGNAL \writedata[6]~input_o\ : std_logic;
SIGNAL \writedata[7]~input_o\ : std_logic;
SIGNAL \writedata[8]~input_o\ : std_logic;
SIGNAL \writedata[9]~input_o\ : std_logic;
SIGNAL \writedata[10]~input_o\ : std_logic;
SIGNAL \writedata[11]~input_o\ : std_logic;
SIGNAL \writedata[12]~input_o\ : std_logic;
SIGNAL \writedata[13]~input_o\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \memwrite_one~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \memwrite_three~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \memwrite_two~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \writedata[14]~input_o\ : std_logic;
SIGNAL \writedata[15]~input_o\ : std_logic;
SIGNAL \writedata[16]~input_o\ : std_logic;
SIGNAL \writedata[17]~input_o\ : std_logic;
SIGNAL \writedata[18]~input_o\ : std_logic;
SIGNAL \writedata[19]~input_o\ : std_logic;
SIGNAL \writedata[20]~input_o\ : std_logic;
SIGNAL \writedata[21]~input_o\ : std_logic;
SIGNAL \writedata[22]~input_o\ : std_logic;
SIGNAL \writedata[23]~input_o\ : std_logic;
SIGNAL \writedata[24]~input_o\ : std_logic;
SIGNAL \writedata[25]~input_o\ : std_logic;
SIGNAL \writedata[26]~input_o\ : std_logic;
SIGNAL \writedata[27]~input_o\ : std_logic;
SIGNAL \writedata[28]~input_o\ : std_logic;
SIGNAL \writedata[29]~input_o\ : std_logic;
SIGNAL \writedata[30]~input_o\ : std_logic;
SIGNAL \writedata[31]~input_o\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \memread~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state.READ_START~q\ : std_logic;
SIGNAL \addr[12]~input_o\ : std_logic;
SIGNAL \addr[13]~input_o\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \addr[10]~input_o\ : std_logic;
SIGNAL \addr[11]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \addr[16]~input_o\ : std_logic;
SIGNAL \addr[17]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \addr[15]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \addr[14]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \addr[26]~input_o\ : std_logic;
SIGNAL \addr[27]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \Selector3~10_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \addr[31]~input_o\ : std_logic;
SIGNAL \addr[30]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Selector3~12_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \addr[29]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \addr[28]~input_o\ : std_logic;
SIGNAL \Selector3~11_combout\ : std_logic;
SIGNAL \Selector3~13_combout\ : std_logic;
SIGNAL \addr[22]~input_o\ : std_logic;
SIGNAL \addr[23]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Selector3~7_combout\ : std_logic;
SIGNAL \addr[24]~input_o\ : std_logic;
SIGNAL \addr[25]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \Selector3~8_combout\ : std_logic;
SIGNAL \addr[18]~input_o\ : std_logic;
SIGNAL \addr[19]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \addr[21]~input_o\ : std_logic;
SIGNAL \addr[20]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Selector3~6_combout\ : std_logic;
SIGNAL \Selector3~9_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.READ_FROM_MEM~q\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state.WRITE_START~q\ : std_logic;
SIGNAL \Selector3~14_combout\ : std_logic;
SIGNAL \Selector3~15_combout\ : std_logic;
SIGNAL \state.DONE~q\ : std_logic;
SIGNAL \waitrequest~0_combout\ : std_logic;
SIGNAL \waitrequest~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_writedata <= writedata;
ww_addr <= addr;
ww_memwrite <= memwrite;
ww_memread <= memread;
ww_reset <= reset;
readdata <= ww_readdata;
waitrequest <= ww_waitrequest;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \writedata[13]~input_o\ & \writedata[12]~input_o\ & \writedata[11]~input_o\ & \writedata[10]~input_o\ & \writedata[9]~input_o\ & \writedata[8]~input_o\
& \writedata[7]~input_o\ & \writedata[6]~input_o\ & \writedata[5]~input_o\ & \writedata[4]~input_o\ & \writedata[3]~input_o\ & \writedata[2]~input_o\ & \writedata[1]~input_o\ & \writedata[0]~input_o\);

\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & \addr[3]~input_o\ & \addr[2]~input_o\);

\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \writedata[13]~input_o\ & \writedata[12]~input_o\ & \writedata[11]~input_o\ & \writedata[10]~input_o\ & \writedata[9]~input_o\ & \writedata[8]~input_o\
& \writedata[7]~input_o\ & \writedata[6]~input_o\ & \writedata[5]~input_o\ & \writedata[4]~input_o\ & \writedata[3]~input_o\ & \writedata[2]~input_o\ & \writedata[1]~input_o\ & \writedata[0]~input_o\);

\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & \addr[3]~input_o\ & \addr[2]~input_o\);

\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \writedata[13]~input_o\ & \writedata[12]~input_o\ & \writedata[11]~input_o\ & \writedata[10]~input_o\ & \writedata[9]~input_o\ & 
\writedata[8]~input_o\ & \writedata[7]~input_o\ & \writedata[6]~input_o\ & \writedata[5]~input_o\ & \writedata[4]~input_o\ & \writedata[3]~input_o\ & \writedata[2]~input_o\ & \writedata[1]~input_o\ & \writedata[0]~input_o\);

\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & \addr[3]~input_o\ & \addr[2]~input_o\);

\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \writedata[13]~input_o\ & \writedata[12]~input_o\ & \writedata[11]~input_o\ & \writedata[10]~input_o\ & \writedata[9]~input_o\ & 
\writedata[8]~input_o\ & \writedata[7]~input_o\ & \writedata[6]~input_o\ & \writedata[5]~input_o\ & \writedata[4]~input_o\ & \writedata[3]~input_o\ & \writedata[2]~input_o\ & \writedata[1]~input_o\ & \writedata[0]~input_o\);

\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & \addr[3]~input_o\ & \addr[2]~input_o\);

\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\writedata[31]~input_o\ & \writedata[30]~input_o\ & \writedata[29]~input_o\ & \writedata[28]~input_o\ & \writedata[27]~input_o\ & \writedata[26]~input_o\ & 
\writedata[25]~input_o\ & \writedata[24]~input_o\ & \writedata[23]~input_o\ & \writedata[22]~input_o\ & \writedata[21]~input_o\ & \writedata[20]~input_o\ & \writedata[19]~input_o\ & \writedata[18]~input_o\ & \writedata[17]~input_o\ & 
\writedata[16]~input_o\ & \writedata[15]~input_o\ & \writedata[14]~input_o\);

\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & \addr[3]~input_o\ & \addr[2]~input_o\);

\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ <= \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\writedata[31]~input_o\ & \writedata[30]~input_o\ & \writedata[29]~input_o\ & \writedata[28]~input_o\ & \writedata[27]~input_o\ & \writedata[26]~input_o\ & 
\writedata[25]~input_o\ & \writedata[24]~input_o\ & \writedata[23]~input_o\ & \writedata[22]~input_o\ & \writedata[21]~input_o\ & \writedata[20]~input_o\ & \writedata[19]~input_o\ & \writedata[18]~input_o\ & \writedata[17]~input_o\ & 
\writedata[16]~input_o\ & \writedata[15]~input_o\ & \writedata[14]~input_o\);

\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & \addr[3]~input_o\ & \addr[2]~input_o\);

\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ <= \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\writedata[31]~input_o\ & \writedata[30]~input_o\ & \writedata[29]~input_o\ & \writedata[28]~input_o\ & \writedata[27]~input_o\ & \writedata[26]~input_o\ & 
\writedata[25]~input_o\ & \writedata[24]~input_o\ & \writedata[23]~input_o\ & \writedata[22]~input_o\ & \writedata[21]~input_o\ & \writedata[20]~input_o\ & \writedata[19]~input_o\ & \writedata[18]~input_o\ & \writedata[17]~input_o\ & 
\writedata[16]~input_o\ & \writedata[15]~input_o\ & \writedata[14]~input_o\);

\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & \addr[3]~input_o\ & \addr[2]~input_o\);

\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ <= \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\writedata[31]~input_o\ & \writedata[30]~input_o\ & \writedata[29]~input_o\ & \writedata[28]~input_o\ & \writedata[27]~input_o\ & \writedata[26]~input_o\ & 
\writedata[25]~input_o\ & \writedata[24]~input_o\ & \writedata[23]~input_o\ & \writedata[22]~input_o\ & \writedata[21]~input_o\ & \writedata[20]~input_o\ & \writedata[19]~input_o\ & \writedata[18]~input_o\ & \writedata[17]~input_o\ & 
\writedata[16]~input_o\ & \writedata[15]~input_o\ & \writedata[14]~input_o\);

\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & \addr[3]~input_o\ & \addr[2]~input_o\);

\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ <= \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & \addr[3]~input_o\ & \addr[2]~input_o\);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\addr[9]~input_o\ & \addr[8]~input_o\ & \addr[7]~input_o\ & \addr[6]~input_o\ & \addr[5]~input_o\ & \addr[4]~input_o\ & \addr[3]~input_o\ & \addr[2]~input_o\);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(2);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(3);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(4);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(5);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(6);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(7);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(8);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(9);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(10);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(11);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(12);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(13);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(14);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(15);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(16);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(17);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X23_Y41_N9
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X46_Y0_N23
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

-- Location: IOOBUF_X23_Y41_N2
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

-- Location: IOOBUF_X18_Y41_N9
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

-- Location: IOOBUF_X48_Y0_N2
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

-- Location: IOOBUF_X48_Y41_N9
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

-- Location: IOOBUF_X31_Y41_N9
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

-- Location: IOOBUF_X52_Y13_N9
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

-- Location: IOOBUF_X25_Y41_N9
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

-- Location: IOOBUF_X50_Y41_N2
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

-- Location: IOOBUF_X14_Y41_N9
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

-- Location: IOOBUF_X21_Y41_N2
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

-- Location: IOOBUF_X46_Y0_N16
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

-- Location: IOOBUF_X46_Y41_N2
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

-- Location: IOOBUF_X12_Y41_N9
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

-- Location: IOOBUF_X36_Y0_N9
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

-- Location: IOOBUF_X21_Y41_N9
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X16_Y41_N2
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

-- Location: IOOBUF_X52_Y16_N9
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

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOOBUF_X31_Y41_N16
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

-- Location: IOOBUF_X14_Y41_N2
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

-- Location: IOOBUF_X52_Y16_N2
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

-- Location: IOOBUF_X52_Y13_N2
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

-- Location: IOOBUF_X31_Y41_N2
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

-- Location: IOOBUF_X18_Y41_N2
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

-- Location: IOOBUF_X34_Y0_N9
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X16_Y41_N9
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

-- Location: IOOBUF_X52_Y12_N9
\waitrequest~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \waitrequest~reg0_q\,
	devoe => ww_devoe,
	o => \waitrequest~output_o\);

-- Location: IOIBUF_X27_Y0_N8
\addr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\addr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: IOIBUF_X48_Y0_N8
\memwrite~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memwrite,
	o => \memwrite~input_o\);

-- Location: LCCOMB_X41_Y32_N14
\memwrite_zero~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memwrite_zero~0_combout\ = (!\addr[1]~input_o\ & (!\addr[0]~input_o\ & \memwrite~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr[1]~input_o\,
	datac => \addr[0]~input_o\,
	datad => \memwrite~input_o\,
	combout => \memwrite_zero~0_combout\);

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

-- Location: IOIBUF_X52_Y30_N8
\writedata[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(0),
	o => \writedata[0]~input_o\);

-- Location: IOIBUF_X52_Y28_N8
\addr[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(2),
	o => \addr[2]~input_o\);

-- Location: IOIBUF_X52_Y19_N1
\addr[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(3),
	o => \addr[3]~input_o\);

-- Location: IOIBUF_X41_Y41_N15
\addr[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(4),
	o => \addr[4]~input_o\);

-- Location: IOIBUF_X41_Y41_N1
\addr[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(5),
	o => \addr[5]~input_o\);

-- Location: IOIBUF_X41_Y41_N22
\addr[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(6),
	o => \addr[6]~input_o\);

-- Location: IOIBUF_X38_Y41_N8
\addr[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(7),
	o => \addr[7]~input_o\);

-- Location: IOIBUF_X41_Y41_N8
\addr[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(8),
	o => \addr[8]~input_o\);

-- Location: IOIBUF_X52_Y27_N8
\addr[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(9),
	o => \addr[9]~input_o\);

-- Location: IOIBUF_X52_Y32_N1
\writedata[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(1),
	o => \writedata[1]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\writedata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(2),
	o => \writedata[2]~input_o\);

-- Location: IOIBUF_X46_Y41_N15
\writedata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(3),
	o => \writedata[3]~input_o\);

-- Location: IOIBUF_X52_Y31_N8
\writedata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(4),
	o => \writedata[4]~input_o\);

-- Location: IOIBUF_X43_Y41_N1
\writedata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(5),
	o => \writedata[5]~input_o\);

-- Location: IOIBUF_X36_Y41_N1
\writedata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(6),
	o => \writedata[6]~input_o\);

-- Location: IOIBUF_X41_Y0_N22
\writedata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(7),
	o => \writedata[7]~input_o\);

-- Location: IOIBUF_X52_Y30_N1
\writedata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(8),
	o => \writedata[8]~input_o\);

-- Location: IOIBUF_X52_Y23_N1
\writedata[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(9),
	o => \writedata[9]~input_o\);

-- Location: IOIBUF_X46_Y41_N22
\writedata[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(10),
	o => \writedata[10]~input_o\);

-- Location: IOIBUF_X38_Y41_N1
\writedata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(11),
	o => \writedata[11]~input_o\);

-- Location: IOIBUF_X52_Y32_N15
\writedata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(12),
	o => \writedata[12]~input_o\);

-- Location: IOIBUF_X29_Y41_N1
\writedata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(13),
	o => \writedata[13]~input_o\);

-- Location: M9K_X40_Y34_N0
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_zero_SRAM|altsyncram:mem_block_rtl_0|altsyncram_6j41:auto_generated|ALTSYNCRAM",
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
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite_zero~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X41_Y32_N24
\memwrite_one~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memwrite_one~0_combout\ = (!\addr[1]~input_o\ & (\addr[0]~input_o\ & \memwrite~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr[1]~input_o\,
	datac => \addr[0]~input_o\,
	datad => \memwrite~input_o\,
	combout => \memwrite_one~0_combout\);

-- Location: M9K_X40_Y31_N0
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_one_SRAM|altsyncram:mem_block_rtl_0|altsyncram_6j41:auto_generated|ALTSYNCRAM",
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
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite_one~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X39_Y33_N28
\Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\addr[0]~input_o\ & (((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\) # (\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ & 
-- ((!\addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \addr[0]~input_o\,
	datad => \addr[1]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X41_Y32_N12
\memwrite_three~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memwrite_three~0_combout\ = (\addr[1]~input_o\ & (\addr[0]~input_o\ & \memwrite~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr[1]~input_o\,
	datac => \addr[0]~input_o\,
	datad => \memwrite~input_o\,
	combout => \memwrite_three~0_combout\);

-- Location: M9K_X40_Y32_N0
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_three_SRAM|altsyncram:mem_block_rtl_0|altsyncram_6j41:auto_generated|ALTSYNCRAM",
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
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite_three~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X41_Y32_N6
\memwrite_two~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memwrite_two~0_combout\ = (\addr[1]~input_o\ & (!\addr[0]~input_o\ & \memwrite~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \addr[1]~input_o\,
	datac => \addr[0]~input_o\,
	datad => \memwrite~input_o\,
	combout => \memwrite_two~0_combout\);

-- Location: M9K_X40_Y33_N0
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_two_SRAM|altsyncram:mem_block_rtl_0|altsyncram_6j41:auto_generated|ALTSYNCRAM",
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
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite_two~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X39_Y33_N26
\Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\addr[1]~input_o\ & ((\Mux31~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (!\Mux31~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\))))) # 
-- (!\addr[1]~input_o\ & (\Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \Mux31~0_combout\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X39_Y33_N4
\Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\addr[0]~input_o\ & (((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\) # (\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ & ((!\addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \addr[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X39_Y32_N20
\Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\addr[1]~input_o\ & ((\Mux30~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\)) # (!\Mux30~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\))))) # (!\addr[1]~input_o\ & 
-- (((\Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datab => \addr[1]~input_o\,
	datac => \Mux30~0_combout\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X39_Y33_N10
\Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\addr[1]~input_o\ & (\addr[0]~input_o\)) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\))) # (!\addr[0]~input_o\ & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X39_Y33_N0
\Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\) # ((!\addr[1]~input_o\)))) # (!\Mux29~0_combout\ & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ & \addr[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \addr[1]~input_o\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X39_Y33_N22
\Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\) # (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\)))) # (!\addr[1]~input_o\ & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ & (!\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	datac => \addr[0]~input_o\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X39_Y33_N16
\Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux28~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\) # (!\addr[0]~input_o\)))) # (!\Mux28~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ & (\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	datac => \addr[0]~input_o\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X39_Y31_N24
\Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\addr[1]~input_o\ & (\addr[0]~input_o\)) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\))) # (!\addr[0]~input_o\ & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X39_Y31_N6
\Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\addr[1]~input_o\ & ((\Mux27~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\))) # (!\Mux27~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\)))) # (!\addr[1]~input_o\ & 
-- (((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	datac => \addr[1]~input_o\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X41_Y32_N28
\Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\addr[1]~input_o\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\) # ((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & (((!\addr[0]~input_o\ & \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	datab => \addr[1]~input_o\,
	datac => \addr[0]~input_o\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X41_Y32_N22
\Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\addr[0]~input_o\ & ((\Mux26~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\)) # (!\Mux26~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\))))) # (!\addr[0]~input_o\ & 
-- (((\Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	datac => \addr[0]~input_o\,
	datad => \Mux26~0_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X39_Y31_N12
\Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\))) # (!\addr[0]~input_o\ & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datac => \addr[1]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X41_Y32_N16
\Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\) # (!\addr[1]~input_o\)))) # (!\Mux25~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ & (\addr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \Mux25~0_combout\,
	datac => \addr[1]~input_o\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X39_Y33_N6
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\) # (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\)))) # (!\addr[1]~input_o\ & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ & (!\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \addr[0]~input_o\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X39_Y33_N12
\Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux24~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\) # ((!\addr[0]~input_o\)))) # (!\Mux24~0_combout\ & (((\addr[0]~input_o\ & \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \addr[0]~input_o\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X39_Y33_N14
\Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\))) # (!\addr[0]~input_o\ & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datac => \addr[0]~input_o\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X39_Y33_N20
\Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\addr[1]~input_o\ & ((\Mux23~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\)) # (!\Mux23~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\))))) # (!\addr[1]~input_o\ & 
-- (\Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \Mux23~0_combout\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X39_Y33_N18
\Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\addr[1]~input_o\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\) # ((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & (((!\addr[0]~input_o\ & \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	datac => \addr[0]~input_o\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X39_Y33_N24
\Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\addr[0]~input_o\ & ((\Mux22~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\))) # (!\Mux22~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\)))) # (!\addr[0]~input_o\ & 
-- (((\Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X41_Y32_N2
\Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\))) # (!\addr[0]~input_o\ & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	datab => \addr[1]~input_o\,
	datac => \addr[0]~input_o\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X41_Y32_N0
\Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\) # ((!\addr[1]~input_o\)))) # (!\Mux21~0_combout\ & (((\addr[1]~input_o\ & \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	datab => \Mux21~0_combout\,
	datac => \addr[1]~input_o\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X39_Y31_N30
\Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\addr[1]~input_o\ & ((\addr[0]~input_o\) # ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\)))) # (!\addr[1]~input_o\ & (!\addr[0]~input_o\ & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X39_Y31_N4
\Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux20~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\) # (!\addr[0]~input_o\)))) # (!\Mux20~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ & ((\addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datac => \Mux20~0_combout\,
	datad => \addr[0]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X41_Y33_N0
\Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\addr[1]~input_o\ & (\addr[0]~input_o\)) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)) # (!\addr[0]~input_o\ & 
-- ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X41_Y33_N26
\Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\addr[1]~input_o\ & ((\Mux19~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)) # (!\Mux19~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\))))) # (!\addr[1]~input_o\ & 
-- (((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X41_Y33_N8
\Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\) # (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\)))) # (!\addr[1]~input_o\ & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ & (!\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	datac => \addr[0]~input_o\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X41_Y33_N30
\Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\) # (!\addr[0]~input_o\)))) # (!\Mux18~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ & (\addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	datab => \Mux18~0_combout\,
	datac => \addr[0]~input_o\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	combout => \Mux18~1_combout\);

-- Location: IOIBUF_X52_Y32_N8
\writedata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(14),
	o => \writedata[14]~input_o\);

-- Location: IOIBUF_X52_Y27_N1
\writedata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(15),
	o => \writedata[15]~input_o\);

-- Location: IOIBUF_X29_Y41_N8
\writedata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(16),
	o => \writedata[16]~input_o\);

-- Location: IOIBUF_X52_Y31_N1
\writedata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(17),
	o => \writedata[17]~input_o\);

-- Location: IOIBUF_X34_Y41_N8
\writedata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(18),
	o => \writedata[18]~input_o\);

-- Location: IOIBUF_X36_Y41_N8
\writedata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(19),
	o => \writedata[19]~input_o\);

-- Location: IOIBUF_X52_Y19_N8
\writedata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(20),
	o => \writedata[20]~input_o\);

-- Location: IOIBUF_X31_Y41_N22
\writedata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(21),
	o => \writedata[21]~input_o\);

-- Location: IOIBUF_X48_Y41_N1
\writedata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(22),
	o => \writedata[22]~input_o\);

-- Location: IOIBUF_X43_Y41_N8
\writedata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(23),
	o => \writedata[23]~input_o\);

-- Location: IOIBUF_X52_Y18_N1
\writedata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(24),
	o => \writedata[24]~input_o\);

-- Location: IOIBUF_X52_Y25_N1
\writedata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(25),
	o => \writedata[25]~input_o\);

-- Location: IOIBUF_X34_Y41_N1
\writedata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(26),
	o => \writedata[26]~input_o\);

-- Location: IOIBUF_X46_Y41_N8
\writedata[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(27),
	o => \writedata[27]~input_o\);

-- Location: IOIBUF_X52_Y23_N8
\writedata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(28),
	o => \writedata[28]~input_o\);

-- Location: IOIBUF_X52_Y32_N22
\writedata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(29),
	o => \writedata[29]~input_o\);

-- Location: IOIBUF_X52_Y12_N1
\writedata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(30),
	o => \writedata[30]~input_o\);

-- Location: IOIBUF_X25_Y41_N1
\writedata[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(31),
	o => \writedata[31]~input_o\);

-- Location: M9K_X40_Y32_N0
\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_three_SRAM|altsyncram:mem_block_rtl_0|altsyncram_6j41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite_three~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X40_Y33_N0
\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_two_SRAM|altsyncram:mem_block_rtl_0|altsyncram_6j41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite_two~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X40_Y34_N0
\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_zero_SRAM|altsyncram:mem_block_rtl_0|altsyncram_6j41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite_zero~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X40_Y31_N0
\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:word_one_SRAM|altsyncram:mem_block_rtl_0|altsyncram_6j41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \memwrite_one~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X41_Y33_N24
\Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\))) # (!\addr[0]~input_o\ & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\,
	datac => \addr[0]~input_o\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X41_Y33_N10
\Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\addr[1]~input_o\ & ((\Mux17~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\)) # (!\Mux17~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\))))) # 
-- (!\addr[1]~input_o\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\,
	datac => \addr[1]~input_o\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X41_Y33_N28
\Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\addr[1]~input_o\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\) # ((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & (((!\addr[0]~input_o\ & \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datac => \addr[0]~input_o\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X41_Y33_N22
\Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\addr[0]~input_o\ & ((\Mux16~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\)) # (!\Mux16~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\))))) # (!\addr[0]~input_o\ & 
-- (((\Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datac => \addr[0]~input_o\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X41_Y33_N12
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\)) # (!\addr[0]~input_o\ & 
-- ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datad => \addr[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X41_Y33_N2
\Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\addr[1]~input_o\ & ((\Mux15~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\)) # (!\Mux15~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\))))) # (!\addr[1]~input_o\ & 
-- (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X41_Y33_N4
\Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\addr[1]~input_o\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\) # ((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & (((!\addr[0]~input_o\ & \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	datac => \addr[0]~input_o\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X41_Y33_N14
\Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\addr[0]~input_o\ & ((\Mux14~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\))) # (!\Mux14~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\)))) # (!\addr[0]~input_o\ & 
-- (((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	datac => \Mux14~0_combout\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X39_Y31_N10
\Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\))) # (!\addr[0]~input_o\ & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datac => \addr[1]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X39_Y32_N2
\Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\addr[1]~input_o\ & ((\Mux13~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\))) # (!\Mux13~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\)))) # (!\addr[1]~input_o\ & 
-- (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datac => \Mux13~0_combout\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X39_Y33_N30
\Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\addr[1]~input_o\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\) # ((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & (((!\addr[0]~input_o\ & \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datac => \addr[0]~input_o\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X39_Y32_N28
\Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\addr[0]~input_o\ & ((\Mux12~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\))) # (!\Mux12~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\)))) # (!\addr[0]~input_o\ & 
-- (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datac => \Mux12~0_combout\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X39_Y31_N0
\Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\addr[1]~input_o\ & (\addr[0]~input_o\)) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\)) # (!\addr[0]~input_o\ & 
-- ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X39_Y32_N26
\Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\addr[1]~input_o\ & ((\Mux11~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\)) # (!\Mux11~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\))))) # (!\addr[1]~input_o\ & 
-- (\Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \Mux11~0_combout\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X39_Y32_N12
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\addr[1]~input_o\ & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\) # (\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ & ((!\addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	datad => \addr[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X39_Y32_N10
\Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\) # (!\addr[0]~input_o\)))) # (!\Mux10~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ & ((\addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	datab => \Mux10~0_combout\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	datad => \addr[0]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X39_Y31_N2
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\addr[1]~input_o\ & (\addr[0]~input_o\)) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\)) # (!\addr[0]~input_o\ & 
-- ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X39_Y32_N24
\Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\addr[1]~input_o\ & ((\Mux9~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\))) # (!\Mux9~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\)))) # (!\addr[1]~input_o\ & 
-- (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X39_Y33_N8
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\addr[0]~input_o\ & (((\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\)) # (!\addr[1]~input_o\ & 
-- ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datac => \addr[0]~input_o\,
	datad => \addr[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X39_Y32_N22
\Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\) # (!\addr[0]~input_o\)))) # (!\Mux8~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ & ((\addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datab => \Mux8~0_combout\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \addr[0]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X39_Y31_N8
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\addr[1]~input_o\ & (\addr[0]~input_o\)) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\)) # (!\addr[0]~input_o\ & 
-- ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \addr[0]~input_o\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X39_Y32_N0
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\addr[1]~input_o\ & ((\Mux7~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\)) # (!\Mux7~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\))))) # (!\addr[1]~input_o\ & 
-- (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X41_Y33_N16
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\addr[0]~input_o\ & (((\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\))) # (!\addr[1]~input_o\ & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	datac => \addr[1]~input_o\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X41_Y32_N10
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\addr[0]~input_o\ & ((\Mux6~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\))) # (!\Mux6~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\)))) # (!\addr[0]~input_o\ & 
-- (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	datac => \addr[0]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X41_Y32_N20
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\))) # (!\addr[0]~input_o\ & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	datab => \addr[1]~input_o\,
	datac => \addr[0]~input_o\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X41_Y32_N26
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\addr[1]~input_o\ & ((\Mux5~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\)) # (!\Mux5~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\))))) # (!\addr[1]~input_o\ & 
-- (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	datab => \addr[1]~input_o\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X39_Y31_N26
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\addr[1]~input_o\ & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\) # (\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ & ((!\addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\,
	datad => \addr[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X39_Y31_N16
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\)) # (!\addr[0]~input_o\))) # (!\Mux4~0_combout\ & (\addr[0]~input_o\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \addr[0]~input_o\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X39_Y31_N22
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\)) # (!\addr[0]~input_o\ & 
-- ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	datac => \addr[1]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X39_Y31_N28
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\) # ((!\addr[1]~input_o\)))) # (!\Mux3~0_combout\ & (((\addr[1]~input_o\ & \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	datac => \addr[1]~input_o\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X39_Y31_N14
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\addr[1]~input_o\ & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\) # (\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ & ((!\addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datac => \addr[1]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X39_Y31_N20
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\) # (!\addr[0]~input_o\)))) # (!\Mux2~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ & ((\addr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datab => \Mux2~0_combout\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datad => \addr[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X39_Y32_N14
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\addr[1]~input_o\ & (((\addr[0]~input_o\)))) # (!\addr[1]~input_o\ & ((\addr[0]~input_o\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\)) # (!\addr[0]~input_o\ & 
-- ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	datac => \addr[1]~input_o\,
	datad => \addr[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X39_Y32_N16
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\addr[1]~input_o\ & ((\Mux1~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\))) # (!\Mux1~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\)))) # (!\addr[1]~input_o\ & 
-- (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[1]~input_o\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	datac => \Mux1~0_combout\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X41_Y33_N18
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\addr[0]~input_o\ & (((\addr[1]~input_o\)))) # (!\addr[0]~input_o\ & ((\addr[1]~input_o\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\)) # (!\addr[1]~input_o\ & 
-- ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	datac => \addr[1]~input_o\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X41_Y33_N20
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\addr[0]~input_o\ & ((\Mux0~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\))) # (!\Mux0~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\)))) # (!\addr[0]~input_o\ & 
-- (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[0]~input_o\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: IOIBUF_X12_Y41_N1
\memread~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memread,
	o => \memread~input_o\);

-- Location: LCCOMB_X41_Y32_N18
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\state.DONE~q\ & ((\memread~input_o\) # ((\state.IDLE~q\) # (\memwrite~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DONE~q\,
	datab => \memread~input_o\,
	datac => \state.IDLE~q\,
	datad => \memwrite~input_o\,
	combout => \Selector1~0_combout\);

-- Location: IOIBUF_X27_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X41_Y32_N19
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X41_Y32_N30
\state~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~11_combout\ = (\memread~input_o\ & !\state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memread~input_o\,
	datad => \state.IDLE~q\,
	combout => \state~11_combout\);

-- Location: FF_X41_Y32_N31
\state.READ_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.READ_START~q\);

-- Location: IOIBUF_X43_Y0_N8
\addr[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(12),
	o => \addr[12]~input_o\);

-- Location: IOIBUF_X52_Y15_N1
\addr[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(13),
	o => \addr[13]~input_o\);

-- Location: LCCOMB_X39_Y28_N14
\~GND\ : cycloneiv_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M9K_X40_Y28_N0
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:tag_SRAM|altsyncram:mem_block_rtl_0|altsyncram_au31:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 23,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X42_Y28_N2
\Selector3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\addr[12]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ & (\addr[13]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\)))) # (!\addr[12]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ & (\addr[13]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[12]~input_o\,
	datab => \addr[13]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	combout => \Selector3~1_combout\);

-- Location: IOIBUF_X52_Y11_N1
\addr[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(10),
	o => \addr[10]~input_o\);

-- Location: IOIBUF_X50_Y0_N8
\addr[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(11),
	o => \addr[11]~input_o\);

-- Location: LCCOMB_X42_Y28_N24
\Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\addr[10]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\addr[11]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\)))) # (!\addr[10]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\addr[11]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[10]~input_o\,
	datab => \addr[11]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \Selector3~0_combout\);

-- Location: IOIBUF_X52_Y11_N8
\addr[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(16),
	o => \addr[16]~input_o\);

-- Location: IOIBUF_X52_Y9_N8
\addr[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(17),
	o => \addr[17]~input_o\);

-- Location: M9K_X40_Y28_N0
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:tag_SRAM|altsyncram:mem_block_rtl_0|altsyncram_au31:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 23,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X41_Y28_N22
\Selector3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\addr[16]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ & (\addr[17]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\)))) # (!\addr[16]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ & (\addr[17]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[16]~input_o\,
	datab => \addr[17]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	combout => \Selector3~3_combout\);

-- Location: IOIBUF_X52_Y18_N8
\addr[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(15),
	o => \addr[15]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\addr[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(14),
	o => \addr[14]~input_o\);

-- Location: LCCOMB_X41_Y28_N0
\Selector3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\addr[15]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ & (\addr[14]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\)))) # (!\addr[15]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ & (\addr[14]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[15]~input_o\,
	datab => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	datac => \addr[14]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X41_Y28_N16
\Selector3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\Selector3~1_combout\ & (\Selector3~0_combout\ & (\Selector3~3_combout\ & \Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Selector3~0_combout\,
	datac => \Selector3~3_combout\,
	datad => \Selector3~2_combout\,
	combout => \Selector3~4_combout\);

-- Location: IOIBUF_X52_Y28_N1
\addr[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(26),
	o => \addr[26]~input_o\);

-- Location: IOIBUF_X41_Y0_N15
\addr[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(27),
	o => \addr[27]~input_o\);

-- Location: LCCOMB_X41_Y28_N12
\Selector3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~10_combout\ = (\addr[26]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ & (\addr[27]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\)))) # (!\addr[26]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ & (\addr[27]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[26]~input_o\,
	datab => \addr[27]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	combout => \Selector3~10_combout\);

-- Location: IOIBUF_X41_Y0_N8
\addr[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(31),
	o => \addr[31]~input_o\);

-- Location: IOIBUF_X52_Y15_N8
\addr[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(30),
	o => \addr[30]~input_o\);

-- Location: LCCOMB_X41_Y28_N26
\Selector3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~12_combout\ = (\addr[31]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ & (\addr[30]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\)))) # (!\addr[31]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ & (\addr[30]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[31]~input_o\,
	datab => \addr[30]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	combout => \Selector3~12_combout\);

-- Location: IOIBUF_X50_Y0_N1
\addr[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(29),
	o => \addr[29]~input_o\);

-- Location: IOIBUF_X52_Y10_N1
\addr[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(28),
	o => \addr[28]~input_o\);

-- Location: LCCOMB_X42_Y28_N6
\Selector3~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~11_combout\ = (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ & (\addr[28]~input_o\ & (\addr[29]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\)))) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ & 
-- (!\addr[28]~input_o\ & (\addr[29]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datab => \addr[29]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datad => \addr[28]~input_o\,
	combout => \Selector3~11_combout\);

-- Location: LCCOMB_X41_Y28_N8
\Selector3~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~13_combout\ = (\Selector3~10_combout\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ & (\Selector3~12_combout\ & \Selector3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~10_combout\,
	datab => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datac => \Selector3~12_combout\,
	datad => \Selector3~11_combout\,
	combout => \Selector3~13_combout\);

-- Location: IOIBUF_X52_Y10_N8
\addr[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(22),
	o => \addr[22]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\addr[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(23),
	o => \addr[23]~input_o\);

-- Location: LCCOMB_X41_Y28_N30
\Selector3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~7_combout\ = (\addr[22]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ & (\addr[23]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\)))) # (!\addr[22]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ & (\addr[23]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[22]~input_o\,
	datab => \addr[23]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	combout => \Selector3~7_combout\);

-- Location: IOIBUF_X52_Y9_N1
\addr[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(24),
	o => \addr[24]~input_o\);

-- Location: IOIBUF_X52_Y25_N8
\addr[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(25),
	o => \addr[25]~input_o\);

-- Location: LCCOMB_X41_Y28_N24
\Selector3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~8_combout\ = (\addr[24]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ & (\addr[25]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\)))) # (!\addr[24]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ & (\addr[25]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[24]~input_o\,
	datab => \addr[25]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\,
	combout => \Selector3~8_combout\);

-- Location: IOIBUF_X50_Y41_N8
\addr[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(18),
	o => \addr[18]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\addr[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(19),
	o => \addr[19]~input_o\);

-- Location: LCCOMB_X42_Y28_N8
\Selector3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = (\addr[18]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ & (\addr[19]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\)))) # (!\addr[18]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ & (\addr[19]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[18]~input_o\,
	datab => \addr[19]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	combout => \Selector3~5_combout\);

-- Location: IOIBUF_X27_Y41_N8
\addr[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(21),
	o => \addr[21]~input_o\);

-- Location: IOIBUF_X27_Y41_N1
\addr[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(20),
	o => \addr[20]~input_o\);

-- Location: LCCOMB_X39_Y28_N8
\Selector3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~6_combout\ = (\addr[21]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ & (\addr[20]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\)))) # (!\addr[21]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ & (\addr[20]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addr[21]~input_o\,
	datab => \addr[20]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	combout => \Selector3~6_combout\);

-- Location: LCCOMB_X41_Y28_N10
\Selector3~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~9_combout\ = (\Selector3~7_combout\ & (\Selector3~8_combout\ & (\Selector3~5_combout\ & \Selector3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~7_combout\,
	datab => \Selector3~8_combout\,
	datac => \Selector3~5_combout\,
	datad => \Selector3~6_combout\,
	combout => \Selector3~9_combout\);

-- Location: LCCOMB_X41_Y28_N6
\Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.READ_START~q\ & (((!\Selector3~9_combout\) # (!\Selector3~13_combout\)) # (!\Selector3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_START~q\,
	datab => \Selector3~4_combout\,
	datac => \Selector3~13_combout\,
	datad => \Selector3~9_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X41_Y28_N7
\state.READ_FROM_MEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.READ_FROM_MEM~q\);

-- Location: LCCOMB_X41_Y32_N4
\state~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (!\state.IDLE~q\ & (!\memread~input_o\ & \memwrite~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~q\,
	datac => \memread~input_o\,
	datad => \memwrite~input_o\,
	combout => \state~10_combout\);

-- Location: FF_X41_Y32_N5
\state.WRITE_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WRITE_START~q\);

-- Location: LCCOMB_X41_Y28_N2
\Selector3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~14_combout\ = (\Selector3~9_combout\ & (\Selector3~13_combout\ & \Selector3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~9_combout\,
	datac => \Selector3~13_combout\,
	datad => \Selector3~4_combout\,
	combout => \Selector3~14_combout\);

-- Location: LCCOMB_X41_Y28_N28
\Selector3~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~15_combout\ = (\state.READ_FROM_MEM~q\) # ((\state.WRITE_START~q\) # ((\state.READ_START~q\ & \Selector3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_FROM_MEM~q\,
	datab => \state.WRITE_START~q\,
	datac => \state.READ_START~q\,
	datad => \Selector3~14_combout\,
	combout => \Selector3~15_combout\);

-- Location: FF_X41_Y28_N29
\state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DONE~q\);

-- Location: LCCOMB_X41_Y32_N8
\waitrequest~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \waitrequest~0_combout\ = (\reset~input_o\ & (((\waitrequest~reg0_q\)))) # (!\reset~input_o\ & (((!\state.DONE~q\ & \waitrequest~reg0_q\)) # (!\state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DONE~q\,
	datab => \reset~input_o\,
	datac => \waitrequest~reg0_q\,
	datad => \state.IDLE~q\,
	combout => \waitrequest~0_combout\);

-- Location: FF_X41_Y32_N9
\waitrequest~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \waitrequest~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \waitrequest~reg0_q\);

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


