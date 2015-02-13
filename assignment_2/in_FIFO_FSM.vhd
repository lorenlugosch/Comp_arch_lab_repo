-- Loren Lugosch
-- 260404057
-- 
-- Controller for
-- router input port.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.router_parameters.all;

entity in_FIFO_FSM is
	port (
		clock : in std_logic;
		reset : in std_logic;
		write_into_X : in std_logic;
	
		dest_enable : out std_logic;
		pop_enable : out std_logic;
		push_enable : out std_logic;
		
		queue_empty : in std_logic;
		queue_full : in std_logic;
		waitrequest : in std_logic;
		waitrequest_outof_X : out std_logic
	);
end in_FIFO_FSM;

architecture rtl of in_FIFO_FSM is
	-- state information
	type send_state_type is (RST, IDLE, SERVICING_PACKET);
	signal sending_state : send_state_type;
	
	type recv_state_type is (RST, IDLE, SERVICING_PACKET);
	signal receiving_state : recv_state_type;

begin

	process (clock, reset)
	begin
	  
		-- asynchronous reset
		if (reset = '1') then
			sending_state <= RST;
		
		-- synchronous state machine
		elsif (rising_edge(clock)) then
		
			case sending_state is
				when RST =>
					dest_enable <= '0';
					pop_enable <= '0';
					sending_state <= IDLE;
				
				when IDLE =>
					pop_enable <= '0';
				
					-- if no packets in queue, do nothing
					if (queue_empty = '1') then
						dest_enable <= '0';
						sending_state <= IDLE;
					
					-- if there are packets in the queue,
					-- service them
					else
						dest_enable <= '1'; -- determine destination and set write high
						pop_enable <= '1';
						sending_state <= SERVICING_PACKET;

					end if;
				
				when SERVICING_PACKET =>
				  -- packet is ready to go;
				  -- don't pop again
					pop_enable <= '0';
					
					-- TODO: burst mode?
					if (waitrequest = '0') then
					  dest_enable <= '0';
						sending_state <= IDLE;
					else 
						sending_state <= SERVICING_PACKET;
					end if;
			
			end case;
		
		end if;
		
	end process;
	
	-- also handle letting packets into the queue
  process(write_into_X)
  begin
      if (queue_full = '0') and (write_into_X = '1') then
       waitrequest_outof_X <= '0';
       push_enable <= '1';
     else
       waitrequest_outof_X <= '1';
       push_enable <= '0';
     end if;
  end process;

end rtl;