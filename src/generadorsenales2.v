module generadorsenales(CLOCK, D);
	output reg CLOCK, LOADS, IS;
	output reg [9:0] D, contadorp;
	initial 
	begin 
		CLOCK=0;
		$dumpfile("paraleloserial2.vcd");
        $dumpvars;
		D = 10'b0000000000;
		contadorp = 10'b0000000000;
		# 81924 $finish;
	end
	
	always @(posedge CLOCK)begin
		
	end
	
	always @(posedge CLOCK) begin
		contadorp = contadorp + 1;
		if (contadorp == 10'b0000001010) begin
			if (D != 10'b1111111111) begin
					D = D + 1'b1;
			end
			contadorp = 1'b0;
		end
	end
		
	always 
	begin 
		#4 CLOCK =!CLOCK;
	end
endmodule