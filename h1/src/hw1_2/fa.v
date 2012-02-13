// 2-input full adder
module fa(A, B, Cin, S, Cout);
   input A, B, Cin;
   output S, Cout;

   wire   AxorB;
   xor2 axorb (A, B, AxorB);
   
   wire   Cin_n;
   not1 cnot (Cin, Cin_n);
   
   // S = A^B ? ~Cin, Cin;
   mux2_1 csel (Cin, Cin_n, AxorB, S);
   
   // Cout = A^B ? Cin, A;
   mux2_1 ssel (A, Cin, AxorB, Cout);
   
endmodule
 

   
   
          
