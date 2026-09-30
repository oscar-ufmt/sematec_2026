-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/28/2026 15:35:16"
                                                            
-- Vhdl Test Bench template for design  :  sistemas_numericos
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sistemas_nuemricos_tb IS
END sistemas_nuemricos_tb;
ARCHITECTURE sistemas_numericos_arch OF sistemas_nuemricos_tb IS
-- constants                                                 
-- signals                                                   
SIGNAL dado_A : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL dado_B : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT sistemas_numericos
	PORT (
	dado_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	dado_B : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	DUT : sistemas_numericos
	PORT MAP (
-- list connections between master ports and signals
	dado_A => dado_A,
	dado_B => dado_B
	);

	
process
begin
dado_A<= x"C1480000"; --12,5

dado_B<= x"FFFFFFFF";

wait for 20 ns;


dado_A<= x"40D00000"; --6,5

dado_B<= x"0000000A";


wait for 20 ns;

dado_A<= x"40a4dbbf"; --5.1518245

wait for 20 ns;

dado_A<= x"40a4dbb0"; -- 19-bits

wait for 20 ns;

dado_A<= x"40a4db00"; -- 15-bits

wait for 20 ns;

dado_A<= x"40a4d000"; -- 11-bits

wait; 

end process;


	
END sistemas_numericos_arch;
