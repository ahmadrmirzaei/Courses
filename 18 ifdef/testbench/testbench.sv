`define INCLUDE_RSTN

module testbench ();
	reg clk, rstn, d;
	wire q;
	reg [3:0] delay;

	top duv (.clk(clk), .d(d),
`ifdef INCLUDE_RSTN
			.rstn(rstn),
`endif
	.q(q));

	always #5 clk = ~clk;

	initial begin
		integer i;
		{d, rstn, clk} <= 0;
		for (i=0; i<20; i=i+1) begin
			delay = $random;
			#(delay) d <= $random;
		end
		#20 $stop;
	end
endmodule