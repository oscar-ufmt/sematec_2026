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
	DUT : MLP_Topology
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
BEGIN                                                        
    -- 1. Reset inicial do sistema
    reset <= '1';
    start <= '0';
    wait for 40 ns;
    reset <= '0';
    wait for 20 ns;

    -- 2. Configuração dos Pesos e Biases (Valores de exemplo)
    -- Camada Oculta (Layer 0)
    weight_0_0_0 <= "11000001100001010100010011011100";
    weight_0_0_1 <= "11000001011001010111000001011010";
    weight_0_1_0 <= "11000001000011101110101000000001";
    weight_0_1_1 <= "11000001000011110110101000001010";
    b_0_0        <= "01000000010100100010011000101100";
    b_0_1        <= "11000001001010101001010011111110";

    -- Camada de Saída (Layer 1)
    weight_1_0_0 <= "11000001100000111110011010011010";
    weight_1_0_1 <= "01000001101001011001111010011100";
    b_1_0        <= "01000000111110000111001100111000";

    -- 3. Inserção das Entradas (Input Vector)
    input_0 <= x"3F800000"; -- Entrada 0 = 1.0
    input_1 <= x"3F800000"; -- Entrada 1 = 1.0

    wait for 20 ns;

    -- 4. Disparo do Processamento (Start)
    start <= '1';
    wait for 20 ns;
    start <= '0';

    -- 5. Aguarda a Rede Neural concluir os cálculos
    wait until ready = '1';

    -- O resultado estará disponível em output_0
    wait for 100 ns;

    -- (Opcional) Testar outro padrão de entrada
    input_0 <= x"00000000"; -- Entrada 0 = 0.0
    input_1 <= x"3F800000"; -- Entrada 1 = 1.0
    start <= '1';
    wait for 20 ns;
    start <= '0';
    
    wait until ready = '1';

	 
	 
    -- O resultado estará disponível em output_0
    wait for 100 ns;

    -- (Opcional) Testar outro padrão de entrada
    input_0 <= x"00000000"; -- Entrada 0 = 0.0
    input_1 <= x"00000000"; -- Entrada 1 = 1.0
    start <= '1';
    wait for 20 ns;
    start <= '0';	 
	 
	 
	 
	 
	 
	 
    wait; -- Finaliza o processo                                                       
END PROCESS init;                                           

-- Geração do Clock
always : PROCESS                                              
BEGIN                                                         
    clk <= '0';
    wait for 10 ns; -- Clock de 50MHz (período de 20ns)
    clk <= '1';
    wait for 10 ns;                                                        
END PROCESS always;

                                   
END MLP_Topology_arch;
