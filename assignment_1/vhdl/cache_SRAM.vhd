-- Loren Lugosch
-- 260404057

-- This VHD describes an SRAM to be used as the memory of a 4kB cache.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cache_SRAM is
	generic(
		SRAM_width : integer := 32;-- default needed
		number_of_rows : integer := 256
	);
	port(
		clock : in std_logic;
		writedata : in std_logic_vector(SRAM_width-1 downto 0);
		address : in integer range 0 to number_of_rows-1;
		writeenable : in std_logic;
		readdata : out std_logic_vector(SRAM_width-1 downto 0)
	);
end cache_SRAM;

-- inferred memory SRAM adapted from altera examples --
architecture arch of cache_SRAM is
	type MEM is array(0 to number_of_rows) of std_logic_vector(SRAM_width-1 downto 0);
	signal mem_block : MEM;
	signal read_address_reg : integer range 0 to number_of_rows-1;
	
begin
	process (clock)
	begin
		if (clock'event and clock = '1') then
			if (writeenable = '1') then
				mem_block(address) <= writedata;
			end if;
			
			read_address_reg <= address;
		end if;
	end process;
	readdata <= mem_block(read_address_reg);

end arch;