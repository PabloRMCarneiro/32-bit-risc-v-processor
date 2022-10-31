LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

entity left_shift_32 is 
port(
	a_in : IN STD_LOGIC_VECTOR (31 downto 0);
	result: OUT STD_LOGIC_VECTOR (31 downto 0)
	);
end left_shift_32;

architecture left_shift_32Implementation of left_shift_32 is
begin
	result (31 downto 1) <= a_in(30 downto 0);
	result (0) <= '0';
end left_shift_32Implementation;