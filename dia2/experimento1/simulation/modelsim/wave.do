onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix float32 /sistemas_nuemricos_tb/dado_A
add wave -noupdate -radix float32 /sistemas_nuemricos_tb/dado_B
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {199193 ps} 0}
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
WaveRestoreZoom {0 ps} {210 ns}
