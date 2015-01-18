-- Loren Lugosch
-- 260404057

-- Testbench for cache_SRAM.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY cache_SRAM_tb IS
	GENERIC(			
		SRAM_width : INTEGER := 32; -- \default value needed?
		number_of_rows : INTEGER := 256
	);
END cache_SRAM_tb;

ARCHITECTURE behavior OF cache_SRAM_tb IS

	COMPONENT cache_SRAM IS
		GENERIC(
			SRAM_width : INTEGER := SRAM_width;
			number_of_rows : INTEGER := number_of_rows
		);
		PORT(
			clock : in STD_LOGIC;
			writedata : in STD_LOGIC_VECTOR(SRAM_width-1 downto 0);
			address : in INTEGER RANGE 0 to number_of_rows-1;
			writeenable : in STD_LOGIC;
			readdata : out STD_LOGIC_VECTOR(SRAM_width-1 downto 0)
		);
	END COMPONENT;

	--all the input signals with initial values
   signal clk : std_logic := '0';
   constant clk_period : time := 1 ns;
	signal writedata : STD_LOGIC_VECTOR(SRAM_width-1 downto 0);
	signal address : INTEGER RANGE 0 to number_of_rows-1;
	signal writeenable : STD_LOGIC;
	signal r_data : STD_LOGIC_VECTOR(SRAM_width-1 downto 0);

	BEGIN
		dut: cache_SRAM PORT MAP (clk, writedata, address, writeenable, r_data);
		
		clock_process: PROCESS
		BEGIN
			clk <= '0';
			wait for clk_period/2;
			clk <= '1';
			wait for clk_period/2;
		END PROCESS;
		
		test_process: PROCESS
		BEGIN
			-- start by writing 0x12341234
			--	to address 1
			writeenable <= '1';
			address <= 1;
			writedata <= X"12341234";
			wait for clk_period*2;
			
			-- write 0x55555555
			--	to address 2
			writeenable <= '1';
			address <= 2;
			writedata <= X"55555555";
			wait for clk_period*2;
			
			-- then read that data out
			writeenable <= '0';
			address <= 1;
			wait for clk_period*2;
			
			-- try reading from somewhere unwritten
			writeenable <= '0';
			address <= 2;
			wait for clk_period*2;
			
		END PROCESS;

END behavior;