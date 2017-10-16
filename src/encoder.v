`timescale 1 ns/ 1 ps
module encoder(in_8b, dataK, out_10b, reset, out_confirm);

input wire [7:0] in_8b;
input wire dataK, reset;
reg S, L03, L30, L12, L21;
reg A, B, C, D, E, F, G, H;
output reg [9:0] out_10b;
output reg out_confirm;


always @(*)
begin
	if(reset)
		begin
		out_confirm = 1;
		
		A = in_8b[0];
		B = in_8b[1];
		C = in_8b[2];
		D = in_8b[3];
		E = in_8b[4];
		F = in_8b[5];
		G = in_8b[6];
		H = in_8b[7];

		S =0;
		L03 = (~A)&(~B)&(~C);
		L30 = (A)&(B)&(C);
		L12 = ((A)&(~B)&(~C)) || ((~A)&(B)&(~C)) || ((~A)&(~B)&(C));
		L21 = ((~A)&(B)&(C)) || ((A)&(~B)&(C)) || ((A)&(B)&(~C));

		out_10b[9] = A; //a
		out_10b[8] = (B&(~(L30&D))) || (L03&(~D)); //b
		out_10b[7] = C || (L03&((~D)+E)) ; //c
		out_10b[6] = D&(~(L30&D)); //d
		out_10b[5] = E&(~(L03&D)) || (L12&(~D)&(~E)) || L03&D&(~E) ; //e
		out_10b[4] = (L21&(~D)&(~E)) || (L12&((D&(~E)||(~D)&E)+dataK)) || (L30&(~D)&E) || (L30&D&E); //i
		out_10b[3] = F&(~(F&G&H&(S || dataK))); //f
		out_10b[2] = G || ((~F)&(~H)); //g
		out_10b[1] = H; //h
		out_10b[0] = (F&(~G)) || ((G&(~F))&(~H)) || (F&G&H&(S || dataK)); //j
		end
	else
		begin
		out_confirm =0;
		end
end


endmodule