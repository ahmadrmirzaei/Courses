module inverter(input in, output out);

	nmos(out, 1'b0, in);
	pmos(out, 1'b1, in);

endmodule
