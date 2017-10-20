library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Somador de 4 bits
entity somador_4bits_acc is
	port (
		a    : in  std_logic_vector(3 downto 0);
		s    : out std_logic_vector(3 downto 0);
		sel0 : in  std_logic;
		sel1 : in  std_logic;
		cout : out std_logic;
		vdd  : in  std_logic;
		vss  : in  std_logic;
		clk  : in  std_logic
	);
end somador_4bits_acc;

-- Implementacao do Somador de 4 bits usando quatro somadores
-- de 1 bit
architecture structural of somador_4bits_acc is
	-- Define o componente do somador de 4 bits
	component somador_4bits
	port (
		a, b : in  std_logic_vector(3 downto 0);
		s    : out std_logic_vector(3 downto 0);
		cin  : in  std_logic;
		cout : out std_logic;
		vdd  : in  std_logic;
		vss  : in  std_logic
	);
	end component;

	-- Define o componente do mux de 4 bits
	component mux_4bits
	port (
		ctrl : in std_logic;
		a, b : in  std_logic_vector(3 downto 0);
		s    : out std_logic_vector(3 downto 0)
	);
	end component;

	-- Define o componente do inversor de 4 bits
	component inv_4bits
	port (
		a : in  std_logic_vector(3 downto 0);
		s : out std_logic_vector(3 downto 0)
	);
	end component;

	-- Define o componente do inversor de 4 bits
	component acc_4bits
	port (
		a   : in  std_logic_vector(3 downto 0);
		s   : out std_logic_vector(3 downto 0);
		clk : in std_logic
	);
	end component;

	signal inv_a         : std_logic_vector(3 downto 0);
	signal mux0_value    : std_logic_vector(3 downto 0);
	signal acc_value     : std_logic_vector(3 downto 0);
	signal somador_value : std_logic_vector(3 downto 0);
begin
	-- Começa invertendo o A, dependendo do valor de sel0
	inv0: inv_4bits port map (
		a => a,
		s => inv_a);

	-- Liga ao mux0
	mux0: mux_4bits port map (
		a    => a,
		b    => inv_a,
		ctrl => sel0,
		s    => mux0_value);

	-- Liga ao somador
	somador: somador_4bits port map (
		a    => mux0_value,
		b    => acc_value,
		cin  => sel0,
		cout => cout,
		s    => somador_value);

	mux1: mux_4bits port map (
		a    => mux0_value,
		b    => somador_value,
		ctrl => sel1,
		s    => s);

	acc: acc_4bits port map (
		a   => s,
		clk => clk,
		s   => acc_value);

end structural;
