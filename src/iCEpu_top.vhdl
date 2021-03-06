-------------------------------------------------------------------------------
-- Title      : icePU top
-- Project    : icePU
-------------------------------------------------------------------------------
-- File       : icePU_top.vhdl
-- Author     : August  <vonhachtaugust@gmail.com>
-- Company    :
-- Created    : 2020-07-01
-- Last update: 2020-07-07
-- Platform   : Lattice iCEstick Evaluation Kit
-- Standard   : VHDL'08
-------------------------------------------------------------------------------
-- Description: icePU top component
-------------------------------------------------------------------------------
-- Copyright (c) 2020
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2020-07-01  1.0      August  Created
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity icePU is
  port
  (
    -- Clock
    clk          : in std_logic;

    -- LEDs
    LED          : out std_logic_vector(3 downto 0);

    -- UART ctrl
    dcd          : out std_logic;
    dsr          : out std_logic;
    dtr          : in std_logic;
    cts          : out std_logic;
    rts          : in std_logic;

    -- UART data
    RS232_Tx_TTL : out std_logic;
    RS232_Rx_TTL : in std_logic
  );
end icePU;

architecture rtl of icePU is

begin

  LED <= "1111";

end architecture rtl;