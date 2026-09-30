transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/UFMT/2026_II/SEMATEC/Projeto_quartus/Sistemas_numericos/sistemas_numericos.vhd}

vcom -93 -work work {E:/UFMT/2026_II/SEMATEC/Projeto_quartus/Sistemas_numericos/sistemas_nuemricos_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  sistemas_nuemricos_tb

add wave *
view structure
view signals
run 200 ns
