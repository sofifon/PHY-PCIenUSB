module Probador(i_8b,K);

//Definicion de variables
//----------------------------------------------------------------------------------------------------------------------------------------------------
	output reg K; 
	output reg [7:0] i_8b;
	
initial
	begin
	K=0;
	i_8b = 8'b0;
	#8
	i_8b = 8'b00100001;
	#8
	i_8b = 8'b01001010;
	#8
	K=1;
	i_8b = 8'b01011100;
	#8

	$finish;	
	end
	
endmodule
