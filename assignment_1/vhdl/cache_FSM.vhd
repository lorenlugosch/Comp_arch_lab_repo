-- Loren Lugosch
-- 260404057

-- This VHD encapsulates the FSM used in cache.vhd.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cache_FSM is
	generic (
		word_length : integer := 32;
		address_length : integer := 32; -- MSB is I/O
		index_length : integer := 8; --256 cache lines means 8 bits of index--
		tag_length : integer := 22; --32 address bits minus 10 = 22 tag bits--
		offset_length : integer := 2; --4 words per line means 2 bits req'd to address a word--
		number_of_cache_blocks : integer := 256
	);
	port (
		clock : in std_logic;
		reset : in std_logic;
		readdata_tag : in std_logic_vector(tag_length+1 downto 0);
	
		-- output control signals
		transaction : out std_logic_vector(2 downto 0);
		word_select : out std_logic_vector(1 downto 0);
		write_tag : out std_logic;
		writedata_tag : out std_logic_vector(tag_length+1 downto 0);
		
		-- Avalon interface necessary signals --
		
		-- CPU/cache bus
		s_addr : in std_logic_vector (31 downto 0);
		s_read : in std_logic;
		s_write : in std_logic;
		s_waitrequest : out std_logic; -- cache tells CPU to keep waiting
		
		-- cache/MEM bus
		m_addr : out integer range 0 to 2147483647; --2^31-1, MSB from s_addr used for I/O --out std_logic_vector (31 downto 0);
		m_read : out std_logic;
		m_write : out std_logic;
		m_waitrequest : in std_logic -- MEM tells cache to keep waiting
	);
end cache_FSM;

architecture arch of cache_FSM is
	-- FSM-specific signals
	type state_type is (RST, IDLE, READ_START, READ_GET_BLOCK_FROM_MEM, READ_GET_BLOCK_FROM_MEM_DEASSERT, WRITE_GET_BLOCK_FROM_MEM, WRITE_GET_BLOCK_FROM_MEM_DEASSERT, READ_FLUSH_TO_MEM, READ_FLUSH_TO_MEM_DEASSERT, WRITE_FLUSH_TO_MEM, WRITE_FLUSH_TO_MEM_DEASSERT, WRITE_START, DONE);
	signal state : state_type;
	signal out_count : integer range 0 to 4; -- used during block reads/writes
	signal tag_ready : std_logic;
	
	-- address decoding signals --
	signal s_addr_tag : std_logic_vector(tag_length-1 downto 0);
	signal s_addr_index : integer range 0 to 255; --std_logic_vector(index_length-1 downto 0); 
	signal s_addr_offset : std_logic_vector(1 downto 0);
	
	-- transaction codes
	constant cache_to_CPU : std_logic_vector(2 downto 0) := "000";
	constant cache_to_MEM : std_logic_vector(2 downto 0) := "001";
	constant CPU_to_cache : std_logic_vector(2 downto 0) := "010";
	constant MEM_to_cache : std_logic_vector(2 downto 0) := "011";
	constant CPU_to_MEM : std_logic_vector(2 downto 0) := "100";
	constant MEM_to_CPU : std_logic_vector(2 downto 0) := "101";
	constant NO_TRANSACTION : std_logic_vector(2 downto 0) := "111";

	begin
		-- decode address --
		s_addr_tag <= s_addr(address_length-1 downto address_length-tag_length);
		s_addr_index <= to_integer(unsigned(s_addr(address_length-tag_length-1 downto address_length-tag_length-index_length)));
		s_addr_offset <= s_addr(offset_length-1 downto 0);
	
		-- FSM for controlling datapath/interface --
		cache_controller : process(clock, reset)
		begin
			if reset = '1' then
				state <= RST;
				
			elsif (clock'event and clock = '1') then
				case state is
				  
				  -- FSM needs a reset state;
		      -- for now this does nothing,
		      -- but could add things like initializing
		      -- valid / dirty bits to '0'
					when RST =>
						out_count <= 0;
						state <= IDLE;
				
				  -- this state is entered after
				  -- every transaction is DONE
				  -- and left once s_read or s_write
				  -- goes high
				  -- (Avalon interface specifies that
				  -- the address must also be on the lines
				  -- when that happens-- if not, this will
				  -- bug out!)
					when IDLE =>
					  -- CPU waitrequest high until DONE
					  transaction <= NO_TRANSACTION;
						s_waitrequest <= '1';
						tag_ready <= '0';
					
						-- read request
						if s_read = '1' then
							state <= READ_START;
							
						-- write request
						elsif s_write = '1' then
							state <= WRITE_START;
						else
							state <= IDLE;
						end if;
						
					-- entered after s_read;
					-- remain here until tag is ready,
					-- then jump to:
					--     -DONE if hit or direct MEM read completes
					--     -READ_GET_BLOCK_FROM_MEM if the line is empty or
					--       has clean data
					--     -READ_FLUSH_TO_MEM if the line has dirty data
					when READ_START =>
					  -- if the MSB of the address
					  -- is 1, this is I/O and we should
					  -- ignore the cache
					  if s_addr(31) = '1' then
						  m_read <= '1';
						  transaction <= MEM_to_CPU;
						  m_addr <= to_integer(unsigned(s_addr(31-1 downto 0)));
						  
						  if m_waitrequest = '0' then
						    s_waitrequest <= '0';
							  state <= DONE;
					    else
							  state <= READ_START;
						  end if;
					    
					  -- if MSB is 0, need to check cache
					  else 
      						  -- (hack to force 1 CC for
      						  -- tag to become ready)
      						  if (tag_ready = '0') then
      						    state <= READ_START;
      						    tag_ready <= '1';
      						
      						  -- if tag is equal:
      						  elsif (readdata_tag(tag_length-1 downto 0) = s_addr_tag) then
      							
      							  -- valid?
      							  if (readdata_tag(tag_length+1) = '1') then
      								  -- hit!
      								  -- choose appropriate word based on
      								  -- address offset, then go to DONE
      								  -- (word appears on s_readdata in next CC)
      								  word_select <= s_addr_offset;
      							    transaction <= cache_to_CPU;
      							    s_waitrequest <= '0';
      								  state <= DONE;
      							
      							  -- invalid
      							  else
      								  -- compulsory miss
      								  -- need to read block from MEM
      								  state <= READ_GET_BLOCK_FROM_MEM;
      							  end if;
      							
      						  -- tag not equal
 						  else
      														
      							  -- valid (and dirty)
      							  if (readdata_tag(tag_length+1) = '1' and readdata_tag(tag_length) = '1') then
      								  -- conflict miss
      								  -- need to flush block to MEM
      								  state <= READ_FLUSH_TO_MEM;
      								
 							  -- invalid
    				    			 else
      								  -- compulsory miss / conflict miss but not dirty
      								  -- need to read block from MEM
      								  state <= READ_GET_BLOCK_FROM_MEM;
      								  m_read <= '1'; -- needs to be set high before next CC
      							 end if;
      							
        						end if;
  						
						end if;
						
					-- cycle between here and DEASSERT until
					-- the block is fully loaded into the cache
					when READ_GET_BLOCK_FROM_MEM =>
						-- read four words from the right place in MEM
						-- into the correct cache block
						
						-- set the MEM address to the address of the first
						-- word in the block of s_addr + the count
						-- ("out_count" is how many words we've read in)
						m_addr <= to_integer(unsigned(s_addr(31-1 downto 2)&"00")) + out_count;--std_logic_vector(to_unsigned(to_integer(unsigned(s_addr(31 downto 2)&"00")),m_addr'length) + out_count); --
						m_read <= '1';
						
						-- wait until MEM deasserts m_waitrequest
						-- then:
						--      -choose the appropriate word's SRAM
						--      -set its write bit to high using word_select
						--      -increment out_count (happens on next CC)
						if m_waitrequest = '0' then
							word_select <= std_logic_vector(to_unsigned(out_count,word_select'length));
							transaction <= MEM_to_cache;
							out_count <= out_count + 1;
							state <= READ_GET_BLOCK_FROM_MEM_DEASSERT;
						end if;
						
					-- the reading process block in
				  -- memory.vhd is only triggered by 
				  -- memread events, so we need to deassert
				  -- and then reassert m_read
					when READ_GET_BLOCK_FROM_MEM_DEASSERT =>
					  m_read <= '0';
					  
					  -- if 4 words read, we're done,
						-- and we can mark valid/not dirty
						-- (we need to set "word_select" and "transaction"
						-- so that the correct word appears
						-- on s_readdata before s_waitrequest deasserts)
						
						if out_count = 4 then
							write_tag <= '1';
							writedata_tag <= "10" & s_addr(30 downto 30-tag_length+1); -- "10" = valid and not dirty
							out_count <= 0;
							word_select <= s_addr_offset;
							transaction <= cache_to_CPU;
							s_waitrequest <= '0';
							state <= DONE;
														
						-- otherwise keep reading block from MEM
						else
						  state <= READ_GET_BLOCK_FROM_MEM;
						  transaction <= NO_TRANSACTION;
						end if;
					
					-- cycle between here and DEASSERT
					-- until dirty block is flushed to MEM					
					when READ_FLUSH_TO_MEM =>
						m_write <= '1';
						m_addr <= to_integer(unsigned(readdata_tag(tag_length-1 downto 0) & std_logic_vector(to_unsigned(s_addr_index,index_length)) & "00")) + out_count;
						
						if m_waitrequest = '0' then
							word_select <= std_logic_vector(to_unsigned(out_count,word_select'length));
							transaction <= cache_to_MEM;
							out_count <= out_count + 1;
							state <= READ_FLUSH_TO_MEM_DEASSERT;
						end if;
						
					-- after flushing block, jump from here
					-- to reading in the new block
					when READ_FLUSH_TO_MEM_DEASSERT =>
					  m_write <= '0';
					  
					  -- if we're done flushing data,
					  -- read new data from MEM
					  if out_count = 4 then
							out_count <= 0;
							state <= READ_GET_BLOCK_FROM_MEM;
														
						-- otherwise keep flushing block to MEM
						else
						  state <= READ_FLUSH_TO_MEM;
						  transaction <= NO_TRANSACTION;
						end if;
					
					-- entered after s_write
					-- only differences from READ_START
					-- are the target states (WRITE_ instead of READ_)
					when WRITE_START =>
					  -- if the MSB of the address
					  -- is 1, this is I/O and we should
					  -- ignore the cache
					  if s_addr(31) = '1' then
						  m_write <= '1';
						  transaction <= CPU_to_MEM;
						  m_addr <= to_integer(unsigned(s_addr(31-1 downto 0)));
						  
						  if m_waitrequest = '0' then
							 s_waitrequest <= '0';
							 state <= DONE;
					     else
							 state <= WRITE_START;
						  end if;
						
						-- if the MSB of the address
					  -- is 0, need to use cache
						else 
						  -- (hack to force 1 CC for 
						  -- tag to be ready)
						  if (tag_ready = '0') then
						    tag_ready <= '1';
						    state <= WRITE_START;
						
							-- tag = ?
							elsif (readdata_tag(tag_length-1 downto 0) = s_addr_tag) then
								-- valid? 
								if (readdata_tag(tag_length+1) = '1') then
									-- hit!
									transaction <= CPU_to_cache;
									word_select <= s_addr_offset;
									s_waitrequest <= '0';
									state <= DONE;
									
								-- invalid 
								else
								  -- compulsory miss, load block
									state <= WRITE_GET_BLOCK_FROM_MEM;
								end if;
							
							-- tag not equal
							else
							  -- valid? 
								if (readdata_tag(tag_length+1) = '1') then
								  --dirty?
								  if (readdata_tag(tag_length) = '1') then
								    -- conflict miss, flush line to MEM
								    state <= WRITE_FLUSH_TO_MEM;
								  
								  --not dirty
								  else
								    -- conflict miss, but don't bother to flush
								    state <= WRITE_GET_BLOCK_FROM_MEM;
								    
								  end if;
								  
								-- invalid
								else
								  -- compulsory miss, get block from MEM
								  state <= WRITE_GET_BLOCK_FROM_MEM;
								  
								end if;
							
							
							end if;
						
						end if;
						
					-- (same as read case, only decoupled for clarity
					-- and if a change needs to be made to "write" flow)
					when WRITE_GET_BLOCK_FROM_MEM =>
					  -- read four words from the right place in MEM
						-- into the correct cache block
						
						-- set the MEM address to the address of the first
						-- word in the block of s_addr + the count
						-- ("out_count" is how many words we've read in)
						m_addr <= to_integer(unsigned(s_addr(31-1 downto 2)&"00")) + out_count;--std_logic_vector(to_unsigned(to_integer(unsigned(s_addr(31 downto 2)&"00")),m_addr'length) + out_count); --
						m_read <= '1';
						
						-- wait until MEM deasserts m_waitrequest
						-- then:
						--      -choose the appropriate word's SRAM
						--      -set its write bit to high using word_select
						--      -increment out_count (happens on next CC)
						if m_waitrequest = '0' then
							word_select <= std_logic_vector(to_unsigned(out_count,word_select'length));
							transaction <= MEM_to_cache;
							out_count <= out_count + 1;
							state <= WRITE_GET_BLOCK_FROM_MEM_DEASSERT;
            end if;
						
					-- same as read, decoupled for clarity
					when WRITE_GET_BLOCK_FROM_MEM_DEASSERT =>
					  m_read <= '0';
					  
					  -- if 4 words read, we're done,
						-- and we can mark valid/dirty
						
						if out_count = 4 then
							write_tag <= '1';
							writedata_tag <= "11" & s_addr(30 downto 30-tag_length+1); -- "11" = valid and dirty
							out_count <= 0;
							word_select <= s_addr_offset;
							transaction <= CPU_to_cache;
							s_waitrequest <= '0';
							state <= DONE;
														
						-- otherwise keep reading block from MEM
						else
						  state <= WRITE_GET_BLOCK_FROM_MEM;
						  transaction <= NO_TRANSACTION;
						end if;
						
					-- same as read, decoupled for clarity
					when WRITE_FLUSH_TO_MEM =>
						m_write <= '1';
						m_addr <= to_integer(unsigned(readdata_tag(tag_length-1 downto 0) & std_logic_vector(to_unsigned(s_addr_index,index_length)) & "00")) + out_count;
						
						if m_waitrequest = '0' then
							word_select <= std_logic_vector(to_unsigned(out_count,word_select'length));
							transaction <= cache_to_MEM;
							out_count <= out_count + 1;
							state <= WRITE_FLUSH_TO_MEM_DEASSERT;
						end if;
						
					-- same as read, decoupled for clarity
					when WRITE_FLUSH_TO_MEM_DEASSERT =>
					  m_write <= '0';
					  
					  -- if we're done flushing data,
					  -- read new data from MEM
					  if out_count = 4 then
							out_count <= 0;
							state <= WRITE_GET_BLOCK_FROM_MEM;
														
						-- otherwise keep flushing block to MEM
						else
						  state <= WRITE_FLUSH_TO_MEM;
						  transaction <= NO_TRANSACTION;
						end if;
					
					-- after transaction, clean up interface signals
					-- and jump back to IDLE
					when DONE =>
						-- reassert CPU waitrequest
						s_waitrequest <= '1';
						m_write <= '0';
						m_read <= '0';
						transaction <= NO_TRANSACTION;
						write_tag <= '0';
						state <= IDLE;
				end case;
			end if;
		end process;

end arch;