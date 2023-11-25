module testbench ();
	reg clk;
	reg a, b, c, d, e, x, z;
	wire f, y;

	always #10 clk = ~clk;

	assign y = 1;
	assign f = (a | b) ^ (d & e);

	always @ (posedge clk) begin
		z <= a + b + c + d;
	end

	initial begin
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;
		clk = 0;
		#100 $stop;
	end

endmodule