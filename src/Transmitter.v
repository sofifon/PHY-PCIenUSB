`include "encoder.v"
`include "ps.v"
`include "convertidor.v"


module Transmitter(CLK, PCLK, IN_DATA,  K, RESET_PS, RESET_PLL, ENB_CONV, OUT_SERIAL);

input wire [1:0] PCLK;
input wire [31:0] IN_DATA;
input wire  CLK, ENB_CONV, RESET_PS, RESET_PLL, K;

wire CLK_CONV, CLK_PS;
wire [7:0] OUT_CONV, OUT_DEC;
wire [9:0] ENC_OUT_10B;

output wire OUT_SERIAL;

PLL pll(CLK, RESET_PLL, CLK_PS, CLK_CONV);

convertidor conv(PCLK, IN_DATA, OUT_CONV, ENB_CONV, CLK_CONV);

encoder enc(OUT_CONV, K, ENC_OUT_10B);

paraleloserial ps(CLK_PS, RESET_PS, ENC_OUT_10B, OUT_SERIAL);




endmodule