module shiftreg (
	input d, clk,
	output reg q
);

	reg [9:0] r;
	integer i;

	always @(posedge clk) begin
		r[0] <= d;
		q <= r[9];
		for (i = 0; i<9; i=i+1) begin
			r[i+1] <= r[i];
		end
	end

endmodule
