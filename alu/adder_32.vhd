LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

entity adder_32 is 
	port(
		a_in : IN STD_LOGIC_VECTOR (31 downto 0);
		b_in : IN STD_LOGIC_VECTOR (31 downto 0);
		c_in : IN STD_LOGIC;
		result : OUT STD_LOGIC_VECTOR (31 downto 0);
		c_out: OUT STD_LOGIC
		);
		
end adder_32;

architecture adder_32_Implementation of adder_32 is
	component fullAdder is
		port(
			a : IN STD_LOGIC;
			b : IN STD_LOGIC;
			cin : IN STD_LOGIC;
			sum : OUT STD_LOGIC;
			cout: OUT STD_LOGIC
		);
	end component;
	signal wire:STD_LOGIC_VECTOR (30 downto 0);
begin
	p1: fullAdder port map(a_in(0), b_in(0),c_in, result(0), wire(0));
	P2: fullAdder port map(a_in(1), b_in(1),wire(1), result(1), wire(1));
	P3: fullAdder port map(a_in(2), b_in(2),wire(2), result(2), wire(2));
	P4: fullAdder port map(a_in(3), b_in(3),wire(3), result(3), wire(3));
	P5: fullAdder port map(a_in(4), b_in(4),wire(4), result(4), wire(4));
	P6: fullAdder port map(a_in(5), b_in(5),wire(5), result(5), wire(5));
	P7: fullAdder port map(a_in(6), b_in(6),wire(6), result(6), wire(6));
	P8: fullAdder port map(a_in(7), b_in(7),wire(7), result(7), wire(7));
	P9: fullAdder port map(a_in(8), b_in(8),wire(8), result(8), wire(8));
	P10: fullAdder port map(a_in(9), b_in(9),wire(9), result(9), wire(9));
	P11: fullAdder port map(a_in(10), b_in(10),wire(10), result(10), wire(10));
	P12: fullAdder port map(a_in(11), b_in(11),wire(11), result(11), wire(11));
	P13: fullAdder port map(a_in(12), b_in(12),wire(12), result(12), wire(12));
	P14: fullAdder port map(a_in(13), b_in(13),wire(13), result(13), wire(13));
	P15: fullAdder port map(a_in(14), b_in(14),wire(14), result(14), wire(14));
	P16: fullAdder port map(a_in(15), b_in(15),wire(15), result(15), wire(15));
	P17: fullAdder port map(a_in(16), b_in(16),wire(16), result(16), wire(16));
	P18: fullAdder port map(a_in(17), b_in(17),wire(17), result(17), wire(17));
	P19: fullAdder port map(a_in(18), b_in(18),wire(18), result(18), wire(18));
	P20: fullAdder port map(a_in(19), b_in(19),wire(19), result(19), wire(19));
	P21: fullAdder port map(a_in(20), b_in(20),wire(20), result(20), wire(20));
	P22: fullAdder port map(a_in(21), b_in(21),wire(21), result(21), wire(21));
	P23: fullAdder port map(a_in(22), b_in(22),wire(22), result(22), wire(22));
	P24: fullAdder port map(a_in(23), b_in(23),wire(23), result(23), wire(23));
	P25: fullAdder port map(a_in(24), b_in(24),wire(24), result(24), wire(24));
	P26: fullAdder port map(a_in(25), b_in(25),wire(25), result(25), wire(25));
	P27: fullAdder port map(a_in(26), b_in(26),wire(26), result(26), wire(26));
	P28: fullAdder port map(a_in(27), b_in(27),wire(27), result(27), wire(27));
	P29: fullAdder port map(a_in(28), b_in(28),wire(28), result(28), wire(28));
	P30: fullAdder port map(a_in(29), b_in(29),wire(29), result(29), wire(29));
	P31: fullAdder port map(a_in(30), b_in(30),wire(30), result(30), wire(30));
	P32: fullAdder port map(a_in(31), b_in(31),wire(31), result(31), c_out);
end adder_32_Implementation;