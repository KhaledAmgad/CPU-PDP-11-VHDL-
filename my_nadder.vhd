LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE ieee.numeric_std.all; 
ENTITY my_nadder IS

	GENERIC (n : integer := 16);

	PORT(a,b : IN std_logic_vector(n-1 DOWNTO 0);
	     cin : IN std_logic;
	     f : OUT std_logic_vector(n-1 DOWNTO 0);
	     cout : OUT std_logic);
END my_nadder;




ARCHITECTURE a_my_nadder OF
my_nadder IS
	COMPONENT my_adder IS
		PORT( a,b,cin : IN std_logic;
		      s,cout : OUT std_logic);
	END COMPONENT;

SIGNAL temp : std_logic_vector(n-1 DOWNTO 0);

BEGIN

f0: my_adder PORT MAP(a(0),b(0),cin,f(0),temp(0));

loop1: FOR i IN 1 TO n-1 GENERATE

	fx: my_adder PORT MAP (a(i),b(i),temp(i-1),f(i),temp(i));

END GENERATE;

cout <= temp(n-1);

END a_my_nadder;
