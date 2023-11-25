task sum(input [7:0] a, b, output [7:0] c);
	begin
		c = a + b;
	end
endtask

module testbench ();
	reg [7:0] a, b, result;
	initial begin
		a = 5;
		b = 4;
		#10 sum(a, b, result);
		$display("%0d", result);
	end
endmodule