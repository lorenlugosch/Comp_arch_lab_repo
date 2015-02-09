-- Loren Lugosch
-- 260404057
-- 
-- Simple register model to make
-- RTL view cleaner.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg is
	generic(
		data_width : integer := 64
	);
	port (
		D : in std_logic_vector(data_width-1 downto 0);
		Q : out std_logic_vector(data_width-1 downto 0);
		
		clock : in std_logic;
		reset : in std_logic
	);
end reg;

architecture arch of reg is

begin
	process (clock, reset)
	begin
		if (reset = '1') then
			Q <= X"0000000000000000";
		elsif (rising_edge(clock)) then
			Q <= D;
		end if;
	end process;

end arch;