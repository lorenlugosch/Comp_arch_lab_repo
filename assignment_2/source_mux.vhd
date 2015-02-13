-- Loren Lugosch
-- 260404057
-- 
-- Mux for data from different sources
-- (selected based on 
-- "currently servicing" register)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.router_parameters.all;

entity source_mux is

	port(
		currently_servicing : in std_logic_vector(2 downto 0);
		
		--Data from N, S, W, E, LOCAL
		writedata_outof_N : in std_logic_vector(packet_size-1 downto 0);
		writedata_outof_S : in std_logic_vector(packet_size-1 downto 0);
		writedata_outof_W : in std_logic_vector(packet_size-1 downto 0);
		writedata_outof_E : in std_logic_vector(packet_size-1 downto 0);
		writedata_outof_LOCAL : in std_logic_vector(packet_size-1 downto 0);
		
		--Data to be written to queue
		writedata : out std_logic_vector(packet_size-1 downto 0)
	);
end source_mux;

architecture rtl of source_mux is

		signal enable_N : std_logic;
		signal enable_S : std_logic;
		signal enable_W : std_logic;
		signal enable_E : std_logic;
		signal enable_LOCAL : std_logic;

begin

	process (currently_servicing)
	begin
	
		case currently_servicing is
			when N =>
				enable_N <= '1';
				enable_S <= '0';
				enable_W <= '0';
				enable_E <= '0';
				enable_LOCAL <= '0';
				
			when S =>
				enable_N <= '0';
				enable_S <= '1';
				enable_W <= '0';
				enable_E <= '0';
				enable_LOCAL <= '0';
				
			when W =>
				enable_N <= '0';
				enable_S <= '0';
				enable_W <= '1';
				enable_E <= '0';
				enable_LOCAL <= '0';
				
			when E =>
				enable_N <= '0';
				enable_S <= '0';
				enable_W <= '0';
				enable_E <= '1';
				enable_LOCAL <= '0';
			
			when LOCAL =>
				enable_N <= '0';
				enable_S <= '0';
				enable_W <= '0';
				enable_E <= '0';
				enable_LOCAL <= '1';
				
			when others => 				
				enable_N <= '0';
				enable_S <= '0';
				enable_W <= '0';
				enable_E <= '0';
				enable_LOCAL <= '0';
				
		end case;
	end process;
				
	process (enable_N, enable_S, enable_W, enable_E, enable_LOCAL)
	begin
		if (enable_N = '1') then
			writedata <= writedata_outof_N;
		elsif (enable_S = '1') then
			writedata <= writedata_outof_S;
		elsif (enable_W = '1') then
			writedata <= writedata_outof_W;
		elsif (enable_E = '1') then
			writedata <= writedata_outof_E;
		elsif (enable_LOCAL = '1') then
			writedata <= writedata_outof_LOCAL;
		else
			writedata <= undriven_64;
		end if;
	end process;
	
end rtl;