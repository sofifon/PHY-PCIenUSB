
module paraleloserial(CLOCK, ENABLE, D, OS);
	input CLOCK, ENABLE;
	input [9:0] D;
	output OS; 
	reg [9:0] temp1, temp2 ;
	reg [4:0] contador;
	reg IS;
	always @(D) begin
		temp1<=D;
		temp2<=D;
	end
	
	always @(posedge CLOCK) begin
		if ( ENABLE ) begin
			contador <= contador +1;
			temp1 <= {IS, temp1[9:1]};
			if ( contador == 4'b1010) begin
				contador <= 4'b0001;
				if (temp2 == D) begin
					temp1<=D;
				end
			end
		end
		else begin
			contador = 4'b0000;
			IS = 1'b0;
		end
	end
	
	assign OS = temp1[0];

endmodule
