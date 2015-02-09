-- Loren Lugosch
-- 260404057

-- Main testbench for complete system.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cache_tb is
end cache_tb;

architecture behavior of cache_tb is

	component cache is
		generic(
			word_length : integer := 32;
			address_length : integer := 32;
			index_length : integer := 8;
			tag_length : integer := 22;
			offset_length : integer := 2;
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
			s_waitrequest : out std_logic;
		
			-- cache/MEM bus
			m_addr : out integer;--out std_logic_vector (31 downto 0);
			m_read : out std_logic;
			m_readdata : in std_logic_vector (word_length-1 downto 0);
			m_write : out std_logic;
			m_writedata : out std_logic_vector (word_length-1 downto 0);
			m_waitrequest : in std_logic
		);
	end component;
		
	component memory is 
		generic(
			data_width : integer := 32;
			ram_size : integer := 24576;
			mem_delay : time := 10 ns;
			clock_period : time := 1 ns
		);
		port (
			clock: in std_logic;
			writedata: in std_logic_vector (data_width-1 downto 0);
			address: in integer range 0 to 2147483647;
			memwrite: in std_logic;
			memread: in std_logic;
			readdata: out std_logic_vector (data_width-1 downto 0);
			waitrequest: out std_logic
		);
	end component;
	
	-- test signals 
	signal reset : std_logic;
   signal clk : std_logic := '0';
   constant clk_period : time := 1 ns;

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
	
begin
	dut: cache 
   			port map(
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
		  port map (
					clock => clk,
					writedata => m_writedata,
					address => m_addr,
					memwrite => m_write,
					memread => m_read,
					readdata => m_readdata,
					waitrequest => m_waitrequest
    			);
				

    clk_process : process
      begin
          clk <= '0';
          wait for clk_period/2;
          clk <= '1';
          wait for clk_period/2;
    end process;

	  test_process : process
        begin
          -- hereafter, the vector <h=_,d=_,v=_,r=_>
          -- denotes the case when a memory access is:
          --    -hit (h)
          --    -dirty (d)
          --    -valid (v)
          --    -read (r)
          
        -- give the system time to power up
        -- (s_waitrequest goes from 'X' to '1'
        -- after one register delay)
        wait for clk_period;
          
    		-- start by writing 0x12341234
    		--	to address 1
    		-- <h=0,d=0,v=0,r=0>
    		s_write <= '1';
    		s_read <= '0';
    		s_addr <= X"00000001";
    		s_writedata <= X"12341234";
    		wait until s_waitrequest = '0';
    		s_write <= '0';
    		wait for clk_period*5;
    		
    		-- write 0x55555555
    		--	to address 2
    		-- <h=1,d=1,v=1,r=0>
    		s_write <= '1';
    		s_read <= '0';
    		s_addr <= X"00000002";
    		s_writedata <= X"55555555";
    		wait until s_waitrequest = '0';
    		s_write <= '0';
    		wait for clk_period*5;
    		
    		-- read from address 0x1
    		-- (result should be 0x12341234)
    		-- <h=1,d=1,v=1,r=1>
    		s_write <= '0';
    		s_read <= '1';
    		s_addr <= X"00000001";
    		wait until s_waitrequest = '0';
    		assert s_readdata = X"12341234";
    		s_read <= '0';
    		wait for clk_period*2;
    		
    		-- try reading from somewhere unwritten
    		-- <h=0,d=0,v=0,r=1>
    		s_addr <= X"00000012";
    		s_read <= '1';
    		wait until s_waitrequest = '0';
    		wait for clk_period*2;
    		
    		-- write "12345678" to address 0x00000401
    		-- should end up in line 0
    		-- and evict the data there (from address 0x00000001)
    		-- <h=0,d=1,v=1,r=0>
    		s_addr <= X"00000401";
    		s_writedata <= X"12345678";
    		s_write <= '1';
    		s_read <= '0';
    		wait until s_waitrequest = '0';
    		wait for clk_period*2;
    		
    		-- read from address 0x00000001
    		-- should evict the data in line 0
    		-- which is dirty (from address 0x00000401)
    		-- <h=0,d=1,v=1,r=1>
    		s_addr <= X"00000001";
    		s_write <= '0';
    		s_read <= '1';
    		wait until s_waitrequest = '0';
    		wait for clk_period*2;
    		
    		-- read from address 0x00000401
    		-- should evict data in line 0
    		-- which is NOT dirty (because recently loaded)
    		-- hence no flush
    		-- <h=0,d=0,v=1,r=1>
    		s_addr <= X"00000401";
    		s_write <= '0';
    		s_read <= '1';
    		wait until s_waitrequest = '0';
    		wait for clk_period*2;
    		
    		-- write to address 0x00000001
    		-- should evict data in line 0
    		-- which is NOT dirty (because recently loaded)
    		-- hence no flush
    		-- <h=0,d=0,v=1,r=0>
    		s_addr <= X"00000001";
    		s_writedata <= X"13131313";
    		s_write <= '1';
    		s_read <= '0';
    		wait until s_waitrequest = '0';
    		wait for clk_period*2;
    		
    		-- read from another line currently in cache
    		-- (not dirty)
    		-- <h=1,d=0,v=1,r=1>
    		s_addr <= X"00000012";
    		s_read <= '1';
    		s_write <= '0';
    		wait until s_waitrequest = '0';
    		assert s_readdata = X"00000012";
    		wait for clk_period*2;
    		
    		-- write to that line
    		-- (not dirty)
    		-- <h=1,d=0,v=1,r=0>
    		s_addr <= X"00000012";
    		s_writedata <= X"99999999";
    		s_read <= '0';
    		s_write <= '1';
    		wait until s_waitrequest = '0';
    		wait for clk_period*2;
    		
    		-- all (sensible) test vectors have been covered
    		-- the cache works!
    		
    end process;
	
end;