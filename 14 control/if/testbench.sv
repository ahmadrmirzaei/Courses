module testbench ();
	reg [7:0] a, b;

	initial begin
		a = 8'h00;
		if (a == 8'h00) begin
			$display("a is zero");
		end else begin
			$display("a is not zero");
		end
	end

endmodule