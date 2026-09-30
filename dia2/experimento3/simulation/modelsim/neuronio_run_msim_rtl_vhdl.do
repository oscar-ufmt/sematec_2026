transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/oscar/Documents/SoC/experimento_op_flutuante/fpupack.vhd}
vcom -93 -work work {/home/oscar/Documents/SoC/experimento_op_flutuante/multiplierfsm_v2.vhd}
vcom -93 -work work {/home/oscar/Documents/SoC/experimento_op_flutuante/addsubfsm_v6.vhd}
vcom -93 -work work {/home/oscar/Documents/SoC/experimento_op_flutuante/neuron_controller.vhd}

vcom -93 -work work {/home/oscar/Documents/SoC/experimento_op_flutuante/neuron_controller_vhd_tst.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  neuron_controller_vhd_tst

do wave.do
view structure
view signals
run 300 ns
