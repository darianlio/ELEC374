library ieee;
use ieee.std_logic_1164.all;

entity reg32 is
	port(clk, clear, wEnable: in std_logic;
		  INPUT: in std_logic_vector(31 downto 0);
		  OUTPUT: out std_logic_vector(31 downto 0);
			);
end entity reg32;

architecture behavior of reg32 is
begin
	process(clk, clear)
	begin
		if clear = '1' then
			OUTPUT <= (others=>'0');
		elsif rising_edge(clk) then
			if (wEnable='1') then
				OUTPUT <= INPUT;
			end if;
		end if;
	end process;
end architecture;