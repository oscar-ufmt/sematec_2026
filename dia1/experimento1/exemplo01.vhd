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
-- CREATED		"Mon Sep 28 13:02:54 2026"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY exemplo01 IS 
	PORT
	(
		SW :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		LED :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END exemplo01;

ARCHITECTURE bdf_type OF exemplo01 IS 



BEGIN 



LED(0) <= SW(0) AND SW(1);


LED(1) <= SW(2) AND SW(3);


END bdf_type;