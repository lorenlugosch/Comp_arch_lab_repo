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

-- DATE "01/26/2015 01:22:39"

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
	m_addr : BUFFER std_logic_vector(30 DOWNTO 0);
	m_read : BUFFER std_logic;
	m_readdata : IN std_logic_vector(31 DOWNTO 0);
	m_write : BUFFER std_logic;
	m_writedata : BUFFER std_logic_vector(31 DOWNTO 0);
	m_waitrequest : IN std_logic
	);
END cache;

-- Design Ports Information
-- s_readdata[0]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[1]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[3]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[5]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[7]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[8]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[9]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[10]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[11]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[12]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[13]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[14]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[15]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[16]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[17]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[18]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[19]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[20]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[21]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[22]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[23]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[24]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[25]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[26]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[27]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[28]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[29]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[30]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_readdata[31]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_waitrequest	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[3]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[8]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[9]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[10]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[11]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[12]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[13]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[15]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[16]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[17]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[18]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[19]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[20]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[21]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[22]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[23]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[24]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[25]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[26]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[27]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[28]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[29]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_addr[30]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_read	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_write	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[1]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[4]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[5]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[6]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[7]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[8]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[9]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[10]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[11]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[12]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[13]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[14]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[15]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[16]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[17]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[18]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[19]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[20]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[21]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[22]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[23]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[24]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[25]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[26]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[27]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[28]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[29]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[30]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_writedata[31]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[2]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[3]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[4]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[5]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[6]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[8]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[9]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[10]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[11]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[12]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[13]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[14]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[15]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[16]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[17]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[18]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[19]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[20]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[21]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[22]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[23]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[24]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[25]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[26]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[27]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[28]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[29]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[30]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_readdata[31]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- m_waitrequest	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[10]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[11]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[12]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[13]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[14]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[15]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[16]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[17]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[18]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[19]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[20]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[21]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[22]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[23]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[24]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[25]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[26]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[27]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[28]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[29]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[31]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[30]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[2]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[6]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[7]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[8]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_addr[9]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[0]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[1]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[2]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[3]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[4]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[5]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[7]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[8]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[9]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[10]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[11]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[12]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[13]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[14]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[15]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[16]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[17]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[18]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[19]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[20]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[21]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[22]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[23]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[24]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[25]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[26]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[27]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[28]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[29]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[30]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_writedata[31]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s_read	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \s_addr[31]~input_o\ : std_logic;
SIGNAL \m_waitrequest~input_o\ : std_logic;
SIGNAL \cache_controller|Selector20~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \cache_controller|tag_ready~q\ : std_logic;
SIGNAL \cache_controller|Selector5~0_combout\ : std_logic;
SIGNAL \s_write~input_o\ : std_logic;
SIGNAL \s_read~input_o\ : std_logic;
SIGNAL \cache_controller|Selector4~0_combout\ : std_logic;
SIGNAL \cache_controller|Selector14~0_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \cache_controller|state.WRITE_START~q\ : std_logic;
SIGNAL \cache_controller|Add0~6_combout\ : std_logic;
SIGNAL \cache_controller|out_count[2]~1_combout\ : std_logic;
SIGNAL \cache_controller|Selector12~2_combout\ : std_logic;
SIGNAL \cache_controller|Selector55~0_combout\ : std_logic;
SIGNAL \cache_controller|write_tag~q\ : std_logic;
SIGNAL \s_addr[9]~input_o\ : std_logic;
SIGNAL \cache_controller|writedata_tag[0]~4_combout\ : std_logic;
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
SIGNAL \cache_controller|writedata_tag[3]~feeder_combout\ : std_logic;
SIGNAL \s_addr[14]~input_o\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \cache_controller|Selector12~0_combout\ : std_logic;
SIGNAL \s_addr[13]~input_o\ : std_logic;
SIGNAL \s_addr[15]~input_o\ : std_logic;
SIGNAL \cache_controller|writedata_tag[6]~feeder_combout\ : std_logic;
SIGNAL \s_addr[16]~input_o\ : std_logic;
SIGNAL \cache_controller|writedata_tag[7]~feeder_combout\ : std_logic;
SIGNAL \s_addr[17]~input_o\ : std_logic;
SIGNAL \cache_controller|writedata_tag[8]~feeder_combout\ : std_logic;
SIGNAL \s_addr[18]~input_o\ : std_logic;
SIGNAL \s_addr[19]~input_o\ : std_logic;
SIGNAL \s_addr[20]~input_o\ : std_logic;
SIGNAL \cache_controller|writedata_tag[11]~feeder_combout\ : std_logic;
SIGNAL \s_addr[21]~input_o\ : std_logic;
SIGNAL \s_addr[22]~input_o\ : std_logic;
SIGNAL \s_addr[23]~input_o\ : std_logic;
SIGNAL \s_addr[24]~input_o\ : std_logic;
SIGNAL \cache_controller|writedata_tag[15]~feeder_combout\ : std_logic;
SIGNAL \s_addr[25]~input_o\ : std_logic;
SIGNAL \cache_controller|writedata_tag[16]~feeder_combout\ : std_logic;
SIGNAL \s_addr[26]~input_o\ : std_logic;
SIGNAL \cache_controller|writedata_tag[17]~feeder_combout\ : std_logic;
SIGNAL \s_addr[27]~input_o\ : std_logic;
SIGNAL \cache_controller|writedata_tag[18]~feeder_combout\ : std_logic;
SIGNAL \s_addr[28]~input_o\ : std_logic;
SIGNAL \cache_controller|writedata_tag[19]~feeder_combout\ : std_logic;
SIGNAL \s_addr[29]~input_o\ : std_logic;
SIGNAL \cache_controller|writedata_tag[20]~feeder_combout\ : std_logic;
SIGNAL \s_addr[30]~input_o\ : std_logic;
SIGNAL \cache_controller|writedata_tag[22]~2_combout\ : std_logic;
SIGNAL \cache_controller|writedata_tag[22]~3_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \cache_controller|Equal0~6_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \cache_controller|Equal0~8_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \cache_controller|Equal0~7_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \cache_controller|Equal0~5_combout\ : std_logic;
SIGNAL \cache_controller|Equal0~9_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \cache_controller|Equal0~11_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \cache_controller|Equal0~12_combout\ : std_logic;
SIGNAL \cache_controller|Equal0~13_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \cache_controller|Equal0~10_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \cache_controller|Equal0~3_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \cache_controller|Equal0~1_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \cache_controller|Equal0~2_combout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \cache_controller|Equal0~0_combout\ : std_logic;
SIGNAL \cache_controller|Equal0~4_combout\ : std_logic;
SIGNAL \cache_controller|Equal0~14_combout\ : std_logic;
SIGNAL \cache_controller|Selector12~1_combout\ : std_logic;
SIGNAL \cache_controller|Selector12~3_combout\ : std_logic;
SIGNAL \cache_controller|state.WRITE_FLUSH_TO_MEM~q\ : std_logic;
SIGNAL \cache_controller|word_select[1]~3_combout\ : std_logic;
SIGNAL \cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\ : std_logic;
SIGNAL \cache_controller|word_select[1]~5_combout\ : std_logic;
SIGNAL \cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\ : std_logic;
SIGNAL \cache_controller|state.RST~feeder_combout\ : std_logic;
SIGNAL \cache_controller|state.RST~q\ : std_logic;
SIGNAL \cache_controller|out_count[0]~3_combout\ : std_logic;
SIGNAL \cache_controller|out_count[0]~5_combout\ : std_logic;
SIGNAL \cache_controller|Add1~0_combout\ : std_logic;
SIGNAL \cache_controller|out_count[2]~6_combout\ : std_logic;
SIGNAL \cache_controller|Selector6~0_combout\ : std_logic;
SIGNAL \cache_controller|Selector6~1_combout\ : std_logic;
SIGNAL \cache_controller|Selector6~2_combout\ : std_logic;
SIGNAL \cache_controller|Selector6~3_combout\ : std_logic;
SIGNAL \cache_controller|state.READ_GET_BLOCK_FROM_MEM~q\ : std_logic;
SIGNAL \cache_controller|word_select[1]~2_combout\ : std_logic;
SIGNAL \cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\ : std_logic;
SIGNAL \cache_controller|WideOr18~0_combout\ : std_logic;
SIGNAL \cache_controller|out_count[2]~0_combout\ : std_logic;
SIGNAL \cache_controller|out_count[2]~2_combout\ : std_logic;
SIGNAL \cache_controller|out_count[1]~4_combout\ : std_logic;
SIGNAL \cache_controller|Equal1~0_combout\ : std_logic;
SIGNAL \cache_controller|Selector8~0_combout\ : std_logic;
SIGNAL \cache_controller|Selector8~1_combout\ : std_logic;
SIGNAL \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM~q\ : std_logic;
SIGNAL \cache_controller|word_select[1]~4_combout\ : std_logic;
SIGNAL \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\ : std_logic;
SIGNAL \cache_controller|Selector16~1_combout\ : std_logic;
SIGNAL \cache_controller|Selector15~0_combout\ : std_logic;
SIGNAL \cache_controller|Selector15~1_combout\ : std_logic;
SIGNAL \cache_controller|Selector15~2_combout\ : std_logic;
SIGNAL \cache_controller|state.DONE~q\ : std_logic;
SIGNAL \cache_controller|Selector4~1_combout\ : std_logic;
SIGNAL \cache_controller|state.IDLE~q\ : std_logic;
SIGNAL \cache_controller|Selector5~1_combout\ : std_logic;
SIGNAL \cache_controller|state.READ_START~q\ : std_logic;
SIGNAL \cache_controller|Selector10~0_combout\ : std_logic;
SIGNAL \cache_controller|Selector10~1_combout\ : std_logic;
SIGNAL \cache_controller|state.READ_FLUSH_TO_MEM~q\ : std_logic;
SIGNAL \cache_controller|Selector16~0_combout\ : std_logic;
SIGNAL \s_addr[1]~input_o\ : std_logic;
SIGNAL \cache_controller|Selector51~0_combout\ : std_logic;
SIGNAL \cache_controller|word_select[1]~feeder_combout\ : std_logic;
SIGNAL \cache_controller|word_select[1]~6_combout\ : std_logic;
SIGNAL \cache_controller|word_select[1]~9_combout\ : std_logic;
SIGNAL \cache_controller|word_select[1]~7_combout\ : std_logic;
SIGNAL \cache_controller|word_select[1]~8_combout\ : std_logic;
SIGNAL \s_addr[0]~input_o\ : std_logic;
SIGNAL \cache_controller|Selector52~0_combout\ : std_logic;
SIGNAL \cache_controller|word_select[0]~feeder_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[0]~88_combout\ : std_logic;
SIGNAL \cache_controller|Selector17~0_combout\ : std_logic;
SIGNAL \cache_controller|Selector16~3_combout\ : std_logic;
SIGNAL \cache_controller|s_waitrequest~0_combout\ : std_logic;
SIGNAL \cache_controller|Selector16~2_combout\ : std_logic;
SIGNAL \cache_controller|Selector16~4_combout\ : std_logic;
SIGNAL \cache_controller|Selector17~5_combout\ : std_logic;
SIGNAL \cache_controller|Selector57~0_combout\ : std_logic;
SIGNAL \cache_controller|Selector17~4_combout\ : std_logic;
SIGNAL \cache_controller|Selector17~1_combout\ : std_logic;
SIGNAL \cache_controller|Selector17~2_combout\ : std_logic;
SIGNAL \cache_controller|Selector17~3_combout\ : std_logic;
SIGNAL \cache_controller|Selector17~6_combout\ : std_logic;
SIGNAL \write_one~0_combout\ : std_logic;
SIGNAL \s_writedata[0]~input_o\ : std_logic;
SIGNAL \m_readdata[0]~input_o\ : std_logic;
SIGNAL \cache_controller|Selector18~0_combout\ : std_logic;
SIGNAL \cache_controller|Selector18~1_combout\ : std_logic;
SIGNAL \cache_controller|Selector19~5_combout\ : std_logic;
SIGNAL \cache_controller|Selector18~2_combout\ : std_logic;
SIGNAL \Mux98~0_combout\ : std_logic;
SIGNAL \m_readdata[1]~input_o\ : std_logic;
SIGNAL \s_writedata[1]~input_o\ : std_logic;
SIGNAL \Mux100~0_combout\ : std_logic;
SIGNAL \s_writedata[2]~input_o\ : std_logic;
SIGNAL \m_readdata[2]~input_o\ : std_logic;
SIGNAL \Mux102~0_combout\ : std_logic;
SIGNAL \s_writedata[3]~input_o\ : std_logic;
SIGNAL \m_readdata[3]~input_o\ : std_logic;
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
SIGNAL \s_writedata[8]~input_o\ : std_logic;
SIGNAL \m_readdata[8]~input_o\ : std_logic;
SIGNAL \Mux114~0_combout\ : std_logic;
SIGNAL \s_writedata[9]~input_o\ : std_logic;
SIGNAL \m_readdata[9]~input_o\ : std_logic;
SIGNAL \Mux116~0_combout\ : std_logic;
SIGNAL \m_readdata[10]~input_o\ : std_logic;
SIGNAL \s_writedata[10]~input_o\ : std_logic;
SIGNAL \Mux118~0_combout\ : std_logic;
SIGNAL \s_writedata[11]~input_o\ : std_logic;
SIGNAL \m_readdata[11]~input_o\ : std_logic;
SIGNAL \Mux120~0_combout\ : std_logic;
SIGNAL \s_writedata[12]~input_o\ : std_logic;
SIGNAL \m_readdata[12]~input_o\ : std_logic;
SIGNAL \Mux122~0_combout\ : std_logic;
SIGNAL \m_readdata[13]~input_o\ : std_logic;
SIGNAL \s_writedata[13]~input_o\ : std_logic;
SIGNAL \Mux124~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \write_zero~0_combout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \write_two~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \write_three~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux65~0_combout\ : std_logic;
SIGNAL \Mux97~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux66~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux67~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux68~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux69~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux70~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux71~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux72~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux73~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux74~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux75~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux76~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux77~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
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
SIGNAL \m_readdata[17]~input_o\ : std_logic;
SIGNAL \s_writedata[17]~input_o\ : std_logic;
SIGNAL \Mux132~0_combout\ : std_logic;
SIGNAL \s_writedata[18]~input_o\ : std_logic;
SIGNAL \m_readdata[18]~input_o\ : std_logic;
SIGNAL \Mux134~0_combout\ : std_logic;
SIGNAL \m_readdata[19]~input_o\ : std_logic;
SIGNAL \s_writedata[19]~input_o\ : std_logic;
SIGNAL \Mux136~0_combout\ : std_logic;
SIGNAL \s_writedata[20]~input_o\ : std_logic;
SIGNAL \m_readdata[20]~input_o\ : std_logic;
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
SIGNAL \s_writedata[25]~input_o\ : std_logic;
SIGNAL \m_readdata[25]~input_o\ : std_logic;
SIGNAL \Mux148~0_combout\ : std_logic;
SIGNAL \m_readdata[26]~input_o\ : std_logic;
SIGNAL \s_writedata[26]~input_o\ : std_logic;
SIGNAL \Mux150~0_combout\ : std_logic;
SIGNAL \s_writedata[27]~input_o\ : std_logic;
SIGNAL \m_readdata[27]~input_o\ : std_logic;
SIGNAL \Mux152~0_combout\ : std_logic;
SIGNAL \m_readdata[28]~input_o\ : std_logic;
SIGNAL \s_writedata[28]~input_o\ : std_logic;
SIGNAL \Mux154~0_combout\ : std_logic;
SIGNAL \s_writedata[29]~input_o\ : std_logic;
SIGNAL \m_readdata[29]~input_o\ : std_logic;
SIGNAL \Mux156~0_combout\ : std_logic;
SIGNAL \m_readdata[30]~input_o\ : std_logic;
SIGNAL \s_writedata[30]~input_o\ : std_logic;
SIGNAL \Mux158~0_combout\ : std_logic;
SIGNAL \m_readdata[31]~input_o\ : std_logic;
SIGNAL \s_writedata[31]~input_o\ : std_logic;
SIGNAL \Mux160~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux79~0_combout\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux80~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux81~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux82~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux83~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux84~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux85~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux86~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux87~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux88~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux89~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux90~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux91~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux92~0_combout\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux93~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux94~0_combout\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux95~0_combout\ : std_logic;
SIGNAL \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux96~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux64~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
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
SIGNAL \cache_controller|Selector19~2_combout\ : std_logic;
SIGNAL \cache_controller|Selector19~6_combout\ : std_logic;
SIGNAL \cache_controller|Selector19~3_combout\ : std_logic;
SIGNAL \cache_controller|Selector19~4_combout\ : std_logic;
SIGNAL \cache_controller|s_waitrequest~q\ : std_logic;
SIGNAL \cache_controller|m_addr[0]~feeder_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[0]~29_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[1]~feeder_combout\ : std_logic;
SIGNAL \cache_controller|Add0~28_combout\ : std_logic;
SIGNAL \cache_controller|Add0~29_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[2]~30_combout\ : std_logic;
SIGNAL \cache_controller|Add0~30_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[2]~31\ : std_logic;
SIGNAL \cache_controller|m_addr[3]~32_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[3]~33\ : std_logic;
SIGNAL \cache_controller|m_addr[4]~34_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[4]~35\ : std_logic;
SIGNAL \cache_controller|m_addr[5]~36_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[5]~37\ : std_logic;
SIGNAL \cache_controller|m_addr[6]~38_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[6]~39\ : std_logic;
SIGNAL \cache_controller|m_addr[7]~40_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[7]~41\ : std_logic;
SIGNAL \cache_controller|m_addr[8]~42_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[8]~43\ : std_logic;
SIGNAL \cache_controller|m_addr[9]~44_combout\ : std_logic;
SIGNAL \cache_controller|Add0~7_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[9]~45\ : std_logic;
SIGNAL \cache_controller|m_addr[10]~46_combout\ : std_logic;
SIGNAL \cache_controller|Add0~8_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[10]~47\ : std_logic;
SIGNAL \cache_controller|m_addr[11]~48_combout\ : std_logic;
SIGNAL \cache_controller|Add0~9_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[11]~49\ : std_logic;
SIGNAL \cache_controller|m_addr[12]~50_combout\ : std_logic;
SIGNAL \cache_controller|Add0~10_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[12]~51\ : std_logic;
SIGNAL \cache_controller|m_addr[13]~52_combout\ : std_logic;
SIGNAL \cache_controller|Add0~11_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[13]~53\ : std_logic;
SIGNAL \cache_controller|m_addr[14]~54_combout\ : std_logic;
SIGNAL \cache_controller|Add0~12_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[14]~55\ : std_logic;
SIGNAL \cache_controller|m_addr[15]~56_combout\ : std_logic;
SIGNAL \cache_controller|Add0~13_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[15]~57\ : std_logic;
SIGNAL \cache_controller|m_addr[16]~58_combout\ : std_logic;
SIGNAL \cache_controller|Add0~14_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[16]~59\ : std_logic;
SIGNAL \cache_controller|m_addr[17]~60_combout\ : std_logic;
SIGNAL \cache_controller|Add0~15_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[17]~61\ : std_logic;
SIGNAL \cache_controller|m_addr[18]~62_combout\ : std_logic;
SIGNAL \cache_controller|Add0~16_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[18]~63\ : std_logic;
SIGNAL \cache_controller|m_addr[19]~64_combout\ : std_logic;
SIGNAL \cache_controller|Add0~17_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[19]~65\ : std_logic;
SIGNAL \cache_controller|m_addr[20]~66_combout\ : std_logic;
SIGNAL \cache_controller|Add0~18_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[20]~67\ : std_logic;
SIGNAL \cache_controller|m_addr[21]~68_combout\ : std_logic;
SIGNAL \cache_controller|Add0~19_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[21]~69\ : std_logic;
SIGNAL \cache_controller|m_addr[22]~70_combout\ : std_logic;
SIGNAL \cache_controller|Add0~20_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[22]~71\ : std_logic;
SIGNAL \cache_controller|m_addr[23]~72_combout\ : std_logic;
SIGNAL \cache_controller|Add0~21_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[23]~73\ : std_logic;
SIGNAL \cache_controller|m_addr[24]~74_combout\ : std_logic;
SIGNAL \cache_controller|Add0~22_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[24]~75\ : std_logic;
SIGNAL \cache_controller|m_addr[25]~76_combout\ : std_logic;
SIGNAL \cache_controller|Add0~23_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[25]~77\ : std_logic;
SIGNAL \cache_controller|m_addr[26]~78_combout\ : std_logic;
SIGNAL \cache_controller|Add0~24_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[26]~79\ : std_logic;
SIGNAL \cache_controller|m_addr[27]~80_combout\ : std_logic;
SIGNAL \cache_controller|Add0~25_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[27]~81\ : std_logic;
SIGNAL \cache_controller|m_addr[28]~82_combout\ : std_logic;
SIGNAL \cache_controller|Add0~26_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[28]~83\ : std_logic;
SIGNAL \cache_controller|m_addr[29]~84_combout\ : std_logic;
SIGNAL \cache_controller|Add0~27_combout\ : std_logic;
SIGNAL \cache_controller|m_addr[29]~85\ : std_logic;
SIGNAL \cache_controller|m_addr[30]~86_combout\ : std_logic;
SIGNAL \cache_controller|Selector21~2_combout\ : std_logic;
SIGNAL \cache_controller|Selector21~0_combout\ : std_logic;
SIGNAL \cache_controller|Selector21~1_combout\ : std_logic;
SIGNAL \cache_controller|Selector21~3_combout\ : std_logic;
SIGNAL \cache_controller|m_read~q\ : std_logic;
SIGNAL \cache_controller|Selector80~0_combout\ : std_logic;
SIGNAL \cache_controller|Selector80~1_combout\ : std_logic;
SIGNAL \cache_controller|Selector80~2_combout\ : std_logic;
SIGNAL \cache_controller|m_write~q\ : std_logic;
SIGNAL \cache_controller|m_addr\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \cache_controller|word_select\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cache_controller|transaction\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \cache_controller|writedata_tag\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \cache_controller|out_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \cache_controller|ALT_INV_Add0~6_combout\ : std_logic;

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

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & \cache_controller|writedata_tag\(5) & \cache_controller|writedata_tag\(3) & 
\cache_controller|writedata_tag\(2) & \cache_controller|writedata_tag\(1) & \cache_controller|writedata_tag\(0));

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\s_addr[9]~input_o\ & \s_addr[8]~input_o\ & \s_addr[7]~input_o\ & \s_addr[6]~input_o\ & \s_addr[5]~input_o\ & \s_addr[4]~input_o\ & \s_addr[3]~input_o\ & \s_addr[2]~input_o\);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ <= \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);

\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\cache_controller|writedata_tag\(22) & \cache_controller|writedata_tag\(21) & \cache_controller|writedata_tag\(20) & \cache_controller|writedata_tag\(19) & 
\cache_controller|writedata_tag\(18) & \cache_controller|writedata_tag\(17) & \cache_controller|writedata_tag\(16) & \cache_controller|writedata_tag\(15) & \cache_controller|writedata_tag\(14) & \cache_controller|writedata_tag\(13) & 
\cache_controller|writedata_tag\(12) & \cache_controller|writedata_tag\(11) & \cache_controller|writedata_tag\(10) & \cache_controller|writedata_tag\(9) & \cache_controller|writedata_tag\(8) & \cache_controller|writedata_tag\(7) & 
\cache_controller|writedata_tag\(6) & \cache_controller|writedata_tag\(4));

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
\cache_controller|ALT_INV_Add0~6_combout\ <= NOT \cache_controller|Add0~6_combout\;

-- Location: IOOBUF_X81_Y4_N16
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

-- Location: IOOBUF_X81_Y11_N23
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

-- Location: IOOBUF_X81_Y6_N2
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

-- Location: IOOBUF_X81_Y42_N2
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

-- Location: IOOBUF_X81_Y2_N23
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

-- Location: IOOBUF_X81_Y64_N16
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

-- Location: IOOBUF_X68_Y0_N9
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

-- Location: IOOBUF_X65_Y0_N16
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

-- Location: IOOBUF_X81_Y2_N2
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

-- Location: IOOBUF_X81_Y10_N2
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

-- Location: IOOBUF_X81_Y64_N23
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

-- Location: IOOBUF_X68_Y0_N16
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

-- Location: IOOBUF_X81_Y44_N9
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

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X81_Y4_N9
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

-- Location: IOOBUF_X81_Y65_N2
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

-- Location: IOOBUF_X81_Y62_N2
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

-- Location: IOOBUF_X81_Y14_N16
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

-- Location: IOOBUF_X81_Y65_N23
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

-- Location: IOOBUF_X81_Y65_N16
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

-- Location: IOOBUF_X81_Y62_N16
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

-- Location: IOOBUF_X81_Y64_N2
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

-- Location: IOOBUF_X81_Y65_N9
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

-- Location: IOOBUF_X81_Y44_N2
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

-- Location: IOOBUF_X81_Y14_N2
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

-- Location: IOOBUF_X81_Y4_N23
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

-- Location: IOOBUF_X81_Y3_N2
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

-- Location: IOOBUF_X81_Y11_N2
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

-- Location: IOOBUF_X81_Y61_N2
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

-- Location: IOOBUF_X81_Y10_N16
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

-- Location: IOOBUF_X81_Y6_N9
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

-- Location: IOOBUF_X81_Y64_N9
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

-- Location: IOOBUF_X58_Y0_N9
\m_writedata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[0]~output_o\);

-- Location: IOOBUF_X81_Y17_N2
\m_writedata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[1]~output_o\);

-- Location: IOOBUF_X70_Y0_N9
\m_writedata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[2]~output_o\);

-- Location: IOOBUF_X81_Y55_N9
\m_writedata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[3]~output_o\);

-- Location: IOOBUF_X70_Y0_N16
\m_writedata[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[4]~output_o\);

-- Location: IOOBUF_X81_Y53_N9
\m_writedata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[5]~output_o\);

-- Location: IOOBUF_X61_Y67_N9
\m_writedata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	oe => \Mux64~0_combout\,
	devoe => ww_devoe,
	o => \m_writedata[6]~output_o\);

-- Location: IOOBUF_X81_Y16_N9
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

-- Location: IOOBUF_X81_Y16_N2
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

-- Location: IOOBUF_X81_Y4_N2
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

-- Location: IOOBUF_X81_Y49_N9
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

-- Location: IOOBUF_X81_Y17_N9
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

-- Location: IOOBUF_X70_Y0_N2
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

-- Location: IOOBUF_X61_Y67_N2
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

-- Location: IOOBUF_X58_Y0_N2
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

-- Location: IOOBUF_X81_Y49_N2
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

-- Location: IOOBUF_X81_Y59_N2
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

-- Location: IOOBUF_X81_Y10_N9
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

-- Location: IOOBUF_X81_Y53_N2
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

-- Location: IOOBUF_X81_Y52_N2
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

-- Location: IOOBUF_X81_Y52_N9
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

-- Location: IOOBUF_X58_Y67_N9
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

-- Location: IOOBUF_X56_Y67_N23
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

-- Location: IOOBUF_X56_Y67_N9
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

-- Location: IOOBUF_X58_Y0_N23
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

-- Location: IOOBUF_X81_Y52_N16
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

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X56_Y0_N9
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

-- Location: IOOBUF_X58_Y67_N2
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

-- Location: IOOBUF_X56_Y67_N2
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

-- Location: IOOBUF_X81_Y55_N2
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

-- Location: IOOBUF_X81_Y59_N9
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

-- Location: IOOBUF_X49_Y0_N2
\s_waitrequest~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|s_waitrequest~q\,
	devoe => ww_devoe,
	o => \s_waitrequest~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\m_addr[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(0),
	devoe => ww_devoe,
	o => \m_addr[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\m_addr[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(1),
	devoe => ww_devoe,
	o => \m_addr[1]~output_o\);

-- Location: IOOBUF_X33_Y67_N2
\m_addr[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(2),
	devoe => ww_devoe,
	o => \m_addr[2]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\m_addr[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(3),
	devoe => ww_devoe,
	o => \m_addr[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\m_addr[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(4),
	devoe => ww_devoe,
	o => \m_addr[4]~output_o\);

-- Location: IOOBUF_X31_Y67_N9
\m_addr[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(5),
	devoe => ww_devoe,
	o => \m_addr[5]~output_o\);

-- Location: IOOBUF_X31_Y67_N2
\m_addr[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(6),
	devoe => ww_devoe,
	o => \m_addr[6]~output_o\);

-- Location: IOOBUF_X33_Y67_N23
\m_addr[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(7),
	devoe => ww_devoe,
	o => \m_addr[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\m_addr[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(8),
	devoe => ww_devoe,
	o => \m_addr[8]~output_o\);

-- Location: IOOBUF_X52_Y67_N16
\m_addr[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(9),
	devoe => ww_devoe,
	o => \m_addr[9]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\m_addr[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(10),
	devoe => ww_devoe,
	o => \m_addr[10]~output_o\);

-- Location: IOOBUF_X52_Y67_N23
\m_addr[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(11),
	devoe => ww_devoe,
	o => \m_addr[11]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\m_addr[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(12),
	devoe => ww_devoe,
	o => \m_addr[12]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\m_addr[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(13),
	devoe => ww_devoe,
	o => \m_addr[13]~output_o\);

-- Location: IOOBUF_X29_Y67_N23
\m_addr[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(14),
	devoe => ww_devoe,
	o => \m_addr[14]~output_o\);

-- Location: IOOBUF_X33_Y67_N9
\m_addr[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(15),
	devoe => ww_devoe,
	o => \m_addr[15]~output_o\);

-- Location: IOOBUF_X49_Y67_N16
\m_addr[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(16),
	devoe => ww_devoe,
	o => \m_addr[16]~output_o\);

-- Location: IOOBUF_X42_Y67_N9
\m_addr[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(17),
	devoe => ww_devoe,
	o => \m_addr[17]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\m_addr[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(18),
	devoe => ww_devoe,
	o => \m_addr[18]~output_o\);

-- Location: IOOBUF_X47_Y67_N9
\m_addr[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(19),
	devoe => ww_devoe,
	o => \m_addr[19]~output_o\);

-- Location: IOOBUF_X44_Y67_N2
\m_addr[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(20),
	devoe => ww_devoe,
	o => \m_addr[20]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\m_addr[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(21),
	devoe => ww_devoe,
	o => \m_addr[21]~output_o\);

-- Location: IOOBUF_X29_Y67_N2
\m_addr[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(22),
	devoe => ww_devoe,
	o => \m_addr[22]~output_o\);

-- Location: IOOBUF_X49_Y67_N23
\m_addr[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(23),
	devoe => ww_devoe,
	o => \m_addr[23]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\m_addr[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(24),
	devoe => ww_devoe,
	o => \m_addr[24]~output_o\);

-- Location: IOOBUF_X40_Y67_N2
\m_addr[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(25),
	devoe => ww_devoe,
	o => \m_addr[25]~output_o\);

-- Location: IOOBUF_X42_Y0_N9
\m_addr[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(26),
	devoe => ww_devoe,
	o => \m_addr[26]~output_o\);

-- Location: IOOBUF_X33_Y0_N23
\m_addr[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(27),
	devoe => ww_devoe,
	o => \m_addr[27]~output_o\);

-- Location: IOOBUF_X44_Y0_N9
\m_addr[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(28),
	devoe => ww_devoe,
	o => \m_addr[28]~output_o\);

-- Location: IOOBUF_X42_Y0_N2
\m_addr[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_addr\(29),
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
	i => \cache_controller|m_addr\(30),
	devoe => ww_devoe,
	o => \m_addr[30]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\m_read~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_read~q\,
	devoe => ww_devoe,
	o => \m_read~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\m_write~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cache_controller|m_write~q\,
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

-- Location: IOIBUF_X49_Y67_N8
\s_addr[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(31),
	o => \s_addr[31]~input_o\);

-- Location: IOIBUF_X44_Y67_N8
\m_waitrequest~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_waitrequest,
	o => \m_waitrequest~input_o\);

-- Location: LCCOMB_X50_Y37_N16
\cache_controller|Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector20~0_combout\ = (\cache_controller|Add0~6_combout\ & (((\cache_controller|tag_ready~q\ & !\cache_controller|state.IDLE~q\)))) # (!\cache_controller|Add0~6_combout\ & (((\cache_controller|tag_ready~q\)) # (!\s_addr[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~6_combout\,
	datab => \s_addr[31]~input_o\,
	datac => \cache_controller|tag_ready~q\,
	datad => \cache_controller|state.IDLE~q\,
	combout => \cache_controller|Selector20~0_combout\);

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

-- Location: FF_X50_Y37_N17
\cache_controller|tag_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector20~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|tag_ready~q\);

-- Location: LCCOMB_X45_Y37_N10
\cache_controller|Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector5~0_combout\ = (\s_addr[31]~input_o\ & (\m_waitrequest~input_o\)) # (!\s_addr[31]~input_o\ & ((!\cache_controller|tag_ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_addr[31]~input_o\,
	datac => \m_waitrequest~input_o\,
	datad => \cache_controller|tag_ready~q\,
	combout => \cache_controller|Selector5~0_combout\);

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

-- Location: IOIBUF_X33_Y0_N15
\s_read~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_read,
	o => \s_read~input_o\);

-- Location: LCCOMB_X45_Y37_N28
\cache_controller|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector4~0_combout\ = (!\s_read~input_o\ & \cache_controller|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_read~input_o\,
	datad => \cache_controller|state.IDLE~q\,
	combout => \cache_controller|Selector4~0_combout\);

-- Location: LCCOMB_X45_Y37_N26
\cache_controller|Selector14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector14~0_combout\ = (\cache_controller|Selector5~0_combout\ & ((\cache_controller|state.WRITE_START~q\) # ((\s_write~input_o\ & \cache_controller|Selector4~0_combout\)))) # (!\cache_controller|Selector5~0_combout\ & 
-- (\s_write~input_o\ & ((\cache_controller|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Selector5~0_combout\,
	datab => \s_write~input_o\,
	datac => \cache_controller|state.WRITE_START~q\,
	datad => \cache_controller|Selector4~0_combout\,
	combout => \cache_controller|Selector14~0_combout\);

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

-- Location: FF_X45_Y37_N27
\cache_controller|state.WRITE_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector14~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|state.WRITE_START~q\);

-- Location: LCCOMB_X49_Y37_N8
\cache_controller|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~6_combout\ = (!\cache_controller|state.WRITE_START~q\ & !\cache_controller|state.READ_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|state.WRITE_START~q\,
	datad => \cache_controller|state.READ_START~q\,
	combout => \cache_controller|Add0~6_combout\);

-- Location: LCCOMB_X50_Y37_N0
\cache_controller|out_count[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|out_count[2]~1_combout\ = ((\cache_controller|state.DONE~q\) # ((\reset~input_o\) # (\cache_controller|state.IDLE~q\))) # (!\cache_controller|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~6_combout\,
	datab => \cache_controller|state.DONE~q\,
	datac => \reset~input_o\,
	datad => \cache_controller|state.IDLE~q\,
	combout => \cache_controller|out_count[2]~1_combout\);

-- Location: LCCOMB_X45_Y37_N16
\cache_controller|Selector12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector12~2_combout\ = (\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\m_waitrequest~input_o\) # ((\cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\ & \cache_controller|Equal1~0_combout\)))) # 
-- (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (\cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\ & ((\cache_controller|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\,
	datac => \m_waitrequest~input_o\,
	datad => \cache_controller|Equal1~0_combout\,
	combout => \cache_controller|Selector12~2_combout\);

-- Location: LCCOMB_X50_Y37_N30
\cache_controller|Selector55~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector55~0_combout\ = (\cache_controller|WideOr18~0_combout\ & (!\cache_controller|state.DONE~q\ & (\cache_controller|write_tag~q\))) # (!\cache_controller|WideOr18~0_combout\ & (((\cache_controller|write_tag~q\) # 
-- (!\cache_controller|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|WideOr18~0_combout\,
	datab => \cache_controller|state.DONE~q\,
	datac => \cache_controller|write_tag~q\,
	datad => \cache_controller|Equal1~0_combout\,
	combout => \cache_controller|Selector55~0_combout\);

-- Location: FF_X50_Y37_N31
\cache_controller|write_tag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector55~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|write_tag~q\);

-- Location: IOIBUF_X81_Y39_N1
\s_addr[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(9),
	o => \s_addr[9]~input_o\);

-- Location: LCCOMB_X50_Y37_N2
\cache_controller|writedata_tag[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|writedata_tag[0]~4_combout\ = (!\reset~input_o\ & (!\cache_controller|Equal1~0_combout\ & ((\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\) # (\cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datac => \cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datad => \cache_controller|Equal1~0_combout\,
	combout => \cache_controller|writedata_tag[0]~4_combout\);

-- Location: FF_X45_Y36_N11
\cache_controller|writedata_tag[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[9]~input_o\,
	sload => VCC,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(0));

-- Location: IOIBUF_X81_Y39_N8
\s_addr[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(2),
	o => \s_addr[2]~input_o\);

-- Location: IOIBUF_X54_Y67_N8
\s_addr[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(3),
	o => \s_addr[3]~input_o\);

-- Location: IOIBUF_X54_Y67_N22
\s_addr[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(4),
	o => \s_addr[4]~input_o\);

-- Location: IOIBUF_X54_Y67_N15
\s_addr[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(5),
	o => \s_addr[5]~input_o\);

-- Location: IOIBUF_X81_Y42_N8
\s_addr[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(6),
	o => \s_addr[6]~input_o\);

-- Location: IOIBUF_X81_Y41_N1
\s_addr[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(7),
	o => \s_addr[7]~input_o\);

-- Location: IOIBUF_X81_Y43_N1
\s_addr[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(8),
	o => \s_addr[8]~input_o\);

-- Location: IOIBUF_X49_Y67_N1
\s_addr[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(10),
	o => \s_addr[10]~input_o\);

-- Location: FF_X49_Y36_N1
\cache_controller|writedata_tag[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[10]~input_o\,
	sload => VCC,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(1));

-- Location: IOIBUF_X52_Y67_N1
\s_addr[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(11),
	o => \s_addr[11]~input_o\);

-- Location: FF_X49_Y36_N7
\cache_controller|writedata_tag[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[11]~input_o\,
	sload => VCC,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(2));

-- Location: IOIBUF_X31_Y67_N15
\s_addr[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(12),
	o => \s_addr[12]~input_o\);

-- Location: LCCOMB_X45_Y36_N16
\cache_controller|writedata_tag[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|writedata_tag[3]~feeder_combout\ = \s_addr[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[12]~input_o\,
	combout => \cache_controller|writedata_tag[3]~feeder_combout\);

-- Location: FF_X45_Y36_N17
\cache_controller|writedata_tag[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|writedata_tag[3]~feeder_combout\,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(3));

-- Location: IOIBUF_X44_Y0_N22
\s_addr[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(14),
	o => \s_addr[14]~input_o\);

-- Location: FF_X47_Y36_N19
\cache_controller|writedata_tag[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[14]~input_o\,
	sload => VCC,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(5));

-- Location: M9K_X46_Y36_N0
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
	portawe => \cache_controller|write_tag~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y37_N4
\cache_controller|Selector12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector12~0_combout\ = (!\s_addr[31]~input_o\ & \cache_controller|tag_ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_addr[31]~input_o\,
	datad => \cache_controller|tag_ready~q\,
	combout => \cache_controller|Selector12~0_combout\);

-- Location: IOIBUF_X42_Y67_N22
\s_addr[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(13),
	o => \s_addr[13]~input_o\);

-- Location: FF_X45_Y36_N27
\cache_controller|writedata_tag[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[13]~input_o\,
	sload => VCC,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(4));

-- Location: IOIBUF_X31_Y67_N22
\s_addr[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(15),
	o => \s_addr[15]~input_o\);

-- Location: LCCOMB_X47_Y36_N20
\cache_controller|writedata_tag[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|writedata_tag[6]~feeder_combout\ = \s_addr[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[15]~input_o\,
	combout => \cache_controller|writedata_tag[6]~feeder_combout\);

-- Location: FF_X47_Y36_N21
\cache_controller|writedata_tag[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|writedata_tag[6]~feeder_combout\,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(6));

-- Location: IOIBUF_X81_Y34_N8
\s_addr[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(16),
	o => \s_addr[16]~input_o\);

-- Location: LCCOMB_X47_Y36_N2
\cache_controller|writedata_tag[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|writedata_tag[7]~feeder_combout\ = \s_addr[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[16]~input_o\,
	combout => \cache_controller|writedata_tag[7]~feeder_combout\);

-- Location: FF_X47_Y36_N3
\cache_controller|writedata_tag[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|writedata_tag[7]~feeder_combout\,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(7));

-- Location: IOIBUF_X81_Y34_N1
\s_addr[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(17),
	o => \s_addr[17]~input_o\);

-- Location: LCCOMB_X47_Y36_N6
\cache_controller|writedata_tag[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|writedata_tag[8]~feeder_combout\ = \s_addr[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[17]~input_o\,
	combout => \cache_controller|writedata_tag[8]~feeder_combout\);

-- Location: FF_X47_Y36_N7
\cache_controller|writedata_tag[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|writedata_tag[8]~feeder_combout\,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(8));

-- Location: IOIBUF_X81_Y25_N15
\s_addr[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(18),
	o => \s_addr[18]~input_o\);

-- Location: FF_X47_Y36_N11
\cache_controller|writedata_tag[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[18]~input_o\,
	sload => VCC,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(9));

-- Location: IOIBUF_X44_Y0_N15
\s_addr[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(19),
	o => \s_addr[19]~input_o\);

-- Location: FF_X47_Y36_N17
\cache_controller|writedata_tag[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[19]~input_o\,
	sload => VCC,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(10));

-- Location: IOIBUF_X44_Y67_N22
\s_addr[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(20),
	o => \s_addr[20]~input_o\);

-- Location: LCCOMB_X45_Y36_N12
\cache_controller|writedata_tag[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|writedata_tag[11]~feeder_combout\ = \s_addr[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[20]~input_o\,
	combout => \cache_controller|writedata_tag[11]~feeder_combout\);

-- Location: FF_X45_Y36_N13
\cache_controller|writedata_tag[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|writedata_tag[11]~feeder_combout\,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(11));

-- Location: IOIBUF_X42_Y0_N15
\s_addr[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(21),
	o => \s_addr[21]~input_o\);

-- Location: FF_X45_Y36_N23
\cache_controller|writedata_tag[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[21]~input_o\,
	sload => VCC,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(12));

-- Location: IOIBUF_X47_Y0_N8
\s_addr[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(22),
	o => \s_addr[22]~input_o\);

-- Location: FF_X47_Y36_N15
\cache_controller|writedata_tag[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[22]~input_o\,
	sload => VCC,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(13));

-- Location: IOIBUF_X54_Y0_N15
\s_addr[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(23),
	o => \s_addr[23]~input_o\);

-- Location: FF_X47_Y36_N29
\cache_controller|writedata_tag[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[23]~input_o\,
	sload => VCC,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(14));

-- Location: IOIBUF_X47_Y67_N1
\s_addr[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(24),
	o => \s_addr[24]~input_o\);

-- Location: LCCOMB_X47_Y35_N0
\cache_controller|writedata_tag[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|writedata_tag[15]~feeder_combout\ = \s_addr[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[24]~input_o\,
	combout => \cache_controller|writedata_tag[15]~feeder_combout\);

-- Location: FF_X47_Y35_N1
\cache_controller|writedata_tag[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|writedata_tag[15]~feeder_combout\,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(15));

-- Location: IOIBUF_X81_Y26_N8
\s_addr[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(25),
	o => \s_addr[25]~input_o\);

-- Location: LCCOMB_X47_Y35_N6
\cache_controller|writedata_tag[16]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|writedata_tag[16]~feeder_combout\ = \s_addr[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[25]~input_o\,
	combout => \cache_controller|writedata_tag[16]~feeder_combout\);

-- Location: FF_X47_Y35_N7
\cache_controller|writedata_tag[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|writedata_tag[16]~feeder_combout\,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(16));

-- Location: IOIBUF_X44_Y67_N15
\s_addr[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(26),
	o => \s_addr[26]~input_o\);

-- Location: LCCOMB_X45_Y36_N20
\cache_controller|writedata_tag[17]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|writedata_tag[17]~feeder_combout\ = \s_addr[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[26]~input_o\,
	combout => \cache_controller|writedata_tag[17]~feeder_combout\);

-- Location: FF_X45_Y36_N21
\cache_controller|writedata_tag[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|writedata_tag[17]~feeder_combout\,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(17));

-- Location: IOIBUF_X44_Y0_N1
\s_addr[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(27),
	o => \s_addr[27]~input_o\);

-- Location: LCCOMB_X45_Y36_N14
\cache_controller|writedata_tag[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|writedata_tag[18]~feeder_combout\ = \s_addr[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[27]~input_o\,
	combout => \cache_controller|writedata_tag[18]~feeder_combout\);

-- Location: FF_X45_Y36_N15
\cache_controller|writedata_tag[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|writedata_tag[18]~feeder_combout\,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(18));

-- Location: IOIBUF_X49_Y0_N8
\s_addr[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(28),
	o => \s_addr[28]~input_o\);

-- Location: LCCOMB_X47_Y35_N8
\cache_controller|writedata_tag[19]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|writedata_tag[19]~feeder_combout\ = \s_addr[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[28]~input_o\,
	combout => \cache_controller|writedata_tag[19]~feeder_combout\);

-- Location: FF_X47_Y35_N9
\cache_controller|writedata_tag[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|writedata_tag[19]~feeder_combout\,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(19));

-- Location: IOIBUF_X47_Y0_N1
\s_addr[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(29),
	o => \s_addr[29]~input_o\);

-- Location: LCCOMB_X47_Y35_N26
\cache_controller|writedata_tag[20]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|writedata_tag[20]~feeder_combout\ = \s_addr[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_addr[29]~input_o\,
	combout => \cache_controller|writedata_tag[20]~feeder_combout\);

-- Location: FF_X47_Y35_N27
\cache_controller|writedata_tag[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|writedata_tag[20]~feeder_combout\,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(20));

-- Location: IOIBUF_X42_Y67_N15
\s_addr[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(30),
	o => \s_addr[30]~input_o\);

-- Location: FF_X47_Y36_N9
\cache_controller|writedata_tag[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \s_addr[30]~input_o\,
	sload => VCC,
	ena => \cache_controller|writedata_tag[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(21));

-- Location: LCCOMB_X50_Y37_N10
\cache_controller|writedata_tag[22]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|writedata_tag[22]~2_combout\ = (!\reset~input_o\ & (!\cache_controller|Equal1~0_combout\ & ((\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\) # (\cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datac => \cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datad => \cache_controller|Equal1~0_combout\,
	combout => \cache_controller|writedata_tag[22]~2_combout\);

-- Location: LCCOMB_X50_Y37_N24
\cache_controller|writedata_tag[22]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|writedata_tag[22]~3_combout\ = (\cache_controller|writedata_tag[22]~2_combout\ & (\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\)) # (!\cache_controller|writedata_tag[22]~2_combout\ & 
-- ((\cache_controller|writedata_tag\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datac => \cache_controller|writedata_tag\(22),
	datad => \cache_controller|writedata_tag[22]~2_combout\,
	combout => \cache_controller|writedata_tag[22]~3_combout\);

-- Location: FF_X50_Y37_N25
\cache_controller|writedata_tag[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|writedata_tag[22]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|writedata_tag\(22));

-- Location: M9K_X46_Y36_N0
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
	portawe => \cache_controller|write_tag~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y36_N0
\cache_controller|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~6_combout\ = (\s_addr[21]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\ & (\s_addr[20]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\)))) # (!\s_addr[21]~input_o\ & 
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
	combout => \cache_controller|Equal0~6_combout\);

-- Location: LCCOMB_X47_Y37_N6
\cache_controller|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~8_combout\ = (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ & (\s_addr[25]~input_o\ & (\s_addr[24]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\)))) # 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\ & (!\s_addr[25]~input_o\ & (\s_addr[24]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datab => \s_addr[24]~input_o\,
	datac => \s_addr[25]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\,
	combout => \cache_controller|Equal0~8_combout\);

-- Location: LCCOMB_X47_Y36_N26
\cache_controller|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~7_combout\ = (\s_addr[23]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ & (\s_addr[22]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)))) # (!\s_addr[23]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ & (\s_addr[22]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[23]~input_o\,
	datab => \s_addr[22]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	combout => \cache_controller|Equal0~7_combout\);

-- Location: LCCOMB_X47_Y36_N16
\cache_controller|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~5_combout\ = (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ & (\s_addr[18]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ $ (!\s_addr[19]~input_o\)))) # 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\ & (!\s_addr[18]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\ $ (!\s_addr[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datab => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	datac => \s_addr[19]~input_o\,
	datad => \s_addr[18]~input_o\,
	combout => \cache_controller|Equal0~5_combout\);

-- Location: LCCOMB_X48_Y37_N26
\cache_controller|Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~9_combout\ = (\cache_controller|Equal0~6_combout\ & (\cache_controller|Equal0~8_combout\ & (\cache_controller|Equal0~7_combout\ & \cache_controller|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Equal0~6_combout\,
	datab => \cache_controller|Equal0~8_combout\,
	datac => \cache_controller|Equal0~7_combout\,
	datad => \cache_controller|Equal0~5_combout\,
	combout => \cache_controller|Equal0~9_combout\);

-- Location: LCCOMB_X47_Y37_N0
\cache_controller|Equal0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~11_combout\ = (\s_addr[28]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\ & (\s_addr[29]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\)))) # (!\s_addr[28]~input_o\ & 
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
	combout => \cache_controller|Equal0~11_combout\);

-- Location: LCCOMB_X47_Y36_N8
\cache_controller|Equal0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~12_combout\ = (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ & (\s_addr[30]~input_o\ & (\s_addr[31]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\)))) # 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ & (!\s_addr[30]~input_o\ & (\s_addr[31]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datab => \s_addr[31]~input_o\,
	datac => \s_addr[30]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	combout => \cache_controller|Equal0~12_combout\);

-- Location: LCCOMB_X48_Y37_N4
\cache_controller|Equal0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~13_combout\ = (\cache_controller|Equal0~11_combout\ & \cache_controller|Equal0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cache_controller|Equal0~11_combout\,
	datad => \cache_controller|Equal0~12_combout\,
	combout => \cache_controller|Equal0~13_combout\);

-- Location: LCCOMB_X45_Y36_N2
\cache_controller|Equal0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~10_combout\ = (\s_addr[27]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ & (\s_addr[26]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\)))) # (!\s_addr[27]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ & (\s_addr[26]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[27]~input_o\,
	datab => \s_addr[26]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	combout => \cache_controller|Equal0~10_combout\);

-- Location: LCCOMB_X47_Y36_N22
\cache_controller|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~3_combout\ = (\s_addr[16]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ & (\s_addr[17]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\)))) # (!\s_addr[16]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\ & (\s_addr[17]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[16]~input_o\,
	datab => \s_addr[17]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	combout => \cache_controller|Equal0~3_combout\);

-- Location: LCCOMB_X47_Y37_N20
\cache_controller|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~1_combout\ = (\s_addr[12]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ & (\s_addr[13]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\)))) # (!\s_addr[12]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\ & (\s_addr[13]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[12]~input_o\,
	datab => \s_addr[13]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	combout => \cache_controller|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y36_N0
\cache_controller|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~2_combout\ = (\s_addr[15]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ & (\s_addr[14]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\)))) # (!\s_addr[15]~input_o\ & 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\ & (\s_addr[14]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[15]~input_o\,
	datab => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	datac => \s_addr[14]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\,
	combout => \cache_controller|Equal0~2_combout\);

-- Location: LCCOMB_X49_Y36_N18
\cache_controller|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~0_combout\ = (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ & (\s_addr[10]~input_o\ & (\s_addr[11]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\)))) # 
-- (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ & (!\s_addr[10]~input_o\ & (\s_addr[11]~input_o\ $ (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \s_addr[11]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \s_addr[10]~input_o\,
	combout => \cache_controller|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y37_N16
\cache_controller|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~4_combout\ = (\cache_controller|Equal0~3_combout\ & (\cache_controller|Equal0~1_combout\ & (\cache_controller|Equal0~2_combout\ & \cache_controller|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Equal0~3_combout\,
	datab => \cache_controller|Equal0~1_combout\,
	datac => \cache_controller|Equal0~2_combout\,
	datad => \cache_controller|Equal0~0_combout\,
	combout => \cache_controller|Equal0~4_combout\);

-- Location: LCCOMB_X48_Y37_N2
\cache_controller|Equal0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal0~14_combout\ = (\cache_controller|Equal0~9_combout\ & (\cache_controller|Equal0~13_combout\ & (\cache_controller|Equal0~10_combout\ & \cache_controller|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Equal0~9_combout\,
	datab => \cache_controller|Equal0~13_combout\,
	datac => \cache_controller|Equal0~10_combout\,
	datad => \cache_controller|Equal0~4_combout\,
	combout => \cache_controller|Equal0~14_combout\);

-- Location: LCCOMB_X47_Y37_N24
\cache_controller|Selector12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector12~1_combout\ = (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ & (\cache_controller|Selector12~0_combout\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ & !\cache_controller|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datab => \cache_controller|Selector12~0_combout\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datad => \cache_controller|Equal0~14_combout\,
	combout => \cache_controller|Selector12~1_combout\);

-- Location: LCCOMB_X47_Y37_N4
\cache_controller|Selector12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector12~3_combout\ = (\cache_controller|Selector12~2_combout\) # ((\cache_controller|state.WRITE_START~q\ & \cache_controller|Selector12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|Selector12~2_combout\,
	datac => \cache_controller|state.WRITE_START~q\,
	datad => \cache_controller|Selector12~1_combout\,
	combout => \cache_controller|Selector12~3_combout\);

-- Location: FF_X47_Y37_N5
\cache_controller|state.WRITE_FLUSH_TO_MEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector12~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\);

-- Location: LCCOMB_X45_Y37_N24
\cache_controller|word_select[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|word_select[1]~3_combout\ = (!\m_waitrequest~input_o\ & \cache_controller|state.WRITE_FLUSH_TO_MEM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_waitrequest~input_o\,
	datad => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	combout => \cache_controller|word_select[1]~3_combout\);

-- Location: FF_X45_Y37_N25
\cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|word_select[1]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\);

-- Location: LCCOMB_X45_Y37_N2
\cache_controller|word_select[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|word_select[1]~5_combout\ = (!\m_waitrequest~input_o\ & \cache_controller|state.READ_FLUSH_TO_MEM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_waitrequest~input_o\,
	datad => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	combout => \cache_controller|word_select[1]~5_combout\);

-- Location: FF_X45_Y37_N3
\cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|word_select[1]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\);

-- Location: LCCOMB_X52_Y37_N4
\cache_controller|state.RST~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|state.RST~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \cache_controller|state.RST~feeder_combout\);

-- Location: FF_X52_Y37_N5
\cache_controller|state.RST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|state.RST~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|state.RST~q\);

-- Location: LCCOMB_X52_Y37_N16
\cache_controller|out_count[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|out_count[0]~3_combout\ = (\cache_controller|WideOr18~0_combout\ & (!\cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\ & (!\cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\ & \cache_controller|state.RST~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|WideOr18~0_combout\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\,
	datac => \cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\,
	datad => \cache_controller|state.RST~q\,
	combout => \cache_controller|out_count[0]~3_combout\);

-- Location: LCCOMB_X52_Y37_N2
\cache_controller|out_count[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|out_count[0]~5_combout\ = (\cache_controller|out_count\(0) & ((\cache_controller|out_count[2]~2_combout\))) # (!\cache_controller|out_count\(0) & (\cache_controller|out_count[0]~3_combout\ & !\cache_controller|out_count[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|out_count[0]~3_combout\,
	datac => \cache_controller|out_count\(0),
	datad => \cache_controller|out_count[2]~2_combout\,
	combout => \cache_controller|out_count[0]~5_combout\);

-- Location: FF_X52_Y37_N3
\cache_controller|out_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|out_count[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|out_count\(0));

-- Location: LCCOMB_X52_Y37_N10
\cache_controller|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add1~0_combout\ = \cache_controller|out_count\(2) $ (((\cache_controller|out_count\(1) & \cache_controller|out_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|out_count\(1),
	datac => \cache_controller|out_count\(2),
	datad => \cache_controller|out_count\(0),
	combout => \cache_controller|Add1~0_combout\);

-- Location: LCCOMB_X52_Y37_N8
\cache_controller|out_count[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|out_count[2]~6_combout\ = (\cache_controller|out_count[2]~2_combout\ & (((\cache_controller|out_count\(2))))) # (!\cache_controller|out_count[2]~2_combout\ & (\cache_controller|out_count[0]~3_combout\ & 
-- ((\cache_controller|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|out_count[2]~2_combout\,
	datab => \cache_controller|out_count[0]~3_combout\,
	datac => \cache_controller|out_count\(2),
	datad => \cache_controller|Add1~0_combout\,
	combout => \cache_controller|out_count[2]~6_combout\);

-- Location: FF_X52_Y37_N9
\cache_controller|out_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|out_count[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|out_count\(2));

-- Location: LCCOMB_X49_Y37_N0
\cache_controller|Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector6~0_combout\ = (!\cache_controller|out_count\(0) & (\cache_controller|out_count\(2) & (\cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\ & !\cache_controller|out_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|out_count\(0),
	datab => \cache_controller|out_count\(2),
	datac => \cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\,
	datad => \cache_controller|out_count\(1),
	combout => \cache_controller|Selector6~0_combout\);

-- Location: LCCOMB_X45_Y37_N6
\cache_controller|Selector6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector6~1_combout\ = (\cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\ & ((\cache_controller|Equal1~0_combout\) # ((\cache_controller|state.READ_GET_BLOCK_FROM_MEM~q\ & \m_waitrequest~input_o\)))) # 
-- (!\cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\ & (\cache_controller|state.READ_GET_BLOCK_FROM_MEM~q\ & (\m_waitrequest~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datab => \cache_controller|state.READ_GET_BLOCK_FROM_MEM~q\,
	datac => \m_waitrequest~input_o\,
	datad => \cache_controller|Equal1~0_combout\,
	combout => \cache_controller|Selector6~1_combout\);

-- Location: LCCOMB_X48_Y37_N20
\cache_controller|Selector6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector6~2_combout\ = (\cache_controller|Selector12~0_combout\ & (((!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ & !\cache_controller|Equal0~14_combout\)) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datab => \cache_controller|Selector12~0_combout\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \cache_controller|Equal0~14_combout\,
	combout => \cache_controller|Selector6~2_combout\);

-- Location: LCCOMB_X48_Y37_N22
\cache_controller|Selector6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector6~3_combout\ = (\cache_controller|Selector6~0_combout\) # ((\cache_controller|Selector6~1_combout\) # ((\cache_controller|state.READ_START~q\ & \cache_controller|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_START~q\,
	datab => \cache_controller|Selector6~0_combout\,
	datac => \cache_controller|Selector6~1_combout\,
	datad => \cache_controller|Selector6~2_combout\,
	combout => \cache_controller|Selector6~3_combout\);

-- Location: FF_X48_Y37_N23
\cache_controller|state.READ_GET_BLOCK_FROM_MEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector6~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|state.READ_GET_BLOCK_FROM_MEM~q\);

-- Location: LCCOMB_X45_Y37_N30
\cache_controller|word_select[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|word_select[1]~2_combout\ = (!\m_waitrequest~input_o\ & \cache_controller|state.READ_GET_BLOCK_FROM_MEM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \m_waitrequest~input_o\,
	datad => \cache_controller|state.READ_GET_BLOCK_FROM_MEM~q\,
	combout => \cache_controller|word_select[1]~2_combout\);

-- Location: FF_X45_Y37_N5
\cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \cache_controller|word_select[1]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\);

-- Location: LCCOMB_X50_Y37_N6
\cache_controller|WideOr18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|WideOr18~0_combout\ = (!\cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\ & !\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datad => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	combout => \cache_controller|WideOr18~0_combout\);

-- Location: LCCOMB_X52_Y37_N26
\cache_controller|out_count[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|out_count[2]~0_combout\ = (\cache_controller|Equal1~0_combout\ & (((\cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\) # (\cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\)) # (!\cache_controller|WideOr18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|WideOr18~0_combout\,
	datab => \cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\,
	datac => \cache_controller|Equal1~0_combout\,
	datad => \cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\,
	combout => \cache_controller|out_count[2]~0_combout\);

-- Location: LCCOMB_X50_Y37_N14
\cache_controller|out_count[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|out_count[2]~2_combout\ = (\cache_controller|out_count[2]~1_combout\) # ((\cache_controller|out_count[2]~0_combout\) # ((!\cache_controller|Selector16~0_combout\ & \m_waitrequest~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Selector16~0_combout\,
	datab => \cache_controller|out_count[2]~1_combout\,
	datac => \cache_controller|out_count[2]~0_combout\,
	datad => \m_waitrequest~input_o\,
	combout => \cache_controller|out_count[2]~2_combout\);

-- Location: LCCOMB_X52_Y37_N0
\cache_controller|out_count[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|out_count[1]~4_combout\ = (\cache_controller|out_count[2]~2_combout\ & (((\cache_controller|out_count\(1))))) # (!\cache_controller|out_count[2]~2_combout\ & (\cache_controller|out_count[0]~3_combout\ & (\cache_controller|out_count\(1) $ 
-- (\cache_controller|out_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|out_count[2]~2_combout\,
	datab => \cache_controller|out_count[0]~3_combout\,
	datac => \cache_controller|out_count\(1),
	datad => \cache_controller|out_count\(0),
	combout => \cache_controller|out_count[1]~4_combout\);

-- Location: FF_X52_Y37_N1
\cache_controller|out_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|out_count[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|out_count\(1));

-- Location: LCCOMB_X52_Y37_N22
\cache_controller|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Equal1~0_combout\ = (\cache_controller|out_count\(1)) # ((\cache_controller|out_count\(0)) # (!\cache_controller|out_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|out_count\(1),
	datac => \cache_controller|out_count\(2),
	datad => \cache_controller|out_count\(0),
	combout => \cache_controller|Equal1~0_combout\);

-- Location: LCCOMB_X48_Y37_N6
\cache_controller|Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector8~0_combout\ = (\cache_controller|state.WRITE_START~q\ & ((\cache_controller|Selector6~2_combout\) # ((\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM~q\ & \m_waitrequest~input_o\)))) # (!\cache_controller|state.WRITE_START~q\ & 
-- (\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM~q\ & (\m_waitrequest~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.WRITE_START~q\,
	datab => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM~q\,
	datac => \m_waitrequest~input_o\,
	datad => \cache_controller|Selector6~2_combout\,
	combout => \cache_controller|Selector8~0_combout\);

-- Location: LCCOMB_X48_Y37_N0
\cache_controller|Selector8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector8~1_combout\ = (\cache_controller|Selector8~0_combout\) # ((\cache_controller|Equal1~0_combout\ & ((\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\))) # (!\cache_controller|Equal1~0_combout\ & 
-- (\cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Equal1~0_combout\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\,
	datac => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datad => \cache_controller|Selector8~0_combout\,
	combout => \cache_controller|Selector8~1_combout\);

-- Location: FF_X48_Y37_N1
\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector8~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM~q\);

-- Location: LCCOMB_X44_Y37_N16
\cache_controller|word_select[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|word_select[1]~4_combout\ = (\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM~q\ & !\m_waitrequest~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM~q\,
	datad => \m_waitrequest~input_o\,
	combout => \cache_controller|word_select[1]~4_combout\);

-- Location: FF_X45_Y37_N23
\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \cache_controller|word_select[1]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\);

-- Location: LCCOMB_X50_Y37_N8
\cache_controller|Selector16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector16~1_combout\ = (\cache_controller|Equal1~0_combout\) # ((!\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\ & !\cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datac => \cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datad => \cache_controller|Equal1~0_combout\,
	combout => \cache_controller|Selector16~1_combout\);

-- Location: LCCOMB_X50_Y37_N26
\cache_controller|Selector15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector15~0_combout\ = (\s_addr[31]~input_o\ & !\m_waitrequest~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_addr[31]~input_o\,
	datad => \m_waitrequest~input_o\,
	combout => \cache_controller|Selector15~0_combout\);

-- Location: LCCOMB_X50_Y37_N12
\cache_controller|Selector15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector15~1_combout\ = (\cache_controller|tag_ready~q\ & (!\s_addr[31]~input_o\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\ & \cache_controller|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|tag_ready~q\,
	datab => \s_addr[31]~input_o\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \cache_controller|Equal0~14_combout\,
	combout => \cache_controller|Selector15~1_combout\);

-- Location: LCCOMB_X50_Y37_N20
\cache_controller|Selector15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector15~2_combout\ = ((!\cache_controller|Add0~6_combout\ & ((\cache_controller|Selector15~0_combout\) # (\cache_controller|Selector15~1_combout\)))) # (!\cache_controller|Selector16~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~6_combout\,
	datab => \cache_controller|Selector16~1_combout\,
	datac => \cache_controller|Selector15~0_combout\,
	datad => \cache_controller|Selector15~1_combout\,
	combout => \cache_controller|Selector15~2_combout\);

-- Location: FF_X50_Y37_N21
\cache_controller|state.DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector15~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|state.DONE~q\);

-- Location: LCCOMB_X45_Y37_N12
\cache_controller|Selector4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector4~1_combout\ = (\cache_controller|state.DONE~q\) # (((\cache_controller|Selector4~0_combout\ & !\s_write~input_o\)) # (!\cache_controller|state.RST~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.DONE~q\,
	datab => \cache_controller|Selector4~0_combout\,
	datac => \s_write~input_o\,
	datad => \cache_controller|state.RST~q\,
	combout => \cache_controller|Selector4~1_combout\);

-- Location: FF_X45_Y37_N13
\cache_controller|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector4~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|state.IDLE~q\);

-- Location: LCCOMB_X45_Y37_N8
\cache_controller|Selector5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector5~1_combout\ = (\cache_controller|state.IDLE~q\ & ((\s_read~input_o\) # ((\cache_controller|state.READ_START~q\ & \cache_controller|Selector5~0_combout\)))) # (!\cache_controller|state.IDLE~q\ & 
-- (((\cache_controller|state.READ_START~q\ & \cache_controller|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.IDLE~q\,
	datab => \s_read~input_o\,
	datac => \cache_controller|state.READ_START~q\,
	datad => \cache_controller|Selector5~0_combout\,
	combout => \cache_controller|Selector5~1_combout\);

-- Location: FF_X45_Y37_N9
\cache_controller|state.READ_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector5~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|state.READ_START~q\);

-- Location: LCCOMB_X45_Y37_N18
\cache_controller|Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector10~0_combout\ = (\cache_controller|state.READ_FLUSH_TO_MEM~q\ & ((\m_waitrequest~input_o\) # ((\cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\ & \cache_controller|Equal1~0_combout\)))) # 
-- (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (((\cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\ & \cache_controller|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datab => \m_waitrequest~input_o\,
	datac => \cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\,
	datad => \cache_controller|Equal1~0_combout\,
	combout => \cache_controller|Selector10~0_combout\);

-- Location: LCCOMB_X47_Y37_N18
\cache_controller|Selector10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector10~1_combout\ = (\cache_controller|Selector10~0_combout\) # ((\cache_controller|state.READ_START~q\ & \cache_controller|Selector12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|state.READ_START~q\,
	datac => \cache_controller|Selector10~0_combout\,
	datad => \cache_controller|Selector12~1_combout\,
	combout => \cache_controller|Selector10~1_combout\);

-- Location: FF_X47_Y37_N19
\cache_controller|state.READ_FLUSH_TO_MEM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector10~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|state.READ_FLUSH_TO_MEM~q\);

-- Location: LCCOMB_X47_Y37_N2
\cache_controller|Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector16~0_combout\ = (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (!\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM~q\ & !\cache_controller|state.READ_GET_BLOCK_FROM_MEM~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM~q\,
	datad => \cache_controller|state.READ_GET_BLOCK_FROM_MEM~q\,
	combout => \cache_controller|Selector16~0_combout\);

-- Location: IOIBUF_X52_Y67_N8
\s_addr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(1),
	o => \s_addr[1]~input_o\);

-- Location: LCCOMB_X49_Y37_N16
\cache_controller|Selector51~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector51~0_combout\ = (\cache_controller|Selector16~0_combout\ & (\s_addr[1]~input_o\)) # (!\cache_controller|Selector16~0_combout\ & ((\cache_controller|out_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|Selector16~0_combout\,
	datac => \s_addr[1]~input_o\,
	datad => \cache_controller|out_count\(1),
	combout => \cache_controller|Selector51~0_combout\);

-- Location: LCCOMB_X49_Y37_N12
\cache_controller|word_select[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|word_select[1]~feeder_combout\ = \cache_controller|Selector51~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cache_controller|Selector51~0_combout\,
	combout => \cache_controller|word_select[1]~feeder_combout\);

-- Location: LCCOMB_X45_Y37_N22
\cache_controller|word_select[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|word_select[1]~6_combout\ = (!\cache_controller|word_select[1]~2_combout\ & (!\cache_controller|word_select[1]~5_combout\ & (!\cache_controller|word_select[1]~4_combout\ & !\cache_controller|word_select[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select[1]~2_combout\,
	datab => \cache_controller|word_select[1]~5_combout\,
	datac => \cache_controller|word_select[1]~4_combout\,
	datad => \cache_controller|word_select[1]~3_combout\,
	combout => \cache_controller|word_select[1]~6_combout\);

-- Location: LCCOMB_X49_Y37_N26
\cache_controller|word_select[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|word_select[1]~9_combout\ = (\cache_controller|Selector16~1_combout\ & (((!\cache_controller|state.READ_START~q\ & !\cache_controller|state.WRITE_START~q\)) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_START~q\,
	datab => \cache_controller|Selector16~1_combout\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \cache_controller|state.WRITE_START~q\,
	combout => \cache_controller|word_select[1]~9_combout\);

-- Location: LCCOMB_X48_Y37_N8
\cache_controller|word_select[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|word_select[1]~7_combout\ = (\cache_controller|WideOr18~0_combout\ & (((\cache_controller|Add0~6_combout\) # (!\cache_controller|Equal0~14_combout\)) # (!\cache_controller|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|WideOr18~0_combout\,
	datab => \cache_controller|Selector12~0_combout\,
	datac => \cache_controller|Add0~6_combout\,
	datad => \cache_controller|Equal0~14_combout\,
	combout => \cache_controller|word_select[1]~7_combout\);

-- Location: LCCOMB_X49_Y37_N24
\cache_controller|word_select[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|word_select[1]~8_combout\ = (!\reset~input_o\ & (((!\cache_controller|word_select[1]~9_combout\ & !\cache_controller|word_select[1]~7_combout\)) # (!\cache_controller|word_select[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \cache_controller|word_select[1]~6_combout\,
	datac => \cache_controller|word_select[1]~9_combout\,
	datad => \cache_controller|word_select[1]~7_combout\,
	combout => \cache_controller|word_select[1]~8_combout\);

-- Location: FF_X49_Y37_N13
\cache_controller|word_select[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|word_select[1]~feeder_combout\,
	ena => \cache_controller|word_select[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|word_select\(1));

-- Location: IOIBUF_X81_Y7_N1
\s_addr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_addr(0),
	o => \s_addr[0]~input_o\);

-- Location: LCCOMB_X49_Y37_N10
\cache_controller|Selector52~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector52~0_combout\ = (\cache_controller|Selector16~0_combout\ & ((\s_addr[0]~input_o\))) # (!\cache_controller|Selector16~0_combout\ & (\cache_controller|out_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|out_count\(0),
	datac => \cache_controller|Selector16~0_combout\,
	datad => \s_addr[0]~input_o\,
	combout => \cache_controller|Selector52~0_combout\);

-- Location: LCCOMB_X49_Y37_N2
\cache_controller|word_select[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|word_select[0]~feeder_combout\ = \cache_controller|Selector52~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cache_controller|Selector52~0_combout\,
	combout => \cache_controller|word_select[0]~feeder_combout\);

-- Location: FF_X49_Y37_N3
\cache_controller|word_select[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|word_select[0]~feeder_combout\,
	ena => \cache_controller|word_select[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|word_select\(0));

-- Location: LCCOMB_X47_Y37_N16
\cache_controller|m_addr[0]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[0]~88_combout\ = (!\s_addr[31]~input_o\ & ((\cache_controller|state.READ_START~q\) # (\cache_controller|state.WRITE_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|state.READ_START~q\,
	datac => \cache_controller|state.WRITE_START~q\,
	datad => \s_addr[31]~input_o\,
	combout => \cache_controller|m_addr[0]~88_combout\);

-- Location: LCCOMB_X45_Y37_N20
\cache_controller|Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector17~0_combout\ = (\cache_controller|state.RST~q\ & ((\cache_controller|Equal1~0_combout\) # ((!\cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\ & !\cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.RST~q\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\,
	datac => \cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\,
	datad => \cache_controller|Equal1~0_combout\,
	combout => \cache_controller|Selector17~0_combout\);

-- Location: LCCOMB_X47_Y37_N22
\cache_controller|Selector16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector16~3_combout\ = (\cache_controller|Selector16~0_combout\ & (((\cache_controller|Selector17~0_combout\) # (\cache_controller|transaction\(2))))) # (!\cache_controller|Selector16~0_combout\ & (\m_waitrequest~input_o\ & 
-- ((\cache_controller|transaction\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_waitrequest~input_o\,
	datab => \cache_controller|Selector16~0_combout\,
	datac => \cache_controller|Selector17~0_combout\,
	datad => \cache_controller|transaction\(2),
	combout => \cache_controller|Selector16~3_combout\);

-- Location: LCCOMB_X48_Y37_N24
\cache_controller|s_waitrequest~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|s_waitrequest~0_combout\ = ((!\cache_controller|Equal0~14_combout\) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\)) # (!\cache_controller|tag_ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|tag_ready~q\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \cache_controller|Equal0~14_combout\,
	combout => \cache_controller|s_waitrequest~0_combout\);

-- Location: LCCOMB_X47_Y37_N12
\cache_controller|Selector16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector16~2_combout\ = (\cache_controller|transaction\(2) & (\cache_controller|s_waitrequest~0_combout\ & ((\m_waitrequest~input_o\) # (\cache_controller|Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_waitrequest~input_o\,
	datab => \cache_controller|Selector16~0_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \cache_controller|s_waitrequest~0_combout\,
	combout => \cache_controller|Selector16~2_combout\);

-- Location: LCCOMB_X47_Y37_N28
\cache_controller|Selector16~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector16~4_combout\ = (\cache_controller|Selector16~1_combout\ & ((\cache_controller|Selector16~2_combout\) # ((!\cache_controller|m_addr[0]~88_combout\ & \cache_controller|Selector16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Selector16~1_combout\,
	datab => \cache_controller|m_addr[0]~88_combout\,
	datac => \cache_controller|Selector16~3_combout\,
	datad => \cache_controller|Selector16~2_combout\,
	combout => \cache_controller|Selector16~4_combout\);

-- Location: FF_X47_Y37_N29
\cache_controller|transaction[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector16~4_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|transaction\(2));

-- Location: LCCOMB_X47_Y37_N26
\cache_controller|Selector17~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector17~5_combout\ = (\cache_controller|transaction\(1) & ((\m_waitrequest~input_o\) # ((!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & !\cache_controller|state.READ_FLUSH_TO_MEM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_waitrequest~input_o\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \cache_controller|transaction\(1),
	datad => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	combout => \cache_controller|Selector17~5_combout\);

-- Location: LCCOMB_X49_Y37_N22
\cache_controller|Selector57~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector57~0_combout\ = (!\cache_controller|out_count\(0) & (\cache_controller|out_count\(2) & (\cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\ & !\cache_controller|out_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|out_count\(0),
	datab => \cache_controller|out_count\(2),
	datac => \cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datad => \cache_controller|out_count\(1),
	combout => \cache_controller|Selector57~0_combout\);

-- Location: LCCOMB_X47_Y37_N8
\cache_controller|Selector17~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector17~4_combout\ = (\s_addr[31]~input_o\ & (!\cache_controller|state.READ_START~q\ & (!\cache_controller|state.WRITE_START~q\))) # (!\s_addr[31]~input_o\ & (((\cache_controller|s_waitrequest~0_combout\)) # 
-- (!\cache_controller|state.READ_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[31]~input_o\,
	datab => \cache_controller|state.READ_START~q\,
	datac => \cache_controller|state.WRITE_START~q\,
	datad => \cache_controller|s_waitrequest~0_combout\,
	combout => \cache_controller|Selector17~4_combout\);

-- Location: LCCOMB_X45_Y37_N14
\cache_controller|Selector17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector17~1_combout\ = (!\cache_controller|state.READ_START~q\ & (((!\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM~q\ & !\cache_controller|state.READ_GET_BLOCK_FROM_MEM~q\)) # (!\m_waitrequest~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_START~q\,
	datab => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM~q\,
	datac => \m_waitrequest~input_o\,
	datad => \cache_controller|state.READ_GET_BLOCK_FROM_MEM~q\,
	combout => \cache_controller|Selector17~1_combout\);

-- Location: LCCOMB_X45_Y37_N0
\cache_controller|Selector17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector17~2_combout\ = (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (\cache_controller|Selector17~0_combout\ & (\cache_controller|Selector17~1_combout\ & !\cache_controller|state.READ_FLUSH_TO_MEM~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datab => \cache_controller|Selector17~0_combout\,
	datac => \cache_controller|Selector17~1_combout\,
	datad => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	combout => \cache_controller|Selector17~2_combout\);

-- Location: LCCOMB_X47_Y37_N10
\cache_controller|Selector17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector17~3_combout\ = (\cache_controller|Selector17~2_combout\ & (((!\s_addr[31]~input_o\ & !\cache_controller|s_waitrequest~0_combout\)) # (!\cache_controller|state.WRITE_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[31]~input_o\,
	datab => \cache_controller|Selector17~2_combout\,
	datac => \cache_controller|state.WRITE_START~q\,
	datad => \cache_controller|s_waitrequest~0_combout\,
	combout => \cache_controller|Selector17~3_combout\);

-- Location: LCCOMB_X47_Y37_N14
\cache_controller|Selector17~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector17~6_combout\ = (!\cache_controller|Selector57~0_combout\ & ((\cache_controller|Selector17~3_combout\) # ((\cache_controller|Selector17~5_combout\ & \cache_controller|Selector17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Selector17~5_combout\,
	datab => \cache_controller|Selector57~0_combout\,
	datac => \cache_controller|Selector17~4_combout\,
	datad => \cache_controller|Selector17~3_combout\,
	combout => \cache_controller|Selector17~6_combout\);

-- Location: FF_X47_Y37_N15
\cache_controller|transaction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector17~6_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|transaction\(1));

-- Location: LCCOMB_X59_Y37_N30
\write_one~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_one~0_combout\ = (!\cache_controller|transaction\(2) & (\cache_controller|word_select\(0) & (\cache_controller|transaction\(1) & !\cache_controller|word_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datab => \cache_controller|word_select\(0),
	datac => \cache_controller|transaction\(1),
	datad => \cache_controller|word_select\(1),
	combout => \write_one~0_combout\);

-- Location: IOIBUF_X81_Y9_N8
\s_writedata[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(0),
	o => \s_writedata[0]~input_o\);

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

-- Location: LCCOMB_X49_Y37_N4
\cache_controller|Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector18~0_combout\ = (\cache_controller|transaction\(0)) # ((\cache_controller|Selector17~0_combout\ & ((\cache_controller|Selector16~0_combout\) # (!\m_waitrequest~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(0),
	datab => \cache_controller|Selector17~0_combout\,
	datac => \cache_controller|Selector16~0_combout\,
	datad => \m_waitrequest~input_o\,
	combout => \cache_controller|Selector18~0_combout\);

-- Location: LCCOMB_X49_Y37_N14
\cache_controller|Selector18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector18~1_combout\ = (!\cache_controller|state.WRITE_START~q\ & (\cache_controller|Selector18~0_combout\ & ((\s_addr[31]~input_o\) # (!\cache_controller|state.READ_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[31]~input_o\,
	datab => \cache_controller|state.WRITE_START~q\,
	datac => \cache_controller|Selector18~0_combout\,
	datad => \cache_controller|state.READ_START~q\,
	combout => \cache_controller|Selector18~1_combout\);

-- Location: LCCOMB_X48_Y37_N18
\cache_controller|Selector19~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector19~5_combout\ = (!\s_addr[31]~input_o\ & (((!\cache_controller|Equal0~14_combout\) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\)) # (!\cache_controller|tag_ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[31]~input_o\,
	datab => \cache_controller|tag_ready~q\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \cache_controller|Equal0~14_combout\,
	combout => \cache_controller|Selector19~5_combout\);

-- Location: LCCOMB_X48_Y37_N14
\cache_controller|Selector18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector18~2_combout\ = (\cache_controller|Selector16~1_combout\ & ((\cache_controller|Selector18~1_combout\) # ((\cache_controller|transaction\(0) & \cache_controller|Selector19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Selector18~1_combout\,
	datab => \cache_controller|Selector16~1_combout\,
	datac => \cache_controller|transaction\(0),
	datad => \cache_controller|Selector19~5_combout\,
	combout => \cache_controller|Selector18~2_combout\);

-- Location: FF_X48_Y37_N15
\cache_controller|transaction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector18~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|transaction\(0));

-- Location: LCCOMB_X59_Y36_N6
\Mux98~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux98~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[0]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[0]~input_o\,
	datac => \m_readdata[0]~input_o\,
	datad => \cache_controller|transaction\(0),
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

-- Location: IOIBUF_X68_Y67_N1
\s_writedata[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(1),
	o => \s_writedata[1]~input_o\);

-- Location: LCCOMB_X61_Y35_N22
\Mux100~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux100~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[1]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[1]~input_o\,
	datac => \s_writedata[1]~input_o\,
	datad => \cache_controller|transaction\(0),
	combout => \Mux100~0_combout\);

-- Location: IOIBUF_X70_Y67_N15
\s_writedata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(2),
	o => \s_writedata[2]~input_o\);

-- Location: IOIBUF_X81_Y50_N1
\m_readdata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(2),
	o => \m_readdata[2]~input_o\);

-- Location: LCCOMB_X62_Y38_N18
\Mux102~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux102~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[2]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[2]~input_o\,
	datac => \cache_controller|transaction\(0),
	datad => \m_readdata[2]~input_o\,
	combout => \Mux102~0_combout\);

-- Location: IOIBUF_X81_Y56_N8
\s_writedata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(3),
	o => \s_writedata[3]~input_o\);

-- Location: IOIBUF_X81_Y58_N1
\m_readdata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(3),
	o => \m_readdata[3]~input_o\);

-- Location: LCCOMB_X62_Y38_N24
\Mux104~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux104~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[3]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(0),
	datab => \s_writedata[3]~input_o\,
	datad => \m_readdata[3]~input_o\,
	combout => \Mux104~0_combout\);

-- Location: IOIBUF_X70_Y67_N8
\s_writedata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(4),
	o => \s_writedata[4]~input_o\);

-- Location: IOIBUF_X81_Y20_N8
\m_readdata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(4),
	o => \m_readdata[4]~input_o\);

-- Location: LCCOMB_X62_Y36_N2
\Mux106~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux106~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[4]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(0),
	datac => \s_writedata[4]~input_o\,
	datad => \m_readdata[4]~input_o\,
	combout => \Mux106~0_combout\);

-- Location: IOIBUF_X65_Y67_N8
\m_readdata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(5),
	o => \m_readdata[5]~input_o\);

-- Location: IOIBUF_X81_Y23_N8
\s_writedata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(5),
	o => \s_writedata[5]~input_o\);

-- Location: LCCOMB_X61_Y37_N18
\Mux108~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux108~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[5]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(0),
	datac => \m_readdata[5]~input_o\,
	datad => \s_writedata[5]~input_o\,
	combout => \Mux108~0_combout\);

-- Location: IOIBUF_X81_Y20_N1
\s_writedata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(6),
	o => \s_writedata[6]~input_o\);

-- Location: IOIBUF_X81_Y47_N1
\m_readdata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(6),
	o => \m_readdata[6]~input_o\);

-- Location: LCCOMB_X62_Y36_N0
\Mux110~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux110~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[6]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(0),
	datab => \s_writedata[6]~input_o\,
	datad => \m_readdata[6]~input_o\,
	combout => \Mux110~0_combout\);

-- Location: IOIBUF_X61_Y0_N1
\s_writedata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(7),
	o => \s_writedata[7]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\m_readdata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(7),
	o => \m_readdata[7]~input_o\);

-- Location: LCCOMB_X61_Y36_N22
\Mux112~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux112~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[7]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(0),
	datac => \s_writedata[7]~input_o\,
	datad => \m_readdata[7]~input_o\,
	combout => \Mux112~0_combout\);

-- Location: IOIBUF_X81_Y5_N1
\s_writedata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(8),
	o => \s_writedata[8]~input_o\);

-- Location: IOIBUF_X81_Y25_N1
\m_readdata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(8),
	o => \m_readdata[8]~input_o\);

-- Location: LCCOMB_X62_Y36_N30
\Mux114~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux114~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[8]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(0),
	datac => \s_writedata[8]~input_o\,
	datad => \m_readdata[8]~input_o\,
	combout => \Mux114~0_combout\);

-- Location: IOIBUF_X63_Y67_N1
\s_writedata[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(9),
	o => \s_writedata[9]~input_o\);

-- Location: IOIBUF_X81_Y3_N8
\m_readdata[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(9),
	o => \m_readdata[9]~input_o\);

-- Location: LCCOMB_X61_Y35_N4
\Mux116~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux116~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[9]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(0),
	datac => \s_writedata[9]~input_o\,
	datad => \m_readdata[9]~input_o\,
	combout => \Mux116~0_combout\);

-- Location: IOIBUF_X81_Y58_N8
\m_readdata[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(10),
	o => \m_readdata[10]~input_o\);

-- Location: IOIBUF_X81_Y49_N15
\s_writedata[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(10),
	o => \s_writedata[10]~input_o\);

-- Location: LCCOMB_X59_Y38_N22
\Mux118~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux118~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[10]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(0),
	datac => \m_readdata[10]~input_o\,
	datad => \s_writedata[10]~input_o\,
	combout => \Mux118~0_combout\);

-- Location: IOIBUF_X81_Y8_N8
\s_writedata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(11),
	o => \s_writedata[11]~input_o\);

-- Location: IOIBUF_X81_Y21_N1
\m_readdata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(11),
	o => \m_readdata[11]~input_o\);

-- Location: LCCOMB_X61_Y35_N6
\Mux120~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux120~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[11]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(0),
	datab => \s_writedata[11]~input_o\,
	datad => \m_readdata[11]~input_o\,
	combout => \Mux120~0_combout\);

-- Location: IOIBUF_X54_Y67_N1
\s_writedata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(12),
	o => \s_writedata[12]~input_o\);

-- Location: IOIBUF_X58_Y67_N15
\m_readdata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(12),
	o => \m_readdata[12]~input_o\);

-- Location: LCCOMB_X59_Y37_N4
\Mux122~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux122~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[12]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(0),
	datac => \s_writedata[12]~input_o\,
	datad => \m_readdata[12]~input_o\,
	combout => \Mux122~0_combout\);

-- Location: IOIBUF_X81_Y21_N8
\m_readdata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(13),
	o => \m_readdata[13]~input_o\);

-- Location: IOIBUF_X70_Y67_N22
\s_writedata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(13),
	o => \s_writedata[13]~input_o\);

-- Location: LCCOMB_X62_Y35_N6
\Mux124~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux124~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[13]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(0),
	datac => \m_readdata[13]~input_o\,
	datad => \s_writedata[13]~input_o\,
	combout => \Mux124~0_combout\);

-- Location: M9K_X60_Y36_N0
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

-- Location: LCCOMB_X59_Y37_N20
\write_zero~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_zero~0_combout\ = (!\cache_controller|transaction\(2) & (!\cache_controller|word_select\(0) & (\cache_controller|transaction\(1) & !\cache_controller|word_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datab => \cache_controller|word_select\(0),
	datac => \cache_controller|transaction\(1),
	datad => \cache_controller|word_select\(1),
	combout => \write_zero~0_combout\);

-- Location: M9K_X60_Y37_N0
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

-- Location: LCCOMB_X59_Y36_N20
\Mux38~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\cache_controller|word_select\(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\) # ((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & (((!\cache_controller|word_select\(1) & 
-- \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \cache_controller|word_select\(1),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X59_Y37_N16
\write_two~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_two~0_combout\ = (!\cache_controller|transaction\(2) & (!\cache_controller|word_select\(0) & (\cache_controller|transaction\(1) & \cache_controller|word_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datab => \cache_controller|word_select\(0),
	datac => \cache_controller|transaction\(1),
	datad => \cache_controller|word_select\(1),
	combout => \write_two~0_combout\);

-- Location: M9K_X60_Y38_N0
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

-- Location: LCCOMB_X59_Y37_N18
\write_three~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \write_three~0_combout\ = (!\cache_controller|transaction\(2) & (\cache_controller|word_select\(0) & (\cache_controller|transaction\(1) & \cache_controller|word_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datab => \cache_controller|word_select\(0),
	datac => \cache_controller|transaction\(1),
	datad => \cache_controller|word_select\(1),
	combout => \write_three~0_combout\);

-- Location: M9K_X60_Y35_N0
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

-- Location: LCCOMB_X59_Y36_N14
\Mux38~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\cache_controller|word_select\(1) & ((\Mux38~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (!\Mux38~0_combout\ & 
-- (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # (!\cache_controller|word_select\(1) & (\Mux38~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(1),
	datab => \Mux38~0_combout\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X59_Y36_N4
\Mux65~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux65~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[0]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux38~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux38~1_combout\,
	datac => \m_readdata[0]~input_o\,
	datad => \cache_controller|transaction\(2),
	combout => \Mux65~0_combout\);

-- Location: LCCOMB_X59_Y37_N28
\Mux97~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux97~0_combout\ = (!\cache_controller|transaction\(1) & (\cache_controller|transaction\(2) $ (!\cache_controller|transaction\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datac => \cache_controller|transaction\(1),
	datad => \cache_controller|transaction\(0),
	combout => \Mux97~0_combout\);

-- Location: LCCOMB_X61_Y35_N0
\Mux37~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\cache_controller|word_select\(1) & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\) # (\cache_controller|word_select\(0))))) # (!\cache_controller|word_select\(1) & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\ & ((!\cache_controller|word_select\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datab => \cache_controller|word_select\(1),
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datad => \cache_controller|word_select\(0),
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X61_Y35_N2
\Mux37~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\cache_controller|word_select\(0) & ((\Mux37~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\)) # (!\Mux37~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\))))) # 
-- (!\cache_controller|word_select\(0) & (((\Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	datac => \cache_controller|word_select\(0),
	datad => \Mux37~0_combout\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X61_Y35_N20
\Mux66~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux66~0_combout\ = (\cache_controller|transaction\(2) & (\m_readdata[1]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datac => \m_readdata[1]~input_o\,
	datad => \Mux37~1_combout\,
	combout => \Mux66~0_combout\);

-- Location: LCCOMB_X62_Y38_N12
\Mux36~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\cache_controller|word_select\(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\) # ((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & (((!\cache_controller|word_select\(1) & 
-- \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datac => \cache_controller|word_select\(1),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X62_Y38_N26
\Mux36~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\cache_controller|word_select\(1) & ((\Mux36~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\)) # (!\Mux36~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\))))) # 
-- (!\cache_controller|word_select\(1) & (((\Mux36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datab => \cache_controller|word_select\(1),
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \Mux36~0_combout\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X62_Y38_N28
\Mux67~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux67~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[2]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux36~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \m_readdata[2]~input_o\,
	combout => \Mux67~0_combout\);

-- Location: LCCOMB_X59_Y38_N0
\Mux35~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\cache_controller|word_select\(0) & (((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & ((\cache_controller|word_select\(1) & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\)) # 
-- (!\cache_controller|word_select\(1) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	datac => \cache_controller|word_select\(1),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X62_Y38_N22
\Mux35~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Mux35~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\) # ((!\cache_controller|word_select\(0))))) # (!\Mux35~0_combout\ & (((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\ & 
-- \cache_controller|word_select\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	datab => \Mux35~0_combout\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	datad => \cache_controller|word_select\(0),
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X62_Y38_N16
\Mux68~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux68~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[3]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux35~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \m_readdata[3]~input_o\,
	combout => \Mux68~0_combout\);

-- Location: LCCOMB_X62_Y36_N28
\Mux34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\cache_controller|word_select\(1) & (\cache_controller|word_select\(0))) # (!\cache_controller|word_select\(1) & ((\cache_controller|word_select\(0) & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\)) # 
-- (!\cache_controller|word_select\(0) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(1),
	datab => \cache_controller|word_select\(0),
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X62_Y36_N18
\Mux34~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\cache_controller|word_select\(1) & ((\Mux34~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\))) # (!\Mux34~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\)))) # 
-- (!\cache_controller|word_select\(1) & (((\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4\,
	datac => \cache_controller|word_select\(1),
	datad => \Mux34~0_combout\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X62_Y36_N16
\Mux69~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux69~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[4]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux34~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux34~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \m_readdata[4]~input_o\,
	combout => \Mux69~0_combout\);

-- Location: LCCOMB_X61_Y37_N16
\Mux33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\cache_controller|word_select\(1) & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\) # ((\cache_controller|word_select\(0))))) # (!\cache_controller|word_select\(1) & (((!\cache_controller|word_select\(0) & 
-- \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	datab => \cache_controller|word_select\(1),
	datac => \cache_controller|word_select\(0),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X61_Y37_N14
\Mux33~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\cache_controller|word_select\(0) & ((\Mux33~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\)) # (!\Mux33~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\))))) # 
-- (!\cache_controller|word_select\(0) & (((\Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	datab => \cache_controller|word_select\(0),
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	datad => \Mux33~0_combout\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X61_Y37_N20
\Mux70~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux70~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[5]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux33~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux33~1_combout\,
	datac => \m_readdata[5]~input_o\,
	datad => \cache_controller|transaction\(2),
	combout => \Mux70~0_combout\);

-- Location: LCCOMB_X62_Y36_N22
\Mux32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\cache_controller|word_select\(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\) # ((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & (((!\cache_controller|word_select\(1) & 
-- \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datab => \cache_controller|word_select\(0),
	datac => \cache_controller|word_select\(1),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X62_Y36_N8
\Mux32~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\cache_controller|word_select\(1) & ((\Mux32~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\))) # (!\Mux32~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\)))) # 
-- (!\cache_controller|word_select\(1) & (((\Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(1),
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datac => \Mux32~0_combout\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X62_Y36_N14
\Mux71~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux71~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[6]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux32~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(2),
	datac => \Mux32~1_combout\,
	datad => \m_readdata[6]~input_o\,
	combout => \Mux71~0_combout\);

-- Location: LCCOMB_X61_Y37_N30
\Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\cache_controller|word_select\(1) & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\) # ((\cache_controller|word_select\(0))))) # (!\cache_controller|word_select\(1) & (((!\cache_controller|word_select\(0) & 
-- \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	datab => \cache_controller|word_select\(1),
	datac => \cache_controller|word_select\(0),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X61_Y36_N28
\Mux31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\cache_controller|word_select\(0) & ((\Mux31~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\)) # (!\Mux31~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\))))) # 
-- (!\cache_controller|word_select\(0) & (((\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	datab => \cache_controller|word_select\(0),
	datac => \Mux31~0_combout\,
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X61_Y36_N6
\Mux72~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux72~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[7]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \m_readdata[7]~input_o\,
	combout => \Mux72~0_combout\);

-- Location: LCCOMB_X59_Y36_N10
\Mux30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\cache_controller|word_select\(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\) # ((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & (((!\cache_controller|word_select\(1) & 
-- \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datac => \cache_controller|word_select\(1),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X62_Y36_N12
\Mux30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\) # ((!\cache_controller|word_select\(1))))) # (!\Mux30~0_combout\ & (((\cache_controller|word_select\(1) & 
-- \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datac => \cache_controller|word_select\(1),
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X62_Y36_N10
\Mux73~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux73~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[8]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux30~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~1_combout\,
	datab => \cache_controller|transaction\(2),
	datad => \m_readdata[8]~input_o\,
	combout => \Mux73~0_combout\);

-- Location: LCCOMB_X61_Y35_N10
\Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\cache_controller|word_select\(0) & (((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & ((\cache_controller|word_select\(1) & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\)) # 
-- (!\cache_controller|word_select\(1) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	datac => \cache_controller|word_select\(1),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X61_Y35_N12
\Mux29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\cache_controller|word_select\(0) & ((\Mux29~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\)) # (!\Mux29~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\))))) # 
-- (!\cache_controller|word_select\(0) & (((\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	datad => \Mux29~0_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X61_Y35_N18
\Mux74~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux74~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[9]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux29~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \m_readdata[9]~input_o\,
	combout => \Mux74~0_combout\);

-- Location: LCCOMB_X59_Y38_N2
\Mux28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\cache_controller|word_select\(0) & (((\cache_controller|word_select\(1)) # (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\)))) # (!\cache_controller|word_select\(0) & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\ & (!\cache_controller|word_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	datac => \cache_controller|word_select\(1),
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X59_Y38_N16
\Mux28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\cache_controller|word_select\(1) & ((\Mux28~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\)) # (!\Mux28~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\))))) # 
-- (!\cache_controller|word_select\(1) & (((\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(1),
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	datad => \Mux28~0_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X59_Y38_N14
\Mux75~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux75~0_combout\ = (\cache_controller|transaction\(2) & (\m_readdata[10]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datac => \m_readdata[10]~input_o\,
	datad => \Mux28~1_combout\,
	combout => \Mux75~0_combout\);

-- Location: LCCOMB_X59_Y35_N24
\Mux27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\cache_controller|word_select\(1) & ((\cache_controller|word_select\(0)) # ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\)))) # (!\cache_controller|word_select\(1) & (!\cache_controller|word_select\(0) & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(1),
	datab => \cache_controller|word_select\(0),
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X61_Y35_N16
\Mux27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\cache_controller|word_select\(0) & ((\Mux27~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\))) # (!\Mux27~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\)))) # 
-- (!\cache_controller|word_select\(0) & (((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X61_Y35_N26
\Mux76~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux76~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[11]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux27~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \m_readdata[11]~input_o\,
	combout => \Mux76~0_combout\);

-- Location: LCCOMB_X59_Y37_N6
\Mux26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\cache_controller|word_select\(1) & (((\cache_controller|word_select\(0))))) # (!\cache_controller|word_select\(1) & ((\cache_controller|word_select\(0) & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)) # 
-- (!\cache_controller|word_select\(0) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(1),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	datac => \cache_controller|word_select\(0),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X59_Y37_N12
\Mux26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux26~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\) # (!\cache_controller|word_select\(1))))) # (!\Mux26~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\ & 
-- ((\cache_controller|word_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	datad => \cache_controller|word_select\(1),
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X59_Y37_N22
\Mux77~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux77~0_combout\ = (\cache_controller|transaction\(2) & (\m_readdata[12]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[12]~input_o\,
	datac => \cache_controller|transaction\(2),
	datad => \Mux26~1_combout\,
	combout => \Mux77~0_combout\);

-- Location: LCCOMB_X61_Y35_N24
\Mux25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\cache_controller|word_select\(1) & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\) # (\cache_controller|word_select\(0))))) # (!\cache_controller|word_select\(1) & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ & ((!\cache_controller|word_select\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	datab => \cache_controller|word_select\(1),
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	datad => \cache_controller|word_select\(0),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X62_Y35_N12
\Mux25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\) # (!\cache_controller|word_select\(0))))) # (!\Mux25~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\ & 
-- ((\cache_controller|word_select\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	datab => \Mux25~0_combout\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	datad => \cache_controller|word_select\(0),
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X62_Y35_N18
\Mux78~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux78~0_combout\ = (\cache_controller|transaction\(2) & (\m_readdata[13]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datac => \m_readdata[13]~input_o\,
	datad => \Mux25~1_combout\,
	combout => \Mux78~0_combout\);

-- Location: IOIBUF_X56_Y67_N15
\m_readdata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(14),
	o => \m_readdata[14]~input_o\);

-- Location: IOIBUF_X81_Y7_N8
\s_writedata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(14),
	o => \s_writedata[14]~input_o\);

-- Location: LCCOMB_X59_Y35_N6
\Mux126~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux126~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[14]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[14]~input_o\,
	datac => \cache_controller|transaction\(0),
	datad => \s_writedata[14]~input_o\,
	combout => \Mux126~0_combout\);

-- Location: IOIBUF_X81_Y46_N1
\m_readdata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(15),
	o => \m_readdata[15]~input_o\);

-- Location: IOIBUF_X81_Y62_N8
\s_writedata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(15),
	o => \s_writedata[15]~input_o\);

-- Location: LCCOMB_X59_Y38_N20
\Mux128~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux128~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[15]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(0),
	datac => \m_readdata[15]~input_o\,
	datad => \s_writedata[15]~input_o\,
	combout => \Mux128~0_combout\);

-- Location: IOIBUF_X81_Y59_N15
\m_readdata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(16),
	o => \m_readdata[16]~input_o\);

-- Location: IOIBUF_X70_Y67_N1
\s_writedata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(16),
	o => \s_writedata[16]~input_o\);

-- Location: LCCOMB_X62_Y38_N14
\Mux130~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux130~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[16]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[16]~input_o\,
	datac => \s_writedata[16]~input_o\,
	datad => \cache_controller|transaction\(0),
	combout => \Mux130~0_combout\);

-- Location: IOIBUF_X81_Y8_N1
\m_readdata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(17),
	o => \m_readdata[17]~input_o\);

-- Location: IOIBUF_X81_Y19_N8
\s_writedata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(17),
	o => \s_writedata[17]~input_o\);

-- Location: LCCOMB_X62_Y35_N0
\Mux132~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux132~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[17]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[17]~input_o\,
	datac => \cache_controller|transaction\(0),
	datad => \s_writedata[17]~input_o\,
	combout => \Mux132~0_combout\);

-- Location: IOIBUF_X81_Y26_N1
\s_writedata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(18),
	o => \s_writedata[18]~input_o\);

-- Location: IOIBUF_X81_Y50_N8
\m_readdata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(18),
	o => \m_readdata[18]~input_o\);

-- Location: LCCOMB_X61_Y38_N2
\Mux134~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux134~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[18]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[18]~input_o\,
	datac => \m_readdata[18]~input_o\,
	datad => \cache_controller|transaction\(0),
	combout => \Mux134~0_combout\);

-- Location: IOIBUF_X81_Y46_N8
\m_readdata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(19),
	o => \m_readdata[19]~input_o\);

-- Location: IOIBUF_X81_Y61_N8
\s_writedata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(19),
	o => \s_writedata[19]~input_o\);

-- Location: LCCOMB_X61_Y38_N16
\Mux136~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux136~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[19]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[19]~input_o\,
	datab => \s_writedata[19]~input_o\,
	datad => \cache_controller|transaction\(0),
	combout => \Mux136~0_combout\);

-- Location: IOIBUF_X65_Y67_N1
\s_writedata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(20),
	o => \s_writedata[20]~input_o\);

-- Location: IOIBUF_X81_Y63_N1
\m_readdata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(20),
	o => \m_readdata[20]~input_o\);

-- Location: LCCOMB_X61_Y38_N22
\Mux138~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux138~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[20]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[20]~input_o\,
	datac => \m_readdata[20]~input_o\,
	datad => \cache_controller|transaction\(0),
	combout => \Mux138~0_combout\);

-- Location: IOIBUF_X65_Y0_N8
\s_writedata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(21),
	o => \s_writedata[21]~input_o\);

-- Location: IOIBUF_X81_Y7_N15
\m_readdata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(21),
	o => \m_readdata[21]~input_o\);

-- Location: LCCOMB_X59_Y37_N2
\Mux140~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux140~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[21]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(0),
	datac => \s_writedata[21]~input_o\,
	datad => \m_readdata[21]~input_o\,
	combout => \Mux140~0_combout\);

-- Location: IOIBUF_X63_Y0_N8
\m_readdata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(22),
	o => \m_readdata[22]~input_o\);

-- Location: IOIBUF_X63_Y67_N8
\s_writedata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(22),
	o => \s_writedata[22]~input_o\);

-- Location: LCCOMB_X59_Y36_N24
\Mux142~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux142~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[22]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[22]~input_o\,
	datac => \s_writedata[22]~input_o\,
	datad => \cache_controller|transaction\(0),
	combout => \Mux142~0_combout\);

-- Location: IOIBUF_X81_Y56_N1
\m_readdata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(23),
	o => \m_readdata[23]~input_o\);

-- Location: IOIBUF_X81_Y47_N8
\s_writedata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(23),
	o => \s_writedata[23]~input_o\);

-- Location: LCCOMB_X61_Y36_N8
\Mux144~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux144~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[23]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m_readdata[23]~input_o\,
	datac => \cache_controller|transaction\(0),
	datad => \s_writedata[23]~input_o\,
	combout => \Mux144~0_combout\);

-- Location: IOIBUF_X58_Y67_N22
\m_readdata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(24),
	o => \m_readdata[24]~input_o\);

-- Location: IOIBUF_X81_Y25_N8
\s_writedata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(24),
	o => \s_writedata[24]~input_o\);

-- Location: LCCOMB_X59_Y36_N2
\Mux146~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux146~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[24]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(0),
	datac => \m_readdata[24]~input_o\,
	datad => \s_writedata[24]~input_o\,
	combout => \Mux146~0_combout\);

-- Location: IOIBUF_X81_Y2_N15
\s_writedata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(25),
	o => \s_writedata[25]~input_o\);

-- Location: IOIBUF_X81_Y9_N1
\m_readdata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(25),
	o => \m_readdata[25]~input_o\);

-- Location: LCCOMB_X61_Y36_N26
\Mux148~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux148~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[25]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[25]~input_o\,
	datac => \cache_controller|transaction\(0),
	datad => \m_readdata[25]~input_o\,
	combout => \Mux148~0_combout\);

-- Location: IOIBUF_X56_Y0_N1
\m_readdata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(26),
	o => \m_readdata[26]~input_o\);

-- Location: IOIBUF_X63_Y0_N1
\s_writedata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(26),
	o => \s_writedata[26]~input_o\);

-- Location: LCCOMB_X59_Y35_N0
\Mux150~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux150~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[26]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[26]~input_o\,
	datac => \cache_controller|transaction\(0),
	datad => \s_writedata[26]~input_o\,
	combout => \Mux150~0_combout\);

-- Location: IOIBUF_X58_Y0_N15
\s_writedata[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(27),
	o => \s_writedata[27]~input_o\);

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

-- Location: LCCOMB_X59_Y35_N26
\Mux152~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux152~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[27]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[27]~input_o\,
	datac => \cache_controller|transaction\(0),
	datad => \m_readdata[27]~input_o\,
	combout => \Mux152~0_combout\);

-- Location: IOIBUF_X81_Y46_N15
\m_readdata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(28),
	o => \m_readdata[28]~input_o\);

-- Location: IOIBUF_X81_Y61_N15
\s_writedata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(28),
	o => \s_writedata[28]~input_o\);

-- Location: LCCOMB_X59_Y38_N26
\Mux154~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux154~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[28]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(0),
	datac => \m_readdata[28]~input_o\,
	datad => \s_writedata[28]~input_o\,
	combout => \Mux154~0_combout\);

-- Location: IOIBUF_X81_Y19_N1
\s_writedata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(29),
	o => \s_writedata[29]~input_o\);

-- Location: IOIBUF_X81_Y12_N1
\m_readdata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(29),
	o => \m_readdata[29]~input_o\);

-- Location: LCCOMB_X62_Y35_N26
\Mux156~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux156~0_combout\ = (\cache_controller|transaction\(0) & ((\m_readdata[29]~input_o\))) # (!\cache_controller|transaction\(0) & (\s_writedata[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(0),
	datac => \s_writedata[29]~input_o\,
	datad => \m_readdata[29]~input_o\,
	combout => \Mux156~0_combout\);

-- Location: IOIBUF_X65_Y67_N15
\m_readdata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(30),
	o => \m_readdata[30]~input_o\);

-- Location: IOIBUF_X81_Y14_N8
\s_writedata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(30),
	o => \s_writedata[30]~input_o\);

-- Location: LCCOMB_X61_Y37_N28
\Mux158~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux158~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[30]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(0),
	datac => \m_readdata[30]~input_o\,
	datad => \s_writedata[30]~input_o\,
	combout => \Mux158~0_combout\);

-- Location: IOIBUF_X63_Y67_N15
\m_readdata[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_m_readdata(31),
	o => \m_readdata[31]~input_o\);

-- Location: IOIBUF_X81_Y6_N15
\s_writedata[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s_writedata(31),
	o => \s_writedata[31]~input_o\);

-- Location: LCCOMB_X61_Y37_N2
\Mux160~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux160~0_combout\ = (\cache_controller|transaction\(0) & (\m_readdata[31]~input_o\)) # (!\cache_controller|transaction\(0) & ((\s_writedata[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[31]~input_o\,
	datac => \cache_controller|transaction\(0),
	datad => \s_writedata[31]~input_o\,
	combout => \Mux160~0_combout\);

-- Location: M9K_X60_Y38_N0
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

-- Location: M9K_X60_Y35_N0
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

-- Location: M9K_X60_Y36_N0
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

-- Location: LCCOMB_X59_Y35_N22
\Mux24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\cache_controller|word_select\(0) & (((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\) # (\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ & ((!\cache_controller|word_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\,
	datac => \cache_controller|word_select\(0),
	datad => \cache_controller|word_select\(1),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X59_Y35_N12
\Mux24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux24~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\) # (!\cache_controller|word_select\(1))))) # (!\Mux24~0_combout\ & 
-- (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\ & ((\cache_controller|word_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\,
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14~portadataout\,
	datac => \Mux24~0_combout\,
	datad => \cache_controller|word_select\(1),
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X59_Y35_N10
\Mux79~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux79~0_combout\ = (\cache_controller|transaction\(2) & (\m_readdata[14]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[14]~input_o\,
	datac => \cache_controller|transaction\(2),
	datad => \Mux24~1_combout\,
	combout => \Mux79~0_combout\);

-- Location: LCCOMB_X59_Y38_N24
\Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\cache_controller|word_select\(0) & (((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & ((\cache_controller|word_select\(1) & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\))) # 
-- (!\cache_controller|word_select\(1) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datac => \cache_controller|word_select\(1),
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X59_Y38_N10
\Mux23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\cache_controller|word_select\(0) & ((\Mux23~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\))) # (!\Mux23~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\)))) # 
-- (!\cache_controller|word_select\(0) & (\Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \Mux23~0_combout\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X59_Y38_N12
\Mux80~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux80~0_combout\ = (\cache_controller|transaction\(2) & (\m_readdata[15]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datac => \m_readdata[15]~input_o\,
	datad => \Mux23~1_combout\,
	combout => \Mux80~0_combout\);

-- Location: LCCOMB_X61_Y38_N28
\Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\cache_controller|word_select\(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\) # ((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & 
-- (((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ & !\cache_controller|word_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datad => \cache_controller|word_select\(1),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X61_Y38_N18
\Mux22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\) # (!\cache_controller|word_select\(1))))) # (!\Mux22~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\ & 
-- ((\cache_controller|word_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datab => \Mux22~0_combout\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	datad => \cache_controller|word_select\(1),
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X62_Y38_N2
\Mux81~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux81~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[16]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux22~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux22~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \m_readdata[16]~input_o\,
	combout => \Mux81~0_combout\);

-- Location: LCCOMB_X62_Y35_N24
\Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\cache_controller|word_select\(1) & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\) # (\cache_controller|word_select\(0))))) # (!\cache_controller|word_select\(1) & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ & ((!\cache_controller|word_select\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	datab => \cache_controller|word_select\(1),
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	datad => \cache_controller|word_select\(0),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X62_Y35_N10
\Mux21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\) # ((!\cache_controller|word_select\(0))))) # (!\Mux21~0_combout\ & (((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\ & 
-- \cache_controller|word_select\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	datab => \Mux21~0_combout\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	datad => \cache_controller|word_select\(0),
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X62_Y35_N20
\Mux82~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux82~0_combout\ = (\cache_controller|transaction\(2) & (\m_readdata[17]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m_readdata[17]~input_o\,
	datac => \cache_controller|transaction\(2),
	datad => \Mux21~1_combout\,
	combout => \Mux82~0_combout\);

-- Location: LCCOMB_X61_Y36_N0
\Mux20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\cache_controller|word_select\(0) & ((\cache_controller|word_select\(1)) # ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\)))) # (!\cache_controller|word_select\(0) & (!\cache_controller|word_select\(1) & 
-- ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \cache_controller|word_select\(1),
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X61_Y38_N12
\Mux20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\cache_controller|word_select\(1) & ((\Mux20~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\)) # (!\Mux20~0_combout\ & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\))))) # 
-- (!\cache_controller|word_select\(1) & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(1),
	datab => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X61_Y38_N14
\Mux83~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux83~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[18]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \m_readdata[18]~input_o\,
	datac => \cache_controller|transaction\(2),
	combout => \Mux83~0_combout\);

-- Location: LCCOMB_X61_Y38_N20
\Mux19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\cache_controller|word_select\(0) & (((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & ((\cache_controller|word_select\(1) & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\)) # 
-- (!\cache_controller|word_select\(1) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datad => \cache_controller|word_select\(1),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X61_Y38_N26
\Mux19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\cache_controller|word_select\(0) & ((\Mux19~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\))) # (!\Mux19~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\)))) # 
-- (!\cache_controller|word_select\(0) & (((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X61_Y38_N0
\Mux84~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux84~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[19]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \m_readdata[19]~input_o\,
	combout => \Mux84~0_combout\);

-- Location: LCCOMB_X61_Y36_N2
\Mux18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\cache_controller|word_select\(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\) # ((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & 
-- (((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\ & !\cache_controller|word_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datad => \cache_controller|word_select\(1),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X61_Y38_N10
\Mux18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\cache_controller|word_select\(1) & ((\Mux18~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\))) # (!\Mux18~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\)))) # 
-- (!\cache_controller|word_select\(1) & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(1),
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datac => \Mux18~0_combout\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X61_Y38_N24
\Mux85~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux85~0_combout\ = (\cache_controller|transaction\(2) & (\m_readdata[20]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datac => \m_readdata[20]~input_o\,
	datad => \Mux18~1_combout\,
	combout => \Mux85~0_combout\);

-- Location: LCCOMB_X59_Y37_N0
\Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\cache_controller|word_select\(0) & (((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & ((\cache_controller|word_select\(1) & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\)) # 
-- (!\cache_controller|word_select\(1) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	datab => \cache_controller|word_select\(0),
	datac => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	datad => \cache_controller|word_select\(1),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X59_Y37_N14
\Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\) # (!\cache_controller|word_select\(0))))) # (!\Mux17~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\ & 
-- (\cache_controller|word_select\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	datab => \Mux17~0_combout\,
	datac => \cache_controller|word_select\(0),
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a21\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X59_Y37_N24
\Mux86~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux86~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[21]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux17~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \m_readdata[21]~input_o\,
	combout => \Mux86~0_combout\);

-- Location: LCCOMB_X59_Y36_N0
\Mux16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\cache_controller|word_select\(0) & (((\cache_controller|word_select\(1)) # (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\)))) # (!\cache_controller|word_select\(0) & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\ & (!\cache_controller|word_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datac => \cache_controller|word_select\(1),
	datad => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X59_Y36_N26
\Mux16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\) # ((!\cache_controller|word_select\(1))))) # (!\Mux16~0_combout\ & (((\cache_controller|word_select\(1) & 
-- \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datab => \Mux16~0_combout\,
	datac => \cache_controller|word_select\(1),
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X59_Y36_N8
\Mux87~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux87~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[22]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datac => \m_readdata[22]~input_o\,
	datad => \cache_controller|transaction\(2),
	combout => \Mux87~0_combout\);

-- Location: LCCOMB_X61_Y36_N16
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\cache_controller|word_select\(1) & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\) # ((\cache_controller|word_select\(0))))) # (!\cache_controller|word_select\(1) & (((!\cache_controller|word_select\(0) & 
-- \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datab => \cache_controller|word_select\(1),
	datac => \cache_controller|word_select\(0),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X61_Y36_N30
\Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\cache_controller|word_select\(0) & ((\Mux15~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\)) # (!\Mux15~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\))))) # 
-- (!\cache_controller|word_select\(0) & (((\Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datac => \cache_controller|word_select\(0),
	datad => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X61_Y36_N20
\Mux88~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux88~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[23]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \cache_controller|transaction\(2),
	datac => \m_readdata[23]~input_o\,
	combout => \Mux88~0_combout\);

-- Location: LCCOMB_X59_Y36_N22
\Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\cache_controller|word_select\(1) & (((\cache_controller|word_select\(0))))) # (!\cache_controller|word_select\(1) & ((\cache_controller|word_select\(0) & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\)) # 
-- (!\cache_controller|word_select\(0) & ((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(1),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	datac => \cache_controller|word_select\(0),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X59_Y36_N12
\Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\) # (!\cache_controller|word_select\(1))))) # (!\Mux14~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\ & 
-- (\cache_controller|word_select\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	datac => \cache_controller|word_select\(1),
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a24\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X59_Y36_N18
\Mux89~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux89~0_combout\ = (\cache_controller|transaction\(2) & (\m_readdata[24]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(2),
	datac => \m_readdata[24]~input_o\,
	datad => \Mux14~1_combout\,
	combout => \Mux89~0_combout\);

-- Location: LCCOMB_X61_Y36_N10
\Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\cache_controller|word_select\(0) & (((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & ((\cache_controller|word_select\(1) & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\))) # 
-- (!\cache_controller|word_select\(1) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	datac => \cache_controller|word_select\(0),
	datad => \cache_controller|word_select\(1),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X61_Y36_N12
\Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\cache_controller|word_select\(0) & ((\Mux13~0_combout\ & (\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\)) # (!\Mux13~0_combout\ & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\))))) # 
-- (!\cache_controller|word_select\(0) & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a25\,
	datac => \cache_controller|word_select\(0),
	datad => \Mux13~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X61_Y36_N14
\Mux90~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux90~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[25]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \m_readdata[25]~input_o\,
	combout => \Mux90~0_combout\);

-- Location: LCCOMB_X59_Y35_N16
\Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\cache_controller|word_select\(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\) # ((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & 
-- (((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\ & !\cache_controller|word_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	datac => \cache_controller|word_select\(0),
	datad => \cache_controller|word_select\(1),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X59_Y35_N30
\Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\cache_controller|word_select\(1) & ((\Mux12~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\))) # (!\Mux12~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\)))) # 
-- (!\cache_controller|word_select\(1) & (\Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(1),
	datab => \Mux12~0_combout\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a26\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X59_Y35_N8
\Mux91~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux91~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[26]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \m_readdata[26]~input_o\,
	datac => \cache_controller|transaction\(2),
	combout => \Mux91~0_combout\);

-- Location: LCCOMB_X59_Y35_N2
\Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\cache_controller|word_select\(0) & (((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & ((\cache_controller|word_select\(1) & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\))) # 
-- (!\cache_controller|word_select\(1) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\,
	datab => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\,
	datac => \cache_controller|word_select\(0),
	datad => \cache_controller|word_select\(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X59_Y35_N28
\Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & (((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\) # (!\cache_controller|word_select\(0))))) # (!\Mux11~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\ & 
-- (\cache_controller|word_select\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\,
	datab => \Mux11~0_combout\,
	datac => \cache_controller|word_select\(0),
	datad => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a27\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X59_Y35_N18
\Mux92~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux92~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[27]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \m_readdata[27]~input_o\,
	combout => \Mux92~0_combout\);

-- Location: LCCOMB_X59_Y38_N18
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\cache_controller|word_select\(1) & (((\cache_controller|word_select\(0))))) # (!\cache_controller|word_select\(1) & ((\cache_controller|word_select\(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\))) # 
-- (!\cache_controller|word_select\(0) & (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(1),
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	datac => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	datad => \cache_controller|word_select\(0),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X59_Y38_N28
\Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\) # ((!\cache_controller|word_select\(1))))) # (!\Mux10~0_combout\ & (((\cache_controller|word_select\(1) & 
-- \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	datab => \Mux10~0_combout\,
	datac => \cache_controller|word_select\(1),
	datad => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a28\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X59_Y38_N6
\Mux93~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux93~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[28]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datab => \Mux10~1_combout\,
	datac => \m_readdata[28]~input_o\,
	combout => \Mux93~0_combout\);

-- Location: LCCOMB_X61_Y38_N6
\Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\cache_controller|word_select\(1) & (((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\) # (\cache_controller|word_select\(0))))) # (!\cache_controller|word_select\(1) & 
-- (\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\ & ((!\cache_controller|word_select\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(1),
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datac => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datad => \cache_controller|word_select\(0),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X61_Y35_N14
\Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\cache_controller|word_select\(0) & ((\Mux9~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\))) # (!\Mux9~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\)))) # 
-- (!\cache_controller|word_select\(0) & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|word_select\(0),
	datab => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a29\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X62_Y35_N22
\Mux94~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux94~0_combout\ = (\cache_controller|transaction\(2) & (\m_readdata[29]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datab => \m_readdata[29]~input_o\,
	datad => \Mux9~1_combout\,
	combout => \Mux94~0_combout\);

-- Location: LCCOMB_X61_Y37_N24
\Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\cache_controller|word_select\(0) & ((\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\) # ((\cache_controller|word_select\(1))))) # (!\cache_controller|word_select\(0) & 
-- (((\word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\ & !\cache_controller|word_select\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	datab => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	datac => \cache_controller|word_select\(0),
	datad => \cache_controller|word_select\(1),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X61_Y37_N26
\Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\cache_controller|word_select\(1) & ((\Mux8~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\))) # (!\Mux8~0_combout\ & (\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\)))) # 
-- (!\cache_controller|word_select\(1) & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	datab => \cache_controller|word_select\(1),
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a30\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X61_Y37_N8
\Mux95~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux95~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[30]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \cache_controller|transaction\(2),
	datac => \m_readdata[30]~input_o\,
	combout => \Mux95~0_combout\);

-- Location: LCCOMB_X61_Y37_N10
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\cache_controller|word_select\(1) & ((\word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\) # ((\cache_controller|word_select\(0))))) # (!\cache_controller|word_select\(1) & (((!\cache_controller|word_select\(0) & 
-- \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_two_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	datab => \cache_controller|word_select\(1),
	datac => \cache_controller|word_select\(0),
	datad => \word_zero_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X61_Y37_N4
\Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\cache_controller|word_select\(0) & ((\Mux7~0_combout\ & ((\word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\))) # (!\Mux7~0_combout\ & (\word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\)))) # 
-- (!\cache_controller|word_select\(0) & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \word_one_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	datab => \cache_controller|word_select\(0),
	datac => \word_three_SRAM|mem_block_rtl_0|auto_generated|ram_block1a31\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X61_Y37_N6
\Mux96~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux96~0_combout\ = (\cache_controller|transaction\(2) & ((\m_readdata[31]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(2),
	datac => \Mux7~1_combout\,
	datad => \m_readdata[31]~input_o\,
	combout => \Mux96~0_combout\);

-- Location: LCCOMB_X59_Y36_N16
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[0]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux38~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux38~1_combout\,
	datac => \s_writedata[0]~input_o\,
	datad => \cache_controller|transaction\(2),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X59_Y37_N26
\Mux64~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux64~0_combout\ = (!\cache_controller|transaction\(1) & (\cache_controller|transaction\(2) $ (\cache_controller|transaction\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datac => \cache_controller|transaction\(1),
	datad => \cache_controller|transaction\(0),
	combout => \Mux64~0_combout\);

-- Location: LCCOMB_X61_Y35_N28
\Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\cache_controller|transaction\(2) & (\s_writedata[1]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[1]~input_o\,
	datac => \cache_controller|transaction\(2),
	datad => \Mux37~1_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X62_Y38_N20
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[2]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux36~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \s_writedata[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X62_Y38_N6
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[3]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux35~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux35~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \s_writedata[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X62_Y36_N24
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\cache_controller|transaction\(2) & (\s_writedata[4]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(2),
	datac => \s_writedata[4]~input_o\,
	datad => \Mux34~1_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X61_Y37_N0
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[5]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux33~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(2),
	datac => \Mux33~1_combout\,
	datad => \s_writedata[5]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X62_Y36_N26
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[6]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux32~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(2),
	datac => \Mux32~1_combout\,
	datad => \s_writedata[6]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X61_Y36_N24
\Mux39~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\cache_controller|transaction\(2) & (\s_writedata[7]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[7]~input_o\,
	datac => \cache_controller|transaction\(2),
	datad => \Mux31~1_combout\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X62_Y36_N20
\Mux40~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[8]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux30~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~1_combout\,
	datab => \cache_controller|transaction\(2),
	datac => \s_writedata[8]~input_o\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X61_Y35_N30
\Mux41~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\cache_controller|transaction\(2) & (\s_writedata[9]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux29~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datac => \s_writedata[9]~input_o\,
	datad => \Mux29~1_combout\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X59_Y38_N4
\Mux42~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[10]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux28~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux28~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \s_writedata[10]~input_o\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X61_Y35_N8
\Mux43~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[11]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux27~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \s_writedata[11]~input_o\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X59_Y37_N8
\Mux44~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\cache_controller|transaction\(2) & (\s_writedata[12]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[12]~input_o\,
	datac => \cache_controller|transaction\(2),
	datad => \Mux26~1_combout\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X62_Y35_N16
\Mux45~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\cache_controller|transaction\(2) & (\s_writedata[13]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_writedata[13]~input_o\,
	datac => \cache_controller|transaction\(2),
	datad => \Mux25~1_combout\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X59_Y35_N20
\Mux46~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[14]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux24~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \s_writedata[14]~input_o\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X59_Y38_N30
\Mux47~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[15]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \s_writedata[15]~input_o\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X62_Y38_N0
\Mux48~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\cache_controller|transaction\(2) & (\s_writedata[16]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[16]~input_o\,
	datac => \cache_controller|transaction\(2),
	datad => \Mux22~1_combout\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X62_Y35_N30
\Mux49~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[17]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \s_writedata[17]~input_o\,
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X61_Y38_N8
\Mux50~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\cache_controller|transaction\(2) & (\s_writedata[18]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datac => \s_writedata[18]~input_o\,
	datad => \Mux20~1_combout\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X61_Y38_N30
\Mux51~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[19]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \s_writedata[19]~input_o\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X61_Y38_N4
\Mux52~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[20]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~1_combout\,
	datab => \s_writedata[20]~input_o\,
	datac => \cache_controller|transaction\(2),
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X59_Y37_N10
\Mux53~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[21]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux17~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datab => \Mux17~1_combout\,
	datac => \s_writedata[21]~input_o\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X59_Y36_N30
\Mux54~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[22]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~1_combout\,
	datab => \cache_controller|transaction\(2),
	datac => \s_writedata[22]~input_o\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X61_Y36_N18
\Mux55~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[23]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \s_writedata[23]~input_o\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X59_Y36_N28
\Mux56~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[24]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \cache_controller|transaction\(2),
	datad => \s_writedata[24]~input_o\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X61_Y36_N4
\Mux57~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[25]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \cache_controller|transaction\(2),
	datad => \s_writedata[25]~input_o\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X59_Y35_N14
\Mux58~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[26]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \s_writedata[26]~input_o\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X59_Y35_N4
\Mux59~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\cache_controller|transaction\(2) & (\s_writedata[27]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_writedata[27]~input_o\,
	datac => \cache_controller|transaction\(2),
	datad => \Mux11~1_combout\,
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X59_Y38_N8
\Mux60~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[28]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux10~1_combout\,
	datac => \cache_controller|transaction\(2),
	datad => \s_writedata[28]~input_o\,
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X62_Y35_N28
\Mux61~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\cache_controller|transaction\(2) & (\s_writedata[29]~input_o\)) # (!\cache_controller|transaction\(2) & ((\Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|transaction\(2),
	datac => \s_writedata[29]~input_o\,
	datad => \Mux9~1_combout\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X61_Y37_N22
\Mux62~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[30]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(2),
	datac => \Mux8~1_combout\,
	datad => \s_writedata[30]~input_o\,
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X61_Y37_N12
\Mux63~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\cache_controller|transaction\(2) & ((\s_writedata[31]~input_o\))) # (!\cache_controller|transaction\(2) & (\Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|transaction\(2),
	datac => \Mux7~1_combout\,
	datad => \s_writedata[31]~input_o\,
	combout => \Mux63~0_combout\);

-- Location: LCCOMB_X50_Y37_N22
\cache_controller|Selector19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector19~2_combout\ = (\cache_controller|WideOr18~0_combout\ & (\cache_controller|Add0~6_combout\ & ((\cache_controller|state.IDLE~q\) # (\cache_controller|state.DONE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.IDLE~q\,
	datab => \cache_controller|state.DONE~q\,
	datac => \cache_controller|WideOr18~0_combout\,
	datad => \cache_controller|Add0~6_combout\,
	combout => \cache_controller|Selector19~2_combout\);

-- Location: LCCOMB_X50_Y37_N4
\cache_controller|Selector19~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector19~6_combout\ = (\cache_controller|s_waitrequest~q\ & ((\cache_controller|Equal1~0_combout\) # ((!\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\ & !\cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|s_waitrequest~q\,
	datab => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datac => \cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datad => \cache_controller|Equal1~0_combout\,
	combout => \cache_controller|Selector19~6_combout\);

-- Location: LCCOMB_X50_Y37_N18
\cache_controller|Selector19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector19~3_combout\ = (\cache_controller|Add0~6_combout\) # ((\s_addr[31]~input_o\ & (\m_waitrequest~input_o\)) # (!\s_addr[31]~input_o\ & ((\cache_controller|s_waitrequest~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~6_combout\,
	datab => \s_addr[31]~input_o\,
	datac => \m_waitrequest~input_o\,
	datad => \cache_controller|s_waitrequest~0_combout\,
	combout => \cache_controller|Selector19~3_combout\);

-- Location: LCCOMB_X50_Y37_N28
\cache_controller|Selector19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector19~4_combout\ = (\cache_controller|Selector19~2_combout\) # ((\cache_controller|Selector19~6_combout\ & \cache_controller|Selector19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Selector19~2_combout\,
	datac => \cache_controller|Selector19~6_combout\,
	datad => \cache_controller|Selector19~3_combout\,
	combout => \cache_controller|Selector19~4_combout\);

-- Location: FF_X50_Y37_N29
\cache_controller|s_waitrequest\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector19~4_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|s_waitrequest~q\);

-- Location: LCCOMB_X49_Y37_N28
\cache_controller|m_addr[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[0]~feeder_combout\ = \cache_controller|Selector52~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cache_controller|Selector52~0_combout\,
	combout => \cache_controller|m_addr[0]~feeder_combout\);

-- Location: LCCOMB_X49_Y36_N12
\cache_controller|m_addr[0]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[0]~29_combout\ = (!\reset~input_o\ & ((\cache_controller|Add0~6_combout\ & (!\cache_controller|Selector16~0_combout\)) # (!\cache_controller|Add0~6_combout\ & ((\s_addr[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Selector16~0_combout\,
	datab => \cache_controller|Add0~6_combout\,
	datac => \reset~input_o\,
	datad => \s_addr[31]~input_o\,
	combout => \cache_controller|m_addr[0]~29_combout\);

-- Location: FF_X49_Y37_N29
\cache_controller|m_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[0]~feeder_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(0));

-- Location: LCCOMB_X49_Y37_N18
\cache_controller|m_addr[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[1]~feeder_combout\ = \cache_controller|Selector51~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cache_controller|Selector51~0_combout\,
	combout => \cache_controller|m_addr[1]~feeder_combout\);

-- Location: FF_X49_Y37_N19
\cache_controller|m_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[1]~feeder_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(1));

-- Location: LCCOMB_X47_Y37_N30
\cache_controller|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~28_combout\ = (\s_addr[2]~input_o\ & (!\cache_controller|state.WRITE_START~q\ & (!\cache_controller|state.READ_START~q\ & !\cache_controller|Selector16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[2]~input_o\,
	datab => \cache_controller|state.WRITE_START~q\,
	datac => \cache_controller|state.READ_START~q\,
	datad => \cache_controller|Selector16~0_combout\,
	combout => \cache_controller|Add0~28_combout\);

-- Location: LCCOMB_X49_Y37_N6
\cache_controller|Add0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~29_combout\ = (!\cache_controller|state.READ_START~q\ & (!\cache_controller|Selector16~0_combout\ & (\cache_controller|out_count\(2) & !\cache_controller|state.WRITE_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_START~q\,
	datab => \cache_controller|Selector16~0_combout\,
	datac => \cache_controller|out_count\(2),
	datad => \cache_controller|state.WRITE_START~q\,
	combout => \cache_controller|Add0~29_combout\);

-- Location: LCCOMB_X48_Y36_N4
\cache_controller|m_addr[2]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[2]~30_combout\ = (\cache_controller|Add0~28_combout\ & (\cache_controller|Add0~29_combout\ $ (VCC))) # (!\cache_controller|Add0~28_combout\ & (\cache_controller|Add0~29_combout\ & VCC))
-- \cache_controller|m_addr[2]~31\ = CARRY((\cache_controller|Add0~28_combout\ & \cache_controller|Add0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~28_combout\,
	datab => \cache_controller|Add0~29_combout\,
	datad => VCC,
	combout => \cache_controller|m_addr[2]~30_combout\,
	cout => \cache_controller|m_addr[2]~31\);

-- Location: FF_X48_Y36_N5
\cache_controller|m_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[2]~30_combout\,
	asdata => \s_addr[2]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(2));

-- Location: LCCOMB_X49_Y37_N20
\cache_controller|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~30_combout\ = (!\cache_controller|state.WRITE_START~q\ & (!\cache_controller|Selector16~0_combout\ & !\cache_controller|state.READ_START~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|state.WRITE_START~q\,
	datac => \cache_controller|Selector16~0_combout\,
	datad => \cache_controller|state.READ_START~q\,
	combout => \cache_controller|Add0~30_combout\);

-- Location: LCCOMB_X48_Y36_N6
\cache_controller|m_addr[3]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[3]~32_combout\ = (\cache_controller|m_addr[2]~31\ & (((!\cache_controller|Add0~30_combout\)) # (!\s_addr[3]~input_o\))) # (!\cache_controller|m_addr[2]~31\ & (((\s_addr[3]~input_o\ & \cache_controller|Add0~30_combout\)) # (GND)))
-- \cache_controller|m_addr[3]~33\ = CARRY(((!\cache_controller|m_addr[2]~31\) # (!\cache_controller|Add0~30_combout\)) # (!\s_addr[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[3]~input_o\,
	datab => \cache_controller|Add0~30_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[2]~31\,
	combout => \cache_controller|m_addr[3]~32_combout\,
	cout => \cache_controller|m_addr[3]~33\);

-- Location: FF_X48_Y36_N7
\cache_controller|m_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[3]~32_combout\,
	asdata => \s_addr[3]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(3));

-- Location: LCCOMB_X48_Y36_N8
\cache_controller|m_addr[4]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[4]~34_combout\ = (\cache_controller|m_addr[3]~33\ & (\s_addr[4]~input_o\ & (\cache_controller|Add0~30_combout\ & VCC))) # (!\cache_controller|m_addr[3]~33\ & ((((\s_addr[4]~input_o\ & \cache_controller|Add0~30_combout\)))))
-- \cache_controller|m_addr[4]~35\ = CARRY((\s_addr[4]~input_o\ & (\cache_controller|Add0~30_combout\ & !\cache_controller|m_addr[3]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[4]~input_o\,
	datab => \cache_controller|Add0~30_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[3]~33\,
	combout => \cache_controller|m_addr[4]~34_combout\,
	cout => \cache_controller|m_addr[4]~35\);

-- Location: FF_X48_Y36_N9
\cache_controller|m_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[4]~34_combout\,
	asdata => \s_addr[4]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(4));

-- Location: LCCOMB_X48_Y36_N10
\cache_controller|m_addr[5]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[5]~36_combout\ = (\cache_controller|m_addr[4]~35\ & (((!\cache_controller|Add0~30_combout\)) # (!\s_addr[5]~input_o\))) # (!\cache_controller|m_addr[4]~35\ & (((\s_addr[5]~input_o\ & \cache_controller|Add0~30_combout\)) # (GND)))
-- \cache_controller|m_addr[5]~37\ = CARRY(((!\cache_controller|m_addr[4]~35\) # (!\cache_controller|Add0~30_combout\)) # (!\s_addr[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[5]~input_o\,
	datab => \cache_controller|Add0~30_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[4]~35\,
	combout => \cache_controller|m_addr[5]~36_combout\,
	cout => \cache_controller|m_addr[5]~37\);

-- Location: FF_X48_Y36_N11
\cache_controller|m_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[5]~36_combout\,
	asdata => \s_addr[5]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(5));

-- Location: LCCOMB_X48_Y36_N12
\cache_controller|m_addr[6]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[6]~38_combout\ = (\cache_controller|m_addr[5]~37\ & (\s_addr[6]~input_o\ & (\cache_controller|Add0~30_combout\ & VCC))) # (!\cache_controller|m_addr[5]~37\ & ((((\s_addr[6]~input_o\ & \cache_controller|Add0~30_combout\)))))
-- \cache_controller|m_addr[6]~39\ = CARRY((\s_addr[6]~input_o\ & (\cache_controller|Add0~30_combout\ & !\cache_controller|m_addr[5]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[6]~input_o\,
	datab => \cache_controller|Add0~30_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[5]~37\,
	combout => \cache_controller|m_addr[6]~38_combout\,
	cout => \cache_controller|m_addr[6]~39\);

-- Location: FF_X48_Y36_N13
\cache_controller|m_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[6]~38_combout\,
	asdata => \s_addr[6]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(6));

-- Location: LCCOMB_X48_Y36_N14
\cache_controller|m_addr[7]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[7]~40_combout\ = (\cache_controller|m_addr[6]~39\ & (((!\cache_controller|Add0~30_combout\)) # (!\s_addr[7]~input_o\))) # (!\cache_controller|m_addr[6]~39\ & (((\s_addr[7]~input_o\ & \cache_controller|Add0~30_combout\)) # (GND)))
-- \cache_controller|m_addr[7]~41\ = CARRY(((!\cache_controller|m_addr[6]~39\) # (!\cache_controller|Add0~30_combout\)) # (!\s_addr[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[7]~input_o\,
	datab => \cache_controller|Add0~30_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[6]~39\,
	combout => \cache_controller|m_addr[7]~40_combout\,
	cout => \cache_controller|m_addr[7]~41\);

-- Location: FF_X48_Y36_N15
\cache_controller|m_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[7]~40_combout\,
	asdata => \s_addr[7]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(7));

-- Location: LCCOMB_X48_Y36_N16
\cache_controller|m_addr[8]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[8]~42_combout\ = (\cache_controller|m_addr[7]~41\ & (\s_addr[8]~input_o\ & (\cache_controller|Add0~30_combout\ & VCC))) # (!\cache_controller|m_addr[7]~41\ & ((((\s_addr[8]~input_o\ & \cache_controller|Add0~30_combout\)))))
-- \cache_controller|m_addr[8]~43\ = CARRY((\s_addr[8]~input_o\ & (\cache_controller|Add0~30_combout\ & !\cache_controller|m_addr[7]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[8]~input_o\,
	datab => \cache_controller|Add0~30_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[7]~41\,
	combout => \cache_controller|m_addr[8]~42_combout\,
	cout => \cache_controller|m_addr[8]~43\);

-- Location: FF_X48_Y36_N17
\cache_controller|m_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[8]~42_combout\,
	asdata => \s_addr[8]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(8));

-- Location: LCCOMB_X48_Y36_N18
\cache_controller|m_addr[9]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[9]~44_combout\ = (\cache_controller|m_addr[8]~43\ & (((!\cache_controller|Add0~30_combout\)) # (!\s_addr[9]~input_o\))) # (!\cache_controller|m_addr[8]~43\ & (((\s_addr[9]~input_o\ & \cache_controller|Add0~30_combout\)) # (GND)))
-- \cache_controller|m_addr[9]~45\ = CARRY(((!\cache_controller|m_addr[8]~43\) # (!\cache_controller|Add0~30_combout\)) # (!\s_addr[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[9]~input_o\,
	datab => \cache_controller|Add0~30_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[8]~43\,
	combout => \cache_controller|m_addr[9]~44_combout\,
	cout => \cache_controller|m_addr[9]~45\);

-- Location: FF_X48_Y36_N19
\cache_controller|m_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[9]~44_combout\,
	asdata => \s_addr[9]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(9));

-- Location: LCCOMB_X48_Y36_N0
\cache_controller|Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~7_combout\ = (\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & 
-- ((\cache_controller|state.READ_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (\s_addr[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[10]~input_o\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \cache_controller|Add0~7_combout\);

-- Location: LCCOMB_X48_Y36_N20
\cache_controller|m_addr[10]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[10]~46_combout\ = (\cache_controller|m_addr[9]~45\ & (\cache_controller|Add0~30_combout\ & (\cache_controller|Add0~7_combout\ & VCC))) # (!\cache_controller|m_addr[9]~45\ & ((((\cache_controller|Add0~30_combout\ & 
-- \cache_controller|Add0~7_combout\)))))
-- \cache_controller|m_addr[10]~47\ = CARRY((\cache_controller|Add0~30_combout\ & (\cache_controller|Add0~7_combout\ & !\cache_controller|m_addr[9]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~30_combout\,
	datab => \cache_controller|Add0~7_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[9]~45\,
	combout => \cache_controller|m_addr[10]~46_combout\,
	cout => \cache_controller|m_addr[10]~47\);

-- Location: FF_X48_Y36_N21
\cache_controller|m_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[10]~46_combout\,
	asdata => \s_addr[10]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(10));

-- Location: LCCOMB_X48_Y36_N2
\cache_controller|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~8_combout\ = (\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\)))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & ((\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \s_addr[11]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a1\,
	combout => \cache_controller|Add0~8_combout\);

-- Location: LCCOMB_X48_Y36_N22
\cache_controller|m_addr[11]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[11]~48_combout\ = (\cache_controller|m_addr[10]~47\ & (((!\cache_controller|Add0~8_combout\)) # (!\cache_controller|Add0~30_combout\))) # (!\cache_controller|m_addr[10]~47\ & (((\cache_controller|Add0~30_combout\ & 
-- \cache_controller|Add0~8_combout\)) # (GND)))
-- \cache_controller|m_addr[11]~49\ = CARRY(((!\cache_controller|m_addr[10]~47\) # (!\cache_controller|Add0~8_combout\)) # (!\cache_controller|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~30_combout\,
	datab => \cache_controller|Add0~8_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[10]~47\,
	combout => \cache_controller|m_addr[11]~48_combout\,
	cout => \cache_controller|m_addr[11]~49\);

-- Location: FF_X48_Y36_N23
\cache_controller|m_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[11]~48_combout\,
	asdata => \s_addr[11]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(11));

-- Location: LCCOMB_X45_Y36_N24
\cache_controller|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~9_combout\ = (\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\)))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & ((\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & 
-- (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\)) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\s_addr[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a2\,
	datad => \s_addr[12]~input_o\,
	combout => \cache_controller|Add0~9_combout\);

-- Location: LCCOMB_X48_Y36_N24
\cache_controller|m_addr[12]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[12]~50_combout\ = (\cache_controller|m_addr[11]~49\ & (\cache_controller|Add0~30_combout\ & (\cache_controller|Add0~9_combout\ & VCC))) # (!\cache_controller|m_addr[11]~49\ & ((((\cache_controller|Add0~30_combout\ & 
-- \cache_controller|Add0~9_combout\)))))
-- \cache_controller|m_addr[12]~51\ = CARRY((\cache_controller|Add0~30_combout\ & (\cache_controller|Add0~9_combout\ & !\cache_controller|m_addr[11]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~30_combout\,
	datab => \cache_controller|Add0~9_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[11]~49\,
	combout => \cache_controller|m_addr[12]~50_combout\,
	cout => \cache_controller|m_addr[12]~51\);

-- Location: FF_X48_Y36_N25
\cache_controller|m_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[12]~50_combout\,
	asdata => \s_addr[12]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(12));

-- Location: LCCOMB_X45_Y36_N6
\cache_controller|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~10_combout\ = (\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\)))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\cache_controller|state.READ_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (\s_addr[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[13]~input_o\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a3\,
	combout => \cache_controller|Add0~10_combout\);

-- Location: LCCOMB_X48_Y36_N26
\cache_controller|m_addr[13]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[13]~52_combout\ = (\cache_controller|m_addr[12]~51\ & (((!\cache_controller|Add0~10_combout\)) # (!\cache_controller|Add0~30_combout\))) # (!\cache_controller|m_addr[12]~51\ & (((\cache_controller|Add0~30_combout\ & 
-- \cache_controller|Add0~10_combout\)) # (GND)))
-- \cache_controller|m_addr[13]~53\ = CARRY(((!\cache_controller|m_addr[12]~51\) # (!\cache_controller|Add0~10_combout\)) # (!\cache_controller|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~30_combout\,
	datab => \cache_controller|Add0~10_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[12]~51\,
	combout => \cache_controller|m_addr[13]~52_combout\,
	cout => \cache_controller|m_addr[13]~53\);

-- Location: FF_X48_Y36_N27
\cache_controller|m_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[13]~52_combout\,
	asdata => \s_addr[13]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(13));

-- Location: LCCOMB_X47_Y36_N18
\cache_controller|Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~11_combout\ = (\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\)))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & 
-- ((\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \s_addr[14]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a4~portadataout\,
	combout => \cache_controller|Add0~11_combout\);

-- Location: LCCOMB_X48_Y36_N28
\cache_controller|m_addr[14]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[14]~54_combout\ = (\cache_controller|m_addr[13]~53\ & (\cache_controller|Add0~30_combout\ & (\cache_controller|Add0~11_combout\ & VCC))) # (!\cache_controller|m_addr[13]~53\ & ((((\cache_controller|Add0~30_combout\ & 
-- \cache_controller|Add0~11_combout\)))))
-- \cache_controller|m_addr[14]~55\ = CARRY((\cache_controller|Add0~30_combout\ & (\cache_controller|Add0~11_combout\ & !\cache_controller|m_addr[13]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~30_combout\,
	datab => \cache_controller|Add0~11_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[13]~53\,
	combout => \cache_controller|m_addr[14]~54_combout\,
	cout => \cache_controller|m_addr[14]~55\);

-- Location: FF_X48_Y36_N29
\cache_controller|m_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[14]~54_combout\,
	asdata => \s_addr[14]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(14));

-- Location: LCCOMB_X47_Y36_N24
\cache_controller|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~12_combout\ = (\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\)))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\cache_controller|state.READ_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (\s_addr[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[15]~input_o\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a5\,
	combout => \cache_controller|Add0~12_combout\);

-- Location: LCCOMB_X48_Y36_N30
\cache_controller|m_addr[15]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[15]~56_combout\ = (\cache_controller|m_addr[14]~55\ & (((!\cache_controller|Add0~12_combout\)) # (!\cache_controller|Add0~30_combout\))) # (!\cache_controller|m_addr[14]~55\ & (((\cache_controller|Add0~30_combout\ & 
-- \cache_controller|Add0~12_combout\)) # (GND)))
-- \cache_controller|m_addr[15]~57\ = CARRY(((!\cache_controller|m_addr[14]~55\) # (!\cache_controller|Add0~12_combout\)) # (!\cache_controller|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~30_combout\,
	datab => \cache_controller|Add0~12_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[14]~55\,
	combout => \cache_controller|m_addr[15]~56_combout\,
	cout => \cache_controller|m_addr[15]~57\);

-- Location: FF_X48_Y36_N31
\cache_controller|m_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[15]~56_combout\,
	asdata => \s_addr[15]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(15));

-- Location: LCCOMB_X47_Y36_N30
\cache_controller|Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~13_combout\ = (\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\)))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\cache_controller|state.READ_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (\s_addr[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[16]~input_o\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a6\,
	datad => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	combout => \cache_controller|Add0~13_combout\);

-- Location: LCCOMB_X48_Y35_N0
\cache_controller|m_addr[16]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[16]~58_combout\ = (\cache_controller|m_addr[15]~57\ & (\cache_controller|Add0~13_combout\ & (\cache_controller|Add0~30_combout\ & VCC))) # (!\cache_controller|m_addr[15]~57\ & ((((\cache_controller|Add0~13_combout\ & 
-- \cache_controller|Add0~30_combout\)))))
-- \cache_controller|m_addr[16]~59\ = CARRY((\cache_controller|Add0~13_combout\ & (\cache_controller|Add0~30_combout\ & !\cache_controller|m_addr[15]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~13_combout\,
	datab => \cache_controller|Add0~30_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[15]~57\,
	combout => \cache_controller|m_addr[16]~58_combout\,
	cout => \cache_controller|m_addr[16]~59\);

-- Location: FF_X48_Y35_N1
\cache_controller|m_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[16]~58_combout\,
	asdata => \s_addr[16]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(16));

-- Location: LCCOMB_X47_Y36_N12
\cache_controller|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~14_combout\ = (\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\)))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\cache_controller|state.READ_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (\s_addr[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[17]~input_o\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a7\,
	combout => \cache_controller|Add0~14_combout\);

-- Location: LCCOMB_X48_Y35_N2
\cache_controller|m_addr[17]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[17]~60_combout\ = (\cache_controller|m_addr[16]~59\ & (((!\cache_controller|Add0~30_combout\)) # (!\cache_controller|Add0~14_combout\))) # (!\cache_controller|m_addr[16]~59\ & (((\cache_controller|Add0~14_combout\ & 
-- \cache_controller|Add0~30_combout\)) # (GND)))
-- \cache_controller|m_addr[17]~61\ = CARRY(((!\cache_controller|m_addr[16]~59\) # (!\cache_controller|Add0~30_combout\)) # (!\cache_controller|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~14_combout\,
	datab => \cache_controller|Add0~30_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[16]~59\,
	combout => \cache_controller|m_addr[17]~60_combout\,
	cout => \cache_controller|m_addr[17]~61\);

-- Location: FF_X48_Y35_N3
\cache_controller|m_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[17]~60_combout\,
	asdata => \s_addr[17]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(17));

-- Location: LCCOMB_X47_Y36_N10
\cache_controller|Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~15_combout\ = (\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\)) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & ((\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & 
-- (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\)) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\s_addr[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a8\,
	datab => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datac => \s_addr[18]~input_o\,
	datad => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	combout => \cache_controller|Add0~15_combout\);

-- Location: LCCOMB_X48_Y35_N4
\cache_controller|m_addr[18]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[18]~62_combout\ = (\cache_controller|m_addr[17]~61\ & (\cache_controller|Add0~30_combout\ & (\cache_controller|Add0~15_combout\ & VCC))) # (!\cache_controller|m_addr[17]~61\ & ((((\cache_controller|Add0~30_combout\ & 
-- \cache_controller|Add0~15_combout\)))))
-- \cache_controller|m_addr[18]~63\ = CARRY((\cache_controller|Add0~30_combout\ & (\cache_controller|Add0~15_combout\ & !\cache_controller|m_addr[17]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~30_combout\,
	datab => \cache_controller|Add0~15_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[17]~61\,
	combout => \cache_controller|m_addr[18]~62_combout\,
	cout => \cache_controller|m_addr[18]~63\);

-- Location: FF_X48_Y35_N5
\cache_controller|m_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[18]~62_combout\,
	asdata => \s_addr[18]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(18));

-- Location: LCCOMB_X47_Y36_N4
\cache_controller|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~16_combout\ = (\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\)))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\cache_controller|state.READ_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (\s_addr[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[19]~input_o\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a9\,
	datad => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	combout => \cache_controller|Add0~16_combout\);

-- Location: LCCOMB_X48_Y35_N6
\cache_controller|m_addr[19]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[19]~64_combout\ = (\cache_controller|m_addr[18]~63\ & (((!\cache_controller|Add0~16_combout\)) # (!\cache_controller|Add0~30_combout\))) # (!\cache_controller|m_addr[18]~63\ & (((\cache_controller|Add0~30_combout\ & 
-- \cache_controller|Add0~16_combout\)) # (GND)))
-- \cache_controller|m_addr[19]~65\ = CARRY(((!\cache_controller|m_addr[18]~63\) # (!\cache_controller|Add0~16_combout\)) # (!\cache_controller|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~30_combout\,
	datab => \cache_controller|Add0~16_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[18]~63\,
	combout => \cache_controller|m_addr[19]~64_combout\,
	cout => \cache_controller|m_addr[19]~65\);

-- Location: FF_X48_Y35_N7
\cache_controller|m_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[19]~64_combout\,
	asdata => \s_addr[19]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(19));

-- Location: LCCOMB_X47_Y35_N12
\cache_controller|Add0~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~17_combout\ = (\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\)))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\cache_controller|state.READ_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (\s_addr[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[20]~input_o\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a10\,
	combout => \cache_controller|Add0~17_combout\);

-- Location: LCCOMB_X48_Y35_N8
\cache_controller|m_addr[20]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[20]~66_combout\ = (\cache_controller|m_addr[19]~65\ & (\cache_controller|Add0~17_combout\ & (\cache_controller|Add0~30_combout\ & VCC))) # (!\cache_controller|m_addr[19]~65\ & ((((\cache_controller|Add0~17_combout\ & 
-- \cache_controller|Add0~30_combout\)))))
-- \cache_controller|m_addr[20]~67\ = CARRY((\cache_controller|Add0~17_combout\ & (\cache_controller|Add0~30_combout\ & !\cache_controller|m_addr[19]~65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~17_combout\,
	datab => \cache_controller|Add0~30_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[19]~65\,
	combout => \cache_controller|m_addr[20]~66_combout\,
	cout => \cache_controller|m_addr[20]~67\);

-- Location: FF_X48_Y35_N9
\cache_controller|m_addr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[20]~66_combout\,
	asdata => \s_addr[20]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(20));

-- Location: LCCOMB_X47_Y35_N14
\cache_controller|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~18_combout\ = (\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\)))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & ((\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \s_addr[21]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a11\,
	combout => \cache_controller|Add0~18_combout\);

-- Location: LCCOMB_X48_Y35_N10
\cache_controller|m_addr[21]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[21]~68_combout\ = (\cache_controller|m_addr[20]~67\ & (((!\cache_controller|Add0~30_combout\)) # (!\cache_controller|Add0~18_combout\))) # (!\cache_controller|m_addr[20]~67\ & (((\cache_controller|Add0~18_combout\ & 
-- \cache_controller|Add0~30_combout\)) # (GND)))
-- \cache_controller|m_addr[21]~69\ = CARRY(((!\cache_controller|m_addr[20]~67\) # (!\cache_controller|Add0~30_combout\)) # (!\cache_controller|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~18_combout\,
	datab => \cache_controller|Add0~30_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[20]~67\,
	combout => \cache_controller|m_addr[21]~68_combout\,
	cout => \cache_controller|m_addr[21]~69\);

-- Location: FF_X48_Y35_N11
\cache_controller|m_addr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[21]~68_combout\,
	asdata => \s_addr[21]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(21));

-- Location: LCCOMB_X47_Y36_N14
\cache_controller|Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~19_combout\ = (\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\cache_controller|state.READ_FLUSH_TO_MEM~q\ & 
-- (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\)) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & ((\s_addr[22]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a12\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \s_addr[22]~input_o\,
	datad => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	combout => \cache_controller|Add0~19_combout\);

-- Location: LCCOMB_X48_Y35_N12
\cache_controller|m_addr[22]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[22]~70_combout\ = (\cache_controller|m_addr[21]~69\ & (\cache_controller|Add0~30_combout\ & (\cache_controller|Add0~19_combout\ & VCC))) # (!\cache_controller|m_addr[21]~69\ & ((((\cache_controller|Add0~30_combout\ & 
-- \cache_controller|Add0~19_combout\)))))
-- \cache_controller|m_addr[22]~71\ = CARRY((\cache_controller|Add0~30_combout\ & (\cache_controller|Add0~19_combout\ & !\cache_controller|m_addr[21]~69\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~30_combout\,
	datab => \cache_controller|Add0~19_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[21]~69\,
	combout => \cache_controller|m_addr[22]~70_combout\,
	cout => \cache_controller|m_addr[22]~71\);

-- Location: FF_X48_Y35_N13
\cache_controller|m_addr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[22]~70_combout\,
	asdata => \s_addr[22]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(22));

-- Location: LCCOMB_X47_Y36_N28
\cache_controller|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~20_combout\ = (\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\)))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & ((\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \s_addr[23]~input_o\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a13\,
	combout => \cache_controller|Add0~20_combout\);

-- Location: LCCOMB_X48_Y35_N14
\cache_controller|m_addr[23]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[23]~72_combout\ = (\cache_controller|m_addr[22]~71\ & (((!\cache_controller|Add0~30_combout\)) # (!\cache_controller|Add0~20_combout\))) # (!\cache_controller|m_addr[22]~71\ & (((\cache_controller|Add0~20_combout\ & 
-- \cache_controller|Add0~30_combout\)) # (GND)))
-- \cache_controller|m_addr[23]~73\ = CARRY(((!\cache_controller|m_addr[22]~71\) # (!\cache_controller|Add0~30_combout\)) # (!\cache_controller|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~20_combout\,
	datab => \cache_controller|Add0~30_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[22]~71\,
	combout => \cache_controller|m_addr[23]~72_combout\,
	cout => \cache_controller|m_addr[23]~73\);

-- Location: FF_X48_Y35_N15
\cache_controller|m_addr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[23]~72_combout\,
	asdata => \s_addr[23]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(23));

-- Location: LCCOMB_X47_Y35_N24
\cache_controller|Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~21_combout\ = (\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\)))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & ((\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & 
-- (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\)) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\s_addr[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a14\,
	datad => \s_addr[24]~input_o\,
	combout => \cache_controller|Add0~21_combout\);

-- Location: LCCOMB_X48_Y35_N16
\cache_controller|m_addr[24]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[24]~74_combout\ = (\cache_controller|m_addr[23]~73\ & (\cache_controller|Add0~30_combout\ & (\cache_controller|Add0~21_combout\ & VCC))) # (!\cache_controller|m_addr[23]~73\ & ((((\cache_controller|Add0~30_combout\ & 
-- \cache_controller|Add0~21_combout\)))))
-- \cache_controller|m_addr[24]~75\ = CARRY((\cache_controller|Add0~30_combout\ & (\cache_controller|Add0~21_combout\ & !\cache_controller|m_addr[23]~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~30_combout\,
	datab => \cache_controller|Add0~21_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[23]~73\,
	combout => \cache_controller|m_addr[24]~74_combout\,
	cout => \cache_controller|m_addr[24]~75\);

-- Location: FF_X48_Y35_N17
\cache_controller|m_addr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[24]~74_combout\,
	asdata => \s_addr[24]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(24));

-- Location: LCCOMB_X47_Y35_N22
\cache_controller|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~22_combout\ = (\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\)))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & ((\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datab => \s_addr[25]~input_o\,
	datac => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a15\,
	combout => \cache_controller|Add0~22_combout\);

-- Location: LCCOMB_X48_Y35_N18
\cache_controller|m_addr[25]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[25]~76_combout\ = (\cache_controller|m_addr[24]~75\ & (((!\cache_controller|Add0~22_combout\)) # (!\cache_controller|Add0~30_combout\))) # (!\cache_controller|m_addr[24]~75\ & (((\cache_controller|Add0~30_combout\ & 
-- \cache_controller|Add0~22_combout\)) # (GND)))
-- \cache_controller|m_addr[25]~77\ = CARRY(((!\cache_controller|m_addr[24]~75\) # (!\cache_controller|Add0~22_combout\)) # (!\cache_controller|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~30_combout\,
	datab => \cache_controller|Add0~22_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[24]~75\,
	combout => \cache_controller|m_addr[25]~76_combout\,
	cout => \cache_controller|m_addr[25]~77\);

-- Location: FF_X48_Y35_N19
\cache_controller|m_addr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[25]~76_combout\,
	asdata => \s_addr[25]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(25));

-- Location: LCCOMB_X47_Y35_N28
\cache_controller|Add0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~23_combout\ = (\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\)))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & ((\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (\s_addr[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datab => \s_addr[26]~input_o\,
	datac => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a16\,
	combout => \cache_controller|Add0~23_combout\);

-- Location: LCCOMB_X48_Y35_N20
\cache_controller|m_addr[26]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[26]~78_combout\ = (\cache_controller|m_addr[25]~77\ & (\cache_controller|Add0~30_combout\ & (\cache_controller|Add0~23_combout\ & VCC))) # (!\cache_controller|m_addr[25]~77\ & ((((\cache_controller|Add0~30_combout\ & 
-- \cache_controller|Add0~23_combout\)))))
-- \cache_controller|m_addr[26]~79\ = CARRY((\cache_controller|Add0~30_combout\ & (\cache_controller|Add0~23_combout\ & !\cache_controller|m_addr[25]~77\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~30_combout\,
	datab => \cache_controller|Add0~23_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[25]~77\,
	combout => \cache_controller|m_addr[26]~78_combout\,
	cout => \cache_controller|m_addr[26]~79\);

-- Location: FF_X48_Y35_N21
\cache_controller|m_addr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[26]~78_combout\,
	asdata => \s_addr[26]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(26));

-- Location: LCCOMB_X45_Y36_N4
\cache_controller|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~24_combout\ = (\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\)))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\cache_controller|state.READ_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (\s_addr[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[27]~input_o\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a17\,
	combout => \cache_controller|Add0~24_combout\);

-- Location: LCCOMB_X48_Y35_N22
\cache_controller|m_addr[27]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[27]~80_combout\ = (\cache_controller|m_addr[26]~79\ & (((!\cache_controller|Add0~24_combout\)) # (!\cache_controller|Add0~30_combout\))) # (!\cache_controller|m_addr[26]~79\ & (((\cache_controller|Add0~30_combout\ & 
-- \cache_controller|Add0~24_combout\)) # (GND)))
-- \cache_controller|m_addr[27]~81\ = CARRY(((!\cache_controller|m_addr[26]~79\) # (!\cache_controller|Add0~24_combout\)) # (!\cache_controller|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~30_combout\,
	datab => \cache_controller|Add0~24_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[26]~79\,
	combout => \cache_controller|m_addr[27]~80_combout\,
	cout => \cache_controller|m_addr[27]~81\);

-- Location: FF_X48_Y35_N23
\cache_controller|m_addr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[27]~80_combout\,
	asdata => \s_addr[27]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(27));

-- Location: LCCOMB_X47_Y35_N2
\cache_controller|Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~25_combout\ = (\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\)))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & ((\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & 
-- (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\)) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\s_addr[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a18\,
	datad => \s_addr[28]~input_o\,
	combout => \cache_controller|Add0~25_combout\);

-- Location: LCCOMB_X48_Y35_N24
\cache_controller|m_addr[28]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[28]~82_combout\ = (\cache_controller|m_addr[27]~81\ & (\cache_controller|Add0~25_combout\ & (\cache_controller|Add0~30_combout\ & VCC))) # (!\cache_controller|m_addr[27]~81\ & ((((\cache_controller|Add0~25_combout\ & 
-- \cache_controller|Add0~30_combout\)))))
-- \cache_controller|m_addr[28]~83\ = CARRY((\cache_controller|Add0~25_combout\ & (\cache_controller|Add0~30_combout\ & !\cache_controller|m_addr[27]~81\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~25_combout\,
	datab => \cache_controller|Add0~30_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[27]~81\,
	combout => \cache_controller|m_addr[28]~82_combout\,
	cout => \cache_controller|m_addr[28]~83\);

-- Location: FF_X48_Y35_N25
\cache_controller|m_addr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[28]~82_combout\,
	asdata => \s_addr[28]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(28));

-- Location: LCCOMB_X47_Y35_N4
\cache_controller|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~26_combout\ = (\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\)))) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\cache_controller|state.READ_FLUSH_TO_MEM~q\ & 
-- ((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (\s_addr[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_addr[29]~input_o\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datad => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a19\,
	combout => \cache_controller|Add0~26_combout\);

-- Location: LCCOMB_X48_Y35_N26
\cache_controller|m_addr[29]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[29]~84_combout\ = (\cache_controller|m_addr[28]~83\ & (((!\cache_controller|Add0~30_combout\)) # (!\cache_controller|Add0~26_combout\))) # (!\cache_controller|m_addr[28]~83\ & (((\cache_controller|Add0~26_combout\ & 
-- \cache_controller|Add0~30_combout\)) # (GND)))
-- \cache_controller|m_addr[29]~85\ = CARRY(((!\cache_controller|m_addr[28]~83\) # (!\cache_controller|Add0~30_combout\)) # (!\cache_controller|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|Add0~26_combout\,
	datab => \cache_controller|Add0~30_combout\,
	datad => VCC,
	cin => \cache_controller|m_addr[28]~83\,
	combout => \cache_controller|m_addr[29]~84_combout\,
	cout => \cache_controller|m_addr[29]~85\);

-- Location: FF_X48_Y35_N27
\cache_controller|m_addr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[29]~84_combout\,
	asdata => \s_addr[29]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(29));

-- Location: LCCOMB_X47_Y35_N10
\cache_controller|Add0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Add0~27_combout\ = (\cache_controller|state.READ_FLUSH_TO_MEM~q\ & (((\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\)))) # (!\cache_controller|state.READ_FLUSH_TO_MEM~q\ & ((\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & 
-- (\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\)) # (!\cache_controller|state.WRITE_FLUSH_TO_MEM~q\ & ((\s_addr[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datab => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a20\,
	datad => \s_addr[30]~input_o\,
	combout => \cache_controller|Add0~27_combout\);

-- Location: LCCOMB_X48_Y35_N28
\cache_controller|m_addr[30]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|m_addr[30]~86_combout\ = \cache_controller|m_addr[29]~85\ $ (((!\cache_controller|Add0~27_combout\) # (!\cache_controller|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|Add0~30_combout\,
	datad => \cache_controller|Add0~27_combout\,
	cin => \cache_controller|m_addr[29]~85\,
	combout => \cache_controller|m_addr[30]~86_combout\);

-- Location: FF_X48_Y35_N29
\cache_controller|m_addr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|m_addr[30]~86_combout\,
	asdata => \s_addr[30]~input_o\,
	sload => \cache_controller|ALT_INV_Add0~6_combout\,
	ena => \cache_controller|m_addr[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_addr\(30));

-- Location: LCCOMB_X48_Y37_N30
\cache_controller|Selector21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector21~2_combout\ = (\cache_controller|m_read~q\ & (!\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\ & (!\cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\ & !\cache_controller|state.DONE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|m_read~q\,
	datab => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datac => \cache_controller|state.READ_GET_BLOCK_FROM_MEM_DEASSERT~q\,
	datad => \cache_controller|state.DONE~q\,
	combout => \cache_controller|Selector21~2_combout\);

-- Location: LCCOMB_X48_Y37_N10
\cache_controller|Selector21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector21~0_combout\ = (\cache_controller|tag_ready~q\ & (!\cache_controller|Equal0~14_combout\ & ((!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\) # (!\tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a22\,
	datab => \cache_controller|tag_ready~q\,
	datac => \tag_SRAM|mem_block_rtl_0|auto_generated|ram_block1a23\,
	datad => \cache_controller|Equal0~14_combout\,
	combout => \cache_controller|Selector21~0_combout\);

-- Location: LCCOMB_X48_Y37_N28
\cache_controller|Selector21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector21~1_combout\ = (\cache_controller|state.READ_START~q\ & ((\s_addr[31]~input_o\) # ((\cache_controller|m_read~q\) # (\cache_controller|Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_START~q\,
	datab => \s_addr[31]~input_o\,
	datac => \cache_controller|m_read~q\,
	datad => \cache_controller|Selector21~0_combout\,
	combout => \cache_controller|Selector21~1_combout\);

-- Location: LCCOMB_X48_Y37_N12
\cache_controller|Selector21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector21~3_combout\ = (\cache_controller|state.READ_GET_BLOCK_FROM_MEM~q\) # ((\cache_controller|state.WRITE_GET_BLOCK_FROM_MEM~q\) # ((\cache_controller|Selector21~2_combout\) # (\cache_controller|Selector21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_GET_BLOCK_FROM_MEM~q\,
	datab => \cache_controller|state.WRITE_GET_BLOCK_FROM_MEM~q\,
	datac => \cache_controller|Selector21~2_combout\,
	datad => \cache_controller|Selector21~1_combout\,
	combout => \cache_controller|Selector21~3_combout\);

-- Location: FF_X48_Y37_N13
\cache_controller|m_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector21~3_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_read~q\);

-- Location: LCCOMB_X49_Y37_N30
\cache_controller|Selector80~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector80~0_combout\ = (\cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\) # ((\cache_controller|state.DONE~q\) # (\cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cache_controller|state.READ_FLUSH_TO_MEM_DEASSERT~q\,
	datac => \cache_controller|state.DONE~q\,
	datad => \cache_controller|state.WRITE_FLUSH_TO_MEM_DEASSERT~q\,
	combout => \cache_controller|Selector80~0_combout\);

-- Location: LCCOMB_X49_Y36_N2
\cache_controller|Selector80~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector80~1_combout\ = (\cache_controller|state.WRITE_START~q\ & ((\cache_controller|m_write~q\) # ((\s_addr[31]~input_o\)))) # (!\cache_controller|state.WRITE_START~q\ & (\cache_controller|m_write~q\ & 
-- (!\cache_controller|Selector80~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.WRITE_START~q\,
	datab => \cache_controller|m_write~q\,
	datac => \cache_controller|Selector80~0_combout\,
	datad => \s_addr[31]~input_o\,
	combout => \cache_controller|Selector80~1_combout\);

-- Location: LCCOMB_X49_Y36_N20
\cache_controller|Selector80~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cache_controller|Selector80~2_combout\ = (\cache_controller|state.READ_FLUSH_TO_MEM~q\) # ((\cache_controller|state.WRITE_FLUSH_TO_MEM~q\) # (\cache_controller|Selector80~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cache_controller|state.READ_FLUSH_TO_MEM~q\,
	datac => \cache_controller|state.WRITE_FLUSH_TO_MEM~q\,
	datad => \cache_controller|Selector80~1_combout\,
	combout => \cache_controller|Selector80~2_combout\);

-- Location: FF_X49_Y36_N21
\cache_controller|m_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \cache_controller|Selector80~2_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cache_controller|m_write~q\);

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


