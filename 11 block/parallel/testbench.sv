module testbench ();
	bit [31:0] data;

	initial begin
		#10 data = 8'h00;
		$display("[Time=%0t] data=0x%0h", $time, data);

		fork
			begin
				#10 data = 8'h11;
				$display("[Time=%0t] data=0x%0h", $time, data);
			end
			begin
				#20 data = 8'h22;
				$display("[Time=%0t] data=0x%0h", $time, data);
				#30 data = 8'h33;
				$display("[Time=%0t] data=0x%0h", $time, data);
			end
		join
	end
endmodule