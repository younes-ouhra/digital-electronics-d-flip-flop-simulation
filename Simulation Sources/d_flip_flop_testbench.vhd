----------------------------------------------------------------------------------
-- Younes OUHRA
-- Praktikum Digitaltechnik
-- OTH Regensburg
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity tb_D_flip_flop is
end tb_D_flip_flop;

architecture tb of tb_D_flip_flop is

    component D_flip_flop
        port (CLK : in std_logic;
              D   : in std_logic;
              Q   : out std_logic);
    end component;

    signal CLK : std_logic;
    signal D   : std_logic;
    signal Q   : std_logic;

begin

    dut : D_flip_flop
    port map (CLK => CLK,
              D   => D,
              Q   => Q);

    stimuli : process
    begin
        
        CLK <= '0', '1' after 10ps, '0' after 20ps, '1' after 30ps, '0' after 40ps, '1' after 50ps;
        D <= '0', '1' after 15ps, '0' after 35ps, '1' after 55ps;

        wait;
    end process;

end tb;

configuration cfg_tb_D_flip_flop of tb_D_flip_flop is
    for tb
    end for;
end cfg_tb_D_flip_flop;
