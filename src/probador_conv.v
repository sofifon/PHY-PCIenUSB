module probador_conv(CLK, PCLK, in, K, RESET_PS, RESET_PLL, ENB, RESET_SP, RESET_CONV832);

	output reg [1:0] PCLK;
	output reg CLK, K, RESET_PLL, RESET_SP, RESET_PS , ENB, RESET_CONV832;
  	output reg [31:0] in;
	
	initial begin
		$dumpfile ("Tx.vcd");
		$dumpvars;
		CLK<=0;
		ENB<=0;
		K<=0;
		RESET_PLL<=0;
		RESET_PS<=0;
		RESET_SP<=0;
		RESET_CONV832<=0;
		
		#10 
		RESET_PLL<=1;
		#10
		ENB<=1;
		
		#180
		PCLK<=2'b00;//32bits
        	in<=32'b00001111000000001111111101010101;
		#10
		RESET_PS<=1;
		#5
		RESET_SP<=1;
		#95
		RESET_CONV832<=1;
		#290
        	in<=32'b00111100111010101111111101001010;
		#400
        	in<=32'b00001111111100001111111100000000;
		#400
	
			in<=32'b00110000111010100011000011101010;
		#400
        	in<=32'b10101010111111110000000010101010;
	
		#800
	  	$finish;
	end
	always begin
        	#5 CLK <= ~CLK;
      	end
	
endmodule
