/* shiftx.v - 4-operand barrel shifter, x-bit wide */
module shiftx(
              in,               // value to shift
              op,               // operand
              out
              );
   // Inputs
   input [15:0] in;
   input [1:0]  op;

   // Outputs
   output [15:0] out;

   // Parameters
   parameter X=0;                   // Shift amount
   
   // Shifter operands
   parameter OP_ROL = 0;            // Rotate left
   parameter OP_SLL = 1;            // Shift left logical
   parameter OP_ROR = 2;            // Rotate right
   parameter OP_ASR = 3;            // Shift right arithmetic

   
   

endmodule // shiftx

     
   
