// a 4-1 multiplexer module
module mux4_1(InA, InB, InC, InD, S, Out);
   input InA, InB, InC, InD;
   input [1:0] S;
   output      Out;
   
   wire        s0, s1;
   
   mux2_1 m1(.InA(InA), .InB(InB), .S(S[0]), .Out(s0));
   mux2_1 m2(.InA(InC), .InB(InD), .S(S[0]), .Out(s1));
   mux2_1 m3(.InA(s0), .InB(s1), .S(S[1]), .Out(Out));   

endmodule // mux4_1

   
         
