module ALU (
            A,                  // Data-in A
            B,                  // Data-in B
            Cin,                // Carry-in for LSB of adder
            Op,                 // Op code
            invA,               // Invert-A input (active-high)
            invB,               // Invert-B input (active_high)
            sign,               // Signed or unsigned input
            Out,                // Result
            OFL,                // High if overflow
            Zero                // Result is exactly zero
            );

   // Inputs
   input [15:0] A, B;
   input        Cin;
   input [2:0]  Op;
   input        invA, invB, sign;

   // Outputs
   output [15:0] Out;
   output        OFL, Zero;
   
endmodule // ALU

