onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix float32 /neuron_controller_vhd_tst/bias
add wave -noupdate -radix float32 /neuron_controller_vhd_tst/clk
add wave -noupdate -radix float32 /neuron_controller_vhd_tst/done
add wave -noupdate -radix float32 /neuron_controller_vhd_tst/input_x
add wave -noupdate -radix float32 /neuron_controller_vhd_tst/reset
add wave -noupdate -radix float32 /neuron_controller_vhd_tst/start_calc
add wave -noupdate -radix float32 /neuron_controller_vhd_tst/weight
add wave -noupdate -radix float32 /neuron_controller_vhd_tst/y_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {165197 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {315 ns}
