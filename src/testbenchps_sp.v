`include "ps.v"
`include "sp.v"
`include "generadorsenalesps_sp.v"

module testbench();
	wire CLOCK, ENABLE, OSIS;
	wire [9:0] D, OP;
	generadorsenales probadorparaleloserial_serialparalelo(CLOCK, D, ENABLE);
	paraleloserial convertidorparaleloserial(CLOCK, ENABLE, D, OSIS);
	serialparalelo convertidorserialparalelo(CLOCK, ENABLE, OSIS, OP);
endmodule
	