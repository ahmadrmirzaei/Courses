function [7:0] sum (input [7:0] a, b);
	begin
		sum = a + b;
	end
endfunction

module testbench ();
	reg [7:0] a, b, result;
	initial begin
		a = 5;
		b = 4;
		#10 result = sum(a, b);
		#10;
	end
endmodule