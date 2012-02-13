// a 16-1 multiplexer module
module mux16_1(In, S, Out);
   input [15:0] In;
   input [3:0]  S;
   output       Out;
   
   wire [3:0]   s0;
   
   mux4_1 m0(In[0],  In[1],  In[2],  In[3],  S[1:0], s0[0]);
   mux4_1 m1(In[4],  In[5],  In[6],  In[7],  S[1:0], s0[1]);
   mux4_1 m2(In[8],  In[9],  In[10], In[11], S[1:0], s0[2]);
   mux4_1 m3(In[12], In[13], In[14], In[15], S[1:0], s0[3]);   
   mux4_1 m4(s0[0], s0[1], s0[2], s0[3], S[3:2], Out);
   
endmodule // mux16_1
