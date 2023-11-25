module testbench ();
	reg [7:0] a, b;

	initial begin
		repeat(4) begin
			@(posedge clk);
		end
	end

endmodule