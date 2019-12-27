LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all; 
ENTITY ram IS
	PORT(
		clk : IN std_logic;
		Wr  : IN std_logic;	
		address : IN  std_logic_vector(15 DOWNTO 0);
		datain  : IN  std_logic_vector(15 DOWNTO 0);
		dataout : OUT std_logic_vector(15 DOWNTO 0));
END ENTITY ram;

ARCHITECTURE syncrama OF ram IS
	TYPE ram_type IS ARRAY(0 TO 65535) OF std_logic_vector(15 DOWNTO 0);
	SIGNAL ram : ram_type := (
"0011101111000000",
"0000000000010011",
"0111000001000001",
"0011001111000011",
"0000000000010100",
"0011001011101111",
"0000000000010010",
"1100000001000000",
"1010101111100011",
"0000000000010010",
"1111011000000010",
"0011100011101111",
"0000000000010010",
"1100000001000000",
"1111000100000010",
"1100000000000011",
"1111000011110111",
"1001000000000000",
"0000000000000000",
"0000000000000111",
"0000000000000100",
"0000000000000101",
"0000000000000011",
"0000000000000110",
"0000000000000001",
"0000000000001000",
"0000000000000010",
OTHERS => "1000000000000000"
	);
	BEGIN
		PROCESS(clk) IS
			BEGIN
				IF falling_edge(clk) and Wr ='1' THEN  
						ram(to_integer(unsigned(address))) <= datain;
				END IF;
		END PROCESS;
		dataout <= ram(to_integer(unsigned(address)));
END syncrama;
