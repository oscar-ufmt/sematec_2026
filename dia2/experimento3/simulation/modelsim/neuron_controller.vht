-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/30/2026 11:31:05"
                                                            
-- Vhdl Test Bench template for design  :  neuron_controller
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY neuron_controller_vhd_tst IS
END neuron_controller_vhd_tst;
ARCHITECTURE neuron_controller_arch OF neuron_controller_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bias : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL done : STD_LOGIC;
SIGNAL input_x : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL start_calc : STD_LOGIC;
SIGNAL weight : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL y_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT neuron_controller
	PORT (
	bias : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	clk : IN STD_LOGIC;
	done : OUT STD_LOGIC;
	input_x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	reset : IN STD_LOGIC;
	start_calc : IN STD_LOGIC;
	weight : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	y_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : neuron_controller
	PORT MAP (
-- list connections between master ports and signals
	bias => bias,
	clk => clk,
	done => done,
	input_x => input_x,
	reset => reset,
	start_calc => start_calc,
	weight => weight,
	y_out => y_out
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END neuron_controller_arch;
