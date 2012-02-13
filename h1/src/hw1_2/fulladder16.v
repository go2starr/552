// 16-bit ripple-carry adder
module fulladder16(A, B, SUM, CO);
   input  [15:0] A, B;
   output [15:0] SUM;
   output       CO;
   
   wire [2:0]   carry;

   add4 a40(A[3:0], B[3:0],         1'b0, SUM[3:0],   carry[0]);
   add4 a41(A[7:4], B[7:4],     carry[0], SUM[7:4],   carry[1]);
   add4 a42(A[11:8], B[11:8],   carry[1], SUM[11:8],  carry[2]);
   add4 a43(A[15:12], B[15:12], carry[2], SUM[15:12], CO);
   
endmodule
   
