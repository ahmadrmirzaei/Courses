module testbench ();
	reg clk, rstn, en;
	wire [3:0] out;

	counter #(.WIDTH(4), .DOWN(2)) duv (.clk(clk), .rstn(rstn), .en(en), .out(out));

	always #5 clk = ~clk;

	initial begin
		clk = 0;
		rstn = 1;
		en = 1;
		#10 rstn = 0;
		#10 rstn = 1;
		#100 $stop;
	end
endmodule