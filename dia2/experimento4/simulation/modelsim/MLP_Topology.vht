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
-- Generated on "09/30/2026 11:42:41"
                                                            
-- Vhdl Test Bench template for design  :  MLP_Topology
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MLP_Topology_vhd_tst IS
END MLP_Topology_vhd_tst;
ARCHITECTURE MLP_Topology_arch OF MLP_Topology_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL b_0_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL b_0_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL b_1_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL input_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL input_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL output_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ready : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL weight_0_0_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL weight_0_0_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL weight_0_1_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL weight_0_1_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL weight_1_0_0 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL weight_1_0_1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT MLP_Topology
	PORT (
	b_0_0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	b_0_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	b_1_0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	clk : IN STD_LOGIC;
	input_0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	input_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	output_0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ready : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC;
	weight_0_0_0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	weight_0_0_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	weight_0_1_0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	weight_0_1_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	weight_1_0_0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	weight_1_0_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MLP_Topology
	PORT MAP (
-- list connections between master ports and signals
	b_0_0 => b_0_0,
	b_0_1 => b_0_1,
	b_1_0 => b_1_0,
	clk => clk,
	input_0 => input_0,
	input_1 => input_1,
	output_0 => output_0,
	ready => ready,
	reset => reset,
	start => start,
	weight_0_0_0 => weight_0_0_0,
	weight_0_0_1 => weight_0_0_1,
	weight_0_1_0 => weight_0_1_0,
	weight_0_1_1 => weight_0_1_1,
	weight_1_0_0 => weight_1_0_0,
	weight_1_0_1 => weight_1_0_1
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
END MLP_Topology_arch;
