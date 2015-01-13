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
			word_length : INTEGER := 32;
			address_length : INTEGER := 32;
			associativity : INTEGER := 2; --two-way associative--
			index_length : INTEGER := 8; --256 cache lines means 8 bits of index--
			tag_length : INTEGER := 22; --32 address bits minus 10 = 22 tag bits--
			offset_length : INTEGER := 2--4 words per line means 2 bits req'd to address a word--
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
	END COMPONENT;
	
	--all the input signals with initial values
   signal clk : std_logic := '0';
   constant clk_period : time := 1 ns;
   signal writedata: std_logic_vector(31 downto 0);
	signal address: STD_LOGIC_VECTOR(31 downto 0);
	signal memwrite: STD_LOGIC := '0';
	signal memread: STD_LOGIC := '0';
	signal readdata: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal waitrequest: STD_LOGIC;
	
BEGIN
	--dut => Device Under Test
    dut: cache 
   				PORT MAP(
					clk,
					writedata,
					address,
					memwrite,
					memread,
					readdata,
					waitrequest
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
    	wait for clk_period*2;
    	address <= X"00000000";
		wait for clk_period;
		address <= X"ffffffff";
		wait for clk_period;
		address <= X"12345678"; --0b1001000110100010101 10011110 00, 0x48D15 0x9E 0x0--
        wait;

    END PROCESS;

	
END;