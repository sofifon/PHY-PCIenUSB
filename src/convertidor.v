module convertidor(PCLK,in,out_8,ENB,CLK,bits);
		input wire [1:0] PCLK;
		input wire CLK;
		input wire ENB;
		input wire [31:0] in;
		output reg [7:0] out_8;
		output reg [1:0] bits;
		always @(*)
		begin
		case(PCLK[1:0])
			2'b00: bits=2'b11;
			2'b01: bits=2'b01;
			2'b10: bits=2'b00;
			2'b11: bits=2'b11;
		endcase
		end
		always @(posedge CLK) begin
			if(ENB==1) begin
				if(bits==2'b11)begin
					out_8[7:0]<=in[31:24];
					bits<=2'b10;
				end 
				else if(bits==2'b10)begin
					out_8[7:0]<=in[23:16];
					bits<=2'b01;
				end 
				else if(bits==2'b01)begin
					out_8[7:0]<=in[15:8];
					bits<=2'b00;
				end
				else //(bits==2'b00)
				begin
					out_8[7:0]<=in[7:0];
				end 
			end
			else 
			begin
				out_8=0;
			end	
		end
	endmodule
