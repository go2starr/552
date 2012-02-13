// 2-1 multiplexer testbench
module mux2_1_t();
   integer i, j, k;
   reg     InA, InB, S;
   wire    Out;

   mux2_1 mux(.InA(InA), .InB(InB), .S(S), .Out(Out));

   initial begin
      for (i = 0; i < 2; i = i + 1) begin
         for (j = 0; j < 2; j = j + 1) begin
            for (k = 0; k < 2; k = k + 1) begin
               InA = i;
               InB = j;
               S   = k;

               #10;
               $display ("(InA, InB, S) = (%b, %b, %b)\t Expected: %b Got: %b",
                         InA, InB, S, S ? InB : InA, Out);
            end
         end
      end
   end
endmodule // mux2_1_t

            
           
         
   
