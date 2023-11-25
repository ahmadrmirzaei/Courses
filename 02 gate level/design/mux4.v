module mux4 (input i0, i1, i2, i3, s0, s1, output o);

	wire y0, y1, y2, y3;
	wire ns0, ns1;

	not (ns0, s0);
	not (ns1, s1);
	
	and (y0, i0, ns0, ns1);
	and (y1, i1, ns1, s0);
	and (y2, i2, ns0, s1);
	and (y3, i3, s0, s1);

	or (o, y0, y1, y2, y3);
endmodule