// 4-bit ripple-carry adder
module add4(A, B, CI, SUM, CO);
   input  [3:0] A, B;
   output [3:0] SUM;
   input       CI;
   output      CO;

   wire [2:0]  carry;

   fa a0(A[0], B[0], CI,       SUM[0], carry[0]);
   fa a1(A[1], B[1], carry[0], SUM[1], carry[1]);
   fa a2(A[2], B[2], carry[1], SUM[2], carry[2]);
   fa a3(A[3], B[3], carry[2], SUM[3], CO);
endmodule // add4


   
   
