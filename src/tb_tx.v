`include "Transmitter.v"
`include "probador_conv.v"
//`include "TransmitterSYNT.v"
`include "Receiver.v"
`include "PLL.v"

module tb_tx();

wire [1:0] PCLK;
wire [31:0] IN_DATA, OUT_CONV;
wire CLK, ENB_CONV, RESET_SP, RESET_PS, RESET_PLL, K, OUT_SERIAL, OUT_SERIALsynt, RESET_CONV832;



probador_conv p(CLK, PCLK, IN_DATA, K, RESET_PS, RESET_PLL, ENB_CONV, RESET_SP, RESET_CONV832);
Transmitter tx(CLK, PCLK, IN_DATA ,  K, RESET_PS, RESET_PLL, ENB_CONV, OUT_SERIAL);
//Transmittersynt synt(CLK, PCLK, IN_DATA ,  K, RESET_SP, RESET_PLL, ENB_CONV, OUT_SERIALsynt);

Receiver rx(CLK,  RESET_PLL, OUT_SERIAL, RESET_SP, PCLK, RESET_CONV832 , OUT_CONV);


endmodule