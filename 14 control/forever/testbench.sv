module testbench ();
	reg [7:0] a, b;

	initial begin
		forever begin
			$display("This will be printed forever, simulation can hang...");
		end
	end

endmodule