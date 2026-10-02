library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_clk is
	port(
		clk:	in std_logic;
		rst:	in std_logic;
		q_out:out std_logic
	);

end entity;

architecture rtl of contador_clk is
	signal count_reg: unsigned(31 downto 0):=(others=>'0');
begin
	process(clk)
	begin
		if rst='0' then
			count_reg<=(others=>'0');
		elsif rising_edge(clk) then
			count_reg<=count_reg+1;
		end if;
	end process;
	
	q_out<=count_reg(0);
	
end architecture;