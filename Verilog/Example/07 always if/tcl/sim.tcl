vlib work

set workspace [pwd]
set root $workspace/..
set design_folder $root/design
set tb_folder $root/testbench
set tb testbench

foreach file [glob -directory $design_folder *.v] {
    vlog +acc $file
}

foreach file [glob -directory $tb_folder *.sv] {
	vlog +acc $file
}

vsim work.$tb

add wave -noupdate -divider left_design
add wave -noupdate -format Logic -radix binary /$tb/clk
add wave -noupdate -format Logic -radix binary /$tb/d
add wave -noupdate -format Logic -radix binary /$tb/en
add wave -noupdate -format Logic -radix binary /$tb/q_left

add wave -noupdate -divider right_design
add wave -noupdate -format Logic -radix binary /$tb/clk
add wave -noupdate -format Logic -radix binary /$tb/d
add wave -noupdate -format Logic -radix binary /$tb/rstn
add wave -noupdate -format Logic -radix binary /$tb/q_right
run -all