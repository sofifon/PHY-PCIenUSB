
module serialparalelo(CLOCK, ENABLE, IS, OP);
	input CLOCK, IS, ENABLE;
	output [9:0] OP;
	reg [9:0] temp;
	reg [4:0] contador;
	reg temp1;
	
	always @(IS) begin
		temp[9]<=IS;
	end
	
	always @(posedge CLOCK) begin
		if (ENABLE) begin
			contador <= contador +1;
			temp[8:0] <= temp[9:1];
			if ( contador == 4'b1010) begin
				contador<=4'b0001;
			end
			
		end
		else begin
			contador <= 4'b0000;
			temp <= 10'b0000000000;
		end
	end
	assign OP = (contador==4'b0001)? temp:OP ;
endmodule