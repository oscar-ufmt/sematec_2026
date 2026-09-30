transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/UFMT/2026_II/SEMATEC/Projeto_quartus/Contador/main.vhd}
vcom -93 -work work {E:/UFMT/2026_II/SEMATEC/Projeto_quartus/Contador/contador_clk.vhd}
vcom -93 -work work {E:/UFMT/2026_II/SEMATEC/Projeto_quartus/Contador/contador_4bits.vhd}

vcom -93 -work work {E:/UFMT/2026_II/SEMATEC/Projeto_quartus/Contador/main_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  main_tb

do wave.do
view structure
view signals
run 1000 ns
