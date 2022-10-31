LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

entity alu_32 is 
port(
		a : IN STD_LOGIC_VECTOR(31 downto 0);
		b : IN STD_LOGIC_VECTOR(31 downto 0);
		operation : IN STD_LOGIC_VECTOR(2 downto 0);
		result : OUT STD_LOGIC_VECTOR(31 downto 0);
		carry_out: OUT STD_LOGIC;
		zero: OUT STD_LOGIC
	);
end alu_32;

architecture aluImplementation  of alu_32 is
begin 
	process (a, b, operation)
	begin
		case operation is
			when "000" => result <= a AND b;
			when "001" => result <= a OR b;
			when "010" => result <= a + b;
			when "011" => result <= a - b;
			when "100" =>
				result (31 downto 1) <= a (30 downto 0); -- roll over left
				result(0) <= '0';
			when "101" =>
				result (30 downto 0) <= a (31 downto 1); -- roll over right
				result(0) <= '0';
			when others => NULL;
		end case;
	end process;
end aluImplementation;


				