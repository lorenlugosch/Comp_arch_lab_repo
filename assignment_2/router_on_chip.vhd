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
	
		-- busses from neighbor cores' out_FIFOs
		N_in : in std_logic_vector(packet_size-1 downto 0);
		S_in : in std_logic_vector(packet_size-1 downto 0);
		
		-- busses to neighbor cores' in_FIFOs
		N_out : out std_logic_vector(packet_size-1 downto 0);
		S_out : out std_logic_vector(packet_size-1 downto 0);
		
		-- interface signals (Avalon?)
		N_in_write : in std_logic;
		S_in_write : in std_logic;
		N_in_wait : out std_logic;
		S_in_wait : out std_logic
	);
end router_on_chip;

architecture rtl of router_on_chip is

begin
	
	-- in_FIFOs
	
	-- out_FIFOs

end rtl;