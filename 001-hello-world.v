// My first Verilog """""program"""""

module hello_world;

   initial begin
      $display ("Hello, World!");
      # 10 $finish;
   end

endmodule // hello_world

