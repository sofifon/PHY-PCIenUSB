module prob_PLL(CLK, reset);


output reg CLK, reset;

initial
	begin

	$dumpfile ("PLL.vcd");
	$dumpvars;
	reset <= 0;
	CLK <= 0;
	#5 reset <= 1;
	#200
	$finish;	
	end


always 
	begin
		#5 CLK = !CLK;
	end 




endmodule 