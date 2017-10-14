module PLL(CLK, reset , CLK_5, CLK_10);

input wire CLK, reset;
output wire CLK_5;
output reg CLK_10;

reg [3:0] cont;



always @(posedge CLK)
	begin
	if(reset)
		begin
		if(cont==0)
			begin
			cont <= reset;
			CLK_10 <= reset;
			end
		else if(cont <5)
			begin
			cont ++;		
			end
		else if(cont==5)
			begin
			cont <= 1;
			CLK_10 <= ~CLK_10;
			end
		
		end
	
	
	else
		begin
		cont = reset;
		end
	end
assign CLK_5 = (reset? CLK: 0);




endmodule