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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Tue Sep 29 11:41:58 2026"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY main IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		rst :  IN  STD_LOGIC;
		q_out :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END main;

ARCHITECTURE bdf_type OF main IS 

COMPONENT contador_4bits
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 q_out : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT contador_clk
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 q_out : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 



b2v_inst : contador_4bits
PORT MAP(clk => SYNTHESIZED_WIRE_0,
		 rst => rst,
		 q_out => q_out);


b2v_inst2 : contador_clk
PORT MAP(clk => clk,
		 rst => rst,
		 q_out => SYNTHESIZED_WIRE_0);


END bdf_type;