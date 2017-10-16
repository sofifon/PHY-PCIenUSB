`include "convertidor.v"
`include "probador_conv.v"

module probador_conv_tb();

input wire [1:0] PCLK;
input wire [31:0] in_data;
input wire CLK, ENB, MODO;
output wire [7:0] OUT_DATA;

probador_conv p(PCLK,ENB,in_data,MODO,CLK);
convertidor conv(PCLK, MODO, in_data, OUT_DATA, ENB, CLK);


initial 
	begin
	$dumpfile("conv328.vcd");
	$dumpvars;
	end

endmodule 
