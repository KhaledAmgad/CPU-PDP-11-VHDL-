library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
 
entity Decoder5To32 is
   port(din : in std_logic_vector(4 downto 0);
        dout : out std_logic_vector(31 downto 0));
end Decoder5To32;
 
architecture Decoder5To32_arch of Decoder5To32 is
begin
   
   dout <="00000000000000000000000000000001" when din="00000"else
	  "00000000000000000000000000000010" when din="00001"else
	  "00000000000000000000000000000100" when din="00010"else
	  "00000000000000000000000000001000" when din="00011"else
	  "00000000000000000000000000010000" when din="00100"else
	  "00000000000000000000000000100000" when din="00101"else
	  "00000000000000000000000001000000" when din="00110"else
	  "00000000000000000000000010000000" when din="00111"else
	  "00000000000000000000000100000000" when din="01000"else
	  "00000000000000000000001000000000" when din="01001"else
	  "00000000000000000000010000000000" when din="01010"else
	  "00000000000000000000100000000000" when din="01011"else
	  "00000000000000000001000000000000" when din="01100"else
	  "00000000000000000010000000000000" when din="01101"else
	  "00000000000000000100000000000000" when din="01110"else
	  "00000000000000001000000000000000" when din="01111"else
	  "00000000000000010000000000000000" when din="10000"else
	  "00000000000000100000000000000000" when din="10001"else
	  "00000000000001000000000000000000" when din="10010"else
	  "00000000000010000000000000000000" when din="10011"else
	  "00000000000100000000000000000000" when din="10100"else
	  "00000000001000000000000000000000" when din="10101"else
	  "00000000010000000000000000000000" when din="10110"else
	  "00000000100000000000000000000000" when din="10111"else
	  "00000001000000000000000000000000" when din="11000"else
	  "00000010000000000000000000000000" when din="11001"else
	  "00000100000000000000000000000000" when din="11010"else
	  "00001000000000000000000000000000" when din="11011"else
	  "00010000000000000000000000000000" when din="11100"else
	  "00100000000000000000000000000000" when din="11101"else
	  "01000000000000000000000000000000" when din="11110"else
	  "10000000000000000000000000000000" when din="11111";

end Decoder5To32_arch;