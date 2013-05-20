// Test bench for the D flip-flip on `d_flip_flop.v`

module d_flip_flop_test();

   reg  clock, reset, d;
   wire q, q_bar;

   initial begin
      $dumpfile ("d_flip_flop_test.vcd"); // Store results on a wavefile
                                          // for later viewing
                                          // (for example, with gtkwave)

      $dumpvars (1, d_flip_flop_test);    // Tells the scope of the results
                                          // that will be stored on
                                          // the wavefile (this module)

      // This watches for changes on some values and print them if changed
      $monitor ("Clock=%b, D=%b, Q=%b, not(Q)=%b", clock, d, q, q_bar);

      clock = 0;
      d     = 1;

      #10 d = 0;
      #20 finish;
   end

   // This is the actual D flip-flop that we'll use for testing on
   // this module
   d_flip_flop(.d (d), .clk (clock), .q (q), .q_bar (q_bar));

endmodule // d_flip_flop_test

