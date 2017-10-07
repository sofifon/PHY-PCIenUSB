module paraleloserial(CLOCK, LOADS, IS, D, OS);
	input CLOCK, LOADS, IS;
	input [9:0] D;
	output OS;
	reg [9:0] temp;
	always @(posedge CLOCK)
	begin 
		if (LOADS) 
			begin
				temp = D;
			end
		else
			begin 
				temp = { IS , temp[9:1] };
			end
	end
	assign OS = temp[0];
endmodule
		
module serialparalelo(CLOCK, IS, OP);
	input CLOCK, IS;
	output [9:0] OP;
	reg [9:0] temp;
	always @(posedge CLOCK)
	begin
		temp = { IS , temp[9:1] };
	end
	assign OP = temp;
endmodule