module detect_58_next(in, state, next_state);
   input        in;
   input [3:0]  state;
   output [3:0] next_state;   

   // Next-state logic
   wire [3:0]   next_0, next_1;

   // 1 0001    LSB
   // 1 0001
   // 3 0011
   // 1 0001
   // 3 0011
   // 6 0110
   // 7 0111
   // 8 1000 
   // 1 0001    MSB
   parameter next_0_0 = 16'b101011111;
   parameter next_0_1 = 16'b001110100;
   parameter next_0_2 = 16'b001100000;
   parameter next_0_3 = 16'b010000000;
   
   mux16_1 m_n0 [3:0] (.In({next_0_3,
                            next_0_2,
                            next_0_1,
                            next_0_0}), .S(state), .Out(next_0));

   // 0: 0000
   // 2: 0010
   // 0: 0000
   // 4: 0100
   // 5: 0101
   // 0: 0000
   // 2: 0010
   // 2: 0010
   // 2: 0010
   parameter next_1_0 = 16'b000010000;
   parameter next_1_1 = 16'b111000010;
   parameter next_1_2 = 16'b000011000;
   parameter next_1_3 = 16'b000000000;
   mux16_1 m_n1 [3:0] (.In({next_1_3,
                            next_1_2,
                            next_1_1,
                            next_1_0}), .S(state), .Out(next_1));

   // Output
   mux_quad4_1 m4 (.InA(next_0), .InB(next_1), .InC(next_0), .InD(next_1), .S({1'b0, in}), .Out(next_state));
   
endmodule // detect_58_next

