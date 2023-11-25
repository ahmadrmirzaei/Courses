interface Bus(input clk);
    logic [7:0] data;
    logic en;

    modport TYPE1 (
        input data, clk,
        output en
    );

    modport TYPE2 (
        input en, clk,
        output data
    );
endinterface