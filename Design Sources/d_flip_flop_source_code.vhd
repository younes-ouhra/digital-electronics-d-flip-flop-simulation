----------------------------------------------------------------------------------
-- Younes OUHRA
-- Praktikum Digitaltechnik
-- OTH Regensburg
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Aufgabe2_D is
    Port ( CLK : in STD_LOGIC;
           D : in STD_LOGIC;
           Q : out STD_LOGIC);
end Aufgabe2_D;

architecture Behavioral of Aufgabe2_D is

begin
    process(CLK)
        begin 
        if (rising_edge(CLK)) then
        Q <= D;
        end if;
    end process ;
    
end Behavioral ;