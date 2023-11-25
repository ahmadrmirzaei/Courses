`include "../design/inverter.v"
`timescale 10ns/1ns
module testbench();
	
	reg in;
	wire out;

	inverter duv (in, out);

	initial begin
		#10 in = 0;
		#10 in = 1;
		#10 $stop;
	end

endmodule