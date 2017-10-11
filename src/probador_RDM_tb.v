`include "RDM.v"
`include "probador_RDM.v"

module probador_RDM_tb();

input wire CLK, IN_DATA;
output wire OUT_DATA;

probador_RDM p(CLK,IN_DATA);
RDM rdm(CLK, IN_DATA, OUT_DATA);


initial 
	begin
	$dumpfile("RMD.vcd");
	$dumpvars;
	end

endmodule 