vlib work

set type automatic

set workspace [pwd]
set root $workspace/..
set tb_folder $root/$type
set tb testbench

foreach file [glob -directory $tb_folder *.sv] {
	vlog +acc $file
}

vsim work.$tb
add wave -noupdate -divider all_signals
run -all