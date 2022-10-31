LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

entity not_32 is 
port(
	x : IN STD_LOGIC_VECTOR (31 downto 0);
	y: OUT STD_LOGIC_VECTOR (31 downto 0)
	);
end not_32;

architecture not_32Implementation of not_32 is
begin
	y <= not x;
end not_32Implementation;