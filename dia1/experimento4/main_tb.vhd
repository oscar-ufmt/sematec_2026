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
-- Generated on "09/29/2026 12:57:28"
                                                            
-- Vhdl Test Bench template for design  :  main
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY main_tb IS
END main_tb;
ARCHITECTURE main_arch OF main_tb IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL q_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL rst : STD_LOGIC;

constant clk_period:time:= 20 ns;



COMPONENT main
	PORT (
	clk : IN STD_LOGIC;
	q_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	dut : main
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	q_out => q_out,
	rst => rst
	);
	
	
clk_process : PROCESS                                               
BEGIN      
			clk<='0';
			wait for clk_period/2;
			clk<='1';
			wait for clk_period/2;              
                                         
END PROCESS; 



                                         
                                          
stim_proc : PROCESS                                                                     
BEGIN   

	rst<='0'; 
	wait for 45 ns;
	rst<='1';
	
	wait for 500 ns;
	
WAIT;                                                        
END PROCESS;  



                                      
END main_arch;
