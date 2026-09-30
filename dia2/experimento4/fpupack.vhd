-------------------------------------------------
-- Company:       GRACO-UnB
-- Engineer:      DANIEL MAURICIO MUÑOZ ARBOLEDA
-- 
-- Create Date:   18-Feb-2025 
-- Design name:   FPUs
-- Module name:   fpupack
-- Description:   This package defines types, subtypes and constants
-- Automatically generated using the vFPUgen.m v1.0
-------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

package fpupack is

constant FRAC_WIDTH : integer := 23;
constant EXP_WIDTH : integer := 8;
constant FP_WIDTH : integer:= FRAC_WIDTH+EXP_WIDTH+1;


constant EXP_ONE: std_logic_vector(EXP_WIDTH-1 downto 0):= (others => '1');
constant bias : std_logic_vector(EXP_WIDTH-1 downto 0) := "01111111";
constant int_bias : integer := 127;
constant int_alin : integer := 255;


end fpupack;

package body fpupack is
end fpupack;