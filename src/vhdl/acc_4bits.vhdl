library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity acc_4bits is
	port(
		clk : in  std_logic;
		a   : in  std_logic_vector(3 downto 0);
		s   : out std_logic_vector(3 downto 0)
	);
end acc_4bits;

architecture behavioral of acc_4bits is
begin
	process (clk)
	begin
		if rising_edge(clk) then
			s <= a;
		end if;
	end process;
end behavioral;
