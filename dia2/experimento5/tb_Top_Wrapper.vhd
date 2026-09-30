library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_Top_Wrapper is
end tb_Top_Wrapper;

architecture sim of tb_Top_Wrapper is

    -- Constantes
    constant CLK_PERIOD : time := 20 ns; -- 50 MHz

    -- Sinais para conectar ao Top_Wrapper
    signal clk_50    : std_logic := '0';
    signal sw        : std_logic_vector(2 downto 0) := (others => '0');
    signal key       : std_logic_vector(0 downto 0) := (others => '1'); -- '1' é solto
    signal ledr      : std_logic_vector(1 downto 0);

begin
    -- Instanciação da Unidade Sob Teste (DUT)
    dut : entity work.Top_Wrapper
    port map (
        CLOCK_50 => clk_50,
        SW       => sw,
        KEY      => key,
        LEDR     => ledr
    );
    -- Geração do Clock de 50MHz
    clk_process : process
    begin
        clk_50 <= '0';
        wait for CLK_PERIOD/2;
        clk_50 <= '1';
        wait for CLK_PERIOD/2;
    end process;

    -- Processo de Estímulo
    stim_proc: process
    begin
        -----------------------------------------------------------
        -- PASSO 1: Reset do Sistema
        -----------------------------------------------------------
        report "Iniciando Reset...";
        sw(2) <= '1';      -- Liga o Reset (SW 2 para cima)
        wait for 100 ns;
        sw(2) <= '0';      -- Desliga o Reset
        wait for 100 ns;

        -----------------------------------------------------------
        -- CASO 1: XOR(0, 0) -> Resultado esperado: 0 (LED 0 apagado)
        -----------------------------------------------------------
        report "Testando XOR(0,0)...";
        sw(0) <= '1'; sw(1) <= '0';
        wait for CLK_PERIOD * 2;
        
        key(0) <= '0';     -- Aperta botão START (Active Low)
        wait for CLK_PERIOD * 5;
        key(0) <= '1';     -- Solta botão
        
        wait until ledr(1) = '1'; -- Espera sinal READY no LED 1
        report "Fim do calculo XOR(0,0). Verifique o LEDR(0).";
        wait for 4000 ns;

        -----------------------------------------------------------
        -- FINALIZAÇÃO
        -----------------------------------------------------------
        wait for 1000 ns;
        report "Simulacao concluida com sucesso!";
        std.env.stop; -- Para a simulação
    end process;

end sim;