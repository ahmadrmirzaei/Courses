vlib work

set workspace [pwd]
set root $workspace/..
set tb_folder $root/testbench
set tb testbench

foreach file [glob -directory $tb_folder *.sv] {
	vlog +acc $file
}

vsim work.$tb
add wave -noupdate -divider all_signals
add wave -noupdate -format logic -radix binary /$tb/*
run -all