module concatination(
	input [1:0] in0, 
	input [3:0] in1,
	output [5:0] out
	);

	assign out = {in0, in1};

endmodule
