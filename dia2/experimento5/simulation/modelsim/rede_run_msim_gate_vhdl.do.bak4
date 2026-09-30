transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {rede.vho}

vcom -93 -work work {/home/oscar/Documents/SoC/experimento_final/tb_Top_Wrapper.vhd}

vsim -t 1ps -L altera -L cycloneive -L gate_work -L work -voptargs="+acc"  tb_Top_Wrapper

add wave *
view structure
view signals
run 4000 ns
