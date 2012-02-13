// Detect BCD '58' === 0101_1000
module detect_58(in, clk, rst, out);
   input in, clk, rst;
   output out;

   wire [3:0] state;
   wire [3:0] next_state;

   // State storage
   dff DFFS [3:0] (state, next_state, clk, rst);

endmodule // detect_58


   
   
   
