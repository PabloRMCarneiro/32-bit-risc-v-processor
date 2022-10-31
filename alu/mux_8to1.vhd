LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

entity mux_8to1 is
port (
		in0, in1, in2, in3, in4, in5, in6, in7 : IN STD_LOGIC_VECTOR(31 downto 0); -- mux input signal choice
		sel												: IN STD_LOGIC_VECTOR(2 downto 0);
		y													: OUT STD_LOGIC_VECTOR(31 downto 0)
	);
end mux_8to1;

architecture muxImplementation of mux_8to1 is
begin 
	process(sel, in0, in1, in2, in3, in4, in5, in6, in7)
	begin
		case sel is
			when "000" => y <= in0;
			when "001" => y <= in1;
			when "010" => y <= in2;
			when "011" => y <= in3;
			when "100" => y <= in4;
			when "101" => y <= in5;
			when "110" => y <= in6;
			when "111" => y <= in7;
			when others => y <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		end case;
	end process;
end muxImplementation;
