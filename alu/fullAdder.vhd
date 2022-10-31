LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

entity fullAdder is 
port(
	a : IN STD_LOGIC_VECTOR;
	b : IN STD_LOGIC_VECTOR;
	cin : IN STD_LOGIC_VECTOR;
	sum : OUT STD_LOGIC_VECTOR;
	cout: OUT STD_LOGIC_VECTOR
	);
end fullAdder;

architecture fullAdderImplementation of fullAdder is
begin 
	sum <= (a xor b) xor cin;
	cout <= (a and b) or ((a xor b) and cin);
end fullAdderImplementation;