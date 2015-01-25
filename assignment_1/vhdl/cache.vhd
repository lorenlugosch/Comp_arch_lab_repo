-- Loren Lugosch
-- 260404057

-- This VHD describes a cache. Hereafter "MEM" = "main memory".

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- cache entity adapted from given memory description entity --
entity cache is
	generic(
		word_length : integer := 32;
		address_length : integer := 32; -- MSB is I/O
		associativity : integer := 1; --two-way associative?--
		index_length : integer := 8; --256 cache lines means 8 bits of index--
		tag_length : integer := 22; --32 address bits minus 10 = 22 tag bits--
		offset_length : integer := 2; --4 words per line means 2 bits req'd to address a word--
		number_of_cache_blocks : integer := 256
	);
	port(
		clock : in std_logic;
		reset : in std_logic;
		
		-- Avalon interface --
		
		-- CPU/cache bus
		s_addr : in std_logic_vector (31 downto 0);
		s_read : in std_logic;
		s_readdata : out std_logic_vector (word_length-1 downto 0);
		s_write : in std_logic;
		s_writedata : in std_logic_vector (word_length-1 downto 0);
		s_waitrequest : out std_logic; -- cache tells CPU to keep waiting
		
		-- cache/MEM bus
		m_addr : out integer range 0 to 2147483647; --2^31-1, MSB from s_addr used for I/O --out std_logic_vector (31 downto 0);
		m_read : out std_logic;
		m_readdata : in std_logic_vector (word_length-1 downto 0);
		m_write : out std_logic;
		m_writedata : out std_logic_vector (word_length-1 downto 0);
		m_waitrequest : in std_logic -- MEM tells cache to keep waiting
	);
end cache;

architecture arch of cache is
	-- FSM signals
	type state_type is (RST, IDLE, READ_START, READ_FROM_MEM, READ_FROM_MEM_DEASSERT, READ_FLUSH_TO_MEM, WRITE_START, DONE);
	signal state : state_type;
	signal out_count : integer range 0 to 3; -- used during block reads/writes
	
	-- bus for reads and writes to cache SRAM
	-- CPU or MEM can become master
	signal writedata : std_logic_vector (word_length-1 downto 0);
	signal readdata : std_logic_vector (word_length-1 downto 0);
  
	-- address decoding signals --
	signal s_addr_tag : std_logic_vector(tag_length-1 downto 0);
	signal s_addr_index : integer range 0 to 255; --std_logic_vector(index_length-1 downto 0); 
	signal s_addr_offset : std_logic_vector(1 downto 0);
	
	-- readdata for each word SRAM --
	signal readdata_zero : std_logic_vector(word_length-1 downto 0);
	signal readdata_one : std_logic_vector(word_length-1 downto 0);
	signal readdata_two : std_logic_vector(word_length-1 downto 0);
	signal readdata_three : std_logic_vector(word_length-1 downto 0);
	
	-- select a word --
	signal word_select : std_logic_vector(2 downto 0);
	
	-- readdata for tag, dirty, valid --
	signal readdata_tag : std_logic_vector(tag_length+2-1 downto 0);
	
	-- signals to make changes to tag/valid/dirty --
	signal writedata_tag : std_logic_vector(tag_length+2-1 downto 0);
	
	-- signals for selecting a word to write to --
	signal write_tag : std_logic;
	signal write_zero : std_logic;
	signal write_one : std_logic;
	signal write_two : std_logic;
	signal write_three : std_logic;
	
	-- cache lines --
	component cache_sram
		generic (
			SRAM_width : INTEGER; -- \
			number_of_rows : INTEGER
		);
		port (
			clock : in std_logic;
			writedata : in std_logic_vector(SRAM_width-1 downto 0);
			address : in integer range 0 to number_of_cache_blocks-1;
			writeenable : in std_logic;
			readdata : out std_logic_vector(SRAM_width-1 downto 0)
		);
	end component;
	
	begin
	  -- decode address --
		s_addr_tag <= s_addr(address_length-1 downto address_length-tag_length);
		s_addr_index <= to_integer(unsigned(s_addr(address_length-tag_length-1 downto address_length-tag_length-index_length)));
		s_addr_offset <= s_addr(offset_length-1 downto 0);
		
		-- select word to write --
		-- (MSB of "word_select" allows write only when data to be written are valid)
		write_zero <= word_select(2) and not word_select(1) and not word_select(0);
		write_one <= word_select(2) and not word_select(1) and word_select(0);
		write_two <= word_select(2) and word_select(1) and not word_select(0);
		write_three <= word_select(2) and word_select(1) and word_select(0);
		
		-- select which SRAM's output data we want to read
		with word_select select
			readdata <= readdata_zero when "100",
						   readdata_one when "101",
						   readdata_two when "110",
						   readdata_three when "111",
						   X"00000000" when others;
		
		-- SRAMs are instantiated as components here
		-- see cache_SRAM.vhd for SRAM implementation details
		tag_SRAM: cache_SRAM 
									generic map 
										(SRAM_width => tag_length+2, --tag, dirty bit, valid bit
										number_of_rows => number_of_cache_blocks)
									port map
										(clock => clock, 
										writedata => writedata_tag, 
										address => s_addr_index, 
										writeenable => write_tag, 
										readdata => readdata_tag);
									
		word_zero_SRAM: cache_SRAM 
									generic map
										(SRAM_width => word_length, 
										number_of_rows => number_of_cache_blocks)
									port map
										(clock => clock, 
										writedata => writedata, 
										address => s_addr_index, 
										writeenable => write_zero, 
										readdata => readdata_zero);
									
		word_one_SRAM: cache_SRAM
									generic map
										(SRAM_width => word_length, 
										number_of_rows => number_of_cache_blocks)
									port map
										(clock => clock, 
										writedata => writedata, 
										address => s_addr_index, 
										writeenable => write_one, 
										readdata => readdata_one);
									
		word_two_SRAM: cache_SRAM
									generic map
										(SRAM_width => word_length, 
										number_of_rows => number_of_cache_blocks)
									port map
										(clock => clock,
										writedata => writedata, 
										address => s_addr_index, 
										writeenable => write_two, 
										readdata => readdata_two);
									
		word_three_SRAM: cache_SRAM
									generic map
										(SRAM_width => word_length, 
										number_of_rows => number_of_cache_blocks)
									port map 
										(clock => clock, 
										writedata => writedata, 
										address => s_addr_index, 
										writeenable => write_three, 
										readdata => readdata_three);
		
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
								-- choose appropriate word based on
								-- address offset, then go to DONE
								-- (word appears on s_readdata in next CC)
								s_readdata <= readdata;
								word_select <= '1' & s_addr_offset;
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
								m_read <= '1'; -- needs to be set high before next CC
							end if;
							
						end if;
						
					when READ_FROM_MEM =>
						-- read four words from the right place in MEM
						-- into the correct cache block
						
						-- set the MEM address to the address of the first
						-- word in the block of s_addr + the count
						-- ("out_count" is how many words we've read in)
						m_addr <= to_integer(unsigned(s_addr(31-1 downto 2)&"00")) + out_count;--std_logic_vector(to_unsigned(to_integer(unsigned(s_addr(31 downto 2)&"00")),m_addr'length) + out_count); --
						
						-- wait until MEM deasserts m_waitrequest
						-- then:
						--      -choose the appropriate word's SRAM
						--      -set its write bit to high using word_select
						--      -increment out_count (happens on next CC)
						if m_waitrequest = '0' then
							word_select <= '1' & std_logic_vector(to_unsigned(out_count,word_select'length-1));
							writedata <= m_readdata;
							out_count <= out_count + 1;
							state <= READ_FROM_MEM_DEASSERT;
						else
							-- make sure no SRAMs get written to unless MEM data is valid
							word_select <= "000";
						end if;
						
						-- if 4 words read, we're done,
						-- and we can mark valid/not dirty
						-- otherwise keep reading
						if out_count > 3 then
							m_read <= '0';
							write_tag <= '1';
							writedata_tag <= "10" & readdata_tag(tag_length-1 downto 0);
							state <= DONE;
						else
						  m_read <= '1';
							--state <= READ_FROM_MEM;
						end if;
						
					-- the reading process block in
				  -- memory.vhd is only triggered by 
				  -- memread events, so we need to deassert
				  -- and then reassert m_read
					when READ_FROM_MEM_DEASSERT =>
					  m_read <= '0';
					  state <= READ_FROM_MEM;
					
					when READ_FLUSH_TO_MEM =>
						
						
						
						
						------ start here ------
						
						
						
						
						state <= READ_FROM_MEM;
						
					when WRITE_START =>
						-- write no allocate
						m_write <= '1';
						m_writedata <= s_writedata;
						m_addr <= to_integer(unsigned(s_addr(31-1 downto 0)));
						if m_waitrequest = '0' then
							state <= DONE;
						else
							state <= WRITE_START;
						end if;
					
					when DONE =>
						-- deassert CPU waitrequest for one CC
						s_waitrequest <= '0';
						m_write <= '0';
						word_select <= "000";
						write_tag <= '0';
						state <= IDLE;
				end case;
			end if;
		end process;
	
end arch;