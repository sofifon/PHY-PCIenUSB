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
		#80
        	in<=32'b10101010000011110000000011111111;
		#80
        	in<=32'b00001111111100001111111100000000;
		#80
        	in<=32'b10101010101000001111111101010101;
		#80
        	in<=32'b10101010111111110000000010101010;
	
		#150
	  	$finish;
	end
	always begin
        	#10 CLK <= ~CLK;
      	end
	
endmodule
