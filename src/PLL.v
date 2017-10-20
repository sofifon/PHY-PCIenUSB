module PLL(CLK, reset , CLK_5, CLK_10);

input wire CLK, reset;
output wire CLK_5;
output reg CLK_10;

reg [3:0] cont;



always @(posedge CLK)
	begin
	if(reset)
		begin
		if(cont== 4'b0000)
			begin
			cont <= 4'b0001;
			CLK_10 <= reset;
			end
		else if(cont < 4'b0101)
			begin
			cont = cont + 4'b0001;		
			end
		else if(cont== 4'b0101)
			begin
			cont <= 4'b0001;
			CLK_10 <= ~CLK_10;
			end
		
		end
	
	
	else
		begin
		cont <= 4'b0000;
		end
	end
assign CLK_5 = (reset? CLK: 0);




endmodule