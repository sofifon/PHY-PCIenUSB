module probador_RDM(CLK, IN_DATA);

output reg CLK ,IN_DATA;


always
	#10 CLK = !CLK;

initial
	begin
	CLK =0;
	#3
	IN_DATA = 1;
	#20
	IN_DATA = 0;
	#20
	IN_DATA = 1;
	#40
	IN_DATA = 0;
	#20
	IN_DATA = 0;
	#20

	$finish;
	end
endmodule