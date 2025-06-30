
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity instr_rom is
    Port ( iA : in  STD_LOGIC_VECTOR (4 downto 0);
           oQ : out  STD_LOGIC_VECTOR (14 downto 0));
end instr_rom;

-- ubaciti sadrzaj *.txt datoteke generisane pomocu lprsasm ------
architecture Behavioral of instr_rom is
begin
    oQ <= "100000111000000"  when iA = 0 else
          "000000110111000"  when iA = 1 else
          "000110000000000"  when iA = 2 else
          "000001001000111"  when iA = 3 else
          "000001010001111"  when iA = 4 else
          "000111001010000"  when iA = 5 else
          "000110111111000"  when iA = 6 else
          "000111111111000"  when iA = 7 else
          "010001000010001"  when iA = 8 else
          "100000011000000"  when iA = 9 else
          "100000100000001"  when iA = 10 else
          "000010101011100"  when iA = 11 else
          "110000000101010"  when iA = 12 else
          "000110000000000"  when iA = 13 else
          "000111001001000"  when iA = 14 else
          "000110010010000"  when iA = 15 else
          "010000000000111"  when iA = 16 else
          "000010000000110"  when iA = 17 else
          "000000111110000"  when iA = 18 else
          "000110111111000"  when iA = 19 else
          "100000110000010"  when iA = 20 else
          "000111111111000"  when iA = 21 else
          "010001000011110"  when iA = 22 else
          "100000011000000"  when iA = 23 else
          "000010100110011"  when iA = 24 else
          "010010000011100"  when iA = 25 else
          "000110000000000"  when iA = 26 else
          "010000000010101"  when iA = 27 else
          "000000110011000"  when iA = 28 else
          "010000000011010"  when iA = 29 else
          "010000000011110"  when iA = 30 else
          "000000000000000";
end Behavioral;
------------------------------------------------------------------
