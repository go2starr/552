// quad 4-1 multiplexer module
module mux_quad4_1_t();
   integer i, j;
   reg [3:0] InA, InB, InC, InD;
   reg [1:0] S;
   reg [3:0] Expected;
   wire [3:0] Out;

   mux_quad4_1 mux(InA, InB, InC, InD, S, Out);

   initial begin
      for (i = 0; i < 16; i = i + 1) begin // all Select inputs
         for (j = 0; j < 4; j = j + 1) begin // 20 inputs each
            // Select
            S = i;
            
            // Generate some "random" values
            InA = (j % 3) % 16;
            InB = (4*j % 5) % 16;
            InC = (5*j % 7) % 16;
            InD = (6*j % 11) % 16;
            
            case (S)
              0: Expected = InA;
              1: Expected = InB;
              2: Expected = InC;
              3: Expected = InD;
            endcase           

            #10;

            $display("(A,B,C,D,S) = (%d, %d, %d, %d, %d)\t Expected: %d Got: %d",
                     InA, InB, InC, InD, S, Expected, Out);
            
         end // for (j = 0; j < 1000; j = j + 1)
      end // for (i = 0; i < 16; i = i + 1)
   end // initial begin
   
endmodule // mux_quad4_1_t

   
