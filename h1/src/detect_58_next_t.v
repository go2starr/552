module detect_58_next_t();
   reg [3:0]  state;
   reg        in;   
   wire [3:0] next_state;

   detect_58_next dtn (in, state, next_state);

   integer    i, j;
   
   initial begin
      for (i = 0; i < 2; i = i + 1) begin
         in = i;

         #10;
         $display ("Tests for in=%b", in);
         for (j = 0; j < 9; j = j + 1) begin
            state = j;

            #10;
            $display ("State: %d, Next: %d", state, next_state);
         end
      end
   end
endmodule // detect_58_next_t

         

