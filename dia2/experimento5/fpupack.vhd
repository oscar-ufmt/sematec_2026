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

-- Porta AND --

--constant    weight_0_0_0: std_logic_vector(FP_WIDTH-1 downto 0) := "11000001100001010100010011011100";
--constant    weight_0_0_1: std_logic_vector(FP_WIDTH-1 downto 0) := "11000001011001010111000001011010";
--constant    weight_0_1_0: std_logic_vector(FP_WIDTH-1 downto 0) := "11000001000011101110101000000001";
--constant    weight_0_1_1: std_logic_vector(FP_WIDTH-1 downto 0) := "11000001000011110110101000001010";
--constant    b_0_0: std_logic_vector(FP_WIDTH-1 downto 0)        := "01000000010100100010011000101100";
--constant    b_0_1: std_logic_vector(FP_WIDTH-1 downto 0)        := "11000001001010101001010011111110";
--
--constant    weight_1_0_0: std_logic_vector(FP_WIDTH-1 downto 0) := "11000001100000111110011010011010";
--constant    weight_1_0_1: std_logic_vector(FP_WIDTH-1 downto 0) := "01000001101001011001111010011100";
--constant    b_1_0 : std_logic_vector(FP_WIDTH-1 downto 0)       := "01000000111110000111001100111000";


-- Porta XOR ---

constant    weight_0_0_0: std_logic_vector(FP_WIDTH-1 downto 0) := "11000001000111011011001010101100";
constant    weight_0_0_1: std_logic_vector(FP_WIDTH-1 downto 0) := "01000001000110001111010101011010";
constant    weight_0_1_0: std_logic_vector(FP_WIDTH-1 downto 0) := "11000001001101100101011001000111";
constant    weight_0_1_1: std_logic_vector(FP_WIDTH-1 downto 0) := "01000001100011011110110110110010";
constant    b_0_0: std_logic_vector(FP_WIDTH-1 downto 0)        := "11000000011010010111111111110011";
constant    b_0_1: std_logic_vector(FP_WIDTH-1 downto 0)        := "01000001000000000000110100010000";

constant    weight_1_0_0: std_logic_vector(FP_WIDTH-1 downto 0) := "11000001011101010010010100110000";
constant    weight_1_0_1: std_logic_vector(FP_WIDTH-1 downto 0) := "01000001100110000000011110101010";
constant    b_1_0 : std_logic_vector(FP_WIDTH-1 downto 0)       := "11000001000101010101011010001011";




end fpupack;

package body fpupack is
end fpupack;