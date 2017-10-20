library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Mux de 4 bits
entity mux_4bits is
	port (
		ctrl : in std_logic;
		a, b : in  std_logic_vector(3 downto 0);
		s    : out std_logic_vector(3 downto 0);
		vdd       : in  std_logic;
		vss       : in  std_logic
	);
end mux_4bits;

-- Implementacao do Somador de 1 bit
architecture behavioral of mux_4bits is
begin
	s <= a when ctrl = "0" else b;
end behavioral;
