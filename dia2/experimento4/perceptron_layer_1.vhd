--Created Mario Pastrana (Mario melo) and
--Victor Cruz de Oliveira
--Universidade de Brasilia (PPMEC)
-- Perceptron generator
-- MARIA & EVA project

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.fpupack.all;
use IEEE.NUMERIC_STD.ALL;



entity perceptron_layer_1 is
    Port(
    reset: in STD_LOGIC;
    clk: in STD_LOGIC;
    b: in STD_LOGIC_VECTOR(FP_WIDTH - 1 downto 0);
    start  : in STD_LOGIC;
    	input_0    : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0); 
	weight_0    : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0); 
	input_1    : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0); 
	weight_1    : in STD_LOGIC_VECTOR(FP_WIDTH-1 downto 0); 
	output  : out STD_LOGIC_VECTOR (FP_WIDTH-1 downto 0);
            ready  : out STD_LOGIC
);
end perceptron_layer_1;
architecture Behavioral of perceptron_layer_1 is
        component multiplierfsm_v2 is
            port(reset 	 :  in std_logic; 
                 clk	 	 :  in std_logic;          
                 op_a	 	 :  in std_logic_vector(FP_WIDTH-1 downto 0);
                 op_b	 	 :  in std_logic_vector(FP_WIDTH-1 downto 0);
                 start_i	 :  in std_logic;
                 mul_out  : out std_logic_vector(FP_WIDTH-1 downto 0);
                 ready_mul: out std_logic);
        end component;

        component addsubfsm_v6 is
            port (reset     :  in std_logic;
                 clk        :  in std_logic;
                 op			:  in std_logic;
                 op_a 		:  in std_logic_vector(FP_WIDTH-1 downto 0);
                 op_b 		:  in std_logic_vector(FP_WIDTH-1 downto 0);
                 start_i    :  in std_logic;
                 addsub_out : out std_logic_vector(FP_WIDTH-1 downto 0);
                 ready_as   : out std_logic);
        end component;

COMPONENT sigmoid_line is
        Port (
          clk:    IN STD_LOGIC;
          reset:  IN STD_LOGIC;
          start: IN STD_LOGIC;
          insig:      IN STD_LOGIC_VECTOR(FP_WIDTH-1 DOWNTO 0);
          outsig:    OUT STD_LOGIC_VECTOR(FP_WIDTH-1 DOWNTO 0);
          ready:  OUT STD_LOGIC
          );
        end COMPONENT;

                type t_Memory is array (0 to 1) of std_logic_vector(FP_WIDTH-1 downto 0);
signal weight_sensors : t_Memory;
        signal input_sensors     : t_Memory;
        signal rrcmul     : t_Memory;
        signal sw_par, sx_par : std_logic_vector(FP_WIDTH-1 downto 0);
        signal suma,sumb,sumtotal:STD_LOGIC_VECTOR(FP_WIDTH-1 DOWNTO 0);
        signal outm1 : std_logic_vector(FP_WIDTH-1 downto 0);
        signal outadd1: std_logic_vector(FP_WIDTH-1 downto 0);
        signal rdym1: std_logic;
        signal rdyadd1: std_logic:='0';
        signal fact : std_logic_vector(FP_WIDTH-1 downto 0);
        signal readyMLP: STD_LOGIC;
        signal initprocess,startsum,startmul,readysum,startsumaux: STD_LOGIC;
        signal count: integer range 0 to 7 := 0;
        signal counts: unsigned (FP_WIDTH-1 downto 0);
        signal bias : STD_LOGIC_VECTOR (FP_WIDTH-1 downto 0);

        begin

        ---------------------- Pesos y entradas -------------------------------------------------
	weight_sensors(0) <= weight_0 ; 
	input_sensors(0)  <= input_0 ; 
	weight_sensors(1) <= weight_1 ; 
	input_sensors(1)  <= input_1 ; 
----------------------- Proceso de inicio -------------------------------------
            PROCESS(clk,reset)
            BEGIN
                if (reset='1')then
                    initprocess<='0';
                elsif rising_edge(clk) then
                    initprocess<='0';
                    if (start='1')then
                        initprocess<='1';
                    end if;
                end if;
            END PROCESS;

            ---------------- Multiplicador -----------------------------------------------
            mult: multiplierfsm_v2 port map(
                reset 	  => reset,
                clk	 	  => clk,         
                op_a	  => sw_par,	 
                op_b	  => sx_par,	 
                start_i	  => startmul,
                mul_out   => outm1,
                ready_mul => rdym1);
            --------------------------- Proceso de multiplicacion ---------------------------
            PROCESS(clk,reset)

            BEGIN

                if (reset='1') then
                    sw_par <= (others=>'0');
                    sx_par <= (others=>'0');
                    count <= 0;
                    startsum <='0';

                elsif rising_edge (clk) then

                    startmul<='0';
                    startsum<='0';

                    if (initprocess='1' or (rdym1='1' and (count <= 1))) then -- 1 es el numero de entradas contando desdel el cero

                        sw_par<=weight_sensors(count);
                        sx_par<=input_sensors(count);
                        startmul<='1';


                        if (rdym1='1')then
                            rrcmul(count-1)<=outm1;

                        end if;

                        count<=count+1;

                    elsif (count = 2) then -- En esta parte se realiza la adquicición del ultimo valor de entrada

                        if (rdym1='1')then
                        rrcmul(count-1)<=outm1;
                            startsum<='1'; 
                        end if;
                        if (rdyadd1='1')then
                            count<= 0 ;
                        end if;

                    end if;
                end if;
            END PROCESS;
            -------------------- sumador -----------------------------------------------       
            add: addsubfsm_v6 port map(
                reset 	  => reset,
                clk	 	  => clk,         
                op	      => '0', -- soma	 
                op_a	  => suma,	 
                op_b	  => sumb,	 
                start_i	  => startsumaux,
                addsub_out=> sumtotal,
                ready_as  => rdyadd1);
            ---------------------------------- Proceso de sumatoria ------------------------
            PROCESS (clk,reset)
            BEGIN
                if ( reset='1') then

                    suma<=(others=>'0');
                    sumb<=(others=>'0');
                    readysum<='0';
                    counts<=(others=>'0');

                elsif rising_edge (clk) then

                    startsumaux<='0';
                    readysum<='0';
                    if (startsum='1' or (rdyadd1='1'and (to_integer(counts) <= 2))) then -- 2 es el numero de entradas contando desde el cero mas el bias

                        if (rdyadd1='1') then
                            suma<=sumtotal;
                        end if;
                        if (to_integer(counts) <= 1) then
                            sumb <= rrcmul(to_integer(counts));
                        else
                            sumb <= b;
                        end if;
                        counts<=counts+1;
                        startsumaux<='1';

                    elsif (to_integer(counts)= 3) then -- 3 es el número de entradas mas el bias mas 1 contando desde el cero

                         if (readyMLP='1')then
                            counts<=(others=>'0');
                            suma<=(others=>'0');
                        elsif (rdyadd1='1') then
                            readysum<='1';
                        end if;

                    end if;
                end if;
            END PROCESS; 
            ------------------------------------

			mysig: sigmoid_line port map(

                clk=>clk,
                reset=>reset,
                start=>readysum,
                insig =>sumtotal,
                ready=>readyMLP,
                outsig =>fact
                );
            --------------------------------------
            output<=fact;
            ready<=readyMLP;

        end Behavioral;
        