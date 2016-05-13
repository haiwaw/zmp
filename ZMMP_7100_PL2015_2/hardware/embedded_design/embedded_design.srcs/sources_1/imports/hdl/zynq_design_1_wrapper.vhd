--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
--Date        : Wed Aug 12 09:43:09 2015
--Host        : HP-Z210 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target zynq_design_1_wrapper.bd
--Design      : zynq_design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zynq_design_1_wrapper is
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
    EMC_INTF_addr_out : out STD_LOGIC_VECTOR ( 26 downto 1 );
    EMC_INTF_adv_ldn : out STD_LOGIC;
    EMC_INTF_ce_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    EMC_INTF_oen : out STD_LOGIC_VECTOR ( 0 to 0 );
    EMC_INTF_wen : out STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    dip_switches_8bits_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    emc_intf_dq_io : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    leds_5bits_tri_o : out STD_LOGIC_VECTOR ( 4 downto 0 );
    push_buttons_3bits_tri_i : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end zynq_design_1_wrapper;

architecture STRUCTURE of zynq_design_1_wrapper is
  component zynq_design_1 is
  port (
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
    Push_Buttons_3Bits_tri_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    DIP_Switches_8Bits_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    LEDs_5Bits_tri_o : out STD_LOGIC_VECTOR ( 4 downto 0 );
    EMC_INTF_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    EMC_INTF_adv_ldn : out STD_LOGIC;
    EMC_INTF_ben : out STD_LOGIC_VECTOR ( 1 downto 0 );
    EMC_INTF_ce : out STD_LOGIC_VECTOR ( 0 to 0 );
    EMC_INTF_ce_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    EMC_INTF_clken : out STD_LOGIC;
    EMC_INTF_cre : out STD_LOGIC;
    EMC_INTF_dq_i : in STD_LOGIC_VECTOR ( 15 downto 0 );
    EMC_INTF_dq_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    EMC_INTF_dq_t : out STD_LOGIC_VECTOR ( 15 downto 0 );
    EMC_INTF_lbon : out STD_LOGIC;
    EMC_INTF_oen : out STD_LOGIC_VECTOR ( 0 to 0 );
    EMC_INTF_qwen : out STD_LOGIC_VECTOR ( 1 downto 0 );
    EMC_INTF_rnw : out STD_LOGIC;
    EMC_INTF_rpn : out STD_LOGIC;
    EMC_INTF_wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    EMC_INTF_wen : out STD_LOGIC
  );
  end component zynq_design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  
  signal EMC_INTF_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal EMC_INTF_ben : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal EMC_INTF_ce : STD_LOGIC_VECTOR ( 0 to 0 );
  signal EMC_INTF_clken : STD_LOGIC;
  signal EMC_INTF_cre : STD_LOGIC;
  signal EMC_INTF_lbon : STD_LOGIC;
  signal EMC_INTF_qwen : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal EMC_INTF_rnw : STD_LOGIC;
  signal EMC_INTF_rpn : STD_LOGIC;
  signal EMC_INTF_wait : STD_LOGIC_VECTOR ( 0 to 0 );
  
  signal emc_intf_dq_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal emc_intf_dq_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal emc_intf_dq_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal emc_intf_dq_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal emc_intf_dq_i_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal emc_intf_dq_i_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal emc_intf_dq_i_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal emc_intf_dq_i_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal emc_intf_dq_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal emc_intf_dq_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal emc_intf_dq_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal emc_intf_dq_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal emc_intf_dq_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal emc_intf_dq_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal emc_intf_dq_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal emc_intf_dq_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal emc_intf_dq_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal emc_intf_dq_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal emc_intf_dq_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal emc_intf_dq_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal emc_intf_dq_io_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal emc_intf_dq_io_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal emc_intf_dq_io_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal emc_intf_dq_io_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal emc_intf_dq_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal emc_intf_dq_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal emc_intf_dq_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal emc_intf_dq_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal emc_intf_dq_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal emc_intf_dq_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal emc_intf_dq_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal emc_intf_dq_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal emc_intf_dq_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal emc_intf_dq_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal emc_intf_dq_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal emc_intf_dq_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal emc_intf_dq_o_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal emc_intf_dq_o_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal emc_intf_dq_o_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal emc_intf_dq_o_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal emc_intf_dq_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal emc_intf_dq_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal emc_intf_dq_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal emc_intf_dq_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal emc_intf_dq_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal emc_intf_dq_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal emc_intf_dq_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal emc_intf_dq_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal emc_intf_dq_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal emc_intf_dq_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal emc_intf_dq_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal emc_intf_dq_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal emc_intf_dq_t_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal emc_intf_dq_t_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal emc_intf_dq_t_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal emc_intf_dq_t_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal emc_intf_dq_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal emc_intf_dq_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal emc_intf_dq_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal emc_intf_dq_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal emc_intf_dq_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal emc_intf_dq_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal emc_intf_dq_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal emc_intf_dq_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
begin

    EMC_INTF_addr_out( 26 downto 1 ) <= EMC_INTF_addr( 26 downto 1 );

emc_intf_dq_iobuf_0: component IOBUF
     port map (
      I => emc_intf_dq_o_0(0),
      IO => emc_intf_dq_io(0),
      O => emc_intf_dq_i_0(0),
      T => emc_intf_dq_t_0(0)
    );
emc_intf_dq_iobuf_1: component IOBUF
     port map (
      I => emc_intf_dq_o_1(1),
      IO => emc_intf_dq_io(1),
      O => emc_intf_dq_i_1(1),
      T => emc_intf_dq_t_1(1)
    );
emc_intf_dq_iobuf_10: component IOBUF
     port map (
      I => emc_intf_dq_o_10(10),
      IO => emc_intf_dq_io(10),
      O => emc_intf_dq_i_10(10),
      T => emc_intf_dq_t_10(10)
    );
emc_intf_dq_iobuf_11: component IOBUF
     port map (
      I => emc_intf_dq_o_11(11),
      IO => emc_intf_dq_io(11),
      O => emc_intf_dq_i_11(11),
      T => emc_intf_dq_t_11(11)
    );
emc_intf_dq_iobuf_12: component IOBUF
     port map (
      I => emc_intf_dq_o_12(12),
      IO => emc_intf_dq_io(12),
      O => emc_intf_dq_i_12(12),
      T => emc_intf_dq_t_12(12)
    );
emc_intf_dq_iobuf_13: component IOBUF
     port map (
      I => emc_intf_dq_o_13(13),
      IO => emc_intf_dq_io(13),
      O => emc_intf_dq_i_13(13),
      T => emc_intf_dq_t_13(13)
    );
emc_intf_dq_iobuf_14: component IOBUF
     port map (
      I => emc_intf_dq_o_14(14),
      IO => emc_intf_dq_io(14),
      O => emc_intf_dq_i_14(14),
      T => emc_intf_dq_t_14(14)
    );
emc_intf_dq_iobuf_15: component IOBUF
     port map (
      I => emc_intf_dq_o_15(15),
      IO => emc_intf_dq_io(15),
      O => emc_intf_dq_i_15(15),
      T => emc_intf_dq_t_15(15)
    );
emc_intf_dq_iobuf_2: component IOBUF
     port map (
      I => emc_intf_dq_o_2(2),
      IO => emc_intf_dq_io(2),
      O => emc_intf_dq_i_2(2),
      T => emc_intf_dq_t_2(2)
    );
emc_intf_dq_iobuf_3: component IOBUF
     port map (
      I => emc_intf_dq_o_3(3),
      IO => emc_intf_dq_io(3),
      O => emc_intf_dq_i_3(3),
      T => emc_intf_dq_t_3(3)
    );
emc_intf_dq_iobuf_4: component IOBUF
     port map (
      I => emc_intf_dq_o_4(4),
      IO => emc_intf_dq_io(4),
      O => emc_intf_dq_i_4(4),
      T => emc_intf_dq_t_4(4)
    );
emc_intf_dq_iobuf_5: component IOBUF
     port map (
      I => emc_intf_dq_o_5(5),
      IO => emc_intf_dq_io(5),
      O => emc_intf_dq_i_5(5),
      T => emc_intf_dq_t_5(5)
    );
emc_intf_dq_iobuf_6: component IOBUF
     port map (
      I => emc_intf_dq_o_6(6),
      IO => emc_intf_dq_io(6),
      O => emc_intf_dq_i_6(6),
      T => emc_intf_dq_t_6(6)
    );
emc_intf_dq_iobuf_7: component IOBUF
     port map (
      I => emc_intf_dq_o_7(7),
      IO => emc_intf_dq_io(7),
      O => emc_intf_dq_i_7(7),
      T => emc_intf_dq_t_7(7)
    );
emc_intf_dq_iobuf_8: component IOBUF
     port map (
      I => emc_intf_dq_o_8(8),
      IO => emc_intf_dq_io(8),
      O => emc_intf_dq_i_8(8),
      T => emc_intf_dq_t_8(8)
    );
emc_intf_dq_iobuf_9: component IOBUF
     port map (
      I => emc_intf_dq_o_9(9),
      IO => emc_intf_dq_io(9),
      O => emc_intf_dq_i_9(9),
      T => emc_intf_dq_t_9(9)
    );
zynq_design_1_i: component zynq_design_1
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
      DIP_Switches_8Bits_tri_i(7 downto 0) => dip_switches_8bits_tri_i(7 downto 0),
      EMC_INTF_addr(31 downto 0) => EMC_INTF_addr(31 downto 0),
      EMC_INTF_adv_ldn => EMC_INTF_adv_ldn,
      EMC_INTF_ben(1 downto 0) => EMC_INTF_ben(1 downto 0),
      EMC_INTF_ce(0) => EMC_INTF_ce(0),
      EMC_INTF_ce_n(0) => EMC_INTF_ce_n(0),
      EMC_INTF_clken => EMC_INTF_clken,
      EMC_INTF_cre => EMC_INTF_cre,
      EMC_INTF_dq_i(15) => emc_intf_dq_i_15(15),
      EMC_INTF_dq_i(14) => emc_intf_dq_i_14(14),
      EMC_INTF_dq_i(13) => emc_intf_dq_i_13(13),
      EMC_INTF_dq_i(12) => emc_intf_dq_i_12(12),
      EMC_INTF_dq_i(11) => emc_intf_dq_i_11(11),
      EMC_INTF_dq_i(10) => emc_intf_dq_i_10(10),
      EMC_INTF_dq_i(9) => emc_intf_dq_i_9(9),
      EMC_INTF_dq_i(8) => emc_intf_dq_i_8(8),
      EMC_INTF_dq_i(7) => emc_intf_dq_i_7(7),
      EMC_INTF_dq_i(6) => emc_intf_dq_i_6(6),
      EMC_INTF_dq_i(5) => emc_intf_dq_i_5(5),
      EMC_INTF_dq_i(4) => emc_intf_dq_i_4(4),
      EMC_INTF_dq_i(3) => emc_intf_dq_i_3(3),
      EMC_INTF_dq_i(2) => emc_intf_dq_i_2(2),
      EMC_INTF_dq_i(1) => emc_intf_dq_i_1(1),
      EMC_INTF_dq_i(0) => emc_intf_dq_i_0(0),
      EMC_INTF_dq_o(15) => emc_intf_dq_o_15(15),
      EMC_INTF_dq_o(14) => emc_intf_dq_o_14(14),
      EMC_INTF_dq_o(13) => emc_intf_dq_o_13(13),
      EMC_INTF_dq_o(12) => emc_intf_dq_o_12(12),
      EMC_INTF_dq_o(11) => emc_intf_dq_o_11(11),
      EMC_INTF_dq_o(10) => emc_intf_dq_o_10(10),
      EMC_INTF_dq_o(9) => emc_intf_dq_o_9(9),
      EMC_INTF_dq_o(8) => emc_intf_dq_o_8(8),
      EMC_INTF_dq_o(7) => emc_intf_dq_o_7(7),
      EMC_INTF_dq_o(6) => emc_intf_dq_o_6(6),
      EMC_INTF_dq_o(5) => emc_intf_dq_o_5(5),
      EMC_INTF_dq_o(4) => emc_intf_dq_o_4(4),
      EMC_INTF_dq_o(3) => emc_intf_dq_o_3(3),
      EMC_INTF_dq_o(2) => emc_intf_dq_o_2(2),
      EMC_INTF_dq_o(1) => emc_intf_dq_o_1(1),
      EMC_INTF_dq_o(0) => emc_intf_dq_o_0(0),
      EMC_INTF_dq_t(15) => emc_intf_dq_t_15(15),
      EMC_INTF_dq_t(14) => emc_intf_dq_t_14(14),
      EMC_INTF_dq_t(13) => emc_intf_dq_t_13(13),
      EMC_INTF_dq_t(12) => emc_intf_dq_t_12(12),
      EMC_INTF_dq_t(11) => emc_intf_dq_t_11(11),
      EMC_INTF_dq_t(10) => emc_intf_dq_t_10(10),
      EMC_INTF_dq_t(9) => emc_intf_dq_t_9(9),
      EMC_INTF_dq_t(8) => emc_intf_dq_t_8(8),
      EMC_INTF_dq_t(7) => emc_intf_dq_t_7(7),
      EMC_INTF_dq_t(6) => emc_intf_dq_t_6(6),
      EMC_INTF_dq_t(5) => emc_intf_dq_t_5(5),
      EMC_INTF_dq_t(4) => emc_intf_dq_t_4(4),
      EMC_INTF_dq_t(3) => emc_intf_dq_t_3(3),
      EMC_INTF_dq_t(2) => emc_intf_dq_t_2(2),
      EMC_INTF_dq_t(1) => emc_intf_dq_t_1(1),
      EMC_INTF_dq_t(0) => emc_intf_dq_t_0(0),
      EMC_INTF_lbon => EMC_INTF_lbon,
      EMC_INTF_oen(0) => EMC_INTF_oen(0),
      EMC_INTF_qwen(1 downto 0) => EMC_INTF_qwen(1 downto 0),
      EMC_INTF_rnw => EMC_INTF_rnw,
      EMC_INTF_rpn => EMC_INTF_rpn,
      EMC_INTF_wait(0) => EMC_INTF_wait(0),
      EMC_INTF_wen => EMC_INTF_wen,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      LEDs_5Bits_tri_o(4 downto 0) => leds_5bits_tri_o(4 downto 0),
      Push_Buttons_3Bits_tri_i(2 downto 0) => push_buttons_3bits_tri_i(2 downto 0)
    );
end STRUCTURE;
