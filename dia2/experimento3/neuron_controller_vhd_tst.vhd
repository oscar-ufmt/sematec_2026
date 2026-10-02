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
	
	constant CLK_PERIOD : time := 10 ns;
	
	

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
	dut : neuron_controller
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
	
	    -- Geração do Clock
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;
        clk <= '1';
        wait for CLK_PERIOD/2;
    end process;
	 
	 
    stim_proc: process
    begin		
        -- 1. Reset do Sistema
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 20 ns;

        -- 2. Configuração dos Valores (Exemplo: 2.0 * 0.5 + 1.25)
        -- Valores em Hexadecimal IEEE-754 Single Precision
        weight  <= x"40000000"; -- 2.0
        input_x <= x"3F000000"; -- 0.5
        bias    <= x"3FA00000"; -- 1.25
        
        wait for CLK_PERIOD;
        
        -- 3. Início do Cálculo
        start_calc <= '1';
        wait for CLK_PERIOD;
        start_calc <= '0';

        -- 4. Espera até que o cálculo termine
        -- O ModelSim mostrará a FSM passando por MULTIPLYING e ADDING
        wait until done = '1';
        
        -- 5. Pequena pausa para observar o resultado no Wave
        wait for 50 ns;

        -- 6. Segundo Teste (Opcional): 3.0 * 2.0 + 0.0 = 6.0
        weight  <= x"40400000"; -- 3.0
        input_x <= x"40000000"; -- 2.0
        bias    <= x"00000000"; -- 0.0
        
        start_calc <= '1';
        wait for CLK_PERIOD;
        start_calc <= '0';
        
        wait until done = '1';

        -- Finaliza a simulação
        wait for 100 ns;
        assert false report "Fim da Simulação" severity failure;
        wait;
    end process; 

                                     
END neuron_controller_arch;
