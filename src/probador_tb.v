`include "encoder.v"
`include "probador.v"
`include "encodersynt.v"
module probador_tb();

input wire [7:0] in_8b;
input wire K;
output wire [9:0] out_10b, out_synt;

Probador p(in_8b, K);
enconder enc(in_8b, K, out_10b);
encondersynt synt(in_8b, K, out_synt);


initial 
	begin
	$dumpfile("encoding.vcd");
	$dumpvars;
	end


endmodule
