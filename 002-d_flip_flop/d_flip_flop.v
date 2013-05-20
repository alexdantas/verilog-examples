// Defines a D flip-flop

module d_flip_flop (d, clk, q, q_bar); // All possible input/output ports

   input  wire d, clk;          // Only the inputs (D, CLK)
   output wire q, q_bar;        // Only the outputs (Q, not(Q))
   reg         q;               // Inner register to store info
   reg         q_bar;

   always @ (posedge clk)       // Always at the positive edge of the clock
     begin
        q     <= d;             // Assigns Q with D and not(Q) with not(D)
        q_bar <= !d;            // (that's the function of the D flip-flot)
                                // `<=` is delayed assignment
                                // It doesnt work until next cycle, which
                                // effectively describes a D flip-flop
     end

endmodule // d_flip_flop

