module top (input integer signal);
   task display();
    $display("signal = %0d", signal);
   endtask
endmodule