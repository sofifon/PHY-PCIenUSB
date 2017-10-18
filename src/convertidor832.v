module convertidor(PCLK,in,out,ENB,CLK,bits,part);
		input wire [1:0] PCLK;
		input wire CLK;
		input wire ENB;
		input wire [7:0] in;
		output reg [31:0] out;
		output reg [1:0] bits;
		output reg [31:0] part;
		always @(PCLK)
		begin
		case(PCLK[1:0])
			2'b00: bits=2'b11;
			2'b01: 
			begin
				bits=2'b01;
				part[31:16]=0;
			end
			2'b10:
			begin
				bits=2'b00;
				part[31:8]=0;
			end
			2'b11: bits=2'b11;
		endcase
		end
		always @(posedge CLK) begin
			if(ENB==1) begin
				if(bits==2'b11)begin
					part[31:24]<=in[7:0];
					bits<=2'b10;
					out<=0;
				end 
				else if(bits==2'b10)begin
					part[23:16]<=in[7:0];
					bits<=2'b01;
					out<=0;
				end 
				else if(bits==2'b01)begin
					part[15:8]<=in[7:0];
					bits<=2'b00;
					out<=0;
				end
				else //(bits==2'b00)
				begin
					out[31:8]<=part[31:8];
					out[7:0]<=in[7:0];
				end 
			end
			else 
			begin
				out=0;
			end	
		end
	endmodule
