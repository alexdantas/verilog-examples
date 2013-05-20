module simple_tb;

   reg  [3:0] A = 4'b1010;
   wire [3:0] B;

   initial
     begin
        $dumpfile("simple.vcd");
        $dumpvars(0, my_simple);
        $monitor("A is %b, B is %b.", A, B);
        #50 A = 4'b1100;
        #40 $finish;
     end

   simple my_simple(A, B);

endmodule // simple_tb

