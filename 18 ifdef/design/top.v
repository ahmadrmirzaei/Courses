`define INCLUDE_RSTN

module top (
    input clk, d,

`ifdef INCLUDE_RSTN
    input rstn,
`endif

    output reg q
);
    always @(posedge clk) begin
`ifdef INCLUDE_RSTN
        if (!rstn) begin
            q <= 0;
        end else
`endif
        begin
            q <= d;
        end
    end
endmodule