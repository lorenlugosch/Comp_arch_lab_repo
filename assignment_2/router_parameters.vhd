library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package router_parameters is

	-- direction codes
	constant N : std_logic_vector(2 downto 0) := "000";
	constant S : std_logic_vector(2 downto 0) := "001";
	constant W : std_logic_vector(2 downto 0) := "010";
	constant E : std_logic_vector(2 downto 0) := "011";
	constant LOCAL : std_logic_vector(2 downto 0) := "100";

	-- useful definitions
	constant undriven_32 : std_logic_vector := "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
	constant undriven_64 : std_logic_vector := undriven_32 & undriven_32;
	constant packet_size : integer := 64;
	constant data_width : integer := 32;
	constant header_width : integer := 16;
	constant address_size : integer := 16;
	
	-- test packets for testbenches
	constant test_packet_A : std_logic_vector := X"1234567887654321";
	constant test_packet_B : std_logic_vector := X"ABCDEFABCDEFABCD";
	constant test_packet_C : std_logic_vector := X"0000111122223333";
	constant test_packet_D : std_logic_vector := X"4444555566667777";
	
	-- components
	component destination_decoder is
		generic (
			my_x : integer := 1;
			my_y : integer := 1
		);
		port (
			dest_enable : in std_logic;
		
			x_coordinate : in integer;
			y_coordinate : in integer;
			
			destination : out std_logic_vector(2 downto 0);
			
			write_outof_X_into_N : out std_logic;
			write_outof_X_into_S : out std_logic;
			write_outof_X_into_W : out std_logic;
			write_outof_X_into_E : out std_logic;
			write_outof_X_into_LOCAL : out std_logic
		);
	end component;
	
	component reg is 
		generic(
			data_width : integer := packet_size
		);
		port (
			D : in std_logic_vector(data_width-1 downto 0);
			Q : out std_logic_vector(data_width-1 downto 0);
		
			clock : in std_logic;
			reset : in std_logic
		);
	end component;

	component STD_FIFO is
		generic (
			constant DATA_WIDTH  : positive := 64;
			constant FIFO_DEPTH	: positive := 256
		);
		port ( 
			CLK		: in  STD_LOGIC;
			RST		: in  STD_LOGIC;
			WriteEn	: in  STD_LOGIC;
			DataIn	: in  STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
			ReadEn	: in  STD_LOGIC;
			DataOut	: out STD_LOGIC_VECTOR (DATA_WIDTH - 1 downto 0);
			Empty	: out STD_LOGIC;
			Full	: out STD_LOGIC
		);
	end component;
	
	component in_FIFO_FSM is
		port (
			clock : in std_logic;
			reset : in std_logic;
			write_into_X : in std_logic;
		
			dest_enable : out std_logic;
			pop_enable : out std_logic;
			push_enable : out std_logic;
			
			queue_full : in std_logic;
			queue_empty : in std_logic;
			waitrequest : in std_logic;
		  waitrequest_outof_X : out std_logic
		);
	end component;
	
	component in_FIFO is
	port (
		clock : in std_logic;
		reset : in std_logic;
		
		--Avalon-ish interface with neighboring core
		writedata_into_X : in std_logic_vector(packet_size-1 downto 0);
		waitrequest_outof_X : out std_logic;
		write_into_X : in std_logic;
		
		--Avalon-ish interface with out_FIFOs
		writedata_outof_X : out std_logic_vector(packet_size-1 downto 0);
		waitrequest_into_X_outof_N : in std_logic;
		waitrequest_into_X_outof_S : in std_logic;
		waitrequest_into_X_outof_W : in std_logic;
		waitrequest_into_X_outof_E : in std_logic;
		waitrequest_into_X_outof_LOCAL : in std_logic;
		
		write_outof_X_into_N : out std_logic;
		write_outof_X_into_S : out std_logic;
		write_outof_X_into_W : out std_logic;
		write_outof_X_into_E : out std_logic;
		write_outof_X_into_LOCAL : out std_logic
	);
end component;

end router_parameters;