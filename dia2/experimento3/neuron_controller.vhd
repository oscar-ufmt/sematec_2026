library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity neuron_controller is
    generic (
        FP_WIDTH : integer := 32
    );
    port (
        clk        : in  std_logic;
        reset      : in  std_logic;
        start_calc : in  std_logic; -- Inicia o neurônio
        -- Entradas de dados
        weight     : in  std_logic_vector(FP_WIDTH-1 downto 0);
        input_x    : in  std_logic_vector(FP_WIDTH-1 downto 0);
        bias       : in  std_logic_vector(FP_WIDTH-1 downto 0);
        -- Saídas
        y_out      : out std_logic_vector(FP_WIDTH-1 downto 0);
        done       : out std_logic
    );
end neuron_controller;

architecture behavioral of neuron_controller is

    -- Estados da FSM
    type state_type is (IDLE, MULTIPLYING, ADDING, FINISHED);
    signal current_state : state_type;

    -- Sinais internos para conectar os componentes
    signal start_mul, ready_mul : std_logic;
    signal start_add, ready_as  : std_logic;
    signal mul_result           : std_logic_vector(FP_WIDTH-1 downto 0);
    signal final_result         : std_logic_vector(FP_WIDTH-1 downto 0);

begin

    -- Instanciação do Multiplicador (w * x)
    u_multiplier : entity work.multiplierfsm_v2
        port map (
            reset     => reset,
            clk       => clk,
            op_a      => weight,
            op_b      => input_x,
            start_i   => start_mul,
            mul_out   => mul_result,
            ready_mul => ready_mul
        );

    -- Instanciação do Somador ( (w*x) + b )
    u_adder : entity work.addsubfsm_v6
        port map (
            reset      => reset,
            clk        => clk,
            op         => '0', -- '0' para soma
            op_a       => mul_result,
            op_b       => bias,
            start_i    => start_add,
            addsub_out => final_result,
            ready_as   => ready_as
        );

    -- Lógica da Máquina de Estados
    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= IDLE;
            start_mul <= '0';
            start_add <= '0';
            done <= '0';
        elsif rising_edge(clk) then
            case current_state is
                
                when IDLE =>
                    done <= '0';
                    if start_calc = '1' then
                        start_mul <= '1'; -- Dispara multiplicador
                        current_state <= MULTIPLYING;
                    end if;

                when MULTIPLYING =>
                    start_mul <= '0'; -- Pulso de start
                    if ready_mul = '1' then
                        start_add <= '1'; -- Quando a mult termina, dispara soma
                        current_state <= ADDING;
                    end if;

                when ADDING =>
                    start_add <= '0'; -- Pulso de start
                    if ready_as = '1' then
                        y_out <= final_result; -- Captura o resultado final
                        done <= '1';
                        current_state <= FINISHED;
                    end if;

                when FINISHED =>
                    done <= '0';
                    current_state <= IDLE;

            end case;
        end if;
    end process;

end behavioral;