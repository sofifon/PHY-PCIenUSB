module probador_conv(PCLK,ENB,in,MODO,CLK);

	output reg [1:0] PCLK;
	output reg CLK;
	output reg ENB;
  	output reg [31:0] in;
  	output reg MODO;
	
	initial begin
		CLK=0;
		ENB=0;
		
		#20 ENB=1;
		#20
		MODO<=1;
		PCLK<=2'b00;//32bits
        	in<=32'b00001111000000001111111101010101;
		
		#40
		PCLK<=2'b01;//16bits
        	in<=32'b0011000011101010;
		
		#40
		PCLK<=2'b10;//8bits
        	in<=32'b10101110;
	
		#150
	  	$finish;
	end
	always begin
        	#5 CLK <= ~CLK;
      	end
	
endmodule
