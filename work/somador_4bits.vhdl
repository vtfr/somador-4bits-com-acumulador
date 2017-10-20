library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Somador de 4 bits
entity somador_4bits is
	port (
		a, b : in  std_logic_vector(3 downto 0);
		s    : out std_logic_vector(3 downto 0);
		cin  : in  std_logic;
		cout : out std_logic;
		vdd  : in  std_logic;
		vss  : in  std_logic
	);
end somador_4bits;

-- Implementacao do Somador de 4 bits usando quatro somadores
-- de 1 bit
architecture structural of somador_4bits is
	component somador_1bit
		port (
			a, b, cin : in  std_logic;
			s, cout   : out std_logic;
			vdd       : in  std_logic;
			vss       : in  std_logic
		);
	end component;
	signal c1, c2, c3: std_logic;
begin
	S0: somador_1bit port map (a(0), b(0), cin, s(0), c1, vdd, vss);
	S1: somador_1bit port map (a(1), b(1), c1,  s(1), c2, vdd, vss);
	S2: somador_1bit port map (a(2), b(2), c2,  s(2), c3, vdd, vss);
	S3: somador_1bit port map (a(3), b(3), c3,  s(3), cout, vdd, vss);
end structural;
