// quad 4-1 multiplexer module
module quadmux4_1(InA, InB, InC, InD, S, Out);
   input [3:0]  InA, InB, InC, InD;
   input [1:0]  S;
   output [3:0] Out;      

   mux4_1 m0(InA[0], InB[0], InC[0], InD[0], S, Out[0]);
   mux4_1 m1(InA[1], InB[1], InC[1], InD[1], S, Out[1]);
   mux4_1 m2(InA[2], InB[2], InC[2], InD[2], S, Out[2]);
   mux4_1 m3(InA[3], InB[3], InC[3], InD[3], S, Out[3]);
   
endmodule // mux_quad4_1

   
