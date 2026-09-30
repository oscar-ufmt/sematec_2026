--Created Mario Pastrana (Mario melo) and
--Victor Cruz de Oliveira
--Universidade de Brasilia (PPMEC)
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.fpupack.all;
        
entity sigmoid_line is 

    Port (
        clk     :     IN STD_LOGIC;
        reset   :     IN STD_LOGIC;
        start   :     IN STD_LOGIC;
        insig   :     IN STD_LOGIC_VECTOR(FP_WIDTH-1 DOWNTO 0);
        outsig  :     OUT STD_LOGIC_VECTOR(FP_WIDTH-1 DOWNTO 0);
        ready   :     OUT STD_LOGIC);
        end sigmoid_line;
architecture Behavioral of sigmoid_line is
    COMPONENT addsubfsm_v6 is
        port (reset     :  in std_logic;
            clk        :  in std_logic;
            op			:  in std_logic;
            op_a 		:  in std_logic_vector(FP_WIDTH-1 downto 0);
            op_b 		:  in std_logic_vector(FP_WIDTH-1 downto 0);
            start_i    :  in std_logic;
            addsub_out : out std_logic_vector(FP_WIDTH-1 downto 0);
            ready_as   : out std_logic);
    end COMPONENT;

    COMPONENT multiplierfsm_v2 is
        port (reset 	 :  in std_logic;
            clk	 	 :  in std_logic;      
            op_a	 	 :  in std_logic_vector(FP_WIDTH-1 downto 0);
            op_b	 	 :  in std_logic_vector(FP_WIDTH-1 downto 0);
            start_i	 :  in std_logic;
            mul_out  : out std_logic_vector(FP_WIDTH-1 downto 0);
            ready_mul: out std_logic);
    end COMPONENT;
   
    SIGNAL outsigaux: STD_LOGIC_VECTOR(FP_WIDTH-1 DOWNTO 0):=(others => '0');
    SIGNAL m: STD_LOGIC_VECTOR(FP_WIDTH-1 DOWNTO 0):=(others => '0');
    SIGNAL b: STD_LOGIC_VECTOR(FP_WIDTH-1 DOWNTO 0):=(others => '0');
    SIGNAL startmult: STD_LOGIC:='0';
    SIGNAL readymult: STD_LOGIC:='0';
    SIGNAL resultmult: STD_LOGIC_VECTOR(FP_WIDTH-1 DOWNTO 0):=(others => '0');

begin


   outsig<=outsigaux;


process(reset, insig)
begin
    if (reset = '1') then
        m <= (others => '0');
        b <= (others => '0');
    
    -- =============================================================
    -- 1. ZONA NEGATIVA (Bit [31] = '1')
    -- Valores de insig entre x"80000000" (0.0) e x"FF7FFFFF" (-inf)
    -- =============================================================
    
    elsif insig(31) = '1' then
        -- Saturação para esquerda (Valores <= -5.0)
        -- -5.0 em Hex: x"C0A00000"
        if insig >= x"C0A00000" then 
            m <= x"00000000"; -- m = 0
            b <= x"00000000"; -- y = 0
            
        -- Valores negativos intermediários (-5.0 < x < -2.5)
        -- -2.5 em Hex: x"C0200000"
        elsif insig >= x"C0200000" then
            m <= x"3DCCCCCD"; -- m = 0.1 aprox.
            b <= x"3E4CCCCD"; -- b = 0.2 aprox.
            
        -- Valores negativos próximos a zero (-2.5 <= x < 0)
        else
            m <= x"3E800000"; -- m = 0.25
            b <= x"3F000000"; -- b = 0.5
        end if;

    -- =============================================================
    -- 2. ZONA POSITIVA (Bit [31] = '0')
    -- Valores de insig entre x"00000000" (0.0) e x"7F7FFFFF" (+inf)
    -- =============================================================
    else
        -- Saturação para direita (Valores >= +5.0)
        -- +5.0 em Hex: x"40A00000"
        if insig >= x"40A00000" then 
            m <= x"00000000"; -- m = 0
            b <= x"3F800000"; -- y = 1.0 (x"3F800000")

        -- Positivos grandes (2.5 < x < 5.0)
        -- 2.5 em Hex: x"40200000"
        elsif insig >= x"40200000" then
            m <= x"3DCCCCCD"; -- m = 0.1
            b <= x"3F4CCCCD"; -- b = 0.8

        -- Positivos próximos a zero (0 <= x <= 2.5)
        else
            m <= x"3E800000"; -- m = 0.25
            b <= x"3F000000"; -- b = 0.5
        end if;
    end if;
end process;

process(clk,reset)
begin
    if (reset='1')then
        startmult<='0';
    elsif rising_edge(clk) then
        if (start='1' and readymult='0') then
            startmult<='1';
        elsif (start='0' and readymult='1') then
            startmult<='0';
        end if;
    end if;
end process;

uut1:multiplierfsm_v2 port map(
        reset 	 =>reset,
        clk	 	 =>clk,   
        op_a	 =>m,
        op_b	 =>insig,
        start_i	 =>startmult,
        mul_out  =>resultmult,
        ready_mul=>readymult
    );

uut2:addsubfsm_v6 port map(
        reset       =>reset,
        clk         =>clk,
        op		    =>'0',
        op_a 	    =>b,
        op_b 	    =>resultmult,
        start_i     =>readymult,
        addsub_out  =>outsigaux,
        ready_as    =>ready
    );
end Behavioral;
