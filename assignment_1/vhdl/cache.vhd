-- Loren Lugosch
-- 260404057

-- This VHD describes a cache. Hereafter "MEM" = "main memory".

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

-- cache entity adapted from given memory description entity --
ENTITY cache IS
	GENERIC(
		word_length : INTEGER := 32;
		address_length : INTEGER := 32;
		associativity : INTEGER := 1; --two-way associative?--
		index_length : INTEGER := 8; --256 cache lines means 8 bits of index--
		tag_length : INTEGER := 22; --32 address bits minus 10 = 22 tag bits--
		offset_length : INTEGER := 2; --4 words per line means 2 bits req'd to address a word--
		number_of_cache_blocks : INTEGER := 256
	);
	PORT(
		clock : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		
		-- Avalon interface --
		
		-- CPU/cache bus
		s_addr : IN STD_LOGIC_VECTOR (31 downto 0);
		s_read : IN STD_LOGIC;
		s_readdata : out STD_LOGIC_VECTOR (word_length-1 downto 0);
		s_write : IN STD_LOGIC;
		s_writedata : IN STD_LOGIC_VECTOR (word_length-1 downto 0);
		s_waitrequest : OUT STD_LOGIC; -- cache tells CPU to keep waiting
		
		-- cache/MEM bus
		m_addr : out std_logic_vector (31 downto 0);
		m_read : out std_logic;
		m_readdata : in STD_LOGIC_VECTOR (word_length-1 downto 0);
		m_write : out std_logic;
		m_writedata : out STD_LOGIC_VECTOR (word_length-1 downto 0);
		m_waitrequest : in std_logic -- MEM tells cache to keep waiting
	);
END cache;

ARCHITECTURE arch OF cache IS
	-- FSM signals
	type state_type is (RST, IDLE, READ_START, READ_FROM_MEM, READ_FLUSH_TO_MEM, WRITE_START, DONE);
	signal state : state_type;
	signal out_count : integer range 0 to 3; -- used during block reads/writes
	
	-- bus for reads and writes to cache SRAM
	-- CPU or MEM can become master
	signal writedata : STD_LOGIC_VECTOR (word_length-1 downto 0);
	signal readdata : STD_LOGIC_VECTOR (word_length-1 downto 0);
  
	-- address decoding signals --
	SIGNAL s_addr_tag : STD_LOGIC_VECTOR(tag_length-1 downto 0);
	SIGNAL s_addr_index : INTEGER RANGE 0 to 255; --STD_LOGIC_VECTOR(index_length-1 downto 0); 
	SIGNAL s_addr_offset : STD_LOGIC_VECTOR(1 downto 0);
	
	-- readdata for each word SRAM --
	SIGNAL readdata_zero : STD_LOGIC_VECTOR(word_length-1 downto 0);
	SIGNAL readdata_one : STD_LOGIC_VECTOR(word_length-1 downto 0);
	SIGNAL readdata_two : STD_LOGIC_VECTOR(word_length-1 downto 0);
	SIGNAL readdata_three : STD_LOGIC_VECTOR(word_length-1 downto 0);
	
	-- select a word --
	signal word_select : std_logic_vector(1 downto 0);
	
	-- readdata for tag, dirty, valid --
	SIGNAL readdata_tag : STD_LOGIC_VECTOR(tag_length+2-1 downto 0);
	
	-- signals to make changes to tag/valid/dirty --
	SIGNAL writedata_tag : STD_LOGIC_VECTOR(tag_length+2-1 downto 0);
	
	-- signals for selecting a word to write to --
	SIGNAL write_tag : STD_LOGIC;
	SIGNAL writedata_zero : STD_LOGIC;
	SIGNAL writedata_one : STD_LOGIC;
	SIGNAL writedata_two : STD_LOGIC;
	SIGNAL writedata_three : STD_LOGIC;
	
	-- cache lines --
	COMPONENT cache_SRAM
		GENERIC (
			SRAM_width : INTEGER; -- \
			number_of_rows : INTEGER
		);
		PORT (
			clock : in STD_LOGIC;
			writedata : in STD_LOGIC_VECTOR(SRAM_width-1 downto 0);
			address : in INTEGER RANGE 0 to number_of_cache_blocks-1;
			writeenable : in STD_LOGIC;
			readdata : out STD_LOGIC_VECTOR(SRAM_width-1 downto 0)
		);
	END COMPONENT;
	
	BEGIN
	  -- decode address --
		s_addr_tag <= s_addr(address_length-1 downto address_length-tag_length);
		s_addr_index <= to_integer(unsigned(s_addr(address_length-tag_length-1 downto address_length-tag_length-index_length)));
		s_addr_offset <= s_addr(offset_length-1 downto 0);
		
		-- select word to write --
		writedata_zero <= s_write and not word_select(1) and not word_select(0);
		writedata_one <= s_write and not word_select(1) and word_select(0);
		writedata_two <= s_write and word_select(1) and not word_select(0);
		writedata_three <= s_write and word_select(1) and word_select(0);
		
		-- SRAMs are instantiated as components here
		-- see cache_SRAM.vhd for SRAM implementation details
		tag_SRAM: cache_SRAM 
									GENERIC MAP 
										(SRAM_width => tag_length+2, --tag, dirty bit, valid bit
										number_of_rows => number_of_cache_blocks)
									PORT MAP 
										(clock, 
										writedata_tag, 
										s_addr_index, 
										write_tag, 
										readdata_tag);
									
		word_zero_SRAM: cache_SRAM 
									GENERIC MAP 
										(SRAM_width => word_length, 
										number_of_rows => number_of_cache_blocks)
									PORT MAP 
										(clock, 
										writedata, 
										s_addr_index, 
										writedata_zero, 
										readdata_zero);
									
		word_one_SRAM: cache_SRAM
									GENERIC MAP 
										(SRAM_width => word_length, 
										number_of_rows => number_of_cache_blocks)
									PORT MAP 
										(clock, 
										writedata, 
										s_addr_index, 
										writedata_one, 
										readdata_one);
									
		word_two_SRAM: cache_SRAM
									GENERIC MAP 
										(SRAM_width => word_length, 
										number_of_rows => number_of_cache_blocks)
									PORT MAP 
										(clock,
										writedata, 
										s_addr_index, 
										writedata_two, 
										readdata_two);
									
		word_three_SRAM: cache_SRAM
									GENERIC MAP 
										(SRAM_width => word_length, 
										number_of_rows => number_of_cache_blocks)
									PORT MAP 
										(clock, 
										writedata, 
										s_addr_index, 
										writedata_three, 
										readdata_three);
					
		-- select which SRAM's output data we want to read
		with word_select select
			readdata <= readdata_zero when "00",
						   readdata_one when "01",
						   readdata_two when "10",
						   readdata_three when "11",
						   X"00000000" when others;
		
		-- FSM for controlling datapath/interface --
		cache_controller : process(clock, reset)
		begin
			if reset = '1' then
				state <= RST;
				
			elsif (clock'event and clock = '1') then
				case state is
					when RST =>
						out_count <= 0;
						state <= IDLE;
				
					when IDLE =>
						-- CPU waitrequest high until DONE
						s_waitrequest <= '1';
					
						-- read request
						if s_read = '1' then
							state <= READ_START;
							
						-- write request
						elsif s_write = '1' then
							state <= WRITE_START;
						else
							state <= IDLE;
						end if;
						
						
					when READ_START =>
						-- check tag (tag read happened during previous CC)
						
						-- tag equal
						if (readdata_tag(tag_length-1 downto 0) = s_addr_tag) then
							
							-- valid
							if (readdata_tag(tag_length+1) = '1') then
								-- hit!
								state <= DONE;
							
							-- invalid
							else
								-- compulsory miss
								-- need to read block from MEM
								state <= READ_FROM_MEM;
							
							end if;
							
						-- tag not equal
						else
														
							-- valid (and dirty)
							if (readdata_tag(tag_length+1) = '1' and readdata_tag(tag_length+1) = '0') then
								-- conflict miss
								-- need to flush block to MEM
								state <= READ_FLUSH_TO_MEM;
							
							-- invalid
							else
								-- compulsory miss / conflict miss but not dirty
								-- need to read block from MEM
								state <= READ_FROM_MEM;
							
							end if;
							
						end if;
						
					when READ_FROM_MEM =>
						-- read four words from the right place in MEM
						-- into the correct cache block
						
						-- set the MEM address to the address of the first
						-- word in the block of s_addr + the count
						-- ("out_count" is how many words we've read in)
						m_addr <= std_logic_vector(to_unsigned(to_integer(unsigned(s_addr(31 downto 2)&"00")),m_addr'length) + out_count);
						
						-- request a read from MEM
						m_read <= '1';
						
						-- wait until MEM deasserts m_waitrequest
						-- then:
						--      -choose the appropriate word's SRAM
						--      -set its write to high
						--      -increment out_count
						if m_waitrequest = '0' then
							word_select <= std_logic_vector(to_unsigned(out_count,word_select'length));
							out_count <= out_count + 1;
						end if;
						
						-- MEM is SRAM write bus master
						writedata <= m_readdata;
						
						-- if 4 words read, we're done
						-- otherwise keep reading
						if out_count > 3 then
							state <= DONE;
						else
							state <= READ_FROM_MEM;
						end if;
					
					when READ_FLUSH_TO_MEM =>
						--...
						state <= READ_FROM_MEM;
						
					when WRITE_START =>
						state <= DONE;
					
					when DONE =>
						-- deassert CPU waitrequest for one CC
						s_waitrequest <= '0';
						state <= IDLE;
				end case;
			end if;
		end process;
	
END arch;