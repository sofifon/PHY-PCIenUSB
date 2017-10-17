`include "probador_tx.v"
`include "encoder.v"
`include "ps.v"
`include "sp.v"
`include "decoder.v"

module tb_tx();

wire [7:0] in_8b, out_dec;
wire CLK, ENB, reset, K, out_serial;
wire [9:0] enc_out_10b, out_paralelo ;

Probador p(in_8b, K, CLK, reset);
encoder enc(in_8b, K, enc_out_10b, reset, ENB);
paraleloserial ps(CLK, ENB, enc_out_10b, out_serial);

serialparalelo sp(CLK, ENB, out_serial, out_paralelo);
decoder dec(out_paralelo, out_dec);

endmodule