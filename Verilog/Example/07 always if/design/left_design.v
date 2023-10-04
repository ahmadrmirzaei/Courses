module left_design (input d, clk, en, output reg q);

	always @ (posedge clk)
		if (en) begin
			q <= d;
		end
endmodule
