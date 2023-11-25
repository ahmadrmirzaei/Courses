module top (
	input [9:0] d,
	input rst, clk,
	output [9:0] q
);
	genvar i;
	generate
		for (i=0; i<10; i=i+1) begin
			latch ltc (d[i], rst, clk, q[i]);
		end
	endgenerate
endmodule
