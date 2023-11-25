`include "../design/shiftreg.v"
`timescale 10ns/1ns
module testbench();
	
	reg d, clk;
	wire q;

	shiftreg duv (d, clk, q);

	always #5 clk = ~clk;

	initial begin
		clk = 0;
		#10 d = 1;
		#10 d = 0;
		#10 d = 0;
		#10 d = 0;
		#10 d = 0;
		#10 d = 1;
		#10 d = 0;
		#10 d = 1;
		#200 $stop;
	end

endmodule