module Sync(CLK, IN_Data, OUT_Data);

input CLK, IN_Data;
output reg OUT_Data;

always @(posedge CLK)
	begin
	
	OUT_Data <= IN_Data;

	end
endmodule 