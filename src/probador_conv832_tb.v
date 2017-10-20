`include "convertidor832synt.v"
`include "probador_conv832.v"

module probador_conv832_tb();

input wire [1:0] PCLK;
input wire [7:0] in_data;
input wire CLK, ENB;
output wire [31:0] OUT_DATA;
output wire [1:0] bit;
output wire [31:0] part;

probador_conv p(PCLK,ENB,in_data,CLK);
convertidor conv(PCLK, in_data, OUT_DATA, ENB, CLK, bit,part);


initial 
	begin
	$dumpfile("conv832.vcd");
	$dumpvars;
	end

endmodule 
