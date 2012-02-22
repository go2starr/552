// Detect BCD '58' === 0101_1000
module seqdec_58(InA, Clk, Reset, Out);
   input InA, Clk, Reset;
   output Out;

   wire [3:0] state;
   wire [3:0] next_state;

   // State storage
   dff DFFS [3:0] (state, next_state, Clk, Reset);

   // Next-state
   detect_58_next dtn(InA, state, next_state);

   // Output in state 8
   assign Out = state[3];

endmodule // detect_58


   
   
   
