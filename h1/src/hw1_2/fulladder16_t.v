// 16-bit adder test
module fulladder16_t();
   reg [15:0] A, B;
   wire [15:0] SUM;
   wire        CO;
   
   fulladder16 add16 (A, B, SUM, CO);
   
   integer    i;
   parameter  TWO_POW_16 = 65536;

   initial begin
      for (i = 0; i < 8; i = i+1) begin
         A = (12701 << 2*i) % TWO_POW_16;
         B = (1027  << 1*i) % TWO_POW_16 + 5000;

         #10;
         $display("(A,B)=(%d, %d)\t (SUM,CO):: Expected: (%d,%b) Got: (%d, %b)",
                  A,B, (A+B)%TWO_POW_16, (A+B)>=TWO_POW_16, SUM, CO);
      end
   end // initial begin
endmodule // add4_t

