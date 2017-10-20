library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Somador de 1 bit
entity somador_1bit is
	port (
		a, b, cin : in  std_logic;
		s, cout   : out std_logic;
		vdd       : in  std_logic;
		vss       : in  std_logic
	);
end somador_1bit;

-- Implementacao do Somador de 1 bit
architecture structural of somador_1bit is
begin
	s    <= a xor b xor cin;
	cout <= (a and b) or (a and cin) or (b and cin);
end structural;
