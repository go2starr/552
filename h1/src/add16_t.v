// 16-bit adder test
module add16_t();
   reg [15:0] A, B;
   reg        CI;
   wire [15:0] SUM;
   wire        CO;
   
   add16 adder(A, B, SUM, CI, CO);
   
   integer    i;
   parameter  TWO_POW_16 = 65536;

   initial begin
      for (i = 0; i < 8; i = i+1) begin
         A = (12701 << 2*i) % TWO_POW_16;
         B = (1027  << 1*i) % TWO_POW_16 + 5000;
         CI = i % 2;

         #10;
         $display("(A,B,CI)=(%d, %d, %b)\t (SUM,CO):: Expected: (%d,%b) Got: (%d, %b)",
                  A,B,CI, (A+B+CI)%TWO_POW_16, (A+B+CI)>=TWO_POW_16, SUM, CO);
      end
   end // initial begin
endmodule // add4_t

