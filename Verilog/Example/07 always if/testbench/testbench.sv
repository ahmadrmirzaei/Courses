`include "../design/left_design.v"
`include "../design/right_design.v"
`timescale 10ns/1ns
module testbench();
	
	reg d, clk, en;
	reg [1:0] rstn;
	wire q_left, q_right;

	left_design duv0 (d, clk, en, q_left);
	right_design duv1 (d, clk, rstn, q_right);

	always #5 clk = ~clk;

	initial clk = 0;

	initial begin
		#10 d = 0;
		#6	d = 1;
		#20 d = 0;
		#35 d = 1;
	end

	initial begin
		#12 en = 1;
		#40 en = 0;
	end

	initial begin
		#11 rstn = 2'd1;
		#3 	rstn = 2'd2;
		#4	rstn = 2'd3;
		#20	rstn = 2'd0;
	end

	initial #200 $stop;

endmodule