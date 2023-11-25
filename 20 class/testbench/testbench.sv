`include "../design/top.svh"
module testbench ();
	Packet p0, p1;
	netPacket p3;

	initial begin
		p0 = new (3'h2, 2'h3);
		p0.display();

		p1 = new ();
		p1.display();

		p1.change_data();

		p3 = new ();
		p3.display();
	end
endmodule