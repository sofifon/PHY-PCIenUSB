`include "Sync.v"
`include "probador_Sync.v"

module probador_Sync_tb();

input wire CLK, IN_DATA;
output wire OUT_DATA;

probador_Sync p(CLK,IN_DATA);
Sync rdm(CLK, IN_DATA, OUT_DATA);


initial 
	begin
	$dumpfile("Sync.vcd");
	$dumpvars;
	end

endmodule 