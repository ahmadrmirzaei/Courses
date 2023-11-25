module testbench ();
	integer i = 5;

	initial begin
		while (i>0) begin
			$display("Iteration#%0d", i);
			i = i - 1;
		end
	end

endmodule