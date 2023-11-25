module testbench ();
	reg [7:0] a, b, c, d, e, f;

	initial begin
		a = 8'hda;
		$display("[%0t] a=0x%0h b=0x%0h c=0x%0h", $time, a, b, c);
		b = 8'hf1;
		$display("[%0t] a=0x%0h b=0x%0h c=0x%0h", $time, a, b, c);
		c = 8'h30;
		$display("[%0t] a=0x%0h b=0x%0h c=0x%0h", $time, a, b, c);
	end

	initial begin
		d <= 8'hda;
		$display("[%0t] d=0x%0h e=0x%0h f=0x%0h", $time, d, e, f);
		e <= 8'hf1;
		$display("[%0t] d=0x%0h e=0x%0h f=0x%0h", $time, d, e, f);
		f <= 8'h30;
		$display("[%0t] d=0x%0h e=0x%0h f=0x%0h", $time, d, e, f);
	end

endmodule