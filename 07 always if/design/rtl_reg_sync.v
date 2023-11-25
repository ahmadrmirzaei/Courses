module rtl_reg_sync (input d, clk, rst, output reg q);

	always @ (posedge clk)
		if (rst) begin
			q <= 0;
		end else begin
			q <= d;
		end
endmodule
