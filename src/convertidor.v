module convertidor (PCLK,MODO,in,out_8);
		input wire [1:0] PCLK;
		input wire MODO;
		input wire [31:0] in;
		output reg [7:0] out_8;
		reg [1:0] bits;
		always @(*) begin
			if(MODO==1||PCLK==2'b00)begin //32 bits
				bits=2'b11;	
			end
			else if(MODO==1||PCLK==2'b01)begin //16 bits
				bits=2'b01;
			end
			else if(MODO==1||PCLK==2'b10)begin //8 bits
				bits=2'b10;
			end
			else 
				bits=2'b00;;
 			end
		end
		//Como escoger el clk
		always @(posedge clk) begin
			if(bits==2'b11)begin
				out_8[7:0]<=in[31:24];
				bits<=2'b10;
			end
			if(bits==2'b10)begin
				out_8[7:0]<=in[23:16];
				bits<=2'b10;
			end
			if(bits==2'b01)begin
				out_8[7:0]<=in[15:8];
				bits<=2'b10;
			end
			if(bits==2'b00)begin
				out_8[7:0]<=in[7:0];
				bits<=2'b10;
			end
		end
	endmodule
