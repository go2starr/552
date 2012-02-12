// 2-input full adder testbench
module fa_t();
   reg A, B, Cin;
   wire S, Cout;
   integer i;

   fa adder(A, B, Cin, S, Cout);
   
   reg     eS, eCout;           // Expected outputs

   initial begin
      for (i = 0; i < 8; i = i + 1) begin
         A = i[0];
         B = i[1];
         Cin = i[2];

         eS = (A^B) ? ~Cin : Cin;
         eCout = (A^B) ? Cin : A;

         #10;
         $display("(A,B,Cin)= (%b, %b, %b)\t Expected: (S=%b, Cout=%b) Got: (%b, %b)",  
                  A, B, Cin, eS, eCout, S, Cout);
      end
   end
endmodule // fa_t

         
