module testbench ();
	integer i;

	initial begin
		for (i=0; i<5; i=i+1) begin
			$display("Loop #%0d", i);
		end
	end

endmodule