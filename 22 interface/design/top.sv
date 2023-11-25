module top (
    Bus bus
);
    
    always @(posedge bus.clk) begin
        if(bus.en) bus.data <= bus.data + 1;
        else bus.data <= 0;
    end

endmodule