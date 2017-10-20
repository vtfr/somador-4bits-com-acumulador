library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Inversor de 4 bits
entity inv_4bits is
	port (
		a : in  std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0);
		vdd       : in  std_logic;
		vss       : in  std_logic
	);
end inv_4bits;

-- Implementacao do Somador de 1 bit
architecture structural of inv_4bits is
begin
	s <= not a;
end structural;
