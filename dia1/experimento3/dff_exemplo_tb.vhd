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
-- Generated on "09/28/2026 16:58:36"
                                                            
-- Vhdl Test Bench template for design  :  dff_exemplo
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY dff_exemplo_tb IS
END dff_exemplo_tb;
ARCHITECTURE dff_exemplo_arch OF dff_exemplo_tb IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC:='0';
SIGNAL d : STD_LOGIC:='0';
SIGNAL q : STD_LOGIC;
SIGNAL rst : STD_LOGIC;

constant clk_period:time:= 20 ns;



COMPONENT dff_exemplo
	PORT (
	clk : IN STD_LOGIC;
	d : IN STD_LOGIC;
	q : OUT STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;




BEGIN
	DUT : dff_exemplo
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	d => d,
	q => q,
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

	rst<='1'; 
	wait for 50 ns;
	rst<='0';
	
	d<='1';
	wait for 40 ns;
	d<='0';
	wait for 40 ns;	
	d<='1';
	wait for 15 ns;
	d<='0';
	wait for 5 ns;
	
WAIT;                                                        
END PROCESS;     




                                     
END dff_exemplo_arch;
