`timescale 1 ns/ 1 ps
module Probador(i_8b, K, CLK, reset);

//Definicion de variables
//----------------------------------------------------------------------------------------------------------------------------------------------------
	output reg K, CLK, reset; 
	output reg [7:0] i_8b;
	

initial
	begin
	$dumpfile ("union.vcd");
	$dumpvars;
	CLK <=0; 
	reset<=0;
	#160 
	reset<=1;
	K=0;
	i_8b <= 8'b0;
	#160
	i_8b <= 8'b00100001;
	#160
	i_8b <= 8'b01001010;
	#160
	K=1;
	i_8b <= 8'b01011100;
	#160

	$finish;	
	end

always 
	begin
		#4 CLK = !CLK;
	end 
	
endmodule
