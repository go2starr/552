/* shift16_t.v - testbench for shift16.v */
module shift16_t();
   reg [16:0] in;
   reg [3:0]  cnt;
   reg [1:0]  op;

   wire [15:0] out;

   shift16 s16 (in, cnt, op, out);
endmodule // shift16_t

