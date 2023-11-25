module latch (
	input d, rst, clk,
	output reg q
);
	always @(posedge clk) begin
		if (rst) q <= 0'b0;
		else q <= d;
	end
endmodule
