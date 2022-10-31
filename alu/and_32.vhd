LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

entity and_32 is 
port(
	a_in : IN STD_LOGIC_VECTOR (31 downto 0);
	b_in: IN STD_LOGIC_VECTOR (31 downto 0);
	result: OUT STD_LOGIC_VECTOR (31 downto 0)
	);
end and_32;

architecture and_32Implementation of and_32 is
begin
	result <= a_in and b_in;
end and_32Implementation;