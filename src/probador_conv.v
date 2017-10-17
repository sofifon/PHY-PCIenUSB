module probador_conv(PCLK,ENB,in,CLK);

	output reg [1:0] PCLK;
	output reg CLK;
	output reg ENB;
  	output reg [31:0] in;
	
	initial begin
		CLK=0;
		ENB=0;
		
		#20 ENB=1;
		#80
		PCLK<=2'b00;//32bits
        	in<=32'b00001111000000001111111101010101;
		#75
		PCLK<=2'b01;//16bits
		
		#5
        	in<=32'b0011000011101010;
		
		#80
		PCLK<=2'b10;//8bits
        	in<=32'b10101110;
	
		#150
	  	$finish;
	end
	always begin
        	#10 CLK <= ~CLK;
      	end
	
endmodule
