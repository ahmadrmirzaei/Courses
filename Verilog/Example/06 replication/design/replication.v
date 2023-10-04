module replication(
	input [1:0] in0, 
	input [3:0] in1,
	output [7:0] out
	);

	assign out = {{2{in0}}, in1};

endmodule
