module probador_conv(PCLK,ENB,in,CLK);

	output reg [1:0] PCLK;
	output reg CLK;
	output reg ENB;
  	output reg [7:0] in;
	
	initial begin
		CLK=0;
		ENB=0;
		
		#18 ENB=1;
		#80
		PCLK<=2'b00;//32bits
        	in<=32'b00001111;
		#20
        	in<=32'b11110000;
		#20
        	in<=32'b10101010;
		#20
        	in<=32'b01010000;
		#20
		PCLK<=2'b01;//16bits
        	in<=32'b01110000;
		#20
        	in<=32'b00010000;
		#20
		PCLK<=2'b10;//8bits
        	in<=32'b11010000;
		#20
        	in<=32'b11110000;
		#20
        	in<=32'b10101110;
	
		#150
	  	$finish;
	end
	always begin
        	#10 CLK <= ~CLK;
      	end
	
endmodule
