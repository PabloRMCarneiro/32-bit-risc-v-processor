LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

entity or_32 is 
port(
	a_in : IN STD_LOGIC_VECTOR (31 downto 0);
	b_in: IN STD_LOGIC_VECTOR (31 downto 0);
	result: OUT STD_LOGIC_VECTOR (31 downto 0)
	);
end or_32;

architecture or_32Implementation of or_32 is
begin
	result <= a_in or b_in;
end or_32Implementation;