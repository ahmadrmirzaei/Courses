`include "behavioral.v"
`include "rtl_reg_sync.v"
module right_design (
    input d, clk,
    input [1:0] rstn,
    output q
);

    wire [3:0] i;
    assign i[0] = 1'b1;
    assign i[3:1] = 3'b000;

    wire o;

    behavioral q_i (i, rstn, o);
    rtl_reg_sync q_reg (d, clk, o, q);

endmodule
    