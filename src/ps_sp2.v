module paraleloserial(CLOCK, D, OS);
	input CLOCK;
	input [9:0] D;
	output reg OS;
	reg [9:0] temp;
	reg LOADS;
	reg [9:0] contadorp, contadorn;
	reg IS;
	initial begin
		LOADS = 1;
		contadorp = 10'b0000000000;
		contadorn = 10'b0000000000;
		IS = 1'b1;
	end
	
	always @(posedge CLOCK) begin
		contadorp = contadorp + 1;
		if (contadorp == 10'b0000001011) begin
			contadorp = 1'b1;
		end	
	end
	
	always @(negedge CLOCK) begin
		contadorn = contadorn + 1;
		if (contadorn == 10'b0000001010) begin
			LOADS = 1'b1;
		end
		if (contadorn == 10'b0000001011 ) begin
			contadorn = 1'b1;
		end
		if (contadorn == 10'b0000000001 ) begin
			LOADS = 1'b0;
		end
	end
	
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
		OS = temp[0];
	end
	
endmodule
		
module serialparalelo(CLOCK, IS, OP);
	input CLOCK, IS;
	output OP;
	reg [9:0] OP;
	reg [9:0] temp;
	always @(posedge CLOCK)
	begin
		temp = { IS , temp[9:1] };
		OP = temp;
	end
endmodule