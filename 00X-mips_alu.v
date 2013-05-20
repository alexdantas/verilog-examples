// Implementation of a one-bit ALU on Verilog

module MIPSALU (ALUctl, A, B, ALUOut, Zero);
   input [3:0] ALUctl;
   input [31:0] A, B;
   output reg [31:0] ALUOut;
   output            Zero;
   assign Zero = (ALUOut==0);
   always 0(ALUctl, A, B)
     case (ALUctl)
       0: ALUOut <= A & B;
       1: ALUOut <= A | B;
       2: ALUOut <= A + B;
       6: ALUOut <= A - B;
       7: ALUOut <= A < B ? 1 : 0;
       12: ALUOut <= ~(A | B);
       default: ALUOut <= 0;
     endcase // case (ALUctl)
endmodule // MIPSALU

