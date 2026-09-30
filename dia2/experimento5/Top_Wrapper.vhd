library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top_Wrapper is
    Port (
        CLOCK_50  : in  STD_LOGIC;
        SW        : in  STD_LOGIC_VECTOR(2 downto 0); -- SW(0)=In0, SW(1)=In1, SW(2)=Reset
        KEY       : in  STD_LOGIC_VECTOR(0 downto 0); -- KEY(0)=Start
        LEDR      : out STD_LOGIC_VECTOR(1 downto 0)  -- LED(0)=Resultado, LED(1)=Ready
    );
end Top_Wrapper;

architecture Behavioral of Top_Wrapper is

    --Definição das Constantes de Ponto Flutuante (IEEE-754 32 bits)
	 
    constant FLOAT_1_0 : std_logic_vector(31 downto 0) := x"3F800000";
    constant FLOAT_0_0 : std_logic_vector(31 downto 0) := x"00000000";
    constant LIMIAR   : std_logic_vector(31 downto 0) := x"3F000000"; -- 0.5 para decisão

    -- Sinais de interface com a entidade
    signal s_input_0, s_input_1 : std_logic_vector(31 downto 0);
    signal s_output_0           : std_logic_vector(31 downto 0);
    signal s_ready              : std_logic;
	 
	 signal s_start_debounced    : std_logic;
    signal s_start_prev         : std_logic := '0';
    signal s_start_pulse        : std_logic := '0';
	 


begin

    -- =============================================================
    -- CONVERSÃO DE ENTRADA: Switch (Digital) -> Ponto Flutuante
    -- =============================================================
    s_input_0 <= FLOAT_1_0 when SW(0) = '1' else FLOAT_0_0;
    s_input_1 <= FLOAT_1_0 when SW(1) = '1' else FLOAT_0_0;

    -- =============================================================
    -- INSTANCIAÇÃO DA ENTIDADE
    -- =============================================================
    minha_rede_mlp : entity work.MLP_Topology
    port map (
        reset        => SW(2),        -- Reset ligado no Switch 2
        clk          => CLOCK_50,     -- Clock da Placa
        start        => s_start_pulse,-- Botão Start (Invertido pois KEY é '1' solto)
        input_0      => s_input_0,
        input_1      => s_input_1,
	
		  
        output_0     => s_output_0,
        ready        => s_ready
    );

	 s_start_debounced <= not KEY(0); 
	 
	 
    
    process(CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            s_start_prev <= s_start_debounced;
            if (s_start_debounced = '1' and s_start_prev = '0') then
                s_start_pulse <= '1'; -- Pulso de 1 ciclo
            else
                s_start_pulse <= '0';
            end if;
        end if;
    end process;	 
	 
	
	 
    process(CLOCK_50, SW(2))
    begin
        if SW(2) = '1' then
            LEDR(0) <= '0';
            LEDR(1) <= '0';
        elsif rising_edge(CLOCK_50) then
            if s_ready = '1' then
                LEDR(1) <= '1'; -- Acende para indicar que concluiu ao menos um cálculo
                -- Comparação: se saída > 0.5 (x"3F000000")
                if s_output_0 > x"3F000000" then
                    LEDR(0) <= '1';
                else
                    LEDR(0) <= '0';
                end if;
            end if;
        end if;
    end process;
	 
	 
	 
	

end Behavioral;