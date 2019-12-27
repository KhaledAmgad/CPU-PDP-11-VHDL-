library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity rom128x29 is
port(address: in std_logic_vector(6 downto 0);
data: out std_logic_vector(28 downto 0));
end entity;
architecture rom_arch of rom128x29 is
type rom_array is array (0 to 127) of std_logic_vector (28 downto 0);
constant rom: rom_array := (
"00101101011000001000000000001",
"01100100000000000000000000010",
"01001000000000000000010000100",
"00000000000000000000000000011",
"00000000000000000100110000000",
"00000000000000000000100001000",
"00000000000000000001000010000",
"00000000000000000000111001000",
"10000000100000000001000010000",
"10001101011000001000000010111",
"10001100011000100000000011011",
"00101101011000001000000001110",
"10000001000000001000000001101",
"01000000100000000001000010000",
"01100100000000000000000001111",
"10000000010000000000000011010",
"10100000110000000001010000011",
"10101101011000001000000100011",
"10101100011000100000000100111",
"00101101011000001000000010110",
"10100001000000001000000010101",
"01000000110000000001010000011",
"01100100000000000000000011110",
"01110000000000000001100011000",
"01000001000000001000000011001",
"01000000100000000001000010000",
"01001100000000100000000011111",
"01110001000000001001100011100",
"01000001000000001000000011101",
"01000000100000000001000010000",
"10100000010000000000000100010",
"01100001000000001001100100000",
"01000001000000001000000100001",
"01000000100000000001000010000",
"01001100000000100000000100110",
"01110100000000000001110100100",
"01000001000000001000000100101",
"01000000110000000001010000011",
"01100001000000001001110101010",
"01110101000000001001110101000",
"01000001000000001000000101001",
"01000000110000000001010000011",
"01000001000000001000000101011",
"01000000110000000001010000011",
"00000000000000000000000000000",
"01100000110000000010000101110",
"11110100000000000000000101100",
"11100010000000010000000101100",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"11100000010000000010010110100",
"00000000000000000010101000000",
"00000000000000000010111010000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"11001100000100000000000101101",
"11001100000000100000000101101",
"11001100000001000011000101100",
"11000000110000000010000101110",
"11001100000010000000000101101",
"11001100000010100000000101101",
"11001100000011000000000101101",
"11001100000011100000000101101",
"00000000010000011000001011100",
"00000000010000011011010001100",
"00000000010000011011100001100",
"00000000010000011011110001100",
"00000000010000011100000001100",
"00000000010000011100010001100",
"00000000010000011100100001100",
"00000000000000000000000000000",
"11001100001000000000000101101",
"11001100001000100000000101101",
"11001100001001000000000101101",
"11001100001001100000000101101",
"11001100001010000000000101101",
"11001100001010100000000101101",
"11001100001011000000000101101",
"11001100001011100000000101101",
"11001100001100000000000101101",
"11001100001100100000000101101",
"11001100001101000000000101101",
"00000000000000000000000000000",
"00101100000000100000001011101",
"01100100000000000000000101100",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000",
"00000000000000000000000000000"
);
begin
data <= rom(to_integer(unsigned(address)));
end architecture;