LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

entity compoundAlu is 
port(
		a : 			IN STD_LOGIC_VECTOR(31 downto 0);
		b : 			IN STD_LOGIC_VECTOR(31 downto 0);
		operation : IN STD_LOGIC_VECTOR(2 downto 0);
		result : 	INOUT STD_LOGIC_VECTOR(31 downto 0);
		carry_out: 	OUT STD_LOGIC;
		zero: 		OUT STD_LOGIC
	);
end compoundAlu;

architecture aluImplementation of compoundALu is
	
	-- 32-bits ADDER
	component adder_32 is
		port(
			a_in : 		IN STD_LOGIC_VECTOR (31 downto 0);
			b_in : 		IN STD_LOGIC_VECTOR (31 downto 0);
			c_in : 		IN STD_LOGIC;
			result : 	OUT STD_LOGIC_VECTOR (31 downto 0);
			c_out: 		OUT STD_LOGIC
		);
	end component;
	
	-- 32-bits AND GATE
	component and_32 is
		port(
			a_in : 		IN STD_LOGIC_VECTOR (31 downto 0);
			b_in: 		IN STD_LOGIC_VECTOR (31 downto 0);
			result: 	OUT STD_LOGIC_VECTOR (31 downto 0)
		);
	end component;
	
	-- 32-bits OR GATE
	component or_32 is
		port(
			a_in : 		IN STD_LOGIC_VECTOR (31 downto 0);
			b_in: 		IN STD_LOGIC_VECTOR (31 downto 0);
			result: 	OUT STD_LOGIC_VECTOR (31 downto 0)
		);
	end component;
	
	-- 32-bits LOGICAL SHIFT LEFT
	component left_shift_32 is
		port(
			a_in : 		IN STD_LOGIC_VECTOR (31 downto 0);
			result: 	OUT STD_LOGIC_VECTOR (31 downto 0)
		);
	end component;
	
	-- 32-bits LOGICAL SHIFT RIGHT
	component right_shift_32 is
		port(
			a_in : 		IN STD_LOGIC_VECTOR (31 downto 0);
			result: 	OUT STD_LOGIC_VECTOR (31 downto 0)
		);
	end component;
	
	-- 32-bits 8-TO-1 MUX
	component mux_8to1 is
		port (
			in0, in1, in2, in3, in4, in5, in6, in7 : IN STD_LOGIC_VECTOR(31 downto 0); -- mux input signal choice
			sel												: IN STD_LOGIC_VECTOR(2 downto 0);
			y													: OUT STD_LOGIC_VECTOR(31 downto 0)
		);
	end component;
	
	-- 32-bits 2-TO-1 MUX
	component mux_2to1 is
		port(
			in0, in1 : IN STD_LOGIC_VECTOR (31 downto 0);
			sel : IN STD_LOGIC;
			y: OUT STD_LOGIC_VECTOR (31 downto 0)
		);
	
	end component;
	
	-- 32-bits NOT GATE
	component not_32
		port(
			x : IN STD_LOGIC_VECTOR (31 downto 0);
			y: OUT STD_LOGIC_VECTOR (31 downto 0)
	);
	end component;
	
	signal andResult : STD_LOGIC_VECTOR(31 downto 0);
	signal orResult : STD_LOGIC_VECTOR(31 downto 0);
	signal adderResult : STD_LOGIC_VECTOR(31 downto 0);
	signal lslResult : STD_LOGIC_VECTOR(31 downto 0);
	signal lsrResult : STD_LOGIC_VECTOR(31 downto 0);
	signal bNegOrNot : STD_LOGIC_VECTOR(31 downto 0);
	signal bNot : STD_LOGIC_VECTOR(31 downto 0);
begin
	
	mux1: 	mux_8to1 port map(		in0 => andResult,
												in1 => orResult,
												in2 => adderResult,
												in3 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
												in4 => lslResult,
												in5 => lsrResult,
												in6 => adderResult,
												in7 => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",
												sel => operation,
												y => result);
	
	adder1: 	adder_32 port map(		a_in => a,
												b_in => bNegOrNot,
												c_in => operation(2),
												result => adderResult,
												c_out => carry_out);
	
	and1:		and_32 port map( 			a, b, andResult);
	
	or1:		or_32 port map(			a, b, orResult);
	
	lsl1: 	left_shift_32 port map( a, lslResult);

	lsr1: 	right_shift_32 port map(a, lsrResult);
	
	negMux: 	mux_2to1 port map(		in0 => b,
												in1 => bNot, 
												sel => operation(2),
												y 	=> bNegOrNot);
	
	notber: 	not_32 port Map(			b, bNot);
	
end aluImplementation;