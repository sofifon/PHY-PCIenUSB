module decoder(in_10b, out_8b);

input wire [9:0] in_10b;
reg a, b, c, d, e, i, f, g, h, j, P3x, Px3;
output reg [7:0] out_8b;

always @(*)
begin
	a = in_10b[9];
	b = in_10b[8];
	c = in_10b[7];
	d = in_10b[6];
	e = in_10b[5];
	i = in_10b[4];
	f = in_10b[3];
	g = in_10b[2];
	h = in_10b[1];
	j = in_10b[0];
	
	P3x = (a&b&c)||(a&b&d)||(a&c&d)||(b&c&d);
	Px3 = (~a&~b&~c)||(~a&~b&~d)||(~a&~c&~d)||(~b&~c&~d);
	
	////////////////////////////////     A     ////////////////////////////////////
 	if(((~a||~b)&~c&d&(e~^i)||(P3x&i)||(Px3&(d&i||(~e)))||(a&b&e&i)||~(c||d||e||i)))
		begin
		out_8b[0] = ~a;
		end
	else
		begin
		out_8b[0] = a;
		end
	////////////////////////////////     B     ////////////////////////////////////	
	if(((a^b)&c&(~d)&(e~^i))||(P3x&i)||(Px3&(d&i&(~e)))||~(c||d||e||i))
		begin
		out_8b[1] = ~b;
		end
	else
		begin
		out_8b[1] = b;
		end
		
	////////////////////////////////     C     ////////////////////////////////////
	if((~a&b&(c^d)&(e~^i))||((P3x&i))||(Px3&(d&i||(~e)))||((~e)&(~i)&(~(a||b)||~(c||d))))
		begin
		out_8b[2] = ~c;
		end
	else
		begin
		out_8b[2] = c;
		end
	////////////////////////////////     D     ////////////////////////////////////
	if((a&~b&(c^d)&(e~^i))||(P3x&i)||(a&b&e&i)||(Px3&(d&i||~e))||~(c||d||e||i))
		begin
		out_8b[3] = ~d;
		end
	else
		begin
		out_8b[3] = d;
		end

	////////////////////////////////     E     ////////////////////////////////////
	if((~(a&b)&~c&d&(e~^i))||(Px3&~(e&i))||(~e&~i&(~(a||b)||~(c||d))))
		begin
		out_8b[4] = ~e;
		end
	else
		begin
		out_8b[4] = e;
		end
	
	////////////////////////////////     F    ////////////////////////////////////
	if(((f^g)&h&j)||(f~^g)&j||(~c&~d&~e&~i&(h^j)))
		begin
		out_8b[5] = ~f;
		end
	else
		begin
		out_8b[5] = f;
		end
		
	////////////////////////////////     G     ////////////////////////////////////
	if(((f^g)&~h&~j)||((f~^g)&j)||(~c&~d&~e&~i&(h^j)))
		begin
		out_8b[6] = ~g;
		end
	else
		begin
		out_8b[6] = g;
		end
		

	////////////////////////////////     H     ////////////////////////////////////
	if((f&~g&(h~^j))||((f~^g)&j)||(~c&~d&~e&~i&(h^j)))
		begin
		out_8b[7] = ~h;
		end
	else
		begin
		out_8b[7] = h;
		end
	
end


endmodule 