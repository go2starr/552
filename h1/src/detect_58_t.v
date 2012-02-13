module detect_58_t();
   reg in, err;
   wire out, clk, rst;

   integer i;

   // Input sequence
   parameter T_IN_0 = 16'b00011010; // Good input sequence

   // State: 0,1,1,2,3,1,2,3,4,3,4,5,6,2,3,4,5,6,7,8,1
   // In   : 0,0,0,1,0,0,1,0,1,0,1,1,0,1,0,1,1,0,0,0,0
   parameter T_IN_1 = 32'b000011010110101001000;
   
   
   // Make a clock
   clkrst ck (clk, rst, err);

   // Build the FSM
   detect_58 dtf (in, clk, rst, out);

   initial begin
      err = 0;
      in = 0;
      
      #500;
      

      // Test a valid sequence
      $display ("Doing one valid sequence");
      for (i = 0; i < 16; i = i + 1) begin
         in = (T_IN_0 >> i) & 1'b1;
         #10;
         $display("State: %d\tIn: %b\tOutput: %b", dtf.state, in, out);
         #90;
      end

      $display ("Testing transitions");
      // Test some transitions
      for (i = 0; i < 32; i = i + 1) begin
         in = (T_IN_1 >> i) & 1'b1;
         #10;
         $display("State: %d\tIn: %b\tOutput: %b", dtf.state, in, out);
         #90;
      end
      
      $stop;
   end // initial begin
   
endmodule // detect_58_t

   
   
