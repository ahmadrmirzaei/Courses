`include "../design/top.svh"
module testbench ();
	data a = '{8'd12, 32'd1026, "apple"};

	initial begin
		$display("%p", a);
		a.val3 = "orange";
		$display("%p", a);
		$display("%d", a.val2);
	end
endmodule