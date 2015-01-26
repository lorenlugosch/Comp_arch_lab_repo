-- Loren Lugosch
-- 260404057

-- This VHD describes a cache. Hereafter, "MEM" = "main memory".

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- cache entity adapted from given memory description entity --
entity cache is
	generic(
		word_length : integer := 32;
		address_length : integer := 32; -- MSB is I/O
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
	
	-- bus for reads and writes to cache SRAM
	-- along with transaction codes
	-- "writedata" can connect to s_writedata or m_readdata
	-- "readdata" can connect to s_readdata or m_writedata
	signal writedata : std_logic_vector (word_length-1 downto 0);
	signal readdata : std_logic_vector (word_length-1 downto 0);
	signal transaction : std_logic_vector(2 downto 0);
	constant cache_to_CPU : std_logic_vector(2 downto 0) := "000";
	constant cache_to_MEM : std_logic_vector(2 downto 0) := "001";
	constant CPU_to_cache : std_logic_vector(2 downto 0) := "010";
	constant MEM_to_cache : std_logic_vector(2 downto 0) := "011";
	constant CPU_to_MEM : std_logic_vector(2 downto 0) := "100";
	constant MEM_to_CPU : std_logic_vector(2 downto 0) := "101";
	constant NO_TRANSACTION : std_logic_vector(2 downto 0) := "111";
  
	-- address decoding signals --
	signal s_addr_tag : std_logic_vector(tag_length-1 downto 0);
	signal s_addr_index : integer range 0 to 255; --std_logic_vector(index_length-1 downto 0); 
	signal s_addr_offset : std_logic_vector(1 downto 0);
	
	-- readdata for each word SRAM --
	signal readdata_zero : std_logic_vector(word_length-1 downto 0);
	signal readdata_one : std_logic_vector(word_length-1 downto 0);
	signal readdata_two : std_logic_vector(word_length-1 downto 0);
	signal readdata_three : std_logic_vector(word_length-1 downto 0);
	
	-- determines which word's SRAM is read/written --
	signal word_select : std_logic_vector(1 downto 0);
	
	-- tag, dirty, valid bits --
	signal readdata_tag : std_logic_vector(tag_length+2-1 downto 0);
	
	-- signals to make changes to tag/valid/dirty --
	signal writedata_tag : std_logic_vector(tag_length+2-1 downto 0);
	
	-- signals for selecting a word to write to --
	signal cache_write_enable : std_logic;
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
	
	component cache_FSM is
		generic (
			word_length : integer := 32;
			address_length : integer := 32; -- MSB is I/O
			index_length : integer := 8; --256 cache lines means 8 bits of index--
			tag_length : integer := 22; --32 address bits minus 10 = 22 tag bits--
			offset_length : integer := 2; --4 words per line means 2 bits req'd to address a word--
			number_of_cache_blocks : integer := 256
		);
		port (
			clock : in std_logic;
			reset : in std_logic;
			readdata_tag : in std_logic_vector(tag_length+1 downto 0);
		
			-- output control signals
			transaction : out std_logic_vector(2 downto 0);
			word_select : out std_logic_vector(1 downto 0);
			write_tag : out std_logic;
			writedata_tag : out std_logic_vector(tag_length+1 downto 0);
			
			-- Avalon interface --
			
			-- CPU/cache bus
			s_addr : in std_logic_vector (31 downto 0);
			s_read : in std_logic;
			s_write : in std_logic;
			s_waitrequest : out std_logic; -- cache tells CPU to keep waiting
			
			-- cache/MEM bus
			m_addr : out integer range 0 to 2147483647; --2^31-1, MSB from s_addr used for I/O --out std_logic_vector (31 downto 0);
			m_read : out std_logic;
			m_write : out std_logic;
			m_waitrequest : in std_logic -- MEM tells cache to keep waiting
		);
	end component;
	
	begin
	  -- decode address --
		s_addr_tag <= s_addr(address_length-1 downto address_length-tag_length);
		s_addr_index <= to_integer(unsigned(s_addr(address_length-tag_length-1 downto address_length-tag_length-index_length)));
		s_addr_offset <= s_addr(offset_length-1 downto 0);
		
		-- if CPU_to_cache (010) or MEM_to_cache (011), enable cache writes
		cache_write_enable <= not transaction(2) and transaction(1);
		
		-- select word to write --
		-- (MSB of "word_select" allows write only when data to be written are valid)
		write_zero <= cache_write_enable and not word_select(1) and not word_select(0);--word_select(2) and
		write_one <= cache_write_enable and not word_select(1) and word_select(0);--word_select(2) and 
		write_two <= cache_write_enable and word_select(1) and not word_select(0);--word_select(2) and 
		write_three <= cache_write_enable and word_select(1) and word_select(0);--word_select(2) and 
		
		-- select word SRAM
		with word_select select
			readdata <= readdata_zero when "00",
						   readdata_one when "01",
						   readdata_two when "10",
						   readdata_three when "11",
						   "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" when others;
						   
		-- select source for writes to cache SRAM
		with transaction select
		  writedata <= s_writedata when CPU_to_cache,
		           m_readdata when MEM_to_cache,
		           "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" when others;
		            
		-- select destination for reads from cache SRAM
		with transaction select
		  s_readdata <= readdata when cache_to_CPU,
		           m_readdata when MEM_to_CPU,
		           "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" when others;
		
		-- select source for writes to MEM
		with transaction select   
		  m_writedata <= readdata when cache_to_MEM,
		           s_writedata when CPU_to_MEM,
		           "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" when others;
		  
		
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
		cache_controller: cache_FSM
										port map (
											clock => clock,
											reset => reset,
											readdata_tag => readdata_tag,
										
											-- output control signals
											transaction => transaction,
											word_select => word_select,
											write_tag => write_tag,
											writedata_tag => writedata_tag,
											
											-- Avalon interface --
											
											-- CPU/cache bus
											s_addr => s_addr,
											s_read => s_read,
											s_write => s_write,
											s_waitrequest => s_waitrequest,
											
											-- cache/MEM bus
											m_addr => m_addr,
											m_read => m_read,
											m_write => m_write,
											m_waitrequest => m_waitrequest
										);
				
end arch;