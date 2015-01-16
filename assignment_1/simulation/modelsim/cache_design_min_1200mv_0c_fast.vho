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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "01/16/2015 13:52:08"

-- 
-- Device: Altera EP4CGX110DF27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	cache_SRAM IS
    PORT (
	clock : IN std_logic;
	writedata : IN std_logic_vector(149 DOWNTO 0);
	address : IN STD.STANDARD.integer range 0 TO 256;
	writeenable : IN std_logic;
	readdata : OUT std_logic_vector(149 DOWNTO 0)
	);
END cache_SRAM;

-- Design Ports Information
-- readdata[0]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[2]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[4]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[5]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[6]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[7]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[9]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[10]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[11]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[12]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[13]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[14]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[15]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[16]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[17]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[18]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[19]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[20]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[21]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[22]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[23]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[24]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[25]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[26]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[27]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[28]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[29]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[30]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[31]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[32]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[33]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[34]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[35]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[36]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[37]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[38]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[39]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[40]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[41]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[42]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[43]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[44]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[45]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[46]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[47]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[48]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[49]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[50]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[51]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[52]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[53]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[54]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[55]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[56]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[57]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[58]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[59]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[60]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[61]	=>  Location: PIN_F23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[62]	=>  Location: PIN_K23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[63]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[64]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[65]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[66]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[67]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[68]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[69]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[70]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[71]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[72]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[73]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[74]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[75]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[76]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[77]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[78]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[79]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[80]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[81]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[82]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[83]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[84]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[85]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[86]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[87]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[88]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[89]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[90]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[91]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[92]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[93]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[94]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[95]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[96]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[97]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[98]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[99]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[100]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[101]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[102]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[103]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[104]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[105]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[106]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[107]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[108]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[109]	=>  Location: PIN_U19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[110]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[111]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[112]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[113]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[114]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[115]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[116]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[117]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[118]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[119]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[120]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[121]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[122]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[123]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[124]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[125]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[126]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[127]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[128]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[129]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[130]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[131]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[132]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[133]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[134]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[135]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[136]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[137]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[138]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[139]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[140]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[141]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[142]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[143]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[144]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[145]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[146]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[147]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[148]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[149]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writeenable	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_P23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[8]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_AD16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[8]	=>  Location: PIN_AD13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[9]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[10]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[11]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[12]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[13]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[14]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[15]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[16]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[17]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[18]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[19]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[20]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[21]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[22]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[23]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[24]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[25]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[26]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[27]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[28]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[29]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[30]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[31]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[32]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[33]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[34]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[35]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[36]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[37]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[38]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[39]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[40]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[41]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[42]	=>  Location: PIN_AC20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[43]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[44]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[45]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[46]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[47]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[48]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[49]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[50]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[51]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[52]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[53]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[54]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[55]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[56]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[57]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[58]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[59]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[60]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[61]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[62]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[63]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[64]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[65]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[66]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[67]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[68]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[69]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[70]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[71]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[72]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[73]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[74]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[75]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[76]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[77]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[78]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[79]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[80]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[81]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[82]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[83]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[84]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[85]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[86]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[87]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[88]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[89]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[90]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[91]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[92]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[93]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[94]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[95]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[96]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[97]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[98]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[99]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[100]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[101]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[102]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[103]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[104]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[105]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[106]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[107]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[108]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[109]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[110]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[111]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[112]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[113]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[114]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[115]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[116]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[117]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[118]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[119]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[120]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[121]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[122]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[123]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[124]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[125]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[126]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[127]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[128]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[129]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[130]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[131]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[132]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[133]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[134]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[135]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[136]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[137]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[138]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[139]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[140]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[141]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[142]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[143]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[144]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[145]	=>  Location: PIN_N23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[146]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[147]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[148]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[149]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cache_SRAM IS
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
SIGNAL ww_writedata : std_logic_vector(149 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_writeenable : std_logic;
SIGNAL ww_readdata : std_logic_vector(149 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a72_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a90_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a108_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a126_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a144_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a144_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a144_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
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
SIGNAL \readdata[32]~output_o\ : std_logic;
SIGNAL \readdata[33]~output_o\ : std_logic;
SIGNAL \readdata[34]~output_o\ : std_logic;
SIGNAL \readdata[35]~output_o\ : std_logic;
SIGNAL \readdata[36]~output_o\ : std_logic;
SIGNAL \readdata[37]~output_o\ : std_logic;
SIGNAL \readdata[38]~output_o\ : std_logic;
SIGNAL \readdata[39]~output_o\ : std_logic;
SIGNAL \readdata[40]~output_o\ : std_logic;
SIGNAL \readdata[41]~output_o\ : std_logic;
SIGNAL \readdata[42]~output_o\ : std_logic;
SIGNAL \readdata[43]~output_o\ : std_logic;
SIGNAL \readdata[44]~output_o\ : std_logic;
SIGNAL \readdata[45]~output_o\ : std_logic;
SIGNAL \readdata[46]~output_o\ : std_logic;
SIGNAL \readdata[47]~output_o\ : std_logic;
SIGNAL \readdata[48]~output_o\ : std_logic;
SIGNAL \readdata[49]~output_o\ : std_logic;
SIGNAL \readdata[50]~output_o\ : std_logic;
SIGNAL \readdata[51]~output_o\ : std_logic;
SIGNAL \readdata[52]~output_o\ : std_logic;
SIGNAL \readdata[53]~output_o\ : std_logic;
SIGNAL \readdata[54]~output_o\ : std_logic;
SIGNAL \readdata[55]~output_o\ : std_logic;
SIGNAL \readdata[56]~output_o\ : std_logic;
SIGNAL \readdata[57]~output_o\ : std_logic;
SIGNAL \readdata[58]~output_o\ : std_logic;
SIGNAL \readdata[59]~output_o\ : std_logic;
SIGNAL \readdata[60]~output_o\ : std_logic;
SIGNAL \readdata[61]~output_o\ : std_logic;
SIGNAL \readdata[62]~output_o\ : std_logic;
SIGNAL \readdata[63]~output_o\ : std_logic;
SIGNAL \readdata[64]~output_o\ : std_logic;
SIGNAL \readdata[65]~output_o\ : std_logic;
SIGNAL \readdata[66]~output_o\ : std_logic;
SIGNAL \readdata[67]~output_o\ : std_logic;
SIGNAL \readdata[68]~output_o\ : std_logic;
SIGNAL \readdata[69]~output_o\ : std_logic;
SIGNAL \readdata[70]~output_o\ : std_logic;
SIGNAL \readdata[71]~output_o\ : std_logic;
SIGNAL \readdata[72]~output_o\ : std_logic;
SIGNAL \readdata[73]~output_o\ : std_logic;
SIGNAL \readdata[74]~output_o\ : std_logic;
SIGNAL \readdata[75]~output_o\ : std_logic;
SIGNAL \readdata[76]~output_o\ : std_logic;
SIGNAL \readdata[77]~output_o\ : std_logic;
SIGNAL \readdata[78]~output_o\ : std_logic;
SIGNAL \readdata[79]~output_o\ : std_logic;
SIGNAL \readdata[80]~output_o\ : std_logic;
SIGNAL \readdata[81]~output_o\ : std_logic;
SIGNAL \readdata[82]~output_o\ : std_logic;
SIGNAL \readdata[83]~output_o\ : std_logic;
SIGNAL \readdata[84]~output_o\ : std_logic;
SIGNAL \readdata[85]~output_o\ : std_logic;
SIGNAL \readdata[86]~output_o\ : std_logic;
SIGNAL \readdata[87]~output_o\ : std_logic;
SIGNAL \readdata[88]~output_o\ : std_logic;
SIGNAL \readdata[89]~output_o\ : std_logic;
SIGNAL \readdata[90]~output_o\ : std_logic;
SIGNAL \readdata[91]~output_o\ : std_logic;
SIGNAL \readdata[92]~output_o\ : std_logic;
SIGNAL \readdata[93]~output_o\ : std_logic;
SIGNAL \readdata[94]~output_o\ : std_logic;
SIGNAL \readdata[95]~output_o\ : std_logic;
SIGNAL \readdata[96]~output_o\ : std_logic;
SIGNAL \readdata[97]~output_o\ : std_logic;
SIGNAL \readdata[98]~output_o\ : std_logic;
SIGNAL \readdata[99]~output_o\ : std_logic;
SIGNAL \readdata[100]~output_o\ : std_logic;
SIGNAL \readdata[101]~output_o\ : std_logic;
SIGNAL \readdata[102]~output_o\ : std_logic;
SIGNAL \readdata[103]~output_o\ : std_logic;
SIGNAL \readdata[104]~output_o\ : std_logic;
SIGNAL \readdata[105]~output_o\ : std_logic;
SIGNAL \readdata[106]~output_o\ : std_logic;
SIGNAL \readdata[107]~output_o\ : std_logic;
SIGNAL \readdata[108]~output_o\ : std_logic;
SIGNAL \readdata[109]~output_o\ : std_logic;
SIGNAL \readdata[110]~output_o\ : std_logic;
SIGNAL \readdata[111]~output_o\ : std_logic;
SIGNAL \readdata[112]~output_o\ : std_logic;
SIGNAL \readdata[113]~output_o\ : std_logic;
SIGNAL \readdata[114]~output_o\ : std_logic;
SIGNAL \readdata[115]~output_o\ : std_logic;
SIGNAL \readdata[116]~output_o\ : std_logic;
SIGNAL \readdata[117]~output_o\ : std_logic;
SIGNAL \readdata[118]~output_o\ : std_logic;
SIGNAL \readdata[119]~output_o\ : std_logic;
SIGNAL \readdata[120]~output_o\ : std_logic;
SIGNAL \readdata[121]~output_o\ : std_logic;
SIGNAL \readdata[122]~output_o\ : std_logic;
SIGNAL \readdata[123]~output_o\ : std_logic;
SIGNAL \readdata[124]~output_o\ : std_logic;
SIGNAL \readdata[125]~output_o\ : std_logic;
SIGNAL \readdata[126]~output_o\ : std_logic;
SIGNAL \readdata[127]~output_o\ : std_logic;
SIGNAL \readdata[128]~output_o\ : std_logic;
SIGNAL \readdata[129]~output_o\ : std_logic;
SIGNAL \readdata[130]~output_o\ : std_logic;
SIGNAL \readdata[131]~output_o\ : std_logic;
SIGNAL \readdata[132]~output_o\ : std_logic;
SIGNAL \readdata[133]~output_o\ : std_logic;
SIGNAL \readdata[134]~output_o\ : std_logic;
SIGNAL \readdata[135]~output_o\ : std_logic;
SIGNAL \readdata[136]~output_o\ : std_logic;
SIGNAL \readdata[137]~output_o\ : std_logic;
SIGNAL \readdata[138]~output_o\ : std_logic;
SIGNAL \readdata[139]~output_o\ : std_logic;
SIGNAL \readdata[140]~output_o\ : std_logic;
SIGNAL \readdata[141]~output_o\ : std_logic;
SIGNAL \readdata[142]~output_o\ : std_logic;
SIGNAL \readdata[143]~output_o\ : std_logic;
SIGNAL \readdata[144]~output_o\ : std_logic;
SIGNAL \readdata[145]~output_o\ : std_logic;
SIGNAL \readdata[146]~output_o\ : std_logic;
SIGNAL \readdata[147]~output_o\ : std_logic;
SIGNAL \readdata[148]~output_o\ : std_logic;
SIGNAL \readdata[149]~output_o\ : std_logic;
SIGNAL \writeenable~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \writedata[0]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \address[8]~input_o\ : std_logic;
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
SIGNAL \writedata[14]~input_o\ : std_logic;
SIGNAL \writedata[15]~input_o\ : std_logic;
SIGNAL \writedata[16]~input_o\ : std_logic;
SIGNAL \writedata[17]~input_o\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a17\ : std_logic;
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
SIGNAL \writedata[32]~input_o\ : std_logic;
SIGNAL \writedata[33]~input_o\ : std_logic;
SIGNAL \writedata[34]~input_o\ : std_logic;
SIGNAL \writedata[35]~input_o\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a32\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a33\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a34\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a35\ : std_logic;
SIGNAL \writedata[36]~input_o\ : std_logic;
SIGNAL \writedata[37]~input_o\ : std_logic;
SIGNAL \writedata[38]~input_o\ : std_logic;
SIGNAL \writedata[39]~input_o\ : std_logic;
SIGNAL \writedata[40]~input_o\ : std_logic;
SIGNAL \writedata[41]~input_o\ : std_logic;
SIGNAL \writedata[42]~input_o\ : std_logic;
SIGNAL \writedata[43]~input_o\ : std_logic;
SIGNAL \writedata[44]~input_o\ : std_logic;
SIGNAL \writedata[45]~input_o\ : std_logic;
SIGNAL \writedata[46]~input_o\ : std_logic;
SIGNAL \writedata[47]~input_o\ : std_logic;
SIGNAL \writedata[48]~input_o\ : std_logic;
SIGNAL \writedata[49]~input_o\ : std_logic;
SIGNAL \writedata[50]~input_o\ : std_logic;
SIGNAL \writedata[51]~input_o\ : std_logic;
SIGNAL \writedata[52]~input_o\ : std_logic;
SIGNAL \writedata[53]~input_o\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a37\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a38\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a39\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a40\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a41\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a42\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a43\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a44\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a45\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a46\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a47\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a48\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a49\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a50\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a51\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a52\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a53\ : std_logic;
SIGNAL \writedata[54]~input_o\ : std_logic;
SIGNAL \writedata[55]~input_o\ : std_logic;
SIGNAL \writedata[56]~input_o\ : std_logic;
SIGNAL \writedata[57]~input_o\ : std_logic;
SIGNAL \writedata[58]~input_o\ : std_logic;
SIGNAL \writedata[59]~input_o\ : std_logic;
SIGNAL \writedata[60]~input_o\ : std_logic;
SIGNAL \writedata[61]~input_o\ : std_logic;
SIGNAL \writedata[62]~input_o\ : std_logic;
SIGNAL \writedata[63]~input_o\ : std_logic;
SIGNAL \writedata[64]~input_o\ : std_logic;
SIGNAL \writedata[65]~input_o\ : std_logic;
SIGNAL \writedata[66]~input_o\ : std_logic;
SIGNAL \writedata[67]~input_o\ : std_logic;
SIGNAL \writedata[68]~input_o\ : std_logic;
SIGNAL \writedata[69]~input_o\ : std_logic;
SIGNAL \writedata[70]~input_o\ : std_logic;
SIGNAL \writedata[71]~input_o\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a54~portadataout\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a55\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a56\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a57\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a58\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a59\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a60\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a61\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a62\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a63\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a64\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a65\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a66\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a67\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a68\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a69\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a70\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a71\ : std_logic;
SIGNAL \writedata[72]~input_o\ : std_logic;
SIGNAL \writedata[73]~input_o\ : std_logic;
SIGNAL \writedata[74]~input_o\ : std_logic;
SIGNAL \writedata[75]~input_o\ : std_logic;
SIGNAL \writedata[76]~input_o\ : std_logic;
SIGNAL \writedata[77]~input_o\ : std_logic;
SIGNAL \writedata[78]~input_o\ : std_logic;
SIGNAL \writedata[79]~input_o\ : std_logic;
SIGNAL \writedata[80]~input_o\ : std_logic;
SIGNAL \writedata[81]~input_o\ : std_logic;
SIGNAL \writedata[82]~input_o\ : std_logic;
SIGNAL \writedata[83]~input_o\ : std_logic;
SIGNAL \writedata[84]~input_o\ : std_logic;
SIGNAL \writedata[85]~input_o\ : std_logic;
SIGNAL \writedata[86]~input_o\ : std_logic;
SIGNAL \writedata[87]~input_o\ : std_logic;
SIGNAL \writedata[88]~input_o\ : std_logic;
SIGNAL \writedata[89]~input_o\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a72~portadataout\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a73\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a74\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a75\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a76\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a77\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a78\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a79\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a80\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a81\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a82\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a83\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a84\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a85\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a86\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a87\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a88\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a89\ : std_logic;
SIGNAL \writedata[90]~input_o\ : std_logic;
SIGNAL \writedata[91]~input_o\ : std_logic;
SIGNAL \writedata[92]~input_o\ : std_logic;
SIGNAL \writedata[93]~input_o\ : std_logic;
SIGNAL \writedata[94]~input_o\ : std_logic;
SIGNAL \writedata[95]~input_o\ : std_logic;
SIGNAL \writedata[96]~input_o\ : std_logic;
SIGNAL \writedata[97]~input_o\ : std_logic;
SIGNAL \writedata[98]~input_o\ : std_logic;
SIGNAL \writedata[99]~input_o\ : std_logic;
SIGNAL \writedata[100]~input_o\ : std_logic;
SIGNAL \writedata[101]~input_o\ : std_logic;
SIGNAL \writedata[102]~input_o\ : std_logic;
SIGNAL \writedata[103]~input_o\ : std_logic;
SIGNAL \writedata[104]~input_o\ : std_logic;
SIGNAL \writedata[105]~input_o\ : std_logic;
SIGNAL \writedata[106]~input_o\ : std_logic;
SIGNAL \writedata[107]~input_o\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a90~portadataout\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a91\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a92\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a93\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a94\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a95\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a96\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a97\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a98\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a99\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a100\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a101\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a102\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a103\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a104\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a105\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a106\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a107\ : std_logic;
SIGNAL \writedata[108]~input_o\ : std_logic;
SIGNAL \writedata[109]~input_o\ : std_logic;
SIGNAL \writedata[110]~input_o\ : std_logic;
SIGNAL \writedata[111]~input_o\ : std_logic;
SIGNAL \writedata[112]~input_o\ : std_logic;
SIGNAL \writedata[113]~input_o\ : std_logic;
SIGNAL \writedata[114]~input_o\ : std_logic;
SIGNAL \writedata[115]~input_o\ : std_logic;
SIGNAL \writedata[116]~input_o\ : std_logic;
SIGNAL \writedata[117]~input_o\ : std_logic;
SIGNAL \writedata[118]~input_o\ : std_logic;
SIGNAL \writedata[119]~input_o\ : std_logic;
SIGNAL \writedata[120]~input_o\ : std_logic;
SIGNAL \writedata[121]~input_o\ : std_logic;
SIGNAL \writedata[122]~input_o\ : std_logic;
SIGNAL \writedata[123]~input_o\ : std_logic;
SIGNAL \writedata[124]~input_o\ : std_logic;
SIGNAL \writedata[125]~input_o\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a108~portadataout\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a109\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a110\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a111\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a112\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a113\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a114\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a115\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a116\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a117\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a118\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a119\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a120\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a121\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a122\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a123\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a124\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a125\ : std_logic;
SIGNAL \writedata[126]~input_o\ : std_logic;
SIGNAL \writedata[127]~input_o\ : std_logic;
SIGNAL \writedata[128]~input_o\ : std_logic;
SIGNAL \writedata[129]~input_o\ : std_logic;
SIGNAL \writedata[130]~input_o\ : std_logic;
SIGNAL \writedata[131]~input_o\ : std_logic;
SIGNAL \writedata[132]~input_o\ : std_logic;
SIGNAL \writedata[133]~input_o\ : std_logic;
SIGNAL \writedata[134]~input_o\ : std_logic;
SIGNAL \writedata[135]~input_o\ : std_logic;
SIGNAL \writedata[136]~input_o\ : std_logic;
SIGNAL \writedata[137]~input_o\ : std_logic;
SIGNAL \writedata[138]~input_o\ : std_logic;
SIGNAL \writedata[139]~input_o\ : std_logic;
SIGNAL \writedata[140]~input_o\ : std_logic;
SIGNAL \writedata[141]~input_o\ : std_logic;
SIGNAL \writedata[142]~input_o\ : std_logic;
SIGNAL \writedata[143]~input_o\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a126~portadataout\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a127\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a128\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a129\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a130\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a131\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a132\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a133\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a134\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a135\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a136\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a137\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a138\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a139\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a140\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a141\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a142\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a143\ : std_logic;
SIGNAL \writedata[144]~input_o\ : std_logic;
SIGNAL \writedata[145]~input_o\ : std_logic;
SIGNAL \writedata[146]~input_o\ : std_logic;
SIGNAL \writedata[147]~input_o\ : std_logic;
SIGNAL \writedata[148]~input_o\ : std_logic;
SIGNAL \writedata[149]~input_o\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a144~portadataout\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a145\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a146\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a147\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a148\ : std_logic;
SIGNAL \mem_block_rtl_0|auto_generated|ram_block1a149\ : std_logic;

BEGIN

ww_clock <= clock;
ww_writedata <= writedata;
ww_address <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(address, 9);
ww_writeenable <= writeenable;
readdata <= ww_readdata;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\writedata[17]~input_o\ & \writedata[16]~input_o\ & \writedata[15]~input_o\ & \writedata[14]~input_o\ & \writedata[13]~input_o\ & \writedata[12]~input_o\ & \writedata[11]~input_o\ & 
\writedata[10]~input_o\ & \writedata[9]~input_o\ & \writedata[8]~input_o\ & \writedata[7]~input_o\ & \writedata[6]~input_o\ & \writedata[5]~input_o\ & \writedata[4]~input_o\ & \writedata[3]~input_o\ & \writedata[2]~input_o\ & \writedata[1]~input_o\ & 
\writedata[0]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & 
\address[0]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\mem_block_rtl_0|auto_generated|ram_block1a1\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\mem_block_rtl_0|auto_generated|ram_block1a2\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\mem_block_rtl_0|auto_generated|ram_block1a3\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\mem_block_rtl_0|auto_generated|ram_block1a4\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\mem_block_rtl_0|auto_generated|ram_block1a5\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\mem_block_rtl_0|auto_generated|ram_block1a6\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\mem_block_rtl_0|auto_generated|ram_block1a7\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\mem_block_rtl_0|auto_generated|ram_block1a8\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\mem_block_rtl_0|auto_generated|ram_block1a9\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\mem_block_rtl_0|auto_generated|ram_block1a10\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\mem_block_rtl_0|auto_generated|ram_block1a11\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\mem_block_rtl_0|auto_generated|ram_block1a12\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\mem_block_rtl_0|auto_generated|ram_block1a13\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\mem_block_rtl_0|auto_generated|ram_block1a14\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\mem_block_rtl_0|auto_generated|ram_block1a15\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\mem_block_rtl_0|auto_generated|ram_block1a16\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\mem_block_rtl_0|auto_generated|ram_block1a17\ <= \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (\writedata[35]~input_o\ & \writedata[34]~input_o\ & \writedata[33]~input_o\ & \writedata[32]~input_o\ & \writedata[31]~input_o\ & \writedata[30]~input_o\ & \writedata[29]~input_o\ & 
\writedata[28]~input_o\ & \writedata[27]~input_o\ & \writedata[26]~input_o\ & \writedata[25]~input_o\ & \writedata[24]~input_o\ & \writedata[23]~input_o\ & \writedata[22]~input_o\ & \writedata[21]~input_o\ & \writedata[20]~input_o\ & 
\writedata[19]~input_o\ & \writedata[18]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & 
\address[0]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a18~portadataout\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\mem_block_rtl_0|auto_generated|ram_block1a19\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);
\mem_block_rtl_0|auto_generated|ram_block1a20\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(2);
\mem_block_rtl_0|auto_generated|ram_block1a21\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(3);
\mem_block_rtl_0|auto_generated|ram_block1a22\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(4);
\mem_block_rtl_0|auto_generated|ram_block1a23\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(5);
\mem_block_rtl_0|auto_generated|ram_block1a24\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(6);
\mem_block_rtl_0|auto_generated|ram_block1a25\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(7);
\mem_block_rtl_0|auto_generated|ram_block1a26\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(8);
\mem_block_rtl_0|auto_generated|ram_block1a27\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(9);
\mem_block_rtl_0|auto_generated|ram_block1a28\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(10);
\mem_block_rtl_0|auto_generated|ram_block1a29\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(11);
\mem_block_rtl_0|auto_generated|ram_block1a30\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(12);
\mem_block_rtl_0|auto_generated|ram_block1a31\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(13);
\mem_block_rtl_0|auto_generated|ram_block1a32\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(14);
\mem_block_rtl_0|auto_generated|ram_block1a33\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(15);
\mem_block_rtl_0|auto_generated|ram_block1a34\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(16);
\mem_block_rtl_0|auto_generated|ram_block1a35\ <= \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(17);

\mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\ <= (\writedata[53]~input_o\ & \writedata[52]~input_o\ & \writedata[51]~input_o\ & \writedata[50]~input_o\ & \writedata[49]~input_o\ & \writedata[48]~input_o\ & \writedata[47]~input_o\ & 
\writedata[46]~input_o\ & \writedata[45]~input_o\ & \writedata[44]~input_o\ & \writedata[43]~input_o\ & \writedata[42]~input_o\ & \writedata[41]~input_o\ & \writedata[40]~input_o\ & \writedata[39]~input_o\ & \writedata[38]~input_o\ & 
\writedata[37]~input_o\ & \writedata[36]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & 
\address[0]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a36~portadataout\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);
\mem_block_rtl_0|auto_generated|ram_block1a37\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(1);
\mem_block_rtl_0|auto_generated|ram_block1a38\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(2);
\mem_block_rtl_0|auto_generated|ram_block1a39\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(3);
\mem_block_rtl_0|auto_generated|ram_block1a40\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(4);
\mem_block_rtl_0|auto_generated|ram_block1a41\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(5);
\mem_block_rtl_0|auto_generated|ram_block1a42\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(6);
\mem_block_rtl_0|auto_generated|ram_block1a43\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(7);
\mem_block_rtl_0|auto_generated|ram_block1a44\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(8);
\mem_block_rtl_0|auto_generated|ram_block1a45\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(9);
\mem_block_rtl_0|auto_generated|ram_block1a46\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(10);
\mem_block_rtl_0|auto_generated|ram_block1a47\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(11);
\mem_block_rtl_0|auto_generated|ram_block1a48\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(12);
\mem_block_rtl_0|auto_generated|ram_block1a49\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(13);
\mem_block_rtl_0|auto_generated|ram_block1a50\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(14);
\mem_block_rtl_0|auto_generated|ram_block1a51\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(15);
\mem_block_rtl_0|auto_generated|ram_block1a52\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(16);
\mem_block_rtl_0|auto_generated|ram_block1a53\ <= \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\(17);

\mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\ <= (\writedata[71]~input_o\ & \writedata[70]~input_o\ & \writedata[69]~input_o\ & \writedata[68]~input_o\ & \writedata[67]~input_o\ & \writedata[66]~input_o\ & \writedata[65]~input_o\ & 
\writedata[64]~input_o\ & \writedata[63]~input_o\ & \writedata[62]~input_o\ & \writedata[61]~input_o\ & \writedata[60]~input_o\ & \writedata[59]~input_o\ & \writedata[58]~input_o\ & \writedata[57]~input_o\ & \writedata[56]~input_o\ & 
\writedata[55]~input_o\ & \writedata[54]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (\address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & 
\address[0]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a54~portadataout\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(0);
\mem_block_rtl_0|auto_generated|ram_block1a55\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(1);
\mem_block_rtl_0|auto_generated|ram_block1a56\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(2);
\mem_block_rtl_0|auto_generated|ram_block1a57\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(3);
\mem_block_rtl_0|auto_generated|ram_block1a58\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(4);
\mem_block_rtl_0|auto_generated|ram_block1a59\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(5);
\mem_block_rtl_0|auto_generated|ram_block1a60\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(6);
\mem_block_rtl_0|auto_generated|ram_block1a61\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(7);
\mem_block_rtl_0|auto_generated|ram_block1a62\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(8);
\mem_block_rtl_0|auto_generated|ram_block1a63\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(9);
\mem_block_rtl_0|auto_generated|ram_block1a64\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(10);
\mem_block_rtl_0|auto_generated|ram_block1a65\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(11);
\mem_block_rtl_0|auto_generated|ram_block1a66\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(12);
\mem_block_rtl_0|auto_generated|ram_block1a67\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(13);
\mem_block_rtl_0|auto_generated|ram_block1a68\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(14);
\mem_block_rtl_0|auto_generated|ram_block1a69\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(15);
\mem_block_rtl_0|auto_generated|ram_block1a70\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(16);
\mem_block_rtl_0|auto_generated|ram_block1a71\ <= \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\(17);

\mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAIN_bus\ <= (\writedata[89]~input_o\ & \writedata[88]~input_o\ & \writedata[87]~input_o\ & \writedata[86]~input_o\ & \writedata[85]~input_o\ & \writedata[84]~input_o\ & \writedata[83]~input_o\ & 
\writedata[82]~input_o\ & \writedata[81]~input_o\ & \writedata[80]~input_o\ & \writedata[79]~input_o\ & \writedata[78]~input_o\ & \writedata[77]~input_o\ & \writedata[76]~input_o\ & \writedata[75]~input_o\ & \writedata[74]~input_o\ & 
\writedata[73]~input_o\ & \writedata[72]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a72_PORTAADDR_bus\ <= (\address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & 
\address[0]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a72~portadataout\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(0);
\mem_block_rtl_0|auto_generated|ram_block1a73\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(1);
\mem_block_rtl_0|auto_generated|ram_block1a74\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(2);
\mem_block_rtl_0|auto_generated|ram_block1a75\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(3);
\mem_block_rtl_0|auto_generated|ram_block1a76\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(4);
\mem_block_rtl_0|auto_generated|ram_block1a77\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(5);
\mem_block_rtl_0|auto_generated|ram_block1a78\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(6);
\mem_block_rtl_0|auto_generated|ram_block1a79\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(7);
\mem_block_rtl_0|auto_generated|ram_block1a80\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(8);
\mem_block_rtl_0|auto_generated|ram_block1a81\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(9);
\mem_block_rtl_0|auto_generated|ram_block1a82\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(10);
\mem_block_rtl_0|auto_generated|ram_block1a83\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(11);
\mem_block_rtl_0|auto_generated|ram_block1a84\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(12);
\mem_block_rtl_0|auto_generated|ram_block1a85\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(13);
\mem_block_rtl_0|auto_generated|ram_block1a86\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(14);
\mem_block_rtl_0|auto_generated|ram_block1a87\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(15);
\mem_block_rtl_0|auto_generated|ram_block1a88\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(16);
\mem_block_rtl_0|auto_generated|ram_block1a89\ <= \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\(17);

\mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAIN_bus\ <= (\writedata[107]~input_o\ & \writedata[106]~input_o\ & \writedata[105]~input_o\ & \writedata[104]~input_o\ & \writedata[103]~input_o\ & \writedata[102]~input_o\ & \writedata[101]~input_o\
& \writedata[100]~input_o\ & \writedata[99]~input_o\ & \writedata[98]~input_o\ & \writedata[97]~input_o\ & \writedata[96]~input_o\ & \writedata[95]~input_o\ & \writedata[94]~input_o\ & \writedata[93]~input_o\ & \writedata[92]~input_o\ & 
\writedata[91]~input_o\ & \writedata[90]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a90_PORTAADDR_bus\ <= (\address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & 
\address[0]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a90~portadataout\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(0);
\mem_block_rtl_0|auto_generated|ram_block1a91\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(1);
\mem_block_rtl_0|auto_generated|ram_block1a92\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(2);
\mem_block_rtl_0|auto_generated|ram_block1a93\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(3);
\mem_block_rtl_0|auto_generated|ram_block1a94\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(4);
\mem_block_rtl_0|auto_generated|ram_block1a95\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(5);
\mem_block_rtl_0|auto_generated|ram_block1a96\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(6);
\mem_block_rtl_0|auto_generated|ram_block1a97\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(7);
\mem_block_rtl_0|auto_generated|ram_block1a98\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(8);
\mem_block_rtl_0|auto_generated|ram_block1a99\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(9);
\mem_block_rtl_0|auto_generated|ram_block1a100\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(10);
\mem_block_rtl_0|auto_generated|ram_block1a101\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(11);
\mem_block_rtl_0|auto_generated|ram_block1a102\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(12);
\mem_block_rtl_0|auto_generated|ram_block1a103\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(13);
\mem_block_rtl_0|auto_generated|ram_block1a104\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(14);
\mem_block_rtl_0|auto_generated|ram_block1a105\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(15);
\mem_block_rtl_0|auto_generated|ram_block1a106\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(16);
\mem_block_rtl_0|auto_generated|ram_block1a107\ <= \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\(17);

\mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAIN_bus\ <= (\writedata[125]~input_o\ & \writedata[124]~input_o\ & \writedata[123]~input_o\ & \writedata[122]~input_o\ & \writedata[121]~input_o\ & \writedata[120]~input_o\ & \writedata[119]~input_o\
& \writedata[118]~input_o\ & \writedata[117]~input_o\ & \writedata[116]~input_o\ & \writedata[115]~input_o\ & \writedata[114]~input_o\ & \writedata[113]~input_o\ & \writedata[112]~input_o\ & \writedata[111]~input_o\ & \writedata[110]~input_o\ & 
\writedata[109]~input_o\ & \writedata[108]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a108_PORTAADDR_bus\ <= (\address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & 
\address[0]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a108~portadataout\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(0);
\mem_block_rtl_0|auto_generated|ram_block1a109\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(1);
\mem_block_rtl_0|auto_generated|ram_block1a110\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(2);
\mem_block_rtl_0|auto_generated|ram_block1a111\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(3);
\mem_block_rtl_0|auto_generated|ram_block1a112\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(4);
\mem_block_rtl_0|auto_generated|ram_block1a113\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(5);
\mem_block_rtl_0|auto_generated|ram_block1a114\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(6);
\mem_block_rtl_0|auto_generated|ram_block1a115\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(7);
\mem_block_rtl_0|auto_generated|ram_block1a116\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(8);
\mem_block_rtl_0|auto_generated|ram_block1a117\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(9);
\mem_block_rtl_0|auto_generated|ram_block1a118\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(10);
\mem_block_rtl_0|auto_generated|ram_block1a119\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(11);
\mem_block_rtl_0|auto_generated|ram_block1a120\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(12);
\mem_block_rtl_0|auto_generated|ram_block1a121\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(13);
\mem_block_rtl_0|auto_generated|ram_block1a122\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(14);
\mem_block_rtl_0|auto_generated|ram_block1a123\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(15);
\mem_block_rtl_0|auto_generated|ram_block1a124\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(16);
\mem_block_rtl_0|auto_generated|ram_block1a125\ <= \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\(17);

\mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAIN_bus\ <= (\writedata[143]~input_o\ & \writedata[142]~input_o\ & \writedata[141]~input_o\ & \writedata[140]~input_o\ & \writedata[139]~input_o\ & \writedata[138]~input_o\ & \writedata[137]~input_o\
& \writedata[136]~input_o\ & \writedata[135]~input_o\ & \writedata[134]~input_o\ & \writedata[133]~input_o\ & \writedata[132]~input_o\ & \writedata[131]~input_o\ & \writedata[130]~input_o\ & \writedata[129]~input_o\ & \writedata[128]~input_o\ & 
\writedata[127]~input_o\ & \writedata[126]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a126_PORTAADDR_bus\ <= (\address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & 
\address[0]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a126~portadataout\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(0);
\mem_block_rtl_0|auto_generated|ram_block1a127\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(1);
\mem_block_rtl_0|auto_generated|ram_block1a128\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(2);
\mem_block_rtl_0|auto_generated|ram_block1a129\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(3);
\mem_block_rtl_0|auto_generated|ram_block1a130\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(4);
\mem_block_rtl_0|auto_generated|ram_block1a131\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(5);
\mem_block_rtl_0|auto_generated|ram_block1a132\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(6);
\mem_block_rtl_0|auto_generated|ram_block1a133\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(7);
\mem_block_rtl_0|auto_generated|ram_block1a134\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(8);
\mem_block_rtl_0|auto_generated|ram_block1a135\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(9);
\mem_block_rtl_0|auto_generated|ram_block1a136\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(10);
\mem_block_rtl_0|auto_generated|ram_block1a137\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(11);
\mem_block_rtl_0|auto_generated|ram_block1a138\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(12);
\mem_block_rtl_0|auto_generated|ram_block1a139\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(13);
\mem_block_rtl_0|auto_generated|ram_block1a140\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(14);
\mem_block_rtl_0|auto_generated|ram_block1a141\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(15);
\mem_block_rtl_0|auto_generated|ram_block1a142\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(16);
\mem_block_rtl_0|auto_generated|ram_block1a143\ <= \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\(17);

\mem_block_rtl_0|auto_generated|ram_block1a144_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \writedata[149]~input_o\ & \writedata[148]~input_o\ & \writedata[147]~input_o\ & \writedata[146]~input_o\ & 
\writedata[145]~input_o\ & \writedata[144]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a144_PORTAADDR_bus\ <= (\address[8]~input_o\ & \address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & 
\address[0]~input_o\);

\mem_block_rtl_0|auto_generated|ram_block1a144~portadataout\ <= \mem_block_rtl_0|auto_generated|ram_block1a144_PORTADATAOUT_bus\(0);
\mem_block_rtl_0|auto_generated|ram_block1a145\ <= \mem_block_rtl_0|auto_generated|ram_block1a144_PORTADATAOUT_bus\(1);
\mem_block_rtl_0|auto_generated|ram_block1a146\ <= \mem_block_rtl_0|auto_generated|ram_block1a144_PORTADATAOUT_bus\(2);
\mem_block_rtl_0|auto_generated|ram_block1a147\ <= \mem_block_rtl_0|auto_generated|ram_block1a144_PORTADATAOUT_bus\(3);
\mem_block_rtl_0|auto_generated|ram_block1a148\ <= \mem_block_rtl_0|auto_generated|ram_block1a144_PORTADATAOUT_bus\(4);
\mem_block_rtl_0|auto_generated|ram_block1a149\ <= \mem_block_rtl_0|auto_generated|ram_block1a144_PORTADATAOUT_bus\(5);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X82_Y0_N16
\readdata[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \readdata[0]~output_o\);

-- Location: IOOBUF_X70_Y0_N16
\readdata[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \readdata[1]~output_o\);

-- Location: IOOBUF_X75_Y0_N16
\readdata[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \readdata[2]~output_o\);

-- Location: IOOBUF_X53_Y0_N16
\readdata[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \readdata[3]~output_o\);

-- Location: IOOBUF_X48_Y0_N2
\readdata[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \readdata[4]~output_o\);

-- Location: IOOBUF_X82_Y0_N23
\readdata[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \readdata[5]~output_o\);

-- Location: IOOBUF_X68_Y0_N16
\readdata[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \readdata[6]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\readdata[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \readdata[7]~output_o\);

-- Location: IOOBUF_X77_Y0_N16
\readdata[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \readdata[8]~output_o\);

-- Location: IOOBUF_X61_Y0_N23
\readdata[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \readdata[9]~output_o\);

-- Location: IOOBUF_X53_Y0_N2
\readdata[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \readdata[10]~output_o\);

-- Location: IOOBUF_X66_Y0_N16
\readdata[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \readdata[11]~output_o\);

-- Location: IOOBUF_X48_Y0_N23
\readdata[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \readdata[12]~output_o\);

-- Location: IOOBUF_X68_Y0_N23
\readdata[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \readdata[13]~output_o\);

-- Location: IOOBUF_X53_Y0_N9
\readdata[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \readdata[14]~output_o\);

-- Location: IOOBUF_X63_Y0_N23
\readdata[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \readdata[15]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\readdata[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => \readdata[16]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\readdata[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => \readdata[17]~output_o\);

-- Location: IOOBUF_X63_Y91_N16
\readdata[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a18~portadataout\,
	devoe => ww_devoe,
	o => \readdata[18]~output_o\);

-- Location: IOOBUF_X79_Y91_N16
\readdata[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => \readdata[19]~output_o\);

-- Location: IOOBUF_X50_Y91_N16
\readdata[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => \readdata[20]~output_o\);

-- Location: IOOBUF_X48_Y91_N2
\readdata[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => \readdata[21]~output_o\);

-- Location: IOOBUF_X61_Y91_N9
\readdata[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => \readdata[22]~output_o\);

-- Location: IOOBUF_X61_Y91_N2
\readdata[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => \readdata[23]~output_o\);

-- Location: IOOBUF_X46_Y91_N2
\readdata[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => \readdata[24]~output_o\);

-- Location: IOOBUF_X46_Y91_N9
\readdata[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => \readdata[25]~output_o\);

-- Location: IOOBUF_X68_Y91_N9
\readdata[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => \readdata[26]~output_o\);

-- Location: IOOBUF_X75_Y91_N2
\readdata[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a27\,
	devoe => ww_devoe,
	o => \readdata[27]~output_o\);

-- Location: IOOBUF_X66_Y91_N16
\readdata[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => \readdata[28]~output_o\);

-- Location: IOOBUF_X53_Y91_N9
\readdata[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => \readdata[29]~output_o\);

-- Location: IOOBUF_X53_Y91_N23
\readdata[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => \readdata[30]~output_o\);

-- Location: IOOBUF_X48_Y91_N9
\readdata[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => \readdata[31]~output_o\);

-- Location: IOOBUF_X44_Y91_N2
\readdata[32]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a32\,
	devoe => ww_devoe,
	o => \readdata[32]~output_o\);

-- Location: IOOBUF_X44_Y91_N9
\readdata[33]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a33\,
	devoe => ww_devoe,
	o => \readdata[33]~output_o\);

-- Location: IOOBUF_X53_Y91_N2
\readdata[34]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a34\,
	devoe => ww_devoe,
	o => \readdata[34]~output_o\);

-- Location: IOOBUF_X79_Y91_N23
\readdata[35]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a35\,
	devoe => ww_devoe,
	o => \readdata[35]~output_o\);

-- Location: IOOBUF_X90_Y0_N9
\readdata[36]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a36~portadataout\,
	devoe => ww_devoe,
	o => \readdata[36]~output_o\);

-- Location: IOOBUF_X90_Y0_N2
\readdata[37]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a37\,
	devoe => ww_devoe,
	o => \readdata[37]~output_o\);

-- Location: IOOBUF_X86_Y0_N2
\readdata[38]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a38\,
	devoe => ww_devoe,
	o => \readdata[38]~output_o\);

-- Location: IOOBUF_X108_Y0_N16
\readdata[39]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a39\,
	devoe => ww_devoe,
	o => \readdata[39]~output_o\);

-- Location: IOOBUF_X86_Y0_N23
\readdata[40]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a40\,
	devoe => ww_devoe,
	o => \readdata[40]~output_o\);

-- Location: IOOBUF_X88_Y0_N9
\readdata[41]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a41\,
	devoe => ww_devoe,
	o => \readdata[41]~output_o\);

-- Location: IOOBUF_X86_Y0_N16
\readdata[42]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a42\,
	devoe => ww_devoe,
	o => \readdata[42]~output_o\);

-- Location: IOOBUF_X84_Y0_N23
\readdata[43]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a43\,
	devoe => ww_devoe,
	o => \readdata[43]~output_o\);

-- Location: IOOBUF_X84_Y0_N2
\readdata[44]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a44\,
	devoe => ww_devoe,
	o => \readdata[44]~output_o\);

-- Location: IOOBUF_X92_Y0_N23
\readdata[45]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a45\,
	devoe => ww_devoe,
	o => \readdata[45]~output_o\);

-- Location: IOOBUF_X92_Y0_N16
\readdata[46]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a46\,
	devoe => ww_devoe,
	o => \readdata[46]~output_o\);

-- Location: IOOBUF_X104_Y0_N16
\readdata[47]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a47\,
	devoe => ww_devoe,
	o => \readdata[47]~output_o\);

-- Location: IOOBUF_X84_Y0_N9
\readdata[48]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a48\,
	devoe => ww_devoe,
	o => \readdata[48]~output_o\);

-- Location: IOOBUF_X88_Y0_N2
\readdata[49]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a49\,
	devoe => ww_devoe,
	o => \readdata[49]~output_o\);

-- Location: IOOBUF_X104_Y0_N23
\readdata[50]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a50\,
	devoe => ww_devoe,
	o => \readdata[50]~output_o\);

-- Location: IOOBUF_X86_Y0_N9
\readdata[51]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a51\,
	devoe => ww_devoe,
	o => \readdata[51]~output_o\);

-- Location: IOOBUF_X82_Y0_N2
\readdata[52]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a52\,
	devoe => ww_devoe,
	o => \readdata[52]~output_o\);

-- Location: IOOBUF_X99_Y0_N16
\readdata[53]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a53\,
	devoe => ww_devoe,
	o => \readdata[53]~output_o\);

-- Location: IOOBUF_X117_Y73_N2
\readdata[54]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a54~portadataout\,
	devoe => ww_devoe,
	o => \readdata[54]~output_o\);

-- Location: IOOBUF_X117_Y73_N9
\readdata[55]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a55\,
	devoe => ww_devoe,
	o => \readdata[55]~output_o\);

-- Location: IOOBUF_X117_Y60_N9
\readdata[56]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a56\,
	devoe => ww_devoe,
	o => \readdata[56]~output_o\);

-- Location: IOOBUF_X117_Y72_N2
\readdata[57]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a57\,
	devoe => ww_devoe,
	o => \readdata[57]~output_o\);

-- Location: IOOBUF_X117_Y83_N2
\readdata[58]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a58\,
	devoe => ww_devoe,
	o => \readdata[58]~output_o\);

-- Location: IOOBUF_X117_Y66_N9
\readdata[59]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a59\,
	devoe => ww_devoe,
	o => \readdata[59]~output_o\);

-- Location: IOOBUF_X117_Y69_N9
\readdata[60]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a60\,
	devoe => ww_devoe,
	o => \readdata[60]~output_o\);

-- Location: IOOBUF_X117_Y77_N2
\readdata[61]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a61\,
	devoe => ww_devoe,
	o => \readdata[61]~output_o\);

-- Location: IOOBUF_X117_Y69_N2
\readdata[62]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a62\,
	devoe => ww_devoe,
	o => \readdata[62]~output_o\);

-- Location: IOOBUF_X117_Y62_N2
\readdata[63]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a63\,
	devoe => ww_devoe,
	o => \readdata[63]~output_o\);

-- Location: IOOBUF_X117_Y80_N9
\readdata[64]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a64\,
	devoe => ww_devoe,
	o => \readdata[64]~output_o\);

-- Location: IOOBUF_X117_Y64_N9
\readdata[65]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a65\,
	devoe => ww_devoe,
	o => \readdata[65]~output_o\);

-- Location: IOOBUF_X117_Y61_N9
\readdata[66]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a66\,
	devoe => ww_devoe,
	o => \readdata[66]~output_o\);

-- Location: IOOBUF_X117_Y83_N9
\readdata[67]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a67\,
	devoe => ww_devoe,
	o => \readdata[67]~output_o\);

-- Location: IOOBUF_X117_Y86_N9
\readdata[68]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a68\,
	devoe => ww_devoe,
	o => \readdata[68]~output_o\);

-- Location: IOOBUF_X117_Y81_N9
\readdata[69]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a69\,
	devoe => ww_devoe,
	o => \readdata[69]~output_o\);

-- Location: IOOBUF_X117_Y60_N2
\readdata[70]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a70\,
	devoe => ww_devoe,
	o => \readdata[70]~output_o\);

-- Location: IOOBUF_X117_Y74_N2
\readdata[71]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a71\,
	devoe => ww_devoe,
	o => \readdata[71]~output_o\);

-- Location: IOOBUF_X30_Y91_N2
\readdata[72]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a72~portadataout\,
	devoe => ww_devoe,
	o => \readdata[72]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\readdata[73]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a73\,
	devoe => ww_devoe,
	o => \readdata[73]~output_o\);

-- Location: IOOBUF_X30_Y91_N9
\readdata[74]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a74\,
	devoe => ww_devoe,
	o => \readdata[74]~output_o\);

-- Location: IOOBUF_X30_Y91_N23
\readdata[75]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a75\,
	devoe => ww_devoe,
	o => \readdata[75]~output_o\);

-- Location: IOOBUF_X34_Y91_N2
\readdata[76]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a76\,
	devoe => ww_devoe,
	o => \readdata[76]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\readdata[77]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a77\,
	devoe => ww_devoe,
	o => \readdata[77]~output_o\);

-- Location: IOOBUF_X28_Y91_N2
\readdata[78]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a78\,
	devoe => ww_devoe,
	o => \readdata[78]~output_o\);

-- Location: IOOBUF_X34_Y91_N16
\readdata[79]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a79\,
	devoe => ww_devoe,
	o => \readdata[79]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\readdata[80]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a80\,
	devoe => ww_devoe,
	o => \readdata[80]~output_o\);

-- Location: IOOBUF_X39_Y91_N9
\readdata[81]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a81\,
	devoe => ww_devoe,
	o => \readdata[81]~output_o\);

-- Location: IOOBUF_X30_Y91_N16
\readdata[82]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a82\,
	devoe => ww_devoe,
	o => \readdata[82]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\readdata[83]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a83\,
	devoe => ww_devoe,
	o => \readdata[83]~output_o\);

-- Location: IOOBUF_X28_Y91_N16
\readdata[84]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a84\,
	devoe => ww_devoe,
	o => \readdata[84]~output_o\);

-- Location: IOOBUF_X28_Y91_N9
\readdata[85]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a85\,
	devoe => ww_devoe,
	o => \readdata[85]~output_o\);

-- Location: IOOBUF_X32_Y91_N2
\readdata[86]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a86\,
	devoe => ww_devoe,
	o => \readdata[86]~output_o\);

-- Location: IOOBUF_X34_Y91_N9
\readdata[87]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a87\,
	devoe => ww_devoe,
	o => \readdata[87]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\readdata[88]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a88\,
	devoe => ww_devoe,
	o => \readdata[88]~output_o\);

-- Location: IOOBUF_X32_Y91_N9
\readdata[89]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a89\,
	devoe => ww_devoe,
	o => \readdata[89]~output_o\);

-- Location: IOOBUF_X113_Y91_N16
\readdata[90]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a90~portadataout\,
	devoe => ww_devoe,
	o => \readdata[90]~output_o\);

-- Location: IOOBUF_X86_Y91_N9
\readdata[91]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a91\,
	devoe => ww_devoe,
	o => \readdata[91]~output_o\);

-- Location: IOOBUF_X108_Y91_N23
\readdata[92]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a92\,
	devoe => ww_devoe,
	o => \readdata[92]~output_o\);

-- Location: IOOBUF_X99_Y91_N23
\readdata[93]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a93\,
	devoe => ww_devoe,
	o => \readdata[93]~output_o\);

-- Location: IOOBUF_X95_Y91_N16
\readdata[94]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a94\,
	devoe => ww_devoe,
	o => \readdata[94]~output_o\);

-- Location: IOOBUF_X92_Y91_N9
\readdata[95]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a95\,
	devoe => ww_devoe,
	o => \readdata[95]~output_o\);

-- Location: IOOBUF_X111_Y91_N16
\readdata[96]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a96\,
	devoe => ww_devoe,
	o => \readdata[96]~output_o\);

-- Location: IOOBUF_X88_Y91_N2
\readdata[97]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a97\,
	devoe => ww_devoe,
	o => \readdata[97]~output_o\);

-- Location: IOOBUF_X92_Y91_N2
\readdata[98]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a98\,
	devoe => ww_devoe,
	o => \readdata[98]~output_o\);

-- Location: IOOBUF_X88_Y91_N9
\readdata[99]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a99\,
	devoe => ww_devoe,
	o => \readdata[99]~output_o\);

-- Location: IOOBUF_X82_Y91_N2
\readdata[100]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a100\,
	devoe => ww_devoe,
	o => \readdata[100]~output_o\);

-- Location: IOOBUF_X108_Y91_N16
\readdata[101]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a101\,
	devoe => ww_devoe,
	o => \readdata[101]~output_o\);

-- Location: IOOBUF_X108_Y91_N2
\readdata[102]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a102\,
	devoe => ww_devoe,
	o => \readdata[102]~output_o\);

-- Location: IOOBUF_X104_Y91_N2
\readdata[103]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a103\,
	devoe => ww_devoe,
	o => \readdata[103]~output_o\);

-- Location: IOOBUF_X95_Y91_N23
\readdata[104]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a104\,
	devoe => ww_devoe,
	o => \readdata[104]~output_o\);

-- Location: IOOBUF_X86_Y91_N16
\readdata[105]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a105\,
	devoe => ww_devoe,
	o => \readdata[105]~output_o\);

-- Location: IOOBUF_X115_Y91_N23
\readdata[106]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a106\,
	devoe => ww_devoe,
	o => \readdata[106]~output_o\);

-- Location: IOOBUF_X99_Y91_N16
\readdata[107]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a107\,
	devoe => ww_devoe,
	o => \readdata[107]~output_o\);

-- Location: IOOBUF_X117_Y34_N2
\readdata[108]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a108~portadataout\,
	devoe => ww_devoe,
	o => \readdata[108]~output_o\);

-- Location: IOOBUF_X117_Y27_N2
\readdata[109]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a109\,
	devoe => ww_devoe,
	o => \readdata[109]~output_o\);

-- Location: IOOBUF_X117_Y23_N2
\readdata[110]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a110\,
	devoe => ww_devoe,
	o => \readdata[110]~output_o\);

-- Location: IOOBUF_X117_Y41_N9
\readdata[111]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a111\,
	devoe => ww_devoe,
	o => \readdata[111]~output_o\);

-- Location: IOOBUF_X117_Y28_N9
\readdata[112]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a112\,
	devoe => ww_devoe,
	o => \readdata[112]~output_o\);

-- Location: IOOBUF_X117_Y35_N9
\readdata[113]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a113\,
	devoe => ww_devoe,
	o => \readdata[113]~output_o\);

-- Location: IOOBUF_X117_Y32_N9
\readdata[114]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a114\,
	devoe => ww_devoe,
	o => \readdata[114]~output_o\);

-- Location: IOOBUF_X117_Y41_N2
\readdata[115]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a115\,
	devoe => ww_devoe,
	o => \readdata[115]~output_o\);

-- Location: IOOBUF_X117_Y18_N9
\readdata[116]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a116\,
	devoe => ww_devoe,
	o => \readdata[116]~output_o\);

-- Location: IOOBUF_X117_Y36_N2
\readdata[117]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a117\,
	devoe => ww_devoe,
	o => \readdata[117]~output_o\);

-- Location: IOOBUF_X117_Y36_N9
\readdata[118]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a118\,
	devoe => ww_devoe,
	o => \readdata[118]~output_o\);

-- Location: IOOBUF_X117_Y31_N2
\readdata[119]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a119\,
	devoe => ww_devoe,
	o => \readdata[119]~output_o\);

-- Location: IOOBUF_X117_Y42_N2
\readdata[120]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a120\,
	devoe => ww_devoe,
	o => \readdata[120]~output_o\);

-- Location: IOOBUF_X117_Y27_N9
\readdata[121]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a121\,
	devoe => ww_devoe,
	o => \readdata[121]~output_o\);

-- Location: IOOBUF_X117_Y33_N2
\readdata[122]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a122\,
	devoe => ww_devoe,
	o => \readdata[122]~output_o\);

-- Location: IOOBUF_X117_Y26_N2
\readdata[123]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a123\,
	devoe => ww_devoe,
	o => \readdata[123]~output_o\);

-- Location: IOOBUF_X117_Y39_N2
\readdata[124]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a124\,
	devoe => ww_devoe,
	o => \readdata[124]~output_o\);

-- Location: IOOBUF_X117_Y31_N9
\readdata[125]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a125\,
	devoe => ww_devoe,
	o => \readdata[125]~output_o\);

-- Location: IOOBUF_X12_Y91_N9
\readdata[126]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a126~portadataout\,
	devoe => ww_devoe,
	o => \readdata[126]~output_o\);

-- Location: IOOBUF_X10_Y91_N2
\readdata[127]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a127\,
	devoe => ww_devoe,
	o => \readdata[127]~output_o\);

-- Location: IOOBUF_X5_Y91_N9
\readdata[128]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a128\,
	devoe => ww_devoe,
	o => \readdata[128]~output_o\);

-- Location: IOOBUF_X8_Y91_N2
\readdata[129]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a129\,
	devoe => ww_devoe,
	o => \readdata[129]~output_o\);

-- Location: IOOBUF_X17_Y91_N2
\readdata[130]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a130\,
	devoe => ww_devoe,
	o => \readdata[130]~output_o\);

-- Location: IOOBUF_X21_Y91_N23
\readdata[131]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a131\,
	devoe => ww_devoe,
	o => \readdata[131]~output_o\);

-- Location: IOOBUF_X21_Y91_N16
\readdata[132]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a132\,
	devoe => ww_devoe,
	o => \readdata[132]~output_o\);

-- Location: IOOBUF_X17_Y91_N16
\readdata[133]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a133\,
	devoe => ww_devoe,
	o => \readdata[133]~output_o\);

-- Location: IOOBUF_X21_Y91_N9
\readdata[134]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a134\,
	devoe => ww_devoe,
	o => \readdata[134]~output_o\);

-- Location: IOOBUF_X10_Y91_N9
\readdata[135]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a135\,
	devoe => ww_devoe,
	o => \readdata[135]~output_o\);

-- Location: IOOBUF_X5_Y91_N2
\readdata[136]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a136\,
	devoe => ww_devoe,
	o => \readdata[136]~output_o\);

-- Location: IOOBUF_X3_Y91_N2
\readdata[137]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a137\,
	devoe => ww_devoe,
	o => \readdata[137]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\readdata[138]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a138\,
	devoe => ww_devoe,
	o => \readdata[138]~output_o\);

-- Location: IOOBUF_X19_Y91_N16
\readdata[139]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a139\,
	devoe => ww_devoe,
	o => \readdata[139]~output_o\);

-- Location: IOOBUF_X12_Y91_N2
\readdata[140]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a140\,
	devoe => ww_devoe,
	o => \readdata[140]~output_o\);

-- Location: IOOBUF_X17_Y91_N9
\readdata[141]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a141\,
	devoe => ww_devoe,
	o => \readdata[141]~output_o\);

-- Location: IOOBUF_X21_Y91_N2
\readdata[142]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a142\,
	devoe => ww_devoe,
	o => \readdata[142]~output_o\);

-- Location: IOOBUF_X19_Y91_N2
\readdata[143]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a143\,
	devoe => ww_devoe,
	o => \readdata[143]~output_o\);

-- Location: IOOBUF_X117_Y55_N9
\readdata[144]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a144~portadataout\,
	devoe => ww_devoe,
	o => \readdata[144]~output_o\);

-- Location: IOOBUF_X117_Y53_N9
\readdata[145]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a145\,
	devoe => ww_devoe,
	o => \readdata[145]~output_o\);

-- Location: IOOBUF_X117_Y50_N2
\readdata[146]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a146\,
	devoe => ww_devoe,
	o => \readdata[146]~output_o\);

-- Location: IOOBUF_X117_Y55_N2
\readdata[147]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a147\,
	devoe => ww_devoe,
	o => \readdata[147]~output_o\);

-- Location: IOOBUF_X117_Y51_N2
\readdata[148]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a148\,
	devoe => ww_devoe,
	o => \readdata[148]~output_o\);

-- Location: IOOBUF_X117_Y49_N2
\readdata[149]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mem_block_rtl_0|auto_generated|ram_block1a149\,
	devoe => ww_devoe,
	o => \readdata[149]~output_o\);

-- Location: IOIBUF_X41_Y0_N22
\writeenable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writeenable,
	o => \writeenable~input_o\);

-- Location: IOIBUF_X57_Y0_N15
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

-- Location: IOIBUF_X77_Y0_N8
\writedata[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(0),
	o => \writedata[0]~input_o\);

-- Location: IOIBUF_X117_Y10_N8
\address[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X117_Y44_N1
\address[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X44_Y0_N22
\address[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X117_Y7_N1
\address[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\address[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X46_Y0_N15
\address[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\address[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\address[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: IOIBUF_X117_Y56_N8
\address[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(8),
	o => \address[8]~input_o\);

-- Location: IOIBUF_X66_Y0_N22
\writedata[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(1),
	o => \writedata[1]~input_o\);

-- Location: IOIBUF_X63_Y0_N15
\writedata[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(2),
	o => \writedata[2]~input_o\);

-- Location: IOIBUF_X53_Y0_N22
\writedata[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(3),
	o => \writedata[3]~input_o\);

-- Location: IOIBUF_X75_Y0_N8
\writedata[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(4),
	o => \writedata[4]~input_o\);

-- Location: IOIBUF_X117_Y46_N22
\writedata[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(5),
	o => \writedata[5]~input_o\);

-- Location: IOIBUF_X117_Y46_N15
\writedata[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(6),
	o => \writedata[6]~input_o\);

-- Location: IOIBUF_X68_Y0_N8
\writedata[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(7),
	o => \writedata[7]~input_o\);

-- Location: IOIBUF_X48_Y0_N15
\writedata[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(8),
	o => \writedata[8]~input_o\);

-- Location: IOIBUF_X50_Y0_N15
\writedata[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(9),
	o => \writedata[9]~input_o\);

-- Location: IOIBUF_X75_Y0_N1
\writedata[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(10),
	o => \writedata[10]~input_o\);

-- Location: IOIBUF_X61_Y0_N15
\writedata[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(11),
	o => \writedata[11]~input_o\);

-- Location: IOIBUF_X70_Y0_N8
\writedata[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(12),
	o => \writedata[12]~input_o\);

-- Location: IOIBUF_X66_Y0_N1
\writedata[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(13),
	o => \writedata[13]~input_o\);

-- Location: IOIBUF_X77_Y0_N22
\writedata[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(14),
	o => \writedata[14]~input_o\);

-- Location: IOIBUF_X66_Y0_N8
\writedata[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(15),
	o => \writedata[15]~input_o\);

-- Location: IOIBUF_X77_Y0_N1
\writedata[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(16),
	o => \writedata[16]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\writedata[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(17),
	o => \writedata[17]~input_o\);

-- Location: M9K_X65_Y1_N0
\mem_block_rtl_0|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:mem_block_rtl_0|altsyncram_8j81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 257,
	port_a_logical_ram_width => 150,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \writeenable~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mem_block_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_block_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X77_Y91_N8
\writedata[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(18),
	o => \writedata[18]~input_o\);

-- Location: IOIBUF_X66_Y91_N22
\writedata[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(19),
	o => \writedata[19]~input_o\);

-- Location: IOIBUF_X46_Y91_N22
\writedata[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(20),
	o => \writedata[20]~input_o\);

-- Location: IOIBUF_X53_Y91_N15
\writedata[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(21),
	o => \writedata[21]~input_o\);

-- Location: IOIBUF_X79_Y91_N8
\writedata[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(22),
	o => \writedata[22]~input_o\);

-- Location: IOIBUF_X63_Y91_N22
\writedata[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(23),
	o => \writedata[23]~input_o\);

-- Location: IOIBUF_X66_Y91_N1
\writedata[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(24),
	o => \writedata[24]~input_o\);

-- Location: IOIBUF_X66_Y91_N8
\writedata[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(25),
	o => \writedata[25]~input_o\);

-- Location: IOIBUF_X70_Y91_N1
\writedata[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(26),
	o => \writedata[26]~input_o\);

-- Location: IOIBUF_X79_Y91_N1
\writedata[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(27),
	o => \writedata[27]~input_o\);

-- Location: IOIBUF_X77_Y91_N1
\writedata[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(28),
	o => \writedata[28]~input_o\);

-- Location: IOIBUF_X46_Y91_N15
\writedata[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(29),
	o => \writedata[29]~input_o\);

-- Location: IOIBUF_X70_Y91_N8
\writedata[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(30),
	o => \writedata[30]~input_o\);

-- Location: IOIBUF_X48_Y91_N15
\writedata[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(31),
	o => \writedata[31]~input_o\);

-- Location: IOIBUF_X68_Y91_N15
\writedata[32]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(32),
	o => \writedata[32]~input_o\);

-- Location: IOIBUF_X50_Y91_N22
\writedata[33]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(33),
	o => \writedata[33]~input_o\);

-- Location: IOIBUF_X68_Y91_N1
\writedata[34]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(34),
	o => \writedata[34]~input_o\);

-- Location: IOIBUF_X75_Y91_N8
\writedata[35]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(35),
	o => \writedata[35]~input_o\);

-- Location: M9K_X65_Y88_N0
\mem_block_rtl_0|auto_generated|ram_block1a18\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:mem_block_rtl_0|altsyncram_8j81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 257,
	port_a_logical_ram_width => 150,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \writeenable~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \mem_block_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_block_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: IOIBUF_X95_Y0_N8
\writedata[36]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(36),
	o => \writedata[36]~input_o\);

-- Location: IOIBUF_X106_Y0_N1
\writedata[37]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(37),
	o => \writedata[37]~input_o\);

-- Location: IOIBUF_X84_Y0_N15
\writedata[38]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(38),
	o => \writedata[38]~input_o\);

-- Location: IOIBUF_X97_Y0_N1
\writedata[39]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(39),
	o => \writedata[39]~input_o\);

-- Location: IOIBUF_X99_Y0_N8
\writedata[40]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(40),
	o => \writedata[40]~input_o\);

-- Location: IOIBUF_X111_Y0_N15
\writedata[41]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(41),
	o => \writedata[41]~input_o\);

-- Location: IOIBUF_X104_Y0_N8
\writedata[42]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(42),
	o => \writedata[42]~input_o\);

-- Location: IOIBUF_X95_Y0_N15
\writedata[43]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(43),
	o => \writedata[43]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\writedata[44]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(44),
	o => \writedata[44]~input_o\);

-- Location: IOIBUF_X95_Y0_N1
\writedata[45]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(45),
	o => \writedata[45]~input_o\);

-- Location: IOIBUF_X115_Y0_N8
\writedata[46]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(46),
	o => \writedata[46]~input_o\);

-- Location: IOIBUF_X97_Y0_N8
\writedata[47]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(47),
	o => \writedata[47]~input_o\);

-- Location: IOIBUF_X106_Y0_N8
\writedata[48]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(48),
	o => \writedata[48]~input_o\);

-- Location: IOIBUF_X108_Y0_N1
\writedata[49]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(49),
	o => \writedata[49]~input_o\);

-- Location: IOIBUF_X99_Y0_N1
\writedata[50]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(50),
	o => \writedata[50]~input_o\);

-- Location: IOIBUF_X108_Y0_N8
\writedata[51]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(51),
	o => \writedata[51]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\writedata[52]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(52),
	o => \writedata[52]~input_o\);

-- Location: IOIBUF_X108_Y0_N22
\writedata[53]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(53),
	o => \writedata[53]~input_o\);

-- Location: M9K_X94_Y1_N0
\mem_block_rtl_0|auto_generated|ram_block1a36\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:mem_block_rtl_0|altsyncram_8j81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 36,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 257,
	port_a_logical_ram_width => 150,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \writeenable~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \mem_block_rtl_0|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_block_rtl_0|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: IOIBUF_X117_Y64_N1
\writedata[54]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(54),
	o => \writedata[54]~input_o\);

-- Location: IOIBUF_X117_Y70_N8
\writedata[55]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(55),
	o => \writedata[55]~input_o\);

-- Location: IOIBUF_X117_Y68_N1
\writedata[56]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(56),
	o => \writedata[56]~input_o\);

-- Location: IOIBUF_X117_Y86_N1
\writedata[57]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(57),
	o => \writedata[57]~input_o\);

-- Location: IOIBUF_X117_Y70_N1
\writedata[58]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(58),
	o => \writedata[58]~input_o\);

-- Location: IOIBUF_X117_Y66_N1
\writedata[59]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(59),
	o => \writedata[59]~input_o\);

-- Location: IOIBUF_X117_Y84_N8
\writedata[60]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(60),
	o => \writedata[60]~input_o\);

-- Location: IOIBUF_X117_Y65_N8
\writedata[61]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(61),
	o => \writedata[61]~input_o\);

-- Location: IOIBUF_X117_Y65_N1
\writedata[62]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(62),
	o => \writedata[62]~input_o\);

-- Location: IOIBUF_X117_Y61_N1
\writedata[63]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(63),
	o => \writedata[63]~input_o\);

-- Location: IOIBUF_X117_Y72_N8
\writedata[64]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(64),
	o => \writedata[64]~input_o\);

-- Location: IOIBUF_X117_Y77_N8
\writedata[65]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(65),
	o => \writedata[65]~input_o\);

-- Location: IOIBUF_X117_Y81_N1
\writedata[66]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(66),
	o => \writedata[66]~input_o\);

-- Location: IOIBUF_X117_Y84_N1
\writedata[67]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(67),
	o => \writedata[67]~input_o\);

-- Location: IOIBUF_X117_Y80_N1
\writedata[68]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(68),
	o => \writedata[68]~input_o\);

-- Location: IOIBUF_X117_Y78_N1
\writedata[69]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(69),
	o => \writedata[69]~input_o\);

-- Location: IOIBUF_X117_Y62_N8
\writedata[70]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(70),
	o => \writedata[70]~input_o\);

-- Location: IOIBUF_X117_Y74_N8
\writedata[71]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(71),
	o => \writedata[71]~input_o\);

-- Location: M9K_X110_Y73_N0
\mem_block_rtl_0|auto_generated|ram_block1a54\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:mem_block_rtl_0|altsyncram_8j81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 54,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 257,
	port_a_logical_ram_width => 150,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \writeenable~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAIN_bus\,
	portaaddr => \mem_block_rtl_0|auto_generated|ram_block1a54_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_block_rtl_0|auto_generated|ram_block1a54_PORTADATAOUT_bus\);

-- Location: IOIBUF_X32_Y91_N15
\writedata[72]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(72),
	o => \writedata[72]~input_o\);

-- Location: IOIBUF_X34_Y91_N22
\writedata[73]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(73),
	o => \writedata[73]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\writedata[74]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(74),
	o => \writedata[74]~input_o\);

-- Location: IOIBUF_X39_Y91_N22
\writedata[75]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(75),
	o => \writedata[75]~input_o\);

-- Location: IOIBUF_X37_Y91_N22
\writedata[76]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(76),
	o => \writedata[76]~input_o\);

-- Location: IOIBUF_X37_Y0_N8
\writedata[77]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(77),
	o => \writedata[77]~input_o\);

-- Location: IOIBUF_X41_Y91_N1
\writedata[78]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(78),
	o => \writedata[78]~input_o\);

-- Location: IOIBUF_X37_Y91_N1
\writedata[79]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(79),
	o => \writedata[79]~input_o\);

-- Location: IOIBUF_X39_Y91_N1
\writedata[80]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(80),
	o => \writedata[80]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\writedata[81]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(81),
	o => \writedata[81]~input_o\);

-- Location: IOIBUF_X39_Y0_N8
\writedata[82]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(82),
	o => \writedata[82]~input_o\);

-- Location: IOIBUF_X37_Y91_N8
\writedata[83]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(83),
	o => \writedata[83]~input_o\);

-- Location: IOIBUF_X39_Y0_N1
\writedata[84]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(84),
	o => \writedata[84]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\writedata[85]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(85),
	o => \writedata[85]~input_o\);

-- Location: IOIBUF_X32_Y91_N22
\writedata[86]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(86),
	o => \writedata[86]~input_o\);

-- Location: IOIBUF_X39_Y91_N15
\writedata[87]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(87),
	o => \writedata[87]~input_o\);

-- Location: IOIBUF_X28_Y91_N22
\writedata[88]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(88),
	o => \writedata[88]~input_o\);

-- Location: IOIBUF_X37_Y91_N15
\writedata[89]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(89),
	o => \writedata[89]~input_o\);

-- Location: M9K_X36_Y87_N0
\mem_block_rtl_0|auto_generated|ram_block1a72\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:mem_block_rtl_0|altsyncram_8j81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 72,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 257,
	port_a_logical_ram_width => 150,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \writeenable~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAIN_bus\,
	portaaddr => \mem_block_rtl_0|auto_generated|ram_block1a72_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_block_rtl_0|auto_generated|ram_block1a72_PORTADATAOUT_bus\);

-- Location: IOIBUF_X97_Y91_N1
\writedata[90]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(90),
	o => \writedata[90]~input_o\);

-- Location: IOIBUF_X86_Y91_N1
\writedata[91]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(91),
	o => \writedata[91]~input_o\);

-- Location: IOIBUF_X106_Y91_N15
\writedata[92]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(92),
	o => \writedata[92]~input_o\);

-- Location: IOIBUF_X106_Y91_N8
\writedata[93]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(93),
	o => \writedata[93]~input_o\);

-- Location: IOIBUF_X111_Y91_N22
\writedata[94]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(94),
	o => \writedata[94]~input_o\);

-- Location: IOIBUF_X82_Y91_N8
\writedata[95]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(95),
	o => \writedata[95]~input_o\);

-- Location: IOIBUF_X97_Y91_N8
\writedata[96]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(96),
	o => \writedata[96]~input_o\);

-- Location: IOIBUF_X95_Y91_N1
\writedata[97]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(97),
	o => \writedata[97]~input_o\);

-- Location: IOIBUF_X113_Y91_N1
\writedata[98]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(98),
	o => \writedata[98]~input_o\);

-- Location: IOIBUF_X95_Y91_N8
\writedata[99]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(99),
	o => \writedata[99]~input_o\);

-- Location: IOIBUF_X101_Y91_N1
\writedata[100]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(100),
	o => \writedata[100]~input_o\);

-- Location: IOIBUF_X113_Y91_N22
\writedata[101]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(101),
	o => \writedata[101]~input_o\);

-- Location: IOIBUF_X101_Y91_N8
\writedata[102]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(102),
	o => \writedata[102]~input_o\);

-- Location: IOIBUF_X99_Y91_N1
\writedata[103]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(103),
	o => \writedata[103]~input_o\);

-- Location: IOIBUF_X104_Y91_N8
\writedata[104]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(104),
	o => \writedata[104]~input_o\);

-- Location: IOIBUF_X99_Y91_N8
\writedata[105]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(105),
	o => \writedata[105]~input_o\);

-- Location: IOIBUF_X108_Y91_N8
\writedata[106]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(106),
	o => \writedata[106]~input_o\);

-- Location: IOIBUF_X106_Y91_N1
\writedata[107]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(107),
	o => \writedata[107]~input_o\);

-- Location: M9K_X94_Y88_N0
\mem_block_rtl_0|auto_generated|ram_block1a90\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:mem_block_rtl_0|altsyncram_8j81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 90,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 257,
	port_a_logical_ram_width => 150,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \writeenable~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAIN_bus\,
	portaaddr => \mem_block_rtl_0|auto_generated|ram_block1a90_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_block_rtl_0|auto_generated|ram_block1a90_PORTADATAOUT_bus\);

-- Location: IOIBUF_X117_Y21_N1
\writedata[108]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(108),
	o => \writedata[108]~input_o\);

-- Location: IOIBUF_X117_Y38_N8
\writedata[109]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(109),
	o => \writedata[109]~input_o\);

-- Location: IOIBUF_X117_Y22_N8
\writedata[110]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(110),
	o => \writedata[110]~input_o\);

-- Location: IOIBUF_X117_Y26_N8
\writedata[111]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(111),
	o => \writedata[111]~input_o\);

-- Location: IOIBUF_X117_Y19_N8
\writedata[112]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(112),
	o => \writedata[112]~input_o\);

-- Location: IOIBUF_X117_Y29_N1
\writedata[113]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(113),
	o => \writedata[113]~input_o\);

-- Location: IOIBUF_X117_Y21_N8
\writedata[114]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(114),
	o => \writedata[114]~input_o\);

-- Location: IOIBUF_X117_Y19_N1
\writedata[115]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(115),
	o => \writedata[115]~input_o\);

-- Location: IOIBUF_X117_Y18_N1
\writedata[116]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(116),
	o => \writedata[116]~input_o\);

-- Location: IOIBUF_X117_Y17_N1
\writedata[117]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(117),
	o => \writedata[117]~input_o\);

-- Location: IOIBUF_X117_Y42_N8
\writedata[118]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(118),
	o => \writedata[118]~input_o\);

-- Location: IOIBUF_X117_Y43_N1
\writedata[119]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(119),
	o => \writedata[119]~input_o\);

-- Location: IOIBUF_X117_Y24_N8
\writedata[120]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(120),
	o => \writedata[120]~input_o\);

-- Location: IOIBUF_X117_Y23_N8
\writedata[121]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(121),
	o => \writedata[121]~input_o\);

-- Location: IOIBUF_X117_Y34_N8
\writedata[122]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(122),
	o => \writedata[122]~input_o\);

-- Location: IOIBUF_X117_Y35_N1
\writedata[123]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(123),
	o => \writedata[123]~input_o\);

-- Location: IOIBUF_X117_Y24_N1
\writedata[124]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(124),
	o => \writedata[124]~input_o\);

-- Location: IOIBUF_X117_Y22_N1
\writedata[125]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(125),
	o => \writedata[125]~input_o\);

-- Location: M9K_X110_Y27_N0
\mem_block_rtl_0|auto_generated|ram_block1a108\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:mem_block_rtl_0|altsyncram_8j81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 108,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 257,
	port_a_logical_ram_width => 150,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \writeenable~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAIN_bus\,
	portaaddr => \mem_block_rtl_0|auto_generated|ram_block1a108_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_block_rtl_0|auto_generated|ram_block1a108_PORTADATAOUT_bus\);

-- Location: IOIBUF_X19_Y0_N8
\writedata[126]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(126),
	o => \writedata[126]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\writedata[127]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(127),
	o => \writedata[127]~input_o\);

-- Location: IOIBUF_X19_Y91_N22
\writedata[128]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(128),
	o => \writedata[128]~input_o\);

-- Location: IOIBUF_X5_Y91_N15
\writedata[129]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(129),
	o => \writedata[129]~input_o\);

-- Location: IOIBUF_X24_Y91_N8
\writedata[130]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(130),
	o => \writedata[130]~input_o\);

-- Location: IOIBUF_X19_Y0_N15
\writedata[131]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(131),
	o => \writedata[131]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\writedata[132]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(132),
	o => \writedata[132]~input_o\);

-- Location: IOIBUF_X5_Y91_N22
\writedata[133]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(133),
	o => \writedata[133]~input_o\);

-- Location: IOIBUF_X8_Y91_N15
\writedata[134]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(134),
	o => \writedata[134]~input_o\);

-- Location: IOIBUF_X24_Y91_N1
\writedata[135]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(135),
	o => \writedata[135]~input_o\);

-- Location: IOIBUF_X26_Y91_N1
\writedata[136]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(136),
	o => \writedata[136]~input_o\);

-- Location: IOIBUF_X3_Y91_N15
\writedata[137]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(137),
	o => \writedata[137]~input_o\);

-- Location: IOIBUF_X19_Y91_N8
\writedata[138]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(138),
	o => \writedata[138]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\writedata[139]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(139),
	o => \writedata[139]~input_o\);

-- Location: IOIBUF_X15_Y91_N15
\writedata[140]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(140),
	o => \writedata[140]~input_o\);

-- Location: IOIBUF_X24_Y0_N15
\writedata[141]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(141),
	o => \writedata[141]~input_o\);

-- Location: IOIBUF_X8_Y91_N8
\writedata[142]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(142),
	o => \writedata[142]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\writedata[143]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(143),
	o => \writedata[143]~input_o\);

-- Location: M9K_X23_Y87_N0
\mem_block_rtl_0|auto_generated|ram_block1a126\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:mem_block_rtl_0|altsyncram_8j81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 126,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 257,
	port_a_logical_ram_width => 150,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \writeenable~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAIN_bus\,
	portaaddr => \mem_block_rtl_0|auto_generated|ram_block1a126_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_block_rtl_0|auto_generated|ram_block1a126_PORTADATAOUT_bus\);

-- Location: IOIBUF_X117_Y50_N8
\writedata[144]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(144),
	o => \writedata[144]~input_o\);

-- Location: IOIBUF_X117_Y49_N8
\writedata[145]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(145),
	o => \writedata[145]~input_o\);

-- Location: IOIBUF_X117_Y54_N1
\writedata[146]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(146),
	o => \writedata[146]~input_o\);

-- Location: IOIBUF_X117_Y51_N8
\writedata[147]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(147),
	o => \writedata[147]~input_o\);

-- Location: IOIBUF_X57_Y0_N8
\writedata[148]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(148),
	o => \writedata[148]~input_o\);

-- Location: IOIBUF_X57_Y0_N1
\writedata[149]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(149),
	o => \writedata[149]~input_o\);

-- Location: M9K_X110_Y51_N0
\mem_block_rtl_0|auto_generated|ram_block1a144\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:mem_block_rtl_0|altsyncram_8j81:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 144,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 257,
	port_a_logical_ram_width => 150,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \writeenable~input_o\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	portadatain => \mem_block_rtl_0|auto_generated|ram_block1a144_PORTADATAIN_bus\,
	portaaddr => \mem_block_rtl_0|auto_generated|ram_block1a144_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_block_rtl_0|auto_generated|ram_block1a144_PORTADATAOUT_bus\);

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

ww_readdata(32) <= \readdata[32]~output_o\;

ww_readdata(33) <= \readdata[33]~output_o\;

ww_readdata(34) <= \readdata[34]~output_o\;

ww_readdata(35) <= \readdata[35]~output_o\;

ww_readdata(36) <= \readdata[36]~output_o\;

ww_readdata(37) <= \readdata[37]~output_o\;

ww_readdata(38) <= \readdata[38]~output_o\;

ww_readdata(39) <= \readdata[39]~output_o\;

ww_readdata(40) <= \readdata[40]~output_o\;

ww_readdata(41) <= \readdata[41]~output_o\;

ww_readdata(42) <= \readdata[42]~output_o\;

ww_readdata(43) <= \readdata[43]~output_o\;

ww_readdata(44) <= \readdata[44]~output_o\;

ww_readdata(45) <= \readdata[45]~output_o\;

ww_readdata(46) <= \readdata[46]~output_o\;

ww_readdata(47) <= \readdata[47]~output_o\;

ww_readdata(48) <= \readdata[48]~output_o\;

ww_readdata(49) <= \readdata[49]~output_o\;

ww_readdata(50) <= \readdata[50]~output_o\;

ww_readdata(51) <= \readdata[51]~output_o\;

ww_readdata(52) <= \readdata[52]~output_o\;

ww_readdata(53) <= \readdata[53]~output_o\;

ww_readdata(54) <= \readdata[54]~output_o\;

ww_readdata(55) <= \readdata[55]~output_o\;

ww_readdata(56) <= \readdata[56]~output_o\;

ww_readdata(57) <= \readdata[57]~output_o\;

ww_readdata(58) <= \readdata[58]~output_o\;

ww_readdata(59) <= \readdata[59]~output_o\;

ww_readdata(60) <= \readdata[60]~output_o\;

ww_readdata(61) <= \readdata[61]~output_o\;

ww_readdata(62) <= \readdata[62]~output_o\;

ww_readdata(63) <= \readdata[63]~output_o\;

ww_readdata(64) <= \readdata[64]~output_o\;

ww_readdata(65) <= \readdata[65]~output_o\;

ww_readdata(66) <= \readdata[66]~output_o\;

ww_readdata(67) <= \readdata[67]~output_o\;

ww_readdata(68) <= \readdata[68]~output_o\;

ww_readdata(69) <= \readdata[69]~output_o\;

ww_readdata(70) <= \readdata[70]~output_o\;

ww_readdata(71) <= \readdata[71]~output_o\;

ww_readdata(72) <= \readdata[72]~output_o\;

ww_readdata(73) <= \readdata[73]~output_o\;

ww_readdata(74) <= \readdata[74]~output_o\;

ww_readdata(75) <= \readdata[75]~output_o\;

ww_readdata(76) <= \readdata[76]~output_o\;

ww_readdata(77) <= \readdata[77]~output_o\;

ww_readdata(78) <= \readdata[78]~output_o\;

ww_readdata(79) <= \readdata[79]~output_o\;

ww_readdata(80) <= \readdata[80]~output_o\;

ww_readdata(81) <= \readdata[81]~output_o\;

ww_readdata(82) <= \readdata[82]~output_o\;

ww_readdata(83) <= \readdata[83]~output_o\;

ww_readdata(84) <= \readdata[84]~output_o\;

ww_readdata(85) <= \readdata[85]~output_o\;

ww_readdata(86) <= \readdata[86]~output_o\;

ww_readdata(87) <= \readdata[87]~output_o\;

ww_readdata(88) <= \readdata[88]~output_o\;

ww_readdata(89) <= \readdata[89]~output_o\;

ww_readdata(90) <= \readdata[90]~output_o\;

ww_readdata(91) <= \readdata[91]~output_o\;

ww_readdata(92) <= \readdata[92]~output_o\;

ww_readdata(93) <= \readdata[93]~output_o\;

ww_readdata(94) <= \readdata[94]~output_o\;

ww_readdata(95) <= \readdata[95]~output_o\;

ww_readdata(96) <= \readdata[96]~output_o\;

ww_readdata(97) <= \readdata[97]~output_o\;

ww_readdata(98) <= \readdata[98]~output_o\;

ww_readdata(99) <= \readdata[99]~output_o\;

ww_readdata(100) <= \readdata[100]~output_o\;

ww_readdata(101) <= \readdata[101]~output_o\;

ww_readdata(102) <= \readdata[102]~output_o\;

ww_readdata(103) <= \readdata[103]~output_o\;

ww_readdata(104) <= \readdata[104]~output_o\;

ww_readdata(105) <= \readdata[105]~output_o\;

ww_readdata(106) <= \readdata[106]~output_o\;

ww_readdata(107) <= \readdata[107]~output_o\;

ww_readdata(108) <= \readdata[108]~output_o\;

ww_readdata(109) <= \readdata[109]~output_o\;

ww_readdata(110) <= \readdata[110]~output_o\;

ww_readdata(111) <= \readdata[111]~output_o\;

ww_readdata(112) <= \readdata[112]~output_o\;

ww_readdata(113) <= \readdata[113]~output_o\;

ww_readdata(114) <= \readdata[114]~output_o\;

ww_readdata(115) <= \readdata[115]~output_o\;

ww_readdata(116) <= \readdata[116]~output_o\;

ww_readdata(117) <= \readdata[117]~output_o\;

ww_readdata(118) <= \readdata[118]~output_o\;

ww_readdata(119) <= \readdata[119]~output_o\;

ww_readdata(120) <= \readdata[120]~output_o\;

ww_readdata(121) <= \readdata[121]~output_o\;

ww_readdata(122) <= \readdata[122]~output_o\;

ww_readdata(123) <= \readdata[123]~output_o\;

ww_readdata(124) <= \readdata[124]~output_o\;

ww_readdata(125) <= \readdata[125]~output_o\;

ww_readdata(126) <= \readdata[126]~output_o\;

ww_readdata(127) <= \readdata[127]~output_o\;

ww_readdata(128) <= \readdata[128]~output_o\;

ww_readdata(129) <= \readdata[129]~output_o\;

ww_readdata(130) <= \readdata[130]~output_o\;

ww_readdata(131) <= \readdata[131]~output_o\;

ww_readdata(132) <= \readdata[132]~output_o\;

ww_readdata(133) <= \readdata[133]~output_o\;

ww_readdata(134) <= \readdata[134]~output_o\;

ww_readdata(135) <= \readdata[135]~output_o\;

ww_readdata(136) <= \readdata[136]~output_o\;

ww_readdata(137) <= \readdata[137]~output_o\;

ww_readdata(138) <= \readdata[138]~output_o\;

ww_readdata(139) <= \readdata[139]~output_o\;

ww_readdata(140) <= \readdata[140]~output_o\;

ww_readdata(141) <= \readdata[141]~output_o\;

ww_readdata(142) <= \readdata[142]~output_o\;

ww_readdata(143) <= \readdata[143]~output_o\;

ww_readdata(144) <= \readdata[144]~output_o\;

ww_readdata(145) <= \readdata[145]~output_o\;

ww_readdata(146) <= \readdata[146]~output_o\;

ww_readdata(147) <= \readdata[147]~output_o\;

ww_readdata(148) <= \readdata[148]~output_o\;

ww_readdata(149) <= \readdata[149]~output_o\;
END structure;


