module testbench ();
	bit clk;

	always #5 clk = ~clk;

	Bus b (clk);

	top duv (b.TYPE2);

	initial begin
		b.en <= 0;
		#10 b.en <= 1;
		#20 b.en <= 0;
		#30 b.en <= 1;
		#100 $stop; 
	end
endmodule