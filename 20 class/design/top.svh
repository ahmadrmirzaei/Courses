class Packet;

    bit [2:0] header;
    bit encode;
    bit [2:0] mode;
    bit [7:0] data;
    bit stop;

    function new(bit [2:0] header = 3'h1, bit [2:0] mode = 5);
        this.header = header;
        this.encode = 0;
        this.mode = mode;
        this.stop = 1;
    endfunction

    function display();
        $display("Header = 0x%0h, Encode = %0b, Mode = 0x%0h, Stop = %0b",
                  this.header,    this.encode,  this.mode,    this.stop);
    endfunction

    task change_data();
        #10 this.data = 40;
        $display("%d", this.data);
        #10 this.data = 50;
        $display("%d", this.data);
    endtask
endclass



class netPacket extends Packet;

    bit parity;
    bit [1:0] crc;

    function new();
        super.new();
        this.parity = 1;
        this.crc = 3;
    endfunction

    function display();
        super.display();
        $display("Parity = %0b, CRC = 0x%0h", this.parity, this.crc);
    endfunction
endclass