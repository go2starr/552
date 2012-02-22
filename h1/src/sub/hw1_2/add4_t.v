// 4-bit adder testbench
module add4_t();
   reg [3:0] A, B;
   reg       CI;
   wire [3:0] SUM;
   wire       CO;

   add4 adder(A, B, CI, SUM, CO);
   
   integer    i;

   initial begin
      for (i = 0; i < 8; i = i+1) begin
         A = (3*i)  % 16;                 
         B = (7*i) % 16;
         CI = i % 2;

         #10;
         $display("(A,B,CI)=(%d, %d, %b)\t (SUM,CO):: Expected: (%d,%b) Got: (%d, %b)",
                  A,B,CI, (A+B+CI)%16, (A+B+CI)>=16, SUM, CO);
      end
   end // initial begin
endmodule // add4_t

