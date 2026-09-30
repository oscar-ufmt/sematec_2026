transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/oscar/Documents/SoC/Experimento_neuronio/fpupack.vhd}
vcom -93 -work work {/home/oscar/Documents/SoC/Experimento_neuronio/sigmoid_line.vhd}
vcom -93 -work work {/home/oscar/Documents/SoC/Experimento_neuronio/perceptron_layer_1.vhd}
vcom -93 -work work {/home/oscar/Documents/SoC/Experimento_neuronio/perceptron_layer_0.vhd}
vcom -93 -work work {/home/oscar/Documents/SoC/Experimento_neuronio/MLP_Topology.vhd}
vcom -93 -work work {/home/oscar/Documents/SoC/Experimento_neuronio/multiplierfsm_v2.vhd}
vcom -93 -work work {/home/oscar/Documents/SoC/Experimento_neuronio/addsubfsm_v6.vhd}

vcom -93 -work work {/home/oscar/Documents/SoC/Experimento_neuronio/MLP_Topology_vhd_tst.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  MLP_Topology_vhd_tst

do wave.do
view structure
view signals
run 4000 ns
