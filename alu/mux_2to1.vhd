LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

entity mux_2to1 is 
port(
	in0, in1 : IN STD_LOGIC_VECTOR (31 downto 0);
	sel : IN STD_LOGIC;
	y: OUT STD_LOGIC_VECTOR (31 downto 0)
	);
end mux_2to1;

architecture mux_2to1Implementation of mux_2to1 is
begin
	process(sel, in0, in1)
	begin
		case sel is
			when '0' => y <= in0;
			when '1' => y <= in1;
			when others => y <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end case;
	end process;
end mux_2to1Implementation;