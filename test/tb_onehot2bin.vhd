----------------------------------------------------------------------------------
--                 ________  __       ___  _____        __
--                /_  __/ / / / ___  / _/ / ___/______ / /____
--                 / / / /_/ / / _ \/ _/ / /__/ __/ -_) __/ -_)
--                /_/  \____/  \___/_/   \___/_/  \__/\__/\__/
--
----------------------------------------------------------------------------------
--
-- Author(s):   ansotiropoulos
--
-- Design Name: generic_onehot2bin
-- Module Name: ONEHOT2BIN
--
-- Description: Testbench for generic ONEHOT2BIN
--
-- Copyright:   (C) 2016 Microprocessor & Hardware Lab, TUC
--
-- This source file is free software; you can redistribute it and/or modify
-- it under the terms of the GNU Lesser General Public License as published
-- by the Free Software Foundation; either version 2.1 of the License, or
-- (at your option) any later version.
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

ENTITY tb_onehot2bin IS
END tb_onehot2bin;

architecture behavior of tb_onehot2bin is

component ONEHOT2BIN
generic (
    N   : natural := 4
);
PORT (
    D   : in  std_logic_vector (3 downto 0);
    Q   : out std_logic_vector (1 downto 0)
);
end component;

signal D : std_logic_vector (3 downto 0) := (others => '0');
signal Q : std_logic_vector (1 downto 0) := (others => '0');

begin

O: ONEHOT2BIN
generic map (
    N => 4
)
port map (
    CLK => CLK,
    D => D,
    Q => Q
);

SIMUL: process
begin

D <= "0001";
wait for 20 ns;

D <= "0010";
wait for 20 ns;

D <= "0100";
wait for 20 ns;

D <= "1000";
wait for 20 ns;

D <= "0000";
wait for 20 ns;

D <= "0001";
wait for 20 ns;

D <= "0010";
wait for 20 ns;

wait;
end process;

end;