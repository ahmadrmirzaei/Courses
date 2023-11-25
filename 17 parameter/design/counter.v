module counter 
#(
    parameter WIDTH = 2,
    parameter DOWN = 0
)
(
    input clk, rstn, en,
    output reg [WIDTH-1:0] out
);
    always @(posedge clk) begin
        if (!rstn) begin
            out <= 0;
        end else begin
            if (en) begin
                if (DOWN) out <= out - 1;
                else out <= out + 1;
            end else out <= out;
        end
    end
endmodule