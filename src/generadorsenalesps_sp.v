module generadorsenales(CLOCK, D, ENABLE);
	output reg CLOCK, ENABLE, IS;
	output reg [9:0] D, contadorp;
	initial 
	begin 
		CLOCK=0;
		$dumpfile("paraleloserial_serialparalelo.vcd");
        $dumpvars;
		D = 10'b0000000000;
		contadorp = 10'b0000000000;
		ENABLE = 1'b0;
		# 24 ENABLE = 1'b1;
		# 81924 $finish;
	end
	
	always @(posedge CLOCK)begin
		
	end
	
	always @(posedge CLOCK) begin
		
		if (ENABLE) begin 
			contadorp = contadorp + 1;
			if (contadorp == 10'b0000001011) begin
				if (D != 10'b1111111111) begin
						D = D + 1'b1;
				end
				contadorp = 1'b1;
			end
		end
	end
		
	always 
	begin 
		#4 CLOCK =!CLOCK;
	end
endmodule