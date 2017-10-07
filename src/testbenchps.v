`include "ps_sp.v"
`include "generadorsenales.v"
`include "ps_sp_sint.v"

module testbench();
	wire CLOCK, LOADS, IS, OS, OSsint;
	wire [9:0] D, OP, OPsint;
	generadorsenales pruebaps(CLOCK, LOADS, IS, D);
	paraleloserial convertidorps(CLOCK, LOADS, IS, D, OS);
	serialparalelo convertidorsp(CLOCK, OS, OP);
	paraleloserialsint convertidorpssint(CLOCK, LOADS, IS, D, OSsint);
	serialparalelosint convertidorspsint(CLOCK, OSsint, OPsint);
endmodule