transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/UFMT/2026_II/SEMATEC/Projeto_quartus/flip_flop/dff_exemplo.vhd}

vcom -93 -work work {E:/UFMT/2026_II/SEMATEC/Projeto_quartus/flip_flop/dff_exemplo_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  dff_exemplo_tb

do wave.do
view structure
view signals
run 200 ns
