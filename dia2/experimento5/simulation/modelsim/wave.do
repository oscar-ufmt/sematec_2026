onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_top_wrapper/clk_50
add wave -noupdate /tb_top_wrapper/sw
add wave -noupdate /tb_top_wrapper/key
add wave -noupdate /tb_top_wrapper/ledr
add wave -noupdate /tb_top_wrapper/dut/minha_rede_mlp/start
add wave -noupdate /tb_top_wrapper/dut/minha_rede_mlp/ready
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3999291 ps} 0}
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
WaveRestoreZoom {0 ps} {4200 ns}
