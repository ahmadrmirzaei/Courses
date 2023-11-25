module testbench ();
	reg [9:0] d;
	reg clk, rst;
	wire [9:0] q;
	
	top duv (d, rst, clk, q);

	always #5 clk = ~clk;

	initial begin
		clk = 0;
		rst = 0;
		d = 10'b1010101010;
		#10 d = 10'b1111111111;
		#10 d = 10'b0000000000;
		#10 $stop;
	end
endmodule