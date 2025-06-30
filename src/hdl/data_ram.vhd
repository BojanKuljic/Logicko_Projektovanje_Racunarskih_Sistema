
-------------------------------------------------------
-- Logicko projektovanje racunarskih sistema 1
-- 2011/2012
-- Lab 5
--
-- Data RAM
--
-- author: Ivan Kastelan (ivan.kastelan@rt-rk.com)
-------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity data_ram is
    Port ( iCLK : in  STD_LOGIC;
           inRST : in  STD_LOGIC;
           iA : in  STD_LOGIC_VECTOR (7 downto 0);
           iD : in  STD_LOGIC_VECTOR (15 downto 0);
           iWE : in  STD_LOGIC;
           oQ : out  STD_LOGIC_VECTOR (15 downto 0));
end data_ram;

architecture Behavioral of data_ram is

    type tMEM is array(0 to 255) of std_logic_vector(15 downto 0);
    signal rMEM : tMEM;
	 signal sMEM : tMEM := (others => x"0000");

begin

    process (iCLK, inRST) begin
        if (inRST = '0') then
            for i in 0 to 31 loop
                rMEM(i) <= sMEM(i); 
            end loop;
        elsif (iCLK'event and iCLK = '1') then
            if (iWE = '1') then
                rMEM(to_integer(unsigned(iA))) <= iD;
            end if;
        end if;
    end process;
-- ubaciti sadrzaj *.dat datoteke generisane pomocu lprsasm ------
sMEM(0) <= x"000a";
sMEM(1) <= x"0002";
sMEM(2) <= x"0002";
sMEM(3) <= x"001d";
sMEM(4) <= x"0018";
sMEM(5) <= x"000d";
sMEM(6) <= x"0004";
sMEM(7) <= x"0007";
sMEM(8) <= x"000e";
sMEM(9) <= x"0016";
sMEM(10) <= x"001e";
sMEM(11) <= x"0010";
sMEM(12) <= x"0013";
sMEM(13) <= x"0000";
sMEM(14) <= x"001a";
sMEM(15) <= x"0018";
sMEM(16) <= x"0007";
sMEM(17) <= x"0004";
sMEM(18) <= x"0014";
sMEM(19) <= x"0009";
sMEM(20) <= x"0019";
sMEM(21) <= x"0000";
sMEM(22) <= x"0000";
sMEM(23) <= x"0000";
sMEM(24) <= x"0000";
sMEM(25) <= x"0000";
sMEM(26) <= x"0000";
sMEM(27) <= x"0000";
sMEM(28) <= x"0000";
sMEM(29) <= x"0000";
sMEM(30) <= x"0000";
sMEM(31) <= x"ffff";
------------------------------------------------------------------
    
    oQ <= rMEM(to_integer(unsigned(iA)));

end Behavioral;
