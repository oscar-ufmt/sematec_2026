onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/clk
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/reset
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/start
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/ready
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/input_0
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/input_1
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/output_0
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/b_0_0
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/b_0_1
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/b_1_0
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/weight_0_0_0
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/weight_0_0_1
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/weight_0_1_0
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/weight_0_1_1
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/weight_1_0_0
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/weight_1_0_1
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/DUT/uut_0_0/mult/op_a
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/DUT/uut_0_0/mult/op_b
add wave -noupdate /mlp_topology_vhd_tst/DUT/uut_0_0/mult/start_i
add wave -noupdate /mlp_topology_vhd_tst/DUT/uut_0_0/mult/ready_mul
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/DUT/uut_0_0/mult/mul_out
add wave -noupdate /mlp_topology_vhd_tst/DUT/uut_0_1/ready
add wave -noupdate -radix float32 /mlp_topology_vhd_tst/DUT/uut_0_1/output
add wave -noupdate /mlp_topology_vhd_tst/DUT/uut_1_0/ready
add wave -noupdate /mlp_topology_vhd_tst/DUT/uut_0_0/ready
add wave -noupdate /mlp_topology_vhd_tst/DUT/uut_1_0/mult/start_i
add wave -noupdate /mlp_topology_vhd_tst/DUT/uut_1_0/mult/ready_mul
add wave -noupdate /mlp_topology_vhd_tst/DUT/uut_1_0/add/start_i
add wave -noupdate /mlp_topology_vhd_tst/DUT/uut_1_0/add/ready_as
add wave -noupdate /mlp_topology_vhd_tst/DUT/uut_1_0/mysig/start
add wave -noupdate /mlp_topology_vhd_tst/DUT/uut_1_0/mysig/ready
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {677865 ps} 0}
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
WaveRestoreZoom {0 ps} {1050 ns}
