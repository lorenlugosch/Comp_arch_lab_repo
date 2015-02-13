-- Loren Lugosch
-- 260404057
-- 
-- This file describes the complete 
-- router for a single core. The router is
-- connected to adjacent routers as well
-- as the local processor.

-- *** Testbench ***

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.router_parameters.all;

entity router_on_chip_tb is
end router_on_chip_tb;

architecture tb of router_on_chip_tb is
  
		signal clock : std_logic := '0'; -- in
		signal reset : std_logic := '0'; -- in
	
		-- data from neighbors to here
		signal N_in : std_logic_vector(packet_size-1 downto 0) := undriven_64; -- in
		signal S_in : std_logic_vector(packet_size-1 downto 0) := undriven_64; -- in
		signal W_in : std_logic_vector(packet_size-1 downto 0) := undriven_64; -- in
		signal E_in : std_logic_vector(packet_size-1 downto 0) := undriven_64; -- in
		signal LOCAL_in : std_logic_vector(packet_size-1 downto 0) := undriven_64; -- in
		
		-- data from here to neighbors
		signal N_out : std_logic_vector(packet_size-1 downto 0); -- out
		signal S_out : std_logic_vector(packet_size-1 downto 0); -- out
		signal W_out : std_logic_vector(packet_size-1 downto 0); -- out
		signal E_out : std_logic_vector(packet_size-1 downto 0); -- out
		signal LOCAL_out : std_logic_vector(packet_size-1 downto 0); -- out
		
		-- wait signals from neighbors to here
		signal waitrequest_into_N : std_logic := '1'; -- in
		signal waitrequest_into_S : std_logic := '1'; -- in
		signal waitrequest_into_W : std_logic := '1'; -- in
		signal waitrequest_into_E : std_logic := '1'; -- in
		signal waitrequest_into_LOCAL : std_logic := '1'; -- in
		
		-- wait signals from here to neighbors
		signal waitrequest_outof_N : std_logic; -- out
		signal waitrequest_outof_S : std_logic; -- out
		signal waitrequest_outof_W : std_logic; -- out
		signal waitrequest_outof_E : std_logic; -- out
		signal waitrequest_outof_LOCAL : std_logic; -- out
		
		-- write signals from neighbors to here
		signal write_into_N : std_logic := '0'; -- in
		signal write_into_S : std_logic := '0'; -- in
		signal write_into_W : std_logic := '0'; -- in
		signal write_into_E : std_logic := '0'; -- in
		signal write_into_LOCAL : std_logic := '0'; -- in
		
		-- write signals from here to neighbors
		signal write_outof_N : std_logic; -- out
		signal write_outof_S : std_logic; -- out
		signal write_outof_W : std_logic; -- out
		signal write_outof_E : std_logic; -- out
		signal write_outof_LOCAL : std_logic; -- out
		
		constant clk_period : time := 1 ns;
    constant test_packet_F : std_logic_vector := X"f444555566667777";
  
begin

  dut: router_on_chip
    port map(
    		clock => clock,
		  reset => reset,
	
		  -- data from neighbors to here
		  N_in => N_in,
		  S_in => S_in,
		  W_in => W_in,
		  E_in => E_in,
		  LOCAL_in => LOCAL_in,
		
		  -- data from here to neighbors
		  N_out => N_out,
		  S_out => S_out,
		  W_out => W_out,
		  E_out => E_out,
		  LOCAL_out => LOCAL_out,
		
		  -- wait signals from neighbors to here
		  waitrequest_into_N => waitrequest_into_N,
		  waitrequest_into_S => waitrequest_into_S,
		  waitrequest_into_W => waitrequest_into_W,
		  waitrequest_into_E => waitrequest_into_E,
		  waitrequest_into_LOCAL => waitrequest_into_LOCAL,
		
		  -- wait signals from here to neighbors
		  waitrequest_outof_N => waitrequest_outof_N,
		  waitrequest_outof_S => waitrequest_outof_S,
		  waitrequest_outof_W => waitrequest_outof_W,
		  waitrequest_outof_E => waitrequest_outof_E,
		  waitrequest_outof_LOCAL => waitrequest_outof_LOCAL,
		
		  -- write signals from neighbors to here
		  write_into_N => write_into_N,
		  write_into_S => write_into_S,
		  write_into_W => write_into_W,
		  write_into_E => write_into_E,
		  write_into_LOCAL => write_into_LOCAL,
		
		  -- write signals from here to neighbors
		  write_outof_N => write_outof_N,
		  write_outof_S => write_outof_S,
		  write_outof_W => write_outof_W,
		  write_outof_E => write_outof_E,
		  write_outof_LOCAL => write_outof_LOCAL
    );
    
  -- 1GHz clock
  clock_process: process
  begin
    
    clock <= '0';
    wait for clk_period/2;
    clock <= '1';
    wait for clk_period/2;
    
  end process;
  
  test_process : process
  begin
    -- reset system
    reset <= '1';
    wait for clk_period * 2;
    reset <= '0';
    wait for clk_period * 2;
    
    -- send packet from N to S
    -- (N is (1,0), S is (1,2), we're at (1,1))
    W_in <= test_packet_E;--test_packet_E; -- x = 1, y = 2 => S
    write_into_W <= '1';
    wait for clk_period;
    if (waitrequest_outof_S /= '0') then
      wait until waitrequest_outof_S = '0';
    end if;
    write_into_W <= '0';
    
    wait for clk_period* 10;
    
    -- send four packets from five ports
    N_in <= test_packet_A;
    write_into_N <= '1';
    
    S_in <= test_packet_B;
    write_into_S <= '1';
    
    W_in <= test_packet_C;
    write_into_W <= '1';
    
    E_in <= test_packet_D;
    write_into_E <= '1';
    
    LOCAL_in <= test_packet_E;
    write_into_LOCAL <= '1';
    
    if (waitrequest_outof_N /= '0') then
      wait until waitrequest_outof_N = '0';
    end if;
    write_into_N <= '0';
    
    wait for clk_period* 10;
    
  end process;

end tb;