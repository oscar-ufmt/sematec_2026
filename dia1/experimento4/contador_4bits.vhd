library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador_4bits is
	port(
		clk:	in std_logic;
		rst:	in std_logic;
		q_out:out std_logic_vector(31 downto 0)
	);

end entity;

architecture rtl of contador_4bits is
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
	
	q_out<=std_logic_vector(count_reg);
	
end architecture;