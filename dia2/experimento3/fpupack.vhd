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

--constant bias : std_logic_vector(EXP_WIDTH-1 downto 0) := "01111";
--constant int_bias : integer := 15;
--constant int_alin : integer := 31;
--constant EXP_DF : std_logic_vector(EXP_WIDTH-1 downto 0) := "10010";
--constant bias_MAX : std_logic_vector(EXP_WIDTH-1 downto 0) := "10110";
--constant bias_MIN : std_logic_vector(EXP_WIDTH-1 downto 0) := "00101";
--constant EXP_ONE: std_logic_vector(EXP_WIDTH-1 downto 0):= (others => '1');
--constant EXP_INF : std_logic_vector(EXP_WIDTH-1 downto 0) := "11111";
--
--constant s_one : std_logic_vector(FP_WIDTH-1 downto 0) := "00111100000";
--constant s_ten : std_logic_vector(FP_WIDTH-1 downto 0) := "01001001000";
--constant s_twn : std_logic_vector(FP_WIDTH-1 downto 0) := "01001101000";
--constant s_hundred : std_logic_vector(FP_WIDTH-1 downto 0) := "01010110010";
--constant s_pi : std_logic_vector(FP_WIDTH-1 downto 0) := "01000010010";
--constant s_3pi2 : std_logic_vector(FP_WIDTH-1 downto 0) := "01000100101";
--constant s_2pi : std_logic_vector(FP_WIDTH-1 downto 0) := "01000110010";
--
--constant P	: std_logic_vector(FP_WIDTH-1 downto 0) := "00111000110"; --PROD[cos(atan(1/2^i))]
--constant s_pid2 : std_logic_vector(FP_WIDTH-1 downto 0) := "00111110010";
--constant s_2dpi : std_logic_vector(FP_WIDTH-1 downto 0) := "00111001000";
--
--constant Phyp	: std_logic_vector(FP_WIDTH-1 downto 0) := "00111100110"; --PROD[cosh(atanh(1/2^i))]
--constant log2e	: std_logic_vector(FP_WIDTH-1 downto 0) := "00111101110";
--constant ilog2e	: std_logic_vector(FP_WIDTH-1 downto 0) := "00111001100";
--constant d_043 	: std_logic_vector(FP_WIDTH-1 downto 0) := "00101001100";
--
--constant MAX_ITER_CORDIC : std_logic_vector(4 downto 0):= "00000";
--constant MAX_POLY_MACKLR : std_logic_vector(3 downto 0):= "0000";
--
--constant OneM: std_logic_vector(FRAC_WIDTH downto 0) := "100000";
--constant Zero: std_logic_vector(FP_WIDTH-1 downto 0) := (others => '0');
--
--constant Inf : std_logic_vector(10 downto 0) := "01111100000"; -- Sinal 0, Exp 31, Mant 0
--constant NaN : std_logic_vector(10 downto 0) := "01111110000"; -- Sinal 0, Exp 31, Mant > 0
--
--
--
--constant TSed: NATURAL := 0;
--constant Niter: NATURAL := 0;

end fpupack;

package body fpupack is
end fpupack;