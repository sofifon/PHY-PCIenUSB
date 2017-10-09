`include "decoder.v"
`include "encoder.v"
`include "probador.v"
`include "encodersynt.v"
`include "decodersynt.v"
module probador_tb();

input wire [7:0] in_8b, out_8b, out_8b_synt;
input wire K;
output wire [9:0] out_10b, out_10b_synt;

Probador p(in_8b, K);
enconder enc(in_8b, K, out_10b);
encondersynt synt(in_8b, K, out_10b_synt);

decoder dec(out_10b, out_8b);
decodersynt decsynt(out_10b,out_8b_synt);


initial 
	begin
	$dumpfile("encoding_decoding.vcd");
	$dumpvars;
	end


endmodule
