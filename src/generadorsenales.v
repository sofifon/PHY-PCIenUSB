module generadorsenales(CLOCK, LOADS, IS, D);
	output reg CLOCK, LOADS, IS;
	output reg [9:0] D;
	reg [9:0] contadorp, contadorn;
	initial 
	begin 
		CLOCK=0;
		$dumpfile("paraleloserial.vcd");
        $dumpvars;
		D = 10'b0000000000;
		LOADS = 1'b1;
		IS = 1'b1;
		contadorp = 10'b0000000000;
		contadorn = 10'b0000000000;
		# 81924 $finish;
	end
	always @(posedge CLOCK) begin
		contadorp = contadorp + 1;
		if (contadorp == 10'b0000000001) begin
			#4 LOADS = 1'b0;
		end
		if (contadorp == 10'b0000001010) begin
			if (D != 10'b1111111111) begin
				D = D + 1'b1;
			end
		end
		if (contadorp == 10'b0000001011) begin
			contadorp = 1'b1;
			#4 LOADS = 1'b0;
		end	
	end
	always @(negedge CLOCK) begin
		contadorn = contadorn + 1 ;
		if (contadorn == 10'b0000001010 ) begin
				LOADS = 1'b1;
		end
		if (contadorn == 10'b0000001011 ) begin
				contadorn = 1'b1;
		end
	end
	always 
	begin 
		#4 CLOCK =!CLOCK;
	end
endmodule
		
		