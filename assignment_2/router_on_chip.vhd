-- Loren Lugosch
-- 260404057
-- 
-- This file describes the complete 
-- router for a single core. The router is
-- connected to adjacent routers as well
-- as the local processor.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.router_parameters.all;

entity router_on_chip is
	generic (
		-- The coordinates in the network of this processor.
		-- Another possible implementation uses a small ROM
		-- instead of generics.
		
		my_x : integer := 1;
		my_y : integer := 1
	);
	
	port (
		clock : in std_logic;
		reset : in std_logic;
	
		-- data from neighbors to here
		N_in : in std_logic_vector(packet_size-1 downto 0);
		S_in : in std_logic_vector(packet_size-1 downto 0);
		W_in : in std_logic_vector(packet_size-1 downto 0);
		E_in : in std_logic_vector(packet_size-1 downto 0);
		LOCAL_in : in std_logic_vector(packet_size-1 downto 0);
		
		-- data from here to neighbors
		N_out : out std_logic_vector(packet_size-1 downto 0);
		S_out : out std_logic_vector(packet_size-1 downto 0);
		W_out : out std_logic_vector(packet_size-1 downto 0);
		E_out : out std_logic_vector(packet_size-1 downto 0);
		LOCAL_out : out std_logic_vector(packet_size-1 downto 0);
		
		-- wait signals from neighbors to here
		waitrequest_into_N : in std_logic;
		waitrequest_into_S : in std_logic;
		waitrequest_into_W : in std_logic;
		waitrequest_into_E : in std_logic;
		waitrequest_into_LOCAL : in std_logic;
		
		-- wait signals from here to neighbors
		waitrequest_outof_N : out std_logic;
		waitrequest_outof_S : out std_logic;
		waitrequest_outof_W : out std_logic;
		waitrequest_outof_E : out std_logic;
		waitrequest_outof_LOCAL : out std_logic;
		
		-- write signals from neighbors to here
		write_into_N : in std_logic;
		write_into_S : in std_logic;
		write_into_W : in std_logic;
		write_into_E : in std_logic;
		write_into_LOCAL : in std_logic;
		
		-- write signals from here to neighbors
		write_outof_N : out std_logic;
		write_outof_S : out std_logic;
		write_outof_W : out std_logic;
		write_outof_E : out std_logic;
		write_outof_LOCAL : out std_logic
	);
end router_on_chip;

architecture rtl of router_on_chip is
	-- arrays use lots of signal declarations, but 
	-- allow fewer component instantiations
	type bit_array is array(4 downto 0) of std_logic;
	type packet_array is array(4 downto 0) of std_logic_vector(packet_size-1 downto 0);
	
	signal waitrequest_into_X_outof_N : bit_array;
	signal waitrequest_into_X_outof_S : bit_array;
	signal waitrequest_into_X_outof_W : bit_array;
	signal waitrequest_into_X_outof_E : bit_array;
	signal waitrequest_into_X_outof_LOCAL : bit_array;
	
	signal waitrequest_into_N_outof_X : bit_array;
	signal waitrequest_into_S_outof_X : bit_array;
	signal waitrequest_into_W_outof_X : bit_array;
	signal waitrequest_into_E_outof_X : bit_array;
	signal waitrequest_into_LOCAL_outof_X : bit_array;
	
	signal write_outof_X_into_N : bit_array;
	signal write_outof_X_into_S : bit_array;
	signal write_outof_X_into_W : bit_array;
	signal write_outof_X_into_E : bit_array;
	signal write_outof_X_into_LOCAL : bit_array;
	
	signal write_outof_N_into_X : bit_array;
	signal write_outof_S_into_X : bit_array;
	signal write_outof_W_into_X : bit_array;
	signal write_outof_E_into_X : bit_array;
	signal write_outof_LOCAL_into_X : bit_array;
	
	signal waitrequest_outof_X : bit_array;
	signal waitrequest_into_X : bit_array;
	
	signal writedata_outof_X : packet_array;
	
	signal write_into_X : bit_array;
	signal write_outof_X : bit_array;
	signal X_in : packet_array;
	signal X_out : packet_array;

begin

	-- map input data to array (makes generation cleaner
	-- than using if-generates)
	X_in(to_integer(unsigned(N))) <= N_in;
	X_in(to_integer(unsigned(S))) <= S_in;
	X_in(to_integer(unsigned(W))) <= W_in;
	X_in(to_integer(unsigned(E))) <= E_in;
	X_in(to_integer(unsigned(LOCAL))) <= LOCAL_in;
	
	N_out <= X_out(to_integer(unsigned(N)));
	S_out <= X_out(to_integer(unsigned(S)));
	W_out <= X_out(to_integer(unsigned(W)));
	E_out <= X_out(to_integer(unsigned(E)));
	LOCAL_out <= X_out(to_integer(unsigned(LOCAL)));
	
	waitrequest_outof_N <= waitrequest_outof_X(to_integer(unsigned(N)));
	waitrequest_outof_S <= waitrequest_outof_X(to_integer(unsigned(S)));
	waitrequest_outof_W <= waitrequest_outof_X(to_integer(unsigned(W)));
	waitrequest_outof_E <= waitrequest_outof_X(to_integer(unsigned(E)));
	waitrequest_outof_LOCAL <= waitrequest_outof_X(to_integer(unsigned(LOCAL)));
	
	waitrequest_into_X(to_integer(unsigned(N))) <= waitrequest_into_N;
	waitrequest_into_X(to_integer(unsigned(S))) <= waitrequest_into_S;
	waitrequest_into_X(to_integer(unsigned(W))) <= waitrequest_into_W;
	waitrequest_into_X(to_integer(unsigned(E))) <= waitrequest_into_E;
	waitrequest_into_X(to_integer(unsigned(LOCAL))) <= waitrequest_into_LOCAL;
	
	write_into_X(to_integer(unsigned(N))) <= write_into_N;
	write_into_X(to_integer(unsigned(S))) <= write_into_S;
	write_into_X(to_integer(unsigned(W))) <= write_into_W;
	write_into_X(to_integer(unsigned(E))) <= write_into_E;
	write_into_X(to_integer(unsigned(LOCAL))) <= write_into_LOCAL;
	
	write_outof_N <= write_outof_X(to_integer(unsigned(N)));
	write_outof_S <= write_outof_X(to_integer(unsigned(S)));
	write_outof_W <= write_outof_X(to_integer(unsigned(W)));
	write_outof_E <= write_outof_X(to_integer(unsigned(E)));
	write_outof_LOCAL <= write_outof_X(to_integer(unsigned(LOCAL)));
	
	-- waitrequests
	waitrequest_into_X_outof_N(to_integer(unsigned(N))) <= waitrequest_into_N_outof_X(to_integer(unsigned(N)));
	waitrequest_into_X_outof_N(to_integer(unsigned(S))) <= waitrequest_into_S_outof_X(to_integer(unsigned(N)));
	waitrequest_into_X_outof_N(to_integer(unsigned(W))) <= waitrequest_into_W_outof_X(to_integer(unsigned(N)));
	waitrequest_into_X_outof_N(to_integer(unsigned(E))) <= waitrequest_into_E_outof_X(to_integer(unsigned(N)));
	waitrequest_into_X_outof_N(to_integer(unsigned(LOCAL))) <= waitrequest_into_LOCAL_outof_X(to_integer(unsigned(N)));
	
	waitrequest_into_X_outof_S(to_integer(unsigned(N))) <= waitrequest_into_N_outof_X(to_integer(unsigned(S)));
	waitrequest_into_X_outof_S(to_integer(unsigned(S))) <= waitrequest_into_S_outof_X(to_integer(unsigned(S)));
	waitrequest_into_X_outof_S(to_integer(unsigned(W))) <= waitrequest_into_W_outof_X(to_integer(unsigned(S)));
	waitrequest_into_X_outof_S(to_integer(unsigned(E))) <= waitrequest_into_E_outof_X(to_integer(unsigned(S)));
	waitrequest_into_X_outof_S(to_integer(unsigned(LOCAL))) <= waitrequest_into_LOCAL_outof_X(to_integer(unsigned(S)));
	
	waitrequest_into_X_outof_W(to_integer(unsigned(N))) <= waitrequest_into_N_outof_X(to_integer(unsigned(W)));
	waitrequest_into_X_outof_W(to_integer(unsigned(S))) <= waitrequest_into_S_outof_X(to_integer(unsigned(W)));
	waitrequest_into_X_outof_W(to_integer(unsigned(W))) <= waitrequest_into_W_outof_X(to_integer(unsigned(W)));
	waitrequest_into_X_outof_W(to_integer(unsigned(E))) <= waitrequest_into_E_outof_X(to_integer(unsigned(W)));
	waitrequest_into_X_outof_W(to_integer(unsigned(LOCAL))) <= waitrequest_into_LOCAL_outof_X(to_integer(unsigned(W)));
	
	waitrequest_into_X_outof_E(to_integer(unsigned(N))) <= waitrequest_into_N_outof_X(to_integer(unsigned(E)));
	waitrequest_into_X_outof_E(to_integer(unsigned(S))) <= waitrequest_into_S_outof_X(to_integer(unsigned(E)));
	waitrequest_into_X_outof_E(to_integer(unsigned(W))) <= waitrequest_into_W_outof_X(to_integer(unsigned(E)));
	waitrequest_into_X_outof_E(to_integer(unsigned(E))) <= waitrequest_into_E_outof_X(to_integer(unsigned(E)));
	waitrequest_into_X_outof_E(to_integer(unsigned(LOCAL))) <= waitrequest_into_LOCAL_outof_X(to_integer(unsigned(E)));
	
	waitrequest_into_X_outof_LOCAL(to_integer(unsigned(N))) <= waitrequest_into_N_outof_X(to_integer(unsigned(LOCAL)));
	waitrequest_into_X_outof_LOCAL(to_integer(unsigned(S))) <= waitrequest_into_S_outof_X(to_integer(unsigned(LOCAL)));
	waitrequest_into_X_outof_LOCAL(to_integer(unsigned(W))) <= waitrequest_into_W_outof_X(to_integer(unsigned(LOCAL)));
	waitrequest_into_X_outof_LOCAL(to_integer(unsigned(E))) <= waitrequest_into_E_outof_X(to_integer(unsigned(LOCAL)));
	waitrequest_into_X_outof_LOCAL(to_integer(unsigned(LOCAL))) <= waitrequest_into_LOCAL_outof_X(to_integer(unsigned(LOCAL)));
	
	--writes
	write_outof_N_into_X(to_integer(unsigned(N))) <= write_outof_X_into_N(to_integer(unsigned(N)));
	write_outof_S_into_X(to_integer(unsigned(N))) <= write_outof_X_into_N(to_integer(unsigned(S)));
	write_outof_W_into_X(to_integer(unsigned(N))) <= write_outof_X_into_N(to_integer(unsigned(W)));
	write_outof_E_into_X(to_integer(unsigned(N))) <= write_outof_X_into_N(to_integer(unsigned(E)));
	write_outof_LOCAL_into_X(to_integer(unsigned(N))) <= write_outof_X_into_N(to_integer(unsigned(LOCAL)));
	
	write_outof_N_into_X(to_integer(unsigned(S))) <= write_outof_X_into_S(to_integer(unsigned(N)));
	write_outof_S_into_X(to_integer(unsigned(S))) <= write_outof_X_into_S(to_integer(unsigned(S)));
	write_outof_W_into_X(to_integer(unsigned(S))) <= write_outof_X_into_S(to_integer(unsigned(W)));
	write_outof_E_into_X(to_integer(unsigned(S))) <= write_outof_X_into_S(to_integer(unsigned(E)));
	write_outof_LOCAL_into_X(to_integer(unsigned(S))) <= write_outof_X_into_S(to_integer(unsigned(LOCAL)));
	
	write_outof_N_into_X(to_integer(unsigned(W))) <= write_outof_X_into_W(to_integer(unsigned(N)));
	write_outof_S_into_X(to_integer(unsigned(W))) <= write_outof_X_into_W(to_integer(unsigned(S)));
	write_outof_W_into_X(to_integer(unsigned(W))) <= write_outof_X_into_W(to_integer(unsigned(W)));
	write_outof_E_into_X(to_integer(unsigned(W))) <= write_outof_X_into_W(to_integer(unsigned(E)));
	write_outof_LOCAL_into_X(to_integer(unsigned(W))) <= write_outof_X_into_W(to_integer(unsigned(LOCAL)));
	
	write_outof_N_into_X(to_integer(unsigned(E))) <= write_outof_X_into_E(to_integer(unsigned(N)));
	write_outof_S_into_X(to_integer(unsigned(E))) <= write_outof_X_into_E(to_integer(unsigned(S)));
	write_outof_W_into_X(to_integer(unsigned(E))) <= write_outof_X_into_E(to_integer(unsigned(W)));
	write_outof_E_into_X(to_integer(unsigned(E))) <= write_outof_X_into_E(to_integer(unsigned(E)));
	write_outof_LOCAL_into_X(to_integer(unsigned(E))) <= write_outof_X_into_E(to_integer(unsigned(LOCAL)));
	
	write_outof_N_into_X(to_integer(unsigned(LOCAL))) <= write_outof_X_into_LOCAL(to_integer(unsigned(N)));
	write_outof_S_into_X(to_integer(unsigned(LOCAL))) <= write_outof_X_into_LOCAL(to_integer(unsigned(S)));
	write_outof_W_into_X(to_integer(unsigned(LOCAL))) <= write_outof_X_into_LOCAL(to_integer(unsigned(W)));
	write_outof_E_into_X(to_integer(unsigned(LOCAL))) <= write_outof_X_into_LOCAL(to_integer(unsigned(E)));
	write_outof_LOCAL_into_X(to_integer(unsigned(LOCAL))) <= write_outof_X_into_LOCAL(to_integer(unsigned(LOCAL)));
	

	-- generate FIFOs at all five input ports
	in_FIFO_gen:
	for I in 0 to 4 generate
	begin
		in_FIFO_X : in_FIFO
		generic map(
			direction => std_logic_vector(to_unsigned(I,2)) -- direction code uses 0 to 4, so this works
		)
		port map(
			clock => clock,
			reset => reset,
			
			--Avalon-ish interface with neighboring core
			writedata_into_X => X_in(I),
			waitrequest_outof_X => waitrequest_outof_X(I),
			write_into_X => write_into_X(I),
			
			--Avalon-ish interface with out_FIFOs
			writedata_outof_X => writedata_outof_X(I),
			waitrequest_into_X_outof_N => waitrequest_into_X_outof_N(I),
			waitrequest_into_X_outof_S => waitrequest_into_X_outof_S(I),
			waitrequest_into_X_outof_W => waitrequest_into_X_outof_W(I),
			waitrequest_into_X_outof_E => waitrequest_into_X_outof_E(I),
			waitrequest_into_X_outof_LOCAL => waitrequest_into_X_outof_LOCAL(I),
			
			write_outof_X_into_N => write_outof_X_into_N(I),
			write_outof_X_into_S => write_outof_X_into_S(I),
			write_outof_X_into_W => write_outof_X_into_W(I),
			write_outof_X_into_E => write_outof_X_into_E(I),
			write_outof_X_into_LOCAL => write_outof_X_into_LOCAL(I)
		);
	end generate;
	
	-- generate FIFOs at all five output ports
	out_FIFO_gen:
	for i in 0 to 4 generate
	begin
		out_FIFO_X : out_FIFO
		generic map(
			direction => std_logic_vector(to_unsigned(I,2))
		)
		port map(
			clock => clock,
			reset => reset,
			
			--Avalon-ish interface with neighboring core
			writedata_outof_X => X_out(I),
			waitrequest_into_X => waitrequest_into_X(I),
			write_outof_X => write_outof_X(I),
			
			--Avalon-ish interface with in_FIFOs
			writedata_outof_N => writedata_outof_X(to_integer(unsigned(N))),
			writedata_outof_S => writedata_outof_X(to_integer(unsigned(S))),
			writedata_outof_W => writedata_outof_X(to_integer(unsigned(W))),
			writedata_outof_E => writedata_outof_X(to_integer(unsigned(E))),
			writedata_outof_LOCAL => writedata_outof_X(to_integer(unsigned(LOCAL))),
			
			write_outof_N_into_X => write_outof_N_into_X(I),
			write_outof_S_into_X => write_outof_S_into_X(I),
			write_outof_W_into_X => write_outof_W_into_X(I),
			write_outof_E_into_X => write_outof_E_into_X(I),
			write_outof_LOCAL_into_X => write_outof_LOCAL_into_X(I),
			
			waitrequest_into_N_outof_X => waitrequest_into_N_outof_X(I),
			waitrequest_into_S_outof_X => waitrequest_into_S_outof_X(I),
			waitrequest_into_W_outof_X => waitrequest_into_W_outof_X(I),
			waitrequest_into_E_outof_X => waitrequest_into_E_outof_X(I),
			waitrequest_into_LOCAL_outof_X => waitrequest_into_LOCAL_outof_X(I)
		);
	end generate;

end rtl;