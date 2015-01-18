-- Loren Lugosch
-- 260404057

-- This VHD describes a cache.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

-- cache entity adapted from given memory description entity --
ENTITY cache IS
	GENERIC(
		word_length : INTEGER := 32;
		address_length : INTEGER := 32;
		associativity : INTEGER := 2; --two-way associative--
		index_length : INTEGER := 8; --256 cache lines means 8 bits of index--
		tag_length : INTEGER := 22; --32 address bits minus 10 = 22 tag bits--
		offset_length : INTEGER := 2; --4 words per line means 2 bits req'd to address a word--
		--SRAM_width : INTEGER := 150;
		number_of_cache_lines : INTEGER := 256
	);
	PORT(
		clock : IN STD_LOGIC;
		writedata : IN STD_LOGIC_VECTOR (word_length-1 downto 0);
		address : IN STD_LOGIC_VECTOR (address_length-1 downto 0);
		memwrite : IN STD_LOGIC;
		memread : IN STD_LOGIC;
		readdata : OUT STD_LOGIC_VECTOR (word_length-1 downto 0);
		waitrequest : OUT STD_LOGIC -- tells FSM to keep waiting--
	);
END cache;

ARCHITECTURE arch OF cache IS
	-- address decoding signals --
	SIGNAL input_tag : STD_LOGIC_VECTOR(tag_length-1 downto 0);
	SIGNAL input_index : INTEGER;--STD_LOGIC_VECTOR(index_length-1 downto 0);
	SIGNAL input_offset : STD_LOGIC_VECTOR(1 downto 0);
	
	-- readdata for each word SRAM --
	SIGNAL readdata_one : STD_LOGIC_VECTOR(word_length-1 downto 0);
	SIGNAL readdata_two : STD_LOGIC_VECTOR(word_length-1 downto 0);
	SIGNAL readdata_three : STD_LOGIC_VECTOR(word_length-1 downto 0);
	SIGNAL readdata_four : STD_LOGIC_VECTOR(word_length-1 downto 0);
	
	-- readdata for tag, dirty, valid --
	SIGNAL readdata_tag : STD_LOGIC_VECTOR(word_length-1 downto 0);
	
	-- memwrites select which word to write --
	
	-- cache lines --
	COMPONENT cache_SRAM
		GENERIC (
			SRAM_width : INTEGER; -- \
			number_of_rows : INTEGER
		);
		PORT (
			clock : in STD_LOGIC;
			writedata : in STD_LOGIC_VECTOR(SRAM_width-1 downto 0);
			address : in INTEGER RANGE 0 to number_of_cache_lines-1;
			writeenable : in STD_LOGIC;
			readdata : out STD_LOGIC_VECTOR(SRAM_width-1 downto 0)
		);
	END COMPONENT;
	
	BEGIN
		input_tag <= address(address_length-1 downto address_length-tag_length);
		input_index <= to_integer(unsigned(address(address_length-tag_length-1 downto address_length-tag_length-index_length)));
		input_offset <= address(offset_length-1 downto 0);
		
		-- tag SRAM contains: tag, dirty bit, valid bit
		tag_SRAM: cache_SRAM GENERIC MAP (SRAM_width => word_length, number_of_rows => number_of_cache_lines)
									PORT MAP (clock, writedata, input_index, memwrite, readdata_tag);
		word_one_SRAM: cache_SRAM GENERIC MAP (SRAM_width => word_length, number_of_rows => number_of_cache_lines)
									PORT MAP (clock, writedata, input_index, memwrite, readdata_one);
		word_two_SRAM: cache_SRAM GENERIC MAP (SRAM_width => word_length, number_of_rows => number_of_cache_lines)
									PORT MAP (clock, writedata, input_index, memwrite, readdata_two);
		word_three_SRAM: cache_SRAM GENERIC MAP (SRAM_width => word_length, number_of_rows => number_of_cache_lines)
									PORT MAP (clock, writedata, input_index, memwrite, readdata_three);
		word_four_SRAM: cache_SRAM GENERIC MAP (SRAM_width => word_length, number_of_rows => number_of_cache_lines)
									PORT MAP (clock, writedata, input_index, memwrite, readdata_four);
		
		-- "input_offset" represents which word of the cache line we want --
		-- use it to select which SRAM's output data we want to read --
		with input_offset select
			readdata <= readdata_one when "00",
						   readdata_two when "01",
						   readdata_three when "10",
						   readdata_four when "11",
						   X"00000000" when others;
		
		-- dummy output to test address decoding --
		--readdata <= X"12345678";
		waitrequest <= '1';
	
END arch;