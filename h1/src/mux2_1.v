// a 2-1 multiplexer module
module mux2_1(InA, InB, S, Out);
   input InA;
   input InB;
   input S;
   output Out;

   wire   S_n;                  // Select A
   wire   A_p, B_p;             // Propagate A, B

   not1  NOT_S(.in1(S), .out(S_n));
   
   nand2 A_PROP(.in1(S_n), .in2(InA), .out(A_p));
   nand2 B_PROP(.in1(S)  , .in2(InB), .out(B_p));

   nand2 OUT_N(.in1(A_p), .in2(B_p), .out(Out));

endmodule // mux2_1

