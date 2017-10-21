`include "sp.v"
`include "Sync.v"
`include "decoder.v"
`include "convertidor832.v"


module Receiver(CLK, RESET_PLL, IN_SERIAL, RESET_SP, PCLK, RESET_CONV , OUT_CONV);

input [1:0] PCLK;
input CLK, RESET_PLL, IN_SERIAL, RESET_SP, RESET_CONV;
wire CLK_CONV, CLK_PS, OUT_SERIAL, OUT_RDM;
wire [7:0] OUT_DEC;
wire [9:0] ENC_OUT_10B, OUT_PARALELO;

output [31:0] OUT_CONV;


PLL pll_rx(CLK, RESET_PLL, CLK_PS, CLK_CONV);

Sync rdm(CLK_PS, IN_SERIAL, OUT_RDM);

serialparalelo sp(CLK_PS, RESET_SP, OUT_RDM, OUT_PARALELO);

decoder dec(OUT_PARALELO, OUT_DEC);

convertidor8_32 conv8_32(PCLK, OUT_DEC, OUT_CONV,RESET_CONV, CLK_CONV);




endmodule

