-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2012.2
-- Copyright (C) 2012 Xilinx Inc. All rights reserved.
-- 
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity encrypt_Key_if is
    generic (
        IN_BW : integer := 32;
        OUT_BW : integer := 8);
    port (
        FSL_Rst     : in std_logic;
        FSL_Clk     : in std_logic;
        FSL_S_Clk   : out std_logic;
        FSL_S_Read    : out   std_logic;
        FSL_S_Data    : in    std_logic_vector(0 to IN_BW - 1);
        FSL_S_Control : in    std_logic;
        FSL_S_Exists  : in    std_logic;
        fifo_empty_n : OUT STD_LOGIC;
        fifo_read : IN STD_LOGIC;
        fifo_dout : OUT STD_LOGIC_VECTOR(OUT_BW - 1 downto 0));

attribute SIGIS : string;
attribute SIGIS of FSL_Clk : signal is "Clk";
attribute SIGIS of FSL_S_Clk : signal is "Clk";

end entity;

architecture arch of encrypt_Key_if is

component encrypt_Key_if_fifocore is
port (
    clk : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    if_empty_n : OUT STD_LOGIC;
    if_read : IN STD_LOGIC;
    if_dout : OUT STD_LOGIC_VECTOR(OUT_BW - 1 downto 0);
    if_full_n : OUT STD_LOGIC;
    if_write : IN STD_LOGIC;
    if_din : IN STD_LOGIC_VECTOR(OUT_BW - 1 downto 0));
end component;

signal   fifo_full_n : STD_LOGIC;
signal   fifo_write :  STD_LOGIC;
signal   fifo_write_tmp :  STD_LOGIC;
signal   fifo_write_sw0 :  STD_LOGIC;
signal   fifo_write_sw1 :  STD_LOGIC;
signal   fifo_din :    STD_LOGIC_VECTOR(OUT_BW - 1 downto 0);

constant WORDS : integer := (IN_BW + OUT_BW - 1) / IN_BW;
constant BUFF_BW : integer := (WORDS - 1) * IN_BW;

signal sig_fifo_din_tmp :  STD_LOGIC_VECTOR(BUFF_BW + IN_BW downto 0);
signal sig_data_buff : STD_LOGIC_VECTOR(BUFF_BW downto 0);
    

type st_type is (idle, write);
signal cs, ns : st_type;

begin

    process (FSL_Clk, FSL_Rst)
    begin
        if (FSL_Rst = '1') then
            cs <= idle;
        else
            if FSL_Clk'event and FSL_Clk = '1' then
                cs <= ns;
            end if;
        end if;
    end process;

    process (cs, FSL_S_Exists, fifo_full_n) 
    begin
        ns <= cs;
        case (cs) is
        when idle =>
            if (FSL_S_Exists = '1' and fifo_full_n = '1') then
                ns <= write;
            end if;
        when write =>
            ns <= idle;
        end case;
    end process;

    fifo_write <= fifo_write_tmp;

    sig_fifo_din_tmp <= sig_data_buff & FSL_S_Data;

    fifo_din <= sig_fifo_din_tmp(OUT_BW - 1 downto 0); 

    fifo_write_tmp <= '1' when cs = write else '0';
    FSL_S_Read <= '1' when cs = write else '0';

    encrypt_Key_if_fifocore_U : component encrypt_Key_if_fifocore
    port map ( 
        clk => FSL_Clk,
        reset => FSL_Rst,
        if_empty_n => fifo_empty_n,
        if_read => fifo_read,
        if_dout => fifo_dout,
        if_full_n => fifo_full_n,
        if_write => fifo_write,
        if_din => fifo_din);

end architecture;

