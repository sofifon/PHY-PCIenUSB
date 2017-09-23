module paraleloserial(CLOCK, LOADS, IS, D, OS);
input CLOCK, LOADS, IS;
input [9:0];
output OS;
reg temp [9:0];
	always @(posedge CLOCK)
		begin 
		if (LOADS) 
			temp = D;
		else
			begin 
			temp = { IS , temp[9:1] }
		end
	end
	assign OS = temp[0];
endmodule
		