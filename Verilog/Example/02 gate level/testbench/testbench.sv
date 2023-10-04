`include "../design/mux4.v"
`timescale 10ns/1ns
module testbench();
	
	reg i0, i1, i2, i3;
	reg s0, s1;
	wire o;

	mux4 duv (i0, i1, i2, i3, s0, s1, o);

	initial begin
		i0 = 0;
		i1 = 1;
		i2 = 1;
		i3 = 0;
		#10;
		s0 = 0;
		s1 = 0;
		#10;
		s0 = 0;
		s1 = 1;
		#10;
		s0 = 1;
		s1 = 0;
		#10;
		s0 = 1;
		s1 = 1;
		#10 $stop;
	end

endmodule