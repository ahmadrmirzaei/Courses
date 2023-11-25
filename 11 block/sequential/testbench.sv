module testbench ();
	bit [31:0] data;

	initial begin

		#10 data = 8'hfe;
		$display("[Time=%0t] data=0x%0h", $time, data);

		#20 data = 8'h11;
		$display("[Time=%0t] data=0x%0h", $time, data);

	end
endmodule