LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

entity right_shift_32 is 
port(
	a_in : IN STD_LOGIC_VECTOR (31 downto 0);
	result: OUT STD_LOGIC_VECTOR (31 downto 0)
	);
end right_shift_32;

architecture right_shift_32Implementation of right_shift_32 is
begin
	result (30 downto 0) <= a_in(31 downto 1);
	result (31) <= '0';
end right_shift_32Implementation;