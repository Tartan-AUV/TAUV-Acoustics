-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Nov 30 00:29:44 2023
-- Host        : Gleb-ThinkPad running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Dev/TAUV-Acoustics/hdl/acoustics-v2-zybo/acoustics-v2-zybo.gen/sources_1/bd/AGC/ip/AGC_LTC2315_Driver_Wrapp_0_0/AGC_LTC2315_Driver_Wrapp_0_0_sim_netlist.vhdl
-- Design      : AGC_LTC2315_Driver_Wrapp_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AGC_LTC2315_Driver_Wrapp_0_0_LTC2315_Driver is
  port (
    cs : out STD_LOGIC;
    valid : out STD_LOGIC;
    enable : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AGC_LTC2315_Driver_Wrapp_0_0_LTC2315_Driver : entity is "LTC2315_Driver";
end AGC_LTC2315_Driver_Wrapp_0_0_LTC2315_Driver;

architecture STRUCTURE of AGC_LTC2315_Driver_Wrapp_0_0_LTC2315_Driver is
  signal cs0 : STD_LOGIC;
  signal cs_ff : STD_LOGIC;
  signal cs_ff_i_1_n_0 : STD_LOGIC;
  signal sck_cntr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \sck_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sck_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sck_cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal \sck_cntr[3]_i_1_n_0\ : STD_LOGIC;
  signal \sck_cntr[4]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cs__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of cs_ff_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sck_cntr[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sck_cntr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sck_cntr[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sck_cntr[4]_i_2\ : label is "soft_lutpair1";
begin
\cs__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => sck_cntr(2),
      I1 => sck_cntr(3),
      I2 => sck_cntr(4),
      I3 => enable,
      I4 => reset_n,
      O => cs
    );
cs_ff_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5557FFFF"
    )
        port map (
      I0 => enable,
      I1 => sck_cntr(4),
      I2 => sck_cntr(3),
      I3 => sck_cntr(2),
      I4 => reset_n,
      O => cs_ff_i_1_n_0
    );
cs_ff_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cs_ff_i_1_n_0,
      Q => cs_ff,
      R => '0'
    );
\sck_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sck_cntr(0),
      O => \sck_cntr[0]_i_1_n_0\
    );
\sck_cntr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FDFF00"
    )
        port map (
      I0 => sck_cntr(4),
      I1 => sck_cntr(3),
      I2 => sck_cntr(2),
      I3 => sck_cntr(1),
      I4 => sck_cntr(0),
      O => \sck_cntr[1]_i_1_n_0\
    );
\sck_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => sck_cntr(2),
      I1 => sck_cntr(1),
      I2 => sck_cntr(0),
      O => \sck_cntr[2]_i_1_n_0\
    );
\sck_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => sck_cntr(3),
      I1 => sck_cntr(2),
      I2 => sck_cntr(1),
      I3 => sck_cntr(0),
      O => \sck_cntr[3]_i_1_n_0\
    );
\sck_cntr[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => cs0
    );
\sck_cntr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AA8AAAA"
    )
        port map (
      I0 => sck_cntr(4),
      I1 => sck_cntr(3),
      I2 => sck_cntr(2),
      I3 => sck_cntr(1),
      I4 => sck_cntr(0),
      O => \sck_cntr[4]_i_2_n_0\
    );
\sck_cntr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => enable,
      D => \sck_cntr[0]_i_1_n_0\,
      Q => sck_cntr(0),
      R => cs0
    );
\sck_cntr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => enable,
      D => \sck_cntr[1]_i_1_n_0\,
      Q => sck_cntr(1),
      R => cs0
    );
\sck_cntr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => enable,
      D => \sck_cntr[2]_i_1_n_0\,
      Q => sck_cntr(2),
      R => cs0
    );
\sck_cntr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => enable,
      D => \sck_cntr[3]_i_1_n_0\,
      Q => sck_cntr(3),
      R => cs0
    );
\sck_cntr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => enable,
      D => \sck_cntr[4]_i_2_n_0\,
      Q => sck_cntr(4),
      R => cs0
    );
valid_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007777777F"
    )
        port map (
      I0 => reset_n,
      I1 => enable,
      I2 => sck_cntr(4),
      I3 => sck_cntr(3),
      I4 => sck_cntr(2),
      I5 => cs_ff,
      O => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AGC_LTC2315_Driver_Wrapp_0_0_LTC2315_Driver_Wrapper is
  port (
    cs : out STD_LOGIC;
    valid : out STD_LOGIC;
    enable : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of AGC_LTC2315_Driver_Wrapp_0_0_LTC2315_Driver_Wrapper : entity is "LTC2315_Driver_Wrapper";
end AGC_LTC2315_Driver_Wrapp_0_0_LTC2315_Driver_Wrapper;

architecture STRUCTURE of AGC_LTC2315_Driver_Wrapp_0_0_LTC2315_Driver_Wrapper is
begin
driver: entity work.AGC_LTC2315_Driver_Wrapp_0_0_LTC2315_Driver
     port map (
      clk => clk,
      cs => cs,
      enable => enable,
      reset_n => reset_n,
      valid => valid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AGC_LTC2315_Driver_Wrapp_0_0 is
  port (
    enable : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    valid : out STD_LOGIC;
    miso : in STD_LOGIC;
    sck : out STD_LOGIC;
    cs : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AGC_LTC2315_Driver_Wrapp_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of AGC_LTC2315_Driver_Wrapp_0_0 : entity is "AGC_LTC2315_Driver_Wrapp_0_0,LTC2315_Driver_Wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of AGC_LTC2315_Driver_Wrapp_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of AGC_LTC2315_Driver_Wrapp_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of AGC_LTC2315_Driver_Wrapp_0_0 : entity is "LTC2315_Driver_Wrapper,Vivado 2023.2";
end AGC_LTC2315_Driver_Wrapp_0_0;

architecture STRUCTURE of AGC_LTC2315_Driver_Wrapp_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 87500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  data(11) <= \<const0>\;
  data(10) <= \<const0>\;
  data(9) <= \<const0>\;
  data(8) <= \<const0>\;
  data(7) <= \<const0>\;
  data(6) <= \<const0>\;
  data(5) <= \<const0>\;
  data(4) <= \<const0>\;
  data(3) <= \<const0>\;
  data(2) <= \<const0>\;
  data(1) <= \<const0>\;
  data(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.AGC_LTC2315_Driver_Wrapp_0_0_LTC2315_Driver_Wrapper
     port map (
      clk => clk,
      cs => cs,
      enable => enable,
      reset_n => reset_n,
      valid => valid
    );
sck_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => clk,
      I1 => reset_n,
      I2 => enable,
      O => sck
    );
end STRUCTURE;
