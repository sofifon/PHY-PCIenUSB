module ConvertidorPruebas	 (CLK,ENB,D,MODO);

	output reg CLK;
	output reg ENB;
  	output reg [31:0]D;
  	output reg[1:0] MODO;
	initial begin

    /*Definición de los estados iniciales del registro.
    Como ENB es 0, el registro mantiene su estado. 
    */
      $dumpfile("probando.vcd");
      $dumpvars;
      CLK=0;  
	  ENB=0;
	  #20 ENB=1;
	  #20
      D<=32'b00001111000000001111111101010101;
	  MODO<=2'b00;//8	
	 #20 MODO<=2'b01; //16
	 #20  MODO<=2'b10; //32
	 // $display ("rotacion");
	
	  #150
	  $finish;
	  end
	   always
      begin
        #5 CLK <= ~CLK;
      end
	
endmodule