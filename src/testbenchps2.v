`include "ps_sp2.v"
`include "generadorsenales2.v"
`include "ps_sp2synt.v"

module testbench();
	wire CLOCK, IS, OS, OSsint;
	wire [9:0] D, OP, OPsint;
	generadorsenales pruebaps(CLOCK, D);
	paraleloserial convertidorps(CLOCK, D, OS);
	serialparalelo convertidorsp(CLOCK, OS, OP);
	paraleloserialsynt convertidorpssynt(CLOCK, D, OSsint);
	serialparalelosynt convertidorspsynt(CLOCK, OSsint, OPsint);
endmodule