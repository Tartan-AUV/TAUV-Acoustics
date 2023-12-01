-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Nov 30 00:29:44 2023
-- Host        : Gleb-ThinkPad running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Dev/TAUV-Acoustics/hdl/acoustics-v2-zybo/acoustics-v2-zybo.gen/sources_1/bd/AGC/ip/AGC_LTC2315_Driver_Wrapp_0_0/AGC_LTC2315_Driver_Wrapp_0_0_stub.vhdl
-- Design      : AGC_LTC2315_Driver_Wrapp_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AGC_LTC2315_Driver_Wrapp_0_0 is
  Port ( 
    enable : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    clk : in STD_LOGIC;
    data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    valid : out STD_LOGIC;
    miso : in STD_LOGIC;
    sck : out STD_LOGIC;
    cs : out STD_LOGIC
  );

end AGC_LTC2315_Driver_Wrapp_0_0;

architecture stub of AGC_LTC2315_Driver_Wrapp_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "enable,reset_n,clk,data[11:0],valid,miso,sck,cs";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "LTC2315_Driver_Wrapper,Vivado 2023.2";
begin
end;
