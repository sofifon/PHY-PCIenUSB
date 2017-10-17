`include "convertidor.v"
`include "convertidorsynt.v"
`include "probador_conv.v"

module probador_conv_tb();

input wire [1:0] PCLK;
input wire [31:0] in_data;
input wire CLK, ENB;
output wire [7:0] OUT_DATA;
output wire [1:0] bit;

probador_conv p(PCLK,ENB,in_data,CLK);
convertidor conv(PCLK, in_data, OUT_DATA, ENB, CLK, bit);
convertidorsynt convsynt(PCLK,in_data, OUT_DATA, ENB, CLK, bit);


initial 
	begin
	$dumpfile("conv328.vcd");
	$dumpvars;
	end

endmodule 
