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

-- DATE "01/23/2015 23:16:12"

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
	s_readdata : BUFFER std_logic_vector(31 DOWNTO 0);
	s_write : IN std_logic;
	s_writedata : IN std_logic_vector(31 DOWNTO 0);
	s_waitrequest : BUFFER std_logic;
	m_addr : BUFFER std_logic_vector(31 DOWNTO 0);
	m_read : BUFFER std_logic;
	m_readdata : IN std_logic_vector(31 DOWNTO 0);
	m_write : BUFFER std_logic;
	m_writedata : BUFFER std_logic_vector(31 DOWNTO 0);
	m_waitrequest : IN std_logic
	);
END cache;

-- Design Ports Information
-- s_addr[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[2]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[3]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[5]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[7]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[8]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[9]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[10]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[11]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[12]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[13]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[14]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[15]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[16]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[17]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[18]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[19]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[20]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[21]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[22]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[23]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[24]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[25]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[26]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[27]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[28]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[29]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[30]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[31]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[0]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[3]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[4]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[8]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[9]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[10]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[11]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[12]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[13]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[14]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[15]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[16]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[17]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[18]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[19]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[20]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[21]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[22]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[23]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[24]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[25]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[26]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[27]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[28]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[29]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[30]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[31]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_waitrequest	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[0]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[1]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[2]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[3]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[4]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[5]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[6]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[7]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[8]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[9]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[10]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[11]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[12]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[13]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[14]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[15]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[16]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[17]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[18]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[19]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[20]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[21]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[22]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[23]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[24]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[25]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[26]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[27]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[28]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[29]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[30]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[31]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_read	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[3]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[5]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[7]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[8]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[9]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[10]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[11]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[12]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[13]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[14]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[15]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[16]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[17]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[18]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[19]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[20]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[21]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[22]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[23]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[24]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[25]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[26]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[27]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[28]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[29]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[30]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[31]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_write	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[1]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[2]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[3]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[4]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[6]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[8]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[10]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[11]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[12]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[13]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[14]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[15]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[16]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[17]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[18]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[19]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[20]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[21]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[22]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[23]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[24]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[25]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[26]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[27]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[28]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[29]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[30]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[31]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[4]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[5]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[6]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[7]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[8]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[9]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[10]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[11]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[13]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[14]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[15]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[16]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[17]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[18]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[19]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[20]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[21]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[22]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[23]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[24]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[25]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[26]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[27]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[28]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[29]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[30]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_write	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_read	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[31]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_waitrequest	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s_addr[0]~input_o\ : std_logic;
SIGNAL \s_addr[1]~input_o\ : std_logic;
SIGNAL \s_writedata[0]~input_o\ : std_logic;
SIGNAL \s_writedata[1]~input_o\ : std_logic;
SIGNAL \s_writedata[2]~input_o\ : std_logic;
SIGNAL \s_writedata[3]~input_o\ : std_logic;
SIGNAL \s_writedata[4]~input_o\ : std_logic;
SIGNAL \s_writedata[5]~input_o\ : std_logic;
SIGNAL \s_writedata[6]~input_o\ : std_logic;
SIGNAL \s_writedata[7]~input_o\ : std_logic;
SIGNAL \s_writedata[8]~input_o\ : std_logic;
SIGNAL \s_writedata[9]~input_o\ : std_logic;
SIGNAL \s_writedata[10]~input_o\ : std_logic;
SIGNAL \s_writedata[11]~input_o\ : std_logic;
SIGNAL \s_writedata[12]~input_o\ : std_logic;
SIGNAL \s_writedata[13]~input_o\ : std_logic;
SIGNAL \s_writedata[14]~input_o\ : std_logic;
SIGNAL \s_writedata[15]~input_o\ : std_logic;
SIGNAL \s_writedata[16]~input_o\ : std_logic;
SIGNAL \s_writedata[17]~input_o\ : std_logic;
SIGNAL \s_writedata[18]~input_o\ : std_logic;
SIGNAL \s_writedata[19]~input_o\ : std_logic;
SIGNAL \s_writedata[20]~input_o\ : std_logic;
SIGNAL \s_writedata[21]~input_o\ : std_logic;
SIGNAL \s_writedata[22]~input_o\ : std_logic;
SIGNAL \s_writedata[23]~input_o\ : std_logic;
SIGNAL \s_writedata[24]~input_o\ : std_logic;
SIGNAL \s_writedata[25]~input_o\ : std_logic;
SIGNAL \s_writedata[26]~input_o\ : std_logic;
SIGNAL \s_writedata[27]~input_o\ : std_logic;
SIGNAL \s_writedata[28]~input_o\ : std_logic;
SIGNAL \s_writedata[29]~input_o\ : std_logic;
SIGNAL \s_writedata[30]~input_o\ : std_logic;
SIGNAL \s_writedata[31]~input_o\ : std_logic;
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
SIGNAL \state.RST~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.RST~q\ : std_logic;
SIGNAL \s_write~input_o\ : std_logic;
SIGNAL \s_read~input_o\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \state~27_combout\ : std_logic;
SIGNAL \state.READ_START~q\ : std_logic;
SIGNAL \state~26_combout\ : std_logic;
SIGNAL \state.WRITE_START~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \s_addr[2]~input_o\ : std_logic;
SIGNAL \s_addr[3]~input_o\ : std_logic;
SIGNAL \s_addr[4]~input_o\ : std_logic;
SIGNAL \s_addr[5]~input_o\ : std_logic;
SIGNAL \s_addr[6]~input_o\ : std_logic;
SIGNAL \s_addr[7]~input_o\ : std_logic;
SIGNAL \s_addr[8]~input_o\ : std_logic;
SIGNAL \s_addr[9]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \s_addr[26]~input_o\ : std_logic;
SIGNAL \s_addr[27]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \s_addr[28]~input_o\ : std_logic;
SIGNAL \s_addr[29]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \s_addr[30]~input_o\ : std_logic;
SIGNAL \s_addr[31]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \s_addr[23]~input_o\ : std_logic;
SIGNAL \s_addr[22]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \s_addr[24]~input_o\ : std_logic;
SIGNAL \s_addr[25]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \s_addr[18]~input_o\ : std_logic;
SIGNAL \s_addr[19]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \s_addr[21]~input_o\ : std_logic;
SIGNAL \s_addr[20]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \s_addr[17]~input_o\ : std_logic;
SIGNAL \s_addr[16]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \s_addr[10]~input_o\ : std_logic;
SIGNAL \s_addr[11]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \s_addr[12]~input_o\ : std_logic;
SIGNAL \s_addr[13]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \s_addr[14]~input_o\ : std_logic;
SIGNAL \s_addr[15]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.DONE~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \s_waitrequest~reg0_q\ : std_logic;
SIGNAL \m_waitrequest~input_o\ : std_logic;
SIGNAL \state.READ_FROM_MEM~0_combout\ : std_logic;
SIGNAL \state.READ_FROM_MEM~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \m_addr[0]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[0]~0_combout\ : std_logic;
SIGNAL \m_addr[0]~reg0_q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \m_addr[1]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[1]~reg0_q\ : std_logic;
SIGNAL \m_addr[2]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[2]~reg0_q\ : std_logic;
SIGNAL \m_addr[3]~reg0_q\ : std_logic;
SIGNAL \m_addr[4]~reg0_q\ : std_logic;
SIGNAL \m_addr[5]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[5]~reg0_q\ : std_logic;
SIGNAL \m_addr[6]~reg0_q\ : std_logic;
SIGNAL \m_addr[7]~reg0_q\ : std_logic;
SIGNAL \m_addr[8]~reg0_q\ : std_logic;
SIGNAL \m_addr[9]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[9]~reg0_q\ : std_logic;
SIGNAL \m_addr[10]~reg0_q\ : std_logic;
SIGNAL \m_addr[11]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[11]~reg0_q\ : std_logic;
SIGNAL \m_addr[12]~reg0_q\ : std_logic;
SIGNAL \m_addr[13]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[13]~reg0_q\ : std_logic;
SIGNAL \m_addr[14]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[14]~reg0_q\ : std_logic;
SIGNAL \m_addr[15]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[15]~reg0_q\ : std_logic;
SIGNAL \m_addr[16]~reg0_q\ : std_logic;
SIGNAL \m_addr[17]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[17]~reg0_q\ : std_logic;
SIGNAL \m_addr[18]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[18]~reg0_q\ : std_logic;
SIGNAL \m_addr[19]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[19]~reg0_q\ : std_logic;
SIGNAL \m_addr[20]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[20]~reg0_q\ : std_logic;
SIGNAL \m_addr[21]~reg0_q\ : std_logic;
SIGNAL \m_addr[22]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[22]~reg0_q\ : std_logic;
SIGNAL \m_addr[23]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[23]~reg0_q\ : std_logic;
SIGNAL \m_addr[24]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[24]~reg0_q\ : std_logic;
SIGNAL \m_addr[25]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[25]~reg0_q\ : std_logic;
SIGNAL \m_addr[26]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[26]~reg0_q\ : std_logic;
SIGNAL \m_addr[27]~reg0_q\ : std_logic;
SIGNAL \m_addr[28]~reg0_q\ : std_logic;
SIGNAL \m_addr[29]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[29]~reg0_q\ : std_logic;
SIGNAL \m_addr[30]~reg0_q\ : std_logic;
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

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\s_addr[9]~input_o\ & \s_addr[8]~input_o\ & \s_addr[7]~input_o\ & \s_addr[6]~input_o\ & \s_addr[5]~input_o\ & \s_addr[4]~input_o\ & \s_addr[3]~input_o\ & \s_addr[2]~input_o\);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\s_addr[9]~input_o\ & \s_addr[8]~input_o\ & \s_addr[7]~input_o\ & \s_addr[6]~input_o\ & \s_addr[5]~input_o\ & \s_addr[4]~input_o\ & \s_addr[3]~input_o\ & \s_addr[2]~input_o\);

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

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X54_Y67_N9
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

-- Location: IOOBUF_X42_Y67_N2
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

-- Location: IOOBUF_X81_Y4_N9
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

-- Location: IOOBUF_X33_Y0_N9
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

-- Location: IOOBUF_X54_Y67_N16
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

-- Location: IOOBUF_X81_Y4_N2
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

-- Location: IOOBUF_X31_Y0_N16
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

-- Location: IOOBUF_X10_Y0_N23
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

-- Location: IOOBUF_X19_Y67_N16
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

-- Location: IOOBUF_X81_Y3_N9
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

-- Location: IOOBUF_X65_Y0_N16
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

-- Location: IOOBUF_X81_Y16_N2
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

-- Location: IOOBUF_X8_Y0_N2
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

-- Location: IOOBUF_X81_Y42_N9
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

-- Location: IOOBUF_X81_Y19_N2
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

-- Location: IOOBUF_X63_Y0_N9
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

-- Location: IOOBUF_X81_Y14_N16
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

-- Location: IOOBUF_X13_Y67_N9
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

-- Location: IOOBUF_X81_Y5_N2
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

-- Location: IOOBUF_X81_Y11_N23
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

-- Location: IOOBUF_X81_Y25_N2
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

-- Location: IOOBUF_X70_Y0_N2
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

-- Location: IOOBUF_X24_Y67_N23
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

-- Location: IOOBUF_X56_Y0_N9
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

-- Location: IOOBUF_X81_Y23_N9
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

-- Location: IOOBUF_X42_Y67_N23
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

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X8_Y0_N23
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

-- Location: IOOBUF_X81_Y4_N23
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

-- Location: IOOBUF_X81_Y3_N2
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

-- Location: IOOBUF_X33_Y67_N2
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

-- Location: IOOBUF_X19_Y0_N23
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

-- Location: IOOBUF_X81_Y53_N2
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

-- Location: IOOBUF_X81_Y64_N2
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

-- Location: IOOBUF_X81_Y49_N9
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

-- Location: IOOBUF_X81_Y46_N9
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

-- Location: IOOBUF_X81_Y64_N16
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

-- Location: IOOBUF_X81_Y56_N9
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

-- Location: IOOBUF_X81_Y44_N9
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

-- Location: IOOBUF_X81_Y49_N2
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

-- Location: IOOBUF_X81_Y46_N16
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

-- Location: IOOBUF_X81_Y64_N23
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

-- Location: IOOBUF_X81_Y46_N2
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

-- Location: IOOBUF_X58_Y67_N9
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

-- Location: IOOBUF_X61_Y67_N9
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

-- Location: IOOBUF_X68_Y67_N2
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

-- Location: IOOBUF_X65_Y67_N9
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

-- Location: IOOBUF_X56_Y67_N9
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

-- Location: IOOBUF_X61_Y67_N2
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

-- Location: IOOBUF_X63_Y67_N2
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

-- Location: IOOBUF_X63_Y67_N9
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

-- Location: IOOBUF_X81_Y56_N2
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

-- Location: IOOBUF_X81_Y50_N9
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

-- Location: IOOBUF_X56_Y67_N2
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

-- Location: IOOBUF_X65_Y67_N2
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

-- Location: IOOBUF_X81_Y64_N9
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

-- Location: IOOBUF_X81_Y50_N2
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

-- Location: IOOBUF_X81_Y49_N16
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

-- Location: IOOBUF_X81_Y47_N9
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

-- Location: IOOBUF_X81_Y63_N2
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

-- Location: IOOBUF_X70_Y67_N9
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

-- Location: IOOBUF_X81_Y44_N2
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

-- Location: IOOBUF_X81_Y47_N2
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

-- Location: IOOBUF_X81_Y52_N16
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

-- Location: IOOBUF_X24_Y0_N2
\m_addr[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_addr[31]~output_o\);

-- Location: IOOBUF_X17_Y67_N16
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

-- Location: IOOBUF_X58_Y0_N2
\m_write~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_write~output_o\);

-- Location: IOOBUF_X10_Y0_N2
\m_writedata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[0]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\m_writedata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[1]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\m_writedata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\m_writedata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[3]~output_o\);

-- Location: IOOBUF_X81_Y21_N2
\m_writedata[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\m_writedata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\m_writedata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[6]~output_o\);

-- Location: IOOBUF_X26_Y67_N2
\m_writedata[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[7]~output_o\);

-- Location: IOOBUF_X47_Y67_N2
\m_writedata[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[8]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\m_writedata[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[9]~output_o\);

-- Location: IOOBUF_X24_Y67_N16
\m_writedata[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[10]~output_o\);

-- Location: IOOBUF_X68_Y0_N9
\m_writedata[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[11]~output_o\);

-- Location: IOOBUF_X42_Y67_N9
\m_writedata[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[12]~output_o\);

-- Location: IOOBUF_X22_Y67_N9
\m_writedata[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[13]~output_o\);

-- Location: IOOBUF_X19_Y67_N2
\m_writedata[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[14]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\m_writedata[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[15]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\m_writedata[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[16]~output_o\);

-- Location: IOOBUF_X52_Y67_N23
\m_writedata[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[17]~output_o\);

-- Location: IOOBUF_X81_Y19_N9
\m_writedata[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[18]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\m_writedata[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[19]~output_o\);

-- Location: IOOBUF_X81_Y21_N9
\m_writedata[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[20]~output_o\);

-- Location: IOOBUF_X68_Y0_N16
\m_writedata[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[21]~output_o\);

-- Location: IOOBUF_X29_Y67_N16
\m_writedata[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[22]~output_o\);

-- Location: IOOBUF_X10_Y67_N16
\m_writedata[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[23]~output_o\);

-- Location: IOOBUF_X31_Y67_N16
\m_writedata[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[24]~output_o\);

-- Location: IOOBUF_X52_Y67_N16
\m_writedata[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[25]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\m_writedata[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[26]~output_o\);

-- Location: IOOBUF_X81_Y2_N2
\m_writedata[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[27]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\m_writedata[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[28]~output_o\);

-- Location: IOOBUF_X70_Y0_N16
\m_writedata[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[29]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\m_writedata[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \m_writedata[30]~output_o\);

-- Location: IOOBUF_X81_Y2_N16
\m_writedata[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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

-- Location: LCCOMB_X76_Y60_N6
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

-- Location: FF_X76_Y60_N7
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

-- Location: IOIBUF_X54_Y67_N1
\s_write~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_write,
	o => \s_write~input_o\);

-- Location: IOIBUF_X81_Y43_N1
\s_read~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_read,
	o => \s_read~input_o\);

-- Location: LCCOMB_X76_Y60_N0
\Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ((\state.IDLE~q\ & (!\s_write~input_o\ & !\s_read~input_o\))) # (!\state.RST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RST~q\,
	datab => \state.IDLE~q\,
	datac => \s_write~input_o\,
	datad => \s_read~input_o\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X76_Y60_N24
\Selector2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\state.DONE~q\) # (\Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.DONE~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X76_Y60_N25
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X76_Y60_N4
\state~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~27_combout\ = (\state.IDLE~q\ & \s_read~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~q\,
	datad => \s_read~input_o\,
	combout => \state~27_combout\);

-- Location: FF_X76_Y60_N5
\state.READ_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.READ_START~q\);

-- Location: LCCOMB_X76_Y60_N30
\state~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~26_combout\ = (\state.IDLE~q\ & (\s_write~input_o\ & !\s_read~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.IDLE~q\,
	datac => \s_write~input_o\,
	datad => \s_read~input_o\,
	combout => \state~26_combout\);

-- Location: FF_X76_Y60_N31
\state.WRITE_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WRITE_START~q\);

-- Location: LCCOMB_X75_Y60_N18
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

-- Location: IOIBUF_X81_Y59_N15
\s_addr[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(2),
	o => \s_addr[2]~input_o\);

-- Location: IOIBUF_X81_Y61_N8
\s_addr[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(3),
	o => \s_addr[3]~input_o\);

-- Location: IOIBUF_X81_Y61_N1
\s_addr[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(4),
	o => \s_addr[4]~input_o\);

-- Location: IOIBUF_X81_Y65_N8
\s_addr[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(5),
	o => \s_addr[5]~input_o\);

-- Location: IOIBUF_X81_Y59_N1
\s_addr[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(6),
	o => \s_addr[6]~input_o\);

-- Location: IOIBUF_X81_Y61_N15
\s_addr[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(7),
	o => \s_addr[7]~input_o\);

-- Location: IOIBUF_X81_Y55_N8
\s_addr[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(8),
	o => \s_addr[8]~input_o\);

-- Location: IOIBUF_X81_Y59_N8
\s_addr[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(9),
	o => \s_addr[9]~input_o\);

-- Location: M9K_X74_Y60_N0
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

-- Location: IOIBUF_X81_Y58_N8
\s_addr[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(26),
	o => \s_addr[26]~input_o\);

-- Location: IOIBUF_X56_Y67_N15
\s_addr[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(27),
	o => \s_addr[27]~input_o\);

-- Location: LCCOMB_X75_Y60_N12
\state~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ & (\s_addr[27]~input_o\ & (\s_addr[26]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\)))) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ & 
-- (!\s_addr[27]~input_o\ & (\s_addr[26]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	datab => \s_addr[26]~input_o\,
	datac => \s_addr[27]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	combout => \state~21_combout\);

-- Location: IOIBUF_X81_Y58_N1
\s_addr[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(28),
	o => \s_addr[28]~input_o\);

-- Location: IOIBUF_X81_Y65_N15
\s_addr[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(29),
	o => \s_addr[29]~input_o\);

-- Location: LCCOMB_X75_Y60_N26
\state~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (\s_addr[28]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ & (\s_addr[29]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\)))) # (!\s_addr[28]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ & (\s_addr[29]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[28]~input_o\,
	datab => \s_addr[29]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	combout => \state~22_combout\);

-- Location: IOIBUF_X56_Y67_N22
\s_addr[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(30),
	o => \s_addr[30]~input_o\);

-- Location: IOIBUF_X81_Y52_N1
\s_addr[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(31),
	o => \s_addr[31]~input_o\);

-- Location: LCCOMB_X75_Y60_N16
\state~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (\s_addr[30]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ & (\s_addr[31]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\)))) # (!\s_addr[30]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ & (\s_addr[31]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[30]~input_o\,
	datab => \s_addr[31]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	combout => \state~23_combout\);

-- Location: LCCOMB_X75_Y60_N30
\state~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (\state~21_combout\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ & (\state~22_combout\ & \state~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~21_combout\,
	datab => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datac => \state~22_combout\,
	datad => \state~23_combout\,
	combout => \state~24_combout\);

-- Location: IOIBUF_X81_Y62_N15
\s_addr[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(23),
	o => \s_addr[23]~input_o\);

-- Location: IOIBUF_X81_Y62_N8
\s_addr[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(22),
	o => \s_addr[22]~input_o\);

-- Location: LCCOMB_X75_Y60_N6
\state~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~18_combout\ = (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ & (\s_addr[23]~input_o\ & (\s_addr[22]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)))) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ & 
-- (!\s_addr[23]~input_o\ & (\s_addr[22]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	datab => \s_addr[23]~input_o\,
	datac => \s_addr[22]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	combout => \state~18_combout\);

-- Location: IOIBUF_X81_Y55_N1
\s_addr[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(24),
	o => \s_addr[24]~input_o\);

-- Location: IOIBUF_X81_Y65_N1
\s_addr[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(25),
	o => \s_addr[25]~input_o\);

-- Location: LCCOMB_X75_Y60_N4
\state~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~19_combout\ = (\s_addr[24]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ & (\s_addr[25]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\)))) # (!\s_addr[24]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ & (\s_addr[25]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[24]~input_o\,
	datab => \s_addr[25]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\,
	combout => \state~19_combout\);

-- Location: IOIBUF_X81_Y62_N1
\s_addr[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(18),
	o => \s_addr[18]~input_o\);

-- Location: IOIBUF_X81_Y65_N22
\s_addr[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(19),
	o => \s_addr[19]~input_o\);

-- Location: LCCOMB_X75_Y60_N8
\state~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~16_combout\ = (\s_addr[18]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ & (\s_addr[19]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\)))) # (!\s_addr[18]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ & (\s_addr[19]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[18]~input_o\,
	datab => \s_addr[19]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	combout => \state~16_combout\);

-- Location: IOIBUF_X81_Y53_N8
\s_addr[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(21),
	o => \s_addr[21]~input_o\);

-- Location: IOIBUF_X65_Y67_N15
\s_addr[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(20),
	o => \s_addr[20]~input_o\);

-- Location: LCCOMB_X73_Y60_N22
\state~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~17_combout\ = (\s_addr[21]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ & (\s_addr[20]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\)))) # (!\s_addr[21]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ & (\s_addr[20]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[21]~input_o\,
	datab => \s_addr[20]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	combout => \state~17_combout\);

-- Location: LCCOMB_X75_Y60_N22
\state~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (\state~18_combout\ & (\state~19_combout\ & (\state~16_combout\ & \state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~18_combout\,
	datab => \state~19_combout\,
	datac => \state~16_combout\,
	datad => \state~17_combout\,
	combout => \state~20_combout\);

-- Location: IOIBUF_X63_Y67_N15
\s_addr[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(17),
	o => \s_addr[17]~input_o\);

-- Location: IOIBUF_X58_Y67_N15
\s_addr[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(16),
	o => \s_addr[16]~input_o\);

-- Location: LCCOMB_X73_Y60_N30
\state~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~14_combout\ = (\s_addr[17]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ & (\s_addr[16]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\)))) # (!\s_addr[17]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ & (\s_addr[16]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[17]~input_o\,
	datab => \s_addr[16]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	combout => \state~14_combout\);

-- Location: IOIBUF_X70_Y67_N15
\s_addr[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(10),
	o => \s_addr[10]~input_o\);

-- Location: IOIBUF_X58_Y67_N1
\s_addr[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(11),
	o => \s_addr[11]~input_o\);

-- Location: M9K_X74_Y60_N0
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

-- Location: LCCOMB_X73_Y60_N8
\state~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~11_combout\ = (\s_addr[10]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\s_addr[11]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\)))) # (!\s_addr[10]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\s_addr[11]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[10]~input_o\,
	datab => \s_addr[11]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \state~11_combout\);

-- Location: IOIBUF_X54_Y67_N22
\s_addr[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(12),
	o => \s_addr[12]~input_o\);

-- Location: IOIBUF_X58_Y67_N22
\s_addr[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(13),
	o => \s_addr[13]~input_o\);

-- Location: LCCOMB_X73_Y60_N26
\state~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~12_combout\ = (\s_addr[12]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ & (\s_addr[13]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\)))) # (!\s_addr[12]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ & (\s_addr[13]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[12]~input_o\,
	datab => \s_addr[13]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	combout => \state~12_combout\);

-- Location: IOIBUF_X70_Y67_N1
\s_addr[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(14),
	o => \s_addr[14]~input_o\);

-- Location: IOIBUF_X70_Y67_N22
\s_addr[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(15),
	o => \s_addr[15]~input_o\);

-- Location: LCCOMB_X73_Y60_N12
\state~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\ & (\s_addr[14]~input_o\ & (\s_addr[15]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\)))) # 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\ & (!\s_addr[14]~input_o\ & (\s_addr[15]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datab => \s_addr[14]~input_o\,
	datac => \s_addr[15]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	combout => \state~13_combout\);

-- Location: LCCOMB_X73_Y60_N4
\state~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (\state~14_combout\ & (\state~11_combout\ & (\state~12_combout\ & \state~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~14_combout\,
	datab => \state~11_combout\,
	datac => \state~12_combout\,
	datad => \state~13_combout\,
	combout => \state~15_combout\);

-- Location: LCCOMB_X75_Y60_N24
\state~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~25_combout\ = (\state~24_combout\ & (\state~20_combout\ & \state~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~24_combout\,
	datac => \state~20_combout\,
	datad => \state~15_combout\,
	combout => \state~25_combout\);

-- Location: LCCOMB_X75_Y60_N20
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.WRITE_START~q\) # ((\state.READ_START~q\ & \state~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_START~q\,
	datac => \state.WRITE_START~q\,
	datad => \state~25_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X75_Y60_N21
\state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DONE~q\);

-- Location: LCCOMB_X77_Y60_N16
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.IDLE~q\) # ((!\state.DONE~q\ & \s_waitrequest~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DONE~q\,
	datac => \s_waitrequest~reg0_q\,
	datad => \state.IDLE~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X77_Y60_N17
\s_waitrequest~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_waitrequest~reg0_q\);

-- Location: IOIBUF_X81_Y52_N8
\m_waitrequest~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_waitrequest,
	o => \m_waitrequest~input_o\);

-- Location: LCCOMB_X75_Y60_N10
\state.READ_FROM_MEM~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.READ_FROM_MEM~0_combout\ = (\state.READ_START~q\ & ((!\state~25_combout\))) # (!\state.READ_START~q\ & (\state.READ_FROM_MEM~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_START~q\,
	datac => \state.READ_FROM_MEM~q\,
	datad => \state~25_combout\,
	combout => \state.READ_FROM_MEM~0_combout\);

-- Location: FF_X75_Y60_N11
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

-- Location: LCCOMB_X77_Y60_N0
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

-- Location: FF_X77_Y60_N1
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

-- Location: LCCOMB_X77_Y60_N26
\m_addr[0]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[0]~reg0feeder_combout\ = out_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => out_count(0),
	combout => \m_addr[0]~reg0feeder_combout\);

-- Location: LCCOMB_X77_Y60_N14
\m_addr[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[0]~0_combout\ = (!\reset~input_o\ & \state.READ_FROM_MEM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \state.READ_FROM_MEM~q\,
	combout => \m_addr[0]~0_combout\);

-- Location: FF_X77_Y60_N27
\m_addr[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[0]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[0]~reg0_q\);

-- Location: LCCOMB_X77_Y60_N22
\Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\m_waitrequest~input_o\) # (!out_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_count(0),
	datad => \m_waitrequest~input_o\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X77_Y60_N28
\Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\state.READ_FROM_MEM~q\ & (\Selector0~0_combout\ $ (((!out_count(1)))))) # (!\state.READ_FROM_MEM~q\ & (((\state.RST~q\ & out_count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \state.RST~q\,
	datac => out_count(1),
	datad => \state.READ_FROM_MEM~q\,
	combout => \Selector0~1_combout\);

-- Location: FF_X77_Y60_N29
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

-- Location: LCCOMB_X77_Y60_N8
\m_addr[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[1]~reg0feeder_combout\ = out_count(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => out_count(1),
	combout => \m_addr[1]~reg0feeder_combout\);

-- Location: FF_X77_Y60_N9
\m_addr[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[1]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[1]~reg0_q\);

-- Location: LCCOMB_X80_Y60_N24
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

-- Location: FF_X80_Y60_N25
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

-- Location: FF_X80_Y60_N15
\m_addr[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[3]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[3]~reg0_q\);

-- Location: FF_X80_Y60_N17
\m_addr[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[4]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[4]~reg0_q\);

-- Location: LCCOMB_X80_Y60_N26
\m_addr[5]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[5]~reg0feeder_combout\ = \s_addr[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[5]~input_o\,
	combout => \m_addr[5]~reg0feeder_combout\);

-- Location: FF_X80_Y60_N27
\m_addr[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[5]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[5]~reg0_q\);

-- Location: FF_X80_Y60_N29
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

-- Location: FF_X80_Y60_N11
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

-- Location: FF_X80_Y60_N21
\m_addr[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[8]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[8]~reg0_q\);

-- Location: LCCOMB_X80_Y60_N30
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

-- Location: FF_X80_Y60_N31
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

-- Location: FF_X73_Y60_N1
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

-- Location: LCCOMB_X73_Y60_N2
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

-- Location: FF_X73_Y60_N3
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

-- Location: FF_X73_Y60_N17
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

-- Location: LCCOMB_X73_Y60_N14
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

-- Location: FF_X73_Y60_N15
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

-- Location: LCCOMB_X73_Y60_N28
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

-- Location: FF_X73_Y60_N29
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

-- Location: LCCOMB_X73_Y60_N10
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

-- Location: FF_X73_Y60_N11
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

-- Location: FF_X73_Y60_N25
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

-- Location: LCCOMB_X73_Y60_N6
\m_addr[17]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[17]~reg0feeder_combout\ = \s_addr[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[17]~input_o\,
	combout => \m_addr[17]~reg0feeder_combout\);

-- Location: FF_X73_Y60_N7
\m_addr[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[17]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[17]~reg0_q\);

-- Location: LCCOMB_X80_Y60_N12
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

-- Location: FF_X80_Y60_N13
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

-- Location: LCCOMB_X80_Y60_N18
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

-- Location: FF_X80_Y60_N19
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

-- Location: LCCOMB_X73_Y60_N20
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

-- Location: FF_X73_Y60_N21
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

-- Location: FF_X73_Y60_N19
\m_addr[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[21]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[21]~reg0_q\);

-- Location: LCCOMB_X80_Y60_N8
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

-- Location: FF_X80_Y60_N9
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

-- Location: LCCOMB_X80_Y60_N22
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

-- Location: FF_X80_Y60_N23
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

-- Location: LCCOMB_X77_Y60_N10
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

-- Location: FF_X77_Y60_N11
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

-- Location: LCCOMB_X80_Y60_N0
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

-- Location: FF_X80_Y60_N1
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

-- Location: LCCOMB_X80_Y60_N2
\m_addr[26]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[26]~reg0feeder_combout\ = \s_addr[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[26]~input_o\,
	combout => \m_addr[26]~reg0feeder_combout\);

-- Location: FF_X80_Y60_N3
\m_addr[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[26]~reg0feeder_combout\,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[26]~reg0_q\);

-- Location: FF_X75_Y60_N29
\m_addr[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[27]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[27]~reg0_q\);

-- Location: FF_X80_Y60_N5
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

-- Location: LCCOMB_X80_Y60_N6
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

-- Location: FF_X80_Y60_N7
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

-- Location: FF_X75_Y60_N19
\m_addr[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[30]~input_o\,
	sload => VCC,
	ena => \m_addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[30]~reg0_q\);

-- Location: IOIBUF_X38_Y0_N8
\s_addr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(0),
	o => \s_addr[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\s_addr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(1),
	o => \s_addr[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\s_writedata[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(0),
	o => \s_writedata[0]~input_o\);

-- Location: IOIBUF_X19_Y67_N22
\s_writedata[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(1),
	o => \s_writedata[1]~input_o\);

-- Location: IOIBUF_X44_Y0_N8
\s_writedata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(2),
	o => \s_writedata[2]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\s_writedata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(3),
	o => \s_writedata[3]~input_o\);

-- Location: IOIBUF_X63_Y0_N1
\s_writedata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(4),
	o => \s_writedata[4]~input_o\);

-- Location: IOIBUF_X81_Y7_N1
\s_writedata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(5),
	o => \s_writedata[5]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\s_writedata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(6),
	o => \s_writedata[6]~input_o\);

-- Location: IOIBUF_X44_Y67_N1
\s_writedata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(7),
	o => \s_writedata[7]~input_o\);

-- Location: IOIBUF_X81_Y39_N8
\s_writedata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(8),
	o => \s_writedata[8]~input_o\);

-- Location: IOIBUF_X15_Y67_N22
\s_writedata[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(9),
	o => \s_writedata[9]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\s_writedata[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(10),
	o => \s_writedata[10]~input_o\);

-- Location: IOIBUF_X26_Y67_N8
\s_writedata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(11),
	o => \s_writedata[11]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\s_writedata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(12),
	o => \s_writedata[12]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\s_writedata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(13),
	o => \s_writedata[13]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\s_writedata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(14),
	o => \s_writedata[14]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\s_writedata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(15),
	o => \s_writedata[15]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\s_writedata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(16),
	o => \s_writedata[16]~input_o\);

-- Location: IOIBUF_X17_Y0_N22
\s_writedata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(17),
	o => \s_writedata[17]~input_o\);

-- Location: IOIBUF_X52_Y67_N1
\s_writedata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(18),
	o => \s_writedata[18]~input_o\);

-- Location: IOIBUF_X44_Y67_N22
\s_writedata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(19),
	o => \s_writedata[19]~input_o\);

-- Location: IOIBUF_X24_Y67_N8
\s_writedata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(20),
	o => \s_writedata[20]~input_o\);

-- Location: IOIBUF_X15_Y67_N1
\s_writedata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(21),
	o => \s_writedata[21]~input_o\);

-- Location: IOIBUF_X26_Y67_N22
\s_writedata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(22),
	o => \s_writedata[22]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\s_writedata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(23),
	o => \s_writedata[23]~input_o\);

-- Location: IOIBUF_X24_Y67_N1
\s_writedata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(24),
	o => \s_writedata[24]~input_o\);

-- Location: IOIBUF_X81_Y2_N22
\s_writedata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(25),
	o => \s_writedata[25]~input_o\);

-- Location: IOIBUF_X40_Y67_N1
\s_writedata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(26),
	o => \s_writedata[26]~input_o\);

-- Location: IOIBUF_X26_Y67_N15
\s_writedata[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(27),
	o => \s_writedata[27]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\s_writedata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(28),
	o => \s_writedata[28]~input_o\);

-- Location: IOIBUF_X15_Y0_N22
\s_writedata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(29),
	o => \s_writedata[29]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\s_writedata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(30),
	o => \s_writedata[30]~input_o\);

-- Location: IOIBUF_X33_Y67_N15
\s_writedata[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(31),
	o => \s_writedata[31]~input_o\);

-- Location: IOIBUF_X42_Y67_N15
\m_readdata[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(0),
	o => \m_readdata[0]~input_o\);

-- Location: IOIBUF_X47_Y67_N8
\m_readdata[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(1),
	o => \m_readdata[1]~input_o\);

-- Location: IOIBUF_X52_Y67_N8
\m_readdata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(2),
	o => \m_readdata[2]~input_o\);

-- Location: IOIBUF_X8_Y67_N1
\m_readdata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(3),
	o => \m_readdata[3]~input_o\);

-- Location: IOIBUF_X81_Y34_N8
\m_readdata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(4),
	o => \m_readdata[4]~input_o\);

-- Location: IOIBUF_X81_Y34_N1
\m_readdata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(5),
	o => \m_readdata[5]~input_o\);

-- Location: IOIBUF_X17_Y67_N1
\m_readdata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(6),
	o => \m_readdata[6]~input_o\);

-- Location: IOIBUF_X81_Y4_N15
\m_readdata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(7),
	o => \m_readdata[7]~input_o\);

-- Location: IOIBUF_X81_Y41_N1
\m_readdata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(8),
	o => \m_readdata[8]~input_o\);

-- Location: IOIBUF_X29_Y67_N8
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

-- Location: IOIBUF_X81_Y6_N1
\m_readdata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(11),
	o => \m_readdata[11]~input_o\);

-- Location: IOIBUF_X44_Y67_N15
\m_readdata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(12),
	o => \m_readdata[12]~input_o\);

-- Location: IOIBUF_X10_Y67_N22
\m_readdata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(13),
	o => \m_readdata[13]~input_o\);

-- Location: IOIBUF_X19_Y0_N8
\m_readdata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(14),
	o => \m_readdata[14]~input_o\);

-- Location: IOIBUF_X17_Y0_N1
\m_readdata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(15),
	o => \m_readdata[15]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\m_readdata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(16),
	o => \m_readdata[16]~input_o\);

-- Location: IOIBUF_X8_Y0_N15
\m_readdata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(17),
	o => \m_readdata[17]~input_o\);

-- Location: IOIBUF_X17_Y0_N8
\m_readdata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(18),
	o => \m_readdata[18]~input_o\);

-- Location: IOIBUF_X17_Y0_N15
\m_readdata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(19),
	o => \m_readdata[19]~input_o\);

-- Location: IOIBUF_X8_Y67_N15
\m_readdata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(20),
	o => \m_readdata[20]~input_o\);

-- Location: IOIBUF_X81_Y26_N1
\m_readdata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(21),
	o => \m_readdata[21]~input_o\);

-- Location: IOIBUF_X44_Y0_N15
\m_readdata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(22),
	o => \m_readdata[22]~input_o\);

-- Location: IOIBUF_X81_Y11_N1
\m_readdata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(23),
	o => \m_readdata[23]~input_o\);

-- Location: IOIBUF_X44_Y0_N22
\m_readdata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(24),
	o => \m_readdata[24]~input_o\);

-- Location: IOIBUF_X15_Y0_N8
\m_readdata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(25),
	o => \m_readdata[25]~input_o\);

-- Location: IOIBUF_X17_Y67_N22
\m_readdata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(26),
	o => \m_readdata[26]~input_o\);

-- Location: IOIBUF_X31_Y67_N1
\m_readdata[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(27),
	o => \m_readdata[27]~input_o\);

-- Location: IOIBUF_X81_Y26_N8
\m_readdata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(28),
	o => \m_readdata[28]~input_o\);

-- Location: IOIBUF_X19_Y67_N8
\m_readdata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(29),
	o => \m_readdata[29]~input_o\);

-- Location: IOIBUF_X33_Y0_N15
\m_readdata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(30),
	o => \m_readdata[30]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
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


