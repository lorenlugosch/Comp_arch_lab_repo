-- Loren Lugosch
-- 260404057


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY cache_tb IS
END cache_tb;

ARCHITECTURE behavior OF cache_tb IS

	COMPONENT cache IS
		GENERIC(
			word_length : integer := 32;
			address_length : integer := 32;
			associativity : integer := 1; --two-way associative?--
			index_length : integer := 8; --256 cache lines means 8 bits of index--
			tag_length : integer := 22; --32 address bits minus 10 = 22 tag bits--
			offset_length : integer := 2; --4 words per line means 2 bits req'd to address a word--
			number_of_cache_blocks : integer := 256
		);
		PORT(
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
			m_addr : out integer;--out std_logic_vector (31 downto 0);
			m_read : out std_logic;
			m_readdata : in std_logic_vector (word_length-1 downto 0);
			m_write : out std_logic;
			m_writedata : out std_logic_vector (word_length-1 downto 0);
			m_waitrequest : in std_logic -- MEM tells cache to keep waiting
		);
		END COMPONENT;
		
	component memory is 
		GENERIC(
			data_width : INTEGER := 32;
			ram_size : INTEGER := 24576;
			mem_delay : time := 10 ns;
			clock_period : time := 1 ns
		);
		PORT (
			clock: IN STD_LOGIC;
			writedata: IN STD_LOGIC_VECTOR (data_width-1 DOWNTO 0);
			address: IN INTEGER RANGE 0 TO 2147483647;
			memwrite: IN STD_LOGIC;
			memread: IN STD_LOGIC;
			readdata: OUT STD_LOGIC_VECTOR (data_width-1 DOWNTO 0);
			waitrequest: OUT STD_LOGIC
		);
	END component;
	
	--all the input signals with initial values
	 signal reset : std_logic;
   signal clk : std_logic := '0';
   constant clk_period : time := 1 ns;
--   signal writedata: std_logic_vector(31 downto 0);
--   signal xaddr: STD_LOGIC_VECTOR(31 downto 0);
--   signal memwrite: STD_LOGIC := '0';
--   signal memread: STD_LOGIC := '0';
--   signal readdata: STD_LOGIC_VECTOR (31 DOWNTO 0);
--   signal waitrequest: STD_LOGIC;

	signal s_addr : std_logic_vector (31 downto 0);
	signal s_read : std_logic;
	signal s_readdata : std_logic_vector (31 downto 0);
	signal s_write : std_logic;
	signal s_writedata : std_logic_vector (31 downto 0);
	signal s_waitrequest : std_logic;
	
	signal m_addr : integer range 0 to 2147483647;--std_logic_vector (31 downto 0);
	signal m_read : std_logic;
	signal m_readdata : std_logic_vector (31 downto 0);
	signal m_write : std_logic;
	signal m_writedata : std_logic_vector (31 downto 0);
	signal m_waitrequest : std_logic; -- cache tells CPU to keep waiting
	
BEGIN
	--dut => Device Under Test
    dut: cache 
   			PORT MAP(
					clock => clk,
		      reset => reset,
		
		      -- CPU/cache bus
		      s_addr => s_addr,
		      s_read => s_read,
		      s_readdata => s_readdata,
		      s_write => s_write,
		      s_writedata => s_writedata,
		      s_waitrequest => s_waitrequest,
		
        		-- cache/MEM bus
		      m_addr => m_addr,
		      m_read => m_read,
		      m_readdata => m_readdata,
		      m_write => m_write,
		      m_writedata => m_writedata,
		      m_waitrequest => m_waitrequest
    			);
				
	MEM : memory
		  PORT MAP(
					clock => clk,
					writedata => m_writedata,
					address => m_addr,
					memwrite => m_write,
					memread => m_read,
					readdata => m_readdata,
					waitrequest => m_waitrequest
    			);
				

    clk_process : process
    BEGIN
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

	 test_process : process
    BEGIN
			-- start by writing 0x12341234
			--	to address 1
			s_write <= '1';
			s_read <= '0';
			s_addr <= X"00000001";
			s_writedata <= X"12341234";
			wait until m_waitrequest = '0';
			wait until s_waitrequest = '0';
			s_write <= '0';
			wait for clk_period*5;
			
			-- write 0x55555555
			--	to address 2
			s_write <= '1';
			s_read <= '0';
			s_addr <= X"00000002";
			s_writedata <= X"55555555";
			wait until m_waitrequest = '0';
			wait until s_waitrequest = '0';
			s_write <= '0';
			wait for clk_period*5;
			
			-- then read that data out
			s_write <= '0';
			s_read <= '1';
			s_addr <= X"00000001";
			wait until m_waitrequest = '0';
			wait until s_waitrequest = '0';
			wait for clk_period*2;
			
			-- try reading from somewhere unwritten
			s_addr <= X"00000002";
			wait for clk_period*2;
			
			-- write 0x87654321
			-- to address
			wait;
		  
		-- write "12345678" to address 0x00000001
		-- should end up in line one of cache

    END PROCESS;

	
END;