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

-- DATE "01/24/2015 14:34:03"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
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
	reset : IN std_logic;
	s_addr : IN std_logic_vector(31 DOWNTO 0);
	s_read : IN std_logic;
	s_readdata : OUT std_logic_vector(31 DOWNTO 0);
	s_write : IN std_logic;
	s_writedata : IN std_logic_vector(31 DOWNTO 0);
	s_waitrequest : OUT std_logic;
	m_addr : OUT std_logic_vector(31 DOWNTO 0);
	m_read : OUT std_logic;
	m_readdata : IN std_logic_vector(31 DOWNTO 0);
	m_write : OUT std_logic;
	m_writedata : OUT std_logic_vector(31 DOWNTO 0);
	m_waitrequest : IN std_logic
	);
END cache;

-- Design Ports Information
-- s_readdata[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[1]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[4]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[5]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[6]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[7]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[8]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[9]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[10]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[11]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[12]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[13]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[14]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[15]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[16]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[17]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[18]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[19]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[20]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[21]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[22]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[23]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[24]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[25]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[26]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[27]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[28]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[29]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[30]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[31]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_waitrequest	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[0]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[1]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[3]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[5]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[7]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[8]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[9]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[10]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[11]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[12]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[13]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[14]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[15]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[16]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[17]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[18]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[19]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[20]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[21]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[22]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[23]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[24]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[25]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[26]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[27]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[28]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[29]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[30]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[31]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_read	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[6]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[7]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[8]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[9]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[10]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[11]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[12]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[13]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[14]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[15]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[16]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[17]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[18]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[19]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[20]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[21]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[22]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[23]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[24]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[25]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[26]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[27]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[28]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[29]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[30]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[31]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_write	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[1]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[2]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[3]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[4]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[8]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[9]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[10]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[11]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[12]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[13]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[14]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[15]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[16]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[17]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[18]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[19]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[20]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[21]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[22]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[23]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[24]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[25]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[26]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[27]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[28]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[29]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[30]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[31]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[0]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[1]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[3]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[4]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[6]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[7]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[8]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[9]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[10]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[11]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[12]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[13]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[14]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[15]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[16]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[17]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[18]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[19]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[20]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[21]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[22]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[23]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[24]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[25]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[26]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[27]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[28]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[29]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[30]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[31]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[2]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[3]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[5]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[6]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[7]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[8]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[9]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[10]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[11]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[12]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[13]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[14]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[15]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[16]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[17]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[18]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[19]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[20]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[21]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[22]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[23]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[24]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[25]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[26]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[27]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[28]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[29]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[30]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[31]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_read	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_write	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_waitrequest	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_reset : std_logic;
SIGNAL ww_s_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_s_read : std_logic;
SIGNAL ww_s_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_s_write : std_logic;
SIGNAL ww_s_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_s_waitrequest : std_logic;
SIGNAL ww_m_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_m_read : std_logic;
SIGNAL ww_m_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_m_write : std_logic;
SIGNAL ww_m_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_m_waitrequest : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m_readdata[0]~input_o\ : std_logic;
SIGNAL \m_readdata[1]~input_o\ : std_logic;
SIGNAL \m_readdata[2]~input_o\ : std_logic;
SIGNAL \m_readdata[3]~input_o\ : std_logic;
SIGNAL \m_readdata[4]~input_o\ : std_logic;
SIGNAL \m_readdata[5]~input_o\ : std_logic;
SIGNAL \m_readdata[6]~input_o\ : std_logic;
SIGNAL \m_readdata[7]~input_o\ : std_logic;
SIGNAL \m_readdata[8]~input_o\ : std_logic;
SIGNAL \m_readdata[9]~input_o\ : std_logic;
SIGNAL \m_readdata[10]~input_o\ : std_logic;
SIGNAL \m_readdata[11]~input_o\ : std_logic;
SIGNAL \m_readdata[12]~input_o\ : std_logic;
SIGNAL \m_readdata[13]~input_o\ : std_logic;
SIGNAL \m_readdata[14]~input_o\ : std_logic;
SIGNAL \m_readdata[15]~input_o\ : std_logic;
SIGNAL \m_readdata[16]~input_o\ : std_logic;
SIGNAL \m_readdata[17]~input_o\ : std_logic;
SIGNAL \m_readdata[18]~input_o\ : std_logic;
SIGNAL \m_readdata[19]~input_o\ : std_logic;
SIGNAL \m_readdata[20]~input_o\ : std_logic;
SIGNAL \m_readdata[21]~input_o\ : std_logic;
SIGNAL \m_readdata[22]~input_o\ : std_logic;
SIGNAL \m_readdata[23]~input_o\ : std_logic;
SIGNAL \m_readdata[24]~input_o\ : std_logic;
SIGNAL \m_readdata[25]~input_o\ : std_logic;
SIGNAL \m_readdata[26]~input_o\ : std_logic;
SIGNAL \m_readdata[27]~input_o\ : std_logic;
SIGNAL \m_readdata[28]~input_o\ : std_logic;
SIGNAL \m_readdata[29]~input_o\ : std_logic;
SIGNAL \m_readdata[30]~input_o\ : std_logic;
SIGNAL \m_readdata[31]~input_o\ : std_logic;
SIGNAL \s_readdata[0]~output_o\ : std_logic;
SIGNAL \s_readdata[1]~output_o\ : std_logic;
SIGNAL \s_readdata[2]~output_o\ : std_logic;
SIGNAL \s_readdata[3]~output_o\ : std_logic;
SIGNAL \s_readdata[4]~output_o\ : std_logic;
SIGNAL \s_readdata[5]~output_o\ : std_logic;
SIGNAL \s_readdata[6]~output_o\ : std_logic;
SIGNAL \s_readdata[7]~output_o\ : std_logic;
SIGNAL \s_readdata[8]~output_o\ : std_logic;
SIGNAL \s_readdata[9]~output_o\ : std_logic;
SIGNAL \s_readdata[10]~output_o\ : std_logic;
SIGNAL \s_readdata[11]~output_o\ : std_logic;
SIGNAL \s_readdata[12]~output_o\ : std_logic;
SIGNAL \s_readdata[13]~output_o\ : std_logic;
SIGNAL \s_readdata[14]~output_o\ : std_logic;
SIGNAL \s_readdata[15]~output_o\ : std_logic;
SIGNAL \s_readdata[16]~output_o\ : std_logic;
SIGNAL \s_readdata[17]~output_o\ : std_logic;
SIGNAL \s_readdata[18]~output_o\ : std_logic;
SIGNAL \s_readdata[19]~output_o\ : std_logic;
SIGNAL \s_readdata[20]~output_o\ : std_logic;
SIGNAL \s_readdata[21]~output_o\ : std_logic;
SIGNAL \s_readdata[22]~output_o\ : std_logic;
SIGNAL \s_readdata[23]~output_o\ : std_logic;
SIGNAL \s_readdata[24]~output_o\ : std_logic;
SIGNAL \s_readdata[25]~output_o\ : std_logic;
SIGNAL \s_readdata[26]~output_o\ : std_logic;
SIGNAL \s_readdata[27]~output_o\ : std_logic;
SIGNAL \s_readdata[28]~output_o\ : std_logic;
SIGNAL \s_readdata[29]~output_o\ : std_logic;
SIGNAL \s_readdata[30]~output_o\ : std_logic;
SIGNAL \s_readdata[31]~output_o\ : std_logic;
SIGNAL \s_waitrequest~output_o\ : std_logic;
SIGNAL \m_addr[0]~output_o\ : std_logic;
SIGNAL \m_addr[1]~output_o\ : std_logic;
SIGNAL \m_addr[2]~output_o\ : std_logic;
SIGNAL \m_addr[3]~output_o\ : std_logic;
SIGNAL \m_addr[4]~output_o\ : std_logic;
SIGNAL \m_addr[5]~output_o\ : std_logic;
SIGNAL \m_addr[6]~output_o\ : std_logic;
SIGNAL \m_addr[7]~output_o\ : std_logic;
SIGNAL \m_addr[8]~output_o\ : std_logic;
SIGNAL \m_addr[9]~output_o\ : std_logic;
SIGNAL \m_addr[10]~output_o\ : std_logic;
SIGNAL \m_addr[11]~output_o\ : std_logic;
SIGNAL \m_addr[12]~output_o\ : std_logic;
SIGNAL \m_addr[13]~output_o\ : std_logic;
SIGNAL \m_addr[14]~output_o\ : std_logic;
SIGNAL \m_addr[15]~output_o\ : std_logic;
SIGNAL \m_addr[16]~output_o\ : std_logic;
SIGNAL \m_addr[17]~output_o\ : std_logic;
SIGNAL \m_addr[18]~output_o\ : std_logic;
SIGNAL \m_addr[19]~output_o\ : std_logic;
SIGNAL \m_addr[20]~output_o\ : std_logic;
SIGNAL \m_addr[21]~output_o\ : std_logic;
SIGNAL \m_addr[22]~output_o\ : std_logic;
SIGNAL \m_addr[23]~output_o\ : std_logic;
SIGNAL \m_addr[24]~output_o\ : std_logic;
SIGNAL \m_addr[25]~output_o\ : std_logic;
SIGNAL \m_addr[26]~output_o\ : std_logic;
SIGNAL \m_addr[27]~output_o\ : std_logic;
SIGNAL \m_addr[28]~output_o\ : std_logic;
SIGNAL \m_addr[29]~output_o\ : std_logic;
SIGNAL \m_addr[30]~output_o\ : std_logic;
SIGNAL \m_addr[31]~output_o\ : std_logic;
SIGNAL \m_read~output_o\ : std_logic;
SIGNAL \m_write~output_o\ : std_logic;
SIGNAL \m_writedata[0]~output_o\ : std_logic;
SIGNAL \m_writedata[1]~output_o\ : std_logic;
SIGNAL \m_writedata[2]~output_o\ : std_logic;
SIGNAL \m_writedata[3]~output_o\ : std_logic;
SIGNAL \m_writedata[4]~output_o\ : std_logic;
SIGNAL \m_writedata[5]~output_o\ : std_logic;
SIGNAL \m_writedata[6]~output_o\ : std_logic;
SIGNAL \m_writedata[7]~output_o\ : std_logic;
SIGNAL \m_writedata[8]~output_o\ : std_logic;
SIGNAL \m_writedata[9]~output_o\ : std_logic;
SIGNAL \m_writedata[10]~output_o\ : std_logic;
SIGNAL \m_writedata[11]~output_o\ : std_logic;
SIGNAL \m_writedata[12]~output_o\ : std_logic;
SIGNAL \m_writedata[13]~output_o\ : std_logic;
SIGNAL \m_writedata[14]~output_o\ : std_logic;
SIGNAL \m_writedata[15]~output_o\ : std_logic;
SIGNAL \m_writedata[16]~output_o\ : std_logic;
SIGNAL \m_writedata[17]~output_o\ : std_logic;
SIGNAL \m_writedata[18]~output_o\ : std_logic;
SIGNAL \m_writedata[19]~output_o\ : std_logic;
SIGNAL \m_writedata[20]~output_o\ : std_logic;
SIGNAL \m_writedata[21]~output_o\ : std_logic;
SIGNAL \m_writedata[22]~output_o\ : std_logic;
SIGNAL \m_writedata[23]~output_o\ : std_logic;
SIGNAL \m_writedata[24]~output_o\ : std_logic;
SIGNAL \m_writedata[25]~output_o\ : std_logic;
SIGNAL \m_writedata[26]~output_o\ : std_logic;
SIGNAL \m_writedata[27]~output_o\ : std_logic;
SIGNAL \m_writedata[28]~output_o\ : std_logic;
SIGNAL \m_writedata[29]~output_o\ : std_logic;
SIGNAL \m_writedata[30]~output_o\ : std_logic;
SIGNAL \m_writedata[31]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \s_read~input_o\ : std_logic;
SIGNAL \state.RST~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.RST~q\ : std_logic;
SIGNAL \s_write~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \m_waitrequest~input_o\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \state.WRITE_START~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state.DONE~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \s_waitrequest~reg0_q\ : std_logic;
SIGNAL \s_addr[0]~input_o\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state.READ_START~q\ : std_logic;
SIGNAL \state.READ_FROM_MEM~0_combout\ : std_logic;
SIGNAL \state.READ_FROM_MEM~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \m_addr[0]~0_combout\ : std_logic;
SIGNAL \m_addr[0]~reg0_q\ : std_logic;
SIGNAL \s_addr[1]~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \m_addr[1]~reg0_q\ : std_logic;
SIGNAL \s_addr[2]~input_o\ : std_logic;
SIGNAL \m_addr[2]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[2]~reg0_q\ : std_logic;
SIGNAL \s_addr[3]~input_o\ : std_logic;
SIGNAL \m_addr[3]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[3]~reg0_q\ : std_logic;
SIGNAL \s_addr[4]~input_o\ : std_logic;
SIGNAL \m_addr[4]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[4]~reg0_q\ : std_logic;
SIGNAL \s_addr[5]~input_o\ : std_logic;
SIGNAL \m_addr[5]~reg0_q\ : std_logic;
SIGNAL \s_addr[6]~input_o\ : std_logic;
SIGNAL \m_addr[6]~reg0_q\ : std_logic;
SIGNAL \s_addr[7]~input_o\ : std_logic;
SIGNAL \m_addr[7]~reg0_q\ : std_logic;
SIGNAL \s_addr[8]~input_o\ : std_logic;
SIGNAL \m_addr[8]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[8]~reg0_q\ : std_logic;
SIGNAL \s_addr[9]~input_o\ : std_logic;
SIGNAL \m_addr[9]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[9]~reg0_q\ : std_logic;
SIGNAL \s_addr[10]~input_o\ : std_logic;
SIGNAL \m_addr[10]~reg0_q\ : std_logic;
SIGNAL \s_addr[11]~input_o\ : std_logic;
SIGNAL \m_addr[11]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[11]~reg0_q\ : std_logic;
SIGNAL \s_addr[12]~input_o\ : std_logic;
SIGNAL \m_addr[12]~reg0_q\ : std_logic;
SIGNAL \s_addr[13]~input_o\ : std_logic;
SIGNAL \m_addr[13]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[13]~reg0_q\ : std_logic;
SIGNAL \s_addr[14]~input_o\ : std_logic;
SIGNAL \m_addr[14]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[14]~reg0_q\ : std_logic;
SIGNAL \s_addr[15]~input_o\ : std_logic;
SIGNAL \m_addr[15]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[15]~reg0_q\ : std_logic;
SIGNAL \s_addr[16]~input_o\ : std_logic;
SIGNAL \m_addr[16]~reg0_q\ : std_logic;
SIGNAL \s_addr[17]~input_o\ : std_logic;
SIGNAL \m_addr[17]~reg0_q\ : std_logic;
SIGNAL \s_addr[18]~input_o\ : std_logic;
SIGNAL \m_addr[18]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[18]~reg0_q\ : std_logic;
SIGNAL \s_addr[19]~input_o\ : std_logic;
SIGNAL \m_addr[19]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[19]~reg0_q\ : std_logic;
SIGNAL \s_addr[20]~input_o\ : std_logic;
SIGNAL \m_addr[20]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[20]~reg0_q\ : std_logic;
SIGNAL \s_addr[21]~input_o\ : std_logic;
SIGNAL \m_addr[21]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[21]~reg0_q\ : std_logic;
SIGNAL \s_addr[22]~input_o\ : std_logic;
SIGNAL \m_addr[22]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[22]~reg0_q\ : std_logic;
SIGNAL \s_addr[23]~input_o\ : std_logic;
SIGNAL \m_addr[23]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[23]~reg0_q\ : std_logic;
SIGNAL \s_addr[24]~input_o\ : std_logic;
SIGNAL \m_addr[24]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[24]~reg0_q\ : std_logic;
SIGNAL \s_addr[25]~input_o\ : std_logic;
SIGNAL \m_addr[25]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[25]~reg0_q\ : std_logic;
SIGNAL \s_addr[26]~input_o\ : std_logic;
SIGNAL \m_addr[26]~reg0_q\ : std_logic;
SIGNAL \s_addr[27]~input_o\ : std_logic;
SIGNAL \m_addr[27]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[27]~reg0_q\ : std_logic;
SIGNAL \s_addr[28]~input_o\ : std_logic;
SIGNAL \m_addr[28]~reg0_q\ : std_logic;
SIGNAL \s_addr[29]~input_o\ : std_logic;
SIGNAL \m_addr[29]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[29]~reg0_q\ : std_logic;
SIGNAL \s_addr[30]~input_o\ : std_logic;
SIGNAL \m_addr[30]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[30]~reg0_q\ : std_logic;
SIGNAL \s_addr[31]~input_o\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \m_addr[31]~reg0_q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \m_write~reg0_q\ : std_logic;
SIGNAL \s_writedata[0]~input_o\ : std_logic;
SIGNAL \m_writedata[0]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[0]~0_combout\ : std_logic;
SIGNAL \m_writedata[0]~reg0_q\ : std_logic;
SIGNAL \s_writedata[1]~input_o\ : std_logic;
SIGNAL \m_writedata[1]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[1]~reg0_q\ : std_logic;
SIGNAL \s_writedata[2]~input_o\ : std_logic;
SIGNAL \m_writedata[2]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[2]~reg0_q\ : std_logic;
SIGNAL \s_writedata[3]~input_o\ : std_logic;
SIGNAL \m_writedata[3]~reg0_q\ : std_logic;
SIGNAL \s_writedata[4]~input_o\ : std_logic;
SIGNAL \m_writedata[4]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[4]~reg0_q\ : std_logic;
SIGNAL \s_writedata[5]~input_o\ : std_logic;
SIGNAL \m_writedata[5]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[5]~reg0_q\ : std_logic;
SIGNAL \s_writedata[6]~input_o\ : std_logic;
SIGNAL \m_writedata[6]~reg0_q\ : std_logic;
SIGNAL \s_writedata[7]~input_o\ : std_logic;
SIGNAL \m_writedata[7]~reg0_q\ : std_logic;
SIGNAL \s_writedata[8]~input_o\ : std_logic;
SIGNAL \m_writedata[8]~reg0_q\ : std_logic;
SIGNAL \s_writedata[9]~input_o\ : std_logic;
SIGNAL \m_writedata[9]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[9]~reg0_q\ : std_logic;
SIGNAL \s_writedata[10]~input_o\ : std_logic;
SIGNAL \m_writedata[10]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[10]~reg0_q\ : std_logic;
SIGNAL \s_writedata[11]~input_o\ : std_logic;
SIGNAL \m_writedata[11]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[11]~reg0_q\ : std_logic;
SIGNAL \s_writedata[12]~input_o\ : std_logic;
SIGNAL \m_writedata[12]~reg0_q\ : std_logic;
SIGNAL \s_writedata[13]~input_o\ : std_logic;
SIGNAL \m_writedata[13]~reg0_q\ : std_logic;
SIGNAL \s_writedata[14]~input_o\ : std_logic;
SIGNAL \m_writedata[14]~reg0_q\ : std_logic;
SIGNAL \s_writedata[15]~input_o\ : std_logic;
SIGNAL \m_writedata[15]~reg0_q\ : std_logic;
SIGNAL \s_writedata[16]~input_o\ : std_logic;
SIGNAL \m_writedata[16]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[16]~reg0_q\ : std_logic;
SIGNAL \s_writedata[17]~input_o\ : std_logic;
SIGNAL \m_writedata[17]~reg0_q\ : std_logic;
SIGNAL \s_writedata[18]~input_o\ : std_logic;
SIGNAL \m_writedata[18]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[18]~reg0_q\ : std_logic;
SIGNAL \s_writedata[19]~input_o\ : std_logic;
SIGNAL \m_writedata[19]~reg0_q\ : std_logic;
SIGNAL \s_writedata[20]~input_o\ : std_logic;
SIGNAL \m_writedata[20]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[20]~reg0_q\ : std_logic;
SIGNAL \s_writedata[21]~input_o\ : std_logic;
SIGNAL \m_writedata[21]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[21]~reg0_q\ : std_logic;
SIGNAL \s_writedata[22]~input_o\ : std_logic;
SIGNAL \m_writedata[22]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[22]~reg0_q\ : std_logic;
SIGNAL \s_writedata[23]~input_o\ : std_logic;
SIGNAL \m_writedata[23]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[23]~reg0_q\ : std_logic;
SIGNAL \s_writedata[24]~input_o\ : std_logic;
SIGNAL \m_writedata[24]~reg0_q\ : std_logic;
SIGNAL \s_writedata[25]~input_o\ : std_logic;
SIGNAL \m_writedata[25]~reg0_q\ : std_logic;
SIGNAL \s_writedata[26]~input_o\ : std_logic;
SIGNAL \m_writedata[26]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[26]~reg0_q\ : std_logic;
SIGNAL \s_writedata[27]~input_o\ : std_logic;
SIGNAL \m_writedata[27]~reg0_q\ : std_logic;
SIGNAL \s_writedata[28]~input_o\ : std_logic;
SIGNAL \m_writedata[28]~reg0_q\ : std_logic;
SIGNAL \s_writedata[29]~input_o\ : std_logic;
SIGNAL \m_writedata[29]~reg0feeder_combout\ : std_logic;
SIGNAL \m_writedata[29]~reg0_q\ : std_logic;
SIGNAL \s_writedata[30]~input_o\ : std_logic;
SIGNAL \m_writedata[30]~reg0_q\ : std_logic;
SIGNAL \s_writedata[31]~input_o\ : std_logic;
SIGNAL \m_writedata[31]~reg0_q\ : std_logic;
SIGNAL out_count : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_s_addr <= s_addr;
ww_s_read <= s_read;
s_readdata <= ww_s_readdata;
ww_s_write <= s_write;
ww_s_writedata <= s_writedata;
s_waitrequest <= ww_s_waitrequest;
m_addr <= ww_m_addr;
m_read <= ww_m_read;
ww_m_readdata <= m_readdata;
m_write <= ww_m_write;
m_writedata <= ww_m_writedata;
ww_m_waitrequest <= m_waitrequest;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X15_Y67_N23
\s_readdata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[0]~output_o\);

-- Location: IOOBUF_X17_Y0_N16
\s_readdata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[1]~output_o\);

-- Location: IOOBUF_X17_Y67_N16
\s_readdata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[2]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\s_readdata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[3]~output_o\);

-- Location: IOOBUF_X8_Y67_N2
\s_readdata[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[4]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\s_readdata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[5]~output_o\);

-- Location: IOOBUF_X42_Y0_N2
\s_readdata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[6]~output_o\);

-- Location: IOOBUF_X63_Y67_N2
\s_readdata[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[7]~output_o\);

-- Location: IOOBUF_X17_Y67_N9
\s_readdata[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[8]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\s_readdata[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[9]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\s_readdata[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[10]~output_o\);

-- Location: IOOBUF_X29_Y67_N2
\s_readdata[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[11]~output_o\);

-- Location: IOOBUF_X8_Y67_N9
\s_readdata[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[12]~output_o\);

-- Location: IOOBUF_X58_Y67_N9
\s_readdata[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[13]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\s_readdata[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[14]~output_o\);

-- Location: IOOBUF_X22_Y67_N9
\s_readdata[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[15]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\s_readdata[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[16]~output_o\);

-- Location: IOOBUF_X15_Y0_N23
\s_readdata[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[17]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\s_readdata[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[18]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\s_readdata[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[19]~output_o\);

-- Location: IOOBUF_X44_Y0_N16
\s_readdata[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[20]~output_o\);

-- Location: IOOBUF_X54_Y67_N23
\s_readdata[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[21]~output_o\);

-- Location: IOOBUF_X58_Y67_N2
\s_readdata[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[22]~output_o\);

-- Location: IOOBUF_X19_Y67_N23
\s_readdata[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[23]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\s_readdata[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[24]~output_o\);

-- Location: IOOBUF_X13_Y67_N9
\s_readdata[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[25]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\s_readdata[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[26]~output_o\);

-- Location: IOOBUF_X33_Y0_N23
\s_readdata[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[27]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\s_readdata[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[28]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\s_readdata[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[29]~output_o\);

-- Location: IOOBUF_X22_Y67_N2
\s_readdata[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[30]~output_o\);

-- Location: IOOBUF_X10_Y67_N23
\s_readdata[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \s_readdata[31]~output_o\);

-- Location: IOOBUF_X81_Y26_N2
\s_waitrequest~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_waitrequest~reg0_q\,
	devoe => ww_devoe,
	o => \s_waitrequest~output_o\);

-- Location: IOOBUF_X81_Y6_N9
\m_addr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[0]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[0]~output_o\);

-- Location: IOOBUF_X70_Y67_N2
\m_addr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[1]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[1]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\m_addr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[2]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[2]~output_o\);

-- Location: IOOBUF_X81_Y3_N9
\m_addr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[3]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[3]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\m_addr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[4]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[4]~output_o\);

-- Location: IOOBUF_X61_Y0_N2
\m_addr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[5]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[5]~output_o\);

-- Location: IOOBUF_X68_Y67_N2
\m_addr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[6]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[6]~output_o\);

-- Location: IOOBUF_X81_Y12_N9
\m_addr[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[7]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[7]~output_o\);

-- Location: IOOBUF_X81_Y19_N9
\m_addr[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[8]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[8]~output_o\);

-- Location: IOOBUF_X70_Y0_N2
\m_addr[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[9]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[9]~output_o\);

-- Location: IOOBUF_X81_Y6_N2
\m_addr[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[10]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[10]~output_o\);

-- Location: IOOBUF_X81_Y64_N2
\m_addr[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[11]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[11]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\m_addr[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[12]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[12]~output_o\);

-- Location: IOOBUF_X63_Y0_N2
\m_addr[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[13]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[13]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\m_addr[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[14]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[14]~output_o\);

-- Location: IOOBUF_X81_Y61_N9
\m_addr[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[15]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[15]~output_o\);

-- Location: IOOBUF_X81_Y9_N9
\m_addr[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[16]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[16]~output_o\);

-- Location: IOOBUF_X68_Y0_N9
\m_addr[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[17]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[17]~output_o\);

-- Location: IOOBUF_X81_Y5_N2
\m_addr[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[18]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[18]~output_o\);

-- Location: IOOBUF_X81_Y65_N9
\m_addr[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[19]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[19]~output_o\);

-- Location: IOOBUF_X44_Y0_N2
\m_addr[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[20]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[20]~output_o\);

-- Location: IOOBUF_X81_Y10_N16
\m_addr[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[21]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[21]~output_o\);

-- Location: IOOBUF_X63_Y0_N9
\m_addr[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[22]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[22]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\m_addr[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[23]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[23]~output_o\);

-- Location: IOOBUF_X68_Y0_N2
\m_addr[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[24]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[24]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\m_addr[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[25]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[25]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\m_addr[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[26]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[26]~output_o\);

-- Location: IOOBUF_X81_Y17_N2
\m_addr[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[27]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[27]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\m_addr[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[28]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[28]~output_o\);

-- Location: IOOBUF_X81_Y4_N16
\m_addr[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[29]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[29]~output_o\);

-- Location: IOOBUF_X70_Y0_N9
\m_addr[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[30]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[30]~output_o\);

-- Location: IOOBUF_X81_Y17_N9
\m_addr[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_addr[31]~reg0_q\,
	devoe => ww_devoe,
	o => \m_addr[31]~output_o\);

-- Location: IOOBUF_X26_Y67_N2
\m_read~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \m_read~output_o\);

-- Location: IOOBUF_X81_Y52_N2
\m_write~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_write~reg0_q\,
	devoe => ww_devoe,
	o => \m_write~output_o\);

-- Location: IOOBUF_X81_Y41_N2
\m_writedata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[0]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[0]~output_o\);

-- Location: IOOBUF_X81_Y20_N9
\m_writedata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[1]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[1]~output_o\);

-- Location: IOOBUF_X81_Y2_N23
\m_writedata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[2]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[2]~output_o\);

-- Location: IOOBUF_X81_Y7_N9
\m_writedata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[3]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[3]~output_o\);

-- Location: IOOBUF_X81_Y50_N9
\m_writedata[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[4]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[4]~output_o\);

-- Location: IOOBUF_X81_Y39_N2
\m_writedata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[5]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[5]~output_o\);

-- Location: IOOBUF_X81_Y20_N2
\m_writedata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[6]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[6]~output_o\);

-- Location: IOOBUF_X70_Y67_N9
\m_writedata[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[7]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[7]~output_o\);

-- Location: IOOBUF_X81_Y62_N9
\m_writedata[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[8]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[8]~output_o\);

-- Location: IOOBUF_X81_Y47_N9
\m_writedata[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[9]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[9]~output_o\);

-- Location: IOOBUF_X81_Y58_N9
\m_writedata[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[10]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[10]~output_o\);

-- Location: IOOBUF_X81_Y19_N2
\m_writedata[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[11]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[11]~output_o\);

-- Location: IOOBUF_X81_Y56_N9
\m_writedata[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[12]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[12]~output_o\);

-- Location: IOOBUF_X81_Y9_N2
\m_writedata[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[13]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[13]~output_o\);

-- Location: IOOBUF_X81_Y47_N2
\m_writedata[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[14]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[14]~output_o\);

-- Location: IOOBUF_X70_Y67_N16
\m_writedata[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[15]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[15]~output_o\);

-- Location: IOOBUF_X81_Y21_N9
\m_writedata[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[16]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[16]~output_o\);

-- Location: IOOBUF_X81_Y59_N2
\m_writedata[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[17]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[17]~output_o\);

-- Location: IOOBUF_X81_Y14_N2
\m_writedata[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[18]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[18]~output_o\);

-- Location: IOOBUF_X81_Y42_N9
\m_writedata[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[19]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[19]~output_o\);

-- Location: IOOBUF_X81_Y23_N9
\m_writedata[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[20]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[20]~output_o\);

-- Location: IOOBUF_X81_Y62_N16
\m_writedata[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[21]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[21]~output_o\);

-- Location: IOOBUF_X81_Y4_N2
\m_writedata[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[22]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[22]~output_o\);

-- Location: IOOBUF_X81_Y11_N23
\m_writedata[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[23]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[23]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\m_writedata[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[24]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[24]~output_o\);

-- Location: IOOBUF_X81_Y8_N2
\m_writedata[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[25]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[25]~output_o\);

-- Location: IOOBUF_X81_Y52_N9
\m_writedata[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[26]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[26]~output_o\);

-- Location: IOOBUF_X81_Y62_N2
\m_writedata[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[27]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[27]~output_o\);

-- Location: IOOBUF_X81_Y11_N2
\m_writedata[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[28]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[28]~output_o\);

-- Location: IOOBUF_X81_Y14_N9
\m_writedata[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[29]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[29]~output_o\);

-- Location: IOOBUF_X81_Y65_N2
\m_writedata[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[30]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[30]~output_o\);

-- Location: IOOBUF_X81_Y46_N2
\m_writedata[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_writedata[31]~reg0_q\,
	devoe => ww_devoe,
	o => \m_writedata[31]~output_o\);

-- Location: IOIBUF_X38_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G29
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

-- Location: IOIBUF_X81_Y14_N15
\s_read~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_read,
	o => \s_read~input_o\);

-- Location: LCCOMB_X79_Y23_N4
\state.RST~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.RST~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state.RST~feeder_combout\);

-- Location: IOIBUF_X38_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G28
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

-- Location: FF_X79_Y23_N5
\state.RST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.RST~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RST~q\);

-- Location: IOIBUF_X81_Y64_N8
\s_write~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_write,
	o => \s_write~input_o\);

-- Location: LCCOMB_X79_Y23_N10
\Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ((\state.DONE~q\) # ((\Selector4~0_combout\ & !\s_write~input_o\))) # (!\state.RST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \state.RST~q\,
	datac => \s_write~input_o\,
	datad => \state.DONE~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X79_Y23_N11
\state.IDLE\ : dffeas
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
	q => \state.IDLE~q\);

-- Location: LCCOMB_X79_Y23_N30
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\s_read~input_o\ & \state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_read~input_o\,
	datad => \state.IDLE~q\,
	combout => \Selector4~0_combout\);

-- Location: IOIBUF_X81_Y65_N15
\m_waitrequest~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_waitrequest,
	o => \m_waitrequest~input_o\);

-- Location: LCCOMB_X79_Y23_N20
\Selector4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\ & ((\s_write~input_o\) # ((\state.WRITE_START~q\ & \m_waitrequest~input_o\)))) # (!\Selector4~0_combout\ & (((\state.WRITE_START~q\ & \m_waitrequest~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \s_write~input_o\,
	datac => \state.WRITE_START~q\,
	datad => \m_waitrequest~input_o\,
	combout => \Selector4~1_combout\);

-- Location: FF_X79_Y23_N21
\state.WRITE_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WRITE_START~q\);

-- Location: LCCOMB_X79_Y23_N12
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.WRITE_START~q\ & !\m_waitrequest~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_START~q\,
	datad => \m_waitrequest~input_o\,
	combout => \Selector5~0_combout\);

-- Location: FF_X79_Y23_N13
\state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DONE~q\);

-- Location: LCCOMB_X79_Y23_N16
\Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.IDLE~q\) # ((!\state.DONE~q\ & \s_waitrequest~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DONE~q\,
	datac => \s_waitrequest~reg0_q\,
	datad => \state.IDLE~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X79_Y23_N17
\s_waitrequest~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_waitrequest~reg0_q\);

-- Location: IOIBUF_X81_Y58_N1
\s_addr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(0),
	o => \s_addr[0]~input_o\);

-- Location: LCCOMB_X79_Y23_N26
\state~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~11_combout\ = (\s_read~input_o\ & \state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_read~input_o\,
	datad => \state.IDLE~q\,
	combout => \state~11_combout\);

-- Location: FF_X79_Y23_N27
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

-- Location: LCCOMB_X79_Y23_N22
\state.READ_FROM_MEM~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.READ_FROM_MEM~0_combout\ = (\state.READ_START~q\) # (\state.READ_FROM_MEM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_START~q\,
	datac => \state.READ_FROM_MEM~q\,
	combout => \state.READ_FROM_MEM~0_combout\);

-- Location: FF_X79_Y23_N23
\state.READ_FROM_MEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.READ_FROM_MEM~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.READ_FROM_MEM~q\);

-- Location: LCCOMB_X79_Y23_N18
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.READ_FROM_MEM~q\ & (\m_waitrequest~input_o\ $ (((!out_count(0)))))) # (!\state.READ_FROM_MEM~q\ & (((\state.RST~q\ & out_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_waitrequest~input_o\,
	datab => \state.RST~q\,
	datac => out_count(0),
	datad => \state.READ_FROM_MEM~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X79_Y23_N19
\out_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_count(0));

-- Location: LCCOMB_X78_Y23_N28
\Selector13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.WRITE_START~q\ & (\s_addr[0]~input_o\)) # (!\state.WRITE_START~q\ & ((out_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_addr[0]~input_o\,
	datac => \state.WRITE_START~q\,
	datad => out_count(0),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X79_Y23_N24
\m_addr[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[0]~0_combout\ = (!\reset~input_o\ & ((\state.READ_FROM_MEM~q\) # (\state.WRITE_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \state.READ_FROM_MEM~q\,
	datad => \state.WRITE_START~q\,
	combout => \m_addr[0]~0_combout\);

-- Location: FF_X78_Y23_N29
\m_addr[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[0]~reg0_q\);

-- Location: IOIBUF_X81_Y3_N1
\s_addr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(1),
	o => \s_addr[1]~input_o\);

-- Location: LCCOMB_X79_Y23_N28
\Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.READ_FROM_MEM~q\ & (\m_waitrequest~input_o\)) # (!\state.READ_FROM_MEM~q\ & ((\state.RST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_waitrequest~input_o\,
	datac => \state.RST~q\,
	datad => \state.READ_FROM_MEM~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X79_Y23_N2
\Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\ & (((out_count(1))))) # (!\Selector0~0_combout\ & (\state.READ_FROM_MEM~q\ & (out_count(0) $ (out_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => out_count(0),
	datab => \Selector0~0_combout\,
	datac => out_count(1),
	datad => \state.READ_FROM_MEM~q\,
	combout => \Selector0~1_combout\);

-- Location: FF_X79_Y23_N3
\out_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_count(1));

-- Location: LCCOMB_X78_Y23_N30
\Selector12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.WRITE_START~q\ & (\s_addr[1]~input_o\)) # (!\state.WRITE_START~q\ & ((out_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[1]~input_o\,
	datac => \state.WRITE_START~q\,
	datad => out_count(1),
	combout => \Selector12~0_combout\);

-- Location: FF_X78_Y23_N31
\m_addr[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[1]~reg0_q\);

-- Location: IOIBUF_X65_Y0_N15
\s_addr[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(2),
	o => \s_addr[2]~input_o\);

-- Location: LCCOMB_X75_Y23_N8
\m_addr[2]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[2]~reg0feeder_combout\ = \s_addr[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[2]~input_o\,
	combout => \m_addr[2]~reg0feeder_combout\);

-- Location: FF_X75_Y23_N9
\m_addr[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[2]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[2]~reg0_q\);

-- Location: IOIBUF_X81_Y46_N15
\s_addr[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(3),
	o => \s_addr[3]~input_o\);

-- Location: LCCOMB_X78_Y23_N12
\m_addr[3]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[3]~reg0feeder_combout\ = \s_addr[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[3]~input_o\,
	combout => \m_addr[3]~reg0feeder_combout\);

-- Location: FF_X78_Y23_N13
\m_addr[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[3]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[3]~reg0_q\);

-- Location: IOIBUF_X49_Y0_N15
\s_addr[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(4),
	o => \s_addr[4]~input_o\);

-- Location: LCCOMB_X75_Y23_N26
\m_addr[4]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[4]~reg0feeder_combout\ = \s_addr[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[4]~input_o\,
	combout => \m_addr[4]~reg0feeder_combout\);

-- Location: FF_X75_Y23_N27
\m_addr[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[4]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[4]~reg0_q\);

-- Location: IOIBUF_X70_Y0_N15
\s_addr[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(5),
	o => \s_addr[5]~input_o\);

-- Location: FF_X75_Y23_N21
\m_addr[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[5]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[5]~reg0_q\);

-- Location: IOIBUF_X81_Y34_N8
\s_addr[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(6),
	o => \s_addr[6]~input_o\);

-- Location: FF_X77_Y23_N29
\m_addr[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[6]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[6]~reg0_q\);

-- Location: IOIBUF_X81_Y34_N1
\s_addr[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(7),
	o => \s_addr[7]~input_o\);

-- Location: FF_X77_Y23_N19
\m_addr[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[7]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[7]~reg0_q\);

-- Location: IOIBUF_X81_Y64_N15
\s_addr[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(8),
	o => \s_addr[8]~input_o\);

-- Location: LCCOMB_X78_Y23_N10
\m_addr[8]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[8]~reg0feeder_combout\ = \s_addr[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[8]~input_o\,
	combout => \m_addr[8]~reg0feeder_combout\);

-- Location: FF_X78_Y23_N11
\m_addr[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[8]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[8]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N1
\s_addr[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(9),
	o => \s_addr[9]~input_o\);

-- Location: LCCOMB_X75_Y23_N18
\m_addr[9]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[9]~reg0feeder_combout\ = \s_addr[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[9]~input_o\,
	combout => \m_addr[9]~reg0feeder_combout\);

-- Location: FF_X75_Y23_N19
\m_addr[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[9]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[9]~reg0_q\);

-- Location: IOIBUF_X81_Y6_N15
\s_addr[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(10),
	o => \s_addr[10]~input_o\);

-- Location: FF_X78_Y23_N21
\m_addr[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[10]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[10]~reg0_q\);

-- Location: IOIBUF_X81_Y4_N8
\s_addr[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(11),
	o => \s_addr[11]~input_o\);

-- Location: LCCOMB_X78_Y23_N18
\m_addr[11]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[11]~reg0feeder_combout\ = \s_addr[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[11]~input_o\,
	combout => \m_addr[11]~reg0feeder_combout\);

-- Location: FF_X78_Y23_N19
\m_addr[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[11]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[11]~reg0_q\);

-- Location: IOIBUF_X52_Y0_N15
\s_addr[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(12),
	o => \s_addr[12]~input_o\);

-- Location: FF_X75_Y23_N13
\m_addr[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[12]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[12]~reg0_q\);

-- Location: IOIBUF_X49_Y0_N22
\s_addr[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(13),
	o => \s_addr[13]~input_o\);

-- Location: LCCOMB_X75_Y23_N14
\m_addr[13]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[13]~reg0feeder_combout\ = \s_addr[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[13]~input_o\,
	combout => \m_addr[13]~reg0feeder_combout\);

-- Location: FF_X75_Y23_N15
\m_addr[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[13]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[13]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N22
\s_addr[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(14),
	o => \s_addr[14]~input_o\);

-- Location: LCCOMB_X75_Y23_N28
\m_addr[14]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[14]~reg0feeder_combout\ = \s_addr[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[14]~input_o\,
	combout => \m_addr[14]~reg0feeder_combout\);

-- Location: FF_X75_Y23_N29
\m_addr[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[14]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[14]~reg0_q\);

-- Location: IOIBUF_X81_Y16_N8
\s_addr[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(15),
	o => \s_addr[15]~input_o\);

-- Location: LCCOMB_X77_Y23_N16
\m_addr[15]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[15]~reg0feeder_combout\ = \s_addr[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[15]~input_o\,
	combout => \m_addr[15]~reg0feeder_combout\);

-- Location: FF_X77_Y23_N17
\m_addr[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[15]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[15]~reg0_q\);

-- Location: IOIBUF_X81_Y4_N22
\s_addr[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(16),
	o => \s_addr[16]~input_o\);

-- Location: FF_X78_Y23_N17
\m_addr[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[16]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[16]~reg0_q\);

-- Location: IOIBUF_X68_Y0_N15
\s_addr[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(17),
	o => \s_addr[17]~input_o\);

-- Location: FF_X75_Y23_N23
\m_addr[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[17]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[17]~reg0_q\);

-- Location: IOIBUF_X81_Y2_N8
\s_addr[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(18),
	o => \s_addr[18]~input_o\);

-- Location: LCCOMB_X77_Y23_N14
\m_addr[18]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[18]~reg0feeder_combout\ = \s_addr[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[18]~input_o\,
	combout => \m_addr[18]~reg0feeder_combout\);

-- Location: FF_X77_Y23_N15
\m_addr[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[18]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[18]~reg0_q\);

-- Location: IOIBUF_X81_Y50_N1
\s_addr[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(19),
	o => \s_addr[19]~input_o\);

-- Location: LCCOMB_X78_Y23_N14
\m_addr[19]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[19]~reg0feeder_combout\ = \s_addr[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[19]~input_o\,
	combout => \m_addr[19]~reg0feeder_combout\);

-- Location: FF_X78_Y23_N15
\m_addr[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[19]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[19]~reg0_q\);

-- Location: IOIBUF_X81_Y25_N1
\s_addr[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(20),
	o => \s_addr[20]~input_o\);

-- Location: LCCOMB_X77_Y23_N12
\m_addr[20]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[20]~reg0feeder_combout\ = \s_addr[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[20]~input_o\,
	combout => \m_addr[20]~reg0feeder_combout\);

-- Location: FF_X77_Y23_N13
\m_addr[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[20]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[20]~reg0_q\);

-- Location: IOIBUF_X81_Y43_N1
\s_addr[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(21),
	o => \s_addr[21]~input_o\);

-- Location: LCCOMB_X78_Y23_N8
\m_addr[21]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[21]~reg0feeder_combout\ = \s_addr[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[21]~input_o\,
	combout => \m_addr[21]~reg0feeder_combout\);

-- Location: FF_X78_Y23_N9
\m_addr[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[21]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[21]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N8
\s_addr[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(22),
	o => \s_addr[22]~input_o\);

-- Location: LCCOMB_X75_Y23_N0
\m_addr[22]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[22]~reg0feeder_combout\ = \s_addr[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[22]~input_o\,
	combout => \m_addr[22]~reg0feeder_combout\);

-- Location: FF_X75_Y23_N1
\m_addr[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[22]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[22]~reg0_q\);

-- Location: IOIBUF_X81_Y53_N8
\s_addr[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(23),
	o => \s_addr[23]~input_o\);

-- Location: LCCOMB_X77_Y23_N10
\m_addr[23]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[23]~reg0feeder_combout\ = \s_addr[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[23]~input_o\,
	combout => \m_addr[23]~reg0feeder_combout\);

-- Location: FF_X77_Y23_N11
\m_addr[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[23]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[23]~reg0_q\);

-- Location: IOIBUF_X56_Y0_N15
\s_addr[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(24),
	o => \s_addr[24]~input_o\);

-- Location: LCCOMB_X75_Y23_N30
\m_addr[24]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[24]~reg0feeder_combout\ = \s_addr[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[24]~input_o\,
	combout => \m_addr[24]~reg0feeder_combout\);

-- Location: FF_X75_Y23_N31
\m_addr[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[24]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[24]~reg0_q\);

-- Location: IOIBUF_X81_Y64_N22
\s_addr[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(25),
	o => \s_addr[25]~input_o\);

-- Location: LCCOMB_X78_Y23_N22
\m_addr[25]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[25]~reg0feeder_combout\ = \s_addr[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[25]~input_o\,
	combout => \m_addr[25]~reg0feeder_combout\);

-- Location: FF_X78_Y23_N23
\m_addr[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[25]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[25]~reg0_q\);

-- Location: IOIBUF_X58_Y0_N15
\s_addr[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(26),
	o => \s_addr[26]~input_o\);

-- Location: FF_X75_Y23_N25
\m_addr[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[26]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[26]~reg0_q\);

-- Location: IOIBUF_X49_Y0_N1
\s_addr[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(27),
	o => \s_addr[27]~input_o\);

-- Location: LCCOMB_X77_Y23_N20
\m_addr[27]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[27]~reg0feeder_combout\ = \s_addr[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[27]~input_o\,
	combout => \m_addr[27]~reg0feeder_combout\);

-- Location: FF_X77_Y23_N21
\m_addr[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[27]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[27]~reg0_q\);

-- Location: IOIBUF_X58_Y0_N22
\s_addr[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(28),
	o => \s_addr[28]~input_o\);

-- Location: FF_X75_Y23_N11
\m_addr[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[28]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[28]~reg0_q\);

-- Location: IOIBUF_X54_Y0_N22
\s_addr[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(29),
	o => \s_addr[29]~input_o\);

-- Location: LCCOMB_X78_Y23_N0
\m_addr[29]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[29]~reg0feeder_combout\ = \s_addr[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[29]~input_o\,
	combout => \m_addr[29]~reg0feeder_combout\);

-- Location: FF_X78_Y23_N1
\m_addr[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[29]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[29]~reg0_q\);

-- Location: IOIBUF_X54_Y0_N1
\s_addr[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(30),
	o => \s_addr[30]~input_o\);

-- Location: LCCOMB_X75_Y23_N4
\m_addr[30]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[30]~reg0feeder_combout\ = \s_addr[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[30]~input_o\,
	combout => \m_addr[30]~reg0feeder_combout\);

-- Location: FF_X75_Y23_N5
\m_addr[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[30]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[30]~reg0_q\);

-- Location: IOIBUF_X81_Y63_N1
\s_addr[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(31),
	o => \s_addr[31]~input_o\);

-- Location: LCCOMB_X79_Y23_N6
\Selector11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.WRITE_START~q\ & (((\s_addr[31]~input_o\)))) # (!\state.WRITE_START~q\ & (!\state.READ_FROM_MEM~q\ & (\m_addr[31]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_START~q\,
	datab => \state.READ_FROM_MEM~q\,
	datac => \m_addr[31]~reg0_q\,
	datad => \s_addr[31]~input_o\,
	combout => \Selector11~0_combout\);

-- Location: FF_X79_Y23_N7
\m_addr[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[31]~reg0_q\);

-- Location: LCCOMB_X79_Y23_N0
\Selector15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.WRITE_START~q\) # ((\m_write~reg0_q\ & !\state.DONE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_START~q\,
	datac => \m_write~reg0_q\,
	datad => \state.DONE~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X79_Y23_N1
\m_write~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_write~reg0_q\);

-- Location: IOIBUF_X81_Y52_N15
\s_writedata[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(0),
	o => \s_writedata[0]~input_o\);

-- Location: LCCOMB_X80_Y23_N24
\m_writedata[0]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[0]~reg0feeder_combout\ = \s_writedata[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[0]~input_o\,
	combout => \m_writedata[0]~reg0feeder_combout\);

-- Location: LCCOMB_X79_Y23_N8
\m_writedata[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[0]~0_combout\ = (!\reset~input_o\ & \state.WRITE_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \state.WRITE_START~q\,
	combout => \m_writedata[0]~0_combout\);

-- Location: FF_X80_Y23_N25
\m_writedata[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[0]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[0]~reg0_q\);

-- Location: IOIBUF_X81_Y2_N1
\s_writedata[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(1),
	o => \s_writedata[1]~input_o\);

-- Location: LCCOMB_X80_Y23_N14
\m_writedata[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[1]~reg0feeder_combout\ = \s_writedata[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[1]~input_o\,
	combout => \m_writedata[1]~reg0feeder_combout\);

-- Location: FF_X80_Y23_N15
\m_writedata[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[1]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[1]~reg0_q\);

-- Location: IOIBUF_X81_Y61_N1
\s_writedata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(2),
	o => \s_writedata[2]~input_o\);

-- Location: LCCOMB_X77_Y23_N30
\m_writedata[2]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[2]~reg0feeder_combout\ = \s_writedata[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[2]~input_o\,
	combout => \m_writedata[2]~reg0feeder_combout\);

-- Location: FF_X77_Y23_N31
\m_writedata[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[2]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[2]~reg0_q\);

-- Location: IOIBUF_X81_Y7_N15
\s_writedata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(3),
	o => \s_writedata[3]~input_o\);

-- Location: FF_X80_Y23_N5
\m_writedata[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[3]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[3]~reg0_q\);

-- Location: IOIBUF_X81_Y61_N15
\s_writedata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(4),
	o => \s_writedata[4]~input_o\);

-- Location: LCCOMB_X80_Y23_N10
\m_writedata[4]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[4]~reg0feeder_combout\ = \s_writedata[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[4]~input_o\,
	combout => \m_writedata[4]~reg0feeder_combout\);

-- Location: FF_X80_Y23_N11
\m_writedata[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[4]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[4]~reg0_q\);

-- Location: IOIBUF_X81_Y10_N8
\s_writedata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(5),
	o => \s_writedata[5]~input_o\);

-- Location: LCCOMB_X80_Y23_N16
\m_writedata[5]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[5]~reg0feeder_combout\ = \s_writedata[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[5]~input_o\,
	combout => \m_writedata[5]~reg0feeder_combout\);

-- Location: FF_X80_Y23_N17
\m_writedata[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[5]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[5]~reg0_q\);

-- Location: IOIBUF_X81_Y65_N22
\s_writedata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(6),
	o => \s_writedata[6]~input_o\);

-- Location: FF_X78_Y23_N7
\m_writedata[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[6]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[6]~reg0_q\);

-- Location: IOIBUF_X81_Y56_N1
\s_writedata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(7),
	o => \s_writedata[7]~input_o\);

-- Location: FF_X77_Y23_N1
\m_writedata[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[7]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[7]~reg0_q\);

-- Location: IOIBUF_X81_Y2_N15
\s_writedata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(8),
	o => \s_writedata[8]~input_o\);

-- Location: FF_X80_Y23_N7
\m_writedata[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[8]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[8]~reg0_q\);

-- Location: IOIBUF_X81_Y49_N1
\s_writedata[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(9),
	o => \s_writedata[9]~input_o\);

-- Location: LCCOMB_X80_Y27_N0
\m_writedata[9]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[9]~reg0feeder_combout\ = \s_writedata[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[9]~input_o\,
	combout => \m_writedata[9]~reg0feeder_combout\);

-- Location: FF_X80_Y27_N1
\m_writedata[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[9]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[9]~reg0_q\);

-- Location: IOIBUF_X81_Y25_N8
\s_writedata[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(10),
	o => \s_writedata[10]~input_o\);

-- Location: LCCOMB_X78_Y23_N24
\m_writedata[10]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[10]~reg0feeder_combout\ = \s_writedata[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[10]~input_o\,
	combout => \m_writedata[10]~reg0feeder_combout\);

-- Location: FF_X78_Y23_N25
\m_writedata[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[10]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[10]~reg0_q\);

-- Location: IOIBUF_X81_Y25_N15
\s_writedata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(11),
	o => \s_writedata[11]~input_o\);

-- Location: LCCOMB_X80_Y23_N0
\m_writedata[11]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[11]~reg0feeder_combout\ = \s_writedata[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[11]~input_o\,
	combout => \m_writedata[11]~reg0feeder_combout\);

-- Location: FF_X80_Y23_N1
\m_writedata[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[11]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[11]~reg0_q\);

-- Location: IOIBUF_X81_Y8_N8
\s_writedata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(12),
	o => \s_writedata[12]~input_o\);

-- Location: FF_X80_Y23_N23
\m_writedata[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[12]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[12]~reg0_q\);

-- Location: IOIBUF_X81_Y7_N1
\s_writedata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(13),
	o => \s_writedata[13]~input_o\);

-- Location: FF_X80_Y23_N29
\m_writedata[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[13]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[13]~reg0_q\);

-- Location: IOIBUF_X81_Y49_N15
\s_writedata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(14),
	o => \s_writedata[14]~input_o\);

-- Location: FF_X80_Y27_N7
\m_writedata[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[14]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[14]~reg0_q\);

-- Location: IOIBUF_X81_Y12_N1
\s_writedata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(15),
	o => \s_writedata[15]~input_o\);

-- Location: FF_X77_Y23_N23
\m_writedata[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[15]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[15]~reg0_q\);

-- Location: IOIBUF_X81_Y55_N1
\s_writedata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(16),
	o => \s_writedata[16]~input_o\);

-- Location: LCCOMB_X80_Y23_N18
\m_writedata[16]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[16]~reg0feeder_combout\ = \s_writedata[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[16]~input_o\,
	combout => \m_writedata[16]~reg0feeder_combout\);

-- Location: FF_X80_Y23_N19
\m_writedata[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[16]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[16]~reg0_q\);

-- Location: IOIBUF_X81_Y49_N8
\s_writedata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(17),
	o => \s_writedata[17]~input_o\);

-- Location: FF_X80_Y27_N13
\m_writedata[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[17]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[17]~reg0_q\);

-- Location: IOIBUF_X81_Y44_N8
\s_writedata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(18),
	o => \s_writedata[18]~input_o\);

-- Location: LCCOMB_X77_Y23_N8
\m_writedata[18]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[18]~reg0feeder_combout\ = \s_writedata[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[18]~input_o\,
	combout => \m_writedata[18]~reg0feeder_combout\);

-- Location: FF_X77_Y23_N9
\m_writedata[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[18]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[18]~reg0_q\);

-- Location: IOIBUF_X81_Y42_N1
\s_writedata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(19),
	o => \s_writedata[19]~input_o\);

-- Location: FF_X78_Y23_N27
\m_writedata[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[19]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[19]~reg0_q\);

-- Location: IOIBUF_X81_Y21_N1
\s_writedata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(20),
	o => \s_writedata[20]~input_o\);

-- Location: LCCOMB_X80_Y23_N20
\m_writedata[20]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[20]~reg0feeder_combout\ = \s_writedata[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[20]~input_o\,
	combout => \m_writedata[20]~reg0feeder_combout\);

-- Location: FF_X80_Y23_N21
\m_writedata[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[20]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[20]~reg0_q\);

-- Location: IOIBUF_X81_Y53_N1
\s_writedata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(21),
	o => \s_writedata[21]~input_o\);

-- Location: LCCOMB_X77_Y23_N26
\m_writedata[21]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[21]~reg0feeder_combout\ = \s_writedata[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[21]~input_o\,
	combout => \m_writedata[21]~reg0feeder_combout\);

-- Location: FF_X77_Y23_N27
\m_writedata[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[21]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[21]~reg0_q\);

-- Location: IOIBUF_X81_Y46_N8
\s_writedata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(22),
	o => \s_writedata[22]~input_o\);

-- Location: LCCOMB_X78_Y23_N4
\m_writedata[22]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[22]~reg0feeder_combout\ = \s_writedata[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[22]~input_o\,
	combout => \m_writedata[22]~reg0feeder_combout\);

-- Location: FF_X78_Y23_N5
\m_writedata[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[22]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[22]~reg0_q\);

-- Location: IOIBUF_X81_Y26_N8
\s_writedata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(23),
	o => \s_writedata[23]~input_o\);

-- Location: LCCOMB_X80_Y23_N30
\m_writedata[23]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[23]~reg0feeder_combout\ = \s_writedata[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[23]~input_o\,
	combout => \m_writedata[23]~reg0feeder_combout\);

-- Location: FF_X80_Y23_N31
\m_writedata[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[23]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[23]~reg0_q\);

-- Location: IOIBUF_X81_Y55_N8
\s_writedata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(24),
	o => \s_writedata[24]~input_o\);

-- Location: FF_X77_Y23_N25
\m_writedata[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[24]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[24]~reg0_q\);

-- Location: IOIBUF_X81_Y59_N15
\s_writedata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(25),
	o => \s_writedata[25]~input_o\);

-- Location: FF_X80_Y23_N13
\m_writedata[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[25]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[25]~reg0_q\);

-- Location: IOIBUF_X81_Y59_N8
\s_writedata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(26),
	o => \s_writedata[26]~input_o\);

-- Location: LCCOMB_X77_Y23_N6
\m_writedata[26]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[26]~reg0feeder_combout\ = \s_writedata[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[26]~input_o\,
	combout => \m_writedata[26]~reg0feeder_combout\);

-- Location: FF_X77_Y23_N7
\m_writedata[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[26]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[26]~reg0_q\);

-- Location: IOIBUF_X81_Y10_N1
\s_writedata[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(27),
	o => \s_writedata[27]~input_o\);

-- Location: FF_X80_Y23_N27
\m_writedata[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[27]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[27]~reg0_q\);

-- Location: IOIBUF_X81_Y39_N8
\s_writedata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(28),
	o => \s_writedata[28]~input_o\);

-- Location: FF_X80_Y23_N9
\m_writedata[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[28]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[28]~reg0_q\);

-- Location: IOIBUF_X81_Y16_N1
\s_writedata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(29),
	o => \s_writedata[29]~input_o\);

-- Location: LCCOMB_X77_Y23_N4
\m_writedata[29]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_writedata[29]~reg0feeder_combout\ = \s_writedata[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_writedata[29]~input_o\,
	combout => \m_writedata[29]~reg0feeder_combout\);

-- Location: FF_X77_Y23_N5
\m_writedata[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_writedata[29]~reg0feeder_combout\,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[29]~reg0_q\);

-- Location: IOIBUF_X81_Y44_N1
\s_writedata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(30),
	o => \s_writedata[30]~input_o\);

-- Location: FF_X80_Y23_N3
\m_writedata[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[30]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[30]~reg0_q\);

-- Location: IOIBUF_X70_Y67_N22
\s_writedata[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(31),
	o => \s_writedata[31]~input_o\);

-- Location: FF_X78_Y23_N3
\m_writedata[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_writedata[31]~input_o\,
	sload => VCC,
	ena => \m_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_writedata[31]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N8
\m_readdata[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(0),
	o => \m_readdata[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\m_readdata[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(1),
	o => \m_readdata[1]~input_o\);

-- Location: IOIBUF_X44_Y67_N8
\m_readdata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(2),
	o => \m_readdata[2]~input_o\);

-- Location: IOIBUF_X15_Y67_N15
\m_readdata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(3),
	o => \m_readdata[3]~input_o\);

-- Location: IOIBUF_X56_Y67_N8
\m_readdata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(4),
	o => \m_readdata[4]~input_o\);

-- Location: IOIBUF_X33_Y67_N8
\m_readdata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(5),
	o => \m_readdata[5]~input_o\);

-- Location: IOIBUF_X65_Y67_N15
\m_readdata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(6),
	o => \m_readdata[6]~input_o\);

-- Location: IOIBUF_X26_Y67_N15
\m_readdata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(7),
	o => \m_readdata[7]~input_o\);

-- Location: IOIBUF_X8_Y0_N22
\m_readdata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(8),
	o => \m_readdata[8]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\m_readdata[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(9),
	o => \m_readdata[9]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\m_readdata[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(10),
	o => \m_readdata[10]~input_o\);

-- Location: IOIBUF_X15_Y67_N1
\m_readdata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(11),
	o => \m_readdata[11]~input_o\);

-- Location: IOIBUF_X19_Y67_N8
\m_readdata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(12),
	o => \m_readdata[12]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\m_readdata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(13),
	o => \m_readdata[13]~input_o\);

-- Location: IOIBUF_X17_Y67_N1
\m_readdata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(14),
	o => \m_readdata[14]~input_o\);

-- Location: IOIBUF_X6_Y67_N22
\m_readdata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(15),
	o => \m_readdata[15]~input_o\);

-- Location: IOIBUF_X42_Y67_N22
\m_readdata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(16),
	o => \m_readdata[16]~input_o\);

-- Location: IOIBUF_X42_Y67_N8
\m_readdata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(17),
	o => \m_readdata[17]~input_o\);

-- Location: IOIBUF_X31_Y0_N22
\m_readdata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(18),
	o => \m_readdata[18]~input_o\);

-- Location: IOIBUF_X44_Y0_N22
\m_readdata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(19),
	o => \m_readdata[19]~input_o\);

-- Location: IOIBUF_X63_Y67_N15
\m_readdata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(20),
	o => \m_readdata[20]~input_o\);

-- Location: IOIBUF_X10_Y0_N1
\m_readdata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(21),
	o => \m_readdata[21]~input_o\);

-- Location: IOIBUF_X65_Y67_N1
\m_readdata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(22),
	o => \m_readdata[22]~input_o\);

-- Location: IOIBUF_X13_Y67_N1
\m_readdata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(23),
	o => \m_readdata[23]~input_o\);

-- Location: IOIBUF_X6_Y0_N15
\m_readdata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(24),
	o => \m_readdata[24]~input_o\);

-- Location: IOIBUF_X17_Y0_N8
\m_readdata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(25),
	o => \m_readdata[25]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\m_readdata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(26),
	o => \m_readdata[26]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\m_readdata[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(27),
	o => \m_readdata[27]~input_o\);

-- Location: IOIBUF_X22_Y0_N15
\m_readdata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(28),
	o => \m_readdata[28]~input_o\);

-- Location: IOIBUF_X24_Y67_N1
\m_readdata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(29),
	o => \m_readdata[29]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\m_readdata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(30),
	o => \m_readdata[30]~input_o\);

-- Location: IOIBUF_X56_Y67_N1
\m_readdata[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(31),
	o => \m_readdata[31]~input_o\);

ww_s_readdata(0) <= \s_readdata[0]~output_o\;

ww_s_readdata(1) <= \s_readdata[1]~output_o\;

ww_s_readdata(2) <= \s_readdata[2]~output_o\;

ww_s_readdata(3) <= \s_readdata[3]~output_o\;

ww_s_readdata(4) <= \s_readdata[4]~output_o\;

ww_s_readdata(5) <= \s_readdata[5]~output_o\;

ww_s_readdata(6) <= \s_readdata[6]~output_o\;

ww_s_readdata(7) <= \s_readdata[7]~output_o\;

ww_s_readdata(8) <= \s_readdata[8]~output_o\;

ww_s_readdata(9) <= \s_readdata[9]~output_o\;

ww_s_readdata(10) <= \s_readdata[10]~output_o\;

ww_s_readdata(11) <= \s_readdata[11]~output_o\;

ww_s_readdata(12) <= \s_readdata[12]~output_o\;

ww_s_readdata(13) <= \s_readdata[13]~output_o\;

ww_s_readdata(14) <= \s_readdata[14]~output_o\;

ww_s_readdata(15) <= \s_readdata[15]~output_o\;

ww_s_readdata(16) <= \s_readdata[16]~output_o\;

ww_s_readdata(17) <= \s_readdata[17]~output_o\;

ww_s_readdata(18) <= \s_readdata[18]~output_o\;

ww_s_readdata(19) <= \s_readdata[19]~output_o\;

ww_s_readdata(20) <= \s_readdata[20]~output_o\;

ww_s_readdata(21) <= \s_readdata[21]~output_o\;

ww_s_readdata(22) <= \s_readdata[22]~output_o\;

ww_s_readdata(23) <= \s_readdata[23]~output_o\;

ww_s_readdata(24) <= \s_readdata[24]~output_o\;

ww_s_readdata(25) <= \s_readdata[25]~output_o\;

ww_s_readdata(26) <= \s_readdata[26]~output_o\;

ww_s_readdata(27) <= \s_readdata[27]~output_o\;

ww_s_readdata(28) <= \s_readdata[28]~output_o\;

ww_s_readdata(29) <= \s_readdata[29]~output_o\;

ww_s_readdata(30) <= \s_readdata[30]~output_o\;

ww_s_readdata(31) <= \s_readdata[31]~output_o\;

ww_s_waitrequest <= \s_waitrequest~output_o\;

ww_m_addr(0) <= \m_addr[0]~output_o\;

ww_m_addr(1) <= \m_addr[1]~output_o\;

ww_m_addr(2) <= \m_addr[2]~output_o\;

ww_m_addr(3) <= \m_addr[3]~output_o\;

ww_m_addr(4) <= \m_addr[4]~output_o\;

ww_m_addr(5) <= \m_addr[5]~output_o\;

ww_m_addr(6) <= \m_addr[6]~output_o\;

ww_m_addr(7) <= \m_addr[7]~output_o\;

ww_m_addr(8) <= \m_addr[8]~output_o\;

ww_m_addr(9) <= \m_addr[9]~output_o\;

ww_m_addr(10) <= \m_addr[10]~output_o\;

ww_m_addr(11) <= \m_addr[11]~output_o\;

ww_m_addr(12) <= \m_addr[12]~output_o\;

ww_m_addr(13) <= \m_addr[13]~output_o\;

ww_m_addr(14) <= \m_addr[14]~output_o\;

ww_m_addr(15) <= \m_addr[15]~output_o\;

ww_m_addr(16) <= \m_addr[16]~output_o\;

ww_m_addr(17) <= \m_addr[17]~output_o\;

ww_m_addr(18) <= \m_addr[18]~output_o\;

ww_m_addr(19) <= \m_addr[19]~output_o\;

ww_m_addr(20) <= \m_addr[20]~output_o\;

ww_m_addr(21) <= \m_addr[21]~output_o\;

ww_m_addr(22) <= \m_addr[22]~output_o\;

ww_m_addr(23) <= \m_addr[23]~output_o\;

ww_m_addr(24) <= \m_addr[24]~output_o\;

ww_m_addr(25) <= \m_addr[25]~output_o\;

ww_m_addr(26) <= \m_addr[26]~output_o\;

ww_m_addr(27) <= \m_addr[27]~output_o\;

ww_m_addr(28) <= \m_addr[28]~output_o\;

ww_m_addr(29) <= \m_addr[29]~output_o\;

ww_m_addr(30) <= \m_addr[30]~output_o\;

ww_m_addr(31) <= \m_addr[31]~output_o\;

ww_m_read <= \m_read~output_o\;

ww_m_write <= \m_write~output_o\;

ww_m_writedata(0) <= \m_writedata[0]~output_o\;

ww_m_writedata(1) <= \m_writedata[1]~output_o\;

ww_m_writedata(2) <= \m_writedata[2]~output_o\;

ww_m_writedata(3) <= \m_writedata[3]~output_o\;

ww_m_writedata(4) <= \m_writedata[4]~output_o\;

ww_m_writedata(5) <= \m_writedata[5]~output_o\;

ww_m_writedata(6) <= \m_writedata[6]~output_o\;

ww_m_writedata(7) <= \m_writedata[7]~output_o\;

ww_m_writedata(8) <= \m_writedata[8]~output_o\;

ww_m_writedata(9) <= \m_writedata[9]~output_o\;

ww_m_writedata(10) <= \m_writedata[10]~output_o\;

ww_m_writedata(11) <= \m_writedata[11]~output_o\;

ww_m_writedata(12) <= \m_writedata[12]~output_o\;

ww_m_writedata(13) <= \m_writedata[13]~output_o\;

ww_m_writedata(14) <= \m_writedata[14]~output_o\;

ww_m_writedata(15) <= \m_writedata[15]~output_o\;

ww_m_writedata(16) <= \m_writedata[16]~output_o\;

ww_m_writedata(17) <= \m_writedata[17]~output_o\;

ww_m_writedata(18) <= \m_writedata[18]~output_o\;

ww_m_writedata(19) <= \m_writedata[19]~output_o\;

ww_m_writedata(20) <= \m_writedata[20]~output_o\;

ww_m_writedata(21) <= \m_writedata[21]~output_o\;

ww_m_writedata(22) <= \m_writedata[22]~output_o\;

ww_m_writedata(23) <= \m_writedata[23]~output_o\;

ww_m_writedata(24) <= \m_writedata[24]~output_o\;

ww_m_writedata(25) <= \m_writedata[25]~output_o\;

ww_m_writedata(26) <= \m_writedata[26]~output_o\;

ww_m_writedata(27) <= \m_writedata[27]~output_o\;

ww_m_writedata(28) <= \m_writedata[28]~output_o\;

ww_m_writedata(29) <= \m_writedata[29]~output_o\;

ww_m_writedata(30) <= \m_writedata[30]~output_o\;

ww_m_writedata(31) <= \m_writedata[31]~output_o\;
END structure;


