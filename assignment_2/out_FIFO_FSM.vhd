-- Loren Lugosch
-- 260404057
-- 
-- Out_FIFOs have a FIFO queue
-- connected to another router
-- in the network of cores
-- and an interface which tells 
-- the various in_FIFOs that 
-- they can write to this queue.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.router_parameters.all;

entity out_FIFO_FSM is
	port (
		clock : in std_logic;
		reset : in std_logic;
		
		--Avalon-ish interface with neighboring core
		waitrequest_into_X : in std_logic;
		write_outof_X : out std_logic;
		
		write_outof_N_into_X : in std_logic;
		write_outof_S_into_X : in std_logic;
		write_outof_W_into_X : in std_logic;
		write_outof_E_into_X : in std_logic;
		write_outof_LOCAL_into_X : in std_logic;
		
		waitrequest_into_N_outof_X : out std_logic;
		waitrequest_into_S_outof_X : out std_logic;
		waitrequest_into_W_outof_X : out std_logic;
		waitrequest_into_E_outof_X : out std_logic;
		waitrequest_into_LOCAL_outof_X : out std_logic;
		
		currently_servicing : out std_logic_vector(2 downto 0);
		queue_empty : in std_logic;
		queue_full : in std_logic;
		push_enable : out std_logic;
		pop_enable : out std_logic
	);
end out_FIFO_FSM;

architecture rtl of out_FIFO_FSM is

	type recv_state_type is (RST, IDLE, SERVICING_PACKET);
	signal receiving_state : recv_state_type;

	type send_state_type is (RST, IDLE, SERVICING_PACKET);
	signal sending_state : send_state_type;
	
	signal currently_servicing_internal : std_logic_vector(2 downto 0);

begin
  
  currently_servicing <= currently_servicing_internal;

	process (clock, reset)
	begin
	  
		-- asynchronous reset
		if (reset = '1') then
			receiving_state <= RST;
			currently_servicing_internal <= NO_DEST;
			waitrequest_into_N_outof_X <= '1';
			waitrequest_into_S_outof_X <= '1';
			waitrequest_into_W_outof_X <= '1';
			waitrequest_into_E_outof_X <= '1';
			waitrequest_into_LOCAL_outof_X <= '1';
			push_enable <= '0';
			
		elsif (rising_edge(clock)) then
			case receiving_state is
				when RST =>
					receiving_state <= IDLE;
					
					
				when IDLE =>
					push_enable <= '0';
					waitrequest_into_N_outof_X <= '1';
					waitrequest_into_S_outof_X <= '1';
					waitrequest_into_W_outof_X <= '1';
					waitrequest_into_E_outof_X <= '1';
					waitrequest_into_LOCAL_outof_X <= '1';
				
					-- packets from N have absolute priority
					-- (todo: make fair arbitration algorithm)
					if (write_outof_N_into_X = '1') then
						currently_servicing_internal <= N;
						receiving_state <= SERVICING_PACKET;
						
					elsif (write_outof_S_into_X = '1') then	
						currently_servicing_internal <= S;
						receiving_state <= SERVICING_PACKET;
						
					elsif (write_outof_W_into_X = '1') then	
						currently_servicing_internal <= W;
						receiving_state <= SERVICING_PACKET;
						
					elsif (write_outof_E_into_X = '1') then	
						currently_servicing_internal <= E;
						receiving_state <= SERVICING_PACKET;
						
					elsif (write_outof_LOCAL_into_X = '1') then	
						currently_servicing_internal <= LOCAL;
						receiving_state <= SERVICING_PACKET;
						
					else 
						currently_servicing_internal <= NO_SRC;
						receiving_state <= IDLE;
						
					end if;
					
				when SERVICING_PACKET =>
					-- if the queue is not full,
					-- allow the data from the currently serviced
					-- write lines to drive the input to the queue
					-- and deassert waitrequest for the appropriate source
					
					-- if the queue is full,
					-- wait here until the queue is not full
					if (queue_full = '1') then
						receiving_state <= SERVICING_PACKET;
					else
					  if (currently_servicing_internal = N) then
					    waitrequest_into_N_outof_X <= '0';
					    waitrequest_into_S_outof_X <= '1';
					    waitrequest_into_W_outof_X <= '1';
					    waitrequest_into_E_outof_X <= '1';
					    waitrequest_into_LOCAL_outof_X <= '1';
					    
					  elsif (currently_servicing_internal = S) then
					    waitrequest_into_N_outof_X <= '1';
					    waitrequest_into_S_outof_X <= '0';
					    waitrequest_into_W_outof_X <= '1';
					    waitrequest_into_E_outof_X <= '1';
					    waitrequest_into_LOCAL_outof_X <= '1';
					    
					  elsif (currently_servicing_internal = W) then
					    waitrequest_into_N_outof_X <= '1';
					    waitrequest_into_S_outof_X <= '1';
					    waitrequest_into_W_outof_X <= '0';
					    waitrequest_into_E_outof_X <= '1';
					    waitrequest_into_LOCAL_outof_X <= '1';
					    
					  elsif (currently_servicing_internal = E) then
					    waitrequest_into_N_outof_X <= '1';
					    waitrequest_into_S_outof_X <= '1';
					    waitrequest_into_W_outof_X <= '1';
					    waitrequest_into_E_outof_X <= '0';
					    waitrequest_into_LOCAL_outof_X <= '1';
					    
					  elsif (currently_servicing_internal = LOCAL) then
					    waitrequest_into_N_outof_X <= '1';
					    waitrequest_into_S_outof_X <= '1';
					    waitrequest_into_W_outof_X <= '1';
					    waitrequest_into_E_outof_X <= '1';
					    waitrequest_into_LOCAL_outof_X <= '0';
					    
					  else
					    waitrequest_into_N_outof_X <= '1';
					    waitrequest_into_S_outof_X <= '1';
					    waitrequest_into_W_outof_X <= '1';
					    waitrequest_into_E_outof_X <= '1';
					    waitrequest_into_LOCAL_outof_X <= '1';
					    
					  end if;
					  
						push_enable <= '1';
						receiving_state <= IDLE;
					end if;

				end case;	
		end if;
		
	end process;
	
	-- also handle popping packets into neighboring core
	process(clock, reset)
	begin
	  if (reset = '1') then
	    pop_enable <= '0';
	    write_outof_X <= '0';
	    sending_state <= RST;
	  
	  elsif (rising_edge(clock)) then
  	  case sending_state is
  	    when RST => 
  	      sending_state <= IDLE;
  	     
  	    when IDLE => 
  	      if (queue_empty /= '1') then
  	       pop_enable <= '1';
       			write_outof_X <= '1';
       			sending_state <= SERVICING_PACKET;
   			   end if;
        		
		   when SERVICING_PACKET =>		
		     pop_enable <= '0';
		     
		     -- destination has read the data
        		if (waitrequest_into_X = '0') then
        			write_outof_X <= '0';
        			sending_state <= IDLE;
        		end if;
        		
		   end case;
		
		end if;
	end process;

end rtl;