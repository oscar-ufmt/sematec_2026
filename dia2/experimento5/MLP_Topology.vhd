-- Created by Mario Pastrana (Mario Melo)
-- Victor Cruz de Oliveira
-- Universidade de Brasilia (PPMEC)
-- Multi-Layer Perceptron generator
-- MARIA & EVA project

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.fpupack.all;
use std.textio.all;
use IEEE.std_logic_textio.all;

entity MLP_Topology is
Port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    start : in STD_LOGIC;
    input_0 : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    input_1 : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    output_0 : out STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    ready : out STD_LOGIC
);
end MLP_Topology;


architecture Behavioral of MLP_Topology is

component perceptron_layer_0 is
Port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    b : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    start: in STD_LOGIC;
    input_0 : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    weight_0 : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    input_1 : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    weight_1 : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    output : out STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    ready : out STD_LOGIC
);
            end component;


            component perceptron_layer_1 is
Port (
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    b : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    start: in STD_LOGIC;
    input_0 : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    weight_0 : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    input_1 : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    weight_1 : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    output : out STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0);
    ready : out STD_LOGIC
);
            end component;


            signal layer_ready_0_0 : std_logic := '0';
 signal  layer_0_output_0: std_logic_vector(FP_WIDTH-1 downto 0) := (others=>'0');
signal layer_ready_0_1 : std_logic := '0';
 signal  layer_0_output_1: std_logic_vector(FP_WIDTH-1 downto 0) := (others=>'0');
signal layer_ready_1_0 : std_logic := '0';
 signal  layer_1_output_0: std_logic_vector(FP_WIDTH-1 downto 0) := (others=>'0');
signal sstart, cadStar: std_logic := '0';
begin
process(clk)
    
            begin
                if rising_edge(clk) then
                    sstart <= '0';
                    if start='1' and cadStar='0' then
                        sstart <= '1';
                        cadStar <='1';
                    elsif start = '0' then
                        cadStar <='0';                   
                    end if;
                end if; 
        end process;
        
    uut_0_0: perceptron_layer_0 port map(
        reset => reset,
        clk => clk,
        b => b_0_0,
        start => sstart,
        input_0 => input_0,
        weight_0 => weight_0_0_0,
        input_1 => input_1,
        weight_1 => weight_0_0_1,
        output => layer_0_output_0,
        ready => layer_ready_0_0
    );

    uut_0_1: perceptron_layer_0 port map(
        reset => reset,
        clk => clk,
        b => b_0_1,
        start => sstart,
        input_0 => input_0,
        weight_0 => weight_0_1_0,
        input_1 => input_1,
        weight_1 => weight_0_1_1,
        output => layer_0_output_1,
        ready => layer_ready_0_1
    );

    uut_1_0: perceptron_layer_1 port map(
        reset => reset,
        clk => clk,
        b => b_1_0,
       start => layer_ready_0_1,
        input_0 => layer_0_output_0,
        weight_0 => weight_1_0_0,
        input_1 => layer_0_output_1,
        weight_1 => weight_1_0_1,
        output => layer_1_output_0,
        ready => layer_ready_1_0
    );

    ready <= layer_ready_1_0;
    output_0 <= layer_1_output_0;
end Behavioral;
