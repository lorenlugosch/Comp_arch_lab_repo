-- Loren Lugosch
-- 260404057

-- This VHD describes an SRAM to be used as the memory of a 4kB cache.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY cache_SRAM IS
	GENERIC(
		SRAM_width : INTEGER; -- \
		number_of_rows : INTEGER
	);
	PORT(
		clock : in STD_LOGIC;
		writedata : in STD_LOGIC_VECTOR(SRAM_width-1 downto 0);
		address : in INTEGER RANGE 0 to number_of_rows-1;
		writeenable : in STD_LOGIC;
		readdata : out STD_LOGIC_VECTOR(SRAM_width-1 downto 0)
	);
END cache_SRAM;

-- Inferred memory SRAM adapted from Altera examples --
ARCHITECTURE arch OF cache_SRAM IS
	TYPE MEM IS ARRAY(0 to number_of_rows) OF STD_LOGIC_VECTOR(SRAM_width-1 downto 0);
	SIGNAL mem_block : MEM;
	
BEGIN
	PROCESS (clock)
	BEGIN
		-- on rising clock edge, write data if write enabled
		-- and spit out data at that address whether read or write
		if (clock'event AND clock = '1') then
			if (writeenable = '1') then
				mem_block(address) <= writedata;
			end if;
			
			readdata <= mem_block(address);
		end if;
	END PROCESS;

END arch;