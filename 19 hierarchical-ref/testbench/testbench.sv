module testbench ();
	top duv0 (32'd10);
	top duv1 (32'd222);
	top duv2 (32'd34953);

	initial begin
		#10;
		duv0.display();
		duv1.display();
		duv2.display();
	end
endmodule