--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
--Date        : Wed Jun  1 10:52:13 2022
--Host        : ampere running 64-bit Ubuntu 20.04.4 LTS
--Command     : generate_target rover_sys_bd_wrapper.bd
--Design      : rover_sys_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rover_sys_bd_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    jc_tri_io : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    jd_tri_io : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm_out_0 : out STD_LOGIC;
    pwm_out_1 : out STD_LOGIC
  );
end rover_sys_bd_wrapper;

architecture STRUCTURE of rover_sys_bd_wrapper is
  component rover_sys_bd is
  port (
    pwm_out_0 : out STD_LOGIC;
    jc_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    jc_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    jc_tri_t : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    pwm_out_1 : out STD_LOGIC;
    jd_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    jd_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    jd_tri_t : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component rover_sys_bd;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal jc_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jc_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal jc_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal jc_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal jc_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal jc_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal jc_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal jc_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal jc_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jc_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal jc_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal jc_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal jc_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal jc_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal jc_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal jc_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal jc_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jc_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal jc_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal jc_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal jc_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal jc_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal jc_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal jc_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal jc_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jc_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal jc_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal jc_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal jc_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal jc_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal jc_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal jc_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal jd_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jd_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal jd_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal jd_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal jd_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal jd_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal jd_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal jd_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal jd_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jd_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal jd_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal jd_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal jd_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal jd_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal jd_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal jd_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal jd_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jd_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal jd_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal jd_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal jd_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal jd_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal jd_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal jd_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal jd_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal jd_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal jd_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal jd_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal jd_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal jd_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal jd_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal jd_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
begin
jc_tri_iobuf_0: component IOBUF
     port map (
      I => jc_tri_o_0(0),
      IO => jc_tri_io(0),
      O => jc_tri_i_0(0),
      T => jc_tri_t_0(0)
    );
jc_tri_iobuf_1: component IOBUF
     port map (
      I => jc_tri_o_1(1),
      IO => jc_tri_io(1),
      O => jc_tri_i_1(1),
      T => jc_tri_t_1(1)
    );
jc_tri_iobuf_2: component IOBUF
     port map (
      I => jc_tri_o_2(2),
      IO => jc_tri_io(2),
      O => jc_tri_i_2(2),
      T => jc_tri_t_2(2)
    );
jc_tri_iobuf_3: component IOBUF
     port map (
      I => jc_tri_o_3(3),
      IO => jc_tri_io(3),
      O => jc_tri_i_3(3),
      T => jc_tri_t_3(3)
    );
jc_tri_iobuf_4: component IOBUF
     port map (
      I => jc_tri_o_4(4),
      IO => jc_tri_io(4),
      O => jc_tri_i_4(4),
      T => jc_tri_t_4(4)
    );
jc_tri_iobuf_5: component IOBUF
     port map (
      I => jc_tri_o_5(5),
      IO => jc_tri_io(5),
      O => jc_tri_i_5(5),
      T => jc_tri_t_5(5)
    );
jc_tri_iobuf_6: component IOBUF
     port map (
      I => jc_tri_o_6(6),
      IO => jc_tri_io(6),
      O => jc_tri_i_6(6),
      T => jc_tri_t_6(6)
    );
jc_tri_iobuf_7: component IOBUF
     port map (
      I => jc_tri_o_7(7),
      IO => jc_tri_io(7),
      O => jc_tri_i_7(7),
      T => jc_tri_t_7(7)
    );
jd_tri_iobuf_0: component IOBUF
     port map (
      I => jd_tri_o_0(0),
      IO => jd_tri_io(0),
      O => jd_tri_i_0(0),
      T => jd_tri_t_0(0)
    );
jd_tri_iobuf_1: component IOBUF
     port map (
      I => jd_tri_o_1(1),
      IO => jd_tri_io(1),
      O => jd_tri_i_1(1),
      T => jd_tri_t_1(1)
    );
jd_tri_iobuf_2: component IOBUF
     port map (
      I => jd_tri_o_2(2),
      IO => jd_tri_io(2),
      O => jd_tri_i_2(2),
      T => jd_tri_t_2(2)
    );
jd_tri_iobuf_3: component IOBUF
     port map (
      I => jd_tri_o_3(3),
      IO => jd_tri_io(3),
      O => jd_tri_i_3(3),
      T => jd_tri_t_3(3)
    );
jd_tri_iobuf_4: component IOBUF
     port map (
      I => jd_tri_o_4(4),
      IO => jd_tri_io(4),
      O => jd_tri_i_4(4),
      T => jd_tri_t_4(4)
    );
jd_tri_iobuf_5: component IOBUF
     port map (
      I => jd_tri_o_5(5),
      IO => jd_tri_io(5),
      O => jd_tri_i_5(5),
      T => jd_tri_t_5(5)
    );
jd_tri_iobuf_6: component IOBUF
     port map (
      I => jd_tri_o_6(6),
      IO => jd_tri_io(6),
      O => jd_tri_i_6(6),
      T => jd_tri_t_6(6)
    );
jd_tri_iobuf_7: component IOBUF
     port map (
      I => jd_tri_o_7(7),
      IO => jd_tri_io(7),
      O => jd_tri_i_7(7),
      T => jd_tri_t_7(7)
    );
rover_sys_bd_i: component rover_sys_bd
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      jc_tri_i(7) => jc_tri_i_7(7),
      jc_tri_i(6) => jc_tri_i_6(6),
      jc_tri_i(5) => jc_tri_i_5(5),
      jc_tri_i(4) => jc_tri_i_4(4),
      jc_tri_i(3) => jc_tri_i_3(3),
      jc_tri_i(2) => jc_tri_i_2(2),
      jc_tri_i(1) => jc_tri_i_1(1),
      jc_tri_i(0) => jc_tri_i_0(0),
      jc_tri_o(7) => jc_tri_o_7(7),
      jc_tri_o(6) => jc_tri_o_6(6),
      jc_tri_o(5) => jc_tri_o_5(5),
      jc_tri_o(4) => jc_tri_o_4(4),
      jc_tri_o(3) => jc_tri_o_3(3),
      jc_tri_o(2) => jc_tri_o_2(2),
      jc_tri_o(1) => jc_tri_o_1(1),
      jc_tri_o(0) => jc_tri_o_0(0),
      jc_tri_t(7) => jc_tri_t_7(7),
      jc_tri_t(6) => jc_tri_t_6(6),
      jc_tri_t(5) => jc_tri_t_5(5),
      jc_tri_t(4) => jc_tri_t_4(4),
      jc_tri_t(3) => jc_tri_t_3(3),
      jc_tri_t(2) => jc_tri_t_2(2),
      jc_tri_t(1) => jc_tri_t_1(1),
      jc_tri_t(0) => jc_tri_t_0(0),
      jd_tri_i(7) => jd_tri_i_7(7),
      jd_tri_i(6) => jd_tri_i_6(6),
      jd_tri_i(5) => jd_tri_i_5(5),
      jd_tri_i(4) => jd_tri_i_4(4),
      jd_tri_i(3) => jd_tri_i_3(3),
      jd_tri_i(2) => jd_tri_i_2(2),
      jd_tri_i(1) => jd_tri_i_1(1),
      jd_tri_i(0) => jd_tri_i_0(0),
      jd_tri_o(7) => jd_tri_o_7(7),
      jd_tri_o(6) => jd_tri_o_6(6),
      jd_tri_o(5) => jd_tri_o_5(5),
      jd_tri_o(4) => jd_tri_o_4(4),
      jd_tri_o(3) => jd_tri_o_3(3),
      jd_tri_o(2) => jd_tri_o_2(2),
      jd_tri_o(1) => jd_tri_o_1(1),
      jd_tri_o(0) => jd_tri_o_0(0),
      jd_tri_t(7) => jd_tri_t_7(7),
      jd_tri_t(6) => jd_tri_t_6(6),
      jd_tri_t(5) => jd_tri_t_5(5),
      jd_tri_t(4) => jd_tri_t_4(4),
      jd_tri_t(3) => jd_tri_t_3(3),
      jd_tri_t(2) => jd_tri_t_2(2),
      jd_tri_t(1) => jd_tri_t_1(1),
      jd_tri_t(0) => jd_tri_t_0(0),
      pwm_out_0 => pwm_out_0,
      pwm_out_1 => pwm_out_1
    );
end STRUCTURE;
