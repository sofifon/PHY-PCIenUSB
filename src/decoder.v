`timescale 1 ns/ 1 ps
module decoder(in_10b, out_8b);

input wire [9:0] in_10b;
wire a, b, c, d, e, i, f, g, h, j, P3x, Px3;
output reg [7:0] out_8b;


	assign a = in_10b[9];
	assign b = in_10b[8];
	assign c = in_10b[7];
	assign d = in_10b[6];
	assign e = in_10b[5];
	assign i = in_10b[4];
	assign f = in_10b[3];
	assign g = in_10b[2];
	assign h = in_10b[1];
	assign j = in_10b[0];
	
	assign P3x = (a&b&c)||(a&b&d)||(a&c&d)||(b&c&d);
	assign Px3 = ((~a)&(~b)&(~c))||((~a)&(~b)&(~d))||((~a)&(~c)&(~d))||((~b)&(~c)&(~d));



always @(*)
begin
	
	////////////////////////////////     A     ////////////////////////////////////
 	if(((~a||~b)&(~c)&d&(e~^i)||(P3x&i)||(Px3&(d&i||(~e)))||(a&b&e&i)||((~c)&(~d)&(~e)&(~i)))==1)
		begin
		out_8b[0] = ~a;
		end
	else
		begin
		out_8b[0] = a;
		end
	////////////////////////////////     B     ////////////////////////////////////	
	if((((a^b)&c&(~d)&(e~^i))||(P3x&i)||(Px3&(d&i||(~e)))||((~c)&(~d)&(~e)&(~i)))==1)
		begin
		out_8b[1] = ~b;
		end
	else
		begin
		out_8b[1] = b;
		end
		
	////////////////////////////////     C     ////////////////////////////////////
	if((((~a)&b&(c^d)&(e~^i))||((P3x&i))||(Px3&(d&i||(~e)))||((~e)&(~i)&(((~a)&(~b))||((~c)&(~d)))))==1)
		begin
		out_8b[2] = ~c;
		end
	else
		begin
		out_8b[2] = c;
		end
	////////////////////////////////     D     ////////////////////////////////////
	if(((a&(~b)&(c^d)&(e~^i))||(P3x&i)||(a&b&e&i)||(Px3&(d&i||(~e)))||((~c)&(~d)&(~e)&(~i)))==1)
		begin
		out_8b[3] = ~d;
		end
	else
		begin
		out_8b[3] = d;
		end

	////////////////////////////////     E     ////////////////////////////////////
	if(((((~a)||(~b))&(~c)&d&(e~^i))||(Px3&((~e)||(~i)))||((~e)&(~i)&(((~a)&(~b))||((~c)&(~d)))))==1)
		begin
		out_8b[4] = ~e;
		end
	else
		begin
		out_8b[4] = e;
		end
	
	////////////////////////////////     F    ////////////////////////////////////
	if((((f^g)&h&j)||(f~^g)&j||((~c)&(~d)&(~e)&(~i)&(h^j)))==1)
		begin
		out_8b[5] = ~f;
		end
	else
		begin
		out_8b[5] = f;
		end
		
	////////////////////////////////     G     ////////////////////////////////////
	if((((f^g)&~h&~j)||((f~^g)&j)||(~c&~d&~e&~i&(h^j)))==1)
		begin
		out_8b[6] = ~g;
		end
	else
		begin
		out_8b[6] = g;
		end
		

	////////////////////////////////     H     ////////////////////////////////////
	if(((f&~g&(h~^j))||((f~^g)&j)||(~c&~d&~e&~i&(h^j)))==1)
		begin
		out_8b[7] = ~h;
		end
	else
		begin
		out_8b[7] = h;
		end
	
end


endmodule 