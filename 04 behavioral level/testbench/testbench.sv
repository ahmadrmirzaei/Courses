`include "../design/behavioral.v"
`timescale 10ns/1ns
module testbench();
	
	reg [3:0] inp;
	reg [1:0] select;
	wire out;

	behavioral duv (.s(select), .o(out), .i(inp));

	initial begin
		inp = 6;
		#10 select = 0;
		#10 select = 1;
		#10 select = 2;
		#10 select = 3;
		#10 $stop;
	end

endmodule