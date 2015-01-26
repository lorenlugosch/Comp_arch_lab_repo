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

-- DATE "01/25/2015 22:38:12"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

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
	m_addr : OUT STD.STANDARD.integer range 0 TO 2147483647;
	m_read : OUT std_logic;
	m_readdata : IN std_logic_vector(31 DOWNTO 0);
	m_write : OUT std_logic;
	m_writedata : OUT std_logic_vector(31 DOWNTO 0);
	m_waitrequest : IN std_logic
	);
END cache;

-- Design Ports Information
-- s_readdata[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[3]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[6]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[7]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[8]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[9]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[10]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[11]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[12]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[13]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[14]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[15]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[16]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[17]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[18]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[19]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[20]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[21]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[22]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[23]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[24]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[25]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[26]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[27]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[28]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[29]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[30]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[31]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_waitrequest	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[3]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[7]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[8]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[9]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[10]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[11]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[13]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[14]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[15]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[16]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[17]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[18]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[19]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[20]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[21]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[22]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[23]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[24]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[25]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[26]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[27]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[28]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[29]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[30]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_read	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_write	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[0]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[1]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[2]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[4]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[6]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[7]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[8]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[9]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[10]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[11]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[12]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[13]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[14]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[15]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[16]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[18]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[19]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[20]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[21]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[22]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[23]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[24]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[25]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[26]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[27]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[28]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[29]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[30]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[31]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[2]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[4]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[6]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[8]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[9]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[10]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[11]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[12]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[13]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[14]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[15]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[16]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[17]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[18]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[19]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[20]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[21]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[22]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[23]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[24]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[25]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[26]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[27]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[28]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[29]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[30]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[31]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[11]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[12]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[13]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[14]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[15]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[16]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[17]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[18]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[19]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[20]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[21]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[22]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[23]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[24]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[25]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[26]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[27]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[31]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[30]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[28]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[29]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_waitrequest	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[1]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[3]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[8]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[9]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[0]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[2]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[4]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[6]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[7]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[8]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[9]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[10]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[11]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[12]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[13]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[14]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[15]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[16]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[17]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[18]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[19]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[20]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[21]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[22]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[23]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[24]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[25]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[26]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[27]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[28]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[29]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[30]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[31]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_read	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_write	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_m_addr : std_logic_vector(30 DOWNTO 0);
SIGNAL ww_m_read : std_logic;
SIGNAL ww_m_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_m_write : std_logic;
SIGNAL ww_m_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_m_waitrequest : std_logic;
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
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \m_read~output_o\ : std_logic;
SIGNAL \m_write~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.RST~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.RST~q\ : std_logic;
SIGNAL \s_write~input_o\ : std_logic;
SIGNAL \s_read~input_o\ : std_logic;
SIGNAL \s_addr[31]~input_o\ : std_logic;
SIGNAL \m_waitrequest~input_o\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \tag_ready~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \state.READ_START~q\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \write_tag~q\ : std_logic;
SIGNAL \s_addr[13]~input_o\ : std_logic;
SIGNAL \s_addr[9]~input_o\ : std_logic;
SIGNAL \s_addr[2]~input_o\ : std_logic;
SIGNAL \s_addr[3]~input_o\ : std_logic;
SIGNAL \s_addr[4]~input_o\ : std_logic;
SIGNAL \s_addr[5]~input_o\ : std_logic;
SIGNAL \s_addr[6]~input_o\ : std_logic;
SIGNAL \s_addr[7]~input_o\ : std_logic;
SIGNAL \s_addr[8]~input_o\ : std_logic;
SIGNAL \s_addr[10]~input_o\ : std_logic;
SIGNAL \s_addr[11]~input_o\ : std_logic;
SIGNAL \s_addr[12]~input_o\ : std_logic;
SIGNAL \s_addr[14]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \s_addr[26]~input_o\ : std_logic;
SIGNAL \s_addr[27]~input_o\ : std_logic;
SIGNAL \s_addr[15]~input_o\ : std_logic;
SIGNAL \s_addr[16]~input_o\ : std_logic;
SIGNAL \s_addr[17]~input_o\ : std_logic;
SIGNAL \s_addr[18]~input_o\ : std_logic;
SIGNAL \s_addr[19]~input_o\ : std_logic;
SIGNAL \writedata_tag[10]~feeder_combout\ : std_logic;
SIGNAL \s_addr[20]~input_o\ : std_logic;
SIGNAL \s_addr[21]~input_o\ : std_logic;
SIGNAL \s_addr[22]~input_o\ : std_logic;
SIGNAL \s_addr[23]~input_o\ : std_logic;
SIGNAL \writedata_tag[14]~feeder_combout\ : std_logic;
SIGNAL \s_addr[24]~input_o\ : std_logic;
SIGNAL \writedata_tag[15]~feeder_combout\ : std_logic;
SIGNAL \s_addr[25]~input_o\ : std_logic;
SIGNAL \s_addr[28]~input_o\ : std_logic;
SIGNAL \s_addr[29]~input_o\ : std_logic;
SIGNAL \writedata_tag[20]~feeder_combout\ : std_logic;
SIGNAL \s_addr[30]~input_o\ : std_logic;
SIGNAL \writedata_tag[21]~feeder_combout\ : std_logic;
SIGNAL \writedata_tag[22]~2_combout\ : std_logic;
SIGNAL \writedata_tag[22]~3_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \Equal0~12_combout\ : std_logic;
SIGNAL \Equal0~13_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~14_combout\ : std_logic;
SIGNAL \Selector12~5_combout\ : std_logic;
SIGNAL \Selector12~3_combout\ : std_logic;
SIGNAL \Selector12~4_combout\ : std_logic;
SIGNAL \state.WRITE_FLUSH_TO_MEM~q\ : std_logic;
SIGNAL \word_select[1]~3_combout\ : std_logic;
SIGNAL \state.WRITE_FLUSH_TO_MEM_DEASSERT~feeder_combout\ : std_logic;
SIGNAL \state.WRITE_FLUSH_TO_MEM_DEASSERT~q\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \state.WRITE_GET_BLOCK_FROM_MEM~q\ : std_logic;
SIGNAL \word_select[1]~4_combout\ : std_logic;
SIGNAL \state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~feeder_combout\ : std_logic;
SIGNAL \state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\ : std_logic;
SIGNAL \writedata_tag[0]~4_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \state.READ_FLUSH_TO_MEM~q\ : std_logic;
SIGNAL \word_select[1]~5_combout\ : std_logic;
SIGNAL \state.READ_FLUSH_TO_MEM_DEASSERT~q\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \state.READ_GET_BLOCK_FROM_MEM~q\ : std_logic;
SIGNAL \word_select[1]~2_combout\ : std_logic;
SIGNAL \state.READ_GET_BLOCK_FROM_MEM_DEASSERT~feeder_combout\ : std_logic;
SIGNAL \state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\ : std_logic;
SIGNAL \WideOr18~0_combout\ : std_logic;
SIGNAL \out_count[2]~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \out_count[2]~1_combout\ : std_logic;
SIGNAL \out_count[2]~2_combout\ : std_logic;
SIGNAL \out_count[0]~3_combout\ : std_logic;
SIGNAL \out_count[0]~5_combout\ : std_logic;
SIGNAL \out_count[1]~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \out_count[2]~6_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector15~4_combout\ : std_logic;
SIGNAL \Selector15~5_combout\ : std_logic;
SIGNAL \Selector15~6_combout\ : std_logic;
SIGNAL \state.DONE~q\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \state.WRITE_START~q\ : std_logic;
SIGNAL \m_addr[0]~88_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector16~4_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \Selector16~5_combout\ : std_logic;
SIGNAL \m_readdata[0]~input_o\ : std_logic;
SIGNAL \s_addr[1]~input_o\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \word_select[1]~feeder_combout\ : std_logic;
SIGNAL \word_select[1]~6_combout\ : std_logic;
SIGNAL \word_select[1]~9_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \word_select[1]~7_combout\ : std_logic;
SIGNAL \word_select[1]~8_combout\ : std_logic;
SIGNAL \s_addr[0]~input_o\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \word_select[0]~feeder_combout\ : std_logic;
SIGNAL \Selector17~5_combout\ : std_logic;
SIGNAL \Selector17~6_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Selector17~4_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \Selector17~7_combout\ : std_logic;
SIGNAL \write_one~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \s_writedata[0]~input_o\ : std_logic;
SIGNAL \Mux98~0_combout\ : std_logic;
SIGNAL \m_readdata[1]~input_o\ : std_logic;
SIGNAL \s_writedata[1]~input_o\ : std_logic;
SIGNAL \Mux100~0_combout\ : std_logic;
SIGNAL \s_writedata[2]~input_o\ : std_logic;
SIGNAL \m_readdata[2]~input_o\ : std_logic;
SIGNAL \Mux102~0_combout\ : std_logic;
SIGNAL \m_readdata[3]~input_o\ : std_logic;
SIGNAL \s_writedata[3]~input_o\ : std_logic;
SIGNAL \Mux104~0_combout\ : std_logic;
SIGNAL \s_writedata[4]~input_o\ : std_logic;
SIGNAL \m_readdata[4]~input_o\ : std_logic;
SIGNAL \Mux106~0_combout\ : std_logic;
SIGNAL \m_readdata[5]~input_o\ : std_logic;
SIGNAL \s_writedata[5]~input_o\ : std_logic;
SIGNAL \Mux108~0_combout\ : std_logic;
SIGNAL \s_writedata[6]~input_o\ : std_logic;
SIGNAL \m_readdata[6]~input_o\ : std_logic;
SIGNAL \Mux110~0_combout\ : std_logic;
SIGNAL \s_writedata[7]~input_o\ : std_logic;
SIGNAL \m_readdata[7]~input_o\ : std_logic;
SIGNAL \Mux112~0_combout\ : std_logic;
SIGNAL \m_readdata[8]~input_o\ : std_logic;
SIGNAL \s_writedata[8]~input_o\ : std_logic;
SIGNAL \Mux114~0_combout\ : std_logic;
SIGNAL \m_readdata[9]~input_o\ : std_logic;
SIGNAL \s_writedata[9]~input_o\ : std_logic;
SIGNAL \Mux116~0_combout\ : std_logic;
SIGNAL \m_readdata[10]~input_o\ : std_logic;
SIGNAL \s_writedata[10]~input_o\ : std_logic;
SIGNAL \Mux118~0_combout\ : std_logic;
SIGNAL \m_readdata[11]~input_o\ : std_logic;
SIGNAL \s_writedata[11]~input_o\ : std_logic;
SIGNAL \Mux120~0_combout\ : std_logic;
SIGNAL \s_writedata[12]~input_o\ : std_logic;
SIGNAL \m_readdata[12]~input_o\ : std_logic;
SIGNAL \Mux122~0_combout\ : std_logic;
SIGNAL \s_writedata[13]~input_o\ : std_logic;
SIGNAL \m_readdata[13]~input_o\ : std_logic;
SIGNAL \Mux124~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \write_zero~0_combout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \write_three~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \write_two~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Mux97~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux70~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux72~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux73~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux74~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux75~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux76~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux77~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux78~0_combout\ : std_logic;
SIGNAL \m_readdata[14]~input_o\ : std_logic;
SIGNAL \s_writedata[14]~input_o\ : std_logic;
SIGNAL \Mux126~0_combout\ : std_logic;
SIGNAL \m_readdata[15]~input_o\ : std_logic;
SIGNAL \s_writedata[15]~input_o\ : std_logic;
SIGNAL \Mux128~0_combout\ : std_logic;
SIGNAL \m_readdata[16]~input_o\ : std_logic;
SIGNAL \s_writedata[16]~input_o\ : std_logic;
SIGNAL \Mux130~0_combout\ : std_logic;
SIGNAL \s_writedata[17]~input_o\ : std_logic;
SIGNAL \m_readdata[17]~input_o\ : std_logic;
SIGNAL \Mux132~0_combout\ : std_logic;
SIGNAL \m_readdata[18]~input_o\ : std_logic;
SIGNAL \s_writedata[18]~input_o\ : std_logic;
SIGNAL \Mux134~0_combout\ : std_logic;
SIGNAL \m_readdata[19]~input_o\ : std_logic;
SIGNAL \s_writedata[19]~input_o\ : std_logic;
SIGNAL \Mux136~0_combout\ : std_logic;
SIGNAL \m_readdata[20]~input_o\ : std_logic;
SIGNAL \s_writedata[20]~input_o\ : std_logic;
SIGNAL \Mux138~0_combout\ : std_logic;
SIGNAL \s_writedata[21]~input_o\ : std_logic;
SIGNAL \m_readdata[21]~input_o\ : std_logic;
SIGNAL \Mux140~0_combout\ : std_logic;
SIGNAL \m_readdata[22]~input_o\ : std_logic;
SIGNAL \s_writedata[22]~input_o\ : std_logic;
SIGNAL \Mux142~0_combout\ : std_logic;
SIGNAL \m_readdata[23]~input_o\ : std_logic;
SIGNAL \s_writedata[23]~input_o\ : std_logic;
SIGNAL \Mux144~0_combout\ : std_logic;
SIGNAL \m_readdata[24]~input_o\ : std_logic;
SIGNAL \s_writedata[24]~input_o\ : std_logic;
SIGNAL \Mux146~0_combout\ : std_logic;
SIGNAL \m_readdata[25]~input_o\ : std_logic;
SIGNAL \s_writedata[25]~input_o\ : std_logic;
SIGNAL \Mux148~0_combout\ : std_logic;
SIGNAL \m_readdata[26]~input_o\ : std_logic;
SIGNAL \s_writedata[26]~input_o\ : std_logic;
SIGNAL \Mux150~0_combout\ : std_logic;
SIGNAL \m_readdata[27]~input_o\ : std_logic;
SIGNAL \s_writedata[27]~input_o\ : std_logic;
SIGNAL \Mux152~0_combout\ : std_logic;
SIGNAL \m_readdata[28]~input_o\ : std_logic;
SIGNAL \s_writedata[28]~input_o\ : std_logic;
SIGNAL \Mux154~0_combout\ : std_logic;
SIGNAL \s_writedata[29]~input_o\ : std_logic;
SIGNAL \m_readdata[29]~input_o\ : std_logic;
SIGNAL \Mux156~0_combout\ : std_logic;
SIGNAL \s_writedata[30]~input_o\ : std_logic;
SIGNAL \m_readdata[30]~input_o\ : std_logic;
SIGNAL \Mux158~0_combout\ : std_logic;
SIGNAL \m_readdata[31]~input_o\ : std_logic;
SIGNAL \s_writedata[31]~input_o\ : std_logic;
SIGNAL \Mux160~0_combout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux79~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux80~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux81~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux82~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux83~0_combout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux84~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux85~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux86~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux87~0_combout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux88~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux89~0_combout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux90~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux91~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux92~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux93~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux94~0_combout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux95~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux96~0_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Selector19~4_combout\ : std_logic;
SIGNAL \Selector19~6_combout\ : std_logic;
SIGNAL \Selector19~5_combout\ : std_logic;
SIGNAL \s_waitrequest~reg0_q\ : std_logic;
SIGNAL \m_addr[0]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[0]~29_combout\ : std_logic;
SIGNAL \m_addr[0]~reg0_q\ : std_logic;
SIGNAL \m_addr[1]~reg0feeder_combout\ : std_logic;
SIGNAL \m_addr[1]~reg0_q\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \m_addr[2]~30_combout\ : std_logic;
SIGNAL \m_addr[2]~reg0_q\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \m_addr[2]~31\ : std_logic;
SIGNAL \m_addr[3]~32_combout\ : std_logic;
SIGNAL \m_addr[3]~reg0_q\ : std_logic;
SIGNAL \m_addr[3]~33\ : std_logic;
SIGNAL \m_addr[4]~34_combout\ : std_logic;
SIGNAL \m_addr[4]~reg0_q\ : std_logic;
SIGNAL \m_addr[4]~35\ : std_logic;
SIGNAL \m_addr[5]~36_combout\ : std_logic;
SIGNAL \m_addr[5]~reg0_q\ : std_logic;
SIGNAL \m_addr[5]~37\ : std_logic;
SIGNAL \m_addr[6]~38_combout\ : std_logic;
SIGNAL \m_addr[6]~reg0_q\ : std_logic;
SIGNAL \m_addr[6]~39\ : std_logic;
SIGNAL \m_addr[7]~40_combout\ : std_logic;
SIGNAL \m_addr[7]~reg0_q\ : std_logic;
SIGNAL \m_addr[7]~41\ : std_logic;
SIGNAL \m_addr[8]~42_combout\ : std_logic;
SIGNAL \m_addr[8]~reg0_q\ : std_logic;
SIGNAL \m_addr[8]~43\ : std_logic;
SIGNAL \m_addr[9]~44_combout\ : std_logic;
SIGNAL \m_addr[9]~reg0_q\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \m_addr[9]~45\ : std_logic;
SIGNAL \m_addr[10]~46_combout\ : std_logic;
SIGNAL \m_addr[10]~reg0_q\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \m_addr[10]~47\ : std_logic;
SIGNAL \m_addr[11]~48_combout\ : std_logic;
SIGNAL \m_addr[11]~reg0_q\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \m_addr[11]~49\ : std_logic;
SIGNAL \m_addr[12]~50_combout\ : std_logic;
SIGNAL \m_addr[12]~reg0_q\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \m_addr[12]~51\ : std_logic;
SIGNAL \m_addr[13]~52_combout\ : std_logic;
SIGNAL \m_addr[13]~reg0_q\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \m_addr[13]~53\ : std_logic;
SIGNAL \m_addr[14]~54_combout\ : std_logic;
SIGNAL \m_addr[14]~reg0_q\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \m_addr[14]~55\ : std_logic;
SIGNAL \m_addr[15]~56_combout\ : std_logic;
SIGNAL \m_addr[15]~reg0_q\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \m_addr[15]~57\ : std_logic;
SIGNAL \m_addr[16]~58_combout\ : std_logic;
SIGNAL \m_addr[16]~reg0_q\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \m_addr[16]~59\ : std_logic;
SIGNAL \m_addr[17]~60_combout\ : std_logic;
SIGNAL \m_addr[17]~reg0_q\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \m_addr[17]~61\ : std_logic;
SIGNAL \m_addr[18]~62_combout\ : std_logic;
SIGNAL \m_addr[18]~reg0_q\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \m_addr[18]~63\ : std_logic;
SIGNAL \m_addr[19]~64_combout\ : std_logic;
SIGNAL \m_addr[19]~reg0_q\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \m_addr[19]~65\ : std_logic;
SIGNAL \m_addr[20]~66_combout\ : std_logic;
SIGNAL \m_addr[20]~reg0_q\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \m_addr[20]~67\ : std_logic;
SIGNAL \m_addr[21]~68_combout\ : std_logic;
SIGNAL \m_addr[21]~reg0_q\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \m_addr[21]~69\ : std_logic;
SIGNAL \m_addr[22]~70_combout\ : std_logic;
SIGNAL \m_addr[22]~reg0_q\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \m_addr[22]~71\ : std_logic;
SIGNAL \m_addr[23]~72_combout\ : std_logic;
SIGNAL \m_addr[23]~reg0_q\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \m_addr[23]~73\ : std_logic;
SIGNAL \m_addr[24]~74_combout\ : std_logic;
SIGNAL \m_addr[24]~reg0_q\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \m_addr[24]~75\ : std_logic;
SIGNAL \m_addr[25]~76_combout\ : std_logic;
SIGNAL \m_addr[25]~reg0_q\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \m_addr[25]~77\ : std_logic;
SIGNAL \m_addr[26]~78_combout\ : std_logic;
SIGNAL \m_addr[26]~reg0_q\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \m_addr[26]~79\ : std_logic;
SIGNAL \m_addr[27]~80_combout\ : std_logic;
SIGNAL \m_addr[27]~reg0_q\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \m_addr[27]~81\ : std_logic;
SIGNAL \m_addr[28]~82_combout\ : std_logic;
SIGNAL \m_addr[28]~reg0_q\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \m_addr[28]~83\ : std_logic;
SIGNAL \m_addr[29]~84_combout\ : std_logic;
SIGNAL \m_addr[29]~reg0_q\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \m_addr[29]~85\ : std_logic;
SIGNAL \m_addr[30]~86_combout\ : std_logic;
SIGNAL \m_addr[30]~reg0_q\ : std_logic;
SIGNAL \Selector21~2_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Selector21~3_combout\ : std_logic;
SIGNAL \m_read~reg0_q\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Selector80~1_combout\ : std_logic;
SIGNAL \m_write~reg0_q\ : std_logic;
SIGNAL writedata_tag : std_logic_vector(23 DOWNTO 0);
SIGNAL word_select : std_logic_vector(1 DOWNTO 0);
SIGNAL transaction : std_logic_vector(2 DOWNTO 0);
SIGNAL out_count : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Add0~6_combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_s_addr <= s_addr;
ww_s_read <= s_read;
s_readdata <= ww_s_readdata;
ww_s_write <= s_write;
ww_s_writedata <= s_writedata;
s_waitrequest <= ww_s_waitrequest;
m_addr <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_m_addr));
m_read <= ww_m_read;
ww_m_readdata <= m_readdata;
m_write <= ww_m_write;
m_writedata <= ww_m_writedata;
ww_m_waitrequest <= m_waitrequest;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \Mux124~0_combout\ & \Mux122~0_combout\ & \Mux120~0_combout\ & \Mux118~0_combout\ & \Mux116~0_combout\ & \Mux114~0_combout\ & \Mux112~0_combout\ & 
\Mux110~0_combout\ & \Mux108~0_combout\ & \Mux106~0_combout\ & \Mux104~0_combout\ & \Mux102~0_combout\ & \Mux100~0_combout\ & \Mux98~0_combout\);

\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\s_addr[9]~input_o\ & \s_addr[8]~input_o\ & \s_addr[7]~input_o\ & \s_addr[6]~input_o\ & \s_addr[5]~input_o\ & \s_addr[4]~input_o\ & \s_addr[3]~input_o\ & \s_addr[2]~input_o\);

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

\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \Mux124~0_combout\ & \Mux122~0_combout\ & \Mux120~0_combout\ & \Mux118~0_combout\ & \Mux116~0_combout\ & \Mux114~0_combout\ & \Mux112~0_combout\ & 
\Mux110~0_combout\ & \Mux108~0_combout\ & \Mux106~0_combout\ & \Mux104~0_combout\ & \Mux102~0_combout\ & \Mux100~0_combout\ & \Mux98~0_combout\);

\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\s_addr[9]~input_o\ & \s_addr[8]~input_o\ & \s_addr[7]~input_o\ & \s_addr[6]~input_o\ & \s_addr[5]~input_o\ & \s_addr[4]~input_o\ & \s_addr[3]~input_o\ & \s_addr[2]~input_o\);

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

\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \Mux124~0_combout\ & \Mux122~0_combout\ & \Mux120~0_combout\ & \Mux118~0_combout\ & \Mux116~0_combout\ & \Mux114~0_combout\ & \Mux112~0_combout\ & 
\Mux110~0_combout\ & \Mux108~0_combout\ & \Mux106~0_combout\ & \Mux104~0_combout\ & \Mux102~0_combout\ & \Mux100~0_combout\ & \Mux98~0_combout\);

\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\s_addr[9]~input_o\ & \s_addr[8]~input_o\ & \s_addr[7]~input_o\ & \s_addr[6]~input_o\ & \s_addr[5]~input_o\ & \s_addr[4]~input_o\ & \s_addr[3]~input_o\ & \s_addr[2]~input_o\);

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

\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \Mux124~0_combout\ & \Mux122~0_combout\ & \Mux120~0_combout\ & \Mux118~0_combout\ & \Mux116~0_combout\ & \Mux114~0_combout\ & \Mux112~0_combout\ & 
\Mux110~0_combout\ & \Mux108~0_combout\ & \Mux106~0_combout\ & \Mux104~0_combout\ & \Mux102~0_combout\ & \Mux100~0_combout\ & \Mux98~0_combout\);

\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\s_addr[9]~input_o\ & \s_addr[8]~input_o\ & \s_addr[7]~input_o\ & \s_addr[6]~input_o\ & \s_addr[5]~input_o\ & \s_addr[4]~input_o\ & \s_addr[3]~input_o\ & \s_addr[2]~input_o\);

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

\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\Mux160~0_combout\ & \Mux158~0_combout\ & \Mux156~0_combout\ & \Mux154~0_combout\ & \Mux152~0_combout\ & \Mux150~0_combout\ & \Mux148~0_combout\ & \Mux146~0_combout\ & 
\Mux144~0_combout\ & \Mux142~0_combout\ & \Mux140~0_combout\ & \Mux138~0_combout\ & \Mux136~0_combout\ & \Mux134~0_combout\ & \Mux132~0_combout\ & \Mux130~0_combout\ & \Mux128~0_combout\ & \Mux126~0_combout\);

\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\s_addr[9]~input_o\ & \s_addr[8]~input_o\ & \s_addr[7]~input_o\ & \s_addr[6]~input_o\ & \s_addr[5]~input_o\ & \s_addr[4]~input_o\ & \s_addr[3]~input_o\ & \s_addr[2]~input_o\);

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

\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\Mux160~0_combout\ & \Mux158~0_combout\ & \Mux156~0_combout\ & \Mux154~0_combout\ & \Mux152~0_combout\ & \Mux150~0_combout\ & \Mux148~0_combout\ & \Mux146~0_combout\ & 
\Mux144~0_combout\ & \Mux142~0_combout\ & \Mux140~0_combout\ & \Mux138~0_combout\ & \Mux136~0_combout\ & \Mux134~0_combout\ & \Mux132~0_combout\ & \Mux130~0_combout\ & \Mux128~0_combout\ & \Mux126~0_combout\);

\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\s_addr[9]~input_o\ & \s_addr[8]~input_o\ & \s_addr[7]~input_o\ & \s_addr[6]~input_o\ & \s_addr[5]~input_o\ & \s_addr[4]~input_o\ & \s_addr[3]~input_o\ & \s_addr[2]~input_o\);

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

\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\Mux160~0_combout\ & \Mux158~0_combout\ & \Mux156~0_combout\ & \Mux154~0_combout\ & \Mux152~0_combout\ & \Mux150~0_combout\ & \Mux148~0_combout\ & \Mux146~0_combout\ & 
\Mux144~0_combout\ & \Mux142~0_combout\ & \Mux140~0_combout\ & \Mux138~0_combout\ & \Mux136~0_combout\ & \Mux134~0_combout\ & \Mux132~0_combout\ & \Mux130~0_combout\ & \Mux128~0_combout\ & \Mux126~0_combout\);

\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\s_addr[9]~input_o\ & \s_addr[8]~input_o\ & \s_addr[7]~input_o\ & \s_addr[6]~input_o\ & \s_addr[5]~input_o\ & \s_addr[4]~input_o\ & \s_addr[3]~input_o\ & \s_addr[2]~input_o\);

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

\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\Mux160~0_combout\ & \Mux158~0_combout\ & \Mux156~0_combout\ & \Mux154~0_combout\ & \Mux152~0_combout\ & \Mux150~0_combout\ & \Mux148~0_combout\ & \Mux146~0_combout\ & 
\Mux144~0_combout\ & \Mux142~0_combout\ & \Mux140~0_combout\ & \Mux138~0_combout\ & \Mux136~0_combout\ & \Mux134~0_combout\ & \Mux132~0_combout\ & \Mux130~0_combout\ & \Mux128~0_combout\ & \Mux126~0_combout\);

\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\s_addr[9]~input_o\ & \s_addr[8]~input_o\ & \s_addr[7]~input_o\ & \s_addr[6]~input_o\ & \s_addr[5]~input_o\ & \s_addr[4]~input_o\ & \s_addr[3]~input_o\ & \s_addr[2]~input_o\
);

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

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & writedata_tag(5) & writedata_tag(3) & writedata_tag(2) & writedata_tag(1) & writedata_tag(0)
);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\s_addr[9]~input_o\ & \s_addr[8]~input_o\ & \s_addr[7]~input_o\ & \s_addr[6]~input_o\ & \s_addr[5]~input_o\ & \s_addr[4]~input_o\ & \s_addr[3]~input_o\ & \s_addr[2]~input_o\);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (writedata_tag(22) & writedata_tag(21) & writedata_tag(20) & writedata_tag(19) & writedata_tag(18) & writedata_tag(17) & writedata_tag(16) & writedata_tag(15) & 
writedata_tag(14) & writedata_tag(13) & writedata_tag(12) & writedata_tag(11) & writedata_tag(10) & writedata_tag(9) & writedata_tag(8) & writedata_tag(7) & writedata_tag(6) & writedata_tag(4));

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
\ALT_INV_Add0~6_combout\ <= NOT \Add0~6_combout\;

-- Location: IOOBUF_X70_Y0_N16
\s_readdata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux65~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[0]~output_o\);

-- Location: IOOBUF_X81_Y65_N23
\s_readdata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux66~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[1]~output_o\);

-- Location: IOOBUF_X81_Y3_N2
\s_readdata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux67~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[2]~output_o\);

-- Location: IOOBUF_X81_Y55_N2
\s_readdata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux68~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[3]~output_o\);

-- Location: IOOBUF_X81_Y61_N16
\s_readdata[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux69~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[4]~output_o\);

-- Location: IOOBUF_X56_Y67_N9
\s_readdata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux70~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\s_readdata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux71~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[6]~output_o\);

-- Location: IOOBUF_X81_Y21_N2
\s_readdata[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux72~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[7]~output_o\);

-- Location: IOOBUF_X56_Y67_N2
\s_readdata[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux73~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[8]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\s_readdata[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux74~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[9]~output_o\);

-- Location: IOOBUF_X81_Y61_N2
\s_readdata[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux75~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[10]~output_o\);

-- Location: IOOBUF_X68_Y67_N2
\s_readdata[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux76~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[11]~output_o\);

-- Location: IOOBUF_X81_Y65_N2
\s_readdata[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux77~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[12]~output_o\);

-- Location: IOOBUF_X70_Y0_N2
\s_readdata[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux78~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[13]~output_o\);

-- Location: IOOBUF_X81_Y21_N9
\s_readdata[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux79~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[14]~output_o\);

-- Location: IOOBUF_X81_Y65_N9
\s_readdata[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux80~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[15]~output_o\);

-- Location: IOOBUF_X81_Y59_N16
\s_readdata[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux81~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[16]~output_o\);

-- Location: IOOBUF_X81_Y64_N9
\s_readdata[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux82~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[17]~output_o\);

-- Location: IOOBUF_X81_Y9_N2
\s_readdata[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux83~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[18]~output_o\);

-- Location: IOOBUF_X81_Y59_N2
\s_readdata[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux84~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[19]~output_o\);

-- Location: IOOBUF_X81_Y46_N16
\s_readdata[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux85~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[20]~output_o\);

-- Location: IOOBUF_X81_Y55_N9
\s_readdata[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux86~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[21]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\s_readdata[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux87~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[22]~output_o\);

-- Location: IOOBUF_X81_Y46_N2
\s_readdata[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux88~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[23]~output_o\);

-- Location: IOOBUF_X65_Y67_N16
\s_readdata[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux89~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[24]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\s_readdata[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux90~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[25]~output_o\);

-- Location: IOOBUF_X81_Y9_N9
\s_readdata[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux91~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[26]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\s_readdata[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux92~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[27]~output_o\);

-- Location: IOOBUF_X81_Y65_N16
\s_readdata[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux93~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[28]~output_o\);

-- Location: IOOBUF_X81_Y61_N9
\s_readdata[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux94~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[29]~output_o\);

-- Location: IOOBUF_X65_Y67_N2
\s_readdata[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux95~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[30]~output_o\);

-- Location: IOOBUF_X81_Y59_N9
\s_readdata[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux96~0_combout\,
	oe => \Mux97~0_combout\,
	devoe => ww_devoe,
	o => \s_readdata[31]~output_o\);

-- Location: IOOBUF_X81_Y20_N9
\m_writedata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[0]~output_o\);

-- Location: IOOBUF_X81_Y62_N16
\m_writedata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[1]~output_o\);

-- Location: IOOBUF_X81_Y17_N2
\m_writedata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[2]~output_o\);

-- Location: IOOBUF_X58_Y67_N9
\m_writedata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~0_combout\,
	oe => \Mux64~0_combout\,
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
	i => \Mux36~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[4]~output_o\);

-- Location: IOOBUF_X68_Y0_N2
\m_writedata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[5]~output_o\);

-- Location: IOOBUF_X81_Y10_N2
\m_writedata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[6]~output_o\);

-- Location: IOOBUF_X81_Y7_N16
\m_writedata[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[7]~output_o\);

-- Location: IOOBUF_X81_Y50_N2
\m_writedata[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[8]~output_o\);

-- Location: IOOBUF_X81_Y6_N9
\m_writedata[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[9]~output_o\);

-- Location: IOOBUF_X68_Y0_N16
\m_writedata[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[10]~output_o\);

-- Location: IOOBUF_X81_Y64_N16
\m_writedata[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[11]~output_o\);

-- Location: IOOBUF_X81_Y6_N2
\m_writedata[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[12]~output_o\);

-- Location: IOOBUF_X81_Y8_N9
\m_writedata[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[13]~output_o\);

-- Location: IOOBUF_X81_Y10_N9
\m_writedata[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[14]~output_o\);

-- Location: IOOBUF_X81_Y62_N9
\m_writedata[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[15]~output_o\);

-- Location: IOOBUF_X81_Y2_N2
\m_writedata[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[16]~output_o\);

-- Location: IOOBUF_X81_Y64_N2
\m_writedata[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[17]~output_o\);

-- Location: IOOBUF_X81_Y62_N2
\m_writedata[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[18]~output_o\);

-- Location: IOOBUF_X70_Y67_N16
\m_writedata[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[19]~output_o\);

-- Location: IOOBUF_X70_Y67_N23
\m_writedata[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[20]~output_o\);

-- Location: IOOBUF_X70_Y67_N9
\m_writedata[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux53~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[21]~output_o\);

-- Location: IOOBUF_X81_Y6_N16
\m_writedata[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[22]~output_o\);

-- Location: IOOBUF_X81_Y20_N2
\m_writedata[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[23]~output_o\);

-- Location: IOOBUF_X81_Y8_N2
\m_writedata[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[24]~output_o\);

-- Location: IOOBUF_X81_Y7_N9
\m_writedata[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux57~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[25]~output_o\);

-- Location: IOOBUF_X81_Y2_N16
\m_writedata[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[26]~output_o\);

-- Location: IOOBUF_X68_Y0_N9
\m_writedata[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux59~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[27]~output_o\);

-- Location: IOOBUF_X81_Y44_N9
\m_writedata[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux60~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[28]~output_o\);

-- Location: IOOBUF_X81_Y44_N2
\m_writedata[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux61~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[29]~output_o\);

-- Location: IOOBUF_X81_Y10_N16
\m_writedata[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux62~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[30]~output_o\);

-- Location: IOOBUF_X81_Y64_N23
\m_writedata[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux63~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[31]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
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

-- Location: IOOBUF_X52_Y67_N9
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

-- Location: IOOBUF_X81_Y49_N2
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

-- Location: IOOBUF_X40_Y0_N2
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

-- Location: IOOBUF_X81_Y12_N2
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

-- Location: IOOBUF_X42_Y67_N9
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

-- Location: IOOBUF_X29_Y67_N9
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

-- Location: IOOBUF_X33_Y67_N9
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

-- Location: IOOBUF_X31_Y67_N23
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

-- Location: IOOBUF_X81_Y16_N2
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

-- Location: IOOBUF_X26_Y67_N23
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

-- Location: IOOBUF_X33_Y0_N2
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

-- Location: IOOBUF_X33_Y67_N2
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

-- Location: IOOBUF_X42_Y0_N2
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

-- Location: IOOBUF_X81_Y14_N16
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

-- Location: IOOBUF_X49_Y0_N16
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

-- Location: IOOBUF_X33_Y0_N16
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

-- Location: IOOBUF_X49_Y0_N9
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

-- Location: IOOBUF_X44_Y67_N2
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

-- Location: IOOBUF_X42_Y0_N9
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

-- Location: IOOBUF_X52_Y67_N23
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

-- Location: IOOBUF_X52_Y67_N16
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

-- Location: IOOBUF_X31_Y67_N16
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

-- Location: IOOBUF_X81_Y16_N9
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

-- Location: IOOBUF_X49_Y67_N9
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

-- Location: IOOBUF_X29_Y67_N2
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

-- Location: IOOBUF_X29_Y67_N16
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

-- Location: IOOBUF_X49_Y67_N2
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

-- Location: IOOBUF_X49_Y0_N2
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

-- Location: IOOBUF_X81_Y4_N2
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

-- Location: IOOBUF_X42_Y0_N16
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

-- Location: IOOBUF_X42_Y67_N2
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

-- Location: IOOBUF_X52_Y0_N16
\m_read~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m_read~reg0_q\,
	devoe => ww_devoe,
	o => \m_read~output_o\);

-- Location: IOOBUF_X40_Y67_N2
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

-- Location: LCCOMB_X48_Y36_N6
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

-- Location: FF_X48_Y36_N7
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

-- Location: IOIBUF_X33_Y67_N15
\s_write~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_write,
	o => \s_write~input_o\);

-- Location: IOIBUF_X49_Y67_N15
\s_read~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_read,
	o => \s_read~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\s_addr[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(31),
	o => \s_addr[31]~input_o\);

-- Location: IOIBUF_X81_Y26_N1
\m_waitrequest~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_waitrequest,
	o => \m_waitrequest~input_o\);

-- Location: LCCOMB_X49_Y36_N20
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (!\state.WRITE_START~q\ & !\state.READ_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_START~q\,
	datab => \state.READ_START~q\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X49_Y36_N16
\Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Add0~6_combout\ & (((\tag_ready~q\ & !\state.IDLE~q\)))) # (!\Add0~6_combout\ & (((\tag_ready~q\)) # (!\s_addr[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[31]~input_o\,
	datab => \Add0~6_combout\,
	datac => \tag_ready~q\,
	datad => \state.IDLE~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X49_Y36_N17
tag_ready : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tag_ready~q\);

-- Location: LCCOMB_X49_Y36_N8
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\s_addr[31]~input_o\ & (\m_waitrequest~input_o\)) # (!\s_addr[31]~input_o\ & ((!\tag_ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[31]~input_o\,
	datac => \m_waitrequest~input_o\,
	datad => \tag_ready~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X49_Y36_N4
\Selector5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\state.IDLE~q\ & ((\s_read~input_o\) # ((\state.READ_START~q\ & \Selector5~0_combout\)))) # (!\state.IDLE~q\ & (((\state.READ_START~q\ & \Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \s_read~input_o\,
	datac => \state.READ_START~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X49_Y36_N5
\state.READ_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.READ_START~q\);

-- Location: LCCOMB_X49_Y37_N18
\Selector55~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\write_tag~q\ & (((!\WideOr18~0_combout\)) # (!\state.DONE~q\))) # (!\write_tag~q\ & (((!\Equal1~0_combout\ & !\WideOr18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DONE~q\,
	datab => \Equal1~0_combout\,
	datac => \write_tag~q\,
	datad => \WideOr18~0_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X49_Y37_N19
write_tag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector55~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_tag~q\);

-- Location: IOIBUF_X81_Y14_N1
\s_addr[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(13),
	o => \s_addr[13]~input_o\);

-- Location: IOIBUF_X81_Y41_N1
\s_addr[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(9),
	o => \s_addr[9]~input_o\);

-- Location: FF_X45_Y37_N25
\writedata_tag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[9]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(0));

-- Location: IOIBUF_X54_Y67_N15
\s_addr[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(2),
	o => \s_addr[2]~input_o\);

-- Location: IOIBUF_X81_Y43_N1
\s_addr[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(3),
	o => \s_addr[3]~input_o\);

-- Location: IOIBUF_X56_Y67_N15
\s_addr[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(4),
	o => \s_addr[4]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\s_addr[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(5),
	o => \s_addr[5]~input_o\);

-- Location: IOIBUF_X56_Y67_N22
\s_addr[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(6),
	o => \s_addr[6]~input_o\);

-- Location: IOIBUF_X54_Y67_N22
\s_addr[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(7),
	o => \s_addr[7]~input_o\);

-- Location: IOIBUF_X54_Y67_N1
\s_addr[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(8),
	o => \s_addr[8]~input_o\);

-- Location: IOIBUF_X44_Y67_N8
\s_addr[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(10),
	o => \s_addr[10]~input_o\);

-- Location: FF_X47_Y37_N21
\writedata_tag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[10]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(1));

-- Location: IOIBUF_X42_Y67_N22
\s_addr[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(11),
	o => \s_addr[11]~input_o\);

-- Location: FF_X45_Y37_N21
\writedata_tag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[11]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(2));

-- Location: IOIBUF_X42_Y67_N15
\s_addr[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(12),
	o => \s_addr[12]~input_o\);

-- Location: FF_X45_Y37_N23
\writedata_tag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[12]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(3));

-- Location: IOIBUF_X49_Y0_N22
\s_addr[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(14),
	o => \s_addr[14]~input_o\);

-- Location: FF_X49_Y37_N27
\writedata_tag[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[14]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(5));

-- Location: M9K_X46_Y37_N0
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:tag_SRAM|altsyncram:mem_block_rtl_0|altsyncram_8j41:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \write_tag~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X47_Y67_N8
\s_addr[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(26),
	o => \s_addr[26]~input_o\);

-- Location: IOIBUF_X47_Y67_N1
\s_addr[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(27),
	o => \s_addr[27]~input_o\);

-- Location: IOIBUF_X49_Y67_N22
\s_addr[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(15),
	o => \s_addr[15]~input_o\);

-- Location: FF_X49_Y37_N11
\writedata_tag[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[15]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(6));

-- Location: IOIBUF_X44_Y0_N8
\s_addr[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(16),
	o => \s_addr[16]~input_o\);

-- Location: FF_X47_Y37_N3
\writedata_tag[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[16]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(7));

-- Location: IOIBUF_X81_Y34_N8
\s_addr[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(17),
	o => \s_addr[17]~input_o\);

-- Location: FF_X47_Y37_N25
\writedata_tag[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[17]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(8));

-- Location: IOIBUF_X81_Y34_N1
\s_addr[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(18),
	o => \s_addr[18]~input_o\);

-- Location: FF_X47_Y37_N29
\writedata_tag[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[18]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(9));

-- Location: IOIBUF_X47_Y0_N1
\s_addr[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(19),
	o => \s_addr[19]~input_o\);

-- Location: LCCOMB_X47_Y36_N28
\writedata_tag[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \writedata_tag[10]~feeder_combout\ = \s_addr[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[19]~input_o\,
	combout => \writedata_tag[10]~feeder_combout\);

-- Location: FF_X47_Y36_N29
\writedata_tag[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \writedata_tag[10]~feeder_combout\,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(10));

-- Location: IOIBUF_X31_Y67_N8
\s_addr[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(20),
	o => \s_addr[20]~input_o\);

-- Location: FF_X47_Y36_N23
\writedata_tag[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[20]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(11));

-- Location: IOIBUF_X44_Y0_N1
\s_addr[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(21),
	o => \s_addr[21]~input_o\);

-- Location: FF_X47_Y37_N7
\writedata_tag[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[21]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(12));

-- Location: IOIBUF_X44_Y0_N15
\s_addr[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(22),
	o => \s_addr[22]~input_o\);

-- Location: FF_X47_Y37_N5
\writedata_tag[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[22]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(13));

-- Location: IOIBUF_X44_Y0_N22
\s_addr[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(23),
	o => \s_addr[23]~input_o\);

-- Location: LCCOMB_X47_Y37_N8
\writedata_tag[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \writedata_tag[14]~feeder_combout\ = \s_addr[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[23]~input_o\,
	combout => \writedata_tag[14]~feeder_combout\);

-- Location: FF_X47_Y37_N9
\writedata_tag[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \writedata_tag[14]~feeder_combout\,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(14));

-- Location: IOIBUF_X33_Y67_N22
\s_addr[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(24),
	o => \s_addr[24]~input_o\);

-- Location: LCCOMB_X47_Y37_N26
\writedata_tag[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \writedata_tag[15]~feeder_combout\ = \s_addr[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[24]~input_o\,
	combout => \writedata_tag[15]~feeder_combout\);

-- Location: FF_X47_Y37_N27
\writedata_tag[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \writedata_tag[15]~feeder_combout\,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(15));

-- Location: IOIBUF_X40_Y0_N15
\s_addr[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(25),
	o => \s_addr[25]~input_o\);

-- Location: FF_X47_Y37_N15
\writedata_tag[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[25]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(16));

-- Location: FF_X47_Y36_N11
\writedata_tag[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[26]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(17));

-- Location: FF_X47_Y36_N3
\writedata_tag[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[27]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(18));

-- Location: IOIBUF_X44_Y67_N15
\s_addr[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(28),
	o => \s_addr[28]~input_o\);

-- Location: FF_X45_Y37_N15
\writedata_tag[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[28]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(19));

-- Location: IOIBUF_X44_Y67_N22
\s_addr[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(29),
	o => \s_addr[29]~input_o\);

-- Location: LCCOMB_X45_Y37_N0
\writedata_tag[20]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \writedata_tag[20]~feeder_combout\ = \s_addr[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[29]~input_o\,
	combout => \writedata_tag[20]~feeder_combout\);

-- Location: FF_X45_Y37_N1
\writedata_tag[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \writedata_tag[20]~feeder_combout\,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(20));

-- Location: IOIBUF_X47_Y0_N8
\s_addr[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(30),
	o => \s_addr[30]~input_o\);

-- Location: LCCOMB_X47_Y36_N0
\writedata_tag[21]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \writedata_tag[21]~feeder_combout\ = \s_addr[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[30]~input_o\,
	combout => \writedata_tag[21]~feeder_combout\);

-- Location: FF_X47_Y36_N1
\writedata_tag[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \writedata_tag[21]~feeder_combout\,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(21));

-- Location: LCCOMB_X52_Y37_N10
\writedata_tag[22]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \writedata_tag[22]~2_combout\ = (!\reset~input_o\ & (!\Equal1~0_combout\ & ((\state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\) # (\state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datab => \reset~input_o\,
	datac => \state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datad => \Equal1~0_combout\,
	combout => \writedata_tag[22]~2_combout\);

-- Location: LCCOMB_X52_Y37_N0
\writedata_tag[22]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \writedata_tag[22]~3_combout\ = (\writedata_tag[22]~2_combout\ & (\state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\)) # (!\writedata_tag[22]~2_combout\ & ((writedata_tag(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datac => writedata_tag(22),
	datad => \writedata_tag[22]~2_combout\,
	combout => \writedata_tag[22]~3_combout\);

-- Location: FF_X52_Y37_N1
\writedata_tag[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \writedata_tag[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(22));

-- Location: M9K_X46_Y37_N0
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cache_SRAM:tag_SRAM|altsyncram:mem_block_rtl_0|altsyncram_8j41:auto_generated|ALTSYNCRAM",
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
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \write_tag~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X48_Y37_N10
\Equal0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\s_addr[26]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ & (\s_addr[27]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\)))) # (!\s_addr[26]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ & (\s_addr[27]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[26]~input_o\,
	datab => \s_addr[27]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X48_Y37_N8
\Equal0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\s_addr[30]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ & (\s_addr[31]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\)))) # (!\s_addr[30]~input_o\ & 
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
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X47_Y37_N24
\Equal0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~12_combout\ = \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ $ (\s_addr[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datad => \s_addr[29]~input_o\,
	combout => \Equal0~12_combout\);

-- Location: LCCOMB_X48_Y37_N14
\Equal0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~13_combout\ = (\Equal0~11_combout\ & (!\Equal0~12_combout\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ $ (!\s_addr[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datab => \s_addr[28]~input_o\,
	datac => \Equal0~11_combout\,
	datad => \Equal0~12_combout\,
	combout => \Equal0~13_combout\);

-- Location: LCCOMB_X47_Y37_N0
\Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ & (\s_addr[23]~input_o\ & (\s_addr[22]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)))) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ & 
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
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X47_Y37_N18
\Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\s_addr[24]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ & (\s_addr[25]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\)))) # (!\s_addr[24]~input_o\ & 
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
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X47_Y37_N6
\Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\s_addr[20]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ $ (!\s_addr[21]~input_o\)))) # (!\s_addr[20]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ $ (!\s_addr[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[20]~input_o\,
	datab => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datac => \s_addr[21]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X47_Y37_N28
\Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ & (\s_addr[18]~input_o\ & (\s_addr[19]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\)))) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ & 
-- (!\s_addr[18]~input_o\ & (\s_addr[19]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datab => \s_addr[19]~input_o\,
	datac => \s_addr[18]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X48_Y37_N4
\Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~7_combout\ & (\Equal0~8_combout\ & (\Equal0~6_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X49_Y37_N4
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\s_addr[14]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\ & (\s_addr[15]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\)))) # (!\s_addr[14]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\ & (\s_addr[15]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[14]~input_o\,
	datab => \s_addr[15]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X47_Y37_N20
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\s_addr[11]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (!\s_addr[10]~input_o\)))) # (!\s_addr[11]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (!\s_addr[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[11]~input_o\,
	datab => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \s_addr[10]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X45_Y37_N4
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\s_addr[13]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ & (\s_addr[12]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\)))) # (!\s_addr[13]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ & (\s_addr[12]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[13]~input_o\,
	datab => \s_addr[12]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X47_Y37_N2
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\s_addr[17]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ & (\s_addr[16]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\)))) # (!\s_addr[17]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ & (\s_addr[16]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[17]~input_o\,
	datab => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	datac => \s_addr[16]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X48_Y37_N6
\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X48_Y37_N24
\Equal0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~14_combout\ = (\Equal0~10_combout\ & (\Equal0~13_combout\ & (\Equal0~9_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \Equal0~13_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~14_combout\);

-- Location: LCCOMB_X48_Y37_N30
\Selector12~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~5_combout\ = (!\s_addr[31]~input_o\ & (\tag_ready~q\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ & !\Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[31]~input_o\,
	datab => \tag_ready~q\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \Equal0~14_combout\,
	combout => \Selector12~5_combout\);

-- Location: LCCOMB_X48_Y36_N10
\Selector12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~3_combout\ = (\state.WRITE_FLUSH_TO_MEM~q\ & ((\m_waitrequest~input_o\) # ((\Equal1~0_combout\ & \state.WRITE_FLUSH_TO_MEM_DEASSERT~q\)))) # (!\state.WRITE_FLUSH_TO_MEM~q\ & (\Equal1~0_combout\ & (\state.WRITE_FLUSH_TO_MEM_DEASSERT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_FLUSH_TO_MEM~q\,
	datab => \Equal1~0_combout\,
	datac => \state.WRITE_FLUSH_TO_MEM_DEASSERT~q\,
	datad => \m_waitrequest~input_o\,
	combout => \Selector12~3_combout\);

-- Location: LCCOMB_X48_Y36_N26
\Selector12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~4_combout\ = (\Selector12~3_combout\) # ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ & (\state.WRITE_START~q\ & \Selector12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datab => \state.WRITE_START~q\,
	datac => \Selector12~5_combout\,
	datad => \Selector12~3_combout\,
	combout => \Selector12~4_combout\);

-- Location: FF_X48_Y36_N27
\state.WRITE_FLUSH_TO_MEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector12~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WRITE_FLUSH_TO_MEM~q\);

-- Location: LCCOMB_X49_Y38_N12
\word_select[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_select[1]~3_combout\ = (!\m_waitrequest~input_o\ & \state.WRITE_FLUSH_TO_MEM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_waitrequest~input_o\,
	datad => \state.WRITE_FLUSH_TO_MEM~q\,
	combout => \word_select[1]~3_combout\);

-- Location: LCCOMB_X49_Y38_N0
\state.WRITE_FLUSH_TO_MEM_DEASSERT~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.WRITE_FLUSH_TO_MEM_DEASSERT~feeder_combout\ = \word_select[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \word_select[1]~3_combout\,
	combout => \state.WRITE_FLUSH_TO_MEM_DEASSERT~feeder_combout\);

-- Location: FF_X49_Y38_N1
\state.WRITE_FLUSH_TO_MEM_DEASSERT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.WRITE_FLUSH_TO_MEM_DEASSERT~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WRITE_FLUSH_TO_MEM_DEASSERT~q\);

-- Location: LCCOMB_X49_Y38_N22
\Selector8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\state.WRITE_GET_BLOCK_FROM_MEM~q\ & ((\m_waitrequest~input_o\) # ((\state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\ & \Equal1~0_combout\)))) # (!\state.WRITE_GET_BLOCK_FROM_MEM~q\ & (\state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\ & 
-- ((\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_GET_BLOCK_FROM_MEM~q\,
	datab => \state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datac => \m_waitrequest~input_o\,
	datad => \Equal1~0_combout\,
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X49_Y38_N6
\Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\tag_ready~q\ & (!\s_addr[31]~input_o\ & \state.WRITE_START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_ready~q\,
	datab => \s_addr[31]~input_o\,
	datac => \state.WRITE_START~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X49_Y38_N24
\Selector8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\ & (((!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ & !\Equal0~14_combout\)) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \Equal0~14_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X49_Y38_N30
\Selector8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = (\Selector8~2_combout\) # ((\Selector8~1_combout\) # ((\state.WRITE_FLUSH_TO_MEM_DEASSERT~q\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_FLUSH_TO_MEM_DEASSERT~q\,
	datab => \Equal1~0_combout\,
	datac => \Selector8~2_combout\,
	datad => \Selector8~1_combout\,
	combout => \Selector8~3_combout\);

-- Location: FF_X49_Y38_N31
\state.WRITE_GET_BLOCK_FROM_MEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector8~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WRITE_GET_BLOCK_FROM_MEM~q\);

-- Location: LCCOMB_X49_Y38_N2
\word_select[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_select[1]~4_combout\ = (\state.WRITE_GET_BLOCK_FROM_MEM~q\ & !\m_waitrequest~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_GET_BLOCK_FROM_MEM~q\,
	datac => \m_waitrequest~input_o\,
	combout => \word_select[1]~4_combout\);

-- Location: LCCOMB_X50_Y38_N28
\state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~feeder_combout\ = \word_select[1]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \word_select[1]~4_combout\,
	combout => \state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~feeder_combout\);

-- Location: FF_X50_Y38_N29
\state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\);

-- Location: LCCOMB_X49_Y36_N26
\writedata_tag[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \writedata_tag[0]~4_combout\ = (!\reset~input_o\ & (!\Equal1~0_combout\ & ((\state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\) # (\state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datab => \reset~input_o\,
	datac => \Equal1~0_combout\,
	datad => \state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	combout => \writedata_tag[0]~4_combout\);

-- Location: FF_X45_Y37_N11
\writedata_tag[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[13]~input_o\,
	sload => VCC,
	ena => \writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writedata_tag(4));

-- Location: LCCOMB_X49_Y36_N12
\Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & ((\m_waitrequest~input_o\) # ((\Equal1~0_combout\ & \state.READ_FLUSH_TO_MEM_DEASSERT~q\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & (\Equal1~0_combout\ & ((\state.READ_FLUSH_TO_MEM_DEASSERT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_FLUSH_TO_MEM~q\,
	datab => \Equal1~0_combout\,
	datac => \m_waitrequest~input_o\,
	datad => \state.READ_FLUSH_TO_MEM_DEASSERT~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X48_Y36_N20
\Selector10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\) # ((!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ & (\Selector12~5_combout\ & \state.READ_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datab => \Selector10~0_combout\,
	datac => \Selector12~5_combout\,
	datad => \state.READ_START~q\,
	combout => \Selector10~1_combout\);

-- Location: FF_X48_Y36_N21
\state.READ_FLUSH_TO_MEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector10~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.READ_FLUSH_TO_MEM~q\);

-- Location: LCCOMB_X49_Y38_N16
\word_select[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_select[1]~5_combout\ = (!\m_waitrequest~input_o\ & \state.READ_FLUSH_TO_MEM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_waitrequest~input_o\,
	datad => \state.READ_FLUSH_TO_MEM~q\,
	combout => \word_select[1]~5_combout\);

-- Location: FF_X49_Y36_N21
\state.READ_FLUSH_TO_MEM_DEASSERT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \word_select[1]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.READ_FLUSH_TO_MEM_DEASSERT~q\);

-- Location: LCCOMB_X48_Y36_N30
\Selector6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\state.READ_GET_BLOCK_FROM_MEM~q\ & ((\m_waitrequest~input_o\) # ((\state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\ & \Equal1~0_combout\)))) # (!\state.READ_GET_BLOCK_FROM_MEM~q\ & (\state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\ & 
-- (\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_GET_BLOCK_FROM_MEM~q\,
	datab => \state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datac => \Equal1~0_combout\,
	datad => \m_waitrequest~input_o\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X49_Y36_N18
\Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.READ_START~q\ & (!\s_addr[31]~input_o\ & \tag_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.READ_START~q\,
	datac => \s_addr[31]~input_o\,
	datad => \tag_ready~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X48_Y36_N28
\Selector6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ & !\Equal0~14_combout\)) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datad => \Equal0~14_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X48_Y36_N12
\Selector6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (\Selector6~2_combout\) # ((\Selector6~1_combout\) # ((!\Equal1~0_combout\ & \state.READ_FLUSH_TO_MEM_DEASSERT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \state.READ_FLUSH_TO_MEM_DEASSERT~q\,
	datac => \Selector6~2_combout\,
	datad => \Selector6~1_combout\,
	combout => \Selector6~3_combout\);

-- Location: FF_X48_Y36_N13
\state.READ_GET_BLOCK_FROM_MEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector6~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.READ_GET_BLOCK_FROM_MEM~q\);

-- Location: LCCOMB_X48_Y36_N16
\word_select[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_select[1]~2_combout\ = (!\m_waitrequest~input_o\ & \state.READ_GET_BLOCK_FROM_MEM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_waitrequest~input_o\,
	datad => \state.READ_GET_BLOCK_FROM_MEM~q\,
	combout => \word_select[1]~2_combout\);

-- Location: LCCOMB_X48_Y36_N0
\state.READ_GET_BLOCK_FROM_MEM_DEASSERT~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.READ_GET_BLOCK_FROM_MEM_DEASSERT~feeder_combout\ = \word_select[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \word_select[1]~2_combout\,
	combout => \state.READ_GET_BLOCK_FROM_MEM_DEASSERT~feeder_combout\);

-- Location: FF_X48_Y36_N1
\state.READ_GET_BLOCK_FROM_MEM_DEASSERT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.READ_GET_BLOCK_FROM_MEM_DEASSERT~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\);

-- Location: LCCOMB_X49_Y37_N10
\WideOr18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr18~0_combout\ = (!\state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\ & !\state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datad => \state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	combout => \WideOr18~0_combout\);

-- Location: LCCOMB_X48_Y36_N14
\out_count[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_count[2]~0_combout\ = (\Equal1~0_combout\ & (((\state.WRITE_FLUSH_TO_MEM_DEASSERT~q\) # (\state.READ_FLUSH_TO_MEM_DEASSERT~q\)) # (!\WideOr18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr18~0_combout\,
	datab => \state.WRITE_FLUSH_TO_MEM_DEASSERT~q\,
	datac => \state.READ_FLUSH_TO_MEM_DEASSERT~q\,
	datad => \Equal1~0_combout\,
	combout => \out_count[2]~0_combout\);

-- Location: LCCOMB_X48_Y36_N18
\Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\state.READ_GET_BLOCK_FROM_MEM~q\ & (!\state.READ_FLUSH_TO_MEM~q\ & (!\state.WRITE_FLUSH_TO_MEM~q\ & !\state.WRITE_GET_BLOCK_FROM_MEM~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_GET_BLOCK_FROM_MEM~q\,
	datab => \state.READ_FLUSH_TO_MEM~q\,
	datac => \state.WRITE_FLUSH_TO_MEM~q\,
	datad => \state.WRITE_GET_BLOCK_FROM_MEM~q\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X49_Y36_N0
\out_count[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_count[2]~1_combout\ = (\state.IDLE~q\) # ((\reset~input_o\) # ((\state.DONE~q\) # (!\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \reset~input_o\,
	datac => \Add0~6_combout\,
	datad => \state.DONE~q\,
	combout => \out_count[2]~1_combout\);

-- Location: LCCOMB_X49_Y36_N10
\out_count[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_count[2]~2_combout\ = (\out_count[2]~0_combout\) # ((\out_count[2]~1_combout\) # ((!\Selector16~0_combout\ & \m_waitrequest~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_count[2]~0_combout\,
	datab => \Selector16~0_combout\,
	datac => \m_waitrequest~input_o\,
	datad => \out_count[2]~1_combout\,
	combout => \out_count[2]~2_combout\);

-- Location: LCCOMB_X48_Y36_N4
\out_count[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_count[0]~3_combout\ = (\WideOr18~0_combout\ & (!\state.WRITE_FLUSH_TO_MEM_DEASSERT~q\ & (!\state.READ_FLUSH_TO_MEM_DEASSERT~q\ & \state.RST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr18~0_combout\,
	datab => \state.WRITE_FLUSH_TO_MEM_DEASSERT~q\,
	datac => \state.READ_FLUSH_TO_MEM_DEASSERT~q\,
	datad => \state.RST~q\,
	combout => \out_count[0]~3_combout\);

-- Location: LCCOMB_X52_Y37_N2
\out_count[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_count[0]~5_combout\ = (\out_count[2]~2_combout\ & (out_count(0))) # (!\out_count[2]~2_combout\ & (!out_count(0) & \out_count[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_count[2]~2_combout\,
	datac => out_count(0),
	datad => \out_count[0]~3_combout\,
	combout => \out_count[0]~5_combout\);

-- Location: FF_X52_Y37_N3
\out_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \out_count[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_count(0));

-- Location: LCCOMB_X52_Y37_N4
\out_count[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_count[1]~4_combout\ = (\out_count[2]~2_combout\ & (((out_count(1))))) # (!\out_count[2]~2_combout\ & (\out_count[0]~3_combout\ & (out_count(1) $ (out_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_count[2]~2_combout\,
	datab => \out_count[0]~3_combout\,
	datac => out_count(1),
	datad => out_count(0),
	combout => \out_count[1]~4_combout\);

-- Location: FF_X52_Y37_N5
\out_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \out_count[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_count(1));

-- Location: LCCOMB_X52_Y37_N22
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = out_count(2) $ (((out_count(0) & out_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_count(0),
	datac => out_count(1),
	datad => out_count(2),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X52_Y37_N12
\out_count[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_count[2]~6_combout\ = (\out_count[2]~2_combout\ & (((out_count(2))))) # (!\out_count[2]~2_combout\ & (\Add1~0_combout\ & ((\out_count[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_count[2]~2_combout\,
	datab => \Add1~0_combout\,
	datac => out_count(2),
	datad => \out_count[0]~3_combout\,
	combout => \out_count[2]~6_combout\);

-- Location: FF_X52_Y37_N13
\out_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \out_count[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => out_count(2));

-- Location: LCCOMB_X52_Y37_N30
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (out_count(0)) # ((out_count(1)) # (!out_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_count(0),
	datac => out_count(1),
	datad => out_count(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X49_Y37_N0
\Selector16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\Equal1~0_combout\) # ((!\state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\ & !\state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datac => \state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X48_Y37_N0
\Selector15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~4_combout\ = (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ & \Equal0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \Equal0~14_combout\,
	combout => \Selector15~4_combout\);

-- Location: LCCOMB_X48_Y37_N12
\Selector15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~5_combout\ = (\s_addr[31]~input_o\ & (!\m_waitrequest~input_o\)) # (!\s_addr[31]~input_o\ & (((\tag_ready~q\ & \Selector15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_waitrequest~input_o\,
	datab => \tag_ready~q\,
	datac => \s_addr[31]~input_o\,
	datad => \Selector15~4_combout\,
	combout => \Selector15~5_combout\);

-- Location: LCCOMB_X48_Y37_N20
\Selector15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~6_combout\ = ((\Selector15~5_combout\ & ((\state.WRITE_START~q\) # (\state.READ_START~q\)))) # (!\Selector16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_START~q\,
	datab => \state.READ_START~q\,
	datac => \Selector16~1_combout\,
	datad => \Selector15~5_combout\,
	combout => \Selector15~6_combout\);

-- Location: FF_X48_Y37_N21
\state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector15~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DONE~q\);

-- Location: LCCOMB_X49_Y36_N6
\Selector4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = ((\state.DONE~q\) # ((!\s_write~input_o\ & \Selector4~0_combout\))) # (!\state.RST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RST~q\,
	datab => \s_write~input_o\,
	datac => \Selector4~0_combout\,
	datad => \state.DONE~q\,
	combout => \Selector4~1_combout\);

-- Location: FF_X49_Y36_N7
\state.IDLE\ : dffeas
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
	q => \state.IDLE~q\);

-- Location: LCCOMB_X49_Y36_N30
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.IDLE~q\ & !\s_read~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datac => \s_read~input_o\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X49_Y36_N22
\Selector14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\Selector4~0_combout\ & ((\s_write~input_o\) # ((\state.WRITE_START~q\ & \Selector5~0_combout\)))) # (!\Selector4~0_combout\ & (((\state.WRITE_START~q\ & \Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \s_write~input_o\,
	datac => \state.WRITE_START~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X49_Y36_N23
\state.WRITE_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WRITE_START~q\);

-- Location: LCCOMB_X49_Y38_N28
\m_addr[0]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[0]~88_combout\ = (!\s_addr[31]~input_o\ & ((\state.WRITE_START~q\) # (\state.READ_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.WRITE_START~q\,
	datac => \s_addr[31]~input_o\,
	datad => \state.READ_START~q\,
	combout => \m_addr[0]~88_combout\);

-- Location: LCCOMB_X48_Y36_N8
\Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.RST~q\ & ((\Equal1~0_combout\) # ((!\state.READ_FLUSH_TO_MEM_DEASSERT~q\ & !\state.WRITE_FLUSH_TO_MEM_DEASSERT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.RST~q\,
	datab => \state.READ_FLUSH_TO_MEM_DEASSERT~q\,
	datac => \state.WRITE_FLUSH_TO_MEM_DEASSERT~q\,
	datad => \Equal1~0_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X49_Y38_N14
\Selector16~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~4_combout\ = (transaction(2) & ((\m_waitrequest~input_o\) # ((\Selector16~0_combout\)))) # (!transaction(2) & (((\Selector16~0_combout\ & \Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_waitrequest~input_o\,
	datab => transaction(2),
	datac => \Selector16~0_combout\,
	datad => \Selector17~0_combout\,
	combout => \Selector16~4_combout\);

-- Location: LCCOMB_X49_Y38_N4
\Selector16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (transaction(2) & ((\m_waitrequest~input_o\) # (\Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_waitrequest~input_o\,
	datab => transaction(2),
	datac => \Selector16~0_combout\,
	combout => \Selector16~2_combout\);

-- Location: LCCOMB_X49_Y38_N10
\Selector16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = (\Selector16~2_combout\ & (((!\Equal0~14_combout\) # (!\tag_ready~q\)) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datab => \Selector16~2_combout\,
	datac => \tag_ready~q\,
	datad => \Equal0~14_combout\,
	combout => \Selector16~3_combout\);

-- Location: LCCOMB_X49_Y38_N20
\Selector16~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~5_combout\ = (\Selector16~1_combout\ & ((\Selector16~3_combout\) # ((!\m_addr[0]~88_combout\ & \Selector16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_addr[0]~88_combout\,
	datab => \Selector16~1_combout\,
	datac => \Selector16~4_combout\,
	datad => \Selector16~3_combout\,
	combout => \Selector16~5_combout\);

-- Location: FF_X49_Y38_N21
\transaction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector16~5_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transaction(2));

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

-- Location: IOIBUF_X81_Y25_N8
\s_addr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(1),
	o => \s_addr[1]~input_o\);

-- Location: LCCOMB_X52_Y37_N14
\Selector51~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\Selector16~0_combout\ & ((\s_addr[1]~input_o\))) # (!\Selector16~0_combout\ & (out_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => out_count(1),
	datac => \Selector16~0_combout\,
	datad => \s_addr[1]~input_o\,
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X53_Y37_N16
\word_select[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_select[1]~feeder_combout\ = \Selector51~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector51~0_combout\,
	combout => \word_select[1]~feeder_combout\);

-- Location: LCCOMB_X49_Y38_N26
\word_select[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_select[1]~6_combout\ = (!\word_select[1]~3_combout\ & (!\word_select[1]~5_combout\ & (!\word_select[1]~2_combout\ & !\word_select[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_select[1]~3_combout\,
	datab => \word_select[1]~5_combout\,
	datac => \word_select[1]~2_combout\,
	datad => \word_select[1]~4_combout\,
	combout => \word_select[1]~6_combout\);

-- Location: LCCOMB_X49_Y37_N30
\word_select[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_select[1]~9_combout\ = (\Selector16~1_combout\ & (((!\state.READ_START~q\ & !\state.WRITE_START~q\)) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_START~q\,
	datab => \Selector16~1_combout\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \state.WRITE_START~q\,
	combout => \word_select[1]~9_combout\);

-- Location: LCCOMB_X49_Y37_N26
\Selector12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (!\s_addr[31]~input_o\ & \tag_ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[31]~input_o\,
	datad => \tag_ready~q\,
	combout => \Selector12~2_combout\);

-- Location: LCCOMB_X48_Y37_N28
\word_select[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_select[1]~7_combout\ = (\WideOr18~0_combout\ & ((\Add0~6_combout\) # ((!\Equal0~14_combout\) # (!\Selector12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Selector12~2_combout\,
	datac => \WideOr18~0_combout\,
	datad => \Equal0~14_combout\,
	combout => \word_select[1]~7_combout\);

-- Location: LCCOMB_X48_Y37_N26
\word_select[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_select[1]~8_combout\ = (!\reset~input_o\ & (((!\word_select[1]~9_combout\ & !\word_select[1]~7_combout\)) # (!\word_select[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \word_select[1]~6_combout\,
	datac => \word_select[1]~9_combout\,
	datad => \word_select[1]~7_combout\,
	combout => \word_select[1]~8_combout\);

-- Location: FF_X53_Y37_N17
\word_select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \word_select[1]~feeder_combout\,
	ena => \word_select[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => word_select(1));

-- Location: IOIBUF_X29_Y67_N22
\s_addr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(0),
	o => \s_addr[0]~input_o\);

-- Location: LCCOMB_X52_Y37_N24
\Selector52~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\Selector16~0_combout\ & (\s_addr[0]~input_o\)) # (!\Selector16~0_combout\ & ((out_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector16~0_combout\,
	datac => \s_addr[0]~input_o\,
	datad => out_count(0),
	combout => \Selector52~0_combout\);

-- Location: LCCOMB_X53_Y37_N14
\word_select[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \word_select[0]~feeder_combout\ = \Selector52~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector52~0_combout\,
	combout => \word_select[0]~feeder_combout\);

-- Location: FF_X53_Y37_N15
\word_select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \word_select[0]~feeder_combout\,
	ena => \word_select[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => word_select(0));

-- Location: LCCOMB_X48_Y36_N22
\Selector17~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~5_combout\ = (!\state.READ_START~q\ & (((!\state.READ_GET_BLOCK_FROM_MEM~q\ & !\state.WRITE_GET_BLOCK_FROM_MEM~q\)) # (!\m_waitrequest~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_GET_BLOCK_FROM_MEM~q\,
	datab => \state.WRITE_GET_BLOCK_FROM_MEM~q\,
	datac => \m_waitrequest~input_o\,
	datad => \state.READ_START~q\,
	combout => \Selector17~5_combout\);

-- Location: LCCOMB_X48_Y36_N24
\Selector17~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~6_combout\ = (!\state.WRITE_FLUSH_TO_MEM~q\ & (\Selector17~0_combout\ & (\Selector17~5_combout\ & !\state.READ_FLUSH_TO_MEM~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_FLUSH_TO_MEM~q\,
	datab => \Selector17~0_combout\,
	datac => \Selector17~5_combout\,
	datad => \state.READ_FLUSH_TO_MEM~q\,
	combout => \Selector17~6_combout\);

-- Location: LCCOMB_X52_Y37_N8
\Selector57~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\ & (!out_count(0) & (!out_count(1) & out_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datab => out_count(0),
	datac => out_count(1),
	datad => out_count(2),
	combout => \Selector57~0_combout\);

-- Location: LCCOMB_X48_Y37_N2
\Selector17~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~4_combout\ = ((\tag_ready~q\ & (!\s_addr[31]~input_o\ & \Selector15~4_combout\))) # (!\state.WRITE_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_START~q\,
	datab => \tag_ready~q\,
	datac => \s_addr[31]~input_o\,
	datad => \Selector15~4_combout\,
	combout => \Selector17~4_combout\);

-- Location: LCCOMB_X52_Y37_N16
\Selector17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (!\state.READ_START~q\ & ((!\state.WRITE_START~q\) # (!\s_addr[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[31]~input_o\,
	datac => \state.READ_START~q\,
	datad => \state.WRITE_START~q\,
	combout => \Selector17~2_combout\);

-- Location: LCCOMB_X49_Y36_N2
\Selector17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (transaction(1) & ((\m_waitrequest~input_o\) # ((!\state.WRITE_FLUSH_TO_MEM~q\ & !\state.READ_FLUSH_TO_MEM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_FLUSH_TO_MEM~q\,
	datab => \m_waitrequest~input_o\,
	datac => transaction(1),
	datad => \state.READ_FLUSH_TO_MEM~q\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X48_Y37_N18
\Selector19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = (!\s_addr[31]~input_o\ & (((!\Equal0~14_combout\) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\)) # (!\tag_ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[31]~input_o\,
	datab => \tag_ready~q\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \Equal0~14_combout\,
	combout => \Selector19~3_combout\);

-- Location: LCCOMB_X52_Y37_N6
\Selector17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = (\Selector17~1_combout\ & ((\Selector17~2_combout\) # (\Selector19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector17~2_combout\,
	datac => \Selector17~1_combout\,
	datad => \Selector19~3_combout\,
	combout => \Selector17~3_combout\);

-- Location: LCCOMB_X52_Y37_N18
\Selector17~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~7_combout\ = (!\Selector57~0_combout\ & ((\Selector17~3_combout\) # ((\Selector17~6_combout\ & \Selector17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~6_combout\,
	datab => \Selector57~0_combout\,
	datac => \Selector17~4_combout\,
	datad => \Selector17~3_combout\,
	combout => \Selector17~7_combout\);

-- Location: FF_X52_Y37_N19
\transaction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector17~7_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transaction(1));

-- Location: LCCOMB_X59_Y39_N24
\write_one~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_one~0_combout\ = (!transaction(2) & (transaction(1) & (!word_select(1) & word_select(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datab => transaction(1),
	datac => word_select(1),
	datad => word_select(0),
	combout => \write_one~0_combout\);

-- Location: LCCOMB_X49_Y38_N18
\Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (transaction(0)) # ((\Selector17~0_combout\ & ((\Selector16~0_combout\) # (!\m_waitrequest~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_waitrequest~input_o\,
	datab => \Selector16~0_combout\,
	datac => transaction(0),
	datad => \Selector17~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X49_Y38_N8
\Selector18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (!\state.WRITE_START~q\ & (\Selector18~0_combout\ & ((\s_addr[31]~input_o\) # (!\state.READ_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_START~q\,
	datab => \state.WRITE_START~q\,
	datac => \s_addr[31]~input_o\,
	datad => \Selector18~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X49_Y37_N24
\Selector18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\Selector16~1_combout\ & ((\Selector18~1_combout\) # ((transaction(0) & \Selector19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~1_combout\,
	datab => \Selector18~1_combout\,
	datac => transaction(0),
	datad => \Selector19~3_combout\,
	combout => \Selector18~2_combout\);

-- Location: FF_X49_Y37_N25
\transaction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector18~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => transaction(0));

-- Location: IOIBUF_X81_Y11_N1
\s_writedata[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(0),
	o => \s_writedata[0]~input_o\);

-- Location: LCCOMB_X62_Y38_N20
\Mux98~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux98~0_combout\ = (transaction(0) & (\m_readdata[0]~input_o\)) # (!transaction(0) & ((\s_writedata[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(0),
	datac => \m_readdata[0]~input_o\,
	datad => \s_writedata[0]~input_o\,
	combout => \Mux98~0_combout\);

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

-- Location: IOIBUF_X58_Y67_N15
\s_writedata[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(1),
	o => \s_writedata[1]~input_o\);

-- Location: LCCOMB_X59_Y40_N0
\Mux100~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux100~0_combout\ = (transaction(0) & (\m_readdata[1]~input_o\)) # (!transaction(0) & ((\s_writedata[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[1]~input_o\,
	datac => \s_writedata[1]~input_o\,
	datad => transaction(0),
	combout => \Mux100~0_combout\);

-- Location: IOIBUF_X58_Y0_N15
\s_writedata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(2),
	o => \s_writedata[2]~input_o\);

-- Location: IOIBUF_X81_Y26_N8
\m_readdata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(2),
	o => \m_readdata[2]~input_o\);

-- Location: LCCOMB_X59_Y37_N30
\Mux102~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux102~0_combout\ = (transaction(0) & ((\m_readdata[2]~input_o\))) # (!transaction(0) & (\s_writedata[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[2]~input_o\,
	datac => transaction(0),
	datad => \m_readdata[2]~input_o\,
	combout => \Mux102~0_combout\);

-- Location: IOIBUF_X31_Y67_N1
\m_readdata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(3),
	o => \m_readdata[3]~input_o\);

-- Location: IOIBUF_X58_Y67_N22
\s_writedata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(3),
	o => \s_writedata[3]~input_o\);

-- Location: LCCOMB_X59_Y39_N2
\Mux104~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux104~0_combout\ = (transaction(0) & (\m_readdata[3]~input_o\)) # (!transaction(0) & ((\s_writedata[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[3]~input_o\,
	datac => transaction(0),
	datad => \s_writedata[3]~input_o\,
	combout => \Mux104~0_combout\);

-- Location: IOIBUF_X70_Y0_N8
\s_writedata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(4),
	o => \s_writedata[4]~input_o\);

-- Location: IOIBUF_X81_Y58_N8
\m_readdata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(4),
	o => \m_readdata[4]~input_o\);

-- Location: LCCOMB_X61_Y38_N24
\Mux106~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux106~0_combout\ = (transaction(0) & ((\m_readdata[4]~input_o\))) # (!transaction(0) & (\s_writedata[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(0),
	datac => \s_writedata[4]~input_o\,
	datad => \m_readdata[4]~input_o\,
	combout => \Mux106~0_combout\);

-- Location: IOIBUF_X54_Y0_N1
\m_readdata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(5),
	o => \m_readdata[5]~input_o\);

-- Location: IOIBUF_X81_Y53_N8
\s_writedata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(5),
	o => \s_writedata[5]~input_o\);

-- Location: LCCOMB_X59_Y39_N12
\Mux108~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux108~0_combout\ = (transaction(0) & (\m_readdata[5]~input_o\)) # (!transaction(0) & ((\s_writedata[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[5]~input_o\,
	datac => transaction(0),
	datad => \s_writedata[5]~input_o\,
	combout => \Mux108~0_combout\);

-- Location: IOIBUF_X54_Y0_N8
\s_writedata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(6),
	o => \s_writedata[6]~input_o\);

-- Location: IOIBUF_X52_Y67_N1
\m_readdata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(6),
	o => \m_readdata[6]~input_o\);

-- Location: LCCOMB_X53_Y37_N8
\Mux110~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux110~0_combout\ = (transaction(0) & ((\m_readdata[6]~input_o\))) # (!transaction(0) & (\s_writedata[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[6]~input_o\,
	datac => transaction(0),
	datad => \m_readdata[6]~input_o\,
	combout => \Mux110~0_combout\);

-- Location: IOIBUF_X54_Y0_N22
\s_writedata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(7),
	o => \s_writedata[7]~input_o\);

-- Location: IOIBUF_X54_Y67_N8
\m_readdata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(7),
	o => \m_readdata[7]~input_o\);

-- Location: LCCOMB_X53_Y37_N6
\Mux112~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux112~0_combout\ = (transaction(0) & ((\m_readdata[7]~input_o\))) # (!transaction(0) & (\s_writedata[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(0),
	datab => \s_writedata[7]~input_o\,
	datac => \m_readdata[7]~input_o\,
	combout => \Mux112~0_combout\);

-- Location: IOIBUF_X58_Y0_N1
\m_readdata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(8),
	o => \m_readdata[8]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\s_writedata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(8),
	o => \s_writedata[8]~input_o\);

-- Location: LCCOMB_X61_Y39_N20
\Mux114~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux114~0_combout\ = (transaction(0) & (\m_readdata[8]~input_o\)) # (!transaction(0) & ((\s_writedata[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[8]~input_o\,
	datab => \s_writedata[8]~input_o\,
	datad => transaction(0),
	combout => \Mux114~0_combout\);

-- Location: IOIBUF_X81_Y11_N22
\m_readdata[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(9),
	o => \m_readdata[9]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\s_writedata[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(9),
	o => \s_writedata[9]~input_o\);

-- Location: LCCOMB_X59_Y38_N10
\Mux116~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux116~0_combout\ = (transaction(0) & (\m_readdata[9]~input_o\)) # (!transaction(0) & ((\s_writedata[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(0),
	datac => \m_readdata[9]~input_o\,
	datad => \s_writedata[9]~input_o\,
	combout => \Mux116~0_combout\);

-- Location: IOIBUF_X81_Y42_N1
\m_readdata[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(10),
	o => \m_readdata[10]~input_o\);

-- Location: IOIBUF_X81_Y58_N1
\s_writedata[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(10),
	o => \s_writedata[10]~input_o\);

-- Location: LCCOMB_X62_Y38_N22
\Mux118~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux118~0_combout\ = (transaction(0) & (\m_readdata[10]~input_o\)) # (!transaction(0) & ((\s_writedata[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[10]~input_o\,
	datac => transaction(0),
	datad => \s_writedata[10]~input_o\,
	combout => \Mux118~0_combout\);

-- Location: IOIBUF_X61_Y67_N8
\m_readdata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(11),
	o => \m_readdata[11]~input_o\);

-- Location: IOIBUF_X81_Y63_N1
\s_writedata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(11),
	o => \s_writedata[11]~input_o\);

-- Location: LCCOMB_X61_Y40_N18
\Mux120~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux120~0_combout\ = (transaction(0) & (\m_readdata[11]~input_o\)) # (!transaction(0) & ((\s_writedata[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(0),
	datac => \m_readdata[11]~input_o\,
	datad => \s_writedata[11]~input_o\,
	combout => \Mux120~0_combout\);

-- Location: IOIBUF_X63_Y67_N1
\s_writedata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(12),
	o => \s_writedata[12]~input_o\);

-- Location: IOIBUF_X81_Y19_N8
\m_readdata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(12),
	o => \m_readdata[12]~input_o\);

-- Location: LCCOMB_X62_Y38_N8
\Mux122~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux122~0_combout\ = (transaction(0) & ((\m_readdata[12]~input_o\))) # (!transaction(0) & (\s_writedata[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(0),
	datac => \s_writedata[12]~input_o\,
	datad => \m_readdata[12]~input_o\,
	combout => \Mux122~0_combout\);

-- Location: IOIBUF_X81_Y19_N1
\s_writedata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(13),
	o => \s_writedata[13]~input_o\);

-- Location: IOIBUF_X81_Y7_N1
\m_readdata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(13),
	o => \m_readdata[13]~input_o\);

-- Location: LCCOMB_X62_Y38_N2
\Mux124~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux124~0_combout\ = (transaction(0) & ((\m_readdata[13]~input_o\))) # (!transaction(0) & (\s_writedata[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[13]~input_o\,
	datac => transaction(0),
	datad => \m_readdata[13]~input_o\,
	combout => \Mux124~0_combout\);

-- Location: M9K_X60_Y39_N0
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
	portawe => \write_one~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X59_Y40_N22
\write_zero~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_zero~0_combout\ = (!word_select(1) & (!transaction(2) & (transaction(1) & !word_select(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(1),
	datab => transaction(2),
	datac => transaction(1),
	datad => word_select(0),
	combout => \write_zero~0_combout\);

-- Location: M9K_X60_Y40_N0
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
	portawe => \write_zero~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X61_Y39_N12
\Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (word_select(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\) # ((word_select(1))))) # (!word_select(0) & (((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ & 
-- !word_select(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => word_select(1),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X59_Y38_N8
\write_three~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_three~0_combout\ = (!transaction(2) & (word_select(1) & (transaction(1) & word_select(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datab => word_select(1),
	datac => transaction(1),
	datad => word_select(0),
	combout => \write_three~0_combout\);

-- Location: M9K_X60_Y38_N0
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
	portawe => \write_three~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X59_Y38_N30
\write_two~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_two~0_combout\ = (!transaction(2) & (word_select(1) & (transaction(1) & !word_select(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datab => word_select(1),
	datac => transaction(1),
	datad => word_select(0),
	combout => \write_two~0_combout\);

-- Location: M9K_X60_Y37_N0
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
	portawe => \write_two~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X61_Y38_N8
\Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (word_select(1) & ((\Mux31~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (!\Mux31~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\))))) # 
-- (!word_select(1) & (\Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(1),
	datab => \Mux31~0_combout\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X62_Y38_N16
\Mux65~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (transaction(2) & (\m_readdata[0]~input_o\)) # (!transaction(2) & ((\Mux31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datac => \m_readdata[0]~input_o\,
	datad => \Mux31~1_combout\,
	combout => \Mux65~0_combout\);

-- Location: LCCOMB_X59_Y40_N16
\Mux97~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux97~0_combout\ = (!transaction(1) & (transaction(2) $ (!transaction(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(1),
	datab => transaction(2),
	datad => transaction(0),
	combout => \Mux97~0_combout\);

-- Location: LCCOMB_X59_Y40_N18
\Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (word_select(0) & (((word_select(1))))) # (!word_select(0) & ((word_select(1) & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\))) # (!word_select(1) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datac => word_select(1),
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X59_Y40_N8
\Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (word_select(0) & ((\Mux30~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\)) # (!\Mux30~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\))))) # (!word_select(0) & 
-- (((\Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \Mux30~0_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X59_Y40_N6
\Mux66~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = (transaction(2) & (\m_readdata[1]~input_o\)) # (!transaction(2) & ((\Mux30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[1]~input_o\,
	datab => transaction(2),
	datac => \Mux30~1_combout\,
	combout => \Mux66~0_combout\);

-- Location: LCCOMB_X59_Y39_N0
\Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (word_select(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\) # ((word_select(1))))) # (!word_select(0) & (((!word_select(1) & \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datac => word_select(1),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X59_Y37_N0
\Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\) # (!word_select(1))))) # (!\Mux29~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ & (word_select(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datac => word_select(1),
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X59_Y37_N22
\Mux67~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (transaction(2) & ((\m_readdata[2]~input_o\))) # (!transaction(2) & (\Mux29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datab => \Mux29~1_combout\,
	datad => \m_readdata[2]~input_o\,
	combout => \Mux67~0_combout\);

-- Location: LCCOMB_X59_Y37_N8
\Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (word_select(0) & (((word_select(1))))) # (!word_select(0) & ((word_select(1) & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\)) # (!word_select(1) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	datac => word_select(1),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X59_Y39_N10
\Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (word_select(0) & ((\Mux28~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\)) # (!\Mux28~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\))))) # (!word_select(0) & 
-- (((\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	datac => \Mux28~0_combout\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X59_Y39_N8
\Mux68~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (transaction(2) & (\m_readdata[3]~input_o\)) # (!transaction(2) & ((\Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datac => \m_readdata[3]~input_o\,
	datad => \Mux28~1_combout\,
	combout => \Mux68~0_combout\);

-- Location: LCCOMB_X61_Y38_N10
\Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (word_select(1) & (((word_select(0))))) # (!word_select(1) & ((word_select(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\))) # (!word_select(0) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(1),
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	datac => word_select(0),
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X61_Y38_N0
\Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (word_select(1) & ((\Mux27~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\))) # (!\Mux27~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\)))) # (!word_select(1) & 
-- (((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	datac => word_select(1),
	datad => \Mux27~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X61_Y38_N26
\Mux69~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (transaction(2) & ((\m_readdata[4]~input_o\))) # (!transaction(2) & (\Mux27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datab => \Mux27~1_combout\,
	datad => \m_readdata[4]~input_o\,
	combout => \Mux69~0_combout\);

-- Location: LCCOMB_X59_Y37_N6
\Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (word_select(0) & (((word_select(1))))) # (!word_select(0) & ((word_select(1) & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\)) # (!word_select(1) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	datac => word_select(1),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X59_Y39_N26
\Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (word_select(0) & ((\Mux26~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\))) # (!\Mux26~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\)))) # (!word_select(0) & 
-- (\Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \Mux26~0_combout\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X59_Y39_N16
\Mux70~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = (transaction(2) & (\m_readdata[5]~input_o\)) # (!transaction(2) & ((\Mux26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datab => \m_readdata[5]~input_o\,
	datac => \Mux26~1_combout\,
	combout => \Mux70~0_combout\);

-- Location: LCCOMB_X61_Y40_N4
\Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (word_select(1) & (((word_select(0))))) # (!word_select(1) & ((word_select(0) & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\)) # (!word_select(0) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datac => word_select(1),
	datad => word_select(0),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X61_Y37_N4
\Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\) # (!word_select(1))))) # (!\Mux25~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ & ((word_select(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datad => word_select(1),
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X53_Y37_N20
\Mux71~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = (transaction(2) & ((\m_readdata[6]~input_o\))) # (!transaction(2) & (\Mux25~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datac => transaction(2),
	datad => \m_readdata[6]~input_o\,
	combout => \Mux71~0_combout\);

-- Location: LCCOMB_X53_Y37_N2
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (word_select(1) & (((word_select(0)) # (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\)))) # (!word_select(1) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ & (!word_select(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	datab => word_select(1),
	datac => word_select(0),
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X53_Y37_N0
\Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (word_select(0) & ((\Mux24~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\))) # (!\Mux24~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\)))) # (!word_select(0) & 
-- (((\Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	datab => word_select(0),
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	datad => \Mux24~0_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X53_Y37_N10
\Mux72~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux72~0_combout\ = (transaction(2) & (\m_readdata[7]~input_o\)) # (!transaction(2) & ((\Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[7]~input_o\,
	datac => transaction(2),
	datad => \Mux24~1_combout\,
	combout => \Mux72~0_combout\);

-- Location: LCCOMB_X61_Y39_N6
\Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (word_select(0) & ((word_select(1)) # ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\)))) # (!word_select(0) & (!word_select(1) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => word_select(1),
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X61_Y39_N4
\Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\) # (!word_select(1))))) # (!\Mux23~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ & ((word_select(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datad => word_select(1),
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X61_Y39_N26
\Mux73~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux73~0_combout\ = (transaction(2) & ((\m_readdata[8]~input_o\))) # (!transaction(2) & (\Mux23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(2),
	datac => \Mux23~1_combout\,
	datad => \m_readdata[8]~input_o\,
	combout => \Mux73~0_combout\);

-- Location: LCCOMB_X59_Y40_N20
\Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (word_select(1) & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\) # ((word_select(0))))) # (!word_select(1) & (((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ & !word_select(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(1),
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	datad => word_select(0),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X59_Y38_N24
\Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (word_select(0) & ((\Mux22~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\)) # (!\Mux22~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\))))) # (!word_select(0) & 
-- (\Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \Mux22~0_combout\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X59_Y38_N26
\Mux74~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux74~0_combout\ = (transaction(2) & (\m_readdata[9]~input_o\)) # (!transaction(2) & ((\Mux22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datac => \m_readdata[9]~input_o\,
	datad => \Mux22~1_combout\,
	combout => \Mux74~0_combout\);

-- Location: LCCOMB_X61_Y38_N12
\Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (word_select(1) & (((word_select(0))))) # (!word_select(1) & ((word_select(0) & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\)) # (!word_select(0) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(1),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	datac => word_select(0),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X61_Y38_N2
\Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (word_select(1) & ((\Mux21~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\))) # (!\Mux21~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\)))) # (!word_select(1) & 
-- (((\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	datac => word_select(1),
	datad => \Mux21~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X62_Y38_N6
\Mux75~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux75~0_combout\ = (transaction(2) & ((\m_readdata[10]~input_o\))) # (!transaction(2) & (\Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~1_combout\,
	datac => transaction(2),
	datad => \m_readdata[10]~input_o\,
	combout => \Mux75~0_combout\);

-- Location: LCCOMB_X61_Y40_N2
\Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (word_select(0) & (((word_select(1))))) # (!word_select(0) & ((word_select(1) & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\))) # (!word_select(1) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datac => word_select(1),
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X61_Y40_N20
\Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (word_select(0) & ((\Mux20~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\)) # (!\Mux20~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\))))) # (!word_select(0) & 
-- (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X61_Y40_N30
\Mux76~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux76~0_combout\ = (transaction(2) & (\m_readdata[11]~input_o\)) # (!transaction(2) & ((\Mux20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(2),
	datac => \m_readdata[11]~input_o\,
	datad => \Mux20~1_combout\,
	combout => \Mux76~0_combout\);

-- Location: LCCOMB_X61_Y38_N4
\Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (word_select(1) & (((word_select(0))))) # (!word_select(1) & ((word_select(0) & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)) # (!word_select(0) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(1),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	datac => word_select(0),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X61_Y38_N22
\Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\) # (!word_select(1))))) # (!\Mux19~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ & (word_select(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	datab => \Mux19~0_combout\,
	datac => word_select(1),
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X62_Y38_N28
\Mux77~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux77~0_combout\ = (transaction(2) & (\m_readdata[12]~input_o\)) # (!transaction(2) & ((\Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[12]~input_o\,
	datac => transaction(2),
	datad => \Mux19~1_combout\,
	combout => \Mux77~0_combout\);

-- Location: LCCOMB_X61_Y39_N8
\Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (word_select(1) & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\) # (word_select(0))))) # (!word_select(1) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ & ((!word_select(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	datab => word_select(1),
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	datad => word_select(0),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X61_Y39_N30
\Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\) # (!word_select(0))))) # (!\Mux18~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ & ((word_select(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	datac => \Mux18~0_combout\,
	datad => word_select(0),
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X62_Y38_N30
\Mux78~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux78~0_combout\ = (transaction(2) & ((\m_readdata[13]~input_o\))) # (!transaction(2) & (\Mux18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~1_combout\,
	datac => transaction(2),
	datad => \m_readdata[13]~input_o\,
	combout => \Mux78~0_combout\);

-- Location: IOIBUF_X81_Y14_N8
\m_readdata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(14),
	o => \m_readdata[14]~input_o\);

-- Location: IOIBUF_X81_Y5_N1
\s_writedata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(14),
	o => \s_writedata[14]~input_o\);

-- Location: LCCOMB_X59_Y37_N16
\Mux126~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux126~0_combout\ = (transaction(0) & (\m_readdata[14]~input_o\)) # (!transaction(0) & ((\s_writedata[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[14]~input_o\,
	datac => \s_writedata[14]~input_o\,
	datad => transaction(0),
	combout => \Mux126~0_combout\);

-- Location: IOIBUF_X81_Y47_N1
\m_readdata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(15),
	o => \m_readdata[15]~input_o\);

-- Location: IOIBUF_X81_Y53_N1
\s_writedata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(15),
	o => \s_writedata[15]~input_o\);

-- Location: LCCOMB_X59_Y39_N30
\Mux128~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux128~0_combout\ = (transaction(0) & (\m_readdata[15]~input_o\)) # (!transaction(0) & ((\s_writedata[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[15]~input_o\,
	datac => transaction(0),
	datad => \s_writedata[15]~input_o\,
	combout => \Mux128~0_combout\);

-- Location: IOIBUF_X81_Y23_N8
\m_readdata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(16),
	o => \m_readdata[16]~input_o\);

-- Location: IOIBUF_X81_Y25_N1
\s_writedata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(16),
	o => \s_writedata[16]~input_o\);

-- Location: LCCOMB_X62_Y39_N8
\Mux130~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux130~0_combout\ = (transaction(0) & (\m_readdata[16]~input_o\)) # (!transaction(0) & ((\s_writedata[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[16]~input_o\,
	datac => \s_writedata[16]~input_o\,
	datad => transaction(0),
	combout => \Mux130~0_combout\);

-- Location: IOIBUF_X81_Y52_N1
\s_writedata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(17),
	o => \s_writedata[17]~input_o\);

-- Location: IOIBUF_X81_Y56_N8
\m_readdata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(17),
	o => \m_readdata[17]~input_o\);

-- Location: LCCOMB_X59_Y40_N14
\Mux132~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux132~0_combout\ = (transaction(0) & ((\m_readdata[17]~input_o\))) # (!transaction(0) & (\s_writedata[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(0),
	datac => \s_writedata[17]~input_o\,
	datad => \m_readdata[17]~input_o\,
	combout => \Mux132~0_combout\);

-- Location: IOIBUF_X63_Y67_N8
\m_readdata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(18),
	o => \m_readdata[18]~input_o\);

-- Location: IOIBUF_X63_Y67_N15
\s_writedata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(18),
	o => \s_writedata[18]~input_o\);

-- Location: LCCOMB_X62_Y39_N6
\Mux134~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux134~0_combout\ = (transaction(0) & (\m_readdata[18]~input_o\)) # (!transaction(0) & ((\s_writedata[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(0),
	datac => \m_readdata[18]~input_o\,
	datad => \s_writedata[18]~input_o\,
	combout => \Mux134~0_combout\);

-- Location: IOIBUF_X63_Y0_N1
\m_readdata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(19),
	o => \m_readdata[19]~input_o\);

-- Location: IOIBUF_X63_Y0_N8
\s_writedata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(19),
	o => \s_writedata[19]~input_o\);

-- Location: LCCOMB_X62_Y39_N24
\Mux136~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux136~0_combout\ = (transaction(0) & (\m_readdata[19]~input_o\)) # (!transaction(0) & ((\s_writedata[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(0),
	datac => \m_readdata[19]~input_o\,
	datad => \s_writedata[19]~input_o\,
	combout => \Mux136~0_combout\);

-- Location: IOIBUF_X81_Y3_N8
\m_readdata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(20),
	o => \m_readdata[20]~input_o\);

-- Location: IOIBUF_X70_Y67_N1
\s_writedata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(20),
	o => \s_writedata[20]~input_o\);

-- Location: LCCOMB_X62_Y39_N30
\Mux138~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux138~0_combout\ = (transaction(0) & (\m_readdata[20]~input_o\)) # (!transaction(0) & ((\s_writedata[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[20]~input_o\,
	datac => \s_writedata[20]~input_o\,
	datad => transaction(0),
	combout => \Mux138~0_combout\);

-- Location: IOIBUF_X81_Y39_N1
\s_writedata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(21),
	o => \s_writedata[21]~input_o\);

-- Location: IOIBUF_X81_Y56_N1
\m_readdata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(21),
	o => \m_readdata[21]~input_o\);

-- Location: LCCOMB_X62_Y39_N12
\Mux140~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux140~0_combout\ = (transaction(0) & ((\m_readdata[21]~input_o\))) # (!transaction(0) & (\s_writedata[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(0),
	datac => \s_writedata[21]~input_o\,
	datad => \m_readdata[21]~input_o\,
	combout => \Mux140~0_combout\);

-- Location: IOIBUF_X54_Y0_N15
\m_readdata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(22),
	o => \m_readdata[22]~input_o\);

-- Location: IOIBUF_X81_Y4_N8
\s_writedata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(22),
	o => \s_writedata[22]~input_o\);

-- Location: LCCOMB_X59_Y38_N12
\Mux142~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux142~0_combout\ = (transaction(0) & (\m_readdata[22]~input_o\)) # (!transaction(0) & ((\s_writedata[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[22]~input_o\,
	datab => transaction(0),
	datad => \s_writedata[22]~input_o\,
	combout => \Mux142~0_combout\);

-- Location: IOIBUF_X58_Y67_N1
\m_readdata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(23),
	o => \m_readdata[23]~input_o\);

-- Location: IOIBUF_X81_Y49_N15
\s_writedata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(23),
	o => \s_writedata[23]~input_o\);

-- Location: LCCOMB_X59_Y38_N22
\Mux144~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux144~0_combout\ = (transaction(0) & (\m_readdata[23]~input_o\)) # (!transaction(0) & ((\s_writedata[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(0),
	datac => \m_readdata[23]~input_o\,
	datad => \s_writedata[23]~input_o\,
	combout => \Mux144~0_combout\);

-- Location: IOIBUF_X81_Y42_N8
\m_readdata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(24),
	o => \m_readdata[24]~input_o\);

-- Location: IOIBUF_X81_Y46_N8
\s_writedata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(24),
	o => \s_writedata[24]~input_o\);

-- Location: LCCOMB_X62_Y38_N24
\Mux146~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux146~0_combout\ = (transaction(0) & (\m_readdata[24]~input_o\)) # (!transaction(0) & ((\s_writedata[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[24]~input_o\,
	datac => transaction(0),
	datad => \s_writedata[24]~input_o\,
	combout => \Mux146~0_combout\);

-- Location: IOIBUF_X81_Y4_N22
\m_readdata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(25),
	o => \m_readdata[25]~input_o\);

-- Location: IOIBUF_X81_Y49_N8
\s_writedata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(25),
	o => \s_writedata[25]~input_o\);

-- Location: LCCOMB_X61_Y37_N22
\Mux148~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux148~0_combout\ = (transaction(0) & (\m_readdata[25]~input_o\)) # (!transaction(0) & ((\s_writedata[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(0),
	datac => \m_readdata[25]~input_o\,
	datad => \s_writedata[25]~input_o\,
	combout => \Mux148~0_combout\);

-- Location: IOIBUF_X61_Y0_N1
\m_readdata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(26),
	o => \m_readdata[26]~input_o\);

-- Location: IOIBUF_X81_Y25_N15
\s_writedata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(26),
	o => \s_writedata[26]~input_o\);

-- Location: LCCOMB_X61_Y37_N16
\Mux150~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux150~0_combout\ = (transaction(0) & (\m_readdata[26]~input_o\)) # (!transaction(0) & ((\s_writedata[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(0),
	datac => \m_readdata[26]~input_o\,
	datad => \s_writedata[26]~input_o\,
	combout => \Mux150~0_combout\);

-- Location: IOIBUF_X81_Y12_N8
\m_readdata[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(27),
	o => \m_readdata[27]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\s_writedata[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(27),
	o => \s_writedata[27]~input_o\);

-- Location: LCCOMB_X61_Y37_N30
\Mux152~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux152~0_combout\ = (transaction(0) & (\m_readdata[27]~input_o\)) # (!transaction(0) & ((\s_writedata[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[27]~input_o\,
	datac => \s_writedata[27]~input_o\,
	datad => transaction(0),
	combout => \Mux152~0_combout\);

-- Location: IOIBUF_X81_Y47_N8
\m_readdata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(28),
	o => \m_readdata[28]~input_o\);

-- Location: IOIBUF_X81_Y52_N15
\s_writedata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(28),
	o => \s_writedata[28]~input_o\);

-- Location: LCCOMB_X61_Y40_N24
\Mux154~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux154~0_combout\ = (transaction(0) & (\m_readdata[28]~input_o\)) # (!transaction(0) & ((\s_writedata[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[28]~input_o\,
	datab => transaction(0),
	datac => \s_writedata[28]~input_o\,
	combout => \Mux154~0_combout\);

-- Location: IOIBUF_X61_Y67_N1
\s_writedata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(29),
	o => \s_writedata[29]~input_o\);

-- Location: IOIBUF_X65_Y67_N8
\m_readdata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(29),
	o => \m_readdata[29]~input_o\);

-- Location: LCCOMB_X61_Y40_N10
\Mux156~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux156~0_combout\ = (transaction(0) & ((\m_readdata[29]~input_o\))) # (!transaction(0) & (\s_writedata[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(0),
	datac => \s_writedata[29]~input_o\,
	datad => \m_readdata[29]~input_o\,
	combout => \Mux156~0_combout\);

-- Location: IOIBUF_X58_Y0_N8
\s_writedata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(30),
	o => \s_writedata[30]~input_o\);

-- Location: IOIBUF_X81_Y17_N8
\m_readdata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(30),
	o => \m_readdata[30]~input_o\);

-- Location: LCCOMB_X59_Y37_N2
\Mux158~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux158~0_combout\ = (transaction(0) & ((\m_readdata[30]~input_o\))) # (!transaction(0) & (\s_writedata[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(0),
	datab => \s_writedata[30]~input_o\,
	datad => \m_readdata[30]~input_o\,
	combout => \Mux158~0_combout\);

-- Location: IOIBUF_X81_Y39_N8
\m_readdata[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(31),
	o => \m_readdata[31]~input_o\);

-- Location: IOIBUF_X81_Y52_N8
\s_writedata[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(31),
	o => \s_writedata[31]~input_o\);

-- Location: LCCOMB_X61_Y39_N18
\Mux160~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux160~0_combout\ = (transaction(0) & (\m_readdata[31]~input_o\)) # (!transaction(0) & ((\s_writedata[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[31]~input_o\,
	datac => \s_writedata[31]~input_o\,
	datad => transaction(0),
	combout => \Mux160~0_combout\);

-- Location: M9K_X60_Y40_N0
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
	portawe => \write_zero~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X60_Y39_N0
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
	portawe => \write_one~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X59_Y39_N22
\Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (word_select(0) & (((word_select(1)) # (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\)))) # (!word_select(0) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ & 
-- (!word_select(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\,
	datac => word_select(1),
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\,
	combout => \Mux17~0_combout\);

-- Location: M9K_X60_Y38_N0
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
	portawe => \write_three~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X60_Y37_N0
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
	portawe => \write_two~0_combout\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X59_Y37_N28
\Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\) # ((!word_select(1))))) # (!\Mux17~0_combout\ & (((word_select(1) & 
-- \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\,
	datac => word_select(1),
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X59_Y37_N14
\Mux79~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux79~0_combout\ = (transaction(2) & (\m_readdata[14]~input_o\)) # (!transaction(2) & ((\Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datac => \m_readdata[14]~input_o\,
	datad => \Mux17~1_combout\,
	combout => \Mux79~0_combout\);

-- Location: LCCOMB_X59_Y40_N30
\Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (word_select(0) & (((word_select(1))))) # (!word_select(0) & ((word_select(1) & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\)) # (!word_select(1) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datac => word_select(1),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X59_Y39_N28
\Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (word_select(0) & ((\Mux16~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\)) # (!\Mux16~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\))))) # (!word_select(0) & 
-- (((\Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datac => \Mux16~0_combout\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X59_Y39_N6
\Mux80~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux80~0_combout\ = (transaction(2) & ((\m_readdata[15]~input_o\))) # (!transaction(2) & (\Mux16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datab => \Mux16~1_combout\,
	datac => \m_readdata[15]~input_o\,
	combout => \Mux80~0_combout\);

-- Location: LCCOMB_X61_Y38_N28
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (word_select(1) & (((word_select(0))))) # (!word_select(1) & ((word_select(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\))) # (!word_select(0) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(1),
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datac => word_select(0),
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X61_Y38_N30
\Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (word_select(1) & ((\Mux15~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\)) # (!\Mux15~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\))))) # (!word_select(1) & 
-- (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(1),
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X62_Y39_N16
\Mux81~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux81~0_combout\ = (transaction(2) & ((\m_readdata[16]~input_o\))) # (!transaction(2) & (\Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datac => transaction(2),
	datad => \m_readdata[16]~input_o\,
	combout => \Mux81~0_combout\);

-- Location: LCCOMB_X59_Y40_N28
\Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (word_select(0) & (((word_select(1))))) # (!word_select(0) & ((word_select(1) & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\)) # (!word_select(1) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	datac => word_select(1),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X59_Y40_N10
\Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (word_select(0) & ((\Mux14~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\))) # (!\Mux14~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\)))) # (!word_select(0) & 
-- (\Mux14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \Mux14~0_combout\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X59_Y40_N4
\Mux82~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux82~0_combout\ = (transaction(2) & ((\m_readdata[17]~input_o\))) # (!transaction(2) & (\Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datac => transaction(2),
	datad => \m_readdata[17]~input_o\,
	combout => \Mux82~0_combout\);

-- Location: LCCOMB_X61_Y39_N16
\Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (word_select(0) & (((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\) # (word_select(1))))) # (!word_select(0) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ & ((!word_select(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datad => word_select(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X61_Y39_N10
\Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (word_select(1) & ((\Mux13~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\)) # (!\Mux13~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\))))) # (!word_select(1) & 
-- (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datab => word_select(1),
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X62_Y39_N22
\Mux83~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux83~0_combout\ = (transaction(2) & ((\m_readdata[18]~input_o\))) # (!transaction(2) & (\Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \m_readdata[18]~input_o\,
	datac => transaction(2),
	combout => \Mux83~0_combout\);

-- Location: LCCOMB_X59_Y40_N26
\Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (word_select(1) & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\) # (word_select(0))))) # (!word_select(1) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ & ((!word_select(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(1),
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datad => word_select(0),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X61_Y39_N24
\Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\) # ((!word_select(0))))) # (!\Mux12~0_combout\ & (((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ & word_select(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datad => word_select(0),
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X62_Y39_N28
\Mux84~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux84~0_combout\ = (transaction(2) & (\m_readdata[19]~input_o\)) # (!transaction(2) & ((\Mux12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(2),
	datac => \m_readdata[19]~input_o\,
	datad => \Mux12~1_combout\,
	combout => \Mux84~0_combout\);

-- Location: LCCOMB_X61_Y39_N22
\Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (word_select(0) & ((word_select(1)) # ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\)))) # (!word_select(0) & (!word_select(1) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => word_select(1),
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X61_Y39_N28
\Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\) # ((!word_select(1))))) # (!\Mux11~0_combout\ & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ & word_select(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datac => \Mux11~0_combout\,
	datad => word_select(1),
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X62_Y39_N14
\Mux85~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux85~0_combout\ = (transaction(2) & (\m_readdata[20]~input_o\)) # (!transaction(2) & ((\Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[20]~input_o\,
	datab => \Mux11~1_combout\,
	datac => transaction(2),
	combout => \Mux85~0_combout\);

-- Location: LCCOMB_X59_Y37_N24
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (word_select(0) & (word_select(1))) # (!word_select(0) & ((word_select(1) & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\)) # (!word_select(1) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => word_select(1),
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X59_Y39_N20
\Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (word_select(0) & ((\Mux10~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\))) # (!\Mux10~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\)))) # (!word_select(0) & 
-- (\Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \Mux10~0_combout\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X62_Y39_N20
\Mux86~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux86~0_combout\ = (transaction(2) & ((\m_readdata[21]~input_o\))) # (!transaction(2) & (\Mux10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~1_combout\,
	datac => transaction(2),
	datad => \m_readdata[21]~input_o\,
	combout => \Mux86~0_combout\);

-- Location: LCCOMB_X59_Y38_N28
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (word_select(0) & ((word_select(1)) # ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\)))) # (!word_select(0) & (!word_select(1) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => word_select(1),
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X59_Y38_N6
\Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (word_select(1) & ((\Mux9~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\))) # (!\Mux9~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\)))) # (!word_select(1) & 
-- (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datac => word_select(1),
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X59_Y38_N0
\Mux87~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux87~0_combout\ = (transaction(2) & (\m_readdata[22]~input_o\)) # (!transaction(2) & ((\Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[22]~input_o\,
	datac => transaction(2),
	datad => \Mux9~1_combout\,
	combout => \Mux87~0_combout\);

-- Location: LCCOMB_X59_Y38_N14
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (word_select(1) & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\) # (word_select(0))))) # (!word_select(1) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ & ((!word_select(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datac => word_select(1),
	datad => word_select(0),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X59_Y38_N20
\Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (word_select(0) & ((\Mux8~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\)) # (!\Mux8~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\))))) # (!word_select(0) & (\Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \Mux8~0_combout\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X59_Y38_N18
\Mux88~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux88~0_combout\ = (transaction(2) & (\m_readdata[23]~input_o\)) # (!transaction(2) & ((\Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[23]~input_o\,
	datac => transaction(2),
	datad => \Mux8~1_combout\,
	combout => \Mux88~0_combout\);

-- Location: LCCOMB_X61_Y38_N16
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (word_select(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\) # ((word_select(1))))) # (!word_select(0) & (((!word_select(1) & \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	datab => word_select(0),
	datac => word_select(1),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X61_Y38_N14
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (word_select(1) & ((\Mux7~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\))) # (!\Mux7~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\)))) # (!word_select(1) & 
-- (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	datac => word_select(1),
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X61_Y38_N20
\Mux89~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux89~0_combout\ = (transaction(2) & ((\m_readdata[24]~input_o\))) # (!transaction(2) & (\Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~1_combout\,
	datac => transaction(2),
	datad => \m_readdata[24]~input_o\,
	combout => \Mux89~0_combout\);

-- Location: LCCOMB_X61_Y37_N18
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (word_select(0) & (((word_select(1))))) # (!word_select(0) & ((word_select(1) & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\))) # (!word_select(1) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	datac => word_select(0),
	datad => word_select(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X61_Y37_N12
\Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (word_select(0) & ((\Mux6~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\))) # (!\Mux6~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\)))) # (!word_select(0) & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \Mux6~0_combout\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X61_Y37_N6
\Mux90~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux90~0_combout\ = (transaction(2) & ((\m_readdata[25]~input_o\))) # (!transaction(2) & (\Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \m_readdata[25]~input_o\,
	datad => transaction(2),
	combout => \Mux90~0_combout\);

-- Location: LCCOMB_X61_Y37_N8
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (word_select(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\) # ((word_select(1))))) # (!word_select(0) & (((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ & !word_select(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	datad => word_select(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X61_Y37_N26
\Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (word_select(1) & ((\Mux5~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\)) # (!\Mux5~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\))))) # (!word_select(1) & 
-- (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	datab => word_select(1),
	datac => \Mux5~0_combout\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X61_Y37_N24
\Mux91~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux91~0_combout\ = (transaction(2) & ((\m_readdata[26]~input_o\))) # (!transaction(2) & (\Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datac => \m_readdata[26]~input_o\,
	datad => transaction(2),
	combout => \Mux91~0_combout\);

-- Location: LCCOMB_X61_Y37_N2
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (word_select(0) & (((word_select(1))))) # (!word_select(0) & ((word_select(1) & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\))) # (!word_select(1) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\,
	datac => word_select(0),
	datad => word_select(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X62_Y37_N24
\Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (word_select(0) & ((\Mux4~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\))) # (!\Mux4~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\)))) # (!word_select(0) & 
-- (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\,
	datac => word_select(0),
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X61_Y37_N20
\Mux92~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux92~0_combout\ = (transaction(2) & (\m_readdata[27]~input_o\)) # (!transaction(2) & ((\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(2),
	datac => \m_readdata[27]~input_o\,
	datad => \Mux4~1_combout\,
	combout => \Mux92~0_combout\);

-- Location: LCCOMB_X61_Y40_N28
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (word_select(1) & (((word_select(0))))) # (!word_select(1) & ((word_select(0) & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\)) # (!word_select(0) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(1),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	datad => word_select(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X61_Y40_N6
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (word_select(1) & ((\Mux3~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\))) # (!\Mux3~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\)))) # (!word_select(1) & 
-- (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(1),
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X61_Y40_N0
\Mux93~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux93~0_combout\ = (transaction(2) & ((\m_readdata[28]~input_o\))) # (!transaction(2) & (\Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datac => transaction(2),
	datad => \m_readdata[28]~input_o\,
	combout => \Mux93~0_combout\);

-- Location: LCCOMB_X61_Y40_N14
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (word_select(1) & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\) # ((word_select(0))))) # (!word_select(1) & (((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ & !word_select(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(1),
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datad => word_select(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X61_Y40_N12
\Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\) # ((!word_select(0))))) # (!\Mux2~0_combout\ & (((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ & word_select(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datac => \Mux2~0_combout\,
	datad => word_select(0),
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X61_Y40_N22
\Mux94~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux94~0_combout\ = (transaction(2) & ((\m_readdata[29]~input_o\))) # (!transaction(2) & (\Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datac => transaction(2),
	datad => \m_readdata[29]~input_o\,
	combout => \Mux94~0_combout\);

-- Location: LCCOMB_X59_Y37_N26
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (word_select(0) & (((word_select(1)) # (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\)))) # (!word_select(0) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ & (!word_select(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	datac => word_select(1),
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X59_Y37_N20
\Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\) # (!word_select(1))))) # (!\Mux1~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ & (word_select(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	datac => word_select(1),
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X59_Y37_N10
\Mux95~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux95~0_combout\ = (transaction(2) & ((\m_readdata[30]~input_o\))) # (!transaction(2) & (\Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datab => \Mux1~1_combout\,
	datad => \m_readdata[30]~input_o\,
	combout => \Mux95~0_combout\);

-- Location: LCCOMB_X61_Y37_N14
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (word_select(0) & (((word_select(1))))) # (!word_select(0) & ((word_select(1) & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\)) # (!word_select(1) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	datad => word_select(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X61_Y39_N14
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (word_select(0) & ((\Mux0~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\)) # (!\Mux0~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\))))) # (!word_select(0) & 
-- (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => word_select(0),
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X62_Y39_N18
\Mux96~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux96~0_combout\ = (transaction(2) & ((\m_readdata[31]~input_o\))) # (!transaction(2) & (\Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datac => transaction(2),
	datad => \m_readdata[31]~input_o\,
	combout => \Mux96~0_combout\);

-- Location: LCCOMB_X62_Y38_N0
\Mux32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (transaction(2) & ((\s_writedata[0]~input_o\))) # (!transaction(2) & (\Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~1_combout\,
	datac => transaction(2),
	datad => \s_writedata[0]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X59_Y40_N24
\Mux64~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (!transaction(1) & (transaction(2) $ (transaction(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(1),
	datab => transaction(2),
	datad => transaction(0),
	combout => \Mux64~0_combout\);

-- Location: LCCOMB_X59_Y40_N2
\Mux33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (transaction(2) & (\s_writedata[1]~input_o\)) # (!transaction(2) & ((\Mux30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datab => \s_writedata[1]~input_o\,
	datac => \Mux30~1_combout\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X59_Y37_N4
\Mux34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (transaction(2) & ((\s_writedata[2]~input_o\))) # (!transaction(2) & (\Mux29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datab => \Mux29~1_combout\,
	datad => \s_writedata[2]~input_o\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X59_Y39_N18
\Mux35~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (transaction(2) & (\s_writedata[3]~input_o\)) # (!transaction(2) & ((\Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datab => \s_writedata[3]~input_o\,
	datad => \Mux28~1_combout\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X61_Y38_N6
\Mux36~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (transaction(2) & (\s_writedata[4]~input_o\)) # (!transaction(2) & ((\Mux27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[4]~input_o\,
	datab => \Mux27~1_combout\,
	datac => transaction(2),
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X59_Y39_N4
\Mux37~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (transaction(2) & ((\s_writedata[5]~input_o\))) # (!transaction(2) & (\Mux26~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datac => \Mux26~1_combout\,
	datad => \s_writedata[5]~input_o\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X53_Y37_N12
\Mux38~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (transaction(2) & (\s_writedata[6]~input_o\)) # (!transaction(2) & ((\Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[6]~input_o\,
	datac => transaction(2),
	datad => \Mux25~1_combout\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X53_Y37_N18
\Mux39~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (transaction(2) & (\s_writedata[7]~input_o\)) # (!transaction(2) & ((\Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[7]~input_o\,
	datac => transaction(2),
	datad => \Mux24~1_combout\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X61_Y39_N0
\Mux40~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (transaction(2) & ((\s_writedata[8]~input_o\))) # (!transaction(2) & (\Mux23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux23~1_combout\,
	datac => transaction(2),
	datad => \s_writedata[8]~input_o\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X59_Y38_N4
\Mux41~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (transaction(2) & ((\s_writedata[9]~input_o\))) # (!transaction(2) & (\Mux22~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datab => \Mux22~1_combout\,
	datad => \s_writedata[9]~input_o\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X62_Y38_N26
\Mux42~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (transaction(2) & ((\s_writedata[10]~input_o\))) # (!transaction(2) & (\Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~1_combout\,
	datac => transaction(2),
	datad => \s_writedata[10]~input_o\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X61_Y40_N16
\Mux43~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (transaction(2) & ((\s_writedata[11]~input_o\))) # (!transaction(2) & (\Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux20~1_combout\,
	datac => transaction(2),
	datad => \s_writedata[11]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X62_Y38_N12
\Mux44~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (transaction(2) & (\s_writedata[12]~input_o\)) # (!transaction(2) & ((\Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datac => \s_writedata[12]~input_o\,
	datad => \Mux19~1_combout\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X62_Y38_N10
\Mux45~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (transaction(2) & (\s_writedata[13]~input_o\)) # (!transaction(2) & ((\Mux18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[13]~input_o\,
	datac => transaction(2),
	datad => \Mux18~1_combout\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X59_Y37_N18
\Mux46~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (transaction(2) & (\s_writedata[14]~input_o\)) # (!transaction(2) & ((\Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datac => \s_writedata[14]~input_o\,
	datad => \Mux17~1_combout\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X59_Y39_N14
\Mux47~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (transaction(2) & ((\s_writedata[15]~input_o\))) # (!transaction(2) & (\Mux16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datab => \Mux16~1_combout\,
	datad => \s_writedata[15]~input_o\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X62_Y38_N4
\Mux48~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (transaction(2) & ((\s_writedata[16]~input_o\))) # (!transaction(2) & (\Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux15~1_combout\,
	datac => transaction(2),
	datad => \s_writedata[16]~input_o\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X59_Y40_N12
\Mux49~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (transaction(2) & ((\s_writedata[17]~input_o\))) # (!transaction(2) & (\Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \s_writedata[17]~input_o\,
	datac => transaction(2),
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X62_Y39_N0
\Mux50~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (transaction(2) & ((\s_writedata[18]~input_o\))) # (!transaction(2) & (\Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datac => transaction(2),
	datad => \s_writedata[18]~input_o\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X62_Y39_N10
\Mux51~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (transaction(2) & ((\s_writedata[19]~input_o\))) # (!transaction(2) & (\Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux12~1_combout\,
	datac => transaction(2),
	datad => \s_writedata[19]~input_o\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X62_Y39_N4
\Mux52~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (transaction(2) & (\s_writedata[20]~input_o\)) # (!transaction(2) & ((\Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(2),
	datac => \s_writedata[20]~input_o\,
	datad => \Mux11~1_combout\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X62_Y39_N26
\Mux53~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (transaction(2) & (\s_writedata[21]~input_o\)) # (!transaction(2) & ((\Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[21]~input_o\,
	datac => transaction(2),
	datad => \Mux10~1_combout\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X59_Y38_N2
\Mux54~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (transaction(2) & ((\s_writedata[22]~input_o\))) # (!transaction(2) & (\Mux9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datac => transaction(2),
	datad => \s_writedata[22]~input_o\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X59_Y38_N16
\Mux55~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (transaction(2) & ((\s_writedata[23]~input_o\))) # (!transaction(2) & (\Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~1_combout\,
	datac => transaction(2),
	datad => \s_writedata[23]~input_o\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X62_Y38_N14
\Mux56~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (transaction(2) & ((\s_writedata[24]~input_o\))) # (!transaction(2) & (\Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datac => transaction(2),
	datad => \s_writedata[24]~input_o\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X61_Y37_N0
\Mux57~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (transaction(2) & ((\s_writedata[25]~input_o\))) # (!transaction(2) & (\Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => transaction(2),
	datad => \s_writedata[25]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X61_Y37_N10
\Mux58~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (transaction(2) & ((\s_writedata[26]~input_o\))) # (!transaction(2) & (\Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => transaction(2),
	datad => \s_writedata[26]~input_o\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X61_Y37_N28
\Mux59~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (transaction(2) & (\s_writedata[27]~input_o\)) # (!transaction(2) & ((\Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(2),
	datac => \s_writedata[27]~input_o\,
	datad => \Mux4~1_combout\,
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X61_Y40_N26
\Mux60~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (transaction(2) & (\s_writedata[28]~input_o\)) # (!transaction(2) & ((\Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => transaction(2),
	datac => \s_writedata[28]~input_o\,
	datad => \Mux3~1_combout\,
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X61_Y40_N8
\Mux61~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (transaction(2) & (\s_writedata[29]~input_o\)) # (!transaction(2) & ((\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[29]~input_o\,
	datac => transaction(2),
	datad => \Mux2~1_combout\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X59_Y37_N12
\Mux62~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (transaction(2) & (\s_writedata[30]~input_o\)) # (!transaction(2) & ((\Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => transaction(2),
	datac => \s_writedata[30]~input_o\,
	datad => \Mux1~1_combout\,
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X61_Y39_N2
\Mux63~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (transaction(2) & (\s_writedata[31]~input_o\)) # (!transaction(2) & ((\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[31]~input_o\,
	datab => \Mux0~1_combout\,
	datac => transaction(2),
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X48_Y36_N2
\Selector19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\Add0~6_combout\ & (\WideOr18~0_combout\ & ((\state.DONE~q\) # (\state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DONE~q\,
	datab => \Add0~6_combout\,
	datac => \WideOr18~0_combout\,
	datad => \state.IDLE~q\,
	combout => \Selector19~2_combout\);

-- Location: LCCOMB_X48_Y37_N16
\Selector19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~4_combout\ = (\Add0~6_combout\) # ((\Selector19~3_combout\) # ((\m_waitrequest~input_o\ & \s_addr[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_waitrequest~input_o\,
	datab => \Add0~6_combout\,
	datac => \s_addr[31]~input_o\,
	datad => \Selector19~3_combout\,
	combout => \Selector19~4_combout\);

-- Location: LCCOMB_X49_Y37_N12
\Selector19~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~6_combout\ = (\s_waitrequest~reg0_q\ & ((\Equal1~0_combout\) # ((!\state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\ & !\state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datab => \state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datac => \Equal1~0_combout\,
	datad => \s_waitrequest~reg0_q\,
	combout => \Selector19~6_combout\);

-- Location: LCCOMB_X49_Y37_N8
\Selector19~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~5_combout\ = (\Selector19~2_combout\) # ((\Selector19~4_combout\ & \Selector19~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~2_combout\,
	datac => \Selector19~4_combout\,
	datad => \Selector19~6_combout\,
	combout => \Selector19~5_combout\);

-- Location: FF_X49_Y37_N9
\s_waitrequest~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector19~5_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_waitrequest~reg0_q\);

-- Location: LCCOMB_X53_Y37_N28
\m_addr[0]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[0]~reg0feeder_combout\ = \Selector52~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector52~0_combout\,
	combout => \m_addr[0]~reg0feeder_combout\);

-- Location: LCCOMB_X49_Y36_N14
\m_addr[0]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[0]~29_combout\ = (!\reset~input_o\ & ((\Add0~6_combout\ & ((!\Selector16~0_combout\))) # (!\Add0~6_combout\ & (\s_addr[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[31]~input_o\,
	datab => \Selector16~0_combout\,
	datac => \Add0~6_combout\,
	datad => \reset~input_o\,
	combout => \m_addr[0]~29_combout\);

-- Location: FF_X53_Y37_N29
\m_addr[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[0]~reg0feeder_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[0]~reg0_q\);

-- Location: LCCOMB_X53_Y37_N26
\m_addr[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[1]~reg0feeder_combout\ = \Selector51~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector51~0_combout\,
	combout => \m_addr[1]~reg0feeder_combout\);

-- Location: FF_X53_Y37_N27
\m_addr[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[1]~reg0feeder_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[1]~reg0_q\);

-- Location: LCCOMB_X49_Y37_N14
\Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (out_count(2) & (!\state.WRITE_START~q\ & (!\Selector16~0_combout\ & !\state.READ_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => out_count(2),
	datab => \state.WRITE_START~q\,
	datac => \Selector16~0_combout\,
	datad => \state.READ_START~q\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X49_Y37_N28
\Add0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (!\state.READ_START~q\ & (\s_addr[2]~input_o\ & (!\Selector16~0_combout\ & !\state.WRITE_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_START~q\,
	datab => \s_addr[2]~input_o\,
	datac => \Selector16~0_combout\,
	datad => \state.WRITE_START~q\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X50_Y37_N4
\m_addr[2]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[2]~30_combout\ = (\Add0~28_combout\ & (\Add0~29_combout\ $ (VCC))) # (!\Add0~28_combout\ & (\Add0~29_combout\ & VCC))
-- \m_addr[2]~31\ = CARRY((\Add0~28_combout\ & \Add0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Add0~29_combout\,
	datad => VCC,
	combout => \m_addr[2]~30_combout\,
	cout => \m_addr[2]~31\);

-- Location: FF_X50_Y37_N5
\m_addr[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[2]~30_combout\,
	asdata => \s_addr[2]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[2]~reg0_q\);

-- Location: LCCOMB_X49_Y36_N28
\Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (!\state.READ_START~q\ & (!\state.WRITE_START~q\ & !\Selector16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.READ_START~q\,
	datac => \state.WRITE_START~q\,
	datad => \Selector16~0_combout\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X50_Y37_N6
\m_addr[3]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[3]~32_combout\ = (\m_addr[2]~31\ & (((!\s_addr[3]~input_o\)) # (!\Add0~30_combout\))) # (!\m_addr[2]~31\ & (((\Add0~30_combout\ & \s_addr[3]~input_o\)) # (GND)))
-- \m_addr[3]~33\ = CARRY(((!\m_addr[2]~31\) # (!\s_addr[3]~input_o\)) # (!\Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \s_addr[3]~input_o\,
	datad => VCC,
	cin => \m_addr[2]~31\,
	combout => \m_addr[3]~32_combout\,
	cout => \m_addr[3]~33\);

-- Location: FF_X50_Y37_N7
\m_addr[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[3]~32_combout\,
	asdata => \s_addr[3]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[3]~reg0_q\);

-- Location: LCCOMB_X50_Y37_N8
\m_addr[4]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[4]~34_combout\ = (\m_addr[3]~33\ & (\Add0~30_combout\ & (\s_addr[4]~input_o\ & VCC))) # (!\m_addr[3]~33\ & ((((\Add0~30_combout\ & \s_addr[4]~input_o\)))))
-- \m_addr[4]~35\ = CARRY((\Add0~30_combout\ & (\s_addr[4]~input_o\ & !\m_addr[3]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \s_addr[4]~input_o\,
	datad => VCC,
	cin => \m_addr[3]~33\,
	combout => \m_addr[4]~34_combout\,
	cout => \m_addr[4]~35\);

-- Location: FF_X50_Y37_N9
\m_addr[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[4]~34_combout\,
	asdata => \s_addr[4]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[4]~reg0_q\);

-- Location: LCCOMB_X50_Y37_N10
\m_addr[5]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[5]~36_combout\ = (\m_addr[4]~35\ & (((!\s_addr[5]~input_o\)) # (!\Add0~30_combout\))) # (!\m_addr[4]~35\ & (((\Add0~30_combout\ & \s_addr[5]~input_o\)) # (GND)))
-- \m_addr[5]~37\ = CARRY(((!\m_addr[4]~35\) # (!\s_addr[5]~input_o\)) # (!\Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \s_addr[5]~input_o\,
	datad => VCC,
	cin => \m_addr[4]~35\,
	combout => \m_addr[5]~36_combout\,
	cout => \m_addr[5]~37\);

-- Location: FF_X50_Y37_N11
\m_addr[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[5]~36_combout\,
	asdata => \s_addr[5]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[5]~reg0_q\);

-- Location: LCCOMB_X50_Y37_N12
\m_addr[6]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[6]~38_combout\ = (\m_addr[5]~37\ & (\Add0~30_combout\ & (\s_addr[6]~input_o\ & VCC))) # (!\m_addr[5]~37\ & ((((\Add0~30_combout\ & \s_addr[6]~input_o\)))))
-- \m_addr[6]~39\ = CARRY((\Add0~30_combout\ & (\s_addr[6]~input_o\ & !\m_addr[5]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \s_addr[6]~input_o\,
	datad => VCC,
	cin => \m_addr[5]~37\,
	combout => \m_addr[6]~38_combout\,
	cout => \m_addr[6]~39\);

-- Location: FF_X50_Y37_N13
\m_addr[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[6]~38_combout\,
	asdata => \s_addr[6]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[6]~reg0_q\);

-- Location: LCCOMB_X50_Y37_N14
\m_addr[7]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[7]~40_combout\ = (\m_addr[6]~39\ & (((!\Add0~30_combout\)) # (!\s_addr[7]~input_o\))) # (!\m_addr[6]~39\ & (((\s_addr[7]~input_o\ & \Add0~30_combout\)) # (GND)))
-- \m_addr[7]~41\ = CARRY(((!\m_addr[6]~39\) # (!\Add0~30_combout\)) # (!\s_addr[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[7]~input_o\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \m_addr[6]~39\,
	combout => \m_addr[7]~40_combout\,
	cout => \m_addr[7]~41\);

-- Location: FF_X50_Y37_N15
\m_addr[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[7]~40_combout\,
	asdata => \s_addr[7]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[7]~reg0_q\);

-- Location: LCCOMB_X50_Y37_N16
\m_addr[8]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[8]~42_combout\ = (\m_addr[7]~41\ & (\s_addr[8]~input_o\ & (\Add0~30_combout\ & VCC))) # (!\m_addr[7]~41\ & ((((\s_addr[8]~input_o\ & \Add0~30_combout\)))))
-- \m_addr[8]~43\ = CARRY((\s_addr[8]~input_o\ & (\Add0~30_combout\ & !\m_addr[7]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[8]~input_o\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \m_addr[7]~41\,
	combout => \m_addr[8]~42_combout\,
	cout => \m_addr[8]~43\);

-- Location: FF_X50_Y37_N17
\m_addr[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[8]~42_combout\,
	asdata => \s_addr[8]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[8]~reg0_q\);

-- Location: LCCOMB_X50_Y37_N18
\m_addr[9]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[9]~44_combout\ = (\m_addr[8]~43\ & (((!\s_addr[9]~input_o\)) # (!\Add0~30_combout\))) # (!\m_addr[8]~43\ & (((\Add0~30_combout\ & \s_addr[9]~input_o\)) # (GND)))
-- \m_addr[9]~45\ = CARRY(((!\m_addr[8]~43\) # (!\s_addr[9]~input_o\)) # (!\Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \s_addr[9]~input_o\,
	datad => VCC,
	cin => \m_addr[8]~43\,
	combout => \m_addr[9]~44_combout\,
	cout => \m_addr[9]~45\);

-- Location: FF_X50_Y37_N19
\m_addr[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[9]~44_combout\,
	asdata => \s_addr[9]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[9]~reg0_q\);

-- Location: LCCOMB_X45_Y37_N6
\Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (!\state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[10]~input_o\,
	datab => \state.READ_FLUSH_TO_MEM~q\,
	datac => \state.WRITE_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X50_Y37_N20
\m_addr[10]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[10]~46_combout\ = (\m_addr[9]~45\ & (\Add0~7_combout\ & (\Add0~30_combout\ & VCC))) # (!\m_addr[9]~45\ & ((((\Add0~7_combout\ & \Add0~30_combout\)))))
-- \m_addr[10]~47\ = CARRY((\Add0~7_combout\ & (\Add0~30_combout\ & !\m_addr[9]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \m_addr[9]~45\,
	combout => \m_addr[10]~46_combout\,
	cout => \m_addr[10]~47\);

-- Location: FF_X50_Y37_N21
\m_addr[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[10]~46_combout\,
	asdata => \s_addr[10]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[10]~reg0_q\);

-- Location: LCCOMB_X45_Y37_N16
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\))) # 
-- (!\state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[11]~input_o\,
	datab => \state.READ_FLUSH_TO_MEM~q\,
	datac => \state.WRITE_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X50_Y37_N22
\m_addr[11]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[11]~48_combout\ = (\m_addr[10]~47\ & (((!\Add0~8_combout\)) # (!\Add0~30_combout\))) # (!\m_addr[10]~47\ & (((\Add0~30_combout\ & \Add0~8_combout\)) # (GND)))
-- \m_addr[11]~49\ = CARRY(((!\m_addr[10]~47\) # (!\Add0~8_combout\)) # (!\Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \m_addr[10]~47\,
	combout => \m_addr[11]~48_combout\,
	cout => \m_addr[11]~49\);

-- Location: FF_X50_Y37_N23
\m_addr[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[11]~48_combout\,
	asdata => \s_addr[11]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[11]~reg0_q\);

-- Location: LCCOMB_X45_Y37_N26
\Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\)))) # (!\state.WRITE_FLUSH_TO_MEM~q\ & ((\state.READ_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\))) # 
-- (!\state.READ_FLUSH_TO_MEM~q\ & (\s_addr[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_FLUSH_TO_MEM~q\,
	datab => \state.READ_FLUSH_TO_MEM~q\,
	datac => \s_addr[12]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	combout => \Add0~9_combout\);

-- Location: LCCOMB_X50_Y37_N24
\m_addr[12]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[12]~50_combout\ = (\m_addr[11]~49\ & (\Add0~9_combout\ & (\Add0~30_combout\ & VCC))) # (!\m_addr[11]~49\ & ((((\Add0~9_combout\ & \Add0~30_combout\)))))
-- \m_addr[12]~51\ = CARRY((\Add0~9_combout\ & (\Add0~30_combout\ & !\m_addr[11]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \m_addr[11]~49\,
	combout => \m_addr[12]~50_combout\,
	cout => \m_addr[12]~51\);

-- Location: FF_X50_Y37_N25
\m_addr[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[12]~50_combout\,
	asdata => \s_addr[12]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[12]~reg0_q\);

-- Location: LCCOMB_X50_Y37_N0
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\)))) # (!\state.WRITE_FLUSH_TO_MEM~q\ & ((\state.READ_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\))) # 
-- (!\state.READ_FLUSH_TO_MEM~q\ & (\s_addr[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_FLUSH_TO_MEM~q\,
	datab => \state.READ_FLUSH_TO_MEM~q\,
	datac => \s_addr[13]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X50_Y37_N26
\m_addr[13]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[13]~52_combout\ = (\m_addr[12]~51\ & (((!\Add0~10_combout\)) # (!\Add0~30_combout\))) # (!\m_addr[12]~51\ & (((\Add0~30_combout\ & \Add0~10_combout\)) # (GND)))
-- \m_addr[13]~53\ = CARRY(((!\m_addr[12]~51\) # (!\Add0~10_combout\)) # (!\Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \m_addr[12]~51\,
	combout => \m_addr[13]~52_combout\,
	cout => \m_addr[13]~53\);

-- Location: FF_X50_Y37_N27
\m_addr[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[13]~52_combout\,
	asdata => \s_addr[13]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[13]~reg0_q\);

-- Location: LCCOMB_X50_Y37_N2
\Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\)))) # (!\state.WRITE_FLUSH_TO_MEM~q\ & ((\state.READ_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\))) # (!\state.READ_FLUSH_TO_MEM~q\ & (\s_addr[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_FLUSH_TO_MEM~q\,
	datab => \state.READ_FLUSH_TO_MEM~q\,
	datac => \s_addr[14]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X50_Y37_N28
\m_addr[14]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[14]~54_combout\ = (\m_addr[13]~53\ & (\Add0~11_combout\ & (\Add0~30_combout\ & VCC))) # (!\m_addr[13]~53\ & ((((\Add0~11_combout\ & \Add0~30_combout\)))))
-- \m_addr[14]~55\ = CARRY((\Add0~11_combout\ & (\Add0~30_combout\ & !\m_addr[13]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \m_addr[13]~53\,
	combout => \m_addr[14]~54_combout\,
	cout => \m_addr[14]~55\);

-- Location: FF_X50_Y37_N29
\m_addr[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[14]~54_combout\,
	asdata => \s_addr[14]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[14]~reg0_q\);

-- Location: LCCOMB_X49_Y37_N6
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\))) # 
-- (!\state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[15]~input_o\,
	datab => \state.READ_FLUSH_TO_MEM~q\,
	datac => \state.WRITE_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X50_Y37_N30
\m_addr[15]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[15]~56_combout\ = (\m_addr[14]~55\ & (((!\Add0~30_combout\)) # (!\Add0~12_combout\))) # (!\m_addr[14]~55\ & (((\Add0~12_combout\ & \Add0~30_combout\)) # (GND)))
-- \m_addr[15]~57\ = CARRY(((!\m_addr[14]~55\) # (!\Add0~30_combout\)) # (!\Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \m_addr[14]~55\,
	combout => \m_addr[15]~56_combout\,
	cout => \m_addr[15]~57\);

-- Location: FF_X50_Y37_N31
\m_addr[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[15]~56_combout\,
	asdata => \s_addr[15]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[15]~reg0_q\);

-- Location: LCCOMB_X47_Y36_N8
\Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\))) # 
-- (!\state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_FLUSH_TO_MEM~q\,
	datab => \state.WRITE_FLUSH_TO_MEM~q\,
	datac => \s_addr[16]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X50_Y36_N0
\m_addr[16]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[16]~58_combout\ = (\m_addr[15]~57\ & (\Add0~13_combout\ & (\Add0~30_combout\ & VCC))) # (!\m_addr[15]~57\ & ((((\Add0~13_combout\ & \Add0~30_combout\)))))
-- \m_addr[16]~59\ = CARRY((\Add0~13_combout\ & (\Add0~30_combout\ & !\m_addr[15]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \m_addr[15]~57\,
	combout => \m_addr[16]~58_combout\,
	cout => \m_addr[16]~59\);

-- Location: FF_X50_Y36_N1
\m_addr[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[16]~58_combout\,
	asdata => \s_addr[16]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[16]~reg0_q\);

-- Location: LCCOMB_X49_Y37_N20
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\))) # 
-- (!\state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[17]~input_o\,
	datab => \state.READ_FLUSH_TO_MEM~q\,
	datac => \state.WRITE_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X50_Y36_N2
\m_addr[17]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[17]~60_combout\ = (\m_addr[16]~59\ & (((!\Add0~30_combout\)) # (!\Add0~14_combout\))) # (!\m_addr[16]~59\ & (((\Add0~14_combout\ & \Add0~30_combout\)) # (GND)))
-- \m_addr[17]~61\ = CARRY(((!\m_addr[16]~59\) # (!\Add0~30_combout\)) # (!\Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \m_addr[16]~59\,
	combout => \m_addr[17]~60_combout\,
	cout => \m_addr[17]~61\);

-- Location: FF_X50_Y36_N3
\m_addr[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[17]~60_combout\,
	asdata => \s_addr[17]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[17]~reg0_q\);

-- Location: LCCOMB_X47_Y36_N6
\Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\)))) # (!\state.WRITE_FLUSH_TO_MEM~q\ & ((\state.READ_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\))) # 
-- (!\state.READ_FLUSH_TO_MEM~q\ & (\s_addr[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[18]~input_o\,
	datab => \state.WRITE_FLUSH_TO_MEM~q\,
	datac => \state.READ_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X50_Y36_N4
\m_addr[18]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[18]~62_combout\ = (\m_addr[17]~61\ & (\Add0~15_combout\ & (\Add0~30_combout\ & VCC))) # (!\m_addr[17]~61\ & ((((\Add0~15_combout\ & \Add0~30_combout\)))))
-- \m_addr[18]~63\ = CARRY((\Add0~15_combout\ & (\Add0~30_combout\ & !\m_addr[17]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \m_addr[17]~61\,
	combout => \m_addr[18]~62_combout\,
	cout => \m_addr[18]~63\);

-- Location: FF_X50_Y36_N5
\m_addr[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[18]~62_combout\,
	asdata => \s_addr[18]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[18]~reg0_q\);

-- Location: LCCOMB_X47_Y36_N4
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\)))) # (!\state.WRITE_FLUSH_TO_MEM~q\ & ((\state.READ_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\))) # 
-- (!\state.READ_FLUSH_TO_MEM~q\ & (\s_addr[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[19]~input_o\,
	datab => \state.WRITE_FLUSH_TO_MEM~q\,
	datac => \state.READ_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X50_Y36_N6
\m_addr[19]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[19]~64_combout\ = (\m_addr[18]~63\ & (((!\Add0~30_combout\)) # (!\Add0~16_combout\))) # (!\m_addr[18]~63\ & (((\Add0~16_combout\ & \Add0~30_combout\)) # (GND)))
-- \m_addr[19]~65\ = CARRY(((!\m_addr[18]~63\) # (!\Add0~30_combout\)) # (!\Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \m_addr[18]~63\,
	combout => \m_addr[19]~64_combout\,
	cout => \m_addr[19]~65\);

-- Location: FF_X50_Y36_N7
\m_addr[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[19]~64_combout\,
	asdata => \s_addr[19]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[19]~reg0_q\);

-- Location: LCCOMB_X47_Y36_N18
\Add0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\))) # 
-- (!\state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_FLUSH_TO_MEM~q\,
	datab => \state.WRITE_FLUSH_TO_MEM~q\,
	datac => \s_addr[20]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X50_Y36_N8
\m_addr[20]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[20]~66_combout\ = (\m_addr[19]~65\ & (\Add0~17_combout\ & (\Add0~30_combout\ & VCC))) # (!\m_addr[19]~65\ & ((((\Add0~17_combout\ & \Add0~30_combout\)))))
-- \m_addr[20]~67\ = CARRY((\Add0~17_combout\ & (\Add0~30_combout\ & !\m_addr[19]~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \m_addr[19]~65\,
	combout => \m_addr[20]~66_combout\,
	cout => \m_addr[20]~67\);

-- Location: FF_X50_Y36_N9
\m_addr[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[20]~66_combout\,
	asdata => \s_addr[20]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[20]~reg0_q\);

-- Location: LCCOMB_X47_Y37_N30
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\)) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\)) # 
-- (!\state.WRITE_FLUSH_TO_MEM~q\ & ((\s_addr[21]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_FLUSH_TO_MEM~q\,
	datab => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datac => \s_addr[21]~input_o\,
	datad => \state.WRITE_FLUSH_TO_MEM~q\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X50_Y36_N10
\m_addr[21]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[21]~68_combout\ = (\m_addr[20]~67\ & (((!\Add0~30_combout\)) # (!\Add0~18_combout\))) # (!\m_addr[20]~67\ & (((\Add0~18_combout\ & \Add0~30_combout\)) # (GND)))
-- \m_addr[21]~69\ = CARRY(((!\m_addr[20]~67\) # (!\Add0~30_combout\)) # (!\Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \m_addr[20]~67\,
	combout => \m_addr[21]~68_combout\,
	cout => \m_addr[21]~69\);

-- Location: FF_X50_Y36_N11
\m_addr[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[21]~68_combout\,
	asdata => \s_addr[21]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[21]~reg0_q\);

-- Location: LCCOMB_X47_Y37_N12
\Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\))) # 
-- (!\state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_FLUSH_TO_MEM~q\,
	datab => \state.WRITE_FLUSH_TO_MEM~q\,
	datac => \s_addr[22]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	combout => \Add0~19_combout\);

-- Location: LCCOMB_X50_Y36_N12
\m_addr[22]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[22]~70_combout\ = (\m_addr[21]~69\ & (\Add0~30_combout\ & (\Add0~19_combout\ & VCC))) # (!\m_addr[21]~69\ & ((((\Add0~30_combout\ & \Add0~19_combout\)))))
-- \m_addr[22]~71\ = CARRY((\Add0~30_combout\ & (\Add0~19_combout\ & !\m_addr[21]~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~19_combout\,
	datad => VCC,
	cin => \m_addr[21]~69\,
	combout => \m_addr[22]~70_combout\,
	cout => \m_addr[22]~71\);

-- Location: FF_X50_Y36_N13
\m_addr[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[22]~70_combout\,
	asdata => \s_addr[22]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[22]~reg0_q\);

-- Location: LCCOMB_X47_Y37_N22
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\))) # 
-- (!\state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_FLUSH_TO_MEM~q\,
	datab => \s_addr[23]~input_o\,
	datac => \state.WRITE_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X50_Y36_N14
\m_addr[23]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[23]~72_combout\ = (\m_addr[22]~71\ & (((!\Add0~30_combout\)) # (!\Add0~20_combout\))) # (!\m_addr[22]~71\ & (((\Add0~20_combout\ & \Add0~30_combout\)) # (GND)))
-- \m_addr[23]~73\ = CARRY(((!\m_addr[22]~71\) # (!\Add0~30_combout\)) # (!\Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \Add0~30_combout\,
	datad => VCC,
	cin => \m_addr[22]~71\,
	combout => \m_addr[23]~72_combout\,
	cout => \m_addr[23]~73\);

-- Location: FF_X50_Y36_N15
\m_addr[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[23]~72_combout\,
	asdata => \s_addr[23]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[23]~reg0_q\);

-- Location: LCCOMB_X47_Y37_N16
\Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\)))) # (!\state.WRITE_FLUSH_TO_MEM~q\ & ((\state.READ_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\))) # 
-- (!\state.READ_FLUSH_TO_MEM~q\ & (\s_addr[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_FLUSH_TO_MEM~q\,
	datab => \s_addr[24]~input_o\,
	datac => \state.READ_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\,
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X50_Y36_N16
\m_addr[24]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[24]~74_combout\ = (\m_addr[23]~73\ & (\Add0~30_combout\ & (\Add0~21_combout\ & VCC))) # (!\m_addr[23]~73\ & ((((\Add0~30_combout\ & \Add0~21_combout\)))))
-- \m_addr[24]~75\ = CARRY((\Add0~30_combout\ & (\Add0~21_combout\ & !\m_addr[23]~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~21_combout\,
	datad => VCC,
	cin => \m_addr[23]~73\,
	combout => \m_addr[24]~74_combout\,
	cout => \m_addr[24]~75\);

-- Location: FF_X50_Y36_N17
\m_addr[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[24]~74_combout\,
	asdata => \s_addr[24]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[24]~reg0_q\);

-- Location: LCCOMB_X47_Y37_N10
\Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\))) # 
-- (!\state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_FLUSH_TO_MEM~q\,
	datab => \s_addr[25]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datad => \state.WRITE_FLUSH_TO_MEM~q\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X50_Y36_N18
\m_addr[25]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[25]~76_combout\ = (\m_addr[24]~75\ & (((!\Add0~22_combout\)) # (!\Add0~30_combout\))) # (!\m_addr[24]~75\ & (((\Add0~30_combout\ & \Add0~22_combout\)) # (GND)))
-- \m_addr[25]~77\ = CARRY(((!\m_addr[24]~75\) # (!\Add0~22_combout\)) # (!\Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~22_combout\,
	datad => VCC,
	cin => \m_addr[24]~75\,
	combout => \m_addr[25]~76_combout\,
	cout => \m_addr[25]~77\);

-- Location: FF_X50_Y36_N19
\m_addr[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[25]~76_combout\,
	asdata => \s_addr[25]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[25]~reg0_q\);

-- Location: LCCOMB_X47_Y36_N24
\Add0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\))) # 
-- (!\state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_FLUSH_TO_MEM~q\,
	datab => \s_addr[26]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datad => \state.WRITE_FLUSH_TO_MEM~q\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X50_Y36_N20
\m_addr[26]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[26]~78_combout\ = (\m_addr[25]~77\ & (\Add0~30_combout\ & (\Add0~23_combout\ & VCC))) # (!\m_addr[25]~77\ & ((((\Add0~30_combout\ & \Add0~23_combout\)))))
-- \m_addr[26]~79\ = CARRY((\Add0~30_combout\ & (\Add0~23_combout\ & !\m_addr[25]~77\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~23_combout\,
	datad => VCC,
	cin => \m_addr[25]~77\,
	combout => \m_addr[26]~78_combout\,
	cout => \m_addr[26]~79\);

-- Location: FF_X50_Y36_N21
\m_addr[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[26]~78_combout\,
	asdata => \s_addr[26]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[26]~reg0_q\);

-- Location: LCCOMB_X47_Y36_N26
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\))) # 
-- (!\state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_FLUSH_TO_MEM~q\,
	datab => \state.WRITE_FLUSH_TO_MEM~q\,
	datac => \s_addr[27]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	combout => \Add0~24_combout\);

-- Location: LCCOMB_X50_Y36_N22
\m_addr[27]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[27]~80_combout\ = (\m_addr[26]~79\ & (((!\Add0~24_combout\)) # (!\Add0~30_combout\))) # (!\m_addr[26]~79\ & (((\Add0~30_combout\ & \Add0~24_combout\)) # (GND)))
-- \m_addr[27]~81\ = CARRY(((!\m_addr[26]~79\) # (!\Add0~24_combout\)) # (!\Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~24_combout\,
	datad => VCC,
	cin => \m_addr[26]~79\,
	combout => \m_addr[27]~80_combout\,
	cout => \m_addr[27]~81\);

-- Location: FF_X50_Y36_N23
\m_addr[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[27]~80_combout\,
	asdata => \s_addr[27]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[27]~reg0_q\);

-- Location: LCCOMB_X49_Y36_N24
\Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\))) # 
-- (!\state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[28]~input_o\,
	datab => \state.READ_FLUSH_TO_MEM~q\,
	datac => \state.WRITE_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	combout => \Add0~25_combout\);

-- Location: LCCOMB_X50_Y36_N24
\m_addr[28]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[28]~82_combout\ = (\m_addr[27]~81\ & (\Add0~30_combout\ & (\Add0~25_combout\ & VCC))) # (!\m_addr[27]~81\ & ((((\Add0~30_combout\ & \Add0~25_combout\)))))
-- \m_addr[28]~83\ = CARRY((\Add0~30_combout\ & (\Add0~25_combout\ & !\m_addr[27]~81\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~25_combout\,
	datad => VCC,
	cin => \m_addr[27]~81\,
	combout => \m_addr[28]~82_combout\,
	cout => \m_addr[28]~83\);

-- Location: FF_X50_Y36_N25
\m_addr[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[28]~82_combout\,
	asdata => \s_addr[28]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[28]~reg0_q\);

-- Location: LCCOMB_X49_Y37_N2
\Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\))) # 
-- (!\state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[29]~input_o\,
	datab => \state.READ_FLUSH_TO_MEM~q\,
	datac => \state.WRITE_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X50_Y36_N26
\m_addr[29]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[29]~84_combout\ = (\m_addr[28]~83\ & (((!\Add0~26_combout\)) # (!\Add0~30_combout\))) # (!\m_addr[28]~83\ & (((\Add0~30_combout\ & \Add0~26_combout\)) # (GND)))
-- \m_addr[29]~85\ = CARRY(((!\m_addr[28]~83\) # (!\Add0~26_combout\)) # (!\Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \m_addr[28]~83\,
	combout => \m_addr[29]~84_combout\,
	cout => \m_addr[29]~85\);

-- Location: FF_X50_Y36_N27
\m_addr[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[29]~84_combout\,
	asdata => \s_addr[29]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[29]~reg0_q\);

-- Location: LCCOMB_X47_Y36_N16
\Add0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\)))) # (!\state.READ_FLUSH_TO_MEM~q\ & ((\state.WRITE_FLUSH_TO_MEM~q\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\)) # 
-- (!\state.WRITE_FLUSH_TO_MEM~q\ & ((\s_addr[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.READ_FLUSH_TO_MEM~q\,
	datab => \state.WRITE_FLUSH_TO_MEM~q\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datad => \s_addr[30]~input_o\,
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X50_Y36_N28
\m_addr[30]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \m_addr[30]~86_combout\ = \m_addr[29]~85\ $ (((!\Add0~27_combout\) # (!\Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datad => \Add0~27_combout\,
	cin => \m_addr[29]~85\,
	combout => \m_addr[30]~86_combout\);

-- Location: FF_X50_Y36_N29
\m_addr[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \m_addr[30]~86_combout\,
	asdata => \s_addr[30]~input_o\,
	sload => \ALT_INV_Add0~6_combout\,
	ena => \m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_addr[30]~reg0_q\);

-- Location: LCCOMB_X52_Y37_N26
\Selector21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~2_combout\ = (!\state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\ & (\m_read~reg0_q\ & (!\state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\ & !\state.DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datab => \m_read~reg0_q\,
	datac => \state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datad => \state.DONE~q\,
	combout => \Selector21~2_combout\);

-- Location: LCCOMB_X48_Y37_N22
\Selector21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\tag_ready~q\ & (!\Equal0~14_combout\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datab => \tag_ready~q\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \Equal0~14_combout\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X52_Y37_N28
\Selector21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\state.READ_START~q\ & ((\s_addr[31]~input_o\) # ((\m_read~reg0_q\) # (\Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[31]~input_o\,
	datab => \m_read~reg0_q\,
	datac => \state.READ_START~q\,
	datad => \Selector21~0_combout\,
	combout => \Selector21~1_combout\);

-- Location: LCCOMB_X52_Y37_N20
\Selector21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~3_combout\ = (\state.WRITE_GET_BLOCK_FROM_MEM~q\) # ((\state.READ_GET_BLOCK_FROM_MEM~q\) # ((\Selector21~2_combout\) # (\Selector21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_GET_BLOCK_FROM_MEM~q\,
	datab => \state.READ_GET_BLOCK_FROM_MEM~q\,
	datac => \Selector21~2_combout\,
	datad => \Selector21~1_combout\,
	combout => \Selector21~3_combout\);

-- Location: FF_X52_Y37_N21
\m_read~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector21~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_read~reg0_q\);

-- Location: LCCOMB_X49_Y37_N16
\Selector80~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\m_write~reg0_q\ & ((\state.WRITE_START~q\) # ((!\state.DONE~q\)))) # (!\m_write~reg0_q\ & (\state.WRITE_START~q\ & ((\s_addr[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_write~reg0_q\,
	datab => \state.WRITE_START~q\,
	datac => \state.DONE~q\,
	datad => \s_addr[31]~input_o\,
	combout => \Selector80~0_combout\);

-- Location: LCCOMB_X49_Y37_N22
\Selector80~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector80~1_combout\ = (\state.READ_FLUSH_TO_MEM~q\) # ((\state.WRITE_FLUSH_TO_MEM~q\) # (\Selector80~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.READ_FLUSH_TO_MEM~q\,
	datac => \state.WRITE_FLUSH_TO_MEM~q\,
	datad => \Selector80~0_combout\,
	combout => \Selector80~1_combout\);

-- Location: FF_X49_Y37_N23
\m_write~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector80~1_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \m_write~reg0_q\);

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


