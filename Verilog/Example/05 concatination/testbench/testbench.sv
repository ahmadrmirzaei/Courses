`include "../design/concatination.v"
`timescale 10ns/1ns
module testbench();
	
	reg [1:0] in0; 
	reg [3:0] in1;
	wire [5:0] out;

	concatination duv (in0, in1, out);

	initial begin
		#10;
		in0 = 2'b10;
		in1 = 4'b1100;
		#10 $stop;
	end

endmodule