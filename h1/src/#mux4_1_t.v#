// 4-1 multiplexer testbench
module mux4_1_t();
   integer i;
   reg     InA, InB, InC, InD;
   reg [1:0] S;
   reg       Expected;
   wire Out;

   mux4_1 mux(InA, InB, InC, InD, S, Out);

   initial begin
      for (i = 0; i < 64; i = i + 1) begin // 2**6 = 64
         InA = i[0];
         InB = i[1];
         InC = i[2];
         InD = i[3];
         S = i[5:4];

         case (S) 
            0: Expected = InA;
            1: Expected = InB;
            2: Expected = InC;
            3: Expected = InD;
         endcase
            
         #10;
         
         $display("(A,B,C,D,S) = (%b, %b, %b, %b, %b)\t Expected: %b Got: %b",
                  InA, InB, InC, InD, S, Expected, Out);
      end
   end

endmodule // mux4_1_t
