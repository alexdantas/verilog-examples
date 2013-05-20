module simple(a, b);

   input  [3:0] a;
   output [3:0] b;

   // mix up the input bits
   assign b = { a[0], a[2], a[1], a[3] };

endmodule // simple

