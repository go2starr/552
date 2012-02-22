/* mux2_1 - 2:1, 1-bit multiplexer */
module mux2_1(
              in0,
              in1,
              select,
              out
              );
   input in0, in1, select;
   output out;

   assign out = select ? in1 : in0;
   
endmodule // mux2_1

              
